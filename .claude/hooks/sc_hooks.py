#!/usr/bin/env python3
"""Claude Code hooks for the game-restoration project (Space Corsair, Blastron, Global Assault).

Usage (from settings.json):  python3 sc_hooks.py <mode>
  pre-bash   PreToolUse on Bash: rule guards + trims noisy build/diff output
  pre-read   PreToolUse on Read: blocks binaries and whole reads of huge files
  stop       Stop: one reminder per session about two-agent verification
  start      SessionStart: a few lines of rules

Fails open: any internal error lets the tool call run unchanged.
Bypass for the soft guards: put SC_HOOK_OK=1 in the command (key and Downloads guards cannot be bypassed).
"""
import json, os, re, subprocess, sys, time

AUDITS = "/mnt/project-files/audits"
AUDIT_MAX_AGE_H = 24
BIG_READ_BYTES = 256 * 1024
BIN_EXT = {".apk", ".aab", ".obb", ".dex", ".jar", ".class", ".so", ".arsc", ".p12", ".jks",
           ".keystore", ".zip", ".gz", ".tgz", ".tar", ".7z", ".rar", ".bin", ".dll", ".exe",
           ".mp4", ".mkv", ".webm", ".mp3", ".ogg", ".wav", ".unity3d", ".assets", ".bundle"}
VIEWABLE_EXT = {".png", ".jpg", ".jpeg", ".gif", ".webp", ".pdf", ".ipynb"}
KEY_RE = re.compile(r"(\.p12|\.jks|\.keystore|\.key)$|(^|/)keys/|(key|priv)[^/]*\.pem$", re.I)  # work/cert.pem is public
NOISY_RE = re.compile(r"^(?:[A-Z_][A-Z0-9_]*=\S*\s+)*(?:bash\s+(?:\./)?build\.sh|\./build\.sh|\./gradlew|gradle\s|"
                      r"apktool\s|java\s+-jar\s+\S*(?:apktool|smali|baksmali|uber-apk-signer|dex2jar)\S*|"
                      r"jadx\s|adb\s+(?:logcat\s+-d|install)|dotnet\s+(?:build|publish|run)|npm\s+(?:install|ci)|"
                      r"pip3?\s+install|apt-get\s+install|d2j-\S+)")
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


def strip_cd(cmd):
    return re.sub(r"^\s*cd\s+(\"[^\"]+\"|'[^']+'|\S+)\s*&&\s*", "", cmd)


def is_simple(cmd):
    """One command, optionally after one leading `cd X &&`; no chaining, pipes, redirects or substitution."""
    return not re.search(r"[;&|<>`]|\$\(|\n", strip_cd(cmd))


def pre_bash(data):
    cmd = (data.get("tool_input") or {}).get("command", "") or ""
    cwd = data.get("cwd") or os.getcwd()
    bypass = "SC_HOOK_OK=1" in cmd

    # 1. Owner's Downloads folder: never delete there (no bypass).
    if re.search(r"downloads", cmd, re.I) and re.search(
            r"\b(rm|rmdir|del|erase|rd|unlink|shred)\b|Remove-Item|rmtree|os\.remove|\bmv\b", cmd, re.I):
        deny("Owner rule: nothing is deleted or moved out of the owner's Downloads folder. Copy instead, or ask the owner.")

    is_commit = re.search(r"\bgit\b[^\n;&|]*\bcommit\b", cmd)
    is_push = re.search(r"\bgit\b[^\n;&|]*\bpush\b", cmd)
    if is_commit or is_push:
        top = repo_dir(cmd, cwd)
        if top:
            files = set()
            if is_commit:
                files |= set(git(["diff", "--cached", "--name-only"], top).split())
                if re.search(r"commit\b[^\n;&|]*\s-[a-zA-Z]*a", cmd):
                    files |= set(git(["diff", "--name-only"], top).split())
            if is_push:
                files |= set(git(["log", "--name-only", "--format=", "HEAD", "--not", "--remotes"], top).split())
            # 2. Signing keys never go into git (no bypass).
            keys = sorted(f for f in files if KEY_RE.search(f))
            if keys:
                deny("Signing keys/credentials never go into git: " + ", ".join(keys[:5]) +
                     ". Unstage them (git rm --cached) and keep them in /mnt/project-files/*/keys/.")
            # 3. Standing rule: a changes file in audits/ for every patch.
            code = [f for f in files if not re.search(r"\.(md|txt)$|^\.claude/|^\.github/", f)]
            if is_commit and code and not bypass and os.path.isdir(AUDITS):
                now = time.time()
                fresh = [f for f in os.listdir(AUDITS) if f.endswith("-changes.md")
                         and now - os.path.getmtime(os.path.join(AUDITS, f)) < AUDIT_MAX_AGE_H * 3600]
                if not fresh:
                    deny("Standing rule: write /mnt/project-files/audits/<ver>-changes.md (everything this patch "
                         "changes) before committing code. None was written in the last %dh. If this commit is not "
                         "a patch, rerun with SC_HOOK_OK=1 in the command." % AUDIT_MAX_AGE_H)
            # 4. Release workflow publishes only when release/VERSION changes.
            branch = git(["rev-parse", "--abbrev-ref", "HEAD"], top).strip()
            if is_push and not bypass and (branch == "releases" or re.search(r"\breleases\b", cmd)) \
                    and git(["rev-parse", "--verify", "-q", "origin/releases"], top).strip():
                changed = git(["diff", "--name-only", "origin/releases", "HEAD"], top).split()
                if "release/VERSION" not in changed:
                    deny("Pushing to `releases` without a release/VERSION change: the workflow will not publish. "
                         "Bump release/VERSION, or rerun with SC_HOOK_OK=1 if no release is intended.")

    if bypass:
        return
    # 5. Token saver: noisy build/install commands -> full log to file, short summary to context.
    body = strip_cd(cmd).strip()
    if is_simple(cmd) and NOISY_RE.search(body):
        logdir = os.path.join(os.environ.get("TMPDIR", "/tmp"), "sc-hooklogs")
        log = os.path.join(logdir, time.strftime("%H%M%S") + "-%d.log" % os.getpid())
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
    if is_simple(cmd) and DIFF_RE.search(body) and not re.search(r"--(stat|name-only|name-status|shortstat|numstat)|\s-s\b|--oneline", body):
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


def stop(data):
    if data.get("stop_hook_active"):
        return
    sid = re.sub(r"[^\w-]", "", str(data.get("session_id", "x")))
    marker = os.path.join(os.environ.get("TMPDIR", "/tmp"), "sc-hooks-stop-" + sid)
    tp = data.get("transcript_path") or ""
    if os.path.exists(marker) or not os.path.isfile(tp):
        return
    agents, committed = 0, False
    with open(tp, errors="replace") as f:
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
                elif n == "Bash" and re.search(r"\bgit\b[^\n;&|]*\bcommit\b", inp.get("command", "") or ""):
                    committed = True
    if committed and agents < 2:
        open(marker, "w").close()
        out({"decision": "block", "reason":
             "[project hook, once per session] You committed work but ran %d subagent(s). Standing rule: one "
             "subagent verifies the work, a second cross-checks it, both findings discussed briefly; and "
             "/mnt/project-files/audits/<ver>-changes.md lists the changes. Do it now, or say in your reply why "
             "it does not apply." % agents})


def start(_):
    out({"hookSpecificOutput": {"hookEventName": "SessionStart", "additionalContext":
         "Project hooks active: binaries and whole reads of files >256 KB are blocked (grep, then offset/limit); "
         "build/install output and long diffs are trimmed to a log file; commits of code need a fresh "
         "/mnt/project-files/audits/<ver>-changes.md; keys never committed; no deletes in the owner's Downloads; "
         "pushes to `releases` need a release/VERSION bump. Soft guards accept SC_HOOK_OK=1 in the command."}})


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
