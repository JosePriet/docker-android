// Node 18+: node test/stress.test.mjs. No network calls or production credentials.
import { webcrypto } from "node:crypto";
import { readFile } from "node:fs/promises";
if (!globalThis.crypto) globalThis.crypto = webcrypto;
// No package.json declares .js as ESM. Import the unmodified worker source as
// an ESM data URL so Node 18 works too, without changing service configuration.
const source = await readFile(new URL("../src/index.js", import.meta.url));
const { Registry } = await import("data:text/javascript;base64," + source.toString("base64"));

let bad = 0, total = 0, known = 0;
const is = (n, ok, bug = "") => {
  total++;
  if (!ok) { bad++; if (bug) known++; }
  console.log((ok ? "ok " : "FAIL ") + (bug ? "KNOWN-BUG " + bug + " " : "") + n);
};

// Same storage semantics and response parser as registry.test.mjs.
function storage() {
  const m = new Map();
  return {
    m,
    get: async (k) => m.get(k),
    put: async (k, v) => { m.set(k, structuredClone(v)); },
    delete: async (k) => m.delete(k),
    list: async ({ prefix, limit, reverse }) => {
      const a = [...m].filter(([k]) => k.startsWith(prefix)).sort((x, y) => x[0] < y[0] ? -1 : x[0] > y[0] ? 1 : 0);
      if (reverse) a.reverse();
      return new Map(a.slice(0, limit || 1000));
    },
  };
}

async function call(reg, method, path, fields, ip, raw) {
  const init = { method, headers: { "x-sc-ip": ip || address(1) } };
  if (method === "POST") init.body = raw === undefined ? new URLSearchParams(fields || {}).toString() : raw;
  const r = await reg.fetch(new Request("https://test.invalid" + path, init));
  const text = await r.text();
  const lines = text.trim().split("\n");
  const out = { first: lines[0], rows: [], status: r.status, text };
  for (const l of lines.slice(1)) {
    if (l.includes("\t")) out.rows.push(l.split("\t"));
    else { const i = l.indexOf("="); out[l.slice(0, i)] = l.slice(i + 1); }
  }
  return out;
}

// Synthetic documentation-range addresses, generated rather than embedding addresses.
const address = (n) => [192, 0, 2, n].join(".");
const ID = (n) => n.toString(16).padStart(32, "0");
const DAY = 86400000;
const host = { id: ID(1), nick: "FixtureHost", ver: "stress-v52", clean: "1", pub: "1", level: "12", cands: address(10) + ":5000", relay: address(11) + ":5001" };
const guest = { id: ID(2), nick: "FixtureGuest", ver: host.ver, clean: "1", sid: "17", cands: address(12) + ":5002", relay: address(13) + ":5003" };
const sample = { ver: host.ver, ship: "hullTest", level: "12", refit: "1", peakShot: "20", expShot: "10", peakDps: "40", expDps: "20" };
const hash = async (s) => Array.from(new Uint8Array(await crypto.subtle.digest("SHA-256", new TextEncoder().encode(s))), (x) => x.toString(16).padStart(2, "0")).join("");
// Ephemeral authentication fixtures: nothing deployed or printed.
const admin = crypto.randomUUID(), dev = crypto.randomUUID();
const env = { PUBLIC_OPEN: "1", DAILY_REQUESTS: "90000", ADMIN_KEY_SHA256: await hash(admin), DEV_KEY_SHA256: await hash(dev) };
function fixture(st = storage()) {
  let now = 10 * DAY;
  const reg = new Registry({ storage: st }, env);
  reg.now = () => now;
  reg.fetchOut = () => { throw new Error("unexpected outbound request"); };
  return { reg, st, advance: (ms) => { now += ms; }, restart: () => { const f = fixture(st); f.advance(now - 10 * DAY); return f; } };
}
async function lobby(f) {
  const h = await call(f.reg, "POST", "/lobby", host);
  if (h.first !== "ok") throw new Error("fixture create failed");
  return h;
}
async function joined(f, h, g = guest, ip = address(2)) {
  const j = await call(f.reg, "POST", `/lobby/${h.code}/join`, g, ip);
  if (j.first !== "ok") throw new Error("fixture join failed");
  const b = await call(f.reg, "POST", `/lobby/${h.code}/beat`, { token: h.token });
  return { j, b, pid: b.rows.find((r) => r[2] === g.sid)?.[3] };
}
const clientError = (r) => r.status >= 400 && r.status < 500;

// Every service route: wrong method, oversized POST, and unusual form/query data.
// Valid auth/session fixtures ensure validation is actually reached, not hidden by 403.
const routes = ["/lobbies", "/admin", "/lobby", "/turn", "/report", "/dev", "/sample", "/admin/data", "join", "beat", "close", "kick", "unreach"];
async function routeFixture(route) {
  const f = fixture(), h = await lobby(f);
  const { pid } = await joined(f, h);
  if (route === "/sample") await call(f.reg, "POST", `/lobby/${h.code}/beat`, { token: h.token, full: "1" });
  const path = route.startsWith("/") ? route : `/lobby/${h.code}/${route}`;
  const method = ["/lobbies", "/admin"].includes(route) ? "GET" : "POST";
  const fields = route === "/lobby" ? { ...host, id: ID(3) }
    : route === "join" ? { ...guest, id: ID(3) }
    : route === "/dev" ? { id: ID(3), key: dev }
    : route === "/admin/data" ? { key: admin }
    : route === "/report" ? { code: h.code, id: guest.id, text: "fixture report" }
    : route === "/sample" ? { ...sample, code: h.code, token: h.token }
    : route === "/turn" ? { code: h.code, id: host.id, token: h.token }
    : route === "kick" ? { token: h.token, id: pid }
    : route === "unreach" ? { id: guest.id }
    : { token: h.token, full: "0", level: "12" };
  const field = route === "/lobby" || route === "join" ? "nick"
    : route === "/dev" || route === "/admin/data" ? "key"
    : route === "/report" ? "text"
    : route === "/sample" ? "peakShot"
    : route === "/turn" ? "code"
    : route === "kick" || route === "unreach" ? "id"
    : route === "close" ? "token" : "level";
  return { ...f, path, method, fields, field };
}
for (const route of routes) {
  {
    const f = await routeFixture(route);
    const r = await call(f.reg, f.method === "GET" ? "POST" : "GET", f.path, f.fields);
    is(`${route} opposite route method: clean 4xx`, clientError(r));
  }
  for (const method of ["PUT", "DELETE", "PATCH", "HEAD"]) {
    const f = await routeFixture(route);
    const r = await call(f.reg, method, f.path);
    is(`${route} ${method}: clean 4xx`, clientError(r));
  }
  {
    const f = await routeFixture(route);
    const r = await call(f.reg, "POST", f.path, null, undefined, "x=" + "x".repeat(20000));
    is(`${route} oversized body: 413`, r.status === 413);
  }
  for (const [name, value] of [["long", "x".repeat(4096)], ["unicode", "\u2603\ud83d\ude80"], ["NUL", "\0"], ["percent", "%00%ff%ZZ%"], ["negative", "-1"], ["NaN", "NaN"], ["repeated", null]]) {
    const f = await routeFixture(route);
    const fields = { ...f.fields, [f.field]: value };
    let path = f.path, raw;
    if (f.method === "GET") {
      path += "?" + (name === "repeated" ? "ver=a&ver=b" : name === "percent" ? "ver=%00%ff%ZZ%" : new URLSearchParams({ ver: value }));
    } else if (name === "repeated") {
      // Conflicting values: invalid first, valid last. Duplicate fields must be rejected.
      raw = new URLSearchParams({ ...f.fields, [f.field]: "\0" }).toString() + "&" + new URLSearchParams({ [f.field]: f.fields[f.field] || "0" });
    } else if (name === "percent") {
      const params = new URLSearchParams(f.fields); params.delete(f.field);
      raw = params.toString() + "&" + f.field + "=%00%ff%ZZ%";
    } else raw = new URLSearchParams(fields).toString();
    const r = await call(f.reg, f.method, path, fields, undefined, raw);
    is(`${route} ${name}: clean 4xx (HTTP ${r.status})`, clientError(r), r.status >= 200 && r.status < 300 ? "R1" : "");
  }
}

// Flooding must not spend other callers' daily request budget.
{
  const f = fixture();
  let limited = 0;
  for (let i = 0; i < 1500; i++) {
    const r = await call(f.reg, "GET", "/lobbies?ver=x");
    if (r.status === 429) limited++;
    if (r.status >= 500) throw new Error("flood produced 5xx");
  }
  is("one caller: exactly 120 accepted per minute", limited === 1380);
  is("another caller still served", (await call(f.reg, "GET", "/lobbies?ver=x", null, address(2))).first === "ok");
  f.advance(60001);
  is("request limit resets after a minute", (await call(f.reg, "GET", "/lobbies?ver=x")).first === "ok");
}
{
  const f = fixture(), h = await lobby(f);
  for (let i = 0; i < 12; i++) await call(f.reg, "POST", `/lobby/${h.code}/join`, { ...guest, id: ID(100 + i) }, address(2));
  const b = await call(f.reg, "POST", `/lobby/${h.code}/beat`, { token: h.token });
  is("many installs behind one address hold only two pending slots", b.rows.length === 2);
  is("another address gets a pending slot", (await call(f.reg, "POST", `/lobby/${h.code}/join`, guest, address(3))).first === "ok");
}
{
  const f = fixture(), h = await lobby(f);
  for (let i = 0; i < 5; i++) {
    is("wrong code attempt " + i, (await call(f.reg, "POST", "/lobby/0000/join", guest, address(2))).status === 404);
  }
  is("sixth wrong code is limited", (await call(f.reg, "POST", "/lobby/0000/join", guest, address(2))).status === 429);
  is("wrong-code caller cannot switch to a real lobby", (await call(f.reg, "POST", `/lobby/${h.code}/join`, guest, address(2))).status === 429);
  is("another address can still join", (await call(f.reg, "POST", `/lobby/${h.code}/join`, guest, address(3))).first === "ok");
  for (const action of ["beat", "close", "kick"]) is("wrong authorization refuses " + action, (await call(f.reg, "POST", `/lobby/${h.code}/${action}`, { token: crypto.randomUUID(), id: guest.id })).status === 403);
}
{
  const f = fixture(), h = await lobby(f);
  const { pid } = await joined(f, h);
  is("host cannot remove by install id", (await call(f.reg, "POST", `/lobby/${h.code}/kick`, { token: h.token, id: guest.id })).status === 400);
  is("host removes a joined guest by lobby alias", (await call(f.reg, "POST", `/lobby/${h.code}/kick`, { token: h.token, id: pid })).first === "ok");
  is("removed guest cannot rejoin", (await call(f.reg, "POST", `/lobby/${h.code}/join`, guest, address(2))).status === 403);
  await call(f.reg, "POST", `/lobby/${h.code}/beat`, { token: h.token, full: "1" });
  const full = await call(f.reg, "POST", `/lobby/${h.code}/join`, { ...guest, id: ID(3) }, address(3));
  is("full lobby refuses join without another pending row", full.first === "full" && f.reg.lobbies.get(h.code).joins.length === 0);
}
{
  const f = fixture(), h = await lobby(f);
  for (let i = 0; i < 4; i++) await joined(f, h, { ...guest, id: ID(20 + i), sid: String(i) }, address(20 + i));
  is("four distinct waiting callers fill the queue", f.reg.lobbies.get(h.code).joins.length === 4);
  is("fifth waiting join refused", (await call(f.reg, "POST", `/lobby/${h.code}/join`, guest, address(30))).first === "full");
}
{
  const f = fixture(), h = await lobby(f);
  await joined(f, h);
  let stored = 0, refused = 0;
  for (let i = 0; i < 12; i++) {
    const r = await call(f.reg, "POST", "/report", { code: h.code, id: guest.id, text: "fixture report " + i }, address(2));
    if (r.first === "ok") stored++;
    if (r.status === 429) refused++;
  }
  is("repeat reports about one host are limited", stored === 3 && refused === 9);
  is("only three reports reached storage", [...f.st.m.keys()].filter((k) => k.startsWith("report:")).length === 3);
  is("nonparticipant cannot report", (await call(f.reg, "POST", "/report", { code: h.code, id: ID(9), text: "fixture" }, address(9))).status === 403);
}

// Anonymous statistics: real join, once per session, persistence and close grace.
{
  let f = fixture();
  const h = await lobby(f), body = { ...sample, code: h.code, token: h.token, id: guest.id, nick: guest.nick };
  is("sample without any guest refused", (await call(f.reg, "POST", "/sample", body, address(4))).status === 403);
  await joined(f, h);
  await call(f.reg, "POST", `/lobby/${h.code}/beat`, { token: h.token, full: "1" });
  is("sample with wrong authorization refused", (await call(f.reg, "POST", "/sample", { ...body, token: crypto.randomUUID() }, address(4))).status === 403);
  is("joined session's first sample stored", (await call(f.reg, "POST", "/sample", body, address(4))).first === "ok");
  const rows = [...f.st.m].filter(([k]) => k.startsWith("sample:"));
  is("stored sample is anonymous and has expected ratio", rows.length === 1 && rows[0][1].ratio === 2 && !JSON.stringify(rows).includes(guest.id) && !JSON.stringify(rows).includes(guest.nick));
  is("second sample refused even from another address", (await call(f.reg, "POST", "/sample", body, address(5))).status === 403);
  f = f.restart();
  is("sample count survives restart", (await call(f.reg, "POST", "/sample", body, address(6))).status === 403);
  await call(f.reg, "POST", `/lobby/${h.code}/beat`, { token: h.token, full: "0" });
  await joined(f, h);
  await call(f.reg, "POST", `/lobby/${h.code}/beat`, { token: h.token, full: "1" });
  await call(f.reg, "POST", `/lobby/${h.code}/close`, { token: h.token });
  is("one sample just after closing is allowed", (await call(f.reg, "POST", "/sample", body, address(7))).first === "ok");
  is("closed session cannot submit twice", (await call(f.reg, "POST", "/sample", body, address(8))).status === 403);
}
{
  const f = fixture(), h = await lobby(f), body = { ...sample, code: h.code, token: h.token };
  await call(f.reg, "POST", `/lobby/${h.code}/beat`, { token: h.token, full: "1" });
  is("full heartbeat alone is not a guest join", (await call(f.reg, "POST", "/sample", body, address(4))).status === 403, "R2");
}
{
  const f = fixture(), h = await lobby(f), body = { ...sample, code: h.code, token: h.token };
  await joined(f, h);
  await call(f.reg, "POST", `/lobby/${h.code}/beat`, { token: h.token, full: "1" });
  await call(f.reg, "POST", "/sample", body, address(4));
  await call(f.reg, "POST", `/lobby/${h.code}/beat`, { token: h.token, full: "0" });
  await call(f.reg, "POST", `/lobby/${h.code}/beat`, { token: h.token, full: "1" });
  is("toggling full without a new guest session cannot grant another sample", (await call(f.reg, "POST", "/sample", body, address(5))).status === 403, "R2");
}

// Life cycle and connection metadata privacy across storage/restart boundaries.
{
  let f = fixture();
  const h = await lobby(f), { pid, b } = await joined(f, h);
  is("host response contains a lobby alias, never guest install id", !!pid && pid !== guest.id && !b.text.includes(guest.id));
  const other = fixture(), h2 = await lobby(other), j2 = await joined(other, h2);
  is("guest alias differs in another lobby", pid !== j2.pid);
  await call(f.reg, "POST", `/lobby/${h.code}/kick`, { token: h.token, id: pid });
  const oldSalt = f.reg.salt;
  f = f.restart();
  const j = await call(f.reg, "POST", `/lobby/${h.code}/join`, { ...guest, id: ID(3) }, address(3));
  is("restart keeps live lobby but forgets host connection addresses", j.first === "ok" && j.fresh === "0" && j.cands === "" && j.relay === "");
  is("restart preserves removal decisions", (await call(f.reg, "POST", `/lobby/${h.code}/join`, guest, address(2))).first === "kicked");
  is("restart preserves the lobby-specific guest alias", await f.reg.pid(f.reg.lobbies.get(h.code), guest.id) === pid);
  is("restart forgets rate salt and caller address hashes", f.reg.salt !== oldSalt && !JSON.stringify([...f.st.m]).includes(oldSalt) && [...f.reg.lobbies.values()].every((l) => !l.ik));
  const beat = await call(f.reg, "POST", `/lobby/${h.code}/beat`, { token: h.token, cands: host.cands, relay: host.relay });
  is("heartbeat restores addresses with the original authorization", beat.first === "ok" && beat.rows.every((r) => r[3] !== guest.id));
  const serial = JSON.stringify([...f.st.m]);
  is("storage has no host/guest/caller network addresses", Array.from({ length: 30 }, (_, i) => address(i + 1)).every((a) => !serial.includes(a)) && !/"(?:cands|relay|ik)":/.test(serial));
  f.advance(120001);
  is("unrefreshed lobby leaves public list", (await call(f.reg, "GET", "/lobbies?ver=" + host.ver)).rows.length === 0);
  is("expired listing cannot be joined", (await call(f.reg, "POST", `/lobby/${h.code}/join`, { ...guest, id: ID(4) }, address(4))).status === 404);
  f.advance(2 * 60 * 60 * 1000);
  await call(f.reg, "GET", "/lobbies?ver=x");
  is("two-hour expiry frees lobby and storage", !f.reg.lobbies.has(h.code) && !f.st.m.has("lobby:" + h.code));
}
{
  const f = fixture(), h = await lobby(f), { pid } = await joined(f, h);
  await call(f.reg, "POST", `/lobby/${h.code}/kick`, { token: h.token, id: pid });
  is("fresh removal record exists", f.st.m.has("kick:" + guest.id));
  f.advance(DAY + 1);
  await call(f.reg, "GET", "/lobbies?ver=x");
  is("removal record deleted after a day", !f.st.m.has("kick:" + guest.id));
}
{
  const f = fixture(), at = f.reg.now();
  for (let i = 0; i < 205; i++) {
    f.st.m.set("kick:" + ID(i), [{ by: ID(900), at: at - 2 * DAY }]);
    f.st.m.set("ban:" + ID(i), { until: at - 1 });
  }
  // Two sweeps: verify progress past the first page even when all old rows are deleted.
  await call(f.reg, "GET", "/lobbies?ver=x");
  f.advance(60 * 60 * 1000 + 1);
  await call(f.reg, "GET", "/lobbies?ver=x");
  is("cleanup advances through multiple all-expired pages", [...f.st.m.keys()].every((k) => !k.startsWith("kick:") && !k.startsWith("ban:")));
}
{
  const f = fixture(), at = f.reg.now();
  for (let i = 0; i < 200; i++) {
    f.st.m.set("kick:" + ID(i), [{ by: ID(900), at }]);
    f.st.m.set("ban:" + ID(i), { until: at + DAY });
  }
  f.st.m.set("kick:" + ID(201), [{ by: ID(900), at: at - 2 * DAY }]);
  f.st.m.set("ban:" + ID(201), { until: at - 1 });
  for (let i = 0; i < 2; i++) { await call(f.reg, "GET", "/lobbies?ver=x"); f.advance(60 * 60 * 1000 + 1); }
  is("fresh first page cannot hide expired removal records", !f.st.m.has("kick:" + ID(201)) && !f.st.m.has("ban:" + ID(201)), "R3");
}
{
  const f = fixture(), at = f.reg.now();
  f.st.m.set("kick:" + guest.id, [{ by: ID(800), at: at - 2 * DAY }, { by: ID(900), at }]);
  await call(f.reg, "GET", "/lobbies?ver=x");
  const kept = f.st.m.get("kick:" + guest.id);
  is("cleanup removes old entries from a mixed-age removal record", kept?.length === 1 && kept[0].at === at, "R4");
}
{
  const f = fixture();
  for (const [name, key] of [["missing", ""], ["wrong", crypto.randomUUID()], ["DEV", dev]]) {
    is("admin data refuses " + name + " authentication", (await call(f.reg, "POST", "/admin/data", { key }, address(5))).status === 403);
  }
  is("admin authentication control succeeds", (await call(f.reg, "POST", "/admin/data", { key: admin }, address(5))).status === 200);
}

console.log(`cases=${total} known-bug-failures=${known} unexpected-failures=${bad - known}`);
console.log(bad === 0 ? "STRESS OK" : "STRESS FAILED " + bad);
process.exitCode = bad === 0 ? 0 : 1;
