# Space Corsair combat balance report (proposal only, nothing applied)
2026-11-17. Sources: GPT simulator PR #1 (JosePriet/docker-android, tools/balance_sim, commit 90acce6, unmerged), emulator per-second logs runs 112/113 (space-corsair/v43a-dmgtest/*.txt), mod code sc-mod-workspace f9f0a7b.

## 1. Is the GPT simulator right?
Checked against code/smali, correct:
- Player gun pipeline: stock `PlayerShip.applySoloGear` copies laser damage (230 for modRailgunL15) to each turret; `PlayerCanon.requestShoot` fires a pair per reload (tirGroupe); ModShips hull dmg 1.25, ModTitan 2.5x dmg / 1.55x reload, Spartan rail +10%. Sim shot 788.7, reload 1.94 s, 6 turrets at stage 5: matches.
- Enemy side: 732 values match EnemyCalc (that is the input table, so it proves loading, not formulas). Capital hull/overshield recomputed independently: pass.

Wrong (in the validator, not the core model):
- **Offense gap = missiles were switched off.** The validator ran "rails only, no missiles"; the emulator harness never unequipped missiles. With the default missile (percuteurMissileModLevel14) the sim gives Bloodforge 100 s (emulator 102 s), Sunspire 97 s (98 s), Crown 96 s (54 s), IMS Bastion 143 s (83 s). The ">25% in 28/28" headline is mostly this config error. Emulator logs confirm: damage lands in ~98k bursts every ~2 s, far above the 9.5k rail salvo.
- **Incoming gap = the sim assumes every enemy shot hits.** From the logs, the share of all-hit DPS that actually landed on a still L40 Leviathan:

| Target | Landed hull loss | All-hit model | Landed share |
|---|---|---|---|
| Reaver Bloodforge | 0.05 %/s | 6.9 %/s | ~1% (it drifted to 4,075 range) |
| Kre'tari | 0.13 %/s | ~7.8 %/s | ~2% |
| Varn Crown | 0.25 %/s | 15.9 %/s | ~2% |
| Helion Sunspire | 0.51 %/s | 8.1 %/s | ~6% |
| FAV Warden | 0.79 %/s | 8.9 %/s | ~9% |
| IMS Bastion | 1.05 %/s | 7.4 %/s | ~14% |
| SRS Aegis (drones) | 2.55 %/s | 9.6 %/s | ~26% |
| Police titans (7) | 1.6-3.0 %/s | 14-20 %/s | ~10-19% |

Fix for the tool (no game change): validator keeps the fitted missile; add a per-enemy hit-share input taken from this table. Until then use the sim for relative comparisons and normal/elite fights, not flagship/titan survival times.

## 2. Answers to the open owner questions

### Q1 Kill-time target for normal enemies (3-4 s vs ~10 s)
Sim, matched level, best same-level gear incl. missiles, all hits (offense is close to the emulator once missiles count):

| Level | Normal enemies, median kill | Elites, median kill |
|---|---|---|
| L10 | 0-0.3 s every hull | 0.5-2.8 s |
| L20 | 0-0.8 s | 0-7 s |
| L30 | 0-1.7 s | 1.3-15 s (frigate 15) |
| L40 | 0-1.9 s, frigate Viper 4 s | titan 3-4 s, cruiser-BS 10-17 s, frigate 31 s |

Normal enemies already die in under 2 s for every hull above frigate, at every level. A ~10 s normal would need ~5-10x normal hull: not recommended. **Recommendation: 3-4 s target for normals = keep current numbers; ~10 s already holds for L40 elites vs cruiser-battleship hulls.** If normals feel too fast at L10-20, raise normal hull x2 at L10-20 only (gives ~0.5-1.5 s), not more.

### Q2 Is 3x flagship damage enough?
The multiplier is not the problem; engagement is. Landed damage differs 50x between flagships (table above). Three flagships (Reaver, Kre'tari, Varn) cost a maxed titan under 14% hull because they leave gun range or close/ram without firing; Aegis and Warden kill it.
**Recommendation: keep 3x.** Instead:
- Flagship AI: hold range inside its own battery range (Reaver went 4-4,075, Warden 51-5,030). Expected landed share ~10-15% like Bastion, i.e. 40-80% hull lost per duel.
- SRS Aegis: landed incoming x0.25 (target ~0.6 %/s, so a maxed titan survives its ~90 s kill time with ~45% hull). Drones are the likely cause (only flagship with drones, highest landed share): proposal 2-3 drones instead of 2-5. Needs a re-measure.
- FAV Warden: x0.55 landed (it killed the titan at 112 s with Warden on 11%). Small: battery damage x0.8 or regen pause shorter.

### Q3 Police titans kill a maxed L40 Leviathan in 23-58 s
In 4 of 7 runs the player dealt ~0 hull: 30% armour + 40% overshield + shield, and the overshield refills after 20 s quiet. Effective HP 2-4.9M vs ~25k landed player DPS = 130-200 s to kill; they kill in ~40 s.
Two options (owner picks):
- **A (recommended, keeps them a "flee" threat):** police titan damage 3.6x -> 1.6x. Survival 33-58 s -> ~75-130 s, enough to warp out. No kill expected.
- **B (winnable by a maxed titan):** A plus overshield 40% -> 15% and titan armour 30% -> 15%. Kill time ~130 s, still long; titan survives ~100 s. Close fight.

## 3. Other findings
- On the Leviathan the missile launcher out-damages the 6-turret main battery about 2:1 (sim: percuteur 855 x 4 per 0.32 s vs rails 4.9k/s). The sim assumes unlimited ammo; if real ammo caps hold this is fine, else missiles are the dominant weapon. Check ammo use in the next emulator run.
- Frigates at L40 lose to every elite (die in 12-15 s, need ~31 s). Expected for the smallest class; no change proposed.

## 4. Next step to confirm (cheap)
One emulator run with the existing harness (corsair_dmgtest) adding two log fields: missile damage dealt and gun damage dealt separately. Confirms the missile explanation and the hit shares above. Then the sim can be calibrated and all 22,936 rows trusted for timing.

## 5. Prototype results (2026-11-17/18, emulator run 1 on branch claude/project-thread-7o62kt, build v53)
Nothing merged or released. Every change sits behind a test switch that is off on phones (list: audits/v53-balance-proto-changes.md). Same harness as runs 112/113 (maxed L40 Leviathan, refit 10, Siege Railgun, best shield diamondShieldLevel15, holds still, no dodge). Raw logs: tests/results/run1/*/dmg.txt on that branch. No crashes or mod errors in any of the 4 jobs.

### 5.1 Missile vs gun split: the missile explanation in section 1 is WRONG
- Missiles dealt **0** in all 18 fights (`msl=0/0`, `ammo=0`): the harness pilot carries no missiles, so none were ever fired.
- Guns dealt 100% of the damage (gun total equals target hull lost within overkill). Example: Bloodforge 314 gun hits = 2.56M, so **~8.2k per projectile hit**, ~98k per 6-turret paired salvo. That is the "~98k bursts every ~2 s".
- So the sim's per-shot gun damage (788.7) is about **10x too low** against flagships. The sim's flagship kill times matched only because missing missiles happened to fill that gap. Before trusting the sim's timings, find the ~10x factor in the player gun path vs flagships (not traced yet). Only section 1's offense explanation changes. The hit-share table for incoming damage still stands.

### 5.2 Flagships (BAL0 = all off, BAL1 = range hold + Aegis 2-3 + Warden x0.8)
| Flagship | Off: time / player hull lost | On: time / player hull lost | Avg distance off -> on |
|---|---|---|---|
| Reaver Bloodforge | killed 104 s / 18.9% | killed 45 s / 20.0% | 3,287 -> 1,479 |
| Kre'tari | killed 39 s / 3.8% | killed 41 s / 3.6% | 1,334 -> 1,325 |
| Varn Crown | killed 52 s / 9.3% | killed 56 s / 17.2% | 1,603 -> 1,338 |
| SRS Aegis | player dead 42 s (Aegis at 35%) | player dead 62 s (Aegis at 6%) | |
| FAV Warden | killed 65 s / 70.7% | killed 61 s / 68.6% | |

Reading:
- The range hold works: Reaver no longer drifts to 5,000+ and Varn stays inside its band. But it adds little threat: Reaver lost 20% instead of 19% and died twice as fast because it now stays in the player's range. Kre'tari barely changed because it was already close. **Its low damage is hit rate (bio-spine spread), not range.** Varn nearly doubled its damage. Expected landed share of 10-15% (section 2) was NOT reached. Range hold alone is not enough. A Reaver/Kre'tari fix needs better hit rate or damage too.
- Aegis with 2-3 drones still kills the maxed titan, but 20 s later, and it nearly dies (6% left). It is close to an even fight. A second step if wanted: 2 drones, or drone damage x0.8.
- Warden x0.8 barely moved it (70.7% -> 68.6%). The battery is not what kills the titan. Warden stays the hardest winnable fight. x0.8 can be dropped or made larger.

### 5.3 Police titans (option A = 1.6x damage; option B = A + overshield 15% + armour 15%)
Baseline (runs 112/113): all 7 kill the titan in 33-58 s, player deals ~0 in 4 of 7.
| Police titan | A: result | B: result |
|---|---|---|
| Spartan | **player wins** 150 s, lost 31% | player dead 87 s, titan at 34% |
| Reaver | player dead 98 s, titan at 84% | player dead 133 s, titan at 37% |
| Warden | player dead 47 s, titan at 100% (player dealt 0) | player dead 74 s, titan at 27% |
| Varn | player dead 65 s, titan at 47% | player dead 76 s, titan at 19% |

Reading:
- A works as intended. Survival goes from 33-58 s to 47-150 s, enough time to warp out (except Warden at 47 s). Spartan police becomes winnable, but only because its drones are its main damage.
- B lets the player hurt every titan (63-81% of its hull taken), but none die. Survival is 74-133 s. B is the close "almost winnable" fight the report predicted. To make B winnable, the next step is shorter overshield regen or damage x1.3 instead of x1.6.
- **Police Warden is immune under A**: the player dealt 0 in 47 s. Runs 112/113 showed the same (dealt 0-50). The Warden's 40% overshield plus its shield never break. Its ion arc pauses only the player's shield regen, so the cause is likely overshield regen on hits that don't land (not traced). Under B it breaks (titan at 27%). This is a separate bug candidate whichever option is picked.

### 5.4 Owner decisions needed (after reset)
1. Police titans: A (flee threat, recommended), B (close fight), or B with x1.3 damage (likely winnable).
2. Flagship AI: keep range hold (Varn and Reaver improve a little) and add hit-rate/damage for Reaver and Kre'tari, or drop it.
3. Aegis: 2-3 drones (now an even fight) or 2.
4. Warden: drop the x0.8 (no effect) or nerf another stat.
5. Let a thread trace the ~10x gun-damage gap so the sim can be calibrated.
