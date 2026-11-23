"""Read hook recipes as text and correlate them with executable instructions. Never import a recipe."""

from collections import defaultdict
from pathlib import Path
import re

PATCH = Path("src/patch")
SMALI = Path("work/smali")
PREFIX = "Lfr/testudo/spacecorsair/mod/"
# Recipe ownership, including instructions constructed by a loop or replacement template.
RECIPES = {
    "": "Mod.sideCheck creditKiller isDrone tick beamShoot drawBeam frame fixTextures launchDrones addBullet playLaserSound onMissileLock",
    "2": "ModUi.items ships Mod.applyShipBonuses",
    "3": "ModSpecs.gear ModBoss.addMissions text ModSave.sanitize ModLoot.onEnemyKilled Mod.zoomBonus",
    "4": "ModArt.load shipIcon ModShips.cargoMult canBuy",
    "6": "ModQol.deathFee gateLabel drawHud buttons onLevelUp settings confirmSell camCenter joyTouch joyUp galaxyExtra civilAttacked policeLevel",
    "7": "ModQol.missionCredits bounty sellFactor",
    "8": "ModDev.spec",
    "9": "ModDev.giftHook",
    "10": "ModArt.missile",
    "11": "ModScroll.attach",
    "12": "ModCaps.drawOver ModTitan.bullet onMissile blastRange",
    "13": "ModWeapons.spec onImpact",
    "14": "ModCapitals.drawable physic prune draw",
    "16": "ModFaction.addAvailable byId",
    "17": "ModIcons.id applyBackground applyImage",
    "18": "ModRep.spec",
    "19": "ModComms.hailing",
    "21_shield": "ModShield.onRepair",
    "21_tree": "ModShipTree.onKey",
    "22_font": "ModLang.glIndex glPut",
    "22_lang": "ModLang.apply applyApp",
    "23_orig": "ModArt.gameTex",
    "30": "ModShield.rate ModLive.draw hit ModWreck.onDestroyed ModDev.noDialog",
    "30b": "ModLive.frameStart",
    "34": "ModV34.xpCap shipLife want scale elite",
    "34b": "ModV34.freighter freighterArt",
    "34c": "ModWeapons.reskinSpec",
    "35": "ModV35.ai skin tag tagR tagG tagB ModQol.missionPay",
    "36": "ModSound.sfx musicResume settingsBar ModMap.asteroidRadar",
    "37_wreck": "ModWreck.blastPush beamTarget",
    "40": "ModTestMode.beforeRestore afterRestore canJumpTo couldJump jumpCost jumpTime on achievementTap achievementsScreen",
    "42a": "ModMissile.fetch track on",
    "42b": "ModPolice.killedByPlayer",
    "42d": "ModCalm.add",
    "42e": "ModMap.fontPx",
    "44_poi": "ModPoi.drawable",
    "45_intro": "ModIntro.draw dt touch holdDialog firstStart",
    "46_prologue": "ModPrologue.level blockSave",
    "46b_prologue_damage": "ModPrologue.damage",
    "47_policeguns": "ModPolice.factionGuns",
    "47_skull": "ModMap.radarPoint2",
    "48_lance": "ModLance.spec",
    "49_lan": "ModLan.beforeSwap alsoVisible",
    "49b_lan_count": "ModLan.countsAsEnemy",
    "53_lan_nopause": "ModLan.menuOpening keepRunning",
    "54_testjump": "ModTestMode.missionAllowsJump",
}
ORIGIN = {}
for suffix, tokens in RECIPES.items():
    for token in tokens.split():
        if "." in token:
            owner, token = token.split(".")
        ORIGIN[owner, token] = suffix

# Explicit non-call edits. Each matcher selects actual fields or instructions in the applied snapshot.
# An expanded enum also defines fields; its <clinit> row identifies the owning method.
EXTRA = [
    ("2", 44, "SpaceObjectType", "<clinit>", 'const-string v1, "alienUfo"', "stock hull rarity entries"),
    ("2", 48, "PlayerShipSpecBuilder", "getAlienUfo", "LootRarety;->EXCEPTIONAL", "stock UFO rarity"),
    (
        "7b",
        11,
        "SpaceObjectType",
        "<clinit>",
        'const-string v1, "hullViper"',
        "refresh hull prices from ModShips; first hull block",
    ),
    ("15", 8, "FragmentActivity", "onCreate", "if-eqz p1, :mod_nofrag", "drop fragment state"),
    ("22_font", 22, "GLText", "<init>", "0x74", "glyph atlas arrays"),
    ("30c", 7, "RenderQueue", "*", "0x9c4", "draw queue capacity"),
    ("34", 15, "XpBuilder", "field", "LEVEL_MAX:I = 0x28", "level cap"),
    ("34", 21, "XpBuilder", "getNextLevelXp", "0x28", "level cap"),
    ("34", 26, "PlayerInfo", "addXp", "0x28", "level cap"),
    ("36b", 4, "Asteroid", "*", "0x40400000", "radar point size"),
    ("36b", 5, "BigAsteroid", "*", "0x40900000", "radar point size"),
    ("42f", 8, "Config", "*", "->musicVolums:F", "music volume default"),
    (
        "42e",
        13,
        "GameThread",
        "drawOnRadarAndCalcNearby",
        "ModMap;->radarPoint2",
        "prior radarPoint call replaced by hooks47_skull",
    ),
    ("6", 63, "Element", "applyProjectileHit", "ModLive;->hit", "prior damage notification hook superseded"),
]
for suffix, line, key in [
    ("4", 20, "MOD_VIPER"),
    ("5", 20, "MOD_RAVEN"),
    ("6", 142, "MOD_CRIMSON_THRONE"),
    ("8", 11, "MOD_DEV_PROTOTYPE"),
    ("20", 17, "MOD_SECRET_SPARTAN"),
]:
    EXTRA.append((suffix, line, "PlayerShipSpec$Image", "<clinit>", ' "' + key + '"', "expand Image enum"))
for cls, fields, line in [
    (
        "RenderElement",
        "a b backgroundMode g pointSize position r renderType spin text textSize zoomInsensitive",
        24,
    ),
    ("RenderQueue", "queueSize waitingQueueIndex", 25),
    ("Drawable", "mCrop", 27),
    ("Game", "textureLibrary", 28),
    ("GameThread", "xDelta yDelta", 29),
]:
    for field in fields.split():
        EXTRA.append(("49_lan", line, cls, "field", field + ":", "widen field access"))


def phase(signature):
    name = signature.split("(")[0].lower()
    if name == "inithyperdrivejumprequest":
        return "event / jump request"
    if name in ("<clinit>", "<init>") or name.startswith(
        ("load", "init", "restore", "bindui", "oncreate", "onresume")
    ):
        return "load / initialization"
    if (
        any(
            word in name
            for word in (
                "physic",
                "draw",
                "render",
                "frame",
                "doia",
                "swapqueues",
                "snapto",
                "iselementvisible",
            )
        )
        or name == "run"
    ):
        return "frame / update"
    return "event / " + signature.split("(")[0]


def collect(declarations):
    scripts = {p.stem[5:]: p for p in PATCH.glob("hooks*.py")}
    lines = {k: p.read_text().splitlines() for k, p in scripts.items()}
    rows, roots = [], set()
    extras = defaultdict(list)
    for rule in EXTRA:
        extras[rule[2]].append(rule)
    for path in sorted(SMALI.rglob("*.smali")):
        if "mod" in path.parts:
            continue
        text = path.read_text()
        if PREFIX not in text and path.stem not in extras:
            continue
        arg = None
        sig = "field"
        for i, s in enumerate(text.splitlines(), 1):
            if s.startswith(".method "):
                sig = s.split()[-1]
            if s.startswith(".end method"):
                sig = "field"
            for suffix, ln, cls, scope, needle, note in extras[path.stem]:
                if needle not in s or (scope != "*" and sig.split("(")[0] != scope):
                    continue
                if scope == "field" and not s.startswith(".field "):
                    continue
                rows.append(
                    [
                        f"{scripts[suffix]}:{ln}",
                        f"{path}:{i}",
                        sig,
                        "",
                        "",
                        "class load" if sig == "field" else phase(sig),
                        note,
                        "CONFIRMED",
                    ]
                )
            const = re.match(r"\s*const(?:/\w+)? v10, (0x[0-9a-f]+)", s)
            if const:
                arg = int(const[1], 16)
            if PREFIX not in s:
                continue
            match = re.search(re.escape(PREFIX) + r"([\w$]+);->([^\s,]+)", s)
            if not match:
                continue
            cls, descriptor = match.groups()
            name = re.split(r"[( :]", descriptor)[0]
            symbol = cls + "->" + descriptor
            roots.add(symbol)
            suffix = ORIGIN.get((cls, name))
            ln = None
            if cls == "ModShips" and name == "spec":
                suffix = (
                    "4" if arg < 15 else "5" if arg < 38 else "6" if arg == 38 else "8" if arg == 39 else "20"
                )
            if cls == "ModStockSpawn":
                suffix, ln = "34", 54
            if suffix is not None and ln is None:
                source = lines[suffix]
                hits = [
                    j
                    for j, v in enumerate(source, 1)
                    if not v.strip().startswith(("#", "assert", "print"))
                    and re.search(r"->" + re.escape(name) + r"[( :]", v)
                ]
                if hits:
                    ln = hits[0]
                    if (
                        cls == "Mod"
                        and name in ("addBullet", "playLaserSound")
                        and path.stem == "PlayerCanon"
                    ):
                        ln = hits[-1]
                    if cls == "ModDev" and name == "spec":
                        ln = hits[arg]
                else:
                    ln = next(
                        j for j, v in enumerate(source, 1) if name in v and not v.strip().startswith("#")
                    )
            decl = declarations.get(symbol)
            if not decl:
                raise ValueError(f"unresolved applied target {symbol} at {path}:{i}")
            rows.append(
                [
                    f"{scripts[suffix]}:{ln}" if suffix is not None else "",
                    f"{path}:{i}",
                    sig,
                    symbol,
                    decl[1] + ":" + decl[2],
                    phase(sig),
                    "applied instruction"
                    if suffix is not None
                    else "applied instruction; no matching versioned recipe",
                    "CONFIRMED",
                ]
            )
    return rows, roots
