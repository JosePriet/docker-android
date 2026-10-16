B='work/smali/fr/testudo/spacecorsair/'
UI='Lfr/testudo/spacecorsair/mod/ModUi;'
MOD='Lfr/testudo/spacecorsair/mod/Mod;'
def rd(p): return open(B+p).read()
def wr(p,s): open(B+p,'w').write(s)
def method(s,sig):
    i=s.index(sig); j=s.index('.end method',i); return i,j
def after_prologue(s,sig,code):
    i,j=method(s,sig); m=s[i:j]; k=m.index('.prologue')+len('.prologue')
    return s[:i]+m[:k]+'\n'+code+'\n'+m[k:]+s[j:]

p='activity/adapters/SpaceObjectAdapter.smali'; s=rd(p)
sig='.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;'
i,j=method(s,sig); m=s[i:j]
k=m.index('\n',m.index('.registers'))+1
m=m[:k]+f'''    invoke-static {{p1, p2}}, {UI}->items(Landroid/app/Activity;Ljava/util/List;)Ljava/util/List;
    move-result-object p2
'''+m[k:]
s=s[:i]+m+s[j:]; wr(p,s)

p='activity/ShipsActivity.smali'; s=rd(p)
old='sget-object v0, Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_SHIPS:Ljava/util/List;'
i,j=method(s,'.method public initPager()V'); m=s[i:j]
import re
mm=re.search(r'sget-object (v\d+), Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;->ALL_SHIPS:Ljava/util/List;',m)
r=mm.group(1)
m=m.replace(mm.group(0),f'invoke-static {{p0}}, {UI}->ships(Landroid/app/Activity;)Ljava/util/List;\n\n    move-result-object {r}')
s=s[:i]+m+s[j:]; wr(p,s)

p='business/player/PlayerShip.smali'; s=rd(p)
i,j=method(s,'.method private applySoloGear()V'); m=s[i:j]
k=m.rindex('return-void')
m=m[:k]+f'invoke-static {{p0}}, {MOD}->applyShipBonuses(Lfr/testudo/spacecorsair/business/player/PlayerShip;)V\n\n    '+m[k:]
assert m.count('return-void')==1
s=s[:i]+m+s[j:]; wr(p,s)

# ship tiers
p='business/loot/SpaceObjectType.smali'; s=rd(p)
def set_rarity(name,rar):
    global s
    i=s.index(f'const-string v1, "{name}"'); j=s.index('invoke-direct/range',i)
    blk=s[i:j]; blk2=re.sub(r'LootRarety;->\w+:',f'LootRarety;->{rar}:',blk,1)
    s=s[:i]+blk2+s[j:]
set_rarity('alienUfo','EXCEPTIONAL'); set_rarity('alienBlatte','LEGENDARY'); set_rarity('corvette','LEGENDARY'); set_rarity('alienRat','BASIC')
wr(p,s)
p='business/loot/stuff/playerShip/PlayerShipSpecBuilder.smali'; s=rd(p)
i,j=method(s,'.method public static getAlienUfo()'); m=s[i:j]
m=m.replace('LootRarety;->BASIC:','LootRarety;->EXCEPTIONAL:',1); s=s[:i]+m+s[j:]; wr(p,s)
print('ok')
