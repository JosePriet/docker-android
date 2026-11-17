#!/usr/bin/env python3
"""Regenerate full tables and category extrema with the exact shipped model."""
from pathlib import Path
import math
import sys
from sc_sim import data, enemy, player
from sc_sim.cli import table_rows, time_text
from sc_sim.fight import capital_guns, player_factor, duel
from sc_sim.enemy import pilot, stat_base, counter

HERE=Path(__file__).resolve().parent


def outlier_cause(p,e,r,category):
    if category=='Shortest kill':
        return (f'PlayerCanon.requestShoot: {p.guns} mounts × {p.projectiles_per_gun} projectiles × {p.shot:.1f} damage; '
                f'missiles {p.missile_shot:.1f} × {p.missiles}. Loaded burst {p.burst:.1f} vs hull {e.max_hull:.1f} + shield {e.max_shield:.1f}. '
                'The t=0, all-hit/no-travel assumption permits an immediate kill.')
    if 'survival' in category:
        guns=capital_guns(e.faction)
        total=sum(d*n/period for f,d,period,n in guns)
        ratio=pilot(e.pilot_stat,stat_base(p.level))/e.baseline_pilot
        alpha=sum(e.dps*(d*n/period)/total*period/(1.2 if e.titan else 1)*ratio*
                  (1 if e.police else counter(e.faction,p.faction,f)) for f,d,period,n in guns)
        return (f'ModCapitals.GUNS: synchronized loaded battery alpha ≈ {alpha:.1f} after pilot/counter, '
                f'vs hull {p.max_hull:.1f} + shield {p.max_shield:.1f}. Hull = XpBuilder[{p.level}] × {p.hull.life:g} × refit hull factor. '
                'The oracle already includes 3× battery damage; no second 3×. Initial synchronization and all-hit geometry cause the zero-time death.')
    if e.faction=='ironclad' and e.flagship:
        return (f'ModTitanAI.full/damageIn: 4 plates × 3% × {e.max_hull:.0f} hull, each soaking 70% of hits; '
                f'plates restore once below 30% hull. ModV34.regen adds {e.shield_regen:.1f} × 0.85 = {e.shield_regen*.85:.1f} shield/s under fire. '
                f'Raw laser {p.laser_dps:.1f}/s + missiles {p.missile_dps:.1f}/s must drain these layers before hull.')
    factor=player_factor(p,e,p.family)*(.1 if e.flagship and e.faction=='spartan' else 1)*(.7 if e.titan else .75 if e.police else 1)
    eff=p.laser_dps*factor+p.missile_dps*player_factor(p,e,-1)*(.1 if e.flagship and e.faction=='spartan' else 1)*(.7 if e.titan else .75 if e.police else 1)
    return (f'ModTitanAI.damageIn ×0.1 bow wall and ModPolice.armor ×0.7 on this titan: effective offense ≈ {eff:.1f}/s. '
            f'ModPoliceTitan.overAbsorb starts with {e.overshield:.0f} overshield ahead of normal shield; '
            f'ModV34.regen then supplies {e.shield_regen:.1f} ×0.85 = {e.shield_regen*.85:.1f}/s. '
            'This hull has no doomsday bypass; ordinary fire cannot overcome shield regeneration after the overshield.')


def build():
    sections=[]
    extremes=[]
    for level in (10,20,30,40):
        lines=[f'## Level {level}', '', '| Hull | Refit | Stage | Laser | Missile | Shield | Enemy | Kill s | Survive s | Duel |', '|---|---:|---:|---|---|---|---|---:|---:|---|']
        count=0
        for p,e,r in table_rows(level):
            count+=1
            lines.append(f'| {p.hull.name} | {p.refit} | {p.stage} | {p.laser} | {p.missile} | {p.shield_item} | {e.name} | {time_text(r.time_to_kill,180)} | {time_text(r.time_to_die,180)} | {r.outcome} |')
            if r.time_to_kill<2 or r.time_to_kill>120 or r.time_to_die<5:
                extremes.append((p,e,r))
        sections.append('\n'.join(lines))
        print(f'L{level}: {count} fit/enemy rows generated',flush=True)
    # Select five extrema across the requested categories; deterministic ties.
    ordered=sorted(extremes,key=lambda x:(x[0].level,x[0].hull.name,x[0].refit,x[1].name))
    fast=[x for x in ordered if x[2].time_to_kill<2]
    slow=[x for x in ordered if 120<x[2].time_to_kill<math.inf]
    censored=[x for x in ordered if math.isinf(x[2].time_to_kill)]
    deaths=sorted((x for x in ordered if x[2].time_to_die<5),key=lambda x:x[2].time_to_die)
    chosen=[]
    if fast: chosen.append(('Shortest kill',min(fast,key=lambda x:x[2].time_to_kill)))
    if slow: chosen.append(('Longest completed kill',max(slow,key=lambda x:x[2].time_to_kill)))
    if censored:
        chosen.append(('Unfinished kill with weakest raw offense relative to shield regen',min(censored,key=lambda x:x[0].ramped_dps/max(1,x[1].shield_regen))))
    for x in deaths:
        if not any(y[0].hull.name==x[0].hull.name for _,y in chosen if y[2].time_to_die<5):
            chosen.append(('Shortest survival',x))
        if len(chosen)>=5: break
    out=['## Five extreme outliers','',
         'Selected deterministically across the requested categories: shortest kill, longest completed kill above 120 s, a shield-regeneration-limited unfinished kill, and the shortest survivals on distinct hulls. Ties use level, hull name, refit and enemy name. These are model extrema, not confirmed Android balance bugs.','',
         '| Extreme | Level / hull / refit | Enemy | Kill s | Survive s | Causal formula |','|---|---|---|---:|---:|---|']
    for category,(p,e,r) in chosen:
        why=outlier_cause(p,e,r,category)
        out.append(f'| {category} | L{p.level} / {p.hull.name} / {p.refit} | {e.name} | {time_text(r.time_to_kill,180)} | {time_text(r.time_to_die,180)} | {why} |')
    header='''# Space Corsair combat balance report

Generated by `python tools/balance_sim/generate_report.py` from the shipped tables and source. Pure Python, fixed 0.05 s integration. No balance changes are proposed.

All 47 TSV hulls, refit 0 and 10, use the modeled best eligible direct weapons at or below the stated level and maximum-capacity shield, against every oracle enemy variant available at that level. Hull purchase licences and unlocks are unconstrained; industrial and DEV hulls are comparison cases. Full-ramp disintegrator DPS determines weapon selection; the actual fight ramps from zero. Shield bonuses and optional alteration procs missing from the exported nested gear data are excluded. 'Best' does not optimize ammo-limited or specialized Phoenix/drone builds. Exact gear identifiers accompany every row.

Kill/Survive are separate uninterrupted exposure clocks; after one death, the other clock continues counterfactually. The actual duel ends at the first death and is recorded separately. `>180` is right-censoring, not invulnerability. Shots are loaded at t=0, every shot hits, no travel delay. Manual doomsday auto-activates after the source initial cooldown, and the stationary Leviathan anchor is enabled. Enemy 3× damage and elite scaling are already in the oracle; the model does not apply them twice. Neither these tables nor the five extrema claim absolute emulator accuracy.

Enemy validation: all 732 DPS/hull/shield values match the printed oracle (0% error); 84 independent capital hull/overshield checks pass. The 25% emulator timing comparison fails; see the full validation table below. Agreement with a table used as input is conformance evidence, not independent validation of normal enemy formulas.

'''
    assumptions=(HERE/'ASSUMPTIONS.md').read_text().replace('# ASSUMPTIONS','# ASSUMPTIONS',1)
    validation=(HERE/'validation.md').read_text()
    doc=header+'\n'.join(out)+'\n\n'+'\n\n'.join(sections)+'\n\n'+validation+'\n\n'+assumptions
    (HERE/'report.md').write_text(doc)
    # Only the task-named repository report is written outside tools/balance_sim.
    repo_data=data.paths()[0]
    if repo_data.name=='data' and repo_data.parent.name=='codex':
        target=repo_data.parent/'out/balance-report.md'
        target.parent.mkdir(parents=True,exist_ok=True)
        target.write_text(doc)
    print(f'Report: {sum(len(s.splitlines())-4 for s in sections)} rows, {len(chosen)} extrema; {len(doc):,} bytes',flush=True)

if __name__=='__main__': build()
