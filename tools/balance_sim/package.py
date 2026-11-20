#!/usr/bin/env python3
"""Build a reproducible, standalone zip with source/data provenance, no game jar."""
import argparse
import hashlib
import json
from pathlib import Path
import zipfile
from sc_sim import data

HERE=Path(__file__).resolve().parent


def make_zip(destination):
    entries={}
    for path in HERE.rglob('*'):
        if path.is_file() and not any(x=='__pycache__' for x in path.parts) and path.suffix not in ('.pyc','.zip'):
            entries[path.relative_to(HERE).as_posix()]=path.read_bytes()
    tables,source=data.paths()
    for path in tables.iterdir():
        if path.is_file():
            name='EnemyCalc.java' if path.name=='EnemyCalc.java.txt' else path.name
            entries['data/'+name]=path.read_bytes()
    for path in source.glob('*.java'):
        entries['src/java/fr/testudo/spacecorsair/mod/'+path.name]=path.read_bytes()
    # Stock code is read-only evidence, never patched or run by the simulator.
    for parent in source.parents:
        smali=parent/'work/smali/fr/testudo/spacecorsair/business/player'
        if smali.exists():
            for name in ('PlayerShip.smali','PlayerCanon.smali','Shield.smali'):
                entries['provenance/stock-smali/'+name]=(smali/name).read_bytes()
            break
    manifest={name:{'sha256':hashlib.sha256(content).hexdigest(),'bytes':len(content)} for name,content in sorted(entries.items())}
    entries['SOURCES.json']=(json.dumps({'description':'Bundled source, inputs and generated deliverables; SHA-256 covers every entry except this manifest itself.', 'files':manifest},indent=2)+'\n').encode()
    destination.parent.mkdir(parents=True,exist_ok=True)
    with zipfile.ZipFile(destination,'w',compression=zipfile.ZIP_DEFLATED,compresslevel=9) as archive:
        for name,content in sorted(entries.items()):
            info=zipfile.ZipInfo(name,date_time=(2026,1,1,0,0,0))
            info.compress_type=zipfile.ZIP_DEFLATED
            info.external_attr=0o644<<16
            archive.writestr(info,content,compress_type=zipfile.ZIP_DEFLATED,compresslevel=9)
    print(f'{destination}: {len(entries)} files, {destination.stat().st_size:,} bytes')

if __name__=='__main__':
    ap=argparse.ArgumentParser()
    ap.add_argument('--output',type=Path,default=HERE/'sc_balance_sim.zip')
    make_zip(ap.parse_args().output)
