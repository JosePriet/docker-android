# Already found and fixed (2026-11-17) — do not report these again

| ID | Where | What was wrong (now fixed) |
|---|---|---|
| S1 | ModWarpOut | enemies that warped out went back to the object pool still invincible |
| S2 | build.sh, i18n | Spanish file not rebuilt on every build |
| S3 | ModLan.hostFrame | an online host could equip developer items mid-session |
| S4 | ModIntro | a damaged config file could wipe progress |
| S5 | ModLanCheck | the per-session damage statistics left out refit, reload and the disintegrator ramp |
| S6 | ModLan.duelFloor | a duel round could end while the shield would have absorbed the hit |
| S7 | ModLobby | a guest waited 15 s while a slow host heartbeat could take 20 s |
| S8 | ModLan | refusing a guest closed the host's own lobby silently |
| S9 | ModLobby.list | the developer tag column was dropped from the public list |
| S10 | service | removal and suspension records were never deleted |
| S11 | service /sample | statistics samples were accepted without a joined lobby |
| S12 | service admin CSV, scripts/sc_reports.py | cells starting with = + - @ were not quoted for spreadsheets |
| S13 | service /admin/data | listed the oldest 1000 rows instead of the newest |
| S14 | ModUi | the toolbar re-scanned the screen on every layout pass |
| S15 | ModLobby | developer registration said "refused" when merely offline |
| S16 | ModLobby | hosts retried every 5 s while the service was busy |
| S17 | service | the admin page used the same key as the developer build |

Known and accepted: a guest's declared loadout is trusted as declared; the in-memory list of just-closed lobbies is lost when the service restarts.
