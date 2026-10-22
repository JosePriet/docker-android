# Current task: v35 (owner OK 2026-10-22: "proceed with the gaps, include them in v35")

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
