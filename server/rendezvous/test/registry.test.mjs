// node test/registry.test.mjs  — drives the Durable Object class directly with an in-memory storage.
import { Registry } from "../src/index.js";

let bad = 0;
const is = (n, ok) => { if (!ok) bad++; console.log((ok ? "ok " : "FAIL ") + n); };

function storage() {
  const m = new Map();
  return {
    m,
    get: async (k) => m.get(k),
    put: async (k, v) => { m.set(k, structuredClone(v)); },
    delete: async (k) => m.delete(k),
    list: async ({ prefix, limit }) => new Map([...m].filter(([k]) => k.startsWith(prefix)).slice(0, limit || 1000)),
  };
}

async function call(reg, method, path, fields, ip) {
  const init = { method, headers: { "x-sc-ip": ip || "9.9.9.9" } };
  if (method === "POST") init.body = new URLSearchParams(fields || {}).toString();
  const r = await reg.fetch(new Request("https://x" + path, init));
  const lines = (await r.text()).trim().split("\n");
  const out = { first: lines[0], rows: [], status: r.status };
  for (const l of lines.slice(1)) { if (l.includes("\t")) out.rows.push(l.split("\t")); else { const i = l.indexOf("="); out[l.slice(0, i)] = l.slice(i + 1); } }
  return out;
}

const ID = (c) => c.repeat(32);
const st = storage();
const reg = new Registry({ storage: st }, { METERED_APP: "demo", METERED_KEY: "k", RELAY_CAP_GB: "18", DAILY_REQUESTS: "90000" });
let now = 1000000;
reg.now = () => now;

const host = { nick: "Ana<script>", ctry: "PAN", id: ID("a"), ver: "v45 #52", pub: "1", clean: "1", pvp: "0", sector: "Vector 3", level: "12", cands: "1.2.3.4:5000,evil.com:1,[2001:db8::1]:6000", relay: "" };
const a = await call(reg, "POST", "/lobby", host, "1.1.1.1");
is("create ok, 4-char code", a.first === "ok" && /^[A-HJ-NP-Z2-9]{4}$/.test(a.code) && a.token.length === 32);
let l = await call(reg, "GET", "/lobbies?ver=" + encodeURIComponent("v45 #52"));
is("listed with cleaned nickname", l.rows.length === 1 && l.rows[0][0] === a.code && l.rows[0][1] === "Anascript" && l.rows[0][2] === "PAN" && l.rows[0][6] === "1");
is("other version sees nothing", (await call(reg, "GET", "/lobbies?ver=v44")).rows.length === 0);
is("list never shows addresses", JSON.stringify(l).indexOf("1.2.3.4") < 0);

const guest = { nick: "Bo", ctry: "", id: ID("b"), ver: "v45 #52", clean: "1", cands: "5.6.7.8:7000", relay: "9.9.9.1:100", sid: "-77" };
const j = await call(reg, "POST", "/lobby/" + a.code.toLowerCase() + "/join", guest, "2.2.2.2");
is("join ok, host addresses (names dropped), joiner's session number", j.first === "ok" && j.sid === "-77" && j.fresh === "1" && j.cands === "1.2.3.4:5000,[2001:db8::1]:6000" && j.nick === "Anascript" && j.sid !== undefined);
is("join wrong version", (await call(reg, "POST", "/lobby/" + a.code + "/join", { ...guest, ver: "v46" }, "2.2.2.2")).first === "version");
is("edited save refused on a public lobby", (await call(reg, "POST", "/lobby/" + a.code + "/join", { ...guest, clean: "0" }, "2.2.2.2")).first === "save");
is("beat needs the token", (await call(reg, "POST", "/lobby/" + a.code + "/beat", { token: "x" })).status === 403);
const b = await call(reg, "POST", "/lobby/" + a.code + "/beat", { token: a.token, full: "0" }, "1.1.1.1");
is("host sees the join with the guest's addresses and the same session", b.rows.length === 1 && b.rows[0][0] === "join" && b.rows[0][2] === j.sid && b.rows[0][6] === "5.6.7.8:7000" && b.rows[0][7] === "9.9.9.1:100");

// hidden address
const hh = await call(reg, "POST", "/lobby", { ...host, id: ID("c"), hide: "1", relay: "9.9.9.2:200" }, "1.1.1.2");
const jh = await call(reg, "POST", "/lobby/" + hh.code + "/join", { ...guest, id: ID("d") }, "2.2.2.3");
is("hidden host gives only the relay address", jh.cands === "" && jh.relay === "9.9.9.2:200");

// wrong codes
let slow = false;
for (let i = 0; i < 7; i++) { const r = await call(reg, "POST", "/lobby/ZZZ" + "23456789"[i] + "/join", guest, "3.3.3.3"); if (r.first === "slow") slow = true; }
is("wrong codes limited", slow);
is("limited address cannot join a real code either", (await call(reg, "POST", "/lobby/" + a.code + "/join", { ...guest, id: ID("e") }, "3.3.3.3")).first === "slow");

// public lobby limits per address
let made = 0;
for (let i = 0; i < 5; i++) { const r = await call(reg, "POST", "/lobby", { ...host, id: (i + "f").repeat(16) }, "4.4.4.4"); if (r.first === "ok") made++; }
is("3 public lobbies per address", made === 3);
is("same install replaces its lobby", (await call(reg, "POST", "/lobby", host, "1.1.1.1")).first === "ok" && (await call(reg, "POST", "/lobby/" + a.code + "/beat", { token: a.token })).status === 404);

// kicks and bans
const hosts = [], names = [];
for (let i = 0; i < 3; i++) {
  const h = await call(reg, "POST", "/lobby", { ...host, id: (i + "9").repeat(16), pub: "0" }, "5.5.5." + i);
  hosts.push(h);
  await call(reg, "POST", "/lobby/" + h.code + "/join", { ...guest, id: ID("7") }, "6.6.6.6");
  const hb = await call(reg, "POST", "/lobby/" + h.code + "/beat", { token: h.token }, "5.5.5." + i);
  const name = hb.rows[0][3];
  names.push(name);
  const k = await call(reg, "POST", "/lobby/" + h.code + "/kick", { token: h.token, id: name }, "5.5.5." + i);
  is("kick " + i, k.first === "ok" && name.length === 32 && name !== ID("7"));
  if (i === 0) is("the host cannot kick by a real install id", (await call(reg, "POST", "/lobby/" + h.code + "/kick", { token: h.token, id: ID("7") }, "5.5.5.0")).first === "bad");
}
is("a guest has a different name in every lobby", new Set(names).size === 3);
// one caller address holds one waiting join per lobby
{
  const h = await call(reg, "POST", "/lobby", { ...host, id: ID("a").slice(0, 30) + "77", pub: "0" }, "5.5.6.1");
  for (let i = 0; i < 6; i++) await call(reg, "POST", "/lobby/" + h.code + "/join", { ...guest, id: (i + "c").repeat(16) }, "6.6.7.7");
  const hb = await call(reg, "POST", "/lobby/" + h.code + "/beat", { token: h.token }, "5.5.6.1");
  is("one waiting join per caller address", hb.rows.length === 1);
  is("another caller still gets a slot", (await call(reg, "POST", "/lobby/" + h.code + "/join", { ...guest, id: ID("6") }, "6.6.7.8")).first === "ok");
  is("an oversized body is refused", (await call(reg, "POST", "/lobby/" + h.code + "/join", { ...guest, nick: "x".repeat(20000) }, "6.6.7.9")).status === 413);
}
is("kick of someone who never joined is refused", (await call(reg, "POST", "/lobby/" + hosts[0].code + "/kick", { token: hosts[0].token, id: ID("8") })).first === "bad");
is("kicked cannot rejoin that lobby", (await call(reg, "POST", "/lobby/" + hosts[0].code + "/join", { ...guest, id: ID("7") }, "6.6.6.6")).first === "kicked");
const pubL = await call(reg, "POST", "/lobby", { ...host, id: ID("1") }, "7.7.7.7");
is("3 kicks from different hosts = banned from public lobbies", (await call(reg, "POST", "/lobby/" + pubL.code + "/join", { ...guest, id: ID("7") }, "6.6.6.7")).first === "banned");
is("banned cannot host publicly", (await call(reg, "POST", "/lobby", { ...host, id: ID("7") }, "6.6.6.8")).first === "banned");
now += 25 * 60 * 60 * 1000;
const pub2 = await call(reg, "POST", "/lobby", { ...host, id: ID("2") }, "7.7.7.8");
is("ban ends after 24 h", (await call(reg, "POST", "/lobby/" + pub2.code + "/join", { ...guest, id: ID("7") }, "6.6.6.9")).first === "ok");

// expiry
is("old lobbies are gone", reg.lobbies.size === 1);
now += 3 * 60 * 1000;
is("no heartbeat for 2 min: off the list", (await call(reg, "GET", "/lobbies?ver=" + encodeURIComponent("v45 #52"))).rows.length === 0);

// relay credentials
const calls = [];
let usage = 1.5;
reg.fetchOut = async (url, init) => {
  calls.push(url);
  if (url.includes("current_usage")) return new Response(JSON.stringify({ quotaInGB: 20, usageInGB: usage, overageInGB: 0 }));
  return new Response(JSON.stringify({ username: "u1", password: "p1", expiryInSeconds: 10800, apiKey: "zz" }));
};
const p3 = await call(reg, "POST", "/lobby", { ...host, id: ID("3") }, "8.8.8.1");
is("relay refused to a stranger", (await call(reg, "POST", "/turn", { code: p3.code, id: ID("4") })).status === 403);
is("relay refused to the host without its token", (await call(reg, "POST", "/turn", { code: p3.code, id: ID("3"), token: "x" })).status === 403);
const tc = await call(reg, "POST", "/turn", { code: p3.code, id: ID("3"), token: p3.token });
is("relay credentials for the host", tc.first === "ok" && tc.user === "u1" && tc.pass === "p1" && tc.host === "standard.relay.metered.ca" && tc.port === "80");
is("the key is not in the answer", JSON.stringify(tc).indexOf("secretKey") < 0);
const made1 = calls.filter((u) => u.includes("/turn/credential?")).length;
await call(reg, "POST", "/turn", { code: p3.code, id: ID("3"), token: p3.token });
is("the credential is shared, not made per call", made1 === 1 && calls.filter((u) => u.includes("/turn/credential?")).length === 1);
const jj1 = await call(reg, "POST", "/lobby/" + p3.code + "/join", { ...guest, id: ID("6") }, "8.8.8.3");
const jj2 = await call(reg, "POST", "/lobby/" + p3.code + "/join", { ...guest, id: ID("6"), relay: "9.9.9.9:900" }, "8.8.8.3");
const bb = await call(reg, "POST", "/lobby/" + p3.code + "/beat", { token: p3.token });
is("joining again keeps the session and adds the relay", jj1.sid === jj2.sid && bb.rows.length === 1 && bb.rows[0][7] === "9.9.9.9:900");
is("relay credentials for a guest whose join is waiting", (await call(reg, "POST", "/turn", { code: p3.code, id: ID("6") }, "8.8.8.3")).first === "ok");
now += 61 * 1000;
await call(reg, "POST", "/lobby/" + p3.code + "/beat", { token: p3.token });
is("relay refused to a guest whose join ran out", (await call(reg, "POST", "/turn", { code: p3.code, id: ID("6") }, "8.8.8.3")).status === 403);
let tslow = 0;
for (let i = 0; i < 14; i++) if ((await call(reg, "POST", "/turn", { code: p3.code, id: ID("3"), token: p3.token }, "8.8.8.1")).first === "slow") tslow++;
is("relay credentials limited per player per hour, not per lobby life", tslow === 4);
now += 61 * 60 * 1000;
await call(reg, "POST", "/lobby/" + p3.code + "/beat", { token: p3.token });
is("and given again the next hour", (await call(reg, "POST", "/turn", { code: p3.code, id: ID("3"), token: p3.token }, "8.8.8.1")).first === "ok");
usage = 18.2; now += 11 * 60 * 1000;
await call(reg, "POST", "/lobby/" + p3.code + "/beat", { token: p3.token });
is("relay full at the cap", (await call(reg, "POST", "/turn", { code: p3.code, id: ID("3"), token: p3.token })).first === "full");

// report
await call(reg, "POST", "/lobby/" + p3.code + "/join", { ...guest, id: ID("5") }, "8.8.8.2");
const rp = await call(reg, "POST", "/report", { code: p3.code, id: ID("5"), text: "chat line 1\nflags=3" }, "8.8.8.2");
const saved = [...st.m].filter(([k]) => k.startsWith("report:"));
is("report stored about the host", rp.first === "ok" && saved.length === 1 && saved[0][1].about === ID("3") && saved[0][1].text.includes("flags=3"));
is("storage holds no addresses", JSON.stringify([...st.m]).match(/\d+\.\d+\.\d+\.\d+/) === null);
is("unreach x2 hides the lobby", (await call(reg, "POST", "/lobby/" + p3.code + "/unreach", { id: ID("5") }, "8.8.8.2")).first === "ok");

{
  const u = await call(reg, "POST", "/lobby", { ...host, id: ID("2") }, "8.8.9.1");
  const listed = async () => (await call(reg, "GET", "/lobbies?ver=" + encodeURIComponent(host.ver), null, "8.8.9.9")).rows.some((r) => r[0] === u.code);
  for (const ip of ["8.8.9.2", "8.8.9.3"]) {
    await call(reg, "POST", "/lobby/" + u.code + "/join", { ...guest, id: ("e" + ip.slice(-1)).repeat(16) }, ip);
    await call(reg, "POST", "/lobby/" + u.code + "/unreach", { id: ("e" + ip.slice(-1)).repeat(16) }, ip);
  }
  now += 11000;
  is("two unreachable reports take the lobby off the list", !(await listed()));
  now += 11 * 60 * 1000;
  await call(reg, "POST", "/lobby/" + u.code + "/beat", { token: u.token });
  is("the reports run out after 10 minutes", await listed());
  await call(reg, "POST", "/lobby/" + p3.code + "/beat", { token: p3.token });
}

// the object sleeps: memory is lost, lobbies come back from storage without addresses
const reg2 = new Registry({ storage: st }, { METERED_APP: "demo", METERED_KEY: "k" });
reg2.now = () => now;
const aw = await call(reg2, "POST", "/lobby/" + p3.code + "/join", { ...guest, id: ID("5") }, "8.8.8.2");
is("after a sleep the lobby is still there, addresses not yet", aw.first === "ok" && aw.cands === "" && aw.fresh === "0" && aw.sid === "-77");
const bw = await call(reg2, "POST", "/lobby/" + p3.code + "/beat", { token: p3.token, cands: "1.2.3.4:5000" });
is("the host's heartbeat still works and sees the repeated join", bw.first === "ok" && bw.rows.length === 1 && bw.rows[0][2] === "-77");
const aw2 = await call(reg2, "POST", "/lobby/" + p3.code + "/join", { ...guest, id: ID("5") }, "8.8.8.2");
is("the next join has the host's addresses again", aw2.cands === "1.2.3.4:5000" && aw2.fresh === "1");
is("stored lobbies hold no addresses", JSON.stringify([...st.m]).match(/\d+\.\d+\.\d+\.\d+/) === null);
await call(reg2, "POST", "/lobby/" + p3.code + "/close", { token: p3.token });
is("a closed lobby leaves storage", [...st.m.keys()].filter((k) => k === "lobby:" + p3.code).length === 0);

// daily stop
const r2 = new Registry({ storage: storage() }, { DAILY_REQUESTS: "1000" });
let busy = 0;
for (let i = 0; i < 1005; i++) { const r = await call(r2, "GET", "/lobbies?ver=x", null, "10.0." + (i >> 8) + "." + (i & 255)); if (r.first === "busy") busy++; }
is("daily request stop", busy === 5);
const r3 = new Registry({ storage: storage() }, { DAILY_REQUESTS: "1000" });
for (let i = 0; i < 3000; i++) await call(r3, "GET", "/lobbies?ver=x", null, "11.0.0.1");
is("one flooding caller does not use up the day for everyone", (await call(r3, "GET", "/lobbies?ver=x", null, "11.0.0.2")).first === "ok");
is("garbage does not crash", (await call(reg, "POST", "/lobby/%00%ff/join", { id: "\u0000" })).status < 500 && (await call(reg, "GET", "/nothing")).status === 404);

console.log(bad === 0 ? "REGISTRY OK" : "REGISTRY FAILED " + bad);
process.exit(bad === 0 ? 0 : 1);
