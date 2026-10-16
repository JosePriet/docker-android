# Space Corsair v30 brief: living ships, shields, wrecks, bosses, derelicts

Use the adopted **hybrid house finish** throughout. Claude writes the code; you make the art and write the lore. Deliver lossless PNGs with the exact filenames below. Unless stated otherwise, effect art is **greyscale on pure black** (the game blends it additively and tints it in code).

## Files in this package
- `hulls/`: the current game sprites for every hull above level 5, the 6 original ships and the 7 faction titans (49 files, 1024×1024 or 512×512). **Glow masks and overlays must line up pixel for pixel with these.**
- `hulls_v30.csv`: art name, ship name, class, kind (mechanical or alien), level and rarity for each hull.
- `reference/`: `factions.md` and the 7 faction emblems.

---

## Part A. Glow masks (highest priority)
**Filename and size:** `<art>_glow.png` for every row in `hulls_v30.csv`, at the **same size as the sprite** in `hulls/`.
- **Black everywhere** except parts that emit light: engine nozzles, running lights, window strips, reactor cores and weapon emitters. On alien hulls, add the bioluminescent nodes and veins.
- **Colour:** paint those parts in their real glow colour, at full brightness.
- **How the game uses them:** it pulses and blinks them, brightens engines with thrust and flickers lights when the ship is damaged.
- **Alignment:** must match the sprite exactly. Do not move, add or invent any lights that aren't in the sprite.

## Part B. Alien life overlays (alien rows only)
**Hulls:** harbinger, secret_kretari, cap_kretari, orig_alien_blatte and orig_alien_rat0.

1. **Moving appendages:** `<art>_anim_01.png` … `<art>_anim_08.png`, an 8-frame seamless loop. Each frame is transparent except the tendrils, fins or feelers, which sway gently. Same canvas size and alignment as the sprite; the body itself never moves.
2. **Veins:** `<art>_veins.png`, a greyscale vein network on black, aligned to the sprite. The game shows it while the hull heals.

**Shared alien effects:**

| Filename | Size | What it is |
|---|---|---|
| `fx_ichor_sheet.png` | 1024 | 4×4 flipbook: an organic fluid splash, greyscale (tinted violet or green in code) |
| `fx_spore_sheet.png` | 1024 | 4×4 flipbook: a burst of glowing spores, used when an alien hull dies (it dissolves instead of exploding) |

## Part C. Shields: "running out of power" (no cracking, no shattering)

| Filename | Size | What it is |
|---|---|---|
| `shield_shell.png` | 1024 | A thin, clean shell made of **12 equal arc segments** with tiny gaps between them. The ring sits **exactly at 90% of the half-size**: the ring's centre line is at a radius of 461 px. The game dims segments one by one as charge drops. |
| `shield_segment.png` | 1024 | **One** of those 12 segments on its own, at the 12 o'clock position, same radius. The game rotates it to light segments individually. |
| `shield_pulse.png` | 256 | A short comet-like energy streak that runs around the rim while the shield recharges. |
| `shield_ripple.png` | 512 | A small hexagonal ripple at a hit point (soft, not a crack). |
| `shield_sputter_sheet.png` | 512 | 4×4 flipbook of tiny electrical sparks: the shell sputtering when power is low. |

## Part D. Wrecks and debris

| Filename | Size | What it is |
|---|---|---|
| `wreck_char.png` | 1024 | Charred, burnt-metal noise (greyscale, darkest at the bottom edge). The game multiplies it along break lines so the cut edges of pieces cut from a hull look torn and burnt. |
| `wreck_edge.png` | 1024×128 | A jagged torn-metal edge strip with glowing hot rims (RGBA, transparent background), laid along each break line. |
| `debris_sheet.png` | 1024 | 4×4 small metal debris chunks: plates, beams and pipes (RGBA, transparent). |
| `fx_vent_sheet.png` | 1024 | 4×4 flipbook of venting gas from a breach. |
| `fx_smoke_sheet.png`, `fx_fire_sheet.png`, `fx_sparks_sheet.png` | 1024 each | 4×4 flipbooks for damage states. |
| `fx_explosion_big_sheet.png` | 1024 | 8×8 large-ship explosion with a shockwave, for cruisers and bigger. |

**Optional:** hand-drawn split wrecks for the 7 faction titans, `wreck_cap_<key>_a.png` and `wreck_cap_<key>_b.png`. These are the two halves of the titan, broken, on the same canvas as its sprite.

## Part E. Bosses, titans, markers

**Who the bosses and titans are:**
- **Bosses:** `matriarch` (Banshee Matriarch, alien saucer), `guardian` (Guardian Prime, Guardian cruiser) and `empress` (Hive Empress, Kre'tari).
- **Faction titans** (keys): spartan SRS Aegis, reaver Bloodforge, kretari Brood-Mother, varn Syndicate Crown, ironclad IMS Bastion, helion Sunspire, warden FAV Warden.

**Art:**

| Filename | Size | What it is |
|---|---|---|
| `boss_sigil_<id>.png` | 1024 | Unique rotating sigil ring for each boss id above |
| `boss_enrage_<id>.png` | 1024 | Unique enrage overlay for each boss |
| `titan_signature_<key>.png` | 1024 | A unique energy pattern for each faction titan in its design language, drawn around the hull. Not a hostile aura; it identifies the faction at a glance. |
| `titan_decal_<key>.png` | 256 | A faction hull decal (RGBA) |
| `icon_boss.png` | 128 | Skull over a golden star (RGBA) |
| `icon_elite.png` | 64 | Elite star (RGBA) |
| `ui_boss_plate.png` | 1024×128 | Boss name-plate frame, purple accents (RGBA) |
| `marker_hostile.png`, `marker_friendly.png` | 128 each | Hostile and friendly markers drawn under ships (greyscale; tinted red or cyan in code) |
| `loot_beam.png` | 128×512 | A vertical light beam above a dropped item (greyscale; tinted per rarity) |

**Skill names and lore:** for each boss and titan in the table below, return in `bosses_v30.json`:
- the skill names;
- a one-line description of each skill;
- a two-line enrage callout;
- Spanish for all of it.

Claude has fixed the mechanics; keep your text consistent with them.

| id | Profile | Signature skill | Enrage (once, at low hull) |
|---|---|---|---|
| guardian | **Classic tutorial boss**: big hull, big guns, slow | Telegraphed broadside: turrets glow for 1.5 s, then fire a heavy volley | Overdrive: 10 s of fast reload |
| matriarch | **Mind-bender**: brittle but evasive | Phase blink (teleports short distances); a gravity well that drags you off course | Splits into 3 illusions; only one is real |
| empress | **Swarm**: weak guns, regenerates while her brood lives | Spawns brood waves; heals from each living drone | A spore cloud slowly drains your shields |
| spartan (SRS Aegis) | **Sturdy shields, weak hull** | A frontal shield wall that blocks shots from ahead | Projects a shield dome over allies |
| reaver (Bloodforge) | **Huge hull, no shields** | Harpoons that drag you into close range; a furnace ram | Furnace overload: a burning trail plus a ram charge |
| kretari (Brood-Mother) | **Living mind-breaker** | A hive pulse that scrambles your radar and HUD for a few seconds | Mirror swarm: decoy brood that copy your movement |
| varn (Syndicate Crown) | **Fast, agile and brittle** | Contract mines and a short cloak | Liquidation: a mine ring plus a burst of speed |
| ironclad (IMS Bastion) | **Slow fortress**, directional armour | Armour plates that must be shot off; telegraphed artillery | Last stand: plates regrow once |
| helion (Sunspire) | **Speed titan**, light hull | A solar lance sweep and boost dashes | Supernova: a sweeping ring of fire |
| warden (FAV Warden) | **Electronic warfare** | A tractor beam, a boost disruptor and a long-range rail snipe | Lockdown: disables your boost and missiles for 6 s |

## Part F. Derelict sites (lore and data)
Write `derelicts.json`: about 12 derelict sites. Each site has a lore reason the wrecks are there (an old war, a mission or a battle) and fits the faction that owns the sector.

**Fields per site:**
- `sector`: one of the sector ids below.
- `event`: the event name.
- `history`: 2–3 sentences.
- `wrecks`: a list of `{hull, count}` using art names from `hulls_v30.csv`.
- `scan_text`: up to 160 characters, shown when the player scans a wreck.
- `entry_line`: up to 120 characters, shown on entering the sector.
- `es`: Spanish versions of all the text fields.

**Faction ownership of sectors:**
- **spartan:** SPARTAN_HQ, HUGO_WISDOM, HERMES, THE_WAVE.
- **reaver:** PIRATE_BAY.
- **helion:** HELIOSTAT, CONSTELLATION, TWIN_STAR.
- **ironclad:** ORE_BELT.
- **varn:** OMICRON_PRIME, ORION, THE_VAULT, AERIA_PASSING, ETERNITY, LOST_PARADISE.
- **kretari:** THE_HIVE.
- **warden:** HIGHWAY, DELTA_NODE, GREEN_BORDER.
- **Unclaimed:** GENESIS, PLANCK_PRIDE, THOR_PASSING, VENTOHIGH, SOLAR_FIELD.

**Starting ideas (tie them to the existing story missions):**
- the Halcyon convoy remains near Thor Passing;
- the Aegis line skirmish at Hermes;
- the repeater war at Green Border;
- the brood-beacon theft battle at Solar Field;
- an old Syndicate "Ledger War" graveyard at Orion;
- the split Guardian cruiser at The Vault;
- a mining collapse at Ore Belt;
- the stranded patrol at Delta Node.

## Return
- Everything above, with exact filenames.
- `bosses_v30.json` and `derelicts.json`.
- `notes_v30.md`: anything Claude should know (for example, which glow parts are engines and which are lights).
