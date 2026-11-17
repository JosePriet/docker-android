# Space Corsair enemy and ally combat stats (approx.)

Code: sc-mod-workspace eab8838 (v43a-14). Date 2026-11-14.
Source tags: **[C]** computed from code (calculator `space-corsair/enemy-stats-tool/EnemyCalc.java`, which calls the mod's own ModV34/ModPolice/ModCapitals functions on the stock spec tables; raw output `enemy-stats-tool/out.txt`). **[M]** measured on the emulator (`v43a-dmgtest/RESULTS.md`, runs 112/113).

Cell format: **DPS / hull / shield**. k = thousand.
- DPS = main guns only (bursts counted: turret ships 3 shots with 300 ms gaps (210 ms on elite gunships), Taupe 6, Frelon-type 3, patrol cruiser 2-4 by level), every shot hitting, averaged over the random tech tier, times the pilot-stat factor against a player of the same level with no storyline bonus (x1.00 at L10 up to x1.20 at L40 for normal enemies, x1.15 to x1.35 for elites). Missiles, skills and misses are not in it unless a row says so.
- Faction counters, family resist, police armour, anchor wall and the player's shield are NOT applied in the cells. They are in the resistance section.
- Level = the enemy's own level. Sector bands (v34 scale): Planck Pride 0-2, Thor Passing 1-3, Ore Belt / Constellation / Twin Star 4-7, Pirate Bay 7-16, Heliostat / Hugo Wisdom 10-13, Hermes 10-16, Spartan HQ 16, The Wave 16-19, Solar Field 19-28, Orion 22-28, Highway 22-37, Aeria Passing 22-37, Omicron Prime 22-34, Eternity 25-28, Lost Paradise 25-31, The Vault / Green Border 28-31, Delta Node 31, The Hive 34-40.

## 1. Stock pirates and aliens [C]
| Enemy | Found (sectors) | L10 | L20 | L30 | L40 |
|---|---|---|---|---|---|
| Basic pirate (frigate) | Planck Pride, Thor Passing, Constellation, Twin Star, Heliostat, Hugo Wisdom, Hermes, Pirate Bay, The Wave, Orion, The Vault | 115 / 360 / 0 | 268 / 736 / 0 | 739 / 1.4k / 0 | 1.8k / 2.8k / 0 |
| elite | same | 337 / 6.0k / 0 | 783 / 12k / 0 | 1.9k / 24k / 0 | 4.3k / 47k / 0 |
| Taupe (frigate) | Ore Belt, Hermes, The Wave, Orion, Solar Field | 72 / 360 / 0 | 166 / 736 / 0 | 443 / 1.4k / 0 | 1.1k / 2.8k / 0 |
| elite | same | 269 / 4.5k / 0 | 618 / 9.2k / 0 | 1.5k / 18k / 0 | 3.3k / 36k / 0 |
| Defensor (destroyer) | Thor Passing, Constellation, Twin Star, Hugo Wisdom, Hermes, Pirate Bay, Solar Field, The Vault | 55 / 600 / 0 | 68 / 1.2k / 0 | 72 / 2.4k / 0 | 77 / 4.7k / 0 |
| elite | same | 68 / 7.2k / 0 | 84 / 15k / 0 | 89 / 29k / 0 | 94 / 57k / 0 |
| Alien Rat (destroyer) | Green Border, Delta Node, alien random spawns | 69 / 600 / 0 | 268 / 1.6k / 0 | 734 / 3.2k / 0 | 1.8k / 6.2k / 0 |
| elite | same | 777 / 7.2k / 0 | 3.0k / 19k / 0 | 7.3k / 38k / 0 | 17k / 75k / 0 |
| UFO (cruiser, beam) | Lost Paradise, Green Border, Delta Node | 100 / 960 / 0 | 171 / 2.6k / 0 | 181 / 5.1k / 0 | 192 / 10k / 0 |
| elite | same | 115 / 9.9k / 2.1k | 195 / 27k / 3.0k | 205 / 52k / 5.9k | 216 / 103k / 12k |
| Frelon (battlecruiser) | The Wave, Solar Field, The Vault | 67 / 1.3k / 944 | 231 / 3.5k / 2.6k | 621 / 7.0k / 5.8k | 1.5k / 14k / 12k |
| elite | same | 270 / 14k / 2.2k | 921 / 36k / 5.9k | 2.2k / 71k / 13k | 4.9k / 140k / 26k |
| Albatros (battleship) | Hermes, Pirate Bay, The Wave, Solar Field, The Vault | 145 / 1.8k / 2.6k | 222 / 4.8k / 3.6k | 235 / 9.5k / 7.0k | 249 / 19k / 14k |
| elite | same | 167 / 23k / 3.6k | 253 / 60k / 5.0k | 267 / 119k / 9.9k | 280 / 234k / 20k |
| Alien Blatte (capital) | The Hive | 181 / 3.0k / 3.6k | 698 / 8.1k / 5.0k | 1.9k / 16k / 9.9k | 4.7k / 31k / 20k |
| elite | same | 2.0k / 48k / 5.2k | 7.9k / 129k / 7.3k | 19k / 254k / 14k | 43k / 499k / 28k |
| Fixed turret | Thor Passing, Constellation, Twin Star, Hugo Wisdom, Pirate Bay, The Wave, Orion, Green Border | 85 / 1.1k / 0 | 280 / 2.2k / 0 | 770 / 4.4k / 0 | 1.9k / 8.7k / 0 |
| Alien turret | Delta Node, Omicron Prime | 65 / 1.4k / 0 | 299 / 3.2k / 0 | 827 / 6.3k / 0 | 2.0k / 12k / 0 |

Bosses: x15 hull, x2 damage, tier 4, +300 pilot stat over the base ship, then per-boss overrides (ModBoss); not tabulated.

## 2. Reaver and Kre'tari fleets (ModFleet: patrols, faction wings, pursuers) [C]
First level each type can spawn in brackets. Reaver fleets anywhere from L2; Kre'tari only in sectors starting at L22+ (60% of groups). Kre'tari Mothership 8% of groups from L34.
| Ship | L10 | L20 | L30 | L40 | L40 elite |
|---|---|---|---|---|---|
| Reaver Raider [L2] | 127 / 450 / 0 | 296 / 842 / 0 | 812 / 1.7k / 0 | 2.0k / 3.3k / 0 | 4.8k / 33k / 0 |
| Reaver Gunship [L3] | 138 / 563 / 0 | 322 / 1.1k / 0 | 883 / 2.1k / 0 | 2.2k / 4.1k / 0 | 5.2k / 41k / 0 |
| Reaver Hunter [L7] | 45 / 732 / 944 | 156 / 2.0k / 2.6k | 421 / 3.8k / 5.8k | 1.0k / 7.6k / 12k | 3.3k / 57k / 26k |
| Reaver Marauder [L10] | 55 / 1.2k / 0 | 68 / 2.2k / 0 | 72 / 4.4k / 0 | 77 / 8.7k / 0 | 94 / 65k / 0 |
| Reaver Corsair [L13] | - | 187 / 2.3k / 2.6k | 500 / 4.5k / 5.8k | 1.2k / 8.8k / 12k | 4.0k / 66k / 26k |
| Reaver Lancer [L16] | - | 68 / 2.5k / 0 | 72 / 5.0k / 0 | 77 / 9.8k / 0 | 94 / 73k / 0 |
| Reaver Warlord [L22] | - | - | 235 / 7.0k / 5.9k | 249 / 14k / 12k | 280 / 103k / 12k |
| Reaver Dreadnought [L28] | - | - | 235 / 9.5k / 7.0k | 249 / 19k / 14k | 280 / 140k / 14k |
| Kre'tari Scout [L22] | - | - | 614 / 1.8k / 0 | 1.5k / 3.5k / 0 | 14k / 26k / 0 |
| Kre'tari Bomber [L22] | - | - | 862 / 2.3k / 0 | 2.1k / 4.6k / 0 | 19k / 34k / 0 |
| Kre'tari Frigate [L22] (beam) | - | - | 181 / 5.9k / 0 | 192 / 12k / 0 | 216 / 87k / 0 |
| Kre'tari Destroyer [L25] (beam) | - | - | 181 / 7.3k / 0 | 192 / 14k / 0 | 216 / 107k / 0 |
| Kre'tari Cruiser [L28] | - | - | 673 / 8.0k / 5.8k | 1.6k / 16k / 12k | 5.4k / 118k / 26k |
| Kre'tari Heavy Cruiser [L31] | - | - | - | 1.8k / 20k / 12k | 5.8k / 151k / 26k |
| Kre'tari Battlecruiser [L31] | - | - | - | 249 / 191k / 12k | 280 / 1,433k / 12k |
| Kre'tari Battleship [L34] | - | - | - | 249 / 263k / 14k | 280 / 1,970k / 14k |
| Kre'tari Mothership [L37] | - | - | - | 5.6k / 107k / 20k | 52k / 1,066k / 20k |

## 3. Police [C]
Waves: one class bigger each wave (frigate up to capital, then a titan if the sector top is L16+), max 8 ships, level = sector top. All built police are elite. Shots: sector owner's faction family. Police tech: destroyer snare (-35% speed 3 s), cruiser/BC hits drain 1.5x from your shield and stop regen 3 s, BS/capital alternate pin (-80% speed 2.5 s) and drain.
| Police class (AI) | L10 | L20 | L30 | L40 | Missiles (extra DPS, L40) |
|---|---|---|---|---|---|
| Frigate (fighter) | 419 / 4.5k / 0 | 981 / 9.2k / 0 | 2.4k / 18k / 0 | 5.4k / 36k / 0 | +432 (every 5 s) |
| Destroyer (gunship) | 68 / 5.6k / 0 | 84 / 12k / 0 | 89 / 23k / 0 | 94 / 45k / 0 | - |
| Cruiser (raider) | 284 / 9.0k / 2.2k | 959 / 24k / 5.9k | 2.3k / 48k / 13k | 5.2k / 94k / 26k | - |
| Battlecruiser (raider) | 339 / 12k / 2.7k | 1.1k / 33k / 7.4k | 2.8k / 65k / 16k | 6.2k / 129k / 33k | - |
| Battleship (cruiser AI) | 210 / 17k / 3.2k | 316 / 45k / 4.5k | 333 / 89k / 8.8k | 350 / 176k / 17k | +946 (every 8 s) |
| Capital (cruiser AI) | 210 / 28k / 4.5k | 316 / 76k / 6.3k | 333 / 149k / 12k | 350 / 293k / 24k | +1,366 (every 8 s) |
| Stock sector patrol (PoliceShip) | 53 / 800 / 0 | 153 / 1.2k / 0 | 163 / 1.2k / 0 | 172 / 1.2k / 0 | - |

### Police titans and flagships [C]
Level = max(sector top, player level + 2), capped at 40. Flagships: battery damage x3 (v43a-6). Police titan: every stat x1.2 over its faction's flagship, so battery damage 3.6x and fire rate x1.2 (4.3x the pre-v43a-6 DPS), plus overshield = 40% of hull (regen after 20 s without damage, refills in 6 s). "+Nd" = Aegis rail drones (avg 3.5 drones, 2-5, each 2% of the carrier's hull; wing respawns 10 s after any loss). Flagship found in its HQ: Aegis Spartan HQ (16), Bloodforge Pirate Bay (7-16), Brood-Mother The Hive (34-40), Syndicate Crown Omicron Prime (22-34), IMS Bastion Ore Belt (4-7), Sunspire Heliostat (10-13), FAV Warden Highway (22-37); always at least player +2.
| Ship | L20 | L30 | L40 |
|---|---|---|---|
| SRS Aegis | 7.7k +2.4kd / 880k / 12k | 16k +5.0kd / 1,120k / 23k | 34k +10kd / 1,360k / 45k |
| Spartan police titan | 11k +2.9kd / 1,056k +422k os / 14k | 23k +6.0kd / 1,344k +538k os / 27k | 48k +12kd / 1,632k +653k os / 54k |
| Bloodforge | 9.1k / 1,650k / 2.9k | 19k / 2,100k / 5.7k | 40k / 2,550k / 11k |
| Reaver police titan | 13k +2.9kd / 1,980k +792k os / 3.5k | 27k +6.0kd / 2,520k +1,008k os / 6.9k | 57k +12kd / 3,060k +1,224k os / 13k |
| Brood-Mother | 11k / 1,210k / 6.5k | 23k / 1,540k / 13k | 48k / 1,870k / 25k |
| Kre'tari High Council titan | 16k +2.9kd / 1,452k +581k os / 7.8k | 33k +6.0kd / 1,848k +739k os / 15k | 69k +12kd / 2,244k +898k os / 30k |
| Syndicate Crown | 7.8k / 770k / 5.1k | 16k / 980k / 10k | 34k / 1,190k / 20k |
| Varn police titan | 11k +2.9kd / 924k +370k os / 6.1k | 23k +6.0kd / 1,176k +470k os / 12k | 49k +12kd / 1,428k +571k os / 24k |
| IMS Bastion | 7.9k / 1,320k / 7.3k | 16k / 1,680k / 14k | 34k / 2,040k / 28k |
| Ironclad police titan | 11k +2.9kd / 1,584k +634k os / 8.7k | 24k +6.0kd / 2,016k +806k os / 17k | 49k +12kd / 2,448k +979k os / 34k |
| Sunspire | 8.3k / 825k / 5.8k | 17k / 1,050k / 11k | 36k / 1,275k / 22k |
| Helion police titan | 12k +2.9kd / 990k +396k os / 7.0k | 25k +6.0kd / 1,260k +504k os / 14k | 52k +12kd / 1,530k +612k os / 27k |
| FAV Warden | 8.1k / 1,100k / 7.3k | 17k / 1,400k / 14k | 35k / 1,700k / 28k |
| Warden police titan | 12k +2.9kd / 1,320k +528k os / 8.7k | 24k +6.0kd / 1,680k +672k os / 17k | 50k +12kd / 2,040k +816k os / 34k |

Shield regen per second at L40: Aegis 1.5k, Bloodforge 374, Brood-Mother 843, Crown 655, Bastion/Warden 936, Sunspire 749 (police titans x1.2). Kill missions use a 40% hull flagship.
Skills (not in DPS, % of YOUR max hull, not scaled by the 3x): Reaver ram 10% + burn trail 2%/s, Ironclad strike 12%, Helion lance 25%/s while in the beam + supernova 18%, Warden snipe 15%. Police titans add lockdown (speed x0.5, jump jammed, 6 s every 25 s) and shield break (60% of your current shield, every 18 s).

### Measured on the emulator [M] (player L40 maxed Leviathan, hull 446,656, standing still with anchor wall unless noted)
Effective DPS landed = hull lost x 446,656 / time (gross drops, shield and regen ignored).
| Target (L40-42) | Result | Effective DPS on you |
|---|---|---|
| SRS Aegis | you die in 38 s | ~11.6k |
| Bloodforge | you win, 102 s | ~215 |
| IMS Bastion | you win, 83 s | ~4.7k |
| Brood-Mother | you win, 63 s | ~560 |
| Sunspire | you win, 98 s | ~2.3k |
| FAV Warden | you die in 112 s | ~3.5k |
| Syndicate Crown | you win, 54 s | ~1.1k |
| Police titans (all 7) | you die in 33-58 s (best shield + dodging: 12-56 s) | ~7.7k-13.5k |
| Warlord (143,568 hull) vs 6 targets | dead in 5 of 6, 14-72 s | ~2k-10k |

Computed vs measured: the computed battery DPS is the ceiling (every barrel in range and on target). Measured is 3x to 180x lower for flagships: mounts out of range or not facing you, travel time and spread, the wall's x0.65, counters. Bloodforge and Brood-Mother land almost nothing (autocannon flak at 2,400 range, wide spread). Police titans land the most because of x1.44 DPS, drones, overshield time and the 30% cut on your return fire.

## 4. Structures [C]
Station turrets (stations with GPT poi art only): per turret DPS = same-level destroyer DPS x1.5 (outposts, mining) or x2.5 (faction bases), level = sector top, faction battery family. Bases 4 turrets, outposts 3-4, mining 2. Hostile to you only while police heat > 0.
| Sector top | L7 | L13 | L16 | L28 | L31 | L34 | L37 | L40 |
|---|---|---|---|---|---|---|---|---|
| Outpost turret | 143 | 239 | 321 | 964 | 1.2k | 1.4k | 1.8k | 2.2k |
| Base turret | 238 | 399 | 535 | 1.6k | 2.0k | 2.4k | 3.0k | 3.6k |
A full faction base at L40 = ~14.5k DPS.

## 5. Allies [C]
- Friendly faction wings / patrols: same ships as the tables. Reaver and Kre'tari wings are ModFleet ships (section 2) at the sector's mid level; every other faction's wing is a stock PoliceShip patrol cruiser in faction colours (section 3 last row: ~170 DPS, 1.2k hull at any level, no level curve).
- Your Hive Bay drones (2: one UFO, one Rat, at your level, 15-25 s life by bay tier): stock enemy stats at your level, then x(1 + 0.15 per level above 20) hull and damage, then x0.7-1.2 bay tier, x1.25 Defense mode (x0.85 Attack), x1.3 on carrier hulls. Approx with a tier-2 bay in Defense: L20 UFO beam ~200 DPS / 2.6k hull, Rat ~315 / 1.6k; L40 UFO beam ~800 / 40k, Rat ~7.5k / 25k. The x4 at L40 stacks on the v34 level curve (the UFO beam skips the curve, see finding 6).
- Station turrets of allied or own factions shoot your enemies (section 4).
- Police are neutral until you raise heat.

## 6. Resistances and damage modifiers (current code)
Order of a hit on any target: anchor-wall beam check, pilot formula x faction counter x family resist (ModV34.damage), kill-time wheel (normal enemies only), boss/flagship kits, police armour, police titan overshield, big-ship shield, then hull.
- Pilot formula: x(1 + max(0, ATK - 0.75 DEF)/1000), DEF cuts up to 30% only when it leads ATK by 250+. Stats 0 below L10, 800 at L40, elite +150, boss/flagship-skill +300; you get up to +200 from storylines. You dodge elites/bosses/flagships with (your REA - theirs)/2000, max 25%.
- Faction counter wheel: attacker that counters the defender deals x1.3, the countered side deals x0.8. Spartan counters Reaver, Kre'tari; Ironclad counters Reaver, Kre'tari; Reaver counters Helion, Warden; Kre'tari counters Varn, Warden; Warden counters Varn, Helion; Helion counters Spartan, Ironclad; Varn counters Spartan, Ironclad.
- Family resist (x0.8 taken) / weak (x1.2 taken), by defender faction: Spartan resists Blaster, weak to Arc. Reaver resists Autocannon, weak to Rail. Kre'tari resists Arc, weak to Blaster. Varn resists Disintegrator, weak to Artillery. Ironclad resists Artillery, weak to Disintegrator. Helion resists Rail, weak to Autocannon. Warden resists Autocannon, weak to Blaster. Counter x resist clamped to x0.5-x2.0. Today only flagship, station and police shots carry a family; fleet and wing shots are stock lasers (no family).
- Kill-time wheel (normal enemies only, your hits): x2.5 when your faction counters theirs, x0.5 when theirs counters yours.
- Police: neutral (no counter, no family resist either way). Built police and stock patrols take 25% less damage, police titans 30% less. Your own weapon-fit penalty still applies.
- Your weapon fit (player only): faction hull with another family x0.6 damage and -40% fire rate and shot speed; neutral hull with a family weapon x0.85; Spartan hull +10% rail.
- Flagship kits (also on that faction's police titan): Aegis frontal wall (hits within 50 deg of the bow x0.1); Bastion 4 armour plates of 3% hull each soak 70% of every hit until shot off; Varn cloak halves your hits while active.
- Big-ship shields (battlecruiser and up, flagships, police titans): absorb before hull, regen always on, 15% slower for 3 s after your hit.
- Leviathan anchor wall (yours): planted wall takes x0.65 of incoming damage (x0.5 during doomsday), with the pilot formula and counters, no dodge; police shots neutral there too.
- Doomsday vs titans/bosses/capitals/flagships: per-shot cap of target hull (alien titan 15%/20%, Spartan 10%/15%, other titans 7%/10%); else 100k/s minus resists.

## 7. Findings from the calculation
1. Battleship-class enemies (Albatros, Reaver Warlord/Dreadnought, Kre'tari Battlecruiser/Battleship, police battleships and capitals) and destroyer gunships (Defensor, Reaver Marauder/Lancer, police destroyers) fire through EnnemisCanon turrets, which use the raw stock damage. The v34 level curve, the class split, tiers and elite damage multiply bulletDamage, which these turrets never read. Result: at L40 they deal 77-350 DPS while a Basic pirate frigate deals 1.8k. Only the police x1.25 is applied to Albatros-type turrets. Police BS/capital missiles do scale (they use bulletDamage).
2. Kre'tari Battlecruiser and Battleship still use the raw stock Albatros hull x curve (191k / 263k at L40; elite 1.4M / 2.0M). v43a-3 fixed this only for the Reaver Warlord/Dreadnought.
3. Stock elites stack the game's own elite factors (hull x3-4, damage x1.3-3, reload x0.6-0.8) on top of the mod's (hull x2.5, damage x1.5, +1 tier). Alien elites are extreme: elite Rat 17k DPS, elite Blatte 43k DPS / 499k hull, elite Kre'tari Mothership 52k DPS / 1.07M hull at L40.
4. Stock patrol cruisers and non-Reaver/Kre'tari faction wings have no level scaling (1.2k hull, ~170 DPS at L40).
5. Hive Bay drones get the v34 curve and then the old x(1+0.15/level above 20) on top (x4 at L40).
6. UFO-type beams (UFO, Kre'tari Frigate/Destroyer, the UFO Hive drone) copy their damage from the raw stock row before the level hook, so beams stay at ~190-220 DPS at L40 even as elites.
These are reported, not changed.

## 8. v43a-15 effects (merged into sc-mod-workspace 2026-11-14 17:46 UTC, after this table was computed on eab8838)
Base hit damage and range in the tables stay. What changes:
- Reaver/Kre'tari fleets, other factions' wings, patrols and pursuers fire their faction's family, so the family resist/weak table applies to their shots on you: x0.8 or x1.2 by your hull's faction (combined with the counter wheel they already had). Pirates and stock aliens stay stock.
- Signatures: Reaver autocannon shots burst near you into 5 bits at 25% each (up to x1.25 per shot if all hit). Kre'tari spines home slightly and add acid 10% of the hit per second for 2 s (x1.2 per hit). Helion blaster hits x1.5 while your shield is up, x0.7 when it is down. Warden arc pauses your shield regen 2 s and jumps to a drone at 60%. Spartan rails are held 600 ms with an aim line (easier to dodge). Varn bolts grow and redden (visual ramp). Ironclad battleship+ artillery gets a red impact ring (telegraph only).
- Enemy Artillery/Disintegrator/Arc impacts now run the existing splash and ramp effects for all faction ships.
- Police and station shots also go through the new signatures (Helion x1.5/x0.7, Reaver burst, acid, Warden arc). Police stay neutral only for the counter wheel and family resist.
- Flagships: only a sound pitch change.
- The new splash/ramp impacts can add some damage, so "base numbers unchanged" holds for the direct hit only.

## Verification
Verifier 1 (code + bytecode): spot checks matched; findings 7.1-7.5 confirmed. Corrected after it: turret burst gaps, Taupe/Frelon bursts, patrol rafale by level, raw-row UFO beams, Warlord/Dreadnought shields, police titan kits, v43a-15 police/station signatures.
Cross-check (verifier 2): agrees with all 7 corrections from bytecode/smali; burst cycle = reload counted from the last shot; Taupe L40, Albatros L40, UFO L40, patrol L40 recomputed and match. Note: v43a-15 skips the Ironclad ring and shot sound for station guns.
