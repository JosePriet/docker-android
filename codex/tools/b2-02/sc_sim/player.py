"""Fitting formula port; damage here is before the target's pilot/counter rules."""
from dataclasses import dataclass
from functools import lru_cache
import math
import re
import struct
from . import data

STATS = ('damage','reload','shield','shield_regen','missile','cargo','repair','hull','speed','agility')
TRAIT = {'spartan':2,'reaver':0,'kretari':6,'warden':1,'varn':5,'ironclad':7,'helion':8}
OWN = {'spartan':(0,), 'warden':(0,5), 'reaver':(1,), 'kretari':(1,), 'varn':(4,), 'ironclad':(2,), 'helion':(3,)}


def f32(x):
    return struct.unpack('f', struct.pack('f', x))[0]


def jround(x):
    return math.floor(x + 0.5)


# ModV35.stage

def refit_stage(n):
    return 0 if n <= 0 else min(5, (n+1)//2)


# ModWeapons.family, ModRep.spec / ModRepData.SECRET_WEAPON

def family(name):
    for i, base in enumerate(('modRailgun','modAutocannon','modArtillery','modBlaster','modDisintegrator','modArcProjector')):
        if name.startswith(base): return i
    for base, f in (('modFlak',1),('modLance',3),('modBioSpine',1)):
        if name.startswith(base): return f
    if name.startswith('repSecret'):
        fs = (0,1,4,0,2,5,0)
        for i, k in enumerate(('Spartan','Reaver','Kretari','Varn','Ironclad','Helion','Warden')):
            if name == 'repSecret'+k: return fs[i]
    return -1


# ModV34.weaponRule / ownFamily

def fit_rule(faction, fam):
    return 1 if fam < 0 else .85 if not faction else 1 if fam in OWN[faction] else .6


# ModV35.picks: strict > comparisons retain first stat on ties.

def picks(scores):
    chosen = sorted((i for i,s in enumerate(scores) if s > 1.0001), key=lambda i:(-scores[i],i))[:2]
    while len(chosen) < 2:
        chosen.append(max((i for i in (7,8,9) if i not in chosen), key=lambda i:(scores[i],-i)))
    return tuple(chosen)


# ModV35.classAverage / scores / mults

@lru_cache(None)
def refit_mults(h, n):
    group = [x for x in data.hulls() if x.cls == h.cls and not x.dev and x.art != x.id]
    specs = data.stock()['gear']
    fields = ('lifeBooster','maxSpeedInformational','agilityInformational')
    avg = []
    for field in fields:
        total = 0.
        for x in group: total = f32(total + specs[x.id][field])
        avg.append(f32(total/len(group)))
    s = [h.dmg, f32(1/h.reload), h.shield_cap, max(h.shield_regen,f32(1/h.shield_delay)),
         f32(1/h.missile_reload), h.cargo, 0]
    s += [f32(specs[h.id][f]/a) for f,a in zip(fields,avg)]
    m = [1.]*10
    for k in picks(s): m[k] = f32(1 + f32(.03)*n)
    k = TRAIT.get(h.faction,7)
    m[k] = f32(m[k]*f32(1+f32(.02)*n))
    return tuple(m), picks(s)


# ModV35.regen / repair

def repair_rate(base, faction, mult, cls):
    if faction != 'kretari': return base
    if base <= 0: base = .005
    cap = .01 if 2 <= cls <= 6 else .007
    return min(base*mult, max(base,cap))


# ModV38.turretPlan (hardpoint counts); ModFitting.guns for beam / fixed.

def gun_count(h, stage, beam=False):
    if beam: return 1
    if h.gun_type == 'FIXED': return data.stock()['gear'][h.id]['laserCount']
    plans = {'mantis':(2,2,2,2,3,3), 'verdant':(2,2,2,2,3,3),
             'leviathan':(4,4,4,4,5,6), 'bastion':(1,1,1,1,2,2),
             'monolith':(2,2,2,2,3,3), 'hornet':(2,2,2,2,3,3)}
    return plans.get(h.art,(h.cannons,)*6)[stage]


# ModV34.slotOf / weaponSize

def fits(h, spec):
    size = sum(spec['level'] >= x for x in (7,22,37))
    return size <= (0,1,1,2,2,3,3,1)[h.cls]


def legal_gear(h, level, cls):
    for name, spec in data.stock()['gear'].items():
        if spec['_class'] != cls or spec['level'] > level: continue
        if name.lower().startswith(('dev','debug')) or name == 'noMissileMod': continue
        # ModLance has a separate channelled heat system, not a generic laser.
        if name.startswith('modPhoenixLance'): continue
        # ModLock.requiredShip / canEquip restrictions: alien beams on their original alien hulls.
        if spec.get('isBeam') or name.startswith(('alienBeam','regentBeam','arwingBolt','megatronBattery','regentHive','megatronSalvo')): continue
        if cls == 'LaserSpec' and not fits(h,spec): continue
        yield name,spec


@dataclass(frozen=True)
class Player:
    hull: data.Hull
    level: int
    refit: int
    stage: int
    faction: str
    laser: str
    missile: str | None
    shield_item: str | None
    family: int
    guns: int
    shot: float
    reload: float
    missile_shot: float
    missile_reload: float
    missiles: int
    max_hull: float
    max_shield: float
    shield_regen: float
    shield_delay: float
    hull_regen: float
    picked: tuple
    fit_multiplier: float
    projectiles_per_gun: int = 1

    # Stock PlayerCanon.requestShoot: tirGroupe=true emits two projectiles per
    # full reload. The ModFitting.fittedDps UI estimate omits that factor.
    @property
    def laser_dps(self): return self.shot*self.guns*self.projectiles_per_gun/self.reload
    @property
    def missile_dps(self): return self.missile_shot*self.missiles/self.missile_reload if self.missile else 0
    @property
    def dps(self): return self.laser_dps+self.missile_dps
    @property
    def burst(self): return self.shot*self.guns*self.projectiles_per_gun+self.missile_shot*self.missiles
    @property
    def ramped_dps(self): return self.laser_dps*(2 if self.family==4 else 1)+self.missile_dps


def gear(name, cls, level):
    if name is None: return None
    spec = data.stock()['gear'].get(name)
    if spec is None or spec['_class'] != cls: raise ValueError('Unknown '+cls+': '+name)
    if spec['level'] > level: raise ValueError(name+' requires level '+str(spec['level']))
    return spec


def fit(hull, laser, level=40, refit=0, missile=None, shield=None, stage=None, faction=None, allow_oversize=False):
    if not 0 <= level <= data.stock()['XpBuilder']['LEVEL_MAX']: raise ValueError('Player level must be 0..40')
    if not 0 <= refit <= 10: raise ValueError('Refit must be 0..10')
    h = data.hull(hull) if isinstance(hull,str) else hull
    if faction is not None and faction not in (*OWN,''): raise ValueError('Unknown faction key')
    fac = h.faction if faction is None else faction
    st = refit_stage(refit) if stage is None else stage
    if not 0 <= st <= 5: raise ValueError('Stage must be 0..5')
    l, ms, sh = gear(laser,'LaserSpec',level), gear(missile,'MissileSpec',level), gear(shield,'ShieldSpec',level)
    if not allow_oversize and not fits(h,l): raise ValueError(laser+' exceeds this hull weapon slot size')
    if laser.startswith('modPhoenixLance') or missile and missile.startswith('regentHiveBay'):
        raise ValueError('Channelled Phoenix Lance / player drone-bay mechanics are outside the duel model; choose a direct weapon')
    fam = family(laser)
    off = bool(fac and fam >= 0 and fam not in OWN[fac])
    m, pk = refit_mults(h,refit)
    # PlayerShip.applySoloGear (stock smali): damage = item damage, reload = item reload.
    damage, reload_ms = l['damage'], l['reload']
    turret = h.gun_type != 'FIXED' and not l.get('isBeam')
    # ModV34.offFactionRate / railReload, before hull and refit operations.
    if off: reload_ms = int(f32(reload_ms/f32(.6)))
    elif fac == 'warden' and fam == 0: reload_ms = int(f32(reload_ms*f32(.9)))
    # ModShips.apply: off-faction drops innate weapon bonuses, retaining penalties.
    dm, rl = (min(1,h.dmg),max(1,h.reload)) if off else (h.dmg,h.reload)
    if dm != 1 or rl != 1:
        damage = f32(damage*f32(dm))
        if turret: damage = int(damage)
        reload_ms = int(f32(reload_ms*f32(rl)))
    # ModV35.apply: refit boosts both turret damage and inverse reload; casts truncate.
    if m[0] != 1 or m[1] != 1:
        damage = f32(damage*m[0])
        if turret: damage = int(damage)
        reload_ms = int(f32(reload_ms/m[1]))
    # ModTitan.apply: only PlayerCanon receives heavy-turret factors.
    if h.cls == 6 and turret:
        damage = int(f32(damage*f32(2.5)))
        reload_ms = int(f32(reload_ms*f32(1.55)))
    # ModV34.damage: fit is per hit; Spartan rail bonus is per hit too.
    rule = fit_rule(fac,fam)
    damage *= rule * (1.1 if fac=='spartan' and fam==0 else 1)
    # PlayerShip.applySoloGear / ModV35.apply, ModV34.shipLife (XpBuilder supplied).
    hp = f32(f32(data.stock()['XpBuilder']['PLAYER_SHIP_LIFE'][level]*f32(h.life))*m[7])
    # ModShips.apply / ModV35.apply: shield capacity and rate multiply separately.
    cap = f32(f32(sh['capacity']*f32(h.shield_cap))*m[2]) if sh else 0
    rate = f32(f32(sh['reloadBySec']*f32(h.shield_regen))*m[3]) if sh else 0
    delay = f32(sh['deadTime']*f32(h.shield_delay))/1000 if sh else 0
    # ModShips.apply / ModV35.apply / ModTitan.apply: staged integer missile reload.
    mr = int(f32(ms['reloadSpeedInMilli']*f32(h.missile_reload))) if ms else 1000
    mr = int(f32(mr/m[4]))
    if h.cls == 6 and not h.dev: mr = int(f32(mr*f32(1.6)))
    # Missile.onImpactWithElement radius applies separately; assumed both hit main target.
    md = ms['damage']+ms['radiusDamage'] if ms else 0
    # ModTitan.onMissile: siege damage; developer hull is excluded.
    if h.cls == 6 and not h.dev: md *= 1.9
    regen = repair_rate(h.hull_regen,h.faction,m[6],h.cls)
    return Player(h,level,refit,st,fac,laser,missile,shield,fam,gun_count(h,st,l.get('isBeam',False)),
        damage,max(.001,reload_ms/1000),md,max(.001,mr/1000),h.missiles if ms else 0,
        hp,cap,rate,delay,regen,pk,rule,2 if turret else 1)


@lru_cache(None)
def best_fit(h, level, refit=0, faction=None):
    """Best means steady-state single-target DPS; shield maximizes capacity.

    Gear at or below the level and within slot size; no DEV / test gear.
    Availability / price / ammo are unconstrained. Ties break by item name.
    """
    shields = list(legal_gear(h,level,'ShieldSpec'))
    sh = max(shields,key=lambda x:(x[1]['capacity'],x[1]['reloadBySec'],x[0]))[0]
    missiles = list(legal_gear(h,level,'MissileSpec'))
    mis = max(missiles,key=lambda x:((x[1]['damage']+x[1]['radiusDamage'])/x[1]['reloadSpeedInMilli'],x[0]))[0]
    choices = [fit(h,n,level,refit,mis,sh,faction=faction) for n,_ in legal_gear(h,level,'LaserSpec')]
    return max(choices,key=lambda p:(p.ramped_dps,p.laser))
