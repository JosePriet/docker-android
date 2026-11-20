# Robustness test results

## Retained failures and exact triggering inputs

All failures below remain assertions marked `KNOWN-BUG`; both new runners exit 1
while they reproduce. No service/mod implementation was changed. R1 and parts of
J1 are strict task-contract differences, distinguished from reachable state bugs.

| ID | Trigger | Observed result and scope |
| --- | --- | --- |
| R2 | Create a lobby, never join a guest, heartbeat `full=1`, then submit `/sample` with that lobby's runtime authorization. Also: join once, sample once, heartbeat `full=0`, then `full=1`, sample again without a new join. | Both samples return 200. `beat()` increments `sessions` on every false-to-true full transition; it does not establish a guest session. These are residual paths around S11: the existing no-lobby/no-full sample checks still pass. |
| R3 | Seed 200 lexically first fresh `kick:` records and 200 fresh `ban:` records, then one expired record of each kind after that first page. Issue requests triggering two sweeps over an hour apart. | Both expired records remain. `sweep()` always requests the first 200 keys and has no cursor; a fresh first page prevents progress. This extends S10 coverage beyond the small existing fixture. |
| R4 | One `kick:` value contains two entries: `{by: ID(800), at: now-2*DAY}` and `{by: ID(900), at: now}`. Trigger a sweep. | The old entry remains because one current entry keeps the whole array. S10's whole-record deletion works, but mixed-age arrays are not pruned. |
| J2 | On a started link, receive 900 sequential K_DATA packets of 1,100 payload bytes without consuming them; queue 512 following segments while leaving one segment missing; then receive the missing segment at offset 990,000. | One parser call allocates about 2 MiB and leaves 1,554,300 reliable bytes buffered, above the 1 MiB limit. `onData()` checks the new segment before draining `ahead`; the drain does not recheck the cap. All packets fit the wire's receive buffer and carry the matching session number. |
| J1 | Directly call `attrs` with arrays of length 0..3, `Turn.onChannel` with length 0..3, or `Turn.onData` with length 0..19 (including truncations of valid packets). | Unchecked `ArrayIndexOutOfBoundsException`, rather than `IOException`/safe rejection. STUN's 20-byte wire gate prevents the attrs/indication short-input cases over the wire. Channel packets of length 2 or 3 can reach `onChannel`; `Wire.loop` catches their exception. These are reader-contract failures, not evidence of an uncaught network-thread crash. |
| R1 | Route matrix below: e.g. `POST /lobby` with a valid synthetic install and `nick` containing 4,096 `x` characters; authenticated `/sample` with `peakShot=NaN`; authenticated heartbeat `level=-1`; raw `ver=%00%ff%ZZ%`; conflicting duplicated fields with an invalid first value and a valid last value. | 55 inputs return 200 rather than the task's required 4xx. Normalizers truncate/clean/clamp values, and form parsing accepts the last duplicate. `/admin` also accepts arbitrary query parameters. This is a mismatch with the task's blanket rejection rule; accepting a sanitized nickname, report text, or an ignored admin-page query is not by itself a security bug. |

`ID(n)` is the synthetic, zero-padded 32-character hex helper in the service
test. Authentication values are generated at runtime, never embedded or printed.
No actual credentials, addresses, player identities, or personal data are used.

## Part A: service cases

`server/rendezvous/test/stress.test.mjs` imports the real `Registry`, uses the
existing suite's in-memory storage and `call()` response format, and runs without
npm packages. Its Web Crypto fallback and import of the unchanged worker source
as an ESM data URL support Node 18 even though no package.json declares .js ESM.
Each matrix case
gets a new registry and a valid lobby/guest/authentication fixture, so rate limits
and previous destructive requests do not hide the route being tested.

All 13 routes are covered: `/lobbies`, `/admin`, `/lobby`, `/turn`, `/report`,
`/dev`, `/sample`, `/admin/data`, and lobby `join`, `beat`, `close`, `kick`,
`unreach`. Each gets:

- The opposite route method, plus PUT, DELETE, PATCH, HEAD: clean 4xx.
- A 20,002-byte POST body: 413, including on read-only routes.
- Long fields, Unicode, NUL, malformed raw percent escapes, negative/NaN values,
  and conflicting repeated keys: strict 4xx assertions; accepted cases retain R1.

The targeted field is `ver` for read-only query cases, `nick` for create/join,
`code` for TURN, `text` for reports, `key` for DEV/admin data, `peakShot` for
samples, `level` for heartbeat, `token` for close, and `id` for kick/unreach.
Negative/NaN strings in textual fields are included to honor the requested
matrix; numeric range validation is meaningfully exercised in heartbeat/sample.

Additional cases cover 1,500 requests from one caller, rate recovery and caller
isolation, many installs behind one address, the four-slot waiting queue, wrong
codes/authorization, removed/full lobbies, repeated reports, stranger reports,
real joined samples, no-guest samples, duplicate samples across addresses and
restart, and the single post-close sample allowance.

Privacy checks inspect every stored record in the lifecycle fixture for all
synthetic connection addresses and forbidden connection fields. Samples must
omit supplied install/nickname fields; host replies must use per-lobby guest
aliases. Restart retains lobby authorization, guest aliases, removals and sample
counts, but loses host connection addresses and the rate salt/caller hashes.
The privacy assertions cover connection metadata, not arbitrary free-text
redaction of user-authored report contents.

Expiry checks cover the two-minute listing/join cutoff, two-hour lobby/storage
removal, 24-hour removal expiry, multi-page cleanup, and mixed-age entries.
Admin data refuses missing, incorrect and DEV authentication, with successful
admin authentication as a positive control.

Observed on both Node v18.20.8 and v24.22.1:

```text
cases=224 known-bug-failures=59 unexpected-failures=0
STRESS FAILED 59
```

That is 165 passing assertions, 55 R1 contract differences, and four assertions
covering R2 (two), R3 and R4. No case returned a 5xx or threw unexpectedly.
The pre-existing registry runner prints `REGISTRY OK`.

## Part B: JVM cases

`work/dtest/fr/testudo/spacecorsair/mod/V52F.java` is a Java 8 plain `main` using
the actual `ModLanCheck.decode`, `ModNet.attrs`, `addrOf`, TURN channel/indication
readers, `Link.onPeer` and `Link.next`. Positive controls verify declaration,
address, STUN attribute, TURN dispatch, reliable frame and latest reassembly
round trips. A stopped wire and link timer prevent outgoing traffic. Reflection
resets receive state and supplies finite input/EOF; production readers are not
replaced or modified.

- 20,000 byte arrays of length 0..2,048 with fixed seed 52003 are each sent to
  eight reader variants (160,000 calls). The second packet variant forces a
  matching session header and cycles all eight kinds, so random session numbers
  cannot bypass the substantive packet readers.
- Every truncation and every individual bit flip of valid declarations,
  address attributes, STUN indications, TURN channels, frames and all eight
  peer packet kinds.
- Length fields 0, -1 and Integer.MAX_VALUE; unsigned 16-bit formats use the
  corresponding low 16 bits. STUN message and attribute lengths are exercised
  independently. Latest fragment count/offset mutations, null and oversized
  declarations, and NaN/both infinities in both declaration floats and opaque
  frame payloads are included. Transport is not expected to interpret floats
  inside an opaque payload.
- Each call runs on one daemon worker with a 250 ms deadline. Timeout cancels
  the call and aborts, preventing a hung parser from overlapping subsequent
  inputs. Finite frame inputs set EOF so waiting for absent stream bytes is
  not misclassified as a parser hang.
- HotSpot/OpenJDK per-thread allocation counters measure allocated bytes,
  not net heap growth after GC. Class warmup, input construction and state
  preparation are excluded; counter/reflection bookkeeping adds a small
  conservative overhead. The runner requires counters instead of silently
  skipping the 1 MiB assertion. The separate reachable backlog case exercises
  state-dependent allocation that small independent packets would miss.

Compiled with `javac --release 8 -nowarn`; run on OpenJDK 21.0.13 with a 128 MiB
heap. Final summary:

```text
V52F known-bug-failures=300 unexpected-failures=0
V52F calls=163225 max-allocated-bytes=2105464 timeout-ms=250
V52F FAILED 300
```

J1 accounts for 298 unchecked exceptions (43 attrs, 43 channel, 212 indication);
J2 accounts for the allocation and buffered-size assertions. No deadline was
exceeded. Allocation byte counts can vary slightly with JVM/JIT behavior.
`V52F VALUES-OK` is printed only when all assertions pass; known failures are
not swallowed to obtain that success marker.

## Reproduction and scope

Read instructions/context from source branch `claude/project-thread-fuw6ke`
at `f05df25c14b8c70be15c9ce1794e667b99f95210`. Its production code and binary
dependencies match `sc-mod-workspace` at
`f9f0a7bdbc8af1402d98abdc2052aa0ab76cecb3`. The PR branch is based on the latter
so the PR contains exactly the three requested files, without importing task
scaffolding or other tasks' data.

From the repository root, with a JDK providing `javac` on PATH:

```sh
cd server/rendezvous
node test/registry.test.mjs
node test/stress.test.mjs
```

From the repository root for Java:

```sh
mkdir -p /tmp/mc /tmp/v52f
javac --release 8 -nowarn -cp work/game_v168.jar:tools/android-4.1.1.4.jar:work/stubcls -d /tmp/mc src/java/fr/testudo/spacecorsair/mod/*.java
javac --release 8 -nowarn -cp /tmp/mc:work/game_v168.jar:tools/android-4.1.1.4.jar:work/stubcls -d /tmp/v52f work/dtest/fr/testudo/spacecorsair/mod/V52F.java
cd work/dtest
java -Xmx128m -cp /tmp/v52f:/tmp/mc:.:../game_v168.jar:../../tools/android-4.1.1.4.jar:../stubcls fr.testudo.spacecorsair.mod.V52F
```

The mod compilation succeeds with only the existing deprecation/unchecked
notices. The signing-key-dependent full build was not run. No patch hooks,
gameplay, service, assets, build scripts, tools or CI files were changed.
