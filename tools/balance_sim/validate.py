#!/usr/bin/env python3
"""Oracle conformance and emulator discrepancy report, without fitted corrections.

Enemy loader checks are deliberately not described as independent Java formula
validation: normal stock enemy constructors/specs are absent from the input JSON.
Capital hull / overshield checks below ARE independent formula recomputations.
"""
import argparse
from dataclasses import replace
import json
import math
from pathlib import Path
import re
import sys
from sc_sim import data, enemy, player
from sc_sim.fight import duel
from sc_sim.cli import time_text


def validate_enemies():
    text=(data.paths()[0]/'enemy-calc-out.txt').read_text()
    count=0
    worst=0
    failures=[]
    for line in text.splitlines():
        cells=[c.strip() for c in line.split('|')]
        if len(cells)!=7 or not re.match(r'^(?:[\d,.]|-$)',cells[2]): continue
        for level,cell in zip((10,20,30,40),cells[2:6]):
            if cell=='-': continue
            # Independent simple oracle scanner, deliberately separate from data.parse_enemy.
            groups=cell.split(' / ')
            expected=[data.number(re.match(r'[\d,.]+k?',part).group()) for part in groups[:3]]
            e=enemy.get(cells[1],level)
            for field,want in zip(('dps','max_hull','max_shield'),expected):
                actual=getattr(e,field)
                error=abs(actual-want)/max(1,abs(want))
                worst=max(worst,error)
                count+=1
                if error>.02: failures.append(f'{e.name} L{level} {field}: {actual} vs {want}')
    # Independent ModCapitals.spawnPolice / build formula: (500k+30k*L)*faction hull mult.
    source=data.java('ModCapitals')
    multipliers=[float(x.rstrip('f')) for x in re.search(r'HULL_MULT = \{([^}]+)',source).group(1).split(',')]
    keys=('spartan','reaver','kretari','varn','ironclad','helion','warden')
    independent=0
    for level in (10,20,30,40):
        for e in enemy.all_enemies(level):
            if not e.flagship: continue
            want=(500000+30000*level)*multipliers[keys.index(e.faction)]*(1.2 if e.titan else 1)
            err=abs(e.max_hull-want)/want
            if err>.02: failures.append(f'Capital hull {e.name}: {e.max_hull} vs {want}')
            independent+=1
            if e.titan:
                if abs(e.overshield-want*.4)/(want*.4)>.02: failures.append('Overshield '+e.name)
                independent+=1
    return count,worst,independent,failures


def gap(pred,lo,hi=None):
    hi=lo if hi is None else hi
    if math.isinf(pred): return math.inf
    if lo <= pred <= hi: return 0.
    return (pred-lo)/lo if pred<lo else (pred-hi)/hi


def emulator_report():
    text=(data.paths()[0]/'emulator-dmgtest-RESULTS.md').read_text()
    lines=['## Emulator comparison', '',
        'No empirical correction factors are applied. Setup: L40, refit 10, forced Siege Railgun, no missile firing or manual doomsday; bow-on stationary target, anchor enabled. Run 112 uses basicShieldLevel0, as its 234/156 fitted shields match the supplied measurements. Run 113 uses diamondShieldLevel15. The table reports uninterrupted clocks as well as the actual predicted outcome.', '',
        '| Run / player / target | Observed | Predicted kill s | Predicted die s | Gap in measured clock | Predicted duel | Explanation |',
        '|---|---|---:|---:|---:|---|---|']
    observations=[]
    block=text.split('## Leviathan (hull')[1].split('## Leviathan vs police')[0]
    aliases={'Spartan SRS Aegis (drones)':'SRS Aegis','Reaver Bloodforge':'Bloodforge','Ironclad IMS Bastion':'IMS Bastion',"Kre'tari":'Brood-Mother','Helion Sunspire':'Sunspire','Frontier FAV Warden':'FAV Warden','Varn Syndicate Crown':'Syndicate Crown'}
    for target,result,t in re.findall(r'^\| ([^|]+) \| ([^|]+) \| (\d+) s \|',block,re.M):
        e=enemy.get('Flagship '+aliases[target.strip()],40)
        p=player.fit('Leviathan','modRailgunL15',40,10,shield='basicShieldLevel0')
        r=duel(p,e,max_time=1800,doomsday=False)
        clock=r.time_to_kill if 'killed' in result else r.time_to_die
        g=gap(clock,float(t))
        explanation='Within 25%.' if abs(g)<=.25 else (
            'All-hit incoming DPS omits movement/aim losses; anchor coverage is fixed; flagship spatial skills are omitted.'
            if 'dead' in result else
            'Unreconciled faster emulator kill: the supplied rail-only DPS predicts much longer. Missile/other damage is not logged in the summary; geometry alone cannot explain this direction. Do not treat this as validated gameplay timing.')
        lines.append(f'| 112 / Leviathan / {e.name} | {result.strip()}, {t}s | {time_text(r.time_to_kill,1800)} | {time_text(r.time_to_die,1800)} | {g:+.1%} | {r.outcome} | {explanation} |')
        observations.append(abs(g))
    # Ranges are group observations, not fabricated per-faction point measurements.
    p=player.fit('Leviathan','modRailgunL15',40,10,shield='diamondShieldLevel15')
    for run,shield,lo,hi in [('112','basicShieldLevel0',33,58),('113 still','diamondShieldLevel15',23,52),('113 dodge','diamondShieldLevel15',28,56)]:
        p=player.fit('Leviathan','modRailgunL15',40,10,shield=shield)
        for e in enemy.all_enemies(40):
            if not e.titan: continue
            r=duel(p,e,max_time=180,doomsday=False)
            g=gap(r.time_to_die,lo,hi)
            observations.append(abs(g))
            why='Inside the published group range; individual observed time unavailable.' if abs(g)<=.25 else 'Outside group death-time range; all-hit bow geometry, fixed wall coverage and omitted movement/skills prevent emulator equivalence.'
            if 'dodge' in run: why+=' Dodging is not modeled; the identical prediction is intentional.'
            lines.append(f'| {run} / Leviathan / {e.name} | death {lo}–{hi}s (group range) | {time_text(r.time_to_kill,180)} | {time_text(r.time_to_die,180)} | {g:+.1%} to nearest bound | {r.outcome} | {why} |')
    # Warlord's forced XL rail is invalid under ModV34.fits, so bypass only for the recorded harness.
    p=player.fit('Warlord','modRailgunL15',40,10,shield='basicShieldLevel0',allow_oversize=True)
    e=enemy.get('Flagship Bloodforge',40)
    r=duel(p,e,max_time=180,doomsday=False)
    lines.append(f'| 112 / Warlord / Bloodforge | timeout 180s; 71.5% hull loss; target 84% | {time_text(r.time_to_kill,180)} | {time_text(r.time_to_die,180)} | censored: no exact kill/death observation | {r.outcome} | Harness force-equips an XL laser on an L-slot hull; all-hit damage predicts a loss. |')
    lines += ['', 'Warlord’s other observations identify no individual target: five deaths in 14–72 s in run 112, and four deaths in 12–30 s while dodging in run 113. Individual gaps cannot be computed without inventing the missing target/time pairs. Police titan kill times were never observed: every recorded attempt ended in player death, so their TTKs are censored, not zero.', '',
        'A gap of +inf means the predicted event did not occur by the stated model horizon. Group-range gaps are zero inside the interval and signed distance to the nearest bound outside it. A small range gap is not an individual measurement match.', '',
        'Main source of uncertainty: the experiment moved targets through 0–9k distance and reports hull drops only. The input contains no raw per-second logs or damage-source attribution. The model intentionally does not fit a hit chance, missile contribution or hidden damage multiplier to force agreement. Faster measured rail-only kills remain unexplained by the supplied summary and should be investigated in the emulator before using this model for absolute TTK tuning.']
    return '\n'.join(lines),observations


def main(argv=None):
    ap=argparse.ArgumentParser()
    ap.add_argument('--output',type=Path,help='Write full Markdown comparison')
    ap.add_argument('--strict-emulator',action='store_true',help='Fail if any comparable observation differs >25%')
    args=ap.parse_args(argv)
    count,worst,independent,failures=validate_enemies()
    em,gaps=emulator_report()
    summary=f'Enemy oracle: {count} DPS/hull/shield values; max error {worst:.2%}; tolerance 2%: '+('FAIL' if failures else 'PASS')
    independent_summary=f'Independent capital hull/overshield formulas: {independent} checks: '+('FAIL' if failures else 'PASS')
    outside=sum(g>.25 for g in gaps)
    em_summary=f'Emulator comparison: {outside}/{len(gaps)} point/range comparisons exceed 25%; see detailed explanations. This is a discrepancy check, not an emulator accuracy pass.'
    doc='# Validation\n\n'+summary+'\n\n'+independent_summary+'\n\n'+em_summary+'\n\nThe oracle conformance check validates table loading, not an independent re-derivation of normal enemy formulas. Independent formula checks are listed separately.\n\n'+em+'\n'
    print(summary)
    print(independent_summary)
    print(em_summary)
    if args.output:
        args.output.parent.mkdir(parents=True,exist_ok=True)
        args.output.write_text(doc)
        print('Details written to '+str(args.output))
    else: print('\n'+em)
    for failure in failures: print('FAIL: '+failure)
    return 1 if failures or (args.strict_emulator and outside) else 0

if __name__=='__main__': sys.exit(main())
