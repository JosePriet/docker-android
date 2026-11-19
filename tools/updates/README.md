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
4. Also add the same files to the repo (work/modart, i18n) so the next APK carries them.

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
