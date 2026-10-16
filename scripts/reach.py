import re, os, sys, glob
S=sys.argv[1]; J=S+'/src/java/fr/testudo/spacecorsair/mod'
src={os.path.basename(f):open(f).read() for f in glob.glob(J+'/*.java')}
allsrc='\n'.join(src.values())
lits=set(re.findall(r'"([A-Za-z0-9_]+)"', allsrc))
arts=re.findall(r'new Hull\("[^"]*", "[^"]*", \w+, \d+, "[^"]*", "([^"]*)"', src['ModShips.java'])
keys=re.findall(r'"(\w+)"', re.search(r'KEYS = \{([^}]*)\}', src['ModRepData.java']).group(1))
fkeys=re.findall(r'new Faction\("(\w+)"', src['ModCapitals.java'])
fams=re.findall(r'"(\w+)"', re.search(r'FAMILY_TURRETS = \{([^}]*)\}', src['ModArt.java']).group(1))
fx=re.findall(r'"(\w+)"', re.search(r'TEXTURES = \{([^}]*)\}', src['ModFx.java'], re.S).group(1))
fleet=re.findall(r'new Type\("(\w+)"', src['ModFleet.java'])
icons=re.findall(r'"(\w+)"', re.search(r'ICONS = \{([^}]*)\}', src['ModWeapons.java']).group(1))
print('hull arts',len(arts),'keys',keys==fkeys,'fams',fams,'fx',len(fx),'fleet',len(fleet))
R={}
def add(n,why): R.setdefault(n,why)
for a in arts:
    add(a,'Hull.art (ModArt.load)'); add('hw_turret_'+a,'"hw_turret_"+h.art'); add('hw_missile_'+a,'"hw_missile_"+h.art')
for n in ["turret_heavy","turret_laser","turret_cannon","turret_dev","missile_dev"]: add(n,'literal in ModArt.load')
for n in fx: add(n,'ModFx.TEXTURES')
for f in fams:
    for s in 'sml': add('turret_%s_%s'%(f,s),'"turret_"+fam+"_"+sz')
for k in keys: add('secret_'+k,'"secret_"+ModRepData.KEYS')
for k in fkeys:
    add('cap_'+k,'"cap_"+f.key'); add('hw_turret_cap_'+k,'"hw_turret_cap_"+f.key')
    add('portrait_'+k,'"portrait_"+key (ModComms)'); add('emblem_'+k,'"emblem_"+f.key (ModComms)')
for n in fleet: add(n,'ModFleet.ARTS')
for n in icons: add(n,'ModWeapons.ICONS')
files=sorted(os.path.splitext(f)[0] for f in os.listdir(S+'/work/modart'))
unref=[f for f in files if f not in R]
print('files',len(files),'reachable',len([f for f in files if f in R]))
for f in unref: print('UNREF',f,'| literal in java' if f in lits else '| no literal', '| substr hits:', len(re.findall(re.escape(f), allsrc)))
missing=[n for n in R if n not in files]
print('reachable-but-missing:', missing)
