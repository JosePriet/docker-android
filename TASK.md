# Current task: v37 missions + HAIL (owner, 2026-10-30)
Owner: "the 'new' missions ... don't work as intended or they develop in such a short distance from the point of getting said mission ... The button to find these missions is also a bit bugged since if you click it the mission hud shows up so fast you can't read the text from the npc, also as a newbie its not really explained what the button at the center does."
Audit: /mnt/project-files/space-corsair/missions-v37/missions-audit-v37.md. Owner answers (authoritative): /mnt/project-files/space-corsair/missions-v37/owner-answers.md (Q1-Q23, S1-S9). The wreck drift / UFO laser work (other thread) also lands in v37.
Requirements (from the answers):
1. Story missions that ran in the giver's HQ move to the sector picked in S1-S9 (src/genmissions.py EXTRA). Contracts go to a neighbour of the giver's HQ, rotating daily. Hunts and the finale stay in the HQ. (Q1, Q2)
2. Objectives at least 8,000 from where the player arrives (Q3); hunts/finale: from where the mission is accepted (Q23).
3. No ship pops in near the player: objective ships wait at the objective; ambushes/reinforcements spawn 4,500 away on the side of the nearest gate or hostile station and get a one-time x2 speed boost until within 2,000 (R4, Q19, Q20).
4. Sealed Ledger: pick up in The Vault, hand in by docking at Omicron Prime; lost on death (Q5). Gather-and-sell: points give mission cargo, completed by docking in the sell sector (Pirate Bay, Ore Belt; contracts: the HQ); lost on death (Q6, Q22).
5. Hold zone: separate outpost 12,000-15,000 from arrival (Q7a, Q21); 90 s story / 60 s contracts (Q7b); waves every 15 s of 5 (+1 per wave, cap 8; story starts at 6), level max(pilot, sector top), elite in the last wave (Q7c, Q7d).
6. Escorts start at a station (farthest from arrival) (Q4); contracts end at another station, else a gate (Q8); Helion 1 runs Heliostat station -> gate -> Constellation station (S8).
7. Scan targets lost before being scanned are replaced from off-screen (Q9). Kill counts: player and drone kills only (Q10). Progress is kept when leaving the sector and over restarts (Q11).
8. HAIL: greeting first, mission screen only from OPEN MISSIONS (Q12); briefing stays until tapped; the panel no longer auto-hides behind the mission screen (Q13); one-time explanation pop-up + subtitle under the button (Q14); shown only within 6,000 of the flagship (Q15); "no missions" subtitle when nothing is offered (Q16). Boss missions unchanged (Q17).
9. New text: EN placeholders now; GPT writes the final EN + ES (Q18).
Acceptance: check.sh 37 PASS; emulator run of one mission per type with no crash; two-agent verification; /mnt/project-files/audits/v37-changes.md; directive audit; phone test by the owner.

# Previous task: v36 (owner, 2026-10-28)
Owner: "the game's BGM is mainly quiet... when you can hear it its volume is way lower than the sound effects... add a different bar to adjust BGM and sound effects; the asteroids on the minimap should have a brighter yellow colour since they can be confused for green if the phone has a filter."
Requirements: (1) find why BGM is mostly silent / quieter than SFX and fix; (2) separate BGM and SFX bars; (3) minimap asteroids brighter yellow, not green under a colour filter.
Status 2026-10-28: implemented (5915b16), check.sh 36 PASS, verifier + cross-check done, emulator sc-v36. Changes: /mnt/project-files/audits/v36-changes.md. Asteroid colour value: owner's pick (gold 1.0/0.82/0.0 by default; ModMap.ASTEROID_*).

# Previous task: v35

Status 2026-10-22: implemented, check.sh 35 PASS, reviewed (verifier + cross-check), emulator run sc-v35 passed (no crash); phone test and release not done.

Source: v34-answers.md (owner's words; C1, E1b, G5, I4) and the owner's 2026-10-22 note on refits. [P] = Claude's proposal; replace with your own numbers if you want.

## Goal
Ships grow through refits, enemies fight smarter, and sectors feel busier. The faction hulls and titans are NOT in v35: they go in together once GPT's titans land (owner, 2026-10-22).

## Requirements
1. **Refits (G5).**
   - Every player hull has refit levels 1-10. A fully refitted hull is about equal to a stock hull one class up.
   - Upgrades only enhance what the hull is already good at, plus one faction-specific strength (owner). [P] The top 2 hull multipliers above 1.0 (from dmg, reload, shield cap/regen, agility, cargo...) grow +3% per level, and one faction trait grows +2% per level: Spartan shield cap, Reaver damage, Kre'tari hull regen, Warden reload, Varn cargo/loot, Ironclad hull, Helion speed. Neutral hulls: hull points.
   - Cost: credits per level. Levels 6-10 also need rare parts from elites, bosses and rare salvage. [P] The cost of level n is 8% × n of the hull price. Parts needed are 1/2/3/4/5 for levels 6-10.
   - 5 visual stages, one per 2 refit levels. Stage 5 is the definitive faction look. Each stage's art is hidden until GPT delivers it, and the current sprite shows until then.
   - Enemies carry refit stages too, so "weaker / equal / stronger" reads at a glance. [P] The enemy stage follows its tier: T1 stage 1, T2 stage 2, T3 stage 3-4, T4 stage 5.
   - Saves keep working: refit level 0 on load.
   - Text in English and Spanish.
2. **Advantage-aware AI (C1).**
   - Each enemy compares itself with the player: level, class, tier, counter wheel and hull %.
   - With an advantage it pushes in and chases. At a disadvantage it keeps range, kites and breaks off at low hull.
   - Bosses are always very aggressive; only their gimmicks mix defence and offence.
   - Kill-time targets for a same-level normal enemy: about 2 s with an advantage, about 6 s when matched neutral, about 12 s when countered.
3. **Traffic and points of interest (E1b).**
   - Same map size, with 2-3× NPC traffic: patrols, traders and faction wings using the existing ships.
   - More stations built from existing art.
   - Fixed points of interest in each sector: outposts, wreck fields, mining belts, faction bases. Existing art stands in until GPT's structures arrive.
4. **Wreck lifetimes (I4).**
   - Husks fade after 2 min and cruiser wrecks after 5 min. Battleship-class wrecks and bigger stay for the whole visit.
   - Flagship and titan wrecks persist across visits for a while as a point of interest. [P] They last 3 visits or 30 minutes of play.
5. **Flagship pursuit (left from v33/v34, placed here pending your OK).** Killing a flagship costs standing with its faction and sends pursuit waves. [P] −40 standing, then 3 waves over 5 minutes.

## v34 gaps (included in v35 by the owner)
- Req 10: the red/blue/white name-tag colours and the `enemy_<art>` hostile variants.
- Req 12: rarity-driven prices for stock gear.
- Req 13: retune mission rewards and standing.
- Req 16: the final missions in the top region.
- Not in v35: req 14 (faction hulls in the NPC pools) waits for the titans, together with the 22 staged hulls (incoming/gpt-v34-s1-b*).

## Constraints
- Lossless art only; no new frameworks; existing hooks are not re-run (a new hook means a new script, run once and logged).
- Spanish for all new player-facing text (GPT writes it; Claude finalises).
- Every change goes into /mnt/project-files/audits/v35-changes.md; the standing directive audit and the two-agent review (verifier + cross-check) apply.

## Acceptance checks
- check.sh PASS, with JVM tests for the refit maths, the AI advantage score and the wreck timers.
- One emulator run. Then the owner's phone test for AI feel, kill times and refit balance.
- A change list in audits/v35-changes.md, then the audit and the two-agent review.
