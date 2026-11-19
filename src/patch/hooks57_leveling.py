# v57 leveling (owner OK 2026-11-18, P2 + P3). Run ONCE.
# P3: stock mission engines / target creators spawn through ModMissionSpawn (mission level + 2 cap, no sector band)
#     instead of ModStockSpawn (sector band clamp).
# P2: every stock Mission built by the stock mission lists gets ModStockSpawn.mission(m) (level on the 0-40 scale).
import re, glob
B = 'work/smali/fr/testudo/spacecorsair/business/mission/'
ENGINES = [B + 'engine/KillPillardBossMissionEngine.smali', B + 'engine/OmicronPrimeMissions$4.smali',
           B + 'engine/delivery/DeliveryMissionEngine.smali', B + 'engine/DefendCiviliansHighWayMissionEngine.smali',
           B + 'engine/BountyMissionEngine.smali', B + 'engine/RescueEngine.smali',
           B + 'engine/escorte/EscortCivilMissionEngine.smali', B + 'engine/DestroyStationMissionEngine.smali',
           B + 'GenesisMissions$3.smali', B + 'SpartanMissions$1.smali']
OLD, NEW = 'Lfr/testudo/spacecorsair/mod/ModStockSpawn;->new', 'Lfr/testudo/spacecorsair/mod/ModMissionSpawn;->new'
n = 0
for p in ENGINES:
    s = open(p).read()
    c = s.count(OLD)
    assert c > 0, p
    open(p, 'w').write(s.replace(OLD, NEW))
    n += c
LISTS = [B + 'SpartanMissions.smali', B + 'VentoHighMissions.smali', B + 'GenesisMissions.smali', B + 'engine/OmicronPrimeMissions.smali']
INIT = re.compile(r'^(\s*)invoke-direct(?:/range)? \{(v\d+|p\d+)[^}]*\}, Lfr/testudo/spacecorsair/business/mission/Mission;-><init>\(.*\)V\n', re.M)
m_n = 0
for p in LISTS:
    s = open(p).read()
    c = len(INIT.findall(s))
    assert c > 0, p
    s = INIT.sub(lambda m: m.group(0) + '\n%sinvoke-static/range {%s .. %s}, Lfr/testudo/spacecorsair/mod/ModStockSpawn;->mission(Lfr/testudo/spacecorsair/business/mission/Mission;)V\n' % (m.group(1), m.group(2), m.group(2)), s)
    open(p, 'w').write(s)
    m_n += c
print('hooks57_leveling ok: %d engine spawns -> ModMissionSpawn, %d stock missions rescaled' % (n, m_n))
