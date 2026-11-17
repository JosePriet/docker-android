# Context for the bug hunt (v45, build 52)

- Game: Space Corsair 1.5.1 (Android, 2D space shooter). The mod adds hulls, refits (10 levels, 5 stages), faction weapons, police escalation, flagships, titans, a prologue, LAN co-op/duel and internet play.
- Threads: the game loop runs on a game thread; Android UI on the main thread; network on its own threads (ModNet links, ModLobby service calls). Mod code that touches game objects must run on the game thread.
- Internet play: the host opens a lobby on the service (code + token), heartbeats every 8 s (20 s after 2 minutes waiting), guests join by code or from the public list. Direct UDP hole punching first, then a TURN relay (credentials from the service). "Hide my IP" skips direct.
- Owner decisions that the code must keep:
  - The DEV gift code works offline in every build. Internet games refuse DEV ships and DEV gear, except for the owner's private DEV build (it carries a key asset and the service marks that install as DEV).
  - The test profile (10 taps on the "Cheater" achievement) can never play multiplayer, LAN or internet. Test switch files on the device turn internet play off until the game restarts.
  - Hosts check what guests send: damage per shot and per second are clamped to ceilings computed from the guest's declared build (`ModLanCheck`).
  - Samples and reports are kept 30 days; kick/ban records 24 hours. The service stores no IP addresses.
  - Police ships use their sector owner's weapons and are exempt from weapon mismatch bonuses and penalties; police are always elite.
  - Duel (PvP) round: a round ends when a ship would drop to 1 hull; the loser explodes and respawns.
- Not in scope: art, balance numbers, Spanish text.
