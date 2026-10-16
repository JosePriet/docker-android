# v30 checklist (approved design)

## ChatGPT (art and lore): brief `incoming/TASKS_v30.md`
- [ ] A. Glow masks `<art>_glow.png` for the 49 hulls in `hulls_v30.csv`
- [ ] B. Alien overlays: 8-frame appendage loops, vein maps, ichor and spore flipbooks
- [ ] C. Shield art: 12-segment shell, single segment, charge pulse, ripple, sputter sparks
- [ ] D. Wreck art: char texture, torn edge, debris sheet, vent, smoke, fire, sparks, big explosion (optional titan wrecks)
- [ ] E. Bosses and titans:
  - [ ] boss sigil rings and enrage overlays
  - [ ] titan signatures and decals
  - [ ] boss and elite icons, boss name plate, hostile and friendly markers, loot beam
  - [ ] `bosses_v30.json`: skill names and texts in EN and ES
- [ ] F. `derelicts.json`: about 12 lore-backed derelict sites, EN and ES

## Claude (code)
**Map**
- [ ] Wire `incoming/map_territory/*` (territory fields + border) into `work/modart` as lossless WebP

**Shields**
- [ ] Faint shell at rest; segments dim as charge drops and flicker or sputter below 25%; fizzle-out at 0 (no shatter)
- [ ] Recharge pulse around the rim; segments relight with charge; one full pulse lap during the 1.3 s reboot; hit ripple at the impact point
- [ ] Regen curve: full item rate at ≤25% charge, ~75% at 50%, ~55% at 75%, ~40% near full; the half-rate state halves the whole curve
- [ ] Enemies: same curve at half rate; no regen after reaching 0 unless boss or special skill

**Wrecks**
- [ ] Cruiser-size hulls and up split into 2–3 pieces cut from their own sprite, with burnt edges, debris, venting and sparks
- [ ] Pieces are physical: collide with NPCs, enemies and asteroids, and can be shot apart
- [ ] Loot only when the player destroys a wreck
- [ ] Player death: 3–4 s break-up before respawn; the player's wreck is visual only and is removed
- [ ] Enemy wrecks persist and are lootable

**Loot**
- [ ] Base table by hull type and enemy level and type; small hulls drop modestly even at high level
- [ ] Elite (star before the name): good or high-ranked gear whatever the hull size
- [ ] Bosses: one guaranteed good item from their pool, plus a chance of rare or secret
- [ ] Per-sector, per-owner modifier that only changes the odds of high-rarity drops

**Derelicts**
- [ ] Place the sites from `derelicts.json` (fixed wrecks with lore, scan text and entry line), lootable under the same rules

**Bosses**
- [ ] Name plate: skull over golden star, purple name and level
- [ ] Stat profile: tanky, heavy damage per shot, slower, less agile, longer reload
- [ ] Mechanics per `bosses_v30.json`; Guardian Prime stays the classic tutorial boss
- [ ] Each boss's unique enrage triggers once at low hull
- [ ] Each boss's unique sigil and corona visuals

**Titans**
- [ ] Each AI faction titan gets its unique profile and skill (table in TASKS_v30 Part E) and its faction signature visual
- [ ] The hostile look only appears when the player is Unfriendly with that faction or in combat with it

**Telling sides apart**
- [ ] Enemies: warm hostile rim light, red-shifted engine, hostile marker
- [ ] Player ships: cyan rim light, friendly marker
- [ ] Player titans: clearly distinct from AI titans

**Living ships (prototype first, owner reviews)**
- [ ] Prototype on 3 hulls (one human, one alien, one titan), then roll out to every hull above level 5 if approved:
  - [ ] glow-mask animation (lights blink, engines follow thrust, damage flicker)
  - [ ] engine thrust stages and manoeuvring-thruster puffs
  - [ ] turret idle sweep and recoil
  - [ ] damage smoke, fire and sparks below 50% and 25% hull
- [ ] Aliens: breathing, node waves, lean into turns, flinch on hit, ichor, spore trail, veins while healing, spore-dissolve death

**Integration and release**
- [ ] Spanish for all new labels (bosses, loot, derelicts)
- [ ] Emulator test run(s) with screenshots, the v30 release and a check list for the owner
