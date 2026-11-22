# Batch 2 · Task 05 · Input handling

**1,000,000 JVM cases and 224,003 Worker requests passed** with seed `0xb2052026`. On the JVM the highest-impact change is that an unreadable preference snapshot is rejected before replacing the live save. In the service, a malformed measurement or a non-finite calculated ratio is rejected before consuming the session's sample allowance.

Game changes use `ModSave.strictInputs`, initially false. The declaration and preference checks use this flag at `ModLanCheck.java:110` and `ModQol.java:73`. The service validates inputs unconditionally. The tests run in-process with temporary files and a separate in-memory service store per scenario.

## Evidence and coverage

CONFIRMED means the cited code was followed or executed. The inventory describes behavior on the task base `a02248ca`. Its Java filenames are relative to `src/java/fr/testudo/spacecorsair/mod/`, smali filenames to `work/smali/fr/testudo/spacecorsair/storage/`, and `index.js` to `server/rendezvous/src/`. The test and fix references use the PR version.

| Exercised path | Count | What a passing case establishes |
|---|---:|---|
| QoL preferences | 125,000 | Signed read counts and arbitrary float bit patterns produce a valid unread count and slider value. |
| Refit supplies | 125,000 | Negative core counts read as zero. Adding a positive gain cannot wrap the stored count. |
| Build declarations | 125,000 | Writer-generated declarations round-trip. Truncation, excessive size and non-finite capacities produce an I/O rejection. |
| Lean render records | 125,000 | Writer-generated points, coordinate bit flips and proper prefixes decode to the expected values or EOF. |
| STUN attributes | 125,000 | The decoder returns the first complete value of a repeated attribute and discards incomplete values. |
| Lobby replies | 125,000 | Duplicate scalar fields, Unicode and trailing empty tab columns retain the protocol's semantics. |
| Language dictionary | 125,000 | Complete flat string objects install the expected entries. A truncated dictionary installs no partial entries. |
| Stock config | 125,000 | The game JAR's own config writer and reader agree on a changing zoom value. An incomplete JSON object raises the expected parse exception. |
| Service lifecycle | 224,000 | 16,000 independent 14-request scenarios check the actual response and stored values. Each creates, lists, joins, heartbeats, requests relay, reports, samples, signals unreachable, kicks, exercises closed privileged routes and closes. Includes duplicate form keys, mismatched versions, numeric boundaries and Unicode. |
| Streaming request size | 3 | UTF-8 form bodies of 11,999, 12,000 and 12,001 bytes arrive in variable-sized chunks. Only requests within the limit create a lobby. |

Additional CONFIRMED checks outside the totals:

- Seven additional stock save writer/reader pairs round-trip and reject 32 nonempty truncated prefixes apiece. Repeating inventory sanitation preserves the fixture's credit, level and XP. The save signature changes after each one-byte mutation and returns to its original value when the file is restored. `Batch2Inputs.java:135`, `Batch2Inputs.java:118`, `Batch2Inputs.java:160`.
- Every proper prefix of an actual serialized preference snapshot leaves the active marker, live file and current preferences intact. Retrying with the original bytes restores the pilot's file, scalar and string-set preferences. An old snapshot missing only the audio preferences keeps the current audio settings. `Batch2Inputs.java:76`.
- Both legacy and lean frames, captured with the game's render writer and passed through its compression and receive paths, publish the expected record count. The HTTP reader rejects a reply one byte over its limit. The switch reader rejects an oversized line. `Batch2Inputs.java:251`, `Batch2Inputs.java:319`.

The million cases count individual checks, including repeated boundary classes. The seed controls data selection. The service still generates its own ephemeral lobby identifiers. Assertions consume them in memory. The tests do not log them.

## Failure table

All rows are CONFIRMED by following the pre-change reader and running a post-change regression. The hex column uses **field-level** examples, with the enclosing writer-generated fixture held constant. Integers and floats below use big-endian notation for their values in typed preferences. Android owns the XML encoding on the device. Repetition denotes a byte repeated the given number of times.

| Reader on the task base | Failure class and prior behavior | Small input or boundary | Handling in this PR |
|---|---|---|---|
| `ModQol.java:78`, `ModV35.java:192` | Exception in reader. A typed preference getter can throw on the first wrongly typed value, leaving option initialization incomplete. | Empty string stored under a boolean or numeric key, zero content bytes | Return that key's existing default. Other settings still load. |
| `ModQol.java:82`, `ModSound.java:169`, `ModRep.java:78` | Accepted invalid state. Non-finite settings or standings propagate. | Float `7f 80 00 00` or `7f c0 00 00` | Restore the field default for non-finite values. Constrain shake and standings to the ranges used by their writers. |
| `ModQol.java:557` | Accepted invalid state. A negative read cursor gives an empty inbox an unread badge. Restore also accepts more messages than the writer retains. | Integer `ff ff ff ff`. The retention boundary is 41 nonempty lines. | Bound the cursor and retain the last 40 entries with the cursor adjusted to the retained suffix. |
| `ModV35.java:157`, `ModV35.java:192` | Accepted invalid state / lost balance. Negative cores display as stored and an increment at the integer limit wraps negative. | `ff ff ff ff`. At increment, `7f ff ff ff` plus one | Normalize the read count and saturate positive grants using a wider intermediate. |
| `ModTestMode.java:70`, `ModTestMode.java:111` | Progress-loss risk / profile identity uncertain. Restore previously advanced the active marker and replaced live files before reading every preference backup. A decoding failure could leave mixed profiles. | Empty existing marker or empty required preference file, zero bytes | Validate profile names and all preference maps before applying the backup. Journal the prepared switch, advance the marker after success, and keep multiplayer closed while identity is uncertain. |
| `ModDev.java:234` | Accepted invalid state. The first emulator command line had no size bound. | `61` × 4,097 | Refuse an overlong first line. Detecting the switch file still locks internet play. |
| `ModLang.java:180` | Accepted invalid state. The flat parser can install a value from an unfinished string, or leave a partial dictionary after a bad escape. | Two quote bytes followed by an opening quote, `22 22 22`, produce an empty entry in the legacy scanner. | Parse into a temporary map, require a complete flat object of strings, then install it. |
| `ModLanCheck.java:103` | Accepted invalid state at decode. A negative or non-finite declared capacity survived into the decoded object. | One four-byte capacity, e.g. `7f 80 00 00` | Reject invalid capacities at the declaration boundary. This finding establishes decoder behavior only. |
| `ModLobby.java:111` | Accepted invalid state. The HTTP read loop can pass a partial oversized reply to the ordinary reply parser. | First excessive total is 65,537 bytes | Refuse the entire oversized reply, including when the last read crosses the cap. |
| `index.js:28`, `index.js:31` | Accepted invalid state. The address pattern accepted malformed numeric endpoints. Integer fields accepted a numeric prefix with trailing junk. | Port field `30` is zero. Level field `32 78` previously produced level 2. | Check address syntax, octets and port range. Parse whole decimal integer fields. |
| `index.js:456` | Accepted invalid state. Invalid measurements could become zero or a valid-looking prefix. Finite operands could also produce a non-finite stored ratio. The session allowance had already been consumed. | One invalid measurement byte `78` | Reject invalid measurements and ratios with HTTP 400. A corrected sample for the same session succeeds exactly once. |

The post-fix campaign observed zero unexpected exceptions, timeouts or assertion failures. It did not establish an item-duplication or DEV-rule bypass. The profile recovery tests used synthetic local saves. SUSPECTED device-only effects include interruption while Android is committing preferences or while a socket is delivering frames. Neither hardware power loss nor two-device scheduling was exercised. No crash or bypass packet corpus is included.

## Reader inventory on the task base

### Stock saves and mod files

Each row is CONFIRMED by source inspection. For the first eight rows the tests also executed the production serializer and decoder. The platform restore and writeback behavior is source evidence.

| Reader | Format | Corrupt-input behavior |
|---|---|---|
| `ConfigStorage.smali:68`, `ConfigStorage.smali:297` | Game config JSON, including zoom, volume and first-start state | Validates a decoded config. Restore falls back to defaults on an exception. |
| `InventoryStorage.smali:61`, `InventoryStorage.smali:310` | Inventory JSON, item map, credits and capacity | Validates the restored inventory. Missing or unreadable inventory can take the default path. |
| `PlayerInfoStorage.smali:82`, `PlayerInfoStorage.smali:301` | Pilot JSON, level, XP and gear | A restore exception takes the default-player path. |
| `PriceStorage.smali:72`, `PriceStorage.smali:290` | Price-list snapshot JSON | Decode errors enter the restore fallback. |
| `MissionRepoStorage.smali:47`, `MissionRepoStorage.smali:285` | Mission repository JSON | Restore takes the default-repository path on an exception. |
| `AchievementStorage.smali:58`, `AchievementStorage.smali:313` | Achievement backup JSON | Restore catches exceptions and invokes its default path. |
| `GiftStorage.smali:86`, `GiftStorage.smali:285` | Redeemed-gift repository JSON | Failure invokes the default gift repository. |
| `LevelPropertiesStorage.smali:68`, `LevelPropertiesStorage.smali:297` | Visited levels and global flags as JSON | Bad JSON enters the level-properties fallback. |
| `MissionStorage.smali:45`, `MissionStorage.smali:261` | Per-mission JSON decoded into the supplied mission class | The loader catches an exception and returns null. |
| `StorageManager.smali:200`, `ModSave.java:18`, `ModIntro.java:22` | Restore dispatch, then in-memory item and pilot data | Sanitation removes unknown/null entries and repairs missing equipment. An indeterminate first-start predicate leaves progress alone. S4 is excluded. |
| `ModSaveSig.java:38`, `ModSaveSig.java:99` | Install/signature strings, lock expiry long, ordered file names and raw save contents | Missing/mismatched signatures and unreadable input follow distinct paths. Only a mismatch between nonempty signatures sets the lock here. Unreadable directories or signing exceptions yield an empty result. |
| `ModTestMode.java:66`, `ModTestMode.java:111`, `ModTestMode.java:139`, `ModTestMode.java:164`, `ModPrologue.java:350` | Profile selector text, complete marker, file tree and serialized preference maps. Prologue uses the same restore. | Missing markers fall back, malformed pending names are ignored, copy/deserialization failures can interrupt a switch. Audio is optional in older backups. |
| `ModDev.java:234`, `ModDev.java:252` | Emulator switch first line or file presence | I/O errors give null/false. Malformed text reaches the individual command parser. Presence is recorded before parsing. |
| `ModLang.java:43`, `ModLang.java:167`, `ModLang.java:180` | Locale preference or file override, packaged UTF-8 flat dictionary | Unknown modes select the system locale. The legacy dictionary scanner may retain earlier pairs if an escape fails. |
| `ModArt.java:261`, `ModArt.java:512`, `ModArt.java:816`, `ModSound.java:59`, `ModSound.java:79` | Packaged WebP/PNG or cached PNG, OGG assets/cache | Android decoders and the sound pool handle media. Art tries alternate asset paths and can return no bitmap. Audio loading catches failures. Native media decoding was outside the JVM campaign. |

### Other player preferences

CONFIRMED reading sites below. For typed Android getters, an absent key uses the supplied default. A value of the wrong storage type can throw at the getter. Whether that ends a particular UI or frame depends on the caller. These are reader semantics, not observations of a device crash.

| Reader | Format and behavior |
|---|---|
| `ModQol.java:73`, `ModQol.java:529`, `ModQol.java:551` | Boolean control settings, float shake, int migration version, newline inbox and int cursor. `clearProgress` enumerates entries. Unknown settings do not appear in the inbox. |
| `ModV35.java:147`, `ModV35.java:152`, `ModV35.java:192`, `ModV35.java:265`, `ModV35.java:297` | Integer refit, parts and cores, comma-separated long hunt times and boolean notice. Refit/parts are bounded on read. Bad individual timestamps become zero. |
| `ModV34.java:188`, `ModV34.java:260` | Comma-separated minute income, two ring indexes and faction story booleans. Income parse exceptions reset the in-memory window. |
| `ModRep.java:78`, `ModCapitals.java:130`, `ModDerelict.java:55` | Faction standings as floats and cooldown/completion times as longs. Numerically odd but correctly typed values reach the calculations. |
| `ModFaction.java:556`, `ModFaction.java:1438`, `ModFaction.java:1472`, `ModFaction.java:1479` | Delimited mission state, coordinates, marker arrays, completion switches and zone names. A parse exception clears the planned flag so the objective can restart. |
| `ModSector.java:40`, `ModSector.java:264`, `ModSector.java:449`, `ModSector.java:513`, `ModSector.java:537`, `ModSector.java:561`, `ModSector.java:584` | Long play/field times, pursuit counts, newline records of delimited wreck pieces and loot state. Short records/pieces are skipped. Numeric conversions in long-enough records can throw. |
| `ModLan.java:1670`, `ModLan.java:2384`, `ModLanUi.java:57`, `ModLanUi.java:64`, `ModLanUi.java:70` | Completed mission and previous position strings, nickname/country preferences. Names are sanitized and malformed position data goes through the position restore fallback. |
| `ModLobby.java:127`, `ModLobby.java:138`, `ModLobby.java:156`, `ModLobby.java:225`, `ModLobby.java:229` | Boolean service preferences and an optional first-line packaged build asset. Missing/unreadable build data does not confer registered-build status. |
| `ModSound.java:169`, `ModSound.java:172`, `ModSound.java:192`, `ModLang.java:43` | Effects volume, audio migration flags and language setting. The effects clamp handles ordinary out-of-range values but admits NaN at baseline. |
| `ModFitting.java:188`, `ModComms.java:363`, `ModMissile.java:196`, `ModPrologue.java:120`, `ModLance.java:132`, `ModLance.java:205`, `ModLance.java:247` | Typed unlock, notice, logging and completion flags. Missing keys default false. |
| `ModUi.java:504`, `ModPolice.java:756`, `ModPolice.java:770` | Comma-separated ship names and a test-wave preference. Empty name tokens are skipped. The wave reader inspects the stored type or key presence. |

### Multiplayer readers

CONFIRMED source inspection. The additional frame check exercises production compression, normal message dispatch and both render formats. Socket handshakes, TURN negotiation and timing-sensitive link paths here were inspected at source.

| Reader | Format | Corrupt-input behavior |
|---|---|---|
| `ModNet.java:110`, `ModNet.java:222`, `ModNet.java:253`, `ModNet.java:275` | UDP demultiplexer, transaction IDs, padded STUN attributes and address values | Ignores unidentified/short headers, retains the first complete attribute, returns null for malformed address families or lengths. |
| `ModNet.java:333`, `ModNet.java:419`, `ModNet.java:454`, `ModNet.java:542`, `ModNet.java:555` | Literal endpoint strings, TURN responses, channel data and data indications | Invalid endpoint strings return null. Missing allocation data fails allocation. Channel data needs a known channel, sufficient bytes and the peer protocol tag. |
| `ModNet.java:787`, `ModNet.java:823`, `ModNet.java:868`, `ModNet.java:936`, `ModNet.java:966`, `ModNet.java:1032` | Peer handshake/control/data, segment offsets, ACKs, latest-only fragments and length-prefixed application frames | Dispatch checks header sizes. Old or invalid fragment sets are dropped, and invalid application frame lengths raise an I/O error. |
| `ModLan.java:216`, `ModLan.java:257`, `ModLan.java:302`, `ModLan.java:424`, `ModLan.java:483`, `ModLan.java:514`, `ModLan.java:678` | Network join/rejoin result, modified UTF peer identity, LAN discovery announcement and version handshake | Malformed/unknown discovery records are ignored. Invalid hello/version cannot complete the handshake. Bounded handshake strings reject excessive byte lengths. |
| `ModLan.java:542`, `ModLan.java:798` | Type plus signed length, optional deflated frame/state | Bad length, short stream or mismatched inflate result raises an I/O error. BYE ends the session. PING has no application body decoder. |
| `ModLan.java:1208`, `ModLan.java:1216`, `ModLan.java:1234`, `ModLan.java:1236`, `ModLan.java:1274` | Texture definitions, full/lean host frame and guest state, optional mission/duel/marker sections | Invalid resource names are dropped. Unknown styles can omit a record. Counts are checked before dispatch to record readers. Required non-finite floats are rejected. |
| `ModLan.java:1298`, `ModLan.java:1306`, `ModLan.java:1312`, `ModLan.java:1331`, `ModLan.java:1990`, `ModLan.java:2251` | Kill, chat, build declaration, queued shot and reflected primitive/vector fields | Limits on body size and queues precede application. Invalid shot class/fields are dropped. Chat/kill rate limits can drop records. |
| `ModLan.java:1372`, `ModLan.java:1534`, `ModLanSync.java:192`, `ModLanSync.java:209` | Legacy sprite/FX/text/point/bar records, radar marks, fixed-length styles and lean records | Unknown render kinds raise I/O errors, colors/dimensions use per-record normalization, missing style references omit drawing. |
| `ModLanCheck.java:103`, `ModLanCheck.java:175` | Level, refit, two float capacities and four modified-UTF gear names | Oversized declarations and truncated fields are rejected. Names are bounded. The baseline reader accepts non-finite capacities before downstream limit calculations. |
| `ModLobby.java:57`, `ModLobby.java:86`, `ModLobby.java:317`, `ModLobby.java:328`, `ModLobby.java:391`, `ModLobby.java:496`, `ModLobby.java:521`, `ModLobby.java:620`, `ModLobby.java:704` | HTTP body, first status line, scalar fields, tabular lobby/heartbeat rows, relay fields and candidates | Last duplicate field wins. Oversized rows are skipped. Malformed candidates are dropped. Failed calls return an empty reply. |

### Service readers

CONFIRMED source on the task base.

| Reader | Format and recovery |
|---|---|
| `index.js:532`, `index.js:41`, `index.js:200` | Worker and registry read bounded request streams, then URL-encoded fields, query and path. Over-limit input returns 413. The last duplicate field wins. Unsupported methods and unmatched routes have explicit responses. |
| `index.js:22`, `index.js:239`, `index.js:269`, `index.js:286`, `index.js:323` | Create/list/join/beat fields include names, country, version, sector, counts, candidates and relay. Text is shortened/filtered. Version mismatch takes the version response. Numeric and endpoint validation findings are above. |
| `index.js:225`, `index.js:345`, `index.js:362`, `index.js:370`, `index.js:435`, `index.js:442` | Lobby action path, close/kick/unreachable, TURN and DEV forms. Routes check membership or required authority before acting. Unknown lobby or unauthorized operations have explicit error responses. |
| `index.js:456`, `index.js:480`, `index.js:490` | Sample measurements, admin data and report fields. Telemetry formerly allowed numeric prefixes and non-finite derived ratios. Reports cap text and require an associated lobby. |
| `index.js:104`, `index.js:131`, `index.js:143`, `index.js:155`, `index.js:407` | Durable storage contains lobby rows, usage counts, expiry records and cached credentials. Provider usage/credential responses are JSON. A rejected usage read can retain the last-known state. Malformed persisted data can reach the registry's general error path. The campaign uses in-memory storage and no provider. |

## Reproduction

From the repository root with JDK 17 and Node 24. The Java output directory is disposable. The registry suite prints one line per check. The command below prints its final line and propagates failure.

```sh
export PATH=/workspace/setup/tools/jdk17/bin:$PATH
mkdir -p /tmp/mc && javac --release 8 -nowarn -cp work/game_v168.jar:tools/android-4.1.1.4.jar:work/stubcls -d /tmp/mc src/java/fr/testudo/spacecorsair/mod/*.java
javac --release 8 -cp /tmp/mc:work/game_v168.jar:tools/android-4.1.1.4.jar:work/stubcls -d /tmp/mc work/dtest/fr/testudo/spacecorsair/mod/Batch2Inputs.java
java -Xmx256m -cp /tmp/mc:work/game_v168.jar:tools/android-4.1.1.4.jar:work/stubcls fr.testudo.spacecorsair.mod.Batch2Inputs
cd server/rendezvous
node test/registry.test.mjs > /tmp/b205-registry.log && tail -1 /tmp/b205-registry.log
node test/fuzz.test.mjs
```

```text
Note: Some input files use or override a deprecated API.
Note: Recompile with -Xlint:deprecation for details.
Note: Some input files use unchecked or unsafe operations.
Note: Recompile with -Xlint:unchecked for details.
JVM seed=0xb2052026
JVM OK families=8 casesPerFamily=125000 total=1000000
REGISTRY OK
service seed=0xb2052026
SERVICE OK scenarios=16000 requests=224003
```
