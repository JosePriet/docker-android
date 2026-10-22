# Current task: v34 core systems (owner OK 2026-10-22)

Source: owner answers in `v34-answers.md` (live Q&A, 2026-10-21/22). v33 release is still pending the phone test; v34 builds on top of it.

## Goal
Lay down the core progression and combat rules for the expanded game: level cap 40, an enemy curve by level, class and tech tier, pilot stats, faction weapon rules, removal of the player industrial class, and standing colours. Art-gated content (new faction hulls, refit stages, wreck art) is NOT in v34.

## Requirements
Numbers marked [P] are Claude's proposals, approved by the owner's go-ahead on 2026-10-22.

1. **Level cap 40.** Levels 1-17 keep their XP. L18-40 rise +5% per level (owner, about 1.9M XP total). Saves keep their level.
2. **Regions by level.** Sector level ranges, gear tiers (TIER_LEVELS), enemy tables and flagship hull (500k + 30k x level) are rescaled to the cap. Each region gets a level band, giving a progression path up to the top region.
3. **Enemy curve.** stat = base(level) x class factor x tech-tier factor.
   - base(level): stock up to L15, then the L15 row x 1.07^(lv-15).
   - Class factor (hull): frigate 0.6, battleship 3.0 (owner); [P] destroyer 1.0, cruiser 1.6, battlecruiser 2.2, capital 5, titan 8.
   - [P] Tech tier T1-T4 scales damage, shield and reload by x1.0, x1.15, x1.3 and x1.5. The tier mostly follows the sector level, with ±1 spread.
   - Elites: hull x2.5, damage x1.5, tier +1, +150 on each pilot stat.
   - Bosses: hull x15, damage x2, tier T4, +300 on each pilot stat (clamped to 1000), then per-boss overrides. Boss and elite factors multiply on top of the class factor.
   - Stock enemy types are neutral generalists, weaker than faction hulls.
4. **Pilot stats ATK / DEF / REA.** They unlock at L10, with EN+ES tutorial text. They are automatic and cannot be assigned.
   - Growth: 0 at L10, then linear to 800 at L40.
   - The completed faction storylines together add +200 to each stat (200 split as integers over the faction count, e.g. 4×29 + 3×28 for 7). Hard cap 1000.
   - [P] Damage formula: base x (1 + max(0, ATK − 0.75·DEF)/1000) x (1 − clamp((DEF − ATK − 250)/1000 × 0.4, 0, 0.3)) (no base cut until DEF leads by 250).
   - REA dodge: max 25%, only vs elites, bosses, flagships (owner); [P] formula (REA − attacker REA)/20 %, capped at 25%, only against elites, bosses and flagships.
   - Enemies get the same stat curve by level.
5. **Level bonuses.** +1% shield and +1% energy regen per level above 17.
6. **Death penalty.** About 2 same-level kills (owner); [P] 2 × the same-level bounty on the new v34 bounty curve, capped so that 3 deaths cost at most 15% of the estimated hourly income at that level.
7. **Industrial class removed for players.**
   - Mule, Tortoise, Bulwark, Foundry and Graywall leave the shop. The licence chain goes cruiser → battlecruiser.
   - On save load, an owned industrial is removed and its full price refunded; its fitted gear goes to the hangar.
   - The five hulls become NPC freighters in the NPC pools: Foundry is Ironclad, Graywall is Varn, the rest are neutral. Stock transports and the escort mission stay.
   - Cargo scales with hull class.
8. **Weapon rules.**
   - Hull with its own faction's family: full stats plus the hull and faction bonuses.
   - Neutral hull: any family at −15%.
   - Faction hull with another faction's family: −40% on all weapon stats and no innate bonuses.
   - Slot sizes S/M/L/XL by class plus class gates (owner); [P] mapping (frigate S, destroyer S/M, cruiser M, battlecruiser M/L, battleship L, capital L/XL, titan XL). A weapon must fit its slot.
   - Rails are shared by Spartan and Frontier, with a hull bonus each (Spartan +damage, Frontier +reload).
   - New reskin families on existing mechanics, each with its own stats, names (EN+ES) and colours: Reaver flak (on autocannon), Helion lance (on blaster), Kre'tari bio-spines (on autocannon).
9. **Faction counters.** Counter wheel + weapon-type resists, clamp x0.5-x2.0 (owner); [P] wheel values (each faction gets +30% damage dealt and −20% taken against 2 lore rivals) plus weapon-type resistances per faction. The total multiplier is clamped to x0.5-x2.0. The table is a data file; GPT supplies the lore reasons and Claude fills placeholders until then.
10. **Standing colours.** Hostile hulls get a red outline and red name tag, friendly/allied ones blue or green, neutral ones white. The optional `enemy_<art>` file is used when present.
11. **Generated description stats.** The ship description stat block (hull, shield, speed, slots, faction, class) is generated from the real data in EN and ES. The flavour text stays as it is until GPT rewrites it.
12. **Gear prices by rarity.** Rarity is the main price factor. A weapon nears its hull's price only at high level and high rarity.
13. **Income.** Order: kills (elites, bosses and flagships very lucrative) > loot > missions. Pace target: first cruiser at about 2 h, first battleship at about 8 h, first titan at about 20 h. Mid-level income: the next class is about 2-3 h away (G2). Rare high-value loot drops in regular play, more often from elites and bosses (G3). Missions are the safe route; roaming is higher risk and reward. Flagship kills are very lucrative. Mission rewards and standing are part of this pass. [P] Constants come from the sim in `/mnt/project-files/space-corsair/sim/`.
14. **Spawn pools (D1/D2/E3).** Mod faction hulls join their faction's NPC spawn pools and use their faction's weapons. NPC capitals serve as faction flagships, with faction titans above them. Boss-class NPCs are capitals or titans.
15. **Hide until art (E4).** Data for new hulls can go in now. A hull appears in shops and spawn pools only once its art file exists.
16. **Top region (A1).** The highest-level region holds the final missions.

## Not in v34 (v35 / v36+)
- v35: ship refits (10 levels, rare parts from L6, 5 visual stages), advantage-aware AI aggression, denser traffic and points of interest, wreck lifetimes, flagship pursuit waves and the rep loss on flagship kills (version not set by the owner; placed here pending OK).
- v36+ (art-gated, hidden until art lands): full faction lines up to capital, faction titans, refit stage art, per-hull wreck art (size-based) and kill-type decals, POI structures, hostile hull art, unique mechanics for flak, lance and spines, and the GPT flavour text.

## Constraints
- Lossless art only; no new frameworks; existing hooks are not re-run (a new hook means a new script, run once and logged).
- Spanish for all new player-facing text.
- One emulator run.
- Write `/mnt/project-files/audits/v34-changes.md` and have it audited against this file. Nothing outside these requirements.

## Acceptance checks
- `bash scripts/check.sh 34` prints PASS.
- JVM tests: the XP table reaches L40; the damage formula gives these values:
  - ATK 1000 / DEF 0 → x2.0
  - ATK 0 / DEF 1000 → x0.7
  - ATK 800 / DEF 800 → x1.2
- An industrial save is refunded on load.
- The off-faction −40% and the neutral −15% apply.
- The slot-size gate blocks an oversize fit.
- Emulator: no crash; the pilot stat row is hidden below L10 and visible from L10 in EN and ES; a hostile hull shows a red outline and name tag; the shop has no industrials.
- JVM: enemy curve per class/tier; REA dodge cap 25% and elite/boss/flagship only; +23% shield/energy at L40; death penalty and its cap; counter clamp x0.5-2.0; boss stats ≤1000.
- Sim (`sim/econ_sim.py`, XP per kill ASSUMED until measured): pace 2/8/20 h PASS.
- C1 kill-time targets [P], same level, destroyer T2 enemy, medium hull: advantaged about 3 s, matched 3-5 s (owner baseline), countered about 10 s.
- Owner's phone: feel of the progression pace and fights.
