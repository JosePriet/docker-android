# In-game updates without reinstalling the APK: plan (2026-11-18)

Status: plan only, nothing coded. Repo state read: `sc-mod-workspace` (v45, build 52).

## 1. Answer in short

Two update paths, both started from inside the game:

1. **Content packs (no reinstall).** Art, sound, music, Spanish/English text, mission/lore text and the balance numbers. The game downloads a signed pack (8-40 MB), keeps it in app storage, and loads it at the next start. Nothing is installed.
2. **Delta APK update (one Install tap).** Anything that changes code (new mechanics, AI, UI, hooks). The game downloads a patch of about 7 MB instead of the 85-92 MB APK, rebuilds the new APK from the installed one, checks its SHA-256 and opens the system installer. The save is kept (same package, same signing key).

Code itself cannot be changed without an install (section 3). Iron Saga gets around this because its logic is mostly data driven. Ours is not yet, so one APK release (the "updates" build) first has to move the parts that change most often into files the pack can override.

Measured (another thread, 2026-11-18): v44 release APK vs v45 build 52 is 91.5 MB compressed, of which 6.8 MB changed: assets 5.09 MB, classes.dex 1.28 MB, resources.arsc 0.39 MB, META-INF 0.07 MB. Unchanged zip entries keep identical bytes, so a copy-plus-literal patch comes to about 7 MB. On that update, about 5 MB of the 6.8 MB could have gone out as a content pack. The 1.3 MB of code still needs the APK path.

## 2. What the game loads today, and from where

| Data | Where it lives now | Loaded by | Overridable from app storage? |
|---|---|---|---|
| Mod art (738 files, 75 MB) | `assets/modart/*.webp/png` | `ModArt.open` (ModArt.java:814), `listAssets` (:258) caches the name list once | **Yes**, with one change: `open` and `listAssets` read an overlay directory first |
| Remastered stock sprites | `assets/modart/orig_<entry>` | `ModArt.origAsset` (:884) via `open` | **Yes**, same overlay (the remaster hook already redirects game drawables to modart names) |
| Stock sprites that have no remaster | `res/drawable-nodpi` | `TextureLibrary` → `Resources.openRawResource` | Yes, by shipping an `orig_<entry>` file in a pack (the existing remaster hook picks it up) |
| Mod sound effects | `assets/modsfx/*.ogg` | `ModSound.copy` (ModSound.java:78) copies assets to a file, then SoundPool | **Yes**, overlay in `copy` |
| Music | `res/raw/*.ogg` (louder copies swapped in at build) | `engine/MusicManager` → `MediaPlayer.create(ctx, resId)` | Needs a new small hook in MusicManager to play a file path when the pack has `music/<name>.ogg` |
| Spanish text | `assets/lang/es.json` | `ModLang.dict` (ModLang.java:160) | **Yes**, overlay plus merge (pack keys win) |
| English mod text | string literals in the Java (`ModLang.tr("...")`) | code | Text corrections: a pack `lang/en.json` mapping old to new text (same mechanism as es.json). New screens need code |
| Mission chains, lore, faction data | generated into Java (`ModFactionData.java` 13.7 KB, `ModV30Data.java` 15.8 KB, from `src/data/*.json` via `src/genmissions.py` etc.) | code | **Not today.** The updates build ships the same JSON as `assets/data/*.json` and reads it at start, keeping the Java tables as the fallback |
| Balance numbers (enemy curve, damage multipliers, police, drones, events, chain, prices, refit costs) | `static final` constants across ModBal, ModV34, ModV35, ModPolice*, ModEvents, ModChain, ModAegisDrones and more | code | **Not today.** javac copies `static final` primitives into every use site, so a file cannot change them. The updates build routes the chosen numbers through `ModTune.f("key", default)` (section 5.3) |
| Stock game tables (XpBuilder, stock gear specs) | base game classes in classes.dex | code | Only through ModTune hooks on the few values worth tuning |
| New hulls, weapons, skills, AI, UI screens, hooks | Java + smali | code | **No.** APK path only |
| AndroidManifest, resources.arsc (Android string resources, layouts) | APK | Android | **No.** APK path only |

So after the updates build, a pack can change: every art file (new ship stages, effects, icons, remasters), sound effects, music, all text (ES and EN fixes), mission and lore text, and every number moved into ModTune. A pack cannot add new behaviour. New ships can arrive by pack only if the hull already exists in code ("hide until art" hulls, ModArt `hasArt` gating).

## 3. Why not hot-load code

Downloading a new `classes.dex` and loading it with `DexClassLoader` was rejected:
- Over 50 smali hooks in the game call `fr.testudo.spacecorsair.mod.*` directly. Those references resolve through the app's own class loader, so a second loader is never consulted. Each hook would need a reflection trampoline, which is a full rewrite.
- It is remote code execution: a stolen signing key or a hijacked download would run arbitrary code on every phone.
- The ART verifier lesson from the MP button (package-private access across loaders throws IllegalAccessError) gets worse across two loaders.

The delta APK path gives code updates at about the same download size, at the cost of one Install tap.

## 4. Content packs

### 4.1 Pack format
A pack is a zip named `content-<build>-<seq>.zip`, for example `content-52-3.zip`:

```
pack.json
modart/<name>.webp         (stored, not deflated: WebP is already compressed)
modsfx/<name>.ogg          (stored)
music/<name>.ogg           (stored)
lang/es.json, lang/en.json (deflated; partial dictionaries, merged over the base)
data/tune.json             (deflated; key -> number, see 5.3)
data/missions.json, data/lore.json, data/factions.json (deflated; whole-file replacements)
```

`pack.json`:
```json
{ "id": "content-52-3", "build": 52, "contentApi": 1, "seq": 3,
  "requires": "content-52-2",
  "remove": ["modart/old_name"],
  "notes": { "en": "Hornet stage 2-4 art, police tuning", "es": "..." } }
```

Packs are deltas that chain. `content-52-3` holds only what changed since `content-52-2`. The phone stores every pack of its build line and layers them in seq order. A file in a later pack wins, and `remove` hides a file from earlier layers or the base. When a new APK build ships, it carries all the content, so the chain restarts at `content-53-1` and the old packs are deleted.

Size control: when a chain passes about 150 MB or 10 packs, publish a cumulative pack `content-52-c4` (same contents, `requires` empty). New players download one file instead of the whole chain.

### 4.2 On the phone
- Directory: `getDir("content")` (`app_content/`). It must not be under `getFilesDir()`, because test mode swaps that directory between profiles (ModTestMode.java:100-113). Packs are then shared by the main and test profiles.
- Layout: `app_content/packs/<id>.zip` (verified zips, kept zipped, read through `java.util.zip.ZipFile`), `app_content/active.json` (the ordered chain in use), `app_content/previous.json` (the chain before that), `app_content/boot.json` (crash guard, 4.5).
- Lookup: a new `ModContent.open(path)` checks the active packs from newest to oldest, then the APK assets. `ModArt.open`, `ModArt.listAssets`, `ModSound.copy`, `ModLang.dict` and the new data/tune readers call it. The `listAssets` name set becomes the union of the APK list and the pack lists, minus `remove`.
- Applying: only at process start. ModArt caches textures and the name list, and the GL context holds the textures. Hot swap is not worth the risk. After a download, the UI says "Restart to apply" and offers a Restart button (`finish` + `System.exit`, then the launcher icon).

### 4.3 Integrity and signatures
- Keypair: ECDSA P-256 (`SHA256withECDSA`, in every Android version through `java.security.Signature`). Ed25519 needs Android 13+, so it is not used.
- The public key is baked into the APK (`ModContent.PUB`). Two slots allow key rotation: the current key and the next one.
- Private key: `/mnt/project-files/space-corsair/keys/content-sign.pem` plus a GitHub Actions secret `CONTENT_SIGN_KEY`. Never in git or audits.
- The manifest (4.4) is signed: `content.json` plus `content.json.sig`. It lists each pack's SHA-256 and size. The phone checks the manifest signature, downloads the pack, checks its SHA-256 before it is moved into `packs/`, then checks `pack.json` (id, build, contentApi, requires) against the manifest entry.
- Zip safety: reject entries containing `..`, absolute paths, names outside the allowed folders (`modart/ modsfx/ music/ lang/ data/`), and anything ending in `.dex .so .jar .apk`. Cap the uncompressed size (zip-bomb guard: 4x the declared size, hard cap 300 MB).
- Data validation: every ModTune key has a min/max in code, out-of-range values are clamped and logged, and unknown keys are ignored. A bad JSON file falls back to the previous layer and is logged (`ModDev.ev("content", ...)`). A pack cannot crash the game through data.

### 4.4 Manifest and version gating
One signed manifest per channel. It also carries the APK update data:

```json
{ "channel": "stable", "generated": "2026-11-25T12:00:00Z",
  "apk": { "version": "v46", "build": 53, "sha256": "...", "size": 91500000,
           "url": "https://github.com/JosePriet/docker-android/releases/download/v46/space-corsair-mod.apk",
           "patches": [ { "fromSha256": "<v45 apk sha>", "url": ".../v46/patch-v45-v46.scp", "sha256": "...", "size": 7100000 } ],
           "minBuildForOnline": 52 },
  "content": [
    { "id": "content-52-3", "build": 52, "contentApi": 1, "seq": 3, "requires": "content-52-2",
      "url": ".../content-52-3/content-52-3.zip", "sha256": "...", "size": 23400000,
      "notes": { "en": "...", "es": "..." } } ],
  "revoked": ["content-52-2b"] }
```

Rules on the phone:
- A pack is offered only when `build` equals this APK's build (`versionCode - 1000`, see build.sh:51) and `contentApi` equals `ModContent.API`. The API number goes up only when the data schema changes. A pack made for build 52 never loads on build 53.
- `requires` must already be installed, or it is downloaded in the same run (the whole missing chain, one sha check per file).
- `revoked` ids are removed from `active.json` at the next start (server-side rollback).
- `apk.minBuildForOnline`: below it, internet MP refuses to start with "Update the game to play online". LAN and solo are never blocked.

### 4.5 Rollback
- **Automatic (crash guard).** At start with a new chain, `boot.json` gets `{chain, starts:+1}`. After 60 s of play it is reset. If a start finds `starts >= 2` for a chain that was never confirmed, the phone switches back to `previous.json` and shows "The last update was turned off after it failed to start."
- **Manual.** Settings → Game updates → "Use built-in content only" (safe mode, ignores every pack) and "Undo last update" (switch back to `previous.json`).
- **Server side.** Put the pack id in `revoked`, or republish the manifest without it. Phones drop it at the next check.
- **APK.** Android refuses a lower versionCode, so a bad APK is "rolled back" by shipping a new build number with the old code. Packs are tied to their build, so this is clean.

## 5. Delta APK updater (code changes)

### 5.1 Patch format (`.scp`, "Space Corsair patch")
The goal is to rebuild the exact released APK byte for byte, including the v2/v3 signing block. The phone never signs anything, and the result's SHA-256 must equal `apk.sha256` in the manifest.
- Header: magic, `fromSha256`, `toSha256`, `toSize`.
- Body: a list of ops in output order. `COPY offset len` copies a range of the installed APK, and `DATA len bytes` inserts new bytes. The whole body is deflated.
- Generator (Python, release workflow): walk the new APK's local entries in order. For each entry whose name, CRC and compressed bytes match an entry in the old APK, emit `COPY` of the old local header plus data. Otherwise emit `DATA`. The APK signing block, central directory and EOCD are always `DATA` (small). Measured, this gives about 7 MB for v44 → v45.
- Applier (Java 8, about 150 lines in a new `ModUpdate`): read the installed APK (`getPackageCodePath()`, which is readable by the app), stream ops into `app_content/apk/new.apk`, hash it while writing, and delete it on mismatch.
- Patches are published for the last three releases. A phone on anything older, or one whose installed APK hash matches no `fromSha256` (for example the DEV build or a test pre-release), gets the full APK link instead.

### 5.2 Install
- `PackageInstaller` session API (Android 5+): write `new.apk` into a session and commit. No FileProvider is needed. A `file://` intent would throw `FileUriExposedException` at targetSdk 24.
- Manifest: add `android.permission.REQUEST_INSTALL_PACKAGES` (this one change needs `set_version_code.py`/manifest tooling). At targetSdk 24 it is not enforced (another thread read targetSdk 24 from the manifest; re-check this when coding), but it is required if targetSdk is ever raised to 26+, and Android shows the "Allow from this source" toggle under the game's name.
- First time: Android asks the player to allow installs from Space Corsair (Settings toggle). The game shows a one-line explanation before sending them there.
- Same package and same signing key (`work/key.p12`), so the save and prefs survive. The DEV APK is excluded (its hash matches no patch, and it gets no install offer).

### 5.3 The "updates build" (one-time APK release that makes packs possible)
1. `ModContent`: overlay lookup, pack verify/install, chain, crash guard, safe mode.
2. Overlay calls in `ModArt.open/listAssets`, `ModSound.copy`, `ModLang.dict` (+ `lang/en.json` remap in `ModLang.tr`), and a MusicManager hook for `music/`.
3. `ModTune`: `static float f(String key, float def, float min, float max)`, filled at start from `assets/data/tune.json` and then the pack layers. Balance constants move from `static final` to `ModTune.f(...)` reads, cached in plain static fields at load. First set: the numbers the owner tunes most (police damage multiplier, titan/flagship 3x damage, drones count/respawn, overshield pass, hold-range bands, events gap/payouts, chain window/step/cap, kill-time factor, refit cost multiplier, doomsday caps, loot/bounty rates). The full inventory is a GPT task (section 9).
4. Missions/lore/factions: read `data/*.json` at start through the same parser the generators use, with the generated Java as the fallback.
5. `ModUpdate`: manifest fetch and verify, patch apply, PackageInstaller.
6. UI (section 6), EN+ES text.
7. Release workflow additions (section 7).

## 6. In-game UI
- **Where:** Settings gets "Game updates" (EN) / "Actualizaciones" (ES), plus an inbox pop-up (the v43a-5 inbox system) when an update is found.
- **Check:** once a day at start, and on "Check now". Wi-Fi only by default (toggle: "Also use mobile data"). No check when the network is down, and no nagging.
- **Panel:** installed game version and build, content version (`content-52-3`), last check time. Then each available item with its notes (EN/ES), size and a button:
  - Content: "Download (23 MB)" → progress bar → "Restart to apply".
  - Game code: "Update game (7 MB)" → progress → "Install" (system dialog). If no patch fits: "Download full game (91 MB)", which opens the release link.
- **Safety:** "Use built-in content only" and "Undo last update" (4.5).
- **MP:** the multiplayer lobby shows its own content id, and a mismatch message says what to update (section 8).
- Downloads run on a background thread with resume (HTTP Range) and survive the app going to the background. They pause during a match (no bandwidth fight with the MP stream).

## 7. Hosting and publishing

**Primary: GitHub Releases on JosePriet/docker-android** (already used; public; no bandwidth bill; 2 GB per file).
- Content packs: one release per pack, tag `content-52-3`, marked pre-release so it never replaces the APK as "latest".
- Patches: attached to the APK release they produce (`v46/patch-v45-v46.scp`).
- Manifest: a fixed release tag `channel-stable` whose assets `content.json` and `content.json.sig` are replaced on every publish. Fixed URL: `.../releases/download/channel-stable/content.json`. A `channel-test` tag gives owner test builds the same flow (matching the existing `-test` pre-release habit).
- The phone uses only plain download URLs (redirects to objects.githubusercontent.com are followed by HttpURLConnection), never the GitHub API (60 requests/hour per IP).
- Workflow: extend `.github/workflows/release.yml` on `releases`, keeping the same owner-gated trigger style. A change to `content/VERSION` builds the pack zip from `content/<id>/`, signs it, and replaces the manifest. A change to `release/VERSION` also builds patches from the previous three APKs in `apk/` and updates `apk` in the manifest. Signing uses the `CONTENT_SIGN_KEY` secret. As today, nothing publishes without the owner's word.

**Optional mirror: the lobby Worker** (`sc-rendezvous`). A `GET /updates/<channel>` that caches and serves the manifest from GitHub. It could also act as a kill switch independent of GitHub (`revoked`). It stays small (manifest only; Cloudflare free plan is fine). Packs stay on GitHub. It is a production deploy, so it needs the owner's word. Not needed for version 1.

## 8. LAN / internet MP compatibility
- Today `ModLan.contentHash()` (ModLan.java:186) is the first 16 hex digits of SHA-256(APK file), sent in the handshake (:175). With packs, two phones with the same APK but different packs must be refused, because the art and the ModTune numbers differ (ModLanCheck limits and damage would disagree).
- New value: `contentHash = SHA-256( apkHash16 + "|" + contentApi + "|" + id1:sha1 + "," + id2:sha2 ... )`, first 16 hex digits. "Built-in content only" mode hashes as an empty chain. The handshake field stays the same, so there is no protocol change.
- Mismatch text is split so the player knows what to do: the handshake adds a second field with the readable chain id (`content-52-3`). Messages: "Same game, different content update (yours: content-52-2, host: content-52-3). Open Settings → Game updates." / "Different game version: update the game." (EN+ES).
- Lobby list: the room record carries the content id, and the client greys out rooms that do not match its own (client-side filter, so no server change is needed). A server-side filter can come later.
- ModLanCheck host checks read weapon and gear numbers through the same ModTune, and both sides are guaranteed identical by the hash.
- Save signature (ModSaveSig) is unaffected: packs never write the save.
- Later option (not in v1): the host sends a missing pack to a LAN guest directly. Skipped for now because it adds a transfer channel and the sha/signature checks still apply.

## 9. Work split (to save Claude usage)

GPT/Codex package: `/mnt/project-files/space-corsair/gpt-coding/content-updates/PASTE.txt`. Run it only after you approve this plan. Every task opens a draft PR and never merges, and Claude verifies the result before anything goes in.

| # | Task | Who |
|---|---|---|
| G1 | Tunables inventory: every balance constant in the mod Java (file:line, name, value, what it does, proposed ModTune key, safe min/max) → `tune-keys.json` + report | Codex |
| G2 | `.scp` patch tools: Python generator + Java 8 applier + test that rebuilds the v45 APK from v44 byte for byte | Codex |
| G3 | Pack tools: Python pack builder + manifest signer (ECDSA P-256) + validator, Java verifier test (signature, sha, zip-safety cases) | Codex |
| C1 | Overlay hooks, ModContent, ModTune wiring, MusicManager hook, UI, MP hash, release workflow, emulator stage, review of G1-G3 | Claude |
| T | Spanish UI strings for the new panel | Claude (owner rule: simple UI translations stay with the owning thread) |

Order: G1-G3 in parallel → C1 updates build (one APK release) → first test pack on `channel-test` → owner phone test → `channel-stable`.

## 10. Decisions for the owner
1. Approve the two-path design (packs without reinstall + 7 MB delta APK with one tap). Recommended.
2. Default network: Wi-Fi only (recommended) or also mobile data.
3. Online MP gate: refuse internet MP below `minBuildForOnline` (recommended), or warn only.
4. Worker manifest mirror: skip for v1 (recommended).
5. Which balance numbers go into ModTune first: G1's inventory comes back as a list to tick.

## 11. Limits
- New behaviour, new hulls with new mechanics, AI changes, UI screens and bug fixes in code always need the APK path (one tap, about 7 MB).
- The first updates build is a full APK download (about 92 MB) that one time.
- Players on Android with "install unknown apps" blocked by a device policy cannot use the APK path. They still get packs.
- Emulator tests for the updates build need a local manifest switch (`corsair_upd_url=file://...`) so CI can apply a test pack without the network.
