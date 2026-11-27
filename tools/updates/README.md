# In-game updates: publishing (v45+)

The game checks `releases/download/channel-stable/manifest.txt` + `manifest.sig` once a day on Wi-Fi and on
"Check now" (flight menu, Updates). Everything it downloads is listed there with sha-256, and the list is signed with
`/mnt/project-files/space-corsair/keys/content-sign.pem` (ECDSA P-256; public half baked into ModUpdate.PUB).
Never commit the private key. Losing it means a new APK with a new public key.

Two kinds of update:
- Content pack (no reinstall): art, sound effects, Spanish text. Applied at the next game start.
- Game update (code): a `.scp` patch from each recent release to the new APK (v44 -> v45 build 52 was 6.5 MB of 91.7 MB),
  then one Install tap. Falls back to the full APK.

## Content pack
1. Put the changed files in a folder with the APK layout: `modart/<name>.webp`, `modsfx/<name>.ogg`, `lang/es.json`
   (only the new or changed keys). Lossless WebP only, as in work/modart.
2. `python3 -I tools/updates/pack_build.py DIR updates/channel-stable/content-52-1.zip --id content-52-1 --build 52 [--remove modart/old]`
   The build number must be the installed APK's (versionCode - 1000). Packs for a build chain in manifest order;
   a later pack wins. A new APK build starts a new chain (its APK already holds everything).
3. Add the pack to the spec (below), bump `seq`, sign, commit `updates/channel-stable/` to `releases`.
4. Also add the same files to the repo (work/modart, i18n, the constants and generated data) so the next APK carries them.

### More pack contents (build 53+, content updates phase 2)
- `music/<raw name>.ogg`: replaces a music track; the name is the stock `res/raw` entry (e.g. `music/loop_space1.ogg`; the 7 tracks MusicManager.initMusic loads).
- `lang/en.json`: English text fixes, `{"old English": "new English"}` (applies where the mod text goes through ModLang.tr).
- `data/tune.txt`: balance numbers, `key=value` lines (`#` comments). Keys are `ModTune.KEYS`; each has a min/max at its
  read site (values outside are clamped, unknown keys refused by pack_build.py and ignored by the game). Examples:
  `capital.dmg_mult=3.0` (flagship/titan shot x), `police.dmg_bonus=1.25`, `police.hull_bonus=1.25`,
  `police_titan.stat_mult=1.2`, `police_titan.over_pass=0.3`, `aegis.drones_min=2`, `aegis.drones_max=5`, `aegis.respawn_s=10`,
  `hold.police_lo=0.4` / `hold.police_hi=0.65` / `hold.flag_lo=0.5` / `hold.flag_hi=0.8` (fractions of gun range),
  `events.first_s=90`, `events.gap_min_s=240`, `events.gap_max_s=360`, `events.distress_pay=6000`, `events.bounty_pay=12000`,
  `chain.window_s=6`, `chain.step=0.1`, `chain.cap=1.5`, `ccef.speed=1.35`, `ccef.dmg_taken=0.5`, `ccef.player_dmg=1.15`,
  `ccef.warp_in_s=20`, `ccef.survive_s=120`, `ccef.warp_mult=1.5`, `ccef.reward_credits=10000000`.
- `data/text.json`: mission, lore, faction and reputation tables, `{"ModFactionData.COMMANDER_LINE.2": "...", "ModV30Data.BOSS_EN.1.0": "..."}`.
  One element of an existing array per key (index from 0, same type as the element; numbers as strings). Allowed classes:
  ModFactionData, ModV30Data, ModRepData; KEYS, SITE_SECTOR, SITE_HULLS and SECRET_SHIP are locked. Arrays never grow.

### Storage on the phone
At each start the game deletes: the rebuilt game update (`apk/`, about 90 MB) once that build runs or after 7 days;
packs made for another game build (after a game update) and the chains that used them; unfinished downloads older than
7 days. Packs neither the active nor the previous chain uses are deleted when a new chain is set. Built-in sound
effects are read straight from the APK (no copy in the cache).

## Game update
1. Build and release the APK as usual (scripts/release.sh, release/VERSION).
2. For each of the last three released APKs: `python3 -I tools/updates/scp_make.py OLD.apk NEW.apk updates/channel-stable/patch-<old>-<new>.scp`
   (OLD = the exact released file; download it from its release).
3. Spec `apk` = the new release (url = its releases/download link), `patches` = those files. Bump `seq`, sign, commit.

## Spec and signing
`updates/spec-stable.json` on `releases`:
```json
{"seq": 1,
 "apk": {"version": "v45", "build": 52, "path": "apk/space-corsair-mod-signed-v45.apk",
         "url": "https://github.com/JosePriet/docker-android/releases/download/v45/space-corsair-mod.apk"},
 "patches": [{"path": "updates/channel-stable/patch-v44-v45.scp", "url": "https://github.com/JosePriet/docker-android/releases/download/channel-stable/patch-v44-v45.scp"}],
 "packs": [{"path": "updates/channel-stable/content-52-1.zip", "url": "https://github.com/JosePriet/docker-android/releases/download/channel-stable/content-52-1.zip",
            "id": "content-52-1", "build": 52, "en": "New Hornet art", "es": "Nuevo arte del Hornet"}],
 "revoked": []}
```
`python3 -I tools/updates/manifest_sign.py updates/spec-stable.json /mnt/project-files/space-corsair/keys/content-sign.pem updates/channel-stable`
writes and self-checks manifest.txt + manifest.sig. `seq` must rise every publish (phones ignore an older list).
Workflow: copy `tools/updates/channel-workflow.yml` to `.github/workflows/channel.yml` on `releases` (once).

## Rollback
- Bad pack: add its id to `revoked`, bump seq, sign, publish: phones drop it at the next check.
- On the phone: Updates > "Undo last update" or "Use built-in content only". A pack chain that dies before 45 s three
  starts in a row is turned off by itself.
- A bad APK cannot be downgraded (Android refuses a lower versionCode): ship a new build number.

## Multiplayer
The join check hashes the APK plus the active pack chain, so both players need the same APK and the same packs.
