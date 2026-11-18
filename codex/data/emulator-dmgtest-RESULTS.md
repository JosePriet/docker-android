# Titan damage, emulator run 112 (2026-11-14), build 7a87291 + test harness
Setup: player L40, refit 10, Siege Railgun (modRailgunL15), full hull/shield, stock shield gear (Leviathan shield 234, Warlord 156).
Target spawns 1,700 ahead, L40. Player holds still (Leviathan anchor wall plants), turrets auto-aim and fire. Ends on kill, player death, or 180 s.
Raw per-second logs: dmg-d1.txt (Leviathan vs flagships), dmg-d2.txt (Leviathan vs police titans), dmg-d3.txt (Warlord).

## Leviathan (hull 446,656) vs flagships (3x)
| Target | Result | Time | Hull lost |
|---|---|---|---|
| Spartan SRS Aegis (drones) | player dead, Aegis at 58% | 38 s | 99% |
| Reaver Bloodforge | killed | 102 s | 4.9% |
| Ironclad IMS Bastion | killed | 83 s | 86.6% |
| Kre'tari | killed | 63 s | 7.9% |
| Helion Sunspire | killed | 98 s | 50.2% |
| Frontier FAV Warden | player dead, target at 11% | 112 s | 88% |
| Varn Syndicate Crown | killed | 54 s | 13.3% |

## Leviathan vs police titans (3.6x, 25%/30% damage reduction, 40% overshield)
All 7 killed the player in 33-58 s. Hull lost 96-100%. Titans ended at 84-100% hull. In 4 of 7 (Reaver, Ironclad, Helion, Warden) the player dealt ~0 hull damage; the harness does not count shield/overshield damage, so how much was absorbed is unmeasured.

## Warlord (hull 143,568) vs 6 targets
Dead in 5 of 6 (14-72 s). Reaver flagship: 180 s timeout, 71.5% hull lost, flagship at 84%.

Run 111 was void: the v46 prologue owned the fresh install and restarted the game mid-test. Fixed with test switch corsair_noprologue (every stage except V46).
Regression stages V42, V46, V47N (run 112): no game crash/FATAL/VerifyError/ANR. Only a SIGSEGV in system process 454 (emulator), not the game.

## Caveats (verifier)
- hullLost = gross drops (regen not subtracted); deaths read 96-99% because the last sample precedes the respawn.
- 'dealt' counts target hull only, not shield/overshield.
- Targets moved (ram/close passes, 0-9k distance); player did not dodge.
- Shield gear was stock (234), not maxed: real maxed loadout would lose somewhat less.

# Round 2 (owner "C", run 113, code head eab8838 v43a-14): best shield gear + dodging
Best shield gear picked automatically: diamondShieldLevel15 (Leviathan shield 11,700, Warlord 7,800; was 234/156). Dodging = player circles the titan at 300 u/s at its current range (no anchor wall plant).
- Leviathan still, best shield (D2): 7/7 police titans killed it, 23-52 s.
- Leviathan dodging (D4+D5): 7/7 killed it, 28-56 s.
- Warlord dodging (D6): 4/4 killed it, 12-30 s.
Police titans ended at 77-100% hull. Verdict: police titans still kill a fully maxed L40 titan; no tuning needed. No game crash in any job.
Caveat (verifier + cross-check): dodging moves the hull's position, not its velocity. The Leviathan anchor wall still planted while circling (29 and 17 plants in D4/D5 vs 53 still), so the dodging Leviathan also kept its wall, which favours the player. Its effect on hits can't be isolated from the logs. The Warlord has no wall.
