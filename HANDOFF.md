Status 2026-11-21: v45 RELEASED 2026-11-19 (build 52); entries below say "not released" as of their date.
Policy 2026-11-21 (see CLAUDE.md): project hooks active; two-agent check only for big code changes + final pre-release; one directive audit per release; models by task.

# Handoff (2026-11-22): CCEF elite police hunt CODED (not merged, not released)
Branch claude/project-thread-0fm5bo (head after this entry): ModCcef (owner spec space-corsair/proposals/ccef-design.md) + Codex PR #6 merged in (AI2_* flags stay off; B2ArenaAI now runs in build). Smali patch hooks58_ccef (Achievement.escapeCertainDeath, secret). JVM test VCCEF. ES strings i18n/gpt/v58_ccef_es.json. Changes: /mnt/project-files/audits/v58-ccef-changes.md; two-agent check: audits/v58-ccef-two-agent-check.md. Test APK (build 52 name v45, not a release): space-corsair/v58-ccef/space-corsair-ccef-test.apk. Emulator switch corsair_ccef starts a hunt. Needs: owner OK on the picks, emulator run, phone test, GPT ccef_<art> (scheme 3) later.

# Handoff (2026-11-27): content updates phase 2 CODED (PR into sc-mod-workspace, not merged, not released)
Branch claude/project-thread-u2nyvr. Packs can now carry data/tune.txt (ModTune, 27 balance keys), data/text.json (ModTables: mission/lore/faction/rep text), lang/en.json, music/<raw>.ogg (hooks60_music). ModContent.prune frees the installed update APK, old-build packs, stale .part; sfx read from the APK without a cache copy. Publishing: tools/updates/README.md. Changes: /mnt/project-files/audits/v46-content-phase2-changes.md. Left: emulator run with a test pack, owner OK, merge.

# Handoff (2026-11-23): Codex batch 2 + CCEF MERGED into sc-mod-workspace (not released)
628df49. Details: /mnt/project-files/audits/v46-test1-changes.md. Test APK v46-test1 build 53: /mnt/project-files/space-corsair/v46-test1/ (+ phone-test-checklist.md). Emulator run sc-v46t1 pushed (emulator-tests ee91c6b), results on emulator-results.
Left: two-agent check on 628df49, Blastron/GA test APKs (their PR #2 merged), compare owner phone results, directive audit, then bump release/VERSION. Codex PR #8 (art, base master) untouched.

# Handoff (2026-11-19): in-game updates MERGED (not released)
ModContent (signed content packs: modart/modsfx/lang, chain in app_content, crash guard, safe mode, undo) + ModUpdate (signed manifest from releases/download/channel-stable/, pack downloads, .scp delta APK + PackageInstaller, Updates entry in the flight menu). MP join hash covers the active packs. Publishing: tools/updates/README.md (pack_build.py, scp_make.py, manifest_sign.py, channel-workflow.yml for branch releases). Manifest key: /mnt/project-files/space-corsair/keys/content-sign.pem (never in git). Test: V60U (JVM), emulator stage V60U (run 147: pack download, restart, chain live, patch, installer, reinstall). Changes: /mnt/project-files/audits/v45-updates-changes.md. Not in yet: ModTune (balance numbers in packs), missions/lore JSON, music overlay.

# Handoff (2026-11-18): sector events + kill chain MERGED (not released)
On-screen rule (owner 2026-11-18 11:40, merged, not released): ModView (visible half-size from GameRenderer camZ/fov + camera.curZDecal). Normal enemies and police ships (ModV35.ai) steer back in when off screen and strafe at the edge instead of backing out; flagships and police titans (ModBal.holdRange) stay within visible radius + 40% of the hull (pulled back up to 2,000 u/s). Changes: /mnt/project-files/audits/v45g-onscreen-changes.md. Needs the phone test.
Balance (owner OK 2026-11-18 03:14 UTC, merged, not released): ModBal: Reaver/Kre'tari/Varn flagships hold 50-80% of gun range, police titans 40-65%; SRS Aegis 2-3 drones; FAV Warden battery x0.8; police titan overshield passes 30% of each hit (ModPoliceTitan.OVER_PASS). Emulator switch corsair_bal_off = all off. Police damage unchanged (owner: 3.0x+). Changes: /mnt/project-files/audits/v45f-balance-changes.md; test harness + runs on branch claude/project-thread-7o62kt. Needs the phone test.
Owner OK 2026-11-18 03:14 UTC: ModEvents (distress call, bounty target, salvage race; random kind 40/35/25, random 4-6 min gap, first at 90 s, open sectors only) and ModChain (6 s window, +10%/link, cap +50%) always on. Radar marker in ModMap.radarPoint2. Emulator switch corsair_event=distress|bounty|salvage<N>, corsair_near=event; stage P52E on emulator-tests (run 138: no crash). Changes: /mnt/project-files/audits/v45-events-changes.md. Proposals: space-corsair/proposals/dynamic-sector-events.md, kill-chain.md. Needs the phone test (payouts, chain, radar marker, feel).

# Handoff (2026-11-17): v45 audit fixes CODED
Branch claude/project-thread-fuw6ke head de64570 (from 7684902): all 66 audit decisions coded except the ones listed as
not done / not present in /mnt/project-files/audits/v45-audit-fixes-changes.md. check.sh 52 PASS. Verifier + cross-check:
no problems. Emulator run sc-v45e (emulator-tests 1caf6c0: V50L + station turrets vs flagship clip, F14) and the
netcloud two-runner check (.github/workflows/netcloud.yml on emulator-tests) pushed. NOT merged, NOT released.
Waiting on the owner: deploy of server/rendezvous (D1 /dev, D4 /sample, E5, E6) + DEV_KEY_SHA256 secret; the 30-day
sample retention (my number); my picks for F3 lance speed/range, F7 stock-sprite pads, F13 JOINT_TONE 0.65; nothing yet
lets the owner read reports/samples. Secrets: keys/cloudflare.env, keys/metered.env (never in git or audits).
Checks: run 132 no crash; F14 proven in run sc-v45f (stage V51T, Spartan HQ station guns hit a Reaver flagship); netcloud direct OK, Metered relay Allocate gets 400 after auth (changes file, section Emulator and cloud checks).
Fix list (owner picks 2026-11-17) done: see the changes file, section Fix list. Two builds: public (space-corsair/v45/space-corsair-v45-build52-public.apk) and private DEV (space-corsair/private/, DEV_KEY_FILE=keys/dev.key; never publish it). Service deployed with /admin. Emulator sc-v45g passed.
Second check (2026-11-17, /mnt/project-files/audits/2026-11-17-v45-second-check.md): S1-S17 fixed on claude/project-thread-fuw6ke (head a714759), service deployed. DEV code works offline in every build (owner). Admin page key is now keys/admin.key (secret ADMIN_KEY_SHA256), not the DEV key. GPT coding tasks: /mnt/project-files/space-corsair/gpt-coding/ (bug hunt, balance simulator, attack tests); verify anything GPT returns before merging.
Re-trace (2026-11-17 evening): rows B10 B11 B15 C2 C4 C5 C6 fixed on claude/project-thread-fuw6ke (a7f5293), emulator sc-v45i clean; NOT merged yet (needs owner OK). Codex tasks: repo codex/ + AGENTS.md (Codex PRs need review). GPT art #16/#17 packages in gpt-catchup.
 Open: Metered relay 400 (credential/plan side; our client passes vs coturn).


Older handoffs (state at v35 and earlier, v45 multiplayer/internet notes): docs/archive/HANDOFF-history.md (grep it, don't read whole).
