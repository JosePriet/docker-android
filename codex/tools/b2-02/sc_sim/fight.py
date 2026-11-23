"""Fixed 50 ms duel, with separately labelled uninterrupted TTK/TTD clocks.

No random accuracy tuning: all shots hit, there is no travel or maneuver model.
The actual duel ends at the first death. The other clock continues as a
counterfactual exposure, so tables can compare offense and defense independently.
"""
from dataclasses import dataclass
from functools import lru_cache
import math
import re
from . import data
from .enemy import counter, normal_factor, pilot, stat_base


# ModShield.curve

def shield_curve(frac):
    if frac <= .25: return 1
    if frac <= .5: return 1-(frac-.25)
    if frac <= .75: return .75-(frac-.5)*.8
    return .55-min(.25,frac-.75)*.6


@dataclass
class Pool:
    max_hull: float
    max_shield: float = 0
    regen: float = 0
    hull_regen: float = 0
    delay: float = 0
    over_cap: float = 0
    player: bool = False
    stock_shield: bool = False
    level: int = 0

    def __post_init__(self):
        self.hull = self.max_hull
        self.shield = self.max_shield
        self.over = self.over_cap
        self.hit_at = -math.inf
        self.reboot_at = -math.inf
        self.reboots = 0
        self.slow = False
        self.ion_until = -math.inf

    def hit(self, damage, t, bypass=False):
        if damage <= 0: return
        self.hit_at = t
        # ModTitan.doomHit: percentage damage bypasses armour and both shields.
        if bypass:
            self.hull -= damage
            return
        # ModLive.hit -> ModPoliceTitan.overAbsorb -> ModV34.shieldAbsorb.
        absorb = min(self.over,damage)
        self.over -= absorb
        damage -= absorb
        before = self.shield
        absorb = min(self.shield,damage)
        self.shield -= absorb
        self.hull -= damage-absorb
        # ModShield.tick / allowed: one reboot, two below half hull, then slow.
        if self.player and before > 0 and self.shield <= 0:
            allowance = 2 if self.hull <= self.max_hull*.5 else 1
            if self.reboots < allowance:
                self.reboots += 1
                self.reboot_at = t+1.3
                self.slow = False
            else: self.slow = True

    def advance(self, dt, t):
        if self.hull <= 0: return
        # ModShips.tick: percentage of max hull every second, no hit delay.
        self.hull = min(self.max_hull,self.hull+self.max_hull*self.hull_regen*dt)
        # ModPoliceTitan.overTick: quiet 20 s, full refill in 6 s.
        if t-self.hit_at >= 20: self.over = min(self.over_cap,self.over+self.over_cap/6*dt)
        if self.shield >= self.max_shield: return
        if self.player:
            # ModShield.rate / curve / ModV34.levelShield; stock Shield.applyDamage delay.
            if t-self.hit_at < self.delay or t < max(self.reboot_at,self.ion_until): return
            if self.slow and self.reboots < 2 and self.hull <= self.max_hull*.5:
                self.slow = False
                self.reboots += 1
                if self.shield <= 0:
                    self.reboot_at = t+1.3
                    return
            factor = shield_curve(self.shield/self.max_shield)*(1+.01*max(0,self.level-17))
            if self.slow: factor *= .5
        elif self.stock_shield:
            # ModShield.rate: native (Frelon) shields stop at zero; half rate.
            if self.shield <= 0 or t-self.hit_at < self.delay: return
            factor = .5*shield_curve(self.shield/self.max_shield)
        else:
            # ModV34.regen: big shields always recharge, x.85 within 3 seconds.
            factor = .85 if t-self.hit_at < 3 else 1
        self.shield = min(self.max_shield,self.shield+self.regen*factor*dt)


class Ramp:
    """ModWeapons.onImpact DISINT: one shared player ramp across all mounts."""
    def __init__(self):
        self.target = None
        self.last = None
        self.level = 0

    def hit(self,t,target='enemy'):
        gap = 0 if self.last is None else t-self.last
        if target != self.target:
            self.target,self.level = target,0
        elif gap <= 1+1e-9: self.level = min(1,self.level+gap/3)
        else: self.level = max(0,self.level-(gap-1)/3)
        self.last = t
        return 1+self.level


# ModTitan.doomHit: budgets are per entire activation, never per tick.

def doom_budget(player, enemy):
    leviathan = player.hull.art == 'leviathan'
    if enemy.titan: return .10 if leviathan else .07
    if enemy.flagship or enemy.boss or enemy.cls >= 5: return .15 if leviathan else .10
    return 0


@dataclass
class Doom:
    player: object
    enemy: object
    enabled: bool = True

    def __post_init__(self):
        h = self.player.hull
        self.enabled = self.enabled and h.cls==6
        self.next_at = 3 if h.dev else 20  # ModTitan.tick ship-change initial cooldown.
        self.start = -math.inf
        self.tick_at = math.inf
        self.end = -math.inf
        self.busy_end = -math.inf
        self.spent = 0
        # ModLevDoom constants override stale skill text for Spartan Leviathan.
        if h.art=='leviathan': self.charge,self.fire,self.vent,self.tick,self.cool,self.damage_delay = 5.4,4.6,2.2,.2,90,.15
        elif h.art=='crimson_throne': self.charge,self.fire,self.vent,self.tick,self.cool,self.damage_delay = 2,3.5,0,.25,75,0
        else: self.charge,self.fire,self.vent,self.tick,self.cool,self.damage_delay = 1.2,3,0,.2,12,0

    def advance(self,t,pool):
        if not self.enabled: return False
        if t+1e-9 >= self.next_at:
            self.start = t
            self.spent = 0
            self.tick_at = t+self.charge+self.damage_delay+self.tick
            self.end = t+self.charge+self.fire
            self.busy_end = self.end+self.vent
            self.next_at = self.busy_end+self.cool
        while self.tick_at <= t+1e-9 and self.tick_at <= self.end+1e-9:
            pct = doom_budget(self.player,self.enemy)
            if pct:
                step = min(pct/22,max(0,pct-self.spent))
                self.spent += step
                pool.hit(pool.max_hull*step,t,bypass=True)
            else:
                # ModTitan.doomHit: 100k/s fixed damage, usual hit pipeline.
                dmg = 100000*self.tick*player_factor(self.player,self.enemy,-1)
                pool.hit(dmg*(.7 if self.enemy.titan else .75 if self.enemy.police else 1),t)
            self.tick_at += self.tick
        return self.start <= t < self.busy_end


def player_factor(p,e,family):
    # ModV34.damage: pilot; police ignore wheel AND weapon-family resistance.
    factor = pilot(stat_base(p.level),e.pilot_stat)
    if not e.police:
        factor *= counter(p.faction,e.faction,family)
        # ModV35.damage excludes elites, police, bosses and titan-class entities.
        if not(e.elite or e.flagship or e.titan or e.boss): factor *= normal_factor(p.faction,e.faction)
    return factor


@lru_cache(None)
def capital_guns(faction):
    """(family, damage weight, seconds, salvo count) from ModCapitals.GUNS."""
    block = data.java('ModCapitals').split('static final Gun[][] GUNS = {',1)[1].split('\n    };',1)[0]
    rows = [line for line in block.splitlines() if 'new Gun' in line]
    # Warden has two Gun constructors split across lines; group by closing },.
    groups = re.findall(r'\{(new Gun.*?)\},',block,re.S)
    i = ('spartan','reaver','kretari','varn','ironclad','helion','warden').index(faction)
    names = {'RAIL':0,'AUTO':1,'ARTY':2,'BLAST':3,'DISINT':4,'ARC':5}
    return tuple((names[f],float(d),int(ms)/1000,int(n)) for f,d,ms,n in re.findall(
        r'new Gun\(ModWeapons\.(\w+),\s*([\d.]+)f,\s*(\d+),[^\n]*?,\s*(\d+),\s*\d+,\s*[\d.]+f,',groups[i]))


@dataclass(frozen=True)
class Result:
    time_to_kill: float
    time_to_die: float
    outcome: str
    duel_time: float
    player_hull_at_end: float
    enemy_hull_at_end: float
    horizon: float


def duel(p,e,dt=.05,max_time=180,doomsday=True,anchor=True,front=True):
    if dt <= 0 or max_time <= 0: raise ValueError('dt and max_time must be positive')
    a = Pool(p.max_hull,p.max_shield,p.shield_regen,p.hull_regen,p.shield_delay,player=True,level=p.level)
    b = Pool(e.max_hull,e.max_shield,e.shield_regen,over_cap=e.overshield,stock_shield=e.stock_shield)
    doom = Doom(p,e,doomsday)
    ramp = Ramp()
    ttk=ttd=math.inf
    end_snapshot = None
    next_laser=next_missile=0.
    # ModTitanAI.full / damageIn: four plates, each 3% max hull, 70% soak.
    plates = [e.max_hull*.03]*4 if e.flagship and e.faction=='ironclad' else []
    regrown = False
    # ModAnchor: full bow wall for a stationary, stage IV+ Leviathan.
    wall_cap = p.max_shield*1.5 if anchor and p.hull.art=='leviathan' and p.stage>=4 else 0
    wall = wall_cap
    wall_up = False
    wall_ready = 2.5
    wall_broke = False
    outgoing = player_factor(p,e,p.family)
    missile_factor = player_factor(p,e,-1)
    incoming_pilot = pilot(e.pilot_stat,stat_base(p.level))/e.baseline_pilot
    # ModV34.dodge, expected value: normal same-level enemies do not roll dodge.
    if e.elite or e.flagship or e.boss:
        incoming_pilot *= 1-max(0,min(.25,(stat_base(p.level)-e.pilot_stat)/2000))
    guns = capital_guns(e.faction) if e.flagship else ()
    # Normalize source-derived battery cadence to the rounded ground-truth DPS.
    weights = [d*n/period for f,d,period,n in guns]
    total = sum(weights)
    next_guns = [0.]*len(guns)
    # ModPoliceTitan.skills: first shield breaker at 9 s, charge 1.2 s.
    next_break = 10.2

    def take_enemy(damage,t,projectile=True):
        nonlocal regrown
        if plates and not regrown and b.hull < e.max_hull*.3:
            plates[:] = [e.max_hull*.03]*4
            regrown = True
        # ModTitanAI.damageIn: facing Aegis x.1; Varn cloak x.5, 4 s / 15 s.
        if projectile and e.flagship:
            if e.faction=='spartan' and front: damage *= .1
            elif e.faction=='ironclad':
                for i,value in enumerate(plates):
                    if value > 0:
                        soak = damage*.7
                        plates[i] -= soak
                        damage -= soak
                        break
            elif e.faction=='varn' and t>=7 and (t-7)%15 < 4: damage *= .5
        # ModPolice.armor BEFORE overshield / shield.
        damage *= .7 if e.titan else .75 if e.police else 1
        b.hit(damage,t)

    def take_player(damage,t,fam=-1,signature=False):
        nonlocal wall,wall_up,wall_broke,wall_ready
        if damage <= 0: return
        if not e.police: damage *= counter(e.faction,p.faction,fam)
        # ModAnchor.absorb: projectile is destroyed, even the breaking shot.
        if wall_up:
            wall -= damage*(.5 if doom.start<=t<doom.end else .65)
            if wall <= 0:
                wall=0
                wall_up=False
                wall_broke=True
                wall_ready=t+25
            return
        if signature:
            # ModEnemyGuns.damageIn / onImpact; excludes flagship shells.
            if e.faction=='helion' and fam==3: damage *= 1.5 if a.shield>0 else .7
            if e.faction=='warden' and fam==5: a.ion_until=t+2
        # ModPolice.hit drain: cruiser/BC shield-only bonus and regen stop.
        if e.police and not e.flagship and e.cls in (2,3):
            a.shield=max(0,a.shield-damage*.5)
            a.ion_until=t+3
        a.hit(damage,t)

    for step in range(math.floor(max_time/dt)+1):
        t = round(step*dt,9)
        if step:
            a.advance(dt,t)
            b.advance(dt,t)
        if wall_cap and not wall_up:
            if wall_broke: wall=min(wall_cap,wall+wall_cap/25*dt)
            if t>=wall_ready and wall>=wall_cap-1e-8: wall_up=True
        busy = doom.advance(t,b) if math.isinf(ttk) else False
        if not busy and math.isinf(ttk):
            while next_laser <= t+1e-9:
                # ModWeapons.onImpact: each simultaneous mount sees the same time.
                factor = ramp.hit(t) if p.family==4 else 1
                for _ in range(p.guns*p.projectiles_per_gun):
                    take_enemy(p.shot*factor*outgoing,t)
                next_laser += p.reload
            if p.missile:
                while next_missile <= t+1e-9:
                    take_enemy(p.missile_shot*p.missiles*missile_factor,t)
                    next_missile += p.missile_reload
        elif busy:
            # ModTitan.lock: existing weapons cannot bank shots while disabled.
            next_laser=max(next_laser,t+dt)
            next_missile=max(next_missile,t+dt)
        if math.isinf(ttd):
            if guns:
                for i,(fam,damage,period,n) in enumerate(guns):
                    period /= 1.2 if e.titan else 1
                    while next_guns[i] <= t+1e-9:
                        hit = e.dps*weights[i]/total*period*incoming_pilot
                        # ModWeapons.onImpact enemy disintegrator: +100% at 3 s.
                        if fam==4: hit *= 1+min(1,t/3)
                        take_player(hit,t,fam)
                        next_guns[i] += period
            else:
                # Non-capital table exports burst-averaged DPS, not per-shot damage.
                # Integrate that rate on this timestep; never invent a reload stat.
                fam = {'spartan':0,'reaver':1,'kretari':1,'varn':4,'ironclad':2,'helion':3,'warden':5}.get(e.faction,-1)
                hit = e.dps*incoming_pilot*dt if step else 0
                if fam==4: hit *= 1+min(1,t/3)
                if fam==1 and e.faction=='kretari': hit *= 1.2  # ModEnemyGuns acid, all 2 s land (steady-state).
                if fam==1 and e.faction=='reaver': hit *= 5*.25  # ModEnemyGuns flak, all shrapnel hit.
                take_player(hit,t,fam,signature=True)
            if e.drone_dps and step: take_player(e.drone_dps*incoming_pilot*dt,t,0)
            if e.missile_dps and step: take_player(e.missile_dps*incoming_pilot*dt,t)
            if e.titan and t>=next_break:
                # ModPoliceTitan.skills: 60% of current shield, bypass wall.
                a.shield *= .4
                next_break += 18
        if b.hull<=0 and math.isinf(ttk): ttk=t
        if a.hull<=0 and math.isinf(ttd): ttd=t
        if end_snapshot is None and (math.isfinite(ttk) or math.isfinite(ttd)):
            end_snapshot=(max(0,a.hull),max(0,b.hull))
        if math.isfinite(ttk) and math.isfinite(ttd): break
    if end_snapshot is None: end_snapshot=(a.hull,b.hull)
    outcome = 'timeout' if math.isinf(min(ttk,ttd)) else 'mutual' if ttk==ttd else 'win' if ttk<ttd else 'loss'
    return Result(ttk,ttd,outcome,min(ttk,ttd,max_time),*end_snapshot,max_time)
