"""Hand-computed cases from the Java methods named in each test."""
from dataclasses import replace
import math
import unittest
from sc_sim import data, player, enemy, fight

class FormulaTests(unittest.TestCase):
    def test_ship_life(self):
        # ModV34.shipLife: L24=round(10100*1.07); L40 rounded once.
        life=data.stock()['XpBuilder']['PLAYER_SHIP_LIFE']
        self.assertEqual(life[24],10807)
        self.assertEqual(life[40],31904)

    def test_stage(self):
        # ModV35.stage: ceil(n/2).
        self.assertEqual([player.refit_stage(n) for n in (0,1,2,3,6,7,9,10)], [0,1,1,2,3,4,5,5])

    def test_picks_ties(self):
        # ModV35.picks: strict greater-than preserves order; fallback hull/speed.
        self.assertEqual(player.picks([1.2,1.2]+[1]*8),(0,1))
        self.assertEqual(player.picks([1]*10),(7,8))

    def test_refit_strengths(self):
        # ModV35.scores/mults: Leviathan cargo 3 > shield1.5 > dmg1.25.
        m,pk=player.refit_mults(data.hull('Leviathan'),10)
        self.assertEqual(pk,(5,2))
        self.assertAlmostEqual(m[2],1.3*1.2,places=6)
        self.assertEqual(m[7],1)
        self.assertNotIn(6,player.refit_mults(data.hull('Cradle of Echoes'),10)[1])

    def test_fixed_pair(self):
        # ModFitting.guns/ModShips.apply: two fixed shots at 10*1.15 / .3s.
        p=player.fit('Viper','standardLaserLevel0',10)
        self.assertEqual(p.guns,2)
        self.assertAlmostEqual(p.laser_dps,23/.3)
        self.assertAlmostEqual(p.max_hull,900*1.15,places=3)

    def test_leviathan_hull_shield(self):
        # ModShips + ModV35: 31904*14; 5000*1.5*1.3*1.2.
        p=player.fit('Leviathan','modRailgunL15',40,10,shield='diamondShieldLevel15')
        self.assertEqual(p.max_hull,446656)
        self.assertEqual(p.max_shield,11700)
        self.assertEqual(p.guns,6)

    def test_turret_integer_casts(self):
        # ModShips.apply/ModTitan.apply: int(230*1.25)=287;
        # int(287*2.5)=717; rail x1.1; int(1250*1.55)=1937ms.
        p=player.fit('Leviathan','modRailgunL15',40,10)
        self.assertAlmostEqual(p.shot,717*1.1)
        self.assertEqual(p.reload,1.937)

    def test_grouped_turret_pair(self):
        # Stock PlayerCanon.requestShoot: tirGroupe emits two per full reload.
        # ModShips.base sets tirGroupe=true on all mod hulls.
        p=player.fit('Leviathan','modRailgunL15',40,10)
        self.assertEqual(p.projectiles_per_gun,2)
        self.assertAlmostEqual(p.laser_dps,717*1.1*6*2/1.937)
        self.assertAlmostEqual(p.burst,717*1.1*6*2)

    def test_stage_turrets(self):
        # ModV38.turretPlan.
        self.assertEqual([player.gun_count(data.hull('Leviathan'),s) for s in (0,3,4,5)],[4,4,5,6])
        self.assertEqual(player.gun_count(data.hull('Bastion'),4),2)
        self.assertEqual(player.gun_count(data.hull('Monolith'),0),2)
        self.assertEqual(player.gun_count(data.hull('Hornet'),4),3)

    def test_off_faction(self):
        # ModV34.offFactionRate: int(100/.6)=166; heavy int(166*1.55)=257.
        # Hull damage bonus drops; heavy int(19*2.5)=47; fit *.6.
        p=player.fit('Leviathan','modAutocannonL15',40)
        self.assertAlmostEqual(p.shot,47*.6)
        self.assertEqual(p.reload,.257)

    def test_neutral_and_own_fit(self):
        # ModV34.weaponRule.
        self.assertEqual(player.fit_rule('',0),.85)
        self.assertEqual(player.fit_rule('spartan',1),.6)
        self.assertEqual(player.fit_rule('spartan',0),1)
        self.assertEqual(player.fit_rule('spartan',-1),1)

    def test_frontier_rail(self):
        # ModV34.railReload, then Shade hull .9: 1250*.9=1125; int(*.9)=1012.
        self.assertEqual(player.fit('Shade','modRailgun',10).reload,1.012)

    def test_regen_caps(self):
        # ModV35.regen: absent base .005; cap .01 cruiser+, never below stock.
        self.assertEqual(player.repair_rate(0,'kretari',1.2,1),.006)
        self.assertEqual(player.repair_rate(.009,'kretari',1.2,2),.01)
        self.assertEqual(player.repair_rate(.015,'kretari',1.2,2),.015)
        self.assertEqual(player.repair_rate(.015,'ironclad',1.2,4),.015)

    def test_pilot(self):
        # ModV34.pilot: equal 800 ->1+(800-600)/1000=1.2.
        self.assertEqual(enemy.stat_base(10),0)
        self.assertEqual(enemy.stat_base(20),267)
        self.assertEqual(enemy.stat_base(40),800)
        self.assertEqual(enemy.pilot(800,800),1.2)
        self.assertAlmostEqual(enemy.pilot(0,1000),.7)

    def test_counters(self):
        # ModCounterData: Spartan beats Reaver x1.3 and rail weakpoint x1.2.
        self.assertAlmostEqual(enemy.counter('spartan','reaver',0),1.56)
        self.assertEqual(enemy.counter('reaver','spartan',1),.8)
        self.assertEqual(enemy.normal_factor('spartan','reaver'),2.5)
        self.assertEqual(enemy.normal_factor('reaver','spartan'),.5)

    def test_police_neutral(self):
        # ModV34.damage: ATK0 vs elite DEF150 ->1; no wheel/resist on police.
        p=player.fit('Leviathan','modRailgun',10)
        self.assertEqual(fight.player_factor(p,enemy.get('Police Frigate',10),0),1)

    def test_parser_units(self):
        row=data.parse_enemy('| Police titan Example | 5,982 +1,546d / 768k +307kos / 9,936 (regen 331/s) | - | - | - |')[0]
        self.assertEqual((row.dps,row.drones,row.hull,row.overshield,row.shield,row.regen),(5982,1546,768000,307000,9936,331))

    def test_capital_3x_once(self):
        # EnemyCalc raw output: ModCapitals.DMG_MULT already included.
        e=enemy.get('Flagship Bloodforge (8 mounts)',40)
        self.assertEqual(e.dps,40000)
        self.assertEqual(e.max_hull,2550000)

    def test_battery_cadence(self):
        # ModCapitals.GUNS literal reloads.
        self.assertEqual(fight.capital_guns('spartan'),((0,3.,2.6,1),))
        self.assertEqual(fight.capital_guns('warden'),((0,3.,2.8,1),(5,1.2,.9,1)))

    def test_shield_curve(self):
        # ModShield.curve breakpoints.
        self.assertEqual([round(fight.shield_curve(x),4) for x in (0,.25,.5,.75,1)],[1,1,.75,.55,.4])

    def test_layer_order(self):
        # ModLive.hit: overshield, shield, hull.
        pool=fight.Pool(100,20,over_cap=30)
        pool.hit(40,0)
        self.assertEqual((pool.over,pool.shield,pool.hull),(0,10,100))
        pool.hit(25,0)
        self.assertEqual((pool.over,pool.shield,pool.hull),(0,0,85))

    def test_enemy_regen(self):
        # ModV34.regen: .85 within3s, full rate afterwards.
        pool=fight.Pool(100,100,10)
        pool.hit(100,0)
        pool.advance(1,1)
        self.assertEqual(pool.shield,8.5)
        pool.advance(1,4)
        self.assertEqual(pool.shield,18.5)

    def test_player_delay(self):
        # Stock Shield.applyDamage + ModShield.rate, 50% charge ->.75 rate.
        pool=fight.Pool(100,100,10,delay=2,player=True)
        pool.hit(50,0)
        pool.advance(1,1)
        self.assertEqual(pool.shield,50)
        pool.advance(1,2)
        self.assertEqual(pool.shield,57.5)

    def test_overshield_refill(self):
        # ModPoliceTitan.overTick: 20s quiet, refill in6s.
        pool=fight.Pool(100,over_cap=40)
        pool.hit(40,0)
        pool.advance(6,19.99)
        self.assertEqual(pool.over,0)
        pool.advance(6,20)
        self.assertEqual(pool.over,40)

    def test_bypass_regen(self):
        # ModTitan.doomHit bypasses both shields; ModShips.tick heals1%/s.
        pool=fight.Pool(100,50,0,.01,over_cap=40)
        pool.hit(10,0,bypass=True)
        self.assertEqual((pool.hull,pool.shield,pool.over),(90,50,40))
        pool.advance(1,1)
        self.assertEqual(pool.hull,91)

    def test_ramp_decay(self):
        # ModWeapons.onImpact: 3s buildup, gap2 -> drain(2-1)/3.
        r=fight.Ramp()
        self.assertEqual(r.hit(0),1)
        self.assertAlmostEqual(r.hit(1),4/3)
        r.hit(2)
        self.assertEqual(r.hit(3),2)
        self.assertAlmostEqual(r.hit(5),5/3)
        self.assertEqual(r.hit(5.1,'new'),1)

    def test_doom_per_activation_cap(self):
        # ModTitan.doomHit + ModLevDoom: 22 ticks, .1/22 each, never per tick10%.
        p=player.fit('Leviathan','modRailgunL15',40,10)
        e=enemy.get('Police titan Bloodforge (8 mounts)',40)
        b=fight.Pool(10000,5000,over_cap=4000)
        d=fight.Doom(p,e)
        for step in range(700): d.advance(step*.05,b)
        self.assertAlmostEqual(b.hull,9000)
        self.assertEqual((b.shield,b.over),(5000,4000))
        self.assertLessEqual(d.spent,.1+1e-9)

    def test_other_doom_caps(self):
        # ModTitan.DOOM_*_PCT_OTHER.
        p=player.fit('Crimson Throne','modAutocannonL15',40,10)
        self.assertEqual(fight.doom_budget(p,enemy.get('titan',40)),.07)
        self.assertEqual(fight.doom_budget(p,enemy.get('flagship',40)),.10)

    def test_escalation(self):
        # ModPolice.UNLOCK/titanAllowed.
        self.assertEqual([enemy.unlocked_class(h) for h in (0,1,4,5,34,46)],[-1,0,0,1,5,6])
        self.assertTrue(enemy.titan_allowed(16,1,5,False))
        self.assertFalse(enemy.titan_allowed(15,46,5,False))
        self.assertEqual(enemy.wave_delay(0,3),8)

    def test_current_wave_progression(self):
        # ModPolice.nextTop ignores old heat unlock thresholds; +1 per wave.
        self.assertEqual(enemy.next_top(1,3,40),4)
        self.assertEqual(enemy.next_top(1,5,40),6)
        self.assertEqual(enemy.next_top(1,5,15),5)
        self.assertEqual(enemy.next_top(0,5,40),-1)
        self.assertEqual(enemy.wave_classes(5),(5,4,4))
        self.assertEqual(enemy.wave_classes(3,2),(3,3,2,2))

    def test_reload_and_duel_clocks(self):
        p=replace(player.fit('Viper','standardLaserLevel0',10),shot=10,guns=2,reload=1,max_hull=100,hull_regen=0)
        e=replace(enemy.get('normal',10),max_hull=50,dps=1000)
        r=fight.duel(p,e,max_time=3,doomsday=False)
        self.assertEqual(r.time_to_kill,2) #20at0 +20at1 +20at2.
        self.assertAlmostEqual(r.time_to_die,.1)
        self.assertEqual(r.outcome,'loss')

    def test_censoring(self):
        p=replace(player.fit('Viper','standardLaserLevel0',10),shot=0)
        e=replace(enemy.get('normal',10),dps=0)
        r=fight.duel(p,e,max_time=1)
        self.assertTrue(math.isinf(r.time_to_kill) and math.isinf(r.time_to_die))
        self.assertEqual(r.outcome,'timeout')

    def test_coverage_and_invalid_inputs(self):
        self.assertEqual(len(data.hulls()),47)
        self.assertEqual(len(data.enemy_rows()),244)
        self.assertEqual(len(enemy.all_enemies(40)),75)
        with self.assertRaises(ValueError): enemy.get('normal',15)
        with self.assertRaises(ValueError): player.fit('Viper','modRailgunL15',40)
        with self.assertRaises(ValueError): player.fit('Leviathan','modRailgunL15',40,11)

if __name__=='__main__': unittest.main()
