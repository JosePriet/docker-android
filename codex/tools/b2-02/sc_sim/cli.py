"""Command-line interface and reproducible Markdown balance tables."""
import argparse
from dataclasses import asdict
import json
import math
import sys
from . import data, enemy, player
from .fight import duel


def time_text(value,horizon):
    return f'>{horizon:g}' if math.isinf(value) else f'{value:.2f}'


def table_rows(level, max_time=180, doomsday=True):
    for h in data.hulls():
        for refit in (0,10):
            p = player.best_fit(h,level,refit)
            for e in enemy.all_enemies(level):
                yield p,e,duel(p,e,max_time=max_time,doomsday=doomsday)


def markdown_table(level,max_time=180,doomsday=True):
    yield '| Hull | Refit | Stage | Laser | Missile | Shield item | Enemy | Kill s | Survive s | Duel |'
    yield '|---|---:|---:|---|---|---|---|---:|---:|---|'
    for p,e,r in table_rows(level,max_time,doomsday):
        yield f'| {p.hull.name} | {p.refit} | {p.stage} | {p.laser} | {p.missile} | {p.shield_item} | {e.name} | {time_text(r.time_to_kill,max_time)} | {time_text(r.time_to_die,max_time)} | {r.outcome} |'


def main(argv=None):
    ap=argparse.ArgumentParser(description='Legacy Task 2 baseline. Use run.py for the calibrated batch-2 simulator.')
    sub=ap.add_subparsers(dest='command',required=True)
    for command in ('killtime','table','enemies','hulls'):
        q=sub.add_parser(command)
        q.add_argument('--level',type=int,default=40)
        if command in ('killtime','table'):
            q.add_argument('--max-time',type=float,default=180)
            q.add_argument('--no-doomsday',action='store_true',help='Do not press the manual doomsday button')
        if command=='killtime':
            q.add_argument('--hull',required=True)
            q.add_argument('--laser',help='Exact gear enum name, or a family name (rail, autocannon, artillery, blaster, disintegrator, arc)')
            q.add_argument('--missile',help='Gear enum, or none; default best sustainable missile DPS')
            q.add_argument('--shield',help='Gear enum, or none; default maximum capacity')
            q.add_argument('--refit',type=int,default=0)
            q.add_argument('--stage',type=int,help='Override visual/turret stage independently of refit')
            q.add_argument('--faction',choices=('',*player.OWN),help='Counterfactual hull faction for fit and damage; innate refit trait stays with original hull')
            q.add_argument('--vs',required=True)
            q.add_argument('--no-anchor',action='store_true')
            q.add_argument('--rear',action='store_true',help='Shoot outside the Aegis bow wall')
            q.add_argument('--json',action='store_true')
    args=ap.parse_args(argv)
    try:
        if args.command=='enemies':
            for e in enemy.all_enemies(args.level): print(e.name)
        elif args.command=='hulls':
            for h in data.hulls(): print(h.name)
        elif args.command=='table':
            print('Times are uninterrupted exposure clocks; Duel ends at first death. >N is right-censored at N seconds. Best = steady DPS / shield capacity; see the batch-2 report for the calibrated results.\n')
            for line in markdown_table(args.level,args.max_time,not args.no_doomsday): print(line)
        else:
            h=data.hull(args.hull)
            best=player.best_fit(h,args.level,args.refit,args.faction)
            laser=args.laser or best.laser
            fams={'rail':0,'autocannon':1,'artillery':2,'blaster':3,'disintegrator':4,'arc':5}
            if laser.casefold() in fams:
                candidates=[n for n,_ in player.legal_gear(h,args.level,'LaserSpec') if player.family(n)==fams[laser.casefold()]]
                if not candidates: raise ValueError('No weapon in that family fits this hull and level')
                laser=max(candidates,key=lambda n:player.fit(h,n,args.level,args.refit,faction=args.faction).ramped_dps)
            mis=best.missile if args.missile is None else None if args.missile.casefold()=='none' else args.missile
            sh=best.shield_item if args.shield is None else None if args.shield.casefold()=='none' else args.shield
            p=player.fit(h,laser,args.level,args.refit,mis,sh,args.stage,args.faction)
            e=enemy.get(args.vs,args.level)
            r=duel(p,e,max_time=args.max_time,doomsday=not args.no_doomsday,anchor=not args.no_anchor,front=not args.rear)
            if args.json:
                obj={'player':asdict(p),'enemy':asdict(e),'result':asdict(r),'dps':p.dps,'burst':p.burst}
                for k in ('time_to_kill','time_to_die'):
                    if math.isinf(obj['result'][k]): obj['result'][k]=None
                print(json.dumps(obj,indent=2,allow_nan=False))
            else:
                print(f'{p.hull.name} refit {p.refit}, stage {p.stage}; {p.laser}, {p.missile or "no missiles"}, {p.shield_item or "no shield"}')
                print(f'vs {e.name} L{e.level}')
                print(f'DPS {p.dps:.2f} (laser {p.laser_dps:.2f}, missile {p.missile_dps:.2f}); burst {p.burst:.2f}; hull {p.max_hull:.2f}; shield {p.max_shield:.2f}')
                print(f'Hull regen {p.hull_regen*p.max_hull:.2f}/s; shield item rate {p.shield_regen:.2f}/s (charge curve and delay apply)')
                print(f'Time to kill: {time_text(r.time_to_kill,args.max_time)} s; time to die: {time_text(r.time_to_die,args.max_time)} s')
                print(f'Duel: {r.outcome} at {r.duel_time:.2f} s. Times are uninterrupted exposure clocks; >N means not reached within N s.')
    except (ValueError,KeyError) as exc:
        ap.error(str(exc))


if __name__=='__main__': main()
