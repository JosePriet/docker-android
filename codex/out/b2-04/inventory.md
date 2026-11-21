# Mission, encounter and reward inventory

CONFIRMED entries below trace constructors, data rows and lifecycle paths on the requested source branch. Java filenames are relative to `src/java/fr/testudo/spacecorsair/mod/`. Smali paths are relative to `work/smali/fr/testudo/spacecorsair/`. Line numbers refer to that branch.

## Stock missions

CONFIRMED. Sector lookup selects four hub lists and appends faction offers. The ID lookup restores an active mission. The XP and credit columns below are constructor inputs, before pilot scaling at payment. Items in the final column are the fixed cargo passed into the reward list. The Ventohigh placeholder has its own factory and is absent from the normal hub loader. `business/mission/MissionRepository.smali:113`, `business/mission/MissionRepository.smali:324`, `business/mission/MissionReward.smali:32`, `business/mission/MissionReward.smali:203`, `business/mission/VentoHighMissions.smali:868`, `ModQol.java:227`.

### GenesisMissions

| Factory source | Mission ID | Objective engine | Referenced sectors | XP | Credit input | Reward items |
|---|---|---|---|---|---|---|
| `business/mission/GenesisMissions.smali:170` | GENESIS_ASTEROID_GATHER | GatherAndSellMissionEngine | PLANCK_PRIDE, GENESIS | 500 | 1500 | — |
| `business/mission/GenesisMissions.smali:239` | GENESIS_CONTREBANDE_PLANCK | LootItemsMissionEngine | PLANCK_PRIDE, GENESIS | 600 | 2000 | standardFastLaserLevel2 |
| `business/mission/GenesisMissions.smali:317` | GENESIS_ATTAQUE_PILLARD | DefendZoneMissionEngine | GENESIS | 725 | 2500 | decentShieldLevel2 |
| `business/mission/GenesisMissions.smali:401` | GENESIS_TUER_CHEF_PILLARD | KillPillardBossMissionEngine | PLANCK_PRIDE, GENESIS | 800 | 2000 | mosquitoMissileLevel0, missile |
| `business/mission/GenesisMissions.smali:502` | GENESIS_BOUNTY_RPB_3 | BountyMissionEngine | THOR_PASSING, GENESIS | 1200 | 3000 | basicBooster |
| `business/mission/GenesisMissions.smali:582` | GENESIS_DESROY_PIRATE_STATION | DestroyStationMissionEngine | THOR_PASSING, GENESIS | 1500 | 4000 | callMobileSeller |
| `business/mission/GenesisMissions.smali:696` | GENESIS_DESROY_TOURELLE_PLANCK | KillEnnemyTypeMissionEngine | THOR_PASSING, GENESIS | 850 | 1500 | — |
| `business/mission/GenesisMissions.smali:759` | GENESIS_GOTO_VENTOHIGH | NavigateToCommandCenterMissionEngine | VENTOHIGH | 200 | 2500 | — |
| `business/mission/GenesisMissions.smali:809` | GENESIS_TUTORIAL | TutorialMissionEngine | GENESIS | 100 | 1000 | — |

### SpartanMissions

| Factory source | Mission ID | Objective engine | Referenced sectors | XP | Credit input | Reward items |
|---|---|---|---|---|---|---|
| `business/mission/SpartanMissions.smali:128` | SPARTAN_DESTROY_MINES | KillEnnemyTypeMissionEngine | ORION, SPARTAN_HQ | 1000 | 4000 | — |
| `business/mission/SpartanMissions.smali:200` | SPARTAN_DESTROY_SENTRIES | KillEnnemyTypeMissionEngine | SOLAR_FIELD, SPARTAN_HQ | 4000 | 20000 | tungstenMissileModLevel9 |
| `business/mission/SpartanMissions.smali:282` | SPARTAN_GOTO_OMICRON | NavigateToCommandCenterMissionEngine | OMICRON_PRIME | 3000 | 8000 | — |
| `business/mission/SpartanMissions.smali:332` | SPARTAN_DISCOVER_ARENA | NavigateToSectorMissionEngine | GALACTIC_ARENA, SPARTAN_HQ | 1000 | 4000 | — |
| `business/mission/SpartanMissions.smali:386` | SPARTAN_DELIVERY_TRANSFORMER | DeliveryMissionEngine | HELIOSTAT, ORE_BELT, VENTOHIGH, GENESIS, SPARTAN_HQ | 1000 | 30000 | — |
| `business/mission/SpartanMissions.smali:1062` | SPARTAN_DESTROY_GUARDIAN | KillGuardianMissionEngine | HELIOSTAT, SPARTAN_HQ | 5000 | 7000 | exceptionalLaserLevel7 |
| `business/mission/SpartanMissions.smali:1123` | SPARTAN_BOUNTY_ALIVE | BountyHunterAliveMissionEngine | PIRATE_BAY, SPARTAN_HQ | 2000 | 20000 | — |
| `business/mission/SpartanMissions.smali:1183` | SPARTAN_DESTROY_WAVE_FRELON | KillEnnemyTypeMissionEngine | THE_WAVE, SPARTAN_HQ | 3000 | 10000 | decentShieldLevel8 |

### VentoHighMissions

| Factory source | Mission ID | Objective engine | Referenced sectors | XP | Credit input | Reward items |
|---|---|---|---|---|---|---|
| `business/mission/VentoHighMissions.smali:191` | VENTOHIGH_FAKE_MISSION | AlreadyCompletedEngine | — | 0 | 0 | mosquitoMissileLevel3 |
| `business/mission/VentoHighMissions.smali:241` | VENTOHIGH_MISSILE_TEST | MissileTestEngine | VENTOHIGH | 2500 | 4000 | mosquitoMissileLevel3 |
| `business/mission/VentoHighMissions.smali:306` | VENTOHIGH_FIND_PIRATE_TWIN | FindObjectMissionEngine | TWIN_STAR, VENTOHIGH | 2000 | 10000 | decentShieldLevel5 |
| `business/mission/VentoHighMissions.smali:387` | VENTOHIGH_HERMES_TRAINING | KillEnnemyTypeMissionEngine | HERMES, VENTOHIGH | 1250 | 1800 | missile |
| `business/mission/VentoHighMissions.smali:460` | VENTOHIGH_SCAN_CIVILS | ScanCivilEngine | VENTOHIGH | 500 | 2000 | — |
| `business/mission/VentoHighMissions.smali:523` | VENTOHIGH_DESTROY_PIRATE_TWIN | TwinStationDestroyMissionEngine | TWIN_STAR, VENTOHIGH | 3000 | 4000 | ventohighGovLaser |
| `business/mission/VentoHighMissions.smali:591` | VENTOHIGH_DETAUPE | KillEnnemyTypeMissionEngine | ORE_BELT, VENTOHIGH | 1500 | 3500 | callMobileSeller |
| `business/mission/VentoHighMissions.smali:670` | VENTOHIGH_RESCUE | RescueEngine | HUGO_WISDOM, VENTOHIGH | 2500 | 10000 | decentShieldLevel5AntiMissile |
| `business/mission/VentoHighMissions.smali:731` | VENTOHIGH_DESTROY_HUGO | KillEnnemyTypeMissionEngine | HUGO_WISDOM, VENTOHIGH | 2500 | 4300 | — |
| `business/mission/VentoHighMissions.smali:790` | VENTOHIGH_GOTO_SPARTAN | NavigateToCommandCenterMissionEngine | SPARTAN_HQ | 1000 | 5000 | — |

### OmicronPrimeMissions

| Factory source | Mission ID | Objective engine | Referenced sectors | XP | Credit input | Reward items |
|---|---|---|---|---|---|---|
| `business/mission/engine/OmicronPrimeMissions.smali:164` | OMICRON_PRIME_DEFEND_CIVILIANS | DefendCiviliansHighWayMissionEngine | HIGHWAY, OMICRON_PRIME | 9000 | 80000 | — |
| `business/mission/engine/OmicronPrimeMissions.smali:216` | OMICRON_PRIME_DELIVER_LOST_PARADIZE_ENERGY | DeliveryMissionEngine | SOLAR_FIELD, LOST_PARADISE, VENTOHIGH, OMICRON_PRIME | 1500 | 6000 | energyCell |
| `business/mission/engine/OmicronPrimeMissions.smali:678` | OMICRON_PRIME_ESCORT_NIKO_JAIL | EscortCivilMissionEngine | OMICRON_PRIME, ETERNITY | 3000 | 20000 | — |
| `business/mission/engine/OmicronPrimeMissions.smali:764` | OMICRON_PRIME_FIND_SECRET_DEVICE | FindObjectWithSignalMissionEngine | THE_VAULT, OMICRON_PRIME | 4000 | 10000 | — |
| `business/mission/engine/OmicronPrimeMissions.smali:826` | OMICRON_PRIME_FIND_SURVIVORS | FindObjectWithSignalMissionEngine | AERIA_PASSING, OMICRON_PRIME | 5000 | 20000 | — |
| `business/mission/engine/OmicronPrimeMissions.smali:890` | OMICRON_PRIME_GATHER_ALIEN_EGG | GatherElementMissionEngine | DELTA_NODE, OMICRON_PRIME | 1000 | 30000 | goldLootInapp |
| `business/mission/engine/OmicronPrimeMissions.smali:970` | OMICRON_PRIME_GATHER_ALIEN_JELLY | GatherElementMissionEngine | DELTA_NODE, OMICRON_PRIME | 5000 | 10000 | souteIncrease300 |
| `business/mission/engine/OmicronPrimeMissions.smali:1043` | OMICRON_PRIME_GATHER_ALIEN_JELLY2 | GatherElementMissionEngine | DELTA_NODE, OMICRON_PRIME | 5000 | 40000 | souteIncrease300 |
| `business/mission/engine/OmicronPrimeMissions.smali:1121` | OMICRON_PRIME_KILL_ALIEN_MOTHERSHIP | KillEnnemyTypeMissionEngine | THE_HIVE, OMICRON_PRIME | 3000 | 30000 | goldLootInapp |
| `business/mission/engine/OmicronPrimeMissions.smali:1198` | OMICRON_PRIME_KILL_STRAVOS | BountyMissionEngine | THE_VAULT, OMICRON_PRIME | 5000 | 35000 | theVaultTreasureOne |
| `business/mission/engine/OmicronPrimeMissions.smali:1380` | OMICRON_PRIME_SPEED_CONTROL | SpeedControlMissionEngine | HIGHWAY, OMICRON_PRIME | 1000 | 10000 | energyCell |

## Faction story, finale and contracts

CONFIRMED. A story row supplies objective sector, hand-in sector, count, stock minimum level, credit input and item. The mission constructor calls the reward factory with one third of the row credit input and 900 XP per remapped minimum level. Contracts use 4,000 XP. Contract difficulty and location are planned at acceptance. Completion updates standing, hunt or story state, bonus credits and comms. `ModFaction.java:88`, `ModFaction.java:180`, `ModFaction.java:231`, `ModFaction.java:256`, `ModFaction.java:355`, `ModFaction.java:444`, `ModFaction.java:772`.

| Source | Faction / order | Title | Objective and zone → hand-in | Stock min / count | Credit input | Item |
|---|---|---|---|---|---|---|
| `ModFactionData.java:15` | spartan 1 | The Last Ping | FIND_OBJECT HERMES → HERMES | 12 / 0 | 180000 | modRailgunL5 |
| `ModFactionData.java:16` | spartan 2 | Keep the Lane | DEFEND_CIVILIANS THOR_PASSING → THOR_PASSING | 14 / 0 | 300000 | modAutocannonL10 |
| `ModFactionData.java:17` | spartan 3 | Aegis Holds | DEFEND_ZONE THE_WAVE → SPARTAN_HQ | 17 / 90 | 800000 | modArtilleryL15 |
| `ModFactionData.java:18` | reaver 1 | Scrap Tithe | GATHER_AND_SELL CONSTELLATION → PIRATE_BAY | 12 / 0 | 200000 | modAutocannonL5 |
| `ModFactionData.java:19` | reaver 2 | Paid in Red | BOUNTY GREEN_BORDER → GREEN_BORDER | 14 / 0 | 350000 | modBlasterL10 |
| `ModFactionData.java:20` | reaver 3 | Aegis Breaker | KILL_FLAGSHIP SPARTAN_HQ → SPARTAN_HQ | 18 / 0 | 900000 | modArtilleryL15 |
| `ModFactionData.java:21` | kretari 1 | The Stolen Signal | FIND_OBJECT SOLAR_FIELD → SOLAR_FIELD | 12 / 0 | 190000 | modArcProjector |
| `ModFactionData.java:22` | kretari 2 | Harvesters' Debt | KILL_ENEMY_TYPE DELTA_NODE → THE_HIVE | 15 / 5 | 360000 | modDisintegratorL10 |
| `ModFactionData.java:23` | kretari 3 | Nest of Silence | DEFEND_ZONE GREEN_BORDER → THE_HIVE | 18 / 90 | 850000 | modArcProjectorL15 |
| `ModFactionData.java:24` | varn 1 | The Sealed Ledger | DELIVERY THE_VAULT → OMICRON_PRIME | 12 / 0 | 220000 | modDisintegratorL5 |
| `ModFactionData.java:25` | varn 2 | Erase the Relay | DESTROY_STATION GREEN_BORDER → GREEN_BORDER | 15 / 0 | 400000 | modAutocannonL15 |
| `ModFactionData.java:26` | varn 3 | A Price on Warden | KILL_FLAGSHIP HIGHWAY → HIGHWAY | 18 / 0 | 950000 | modRailgunL15 |
| `ModFactionData.java:27` | ironclad 1 | Ore Arbitration | GATHER_AND_SELL HUGO_WISDOM → ORE_BELT | 12 / 0 | 180000 | modRailgunL5 |
| `ModFactionData.java:28` | ironclad 2 | Miners' Passage | DEFEND_CIVILIANS VENTOHIGH → ORE_BELT | 14 / 4 | 320000 | modAutocannonL10 |
| `ModFactionData.java:29` | ironclad 3 | Bastion's Line | DEFEND_ZONE HERMES → ORE_BELT | 17 / 90 | 850000 | modBlasterL15 |
| `ModFactionData.java:30` | helion 1 | Courier's Wake | ESCORT HELIOSTAT → HELIOSTAT | 12 / 0 | 200000 | modBlaster |
| `ModFactionData.java:31` | helion 2 | Passenger Check | SCAN_CIVIL TWIN_STAR → TWIN_STAR | 15 / 4 | 380000 | modRailgunL10 |
| `ModFactionData.java:32` | helion 3 | Forge the Suns | KILL_FLAGSHIP PIRATE_BAY → PIRATE_BAY | 18 / 0 | 1000000 | modRailgunL15 |
| `ModFactionData.java:33` | warden 1 | Roadside Claim | BOUNTY LOST_PARADISE → HIGHWAY | 12 / 0 | 190000 | modArtilleryL5 |
| `ModFactionData.java:34` | warden 2 | Stranded Patrol | RESCUE DELTA_NODE → DELTA_NODE | 15 / 3 | 340000 | modArcProjectorL10 |
| `ModFactionData.java:35` | warden 3 | No Safe Passage | KILL_FLAGSHIP OMICRON_PRIME → OMICRON_PRIME | 18 / 0 | 950000 | modDisintegratorL15 |
| `ModV35.java:858` | kretari 4 | The Last Harvest | KILL_ENEMY_TYPE THE_HIVE → THE_HIVE | 14 / 12 | 900000 | modDisintegratorL15 |
| `ModV35.java:861` | kretari 5 | Silence the Relay | DESTROY_STATION THE_HIVE → THE_HIVE | 15 / 0 | 1200000 | modArcProjectorL15 |
| `ModV35.java:864` | kretari 6 | Harvester Prime | BOUNTY THE_HIVE → THE_HIVE | 16 / 0 | 2000000 | modRailgunL15 |

CONFIRMED. Each HQ offers two daily contracts drawn from its normal or amends pool by standing. Hostile commanders decline contact. Friendly pilots also receive the faction’s renegade hunt subject to its rolling limit. Each row below feeds the common XP, credit and standing paths. `ModFaction.java:97`, `ModFaction.java:273`, `ModFaction.java:299`, `ModV35.java:241`, `ModV35.java:929`.

| Source | Issuer | Contract | Action | Offer pool | Credit input |
|---|---|---|---|---|---|
| `ModRepData.java:40` | spartan | Supply Line | ESCORT | Regular | 110000 |
| `ModRepData.java:41` | spartan | Civilian Shield | DEFEND_CIVILIANS | Regular | 110000 |
| `ModRepData.java:42` | spartan | Hold the Relay | DEFEND_ZONE | Regular | 110000 |
| `ModRepData.java:43` | spartan | Range Scan | SCAN_CIVIL | Regular | 75000 |
| `ModRepData.java:44` | spartan | Raider Bounty | BOUNTY | Regular | 75000 |
| `ModRepData.java:45` | spartan | Shield Plate Return | GATHER_AND_SELL | Regular | 75000 |
| `ModRepData.java:46` | spartan | Evacuation Guard | ESCORT | Amends | 40000 |
| `ModRepData.java:47` | spartan | Search the Wreck | RESCUE | Amends | 40000 |
| `ModRepData.java:48` | reaver | Easy Pickings | BOUNTY | Regular | 75000 |
| `ModRepData.java:49` | reaver | Fence the Salvage | GATHER_AND_SELL | Regular | 75000 |
| `ModRepData.java:50` | reaver | Crew in the Drift | RESCUE | Regular | 75000 |
| `ModRepData.java:51` | reaver | Break the Tail | ESCORT | Regular | 110000 |
| `ModRepData.java:52` | reaver | Burn the Tollhouse | DESTROY_STATION | Regular | 110000 |
| `ModRepData.java:53` | reaver | Find the Ledger | FIND_OBJECT | Regular | 75000 |
| `ModRepData.java:54` | reaver | Miner's Safe Passage | DEFEND_CIVILIANS | Amends | 40000 |
| `ModRepData.java:55` | reaver | Return the Med Crate | FIND_OBJECT | Amends | 40000 |
| `ModRepData.java:56` | kretari | Nest Signal | FIND_OBJECT | Regular | 75000 |
| `ModRepData.java:57` | kretari | Escort the Brood | ESCORT | Regular | 110000 |
| `ModRepData.java:58` | kretari | Nest Perimeter | DEFEND_ZONE | Regular | 110000 |
| `ModRepData.java:59` | kretari | Retrieve the Young | RESCUE | Regular | 75000 |
| `ModRepData.java:60` | kretari | Predator Cull | KILL_ENEMY_TYPE | Regular | 75000 |
| `ModRepData.java:61` | kretari | Silence the Drill | DESTROY_STATION | Regular | 110000 |
| `ModRepData.java:62` | kretari | Return the Young | RESCUE | Amends | 40000 |
| `ModRepData.java:63` | kretari | Quiet the Nest | DEFEND_ZONE | Amends | 40000 |
| `ModRepData.java:64` | varn | Vault Transfer | ESCORT | Regular | 110000 |
| `ModRepData.java:65` | varn | Recover the Account | FIND_OBJECT | Regular | 75000 |
| `ModRepData.java:66` | varn | Cargo Margin | GATHER_AND_SELL | Regular | 75000 |
| `ModRepData.java:67` | varn | Contract Enforcer | BOUNTY | Regular | 75000 |
| `ModRepData.java:68` | varn | Route Audit | SCAN_CIVIL | Regular | 75000 |
| `ModRepData.java:69` | varn | Secure the Dock | DEFEND_ZONE | Regular | 110000 |
| `ModRepData.java:70` | varn | Repaid Losses | GATHER_AND_SELL | Amends | 40000 |
| `ModRepData.java:71` | varn | Claim Escort | ESCORT | Amends | 40000 |
| `ModRepData.java:72` | ironclad | Rig Guard | DEFEND_ZONE | Regular | 110000 |
| `ModRepData.java:73` | ironclad | Evac Escort | ESCORT | Regular | 110000 |
| `ModRepData.java:74` | ironclad | Shift Bounty | BOUNTY | Regular | 75000 |
| `ModRepData.java:75` | ironclad | Scrap Returns | GATHER_AND_SELL | Regular | 75000 |
| `ModRepData.java:76` | ironclad | Missing Tool Crate | FIND_OBJECT | Regular | 75000 |
| `ModRepData.java:77` | ironclad | Protect the Miners | DEFEND_CIVILIANS | Regular | 110000 |
| `ModRepData.java:78` | ironclad | Hold the Shelter | DEFEND_ZONE | Amends | 40000 |
| `ModRepData.java:79` | ironclad | Mine Rescue | RESCUE | Amends | 40000 |
| `ModRepData.java:80` | helion | Courier Window | ESCORT | Regular | 110000 |
| `ModRepData.java:81` | helion | Trade Boost | GATHER_AND_SELL | Regular | 75000 |
| `ModRepData.java:82` | helion | Lane Survey | SCAN_CIVIL | Regular | 75000 |
| `ModRepData.java:83` | helion | Clear the Route | KILL_ENEMY_TYPE | Regular | 75000 |
| `ModRepData.java:84` | helion | Beacon Recovery | FIND_OBJECT | Regular | 75000 |
| `ModRepData.java:85` | helion | Passenger Safety | DEFEND_CIVILIANS | Regular | 110000 |
| `ModRepData.java:86` | helion | Passenger Recovery | RESCUE | Amends | 40000 |
| `ModRepData.java:87` | helion | Restitution Run | ESCORT | Amends | 40000 |
| `ModRepData.java:88` | warden | Beacon Cache | FIND_OBJECT | Regular | 75000 |
| `ModRepData.java:89` | warden | Open-Lane Scan | SCAN_CIVIL | Regular | 75000 |
| `ModRepData.java:90` | warden | Relief Convoy | ESCORT | Regular | 110000 |
| `ModRepData.java:91` | warden | Civilian Screen | DEFEND_CIVILIANS | Regular | 110000 |
| `ModRepData.java:92` | warden | Drifter Bounty | BOUNTY | Regular | 75000 |
| `ModRepData.java:93` | warden | Rescue Kit Trade | GATHER_AND_SELL | Regular | 75000 |
| `ModRepData.java:94` | warden | Beacon Repair | DEFEND_ZONE | Amends | 40000 |
| `ModRepData.java:95` | warden | Stranded Passengers | RESCUE | Amends | 40000 |

CONFIRMED. In addition to the rows above, Spartan, Reaver, Kre’tari, Varn, Ironclad, Helion and Warden each issue **Renegade Hunt**. The player hunts a captain near the issuer’s HQ and receives its core, contract payout and XP. At Monolith form V, Spartan offers **Trial of the Phoenix** (defeat Ashmaw in Hugo Wisdom) or **Tithe of the Phoenix** (bring credits and rare parts to Spartan HQ). Both unlock the Lance. `ModFaction.java:108`, `ModFaction.java:129`, `ModFaction.java:135`, `ModFaction.java:309`, `ModFaction.java:444`, `ModFaction.java:1159`, `ModV35.java:281`.

## Fixed derelict sites

CONFIRMED. Sector entry outside the site cooldown creates two pieces per hull. Closing to scan range reveals the site message. Shooting the last piece after player participation records clearance. Wreck destruction rolls loot through the shared path. `ModDerelict.java:43`, `ModDerelict.java:78`, `ModDerelict.java:159`, `ModDerelict.java:189`, `ModWreck.java:338`, `ModLoot.java:232`.

| Sector | Event | Hulls placed | Source |
|---|---|---|---|
| THOR_PASSING | Halcyon Convoy Remains | 2 × tortoise, 1 × albatros, 1 × orig_player_ship_corvette | `ModV30Data.java:32`, `ModV30Data.java:34`, `ModV30Data.java:45`, `ModV30Data.java:46` |
| HERMES | Aegis Line Skirmish | 2 × hornet, 1 × warlord | `ModV30Data.java:32`, `ModV30Data.java:34`, `ModV30Data.java:45`, `ModV30Data.java:46` |
| GREEN_BORDER | Repeater War | 2 × nightjar, 1 × orig_police, 1 × sovereign | `ModV30Data.java:32`, `ModV30Data.java:34`, `ModV30Data.java:45`, `ModV30Data.java:46` |
| SOLAR_FIELD | Brood-Beacon Theft | 1 × harbinger, 2 × orig_alien_rat0, 1 × sunlance | `ModV30Data.java:32`, `ModV30Data.java:34`, `ModV30Data.java:45`, `ModV30Data.java:46` |
| ORION | Ledger War Graveyard | 2 × sovereign, 1 × imperator, 2 × cobalt | `ModV30Data.java:32`, `ModV30Data.java:34`, `ModV30Data.java:45`, `ModV30Data.java:46` |
| THE_VAULT | The Split Guardian | 1 × orig_croiseur_gentil, 2 × raptor | `ModV30Data.java:32`, `ModV30Data.java:34`, `ModV30Data.java:45`, `ModV30Data.java:46` |
| ORE_BELT | Ore Belt Collapse | 2 × tortoise, 1 × foundry, 1 × bulwark | `ModV30Data.java:32`, `ModV30Data.java:34`, `ModV30Data.java:45`, `ModV30Data.java:46` |
| DELTA_NODE | Stranded Patrol | 2 × nightjar, 1 × orig_police | `ModV30Data.java:32`, `ModV30Data.java:34`, `ModV30Data.java:45`, `ModV30Data.java:46` |
| PIRATE_BAY | Captain's Share | 1 × warlord, 2 × orig_player_ship_hullbreaker, 1 × crimson_throne | `ModV30Data.java:32`, `ModV30Data.java:34`, `ModV30Data.java:45`, `ModV30Data.java:46` |
| HELIOSTAT | Heliostat Calibration Fire | 1 × sunlance, 2 × aurora | `ModV30Data.java:32`, `ModV30Data.java:34`, `ModV30Data.java:45`, `ModV30Data.java:46` |
| THE_HIVE | Abandoned Nursery | 1 × harbinger, 2 × orig_alien_blatte, 2 × orig_alien_rat0 | `ModV30Data.java:32`, `ModV30Data.java:34`, `ModV30Data.java:45`, `ModV30Data.java:46` |
| SPARTAN_HQ | Founders' Escort | 2 × hornet, 1 × sanctum, 1 × orig_player_ship_corvette | `ModV30Data.java:32`, `ModV30Data.java:34`, `ModV30Data.java:45`, `ModV30Data.java:46` |

## Stock sector POIs and ambient events

CONFIRMED. The input is entry into the named sector or its animator tick. The output column lists placement and encounter factories called by that sector’s builder and callback classes. Repeated placements share an entry. The cited level factory composes the sector. Shared placements resolve through `game/levels/builders/LevelBuilderHelper.smali:44`.

| Sector builder and source | Placement and encounter calls |
|---|---|
| `game/levels/builders/AeriaPassLevelBuilder.smali:362` | newPortal, addPortals, newRandomCivil |
| `game/levels/builders/ArenaLevelBuilder.smali:426` | addRandomAsteroids, newPortal, addPortals, addAsteroids, newGoldMessage, newEnnemis |
| `game/levels/builders/ConstellationLevelBuilder.smali:1094` | newRandomSizeAsteroid, addTourelles, newPortal, newFixedTourelle, newTrasnporteur, addPortals, addAsteroids, addEnnemies, newEnnemis |
| `game/levels/builders/DeltaNodeLevelBuilder.smali:340` | addStaticEnnemies, newUfo, newPortal, addPortals, addEnemies, newSunDrawable, newAlienTourelle |
| `game/levels/builders/EternityLevelBuilder.smali:212` | newPortal, newThreeDockStation, addPortals, addPrison |
| `game/levels/builders/GallacticSpeedwayLevelBuilder.smali:515` | newPortal, newThreeDockStation, addPortals, addStation, addSpeedway |
| `game/levels/builders/GenesisLevelBuilder.smali:629` | newPortal, newThreeDockStation, newBasicTradeStation, addPortals, newRandomSizeAsteroid, newMissionStation, getBasicSellnBuyStation, genMiningCorpStation, addCivilActivity |
| `game/levels/builders/GreenBorderLevelBuilder.smali:282` | addRandomAsteroid, addEpaveAlbatros, addStaticEnnemies, newPortal, addPortals, addAsteroids, addEnemies, newEnnemis |
| `game/levels/builders/HeliostatLevelBuilder.smali:584` | newPortal, newSolarPlan, newBasicTradeStation, addPortals, addStation, newSunDrawable, newBasicEnnemisShip |
| `game/levels/builders/HermesLevelBuilder.smali:423` | addRandomMalachite, addRandomAsteroids, addStaticEnnemies, newPortal, newAlbatros, addPortals, addAsteroids, addEnnemies |
| `game/levels/builders/HighwayLevelBuilder.smali:1235` | newRandomCivil, addExistingCivilRightToLeft, addExistingCivilLeftToRight, newPortal, newAlienTradeStation, addPortals, addStation, addOriginalCivilians, newPolice |
| `game/levels/builders/HugoWisdomLevelBuilder.smali:723` | addAsteroidPacksWithCrocpierre, newFixedTourelle, newDefensor, newBasicEnnemisShip, newPortal, newEpaveAlbatros, addPortals, addAsteroids, addEnnemies |
| `game/levels/builders/LostParadiseLevelBuilder.smali:507` | newUfo, newLoot, newPortal, newSolarPlan, addPortals, addStation |
| `game/levels/builders/OmicronPrimeLevelBuilder.smali:1111` | newRandomCivil, newAlienTourelle, newLockedPortal, newPortal, newMissionStation, newThreeDockStation, addPortals, addStation, addCivilians, newPlanetDrawable, newGuardianCivilShip |
| `game/levels/builders/OreBeltLevelBuilder.smali:1211` | newRandomSizeAsteroid, newTaupe, newPortal, newThreeDockStation, newGuardianCivilShip, addPortals, addStation, addAsteroids, addEnnemies, newTrasnporteur |
| `game/levels/builders/OrionLevelBuilder.smali:813` | addRandomAsteroids, addRandomMines, addRandomMalachite, addRandomRuby, newBasicEnnemisShip, newTaupe, newRocketTourelle, newFixedTourelle, newPortal, addPortals, addAsteroids, addEnnemies |
| `game/levels/builders/PirateBayLevelBuilder.smali:2252` | newAlbatros, newFixedTourelle, newMalachiteAsteroid, newRandomSizeAsteroid, addEnnemiesAlpha, addEnnemiesBeta, addEnnemiesTeta, addEnnemisStations, addAlbatrosPatrols, newDefensor, newBasicEnnemisShip, newDestroyablePirateStation, newPortal, newBasicTradeStation, newRubyAsteroid, addPortals, addSations, addAstroidLineWithEnnemies, addTreasures, addEnnemies |
| `game/levels/builders/PlanckPrideLevelBuilder.smali:173` | newBasicEnnemisShip, newPortal, addPortals, newRandomSizeAsteroid, addEnnemies |
| `game/levels/builders/SolarFieldLevelBuilder.smali:1302` | addRandomAsteroids, addRandomMines, addEpaveAlbatros, newAlbatros, newTaupe, newFrelon, newDefensor, newRocketTourelle, newPortal, newSolarPlan, newBasicTradeStation, addPortals, addAsteroids, addEnnemies, addStation, newSunDrawable |
| `game/levels/builders/SpartanHQLevelBuilder.smali:755` | addRandomAsteroids, newGuardianCivilShip, newPortal, newMissionStation, newThreeDockStation, newBasicTradeStation, addPortals, addStations, addAsteroids, addCivils |
| `game/levels/builders/TheHiveLevelBuilder.smali:431` | addAsteroidPacks, newAlienBlatte, generateAlienBlatteSequence, newPortal, addPortals, addEnemies, addAsteroids |
| `game/levels/builders/TheVaultLevelBuilder.smali:796` | addTreasure, newBasicEnnemisShip, newDefensor, newFrelon, newAlbatros, newPortal, newRubyAsteroid, addPortals, addEnemies |
| `game/levels/builders/TheWaveLevelBuilder.smali:674` | addRandomMalachite, newRandomSizeAsteroid, newTaupe, addStaticEnnemies, newFixedTourelle, newPortal, newAlbatros, addPortals, addAsteroids, addEnnemies |
| `game/levels/builders/ThorPassingLevelBuilder.smali:869` | newRandomSizeAsteroid, newFixedTourelle, newBasicEnnemisShip, newDefensor, addPatrollShips, newPortal, addPortals, addAstroids, addEnnemies |
| `game/levels/builders/TutorialLevelBuilder.smali:216` | addRandomAsteroids, newPortal, newThreeDockStation, addPortals, addStations, addAsteroids, newPlanetDrawable |
| `game/levels/builders/TwinStarLevelBuilder.smali:733` | addRandomAsteroid, addEpaveAlbatros, addRandomMalachite, addPirateStation, addTourelles, newDestroyablePirateStation, newPortal, newFixedTourelle, addPortals, addAsteroids, addEnnemies, newSunDrawable, newBasicEnnemisShip, newDefensor |
| `game/levels/builders/VentoHighLevelBuilder.smali:1284` | newBasicTradeStation, newPortal, newThreeDockStation, addPortals, newRandomSizeAsteroid, newMissionStation, addShipYard, addLaserStation, addShieldStation, addMissileStation, addCivilians |

## Sector, mission and reward lifecycles

CONFIRMED. Each row follows its input through the listed entry points to its output. The boss amounts are the raw mission data passed to the common payment path.

| Path | Input | Output | Source |
|---|---|---|---|
| Stock offer, restore and claim | Current sector, level, prerequisites, completion flags or saved ID | Hub list, active engine, XP, scaled credits and reward objects | `business/mission/MissionRepository.smali:113`, `business/mission/MissionRepository.smali:324`, `business/mission/MissionReward.smali:203`, `ModQol.java:227`, `ModV35.java:922` |
| Faction mission lifecycle | Accepted row, entry position, sector change, physics ticks, marked kills, docking or death | Staged encounters and instructions, completion or failure, saved progress and cleanup | `ModFaction.java:535`, `ModFaction.java:772`, `ModFaction.java:822`, `ModFaction.java:955`, `ModFaction.java:1311`, `ModFaction.java:1344`, `ModFaction.java:1355`, `ModFaction.java:1455` |
| Commander hail and debrief | Live pilot near a non-hostile HQ flagship, eligible offers, completion or rank change | Hail opens mission UI in flight, briefing and result messages use the commander portrait, inbox queues notifications | `ModComms.java:94`, `ModComms.java:138`, `ModComms.java:173`, `ModComms.java:268`, `ModNotify.java:39`, `ModFaction.java:444` |
| Combat and mission alerts | Shield crossing zero, low hull in combat, arriving or disengaging enemies, all-clear delay, success or failure | Audio and floating signals, reset on respawn | `ModAlerts.java:28`, `ModAlerts.java:37`, `ModAlerts.java:109` |
| The Matriarch | Ventohigh offer, level 7, Hermes target | 3,000 XP, 25,000 credit input, alienBeamLaserL5 and arwingBoltLaserL5 on first kill | `ModBoss.java:89`, `ModBoss.java:109`, `ModBoss.java:625` |
| Rogue Cruiser | Spartan offer, level 10, Solar Field target | 6,000 XP, 60,000 credit input, megatronBatteryL10 and megatronSalvoL10 on first kill | `ModBoss.java:96`, `ModBoss.java:109`, `ModBoss.java:625` |
| Queen of the Hive | Omicron offer, level 14, Hive target | 12,000 XP, 150,000 credit input, regentBeamLaserL15 and regentHiveBayL15 on first kill | `ModBoss.java:99`, `ModBoss.java:109`, `ModBoss.java:625` |
| Boss claim and repeat | Boss dies, prior completion, boss kind, pilot tier and sector richness | Reward granted and save written at the kill. Accept displays the receipt. Repeats retain XP, credits and bonus rolls. Kind selects core and weapon pools, with extra rare or secret items | `ModBoss.java:117`, `ModBoss.java:625`, `ModClaim.java:19`, `ModLoot.java:265`, `ModV35.java:217` |
| Prologue | First launch or replay, elapsed time and hull threshold | Temporary battle, protected boss, scripted exit, restoration of the normal start/save | `ModIntro.java:15`, `ModPrologue.java:83`, `ModPrologue.java:140`, `ModPrologue.java:189`, `ModPrologue.java:306`, `ModPrologue.java:350` |
| Territory, outpost and faction base | Level ID, gate and station positions, HQ table or per-sector fallback | Trading docks and faction base patrol wing. Galaxy ownership has its own table. Station guns select hostile targets by faction and wanted state | `ModMap.java:116`, `ModSector.java:151`, `ModSector.java:198`, `ModSector.java:218`, `ModSector.java:395`, `ModStationGuns.java:146`, `ModStationGuns.java:197` |
| Station art | Station subtype, name hash, home sector and shipped assets | Alien base art, mining variant, faction base or outpost variant with stock fallback | `ModPoi.java:42`, `ModPoi.java:63`, `ModPoi.java:88` |
| Mining belt and salvage field | Sector seed, visit and time since looting | Asteroids, malachite, ruby, five split hulls, field loot availability after one hour of play | `ModSector.java:254`, `ModSector.java:259`, `ModSector.java:290`, `ModSector.java:325` |
| Persistent wreck and husk | Destroyed ship class, player contribution, boss/flagship, age and visits | Breaking hull, debris, husk or persistent pieces, a shared loot roll and saved piece removal | `ModWreck.java:338`, `ModWreck.java:389`, `ModWreck.java:520`, `ModWreck.java:557`, `ModSector.java:490`, `ModSector.java:531`, `ModSector.java:581` |
| Sector traffic and pirate/alien contacts | Civilian count, time flying, eligible sectors, population and hull level | Refilled trader routes, police patrols, Reaver and Kre’tari fleet encounters. Defend-zone calm suppresses new traffic | `ModSector.java:101`, `ModSector.java:147`, `ModSector.java:348`, `ModSector.java:373`, `ModFleet.java:47`, `ModFleet.java:225`, `ModFaction.java:423` |
| Seven HQ flagships | HQ sector, cooldown and faction | Aegis at Spartan HQ, Bloodforge at Pirate Bay, Brood-Mother at The Hive, Syndicate Crown at Omicron Prime, Bastion at Ore Belt, Sunspire at Heliostat and Warden at Highway. Provocation changes standing. Destruction records respawn. Over 10% player damage triggers standing, core and pursuit logic. Over 30% pays 2M credits and two Siege weapons | `ModCapitals.java:42`, `ModCapitals.java:115`, `ModCapitals.java:173`, `ModCapitals.java:587`, `ModRep.java:170`, `ModV35.java:310` |
| Pursuit | Flagship kill, elapsed play time and wave number | Three timed retaliation waves from that faction | `ModRep.java:175`, `ModSector.java:430`, `ModSector.java:441`, `ModSector.java:463` |
| Police engagement, wave and titan | Civilian/police offence, heat, elapsed time, last wave, sector top, active cap and owner | Escalating elite police, owner weapons, cooldown/return/stand-down, possible titan lockdown. Standard police pay flat credits. Titan death ends lockdown, pays its bounty and clears heat | `ModPolice.java:39`, `ModPolice.java:98`, `ModPolice.java:256`, `ModPolice.java:305`, `ModPolice.java:455`, `ModPolice.java:562`, `ModPoliceTitan.java:122`, `ModPoliceTitan.java:156`, `ModQol.java:250` |
| Rank and sector defence | Civilian hit, hostile NPC kill in HQ, flagship provocation/destruction or mission standing | Clamped reputation, optional ally/enemy spill, rank messages, hostility/fire support, payout bonus, Trusted weapon stock and Honored hull availability | `ModRep.java:89`, `ModRep.java:107`, `ModRep.java:117`, `ModRep.java:170`, `ModRep.java:182`, `ModRep.java:191`, `ModRep.java:222`, `ModRep.java:334`, `ModShips.java:699` |
| Ordinary, elite and boss kill income | Enemy level and XP, credited XP, elite and boss classification | Scaled credits, possible rare salvage with one part, boss or elite parts. Skill drones are excluded | `ModQol.java:250`, `ModV34.java:127`, `ModV34.java:136`, `ModV35.java:327` |
| Gear, family and wreck drops | Enemy class, level, elite, sector, pilot tier, hull group and wreck kind | Stock rarity pool, faction-family roll, weapon roll or hold item. Wreck pieces share one roll. Boss bonus uses its own table | `ModLoot.java:49`, `ModLoot.java:91`, `ModLoot.java:111`, `ModLoot.java:143`, `ModLoot.java:162`, `ModLoot.java:192`, `ModLoot.java:232`, `ModLoot.java:265` |
| Progression rewards | Story chain completion, renegade kill, rival flagship, boss kind or Phoenix trial/tithe | Pilot story bonus, faction cores, Lance unlock or access to its later marks | `ModFaction.java:444`, `ModV34.java:244`, `ModV35.java:217`, `ModV35.java:281`, `ModV35.java:310`, `ModLance.java:151` |
| Co-op and duel | Host-credited NPC kill, partner present, or PvP round reaches its hull floor | Guest rolls local drops and receives synced XP. Duel records round result and respawns | `ModLan.java:1119`, `ModLan.java:1155`, `ModLan.java:2128`, `ModLan.java:2508`, `ModLan.java:2640` |
| Arena, speedway and traffic enforcement | Arena wave conditions, race-course layout, speed-control encounter | Arena spawns and credit award, physical speedway gates, separate speed-control mission payout | `game/levels/arena/ArenaLevelRepository.smali:47`, `game/levels/builders/ArenaLevelBuilder$1.smali:802`, `game/levels/builders/GallacticSpeedwayLevelBuilder.smali:112`, `business/mission/engine/SpeedControlMissionEngine.smali:504` |
| Stock loot, trade, gifts and purchased currency | Loot pickup, saleable cargo, redeemed gift or consumed purchase | Stock inventory, trade proceeds, gift content or purchased credit balance | `business/loot/LootElement.smali:985`, `business/player/Inventory.smali:1906`, `business/gifts/GiftInstance.smali:346`, `SpaceCorsairApplication.smali:115` |
| Achievements and special grants | Exploration, equipped set, level, combat, mission completion, retired industrial hull or test profile | Achievement unlock/stat tracking, industrial refund, or isolated test inventory. Existing dev grant follows its own entry point | `game/achievements/AchievementEventListener.smali:84`, `game/achievements/AchievementEventListener.smali:296`, `game/achievements/AchievementEventListener.smali:868`, `game/achievements/AchievementEventListener.smali:958`, `ModV34.java:76`, `ModTestMode.java:236`, `ModDev.java:476` |

## Additional live paths on the PR target

CONFIRMED. The requested inventory baseline is `a02248c`. The following paths also exist on the PR target, `49a9b87`. Citations to ModEvents in this table use the integrated file in this PR.

| Encounter | Input | Output | Source |
|---|---|---|---|
| Distress | Scheduled open-sector event, sector law, approaching the victim and defeating raiders | Trader or police cruiser saved for mission-scaled credits and standing, or loss, timeout or raider departure | `ModEvents.java:127`, `ModEvents.java:162`, `ModEvents.java:239` |
| Wanted bounty | Scheduled encounter, named elite, target life and elapsed time | Kill earns scaled credits, surviving target jumps away | `ModEvents.java:199`, `ModEvents.java:223`, `ModEvents.java:283` |
| Salvage race | Available wreck field, player distance, rival progress and time limit | First arrival doubles field loot for the visit, losing strips the field | `ModEvents.java:225`, `ModEvents.java:300`, `ModLoot.java:241`, `ModLoot.java:248` |
| Pirate-haven hunt | Lawless sector and per-visit chance | A police ship fights a Reaver pack, alongside reduced trader traffic | `ModSector.java:67`, `ModSector.java:89`, `ModSector.java:169`, `ModSector.java:445` |
| Kill chain | Qualifying consecutive bounty kills within the chain window | Capped bounty multiplier and HUD feedback | `ModChain.java:23`, `ModChain.java:28` |
| Stock mission ship scaling | Stock level, active mission type and displayed level | NPC spawn level capped relative to the mission for eligible engines | `ModMissionSpawn.java:29`, `ModMissionSpawn.java:40` |
