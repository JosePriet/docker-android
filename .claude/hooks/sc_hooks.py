#!/usr/bin/env python3
"""Claude Code hooks for the game-restoration project (Space Corsair, Blastron, Global Assault).

Usage (from settings.json):  python3 sc_hooks.py <mode>
  pre-bash   PreToolUse on Bash: rule guards + trims noisy build/diff output
  pre-read   PreToolUse on Read: blocks binaries and whole reads of huge files
  stop       Stop: once-per-session reminders (two-agent check on big code changes; long threads)
  start      SessionStart: a few lines of rules

Fails open: any internal error lets the tool call run unchanged.
Bypass for the soft guards: put SC_HOOK_OK=1 in the command (key and Downloads guards cannot be bypassed).
"""
import json, os, re, shlex, subprocess, sys, time

AUDITS = "/mnt/project-files/audits"
BIG_READ_BYTES = 256 * 1024
BIN_EXT = {".apk", ".aab", ".obb", ".dex", ".jar", ".class", ".so", ".arsc", ".p12", ".jks",
           ".keystore", ".zip", ".gz", ".tgz", ".tar", ".7z", ".rar", ".bin", ".dll", ".exe",
           ".mp4", ".mkv", ".webm", ".mp3", ".ogg", ".wav", ".unity3d", ".assets", ".bundle"}
VIEWABLE_EXT = {".png", ".jpg", ".jpeg", ".gif", ".webp", ".pdf", ".ipynb"}
KEY_RE = re.compile(r"(\.p12|\.jks|\.keystore|\.key)$|(^|/)keys/|(key|priv)[^/]*\.pem$", re.I)  # work/cert.pem is public
NOISY_RE = re.compile(r"^(?:bash\s+(?:\./)?build\.sh|\./build\.sh|\./gradlew|apktool\s|"
                      r"java\s+-jar\s+tools/[\w./-]*(?:apktool|smali|baksmali|uber-apk-signer|dex2jar)[\w.-]*\.jar|"
                      r"jadx\s|adb\s+(?:logcat\s+-d|install)|dotnet\s+(?:build|publish))")
# Commands rewritten (and auto-allowed) must be one plain command: optional `cd <path> &&`, optional plain
# MODVER_NAME/DEV_KEY_FILE prefixes, then only safe characters: no $ ` ; | & < > # quotes, newlines or "..".
UNSAFE_ARG_RE = re.compile(r"\.\.|--init-script|\s-I\b|javaagent|--settings-file|--output|--ext-diff")
SAFE_CMD_RE = re.compile(r"^(?:cd\s+[\w./~-]+\s+&&\s+)?(?:(?:MODVER_NAME|DEV_KEY_FILE)=[\w./:,-]*\s+)*"
                         r"([\w./:=,@+~^ -]+)$")
GIT_OPTS = r"\bgit\s+(?:(?:-C|-c)\s+\S+\s+|--?[\w-]+(?:=\S+)?\s+)*"
COMMIT_RE = re.compile(GIT_OPTS + r"commit\b")
PUSH_RE = re.compile(GIT_OPTS + r"push\b")
BYPASS_RE = re.compile(r"^\s*(?:cd\s+\S+\s*&&\s*)?SC_HOOK_OK=1\s")
DOWNLOADS = r"(?:Users[\\/][^\\/\s]+|home/[^/\s]+|root|~|\$HOME|\$\{HOME\}|mnt)[\\/]+Downloads\b"
DEL_VERB = r"(?:\b(?:rm|rmdir|del|erase|rd|unlink|shred|mv|move)\b|Remove-Item|rmtree|os\.remove|-delete\b)"
DEL_RE = re.compile(r"(?:\b(?:rm|rmdir|del|erase|rd|unlink|shred|mv|move)\b|Remove-Item|rmtree|os\.remove)[^;&|\n]*" + DOWNLOADS
                    + r"|\bfind\b[^;&|\n]*" + DOWNLOADS + r"[^;&|\n]*-delete"
                    + r"|\b(?:cd|pushd|Set-Location)\s+[\"']?" + DOWNLOADS + r".*" + DEL_VERB, re.I | re.S)
# Inline scripts that rewrite files (the Edit tool is safer: no quoting breakage, no wiped files).
SCRIPT_EDIT_RE = re.compile(r"\bsed\s+(?:-[a-zA-Z]*\s+)*-[a-zA-Z]*i|\bperl\s+-[a-zA-Z]*i|"
                            r"\bpython3?\s+(?:-I\s+)?(?:-c\b|-\s*<<)[\s\S]*(?:\.write\(|write_text\(|open\([^)]*['\"][wa]['\"])")
DIFF_RE = re.compile(r"^git\s+(?:-C\s+\S+\s+)?(?:diff|show|log\s+.*-p)\b")


def out(obj):
    print(json.dumps(obj))
    sys.exit(0)


def deny(reason):
    out({"hookSpecificOutput": {"hookEventName": "PreToolUse", "permissionDecision": "deny",
                                "permissionDecisionReason": "[project hook] " + reason}})


def git(args, cwd):
    try:
        r = subprocess.run(["git"] + args, cwd=cwd, capture_output=True, text=True, timeout=10)
        return r.stdout if r.returncode == 0 else ""
    except Exception:
        return ""


def repo_dir(cmd, cwd):
    m = re.match(r"\s*cd\s+(\"[^\"]+\"|'[^']+'|\S+)\s*&&", cmd) or re.search(r"git\s+-C\s+(\S+)", cmd)
    d = cwd
    if m:
        d = os.path.join(cwd, os.path.expanduser(m.group(1).strip("\"'")))
    top = git(["rev-parse", "--show-toplevel"], d).strip()
    return top or None


def segments(cmd):
    """Each simple command, without leading env assignments and wrappers (bash/sh/python/exec/env/npx).
    Heredoc bodies and quoted strings are blanked first, so commit messages and file text never count."""
    cmd = re.sub(r"<<-?\s*['\"]?(\w+)['\"]?[^\n]*\n[\s\S]*?\n\s*\1\s*(?=\n|$)", "<<H", cmd)
    cmd = re.sub(r"'[^']*'|\"(?:[^\"\\]|\\.)*\"", "Q", cmd)
    for seg in re.split(r"&&|\|\||[;|\n(){}]", cmd):
        seg = seg.strip()
        while True:
            n = re.sub(r"^(?:[A-Za-z_]\w*=\S*\s+|(?:exec|env|command|time|nohup|npx|sudo|bash|sh|python3?|then|do|else)\s+(?:-[A-Za-z]+\s+)*|timeout\s+\S+\s+)", "", seg)
            if n == seg:
                break
            seg = n
        if seg:
            yield seg


def lossy_webp(path):
    """True if the WebP file has a lossy 'VP8 ' bitstream chunk (walks RIFF chunks, not a byte search)."""
    with open(path, "rb") as fh:
        d = fh.read()
    if d[:4] != b"RIFF" or d[8:12] != b"WEBP":
        return False
    i = 12
    while i + 8 <= len(d):
        tag, size = d[i:i + 4], int.from_bytes(d[i + 4:i + 8], "little")
        if tag == b"VP8 ":
            return True
        i += 8 + size + (size & 1)
    return False


def simple_body(cmd):
    """The command body if cmd is one plain command (see SAFE_CMD_RE), else None."""
    if UNSAFE_ARG_RE.search(cmd):
        return None
    m = SAFE_CMD_RE.match(cmd.strip())
    return m.group(1).strip() if m else None


def pre_bash(data):
    cmd = (data.get("tool_input") or {}).get("command", "") or ""
    cwd = data.get("cwd") or os.getcwd()
    bypass = bool(BYPASS_RE.search(cmd))

    # 1. Owner's Downloads folder: never delete there (no bypass).
    if DEL_RE.search(cmd):
        deny("Owner rule: nothing is deleted or moved out of the owner's Downloads folder. Copy instead, or ask the owner.")

    # 1b. Keys never staged (no bypass).
    for m in re.finditer(r"\bgit\s+add\b([^;&|\n]*)", cmd):
        bad = [a.strip("\"'") for a in m.group(1).split() if KEY_RE.search(a.strip("\"'"))]
        if bad:
            deny("Signing keys/credentials never go into git: " + ", ".join(bad[:5]) + ".")
    # 1c. Smali patch scripts are applied once (work/HOOKS_APPLIED.txt); never re-run one (no bypass).
    segs = list(segments(cmd))
    for m in (re.match(r"(?:\S*/)?(hooks\w*)\.py\b", g) for g in segs):
        if not m:
            continue
        top0 = repo_dir(cmd, cwd) or git(["rev-parse", "--show-toplevel"], cwd).strip()
        applied = os.path.join(top0 or cwd, "work", "HOOKS_APPLIED.txt")
        if os.path.isfile(applied) and re.search(r"^" + re.escape(m.group(1)) + r"\s+applied", open(applied).read(), re.M):
            deny("%s is already applied (work/HOOKS_APPLIED.txt). Never run a smali patch twice; write a new "
                 "hooksNN script, run it once, log it." % m.group(1))
    # 1d. Never publish the DEV build (no bypass); releases and production deploys need the owner's word.
    rel = [g for g in segs if re.match(r"(?:\S*/)?release\.sh\b", g)]
    for g in rel:
        a = g.split()
        if len(a) > 2 and re.search(r"(^|[-_.])dev([-_.]|$)|/private/", a[2], re.I):
            deny("Never publish the DEV APK. Release the public build.")
    for g in rel:  # Owner 2026-11-21: one directive audit per release, covering everything in it (no bypass).
        a = g.split()
        ver = a[1] if len(a) > 1 else ""
        ver = ver if ver[:1] in ("v", "V") else "v" + ver
        names = os.listdir(AUDITS) if os.path.isdir(AUDITS) else None
        if names is not None and not all(any(n.startswith(ver + "-") and n.endswith(x) for n in names)
                                         for x in ("-changes.md", "-directive-audit.md")):
            deny("Release %s needs %s/%s-*changes.md (everything in the release) and %s-*directive-audit.md (the "
                 "once-per-release audit) plus the final two-agent check before publishing." % (ver, AUDITS, ver, ver))
    if rel and not bypass:
        deny("Releases need the owner's word in this thread. If given, rerun with SC_HOOK_OK=1 in front.")
    if not bypass and any(re.match(r"wrangler\s+(?:deploy|publish)\b|npm\s+run\s+deploy\b", g) for g in segs):
        deny("Deploying the rendezvous service changes production: owner's word first. If given, rerun with "
             "SC_HOOK_OK=1 in front.")
    is_commit = COMMIT_RE.search(cmd)
    is_push = PUSH_RE.search(cmd)
    if is_commit or is_push:
        top = repo_dir(cmd, cwd) or git(["rev-parse", "--show-toplevel"], cwd).strip()
        if top:
            files = set()
            if is_commit:
                files |= set(git(["diff", "--cached", "--name-only"], top).split())
                if re.search(r"commit\b[^\n;&|]*\s(-[a-zA-Z]*a|--all)\b", cmd):
                    files |= set(git(["diff", "--name-only"], top).split())
                if re.search(r"\bgit\s+add\b", cmd):  # staged later in the same command: count every change
                    files |= {l[3:].split(" -> ")[-1] for l in git(["status", "--porcelain", "-uall"], top).splitlines()}
            if is_push:
                files |= set(git(["log", "--name-only", "--format=", "HEAD", "--not", "--remotes"], top).split())
            # 2. Signing keys never go into git (no bypass). Modified tracked keys count too (pathspec commits).
            worktree = set(git(["diff", "--name-only"], top).split()) if is_commit else set()
            keys = sorted(f for f in files | worktree if KEY_RE.search(f))
            if keys:
                deny("Signing keys/credentials never go into git: " + ", ".join(keys[:5]) +
                     ". Unstage them (git rm --cached) and keep them in /mnt/project-files/*/keys/.")
            # 3b. Shipped art is lossless WebP only (no bypass).
            lossy = []
            for f in files:
                if f.startswith("work/modart") and f.lower().endswith(".webp") and os.path.isfile(os.path.join(top, f)):
                    if lossy_webp(os.path.join(top, f)):
                        lossy.append(f)
            if lossy:
                deny("Lossy WebP in shipped art: %s. Art is lossless only (scripts/losslessify.py on the "
                     "original, never re-encode a lossy file)." % ", ".join(sorted(lossy)[:5]))
            # 4. Release workflow publishes only when release/VERSION changes.
            branch = git(["rev-parse", "--abbrev-ref", "HEAD"], top).strip()
            if is_push and not bypass and (branch == "releases" or re.search(r"\breleases\b", cmd)) \
                    and git(["rev-parse", "--verify", "-q", "origin/releases"], top).strip():
                changed = git(["diff", "--name-only", "origin/releases", "HEAD"], top).split()
                if "release/VERSION" not in changed:
                    deny("Pushing to `releases` without a release/VERSION change: the workflow will not publish. "
                         "Bump release/VERSION, or rerun with SC_HOOK_OK=1 if no release is intended.")
                if "updates/spec-stable.json" not in changed \
                        and git(["ls-tree", "--name-only", "origin/releases", "updates/spec-stable.json"], top).strip():
                    deny("New release without an update-channel bump: raise seq and set apk in updates/spec-stable.json "
                         "(tools/updates/manifest_sign.py). Rerun with SC_HOOK_OK=1 if this release skips the channel.")

    if bypass:
        return
    # 4b. Soft rule: edit source files with the Edit tool, not inline sed/perl/python rewrites.
    if SCRIPT_EDIT_RE.search(cmd):
        deny("Edit files with the Edit tool, not inline sed -i/perl -i/python writes (they break quoting and can "
             "wipe files). For a bulk mechanical change or a generated file, rerun with SC_HOOK_OK=1 in front.")
    # 5. Token saver: noisy build/install commands -> full log to file, short summary to context.
    body = simple_body(cmd)
    if body is None:
        return
    if NOISY_RE.search(body):
        logdir = os.path.join(os.environ.get("TMPDIR", "/tmp"), "sc-hooklogs")
        log = os.path.join(logdir, time.strftime("%H%M%S") + "-%d.log" % os.getpid())
        logdir, log = shlex.quote(logdir), shlex.quote(log)
        new = ("mkdir -p %s; L=%s; { %s ; } >\"$L\" 2>&1; rc=$?; "
               "grep -niE 'error|fail|exception|fatal|warning: unresolved' \"$L\" | grep -v JAVA_TOOL | tail -n 15 | cut -c1-300; "
               "echo '--- last lines ---'; tail -n 25 \"$L\" | cut -c1-300; "
               "echo \"[project hook: output trimmed; full log $L ($(wc -l <\"$L\") lines); exit $rc]\"; exit $rc"
               % (logdir, log, cmd))
        ti = dict(data.get("tool_input") or {})
        ti["command"] = new
        out({"hookSpecificOutput": {"hookEventName": "PreToolUse", "permissionDecision": "allow",
                                    "permissionDecisionReason": "project hook: build output trimmed to a log",
                                    "updatedInput": ti}})
    # 6. Token saver: unbounded diffs are cut at 400 lines.
    if DIFF_RE.search(body) and not re.search(r"--(stat|name-only|name-status|shortstat|numstat|output|ext-diff)|\s-s\b|--oneline", body):
        new = ("set -o pipefail; %s | awk 'NR<=400{print} END{if(NR>400) print \"[project hook: cut at 400 of \" NR "
               "\" lines; use --stat, a path, or SC_HOOK_OK=1]\"}'" % cmd)
        ti = dict(data.get("tool_input") or {})
        ti["command"] = new
        out({"hookSpecificOutput": {"hookEventName": "PreToolUse", "permissionDecision": "allow",
                                    "permissionDecisionReason": "project hook: diff capped at 400 lines",
                                    "updatedInput": ti}})


def pre_read(data):
    ti = data.get("tool_input") or {}
    p = ti.get("file_path") or ""
    ext = os.path.splitext(p)[1].lower()
    if ext in BIN_EXT:
        deny("%s is binary; reading it wastes tokens. Use `unzip -l`, `file`, `aapt dump`, jadx/baksmali output, "
             "or grep the extracted sources." % os.path.basename(p))
    if ext in VIEWABLE_EXT or ti.get("limit") or ti.get("offset") or ti.get("pages"):
        return
    try:
        size = os.path.getsize(p)
    except OSError:
        return
    if size > BIG_READ_BYTES:
        deny("%s is %d KB. Grep for the symbol first, then Read with offset/limit (CLAUDE.md usage budget)."
             % (os.path.basename(p), size // 1024))


CODE_EXT = {".java", ".py", ".smali", ".js", ".mjs", ".ts", ".sh", ".cs", ".kt", ".gradle", ".c", ".cpp", ".h", ".yml", ".yaml"}
BIG_CODE_LINES = 150
LONG_TRANSCRIPT_BYTES = 3 * 1024 * 1024


def stop(data):
    """Owner 2026-11-21: two-agent check only for big code changes (>=150 code lines edited this session) and the
    final pre-release check; plus a once-per-session nudge when a non-audit thread has grown long."""
    if data.get("stop_hook_active"):
        return
    sid = re.sub(r"[^\w-]", "", str(data.get("session_id") or ""))
    tp = data.get("transcript_path") or ""
    if not sid or not os.path.isfile(tp):
        return
    tmp = os.environ.get("TMPDIR", "/tmp")
    m_verify, m_long = os.path.join(tmp, "sc-hooks-stop-" + sid), os.path.join(tmp, "sc-hooks-long-" + sid)
    agents, code_lines, audit_thread = 0, 0, False
    with open(tp, errors="replace") as f:
        head = f.read(20000)
        audit_thread = bool(re.search(r"directive audit|Audit each version", head, re.I))
        f.seek(0)
        for line in f:
            if '"tool_use"' not in line:
                continue
            try:
                msg = json.loads(line).get("message") or {}
            except ValueError:
                continue
            for b in msg.get("content") or []:
                if not isinstance(b, dict) or b.get("type") != "tool_use":
                    continue
                n, inp = b.get("name"), b.get("input") or {}
                if n in ("Agent", "Task"):
                    agents += 1
                elif n in ("Edit", "Write", "MultiEdit") and \
                        os.path.splitext(inp.get("file_path", "") or "")[1].lower() in CODE_EXT:
                    text = inp.get("new_string") or inp.get("content") or \
                        "".join(e.get("new_string", "") for e in inp.get("edits") or [] if isinstance(e, dict))
                    code_lines += text.count("\n") + 1
    if code_lines >= BIG_CODE_LINES and agents < 2 and not os.path.exists(m_verify):
        open(m_verify, "w").close()
        out({"decision": "block", "reason":
             "[project hook, once] Big code change (~%d lines edited) with %d subagent(s). Owner rule: big code "
             "changes get the two-agent check (one verifies, a second cross-checks). Do it now, or say why not."
             % (code_lines, agents)})
    if not audit_thread and os.path.getsize(tp) > LONG_TRANSCRIPT_BYTES and not os.path.exists(m_long):
        open(m_long, "w").close()
        out({"decision": "block", "reason":
             "[project hook, once] This thread is long (%d MB of history, re-sent every turn). Owner rule: don't "
             "keep threads alive too long. Finish or hand off (update HANDOFF.md), and tell the owner in your reply "
             "that the thread has run long." % (os.path.getsize(tp) // 1048576)})


def start(_):
    out({"hookSpecificOutput": {"hookEventName": "SessionStart", "additionalContext":
         "Project hooks enforce the mechanical rules; a blocked call says why; `SC_HOOK_OK=1 <cmd>` passes soft "
         "guards for real exceptions. Owner policy 2026-11-21: two-agent check only for big code changes and the "
         "final pre-release check; one directive audit per release. Models: Opus 5.5 for coding; Sonnet 5.5 for "
         "docs, audits, prompts, packaging, subagent verification; Haiku 5.5 for lookups and simple searches. "
         "Subagents: pass `model` accordingly."}})


def main():
    mode = sys.argv[1] if len(sys.argv) > 1 else ""
    try:
        data = json.load(sys.stdin)
    except Exception:
        data = {}
    try:
        {"pre-bash": pre_bash, "pre-read": pre_read, "stop": stop, "start": start}.get(mode, lambda d: None)(data)
    except SystemExit:
        raise
    except Exception:
        pass
    sys.exit(0)


if __name__ == "__main__":
    main()
