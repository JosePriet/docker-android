// Space Corsair lobby service: lobbies with 4-character codes, a public list, join signalling for UDP hole punching,
// short-lived relay credentials, kicks/bans and reports.
//
// Privacy (SPEC-FINAL section 6): the service holds nickname, country code, install id (random, not personal) and
// connection addresses only. Connection addresses live in memory only, for the lobby's life, and are never written
// to storage or logs. Rate limits use salted hashes of the caller's address, in memory. On disk: each open lobby
// without any address (code, nickname, country, install ids, version, settings; deleted when it closes or expires),
// ban counters (24 h), reports (30 days), the day's request count, the shared relay credential.
// The platform puts an idle object to sleep and its memory is lost: lobbies come back from storage, the host's
// addresses come back with its next heartbeat, and a joining player repeats its join until the host has it. No secrets are sent to players except their own lobby token and
// relay credentials that expire.
//
// Answers are plain text: first line "ok" or an error word, then key=value lines (and tab-separated rows).

const ALPHABET = "ABCDEFGHJKLMNPQRSTUVWXYZ23456789";   // no 0 O 1 I
const LOBBY_LIST_MS = 2 * 60 * 1000;      // off the list this long after the last heartbeat
const LOBBY_LIFE_MS = 2 * 60 * 60 * 1000; // code freed this long after the last heartbeat
const JOIN_LIFE_MS = 60 * 1000;
const DAY = 24 * 60 * 60 * 1000;

const clean = (s, max, re) => String(s == null ? "" : s).slice(0, max).replace(re, "");
const nickOf = (s) => { const n = clean(s, 12, /[^A-Za-z0-9 _-]/g).trim(); return n.length >= 2 ? n : "Player"; };
const ctryOf = (s) => { const c = clean(s, 3, /[^A-Z]/g); return c.length === 3 ? c : ""; };
const idOf = (s) => clean(s, 32, /[^a-f0-9]/g);
const verOf = (s) => clean(s, 40, /[^A-Za-z0-9 .()#_-]/g);
const textOf = (s, max) => clean(s, max, /[^\x20-\x7E -￿\n]/g);
const addrOk = (a) => /^(\d{1,3}(\.\d{1,3}){3}|\[[0-9a-fA-F:]{2,39}\]):\d{1,5}$/.test(a);
const candsOf = (s) => String(s || "").split(",").map((x) => x.trim()).filter(addrOk).slice(0, 24).join(",");
const relayOf = (s) => { const a = String(s || "").trim(); return addrOk(a) ? a : ""; };
const num = (s, lo, hi) => { const v = parseInt(s, 10); return Number.isFinite(v) ? Math.max(lo, Math.min(hi, v)) : lo; };

function reply(first, fields, rows, status) {
  let out = first;
  for (const k in (fields || {})) out += "\n" + k + "=" + String(fields[k]).replace(/[\r\n]/g, " ");
  for (const r of (rows || [])) out += "\n" + r.map((x) => String(x).replace(/[\t\r\n]/g, " ")).join("\t");
  return new Response(out + "\n", { status: status || 200, headers: { "content-type": "text/plain; charset=utf-8", "cache-control": "no-store" } });
}

function token(n) {
  const b = new Uint8Array(n);
  crypto.getRandomValues(b);
  return Array.from(b, (x) => x.toString(16).padStart(2, "0")).join("");
}

export class Registry {
  constructor(ctx, env) {
    this.ctx = ctx;
    this.env = env || {};
    this.lobbies = new Map();        // code -> lobby (addresses and pending joins in memory only)
    this.loaded = false;
    this.rate = new Map();           // key -> [timestamps] (memory only, salted address hashes)
    this.salt = token(16);
    this.listCache = new Map();      // version -> {at, body}
    this.day = null;                 // {day, n}
    this.usage = null;               // {at, full}
    this.now = () => Date.now();
    this.fetchOut = (url, init) => fetch(url, init);
  }

  async ipKey(ip) {
    const d = await crypto.subtle.digest("SHA-256", new TextEncoder().encode(this.salt + "|" + ip));
    return Array.from(new Uint8Array(d).slice(0, 8), (x) => x.toString(16).padStart(2, "0")).join("");
  }

  /** True when this key stayed within max events per window (and records the event). */
  allow(key, max, windowMs) {
    const t = this.now();
    const a = (this.rate.get(key) || []).filter((x) => t - x < windowMs);
    if (a.length >= max) { this.rate.set(key, a); return false; }
    a.push(t);
    this.rate.set(key, a);
    return true;
  }

  count(key, windowMs) {
    const t = this.now();
    return (this.rate.get(key) || []).filter((x) => t - x < windowMs).length;
  }

  /** After a sleep: the open lobbies, without addresses (those arrive with the next heartbeat). */
  async load() {
    if (this.loaded) return;
    this.loaded = true;
    const saved = await this.ctx.storage.list({ prefix: "lobby:", limit: 1000 });
    for (const [, c] of saved) {
      if (this.lobbies.has(c.code)) continue;
      this.lobbies.set(c.code, { ...c, cands: "", relay: "", fresh: false, joins: [], seen: new Map(c.seen || []), kicked: new Set(c.kicked || []), unreach: new Set(), turns: 0, savedAt: c.beatAt });
    }
  }

  /** The lobby as stored: no connection addresses, no caller hash. */
  async save(l) {
    l.savedAt = this.now();
    await this.ctx.storage.put("lobby:" + l.code, {
      code: l.code, token: l.token, pub: l.pub, id: l.id, nick: l.nick, ctry: l.ctry, ver: l.ver, pvp: l.pvp, sector: l.sector, level: l.level,
      hide: l.hide, createdAt: l.createdAt, beatAt: l.beatAt, full: l.full, seen: Array.from(l.seen), kicked: Array.from(l.kicked || []),
    });
  }

  async drop(l) {
    this.lobbies.delete(l.code);
    this.listCache.clear();
    await this.ctx.storage.delete("lobby:" + l.code);
  }

  async sweep() {
    const t = this.now();
    for (const [, l] of this.lobbies) if (t - l.beatAt > LOBBY_LIFE_MS) await this.drop(l);
    if (this.rate.size > 5000) for (const [k, a] of this.rate) if (!a.some((x) => t - x < DAY)) this.rate.delete(k);
  }

  async overDay() {
    const day = Math.floor(this.now() / DAY);
    if (!this.day || this.day.day !== day) {
      const saved = await this.ctx.storage.get("day");
      this.day = saved && saved.day === day ? saved : { day, n: 0 };
    }
    this.day.n++;
    if (this.day.n % 200 === 0) await this.ctx.storage.put("day", this.day);
    return this.day.n > num(this.env.DAILY_REQUESTS, 1000, 100000);
  }

  async banned(id) {
    if (!id) return false;
    const b = await this.ctx.storage.get("ban:" + id);
    if (!b) return false;
    if (b.until > this.now()) return true;
    await this.ctx.storage.delete("ban:" + id);
    return false;
  }

  newCode() {
    for (let i = 0; i < 50; i++) {
      const b = new Uint8Array(4);
      crypto.getRandomValues(b);
      const c = Array.from(b, (x) => ALPHABET[x & 31]).join("");
      if (!this.lobbies.has(c)) return c;
    }
    return null;
  }

  async fetch(request) {
    try {
      return await this.handle(request);
    } catch (e) {
      return reply("error", {}, null, 500);   // no detail: nothing about other players leaks through an error
    }
  }

  async handle(request) {
    const url = new URL(request.url);
    const ip = request.headers.get("x-sc-ip") || "0";
    const ik = await this.ipKey(ip);
    if (await this.overDay()) return reply("busy", { why: "daily limit" }, null, 429);
    if (!this.allow("req:" + ik, 120, 60 * 1000)) return reply("slow", {}, null, 429);
    await this.load();
    await this.sweep();
    const parts = url.pathname.split("/").filter(Boolean);
    let f = {};
    if (request.method === "POST") {
      const body = await request.text();
      if (body.length > 12000) return reply("big", {}, null, 413);
      for (const [k, v] of new URLSearchParams(body)) f[k] = v;
    } else if (request.method !== "GET") return reply("no", {}, null, 405);

    if (request.method === "GET" && parts.length === 1 && parts[0] === "lobbies") return this.list(verOf(url.searchParams.get("ver")));
    if (request.method !== "POST") return reply("no", {}, null, 404);
    if (parts.length === 1 && parts[0] === "lobby") return this.create(f, ik);
    if (parts.length === 1 && parts[0] === "turn") return this.turn(f);
    if (parts.length === 1 && parts[0] === "report") return this.report(f, ik);
    if (parts.length === 3 && parts[0] === "lobby") {
      const code = clean(parts[1].toUpperCase(), 4, /[^A-Z2-9]/g);
      const l = this.lobbies.get(code);
      if (parts[2] === "join") return this.join(l, f, ik);
      if (!l) return reply("gone", {}, null, 404);
      if (parts[2] === "unreach") return this.unreach(l, f, ik);
      if (f.token !== l.token) return reply("no", {}, null, 403);
      if (parts[2] === "beat") return this.beat(l, f);
      if (parts[2] === "close") { await this.drop(l); return reply("ok"); }
      if (parts[2] === "kick") return this.kick(l, f);
    }
    return reply("no", {}, null, 404);
  }

  async create(f, ik) {
    const pub = f.pub === "1";
    const id = idOf(f.id);
    if (id.length < 16) return reply("bad", { why: "id" }, null, 400);
    if (pub && f.clean !== "1") return reply("save", {}, null, 403);          // an edited save cannot host publicly
    if (pub && await this.banned(id)) return reply("banned", {}, null, 403);
    if (!this.allow("mk:" + ik, 10, 60 * 60 * 1000)) return reply("slow", { why: "10 lobbies an hour" }, null, 429);
    const t = this.now();
    let mine = 0;
    for (const l of Array.from(this.lobbies.values())) {
      if (l.id === id) await this.drop(l);                                     // one lobby per install: the old one is replaced
      else if (l.ik === ik && l.pub && t - l.beatAt < LOBBY_LIST_MS) mine++;
    }
    if (pub && mine >= 3) return reply("slow", { why: "3 public lobbies per address" }, null, 429);
    const code = this.newCode();
    if (!code) return reply("busy", {}, null, 503);
    const l = {
      code, token: token(16), pub, id, ik, nick: nickOf(f.nick), ctry: ctryOf(f.ctry), ver: verOf(f.ver),
      pvp: f.pvp === "1", sector: textOf(f.sector, 40).replace(/\n/g, " "), level: num(f.level, 1, 999),
      hide: f.hide === "1", cands: f.hide === "1" ? "" : candsOf(f.cands), relay: relayOf(f.relay), fresh: true,
      createdAt: t, beatAt: t, joins: [], seen: new Map(), kicked: new Set(), full: false, unreach: new Set(), turns: 0,
    };
    this.lobbies.set(code, l);
    this.listCache.clear();
    await this.save(l);
    return reply("ok", { code, token: l.token });
  }

  list(ver) {
    const t = this.now();
    const c = this.listCache.get(ver);
    if (c && t - c.at < 10000) return c.body.clone();
    const rows = [];
    for (const l of this.lobbies.values()) {
      if (!l.pub || t - l.beatAt > LOBBY_LIST_MS || l.ver !== ver || l.unreach.size >= 2) continue;
      rows.push([l.code, l.nick, l.ctry || "?", l.pvp ? 1 : 0, l.sector, l.level, l.full ? 2 : 1]);
      if (rows.length >= 50) break;
    }
    const body = reply("ok", { n: rows.length }, rows);
    this.listCache.set(ver, { at: t, body: body.clone() });
    if (this.listCache.size > 20) this.listCache.clear();
    return body;
  }

  async join(l, f, ik) {
    if (this.count("bad:" + ik, 10 * 60 * 1000) >= 5) return reply("slow", { why: "too many wrong codes" }, null, 429);
    const t = this.now();
    if (!l || t - l.beatAt > LOBBY_LIST_MS) { this.allow("bad:" + ik, 5, 10 * 60 * 1000); return reply("gone", {}, null, 404); }
    const id = idOf(f.id);
    if (id.length < 16 || id === l.id) return reply("bad", { why: "id" }, null, 400);
    if (verOf(f.ver) !== l.ver) return reply("version", { ver: l.ver });
    if (l.pub && f.clean !== "1") return reply("save", {}, null, 403);
    if (l.pub && await this.banned(id)) return reply("banned", {}, null, 403);
    if (l.kicked && l.kicked.has(id)) return reply("kicked", {}, null, 403);
    if (l.full) return reply("full");
    if (!this.allow("jn:" + ik, 20, 10 * 60 * 1000)) return reply("slow", {}, null, 429);
    l.joins = l.joins.filter((j) => t - j.at < JOIN_LIFE_MS);
    const prev = l.joins.find((x) => x.id === id);   // the same player again (with its relay address, or repeating the join): same session
    l.joins = l.joins.filter((x) => x.id !== id);
    if (l.joins.length >= 4) return reply("full");
    // the joiner picks the session number (random 32 bits), so repeating a join gives the same one even after this object slept
    const j = {
      jid: prev ? prev.jid : token(4), sid: num(f.sid, -2147483648, 2147483647), id, at: t,
      nick: nickOf(f.nick), ctry: ctryOf(f.ctry), cands: f.hide === "1" ? "" : candsOf(f.cands), relay: relayOf(f.relay),
    };
    l.joins.push(j);
    const known = l.seen.has(id);
    l.seen.set(id, t);
    if (l.seen.size > 50) l.seen.delete(l.seen.keys().next().value);
    if (!known) await this.save(l);
    // fresh=0: the host's addresses are not here yet (this object just woke); they arrive with its next heartbeat
    return reply("ok", { sid: j.sid, nick: l.nick, ctry: l.ctry, cands: l.cands, relay: l.relay, fresh: l.fresh ? 1 : 0, pvp: l.pvp ? 1 : 0, wait: 8 });
  }

  /** Host heartbeat, which is also how the host learns who is joining (each join is listed until it is a minute old). */
  async beat(l, f) {
    const t = this.now();
    l.beatAt = t;
    l.fresh = true;
    const was = l.full, pvp = l.pvp, sector = l.sector;
    l.full = f.full === "1";
    if (f.pvp != null) l.pvp = f.pvp === "1";
    if (f.sector != null) l.sector = textOf(f.sector, 40).replace(/\n/g, " ");
    if (f.level != null) l.level = num(f.level, 1, 999);
    if (f.cands != null) l.cands = f.hide === "1" ? "" : candsOf(f.cands);
    if (f.relay != null) l.relay = relayOf(f.relay);
    const changed = was !== l.full || pvp !== l.pvp || sector !== l.sector;
    if (changed) this.listCache.clear();
    if (changed || t - (l.savedAt || 0) > 60000) await this.save(l);   // the heartbeat time reaches storage once a minute
    l.joins = l.joins.filter((j) => t - j.at < JOIN_LIFE_MS);
    return reply("ok", { n: l.joins.length }, l.joins.map((j) => ["join", j.jid, j.sid, j.id, j.nick, j.ctry || "?", j.cands, j.relay]));
  }

  /** Host kicked a guest that really joined this lobby. 3 kicks from different hosts in 24 h = 24 h off public lobbies. */
  async kick(l, f) {
    const id = idOf(f.id);
    if (!l.seen.has(id)) return reply("bad", {}, null, 400);
    l.kicked = l.kicked || new Set();
    l.kicked.add(id);
    await this.save(l);
    l.joins = l.joins.filter((j) => j.id !== id);
    const t = this.now();
    const k = ((await this.ctx.storage.get("kick:" + id)) || []).filter((x) => t - x.at < DAY && x.by !== l.id);
    k.push({ by: l.id, at: t });
    await this.ctx.storage.put("kick:" + id, k);
    if (k.length >= 3) await this.ctx.storage.put("ban:" + id, { until: t + DAY });
    return reply("ok");
  }

  /** A joiner could not reach the host at all. Two such reports from different addresses take the lobby off the list. */
  unreach(l, f, ik) {
    if (!l.seen.has(idOf(f.id))) return reply("bad", {}, null, 400);
    l.unreach.add(ik);
    if (l.unreach.size >= 2) this.listCache.clear();
    return reply("ok");
  }

  /** Relay credentials for the host or a joined guest of a live lobby. The key never leaves the service. */
  async turn(f) {
    const l = this.lobbies.get(clean(String(f.code || "").toUpperCase(), 4, /[^A-Z2-9]/g));
    const id = idOf(f.id);
    if (!l || (id !== l.id && !l.seen.has(id)) || (id === l.id && f.token !== l.token)) return reply("no", {}, null, 403);
    const app = clean(this.env.METERED_APP, 40, /[^a-z0-9-]/g), key = this.env.METERED_KEY;
    if (!app || !key) return reply("off");
    if (++l.turns > 6) return reply("slow", {}, null, 429);
    const t = this.now();
    if (!this.usage || t - this.usage.at > 10 * 60 * 1000) {
      let full = this.usage ? this.usage.full : false;
      try {
        const r = await this.fetchOut("https://" + app + ".metered.live/api/v1/turn/current_usage?secretKey=" + encodeURIComponent(key));
        if (r.ok) { const u = await r.json(); full = Number(u.usageInGB) >= num(this.env.RELAY_CAP_GB, 1, 1000); }
      } catch (e) { /* keeps the last known state */ }
      this.usage = { at: t, full };
    }
    if (this.usage.full) return reply("full");
    const c = await this.credential(app, key, t);
    if (!c) return reply("off");
    return reply("ok", { host: "standard.relay.metered.ca", port: 80, user: c.user, pass: c.pass });
  }

  /**
   * One relay credential shared by all current sessions, replaced every 2 hours (each lives 6). A new credential can
   * take a couple of minutes to work at the relay, so the next one is made early and used once it is 3 minutes old.
   */
  async credential(app, key, t) {
    const H = 60 * 60 * 1000;
    if (!this.creds) this.creds = (await this.ctx.storage.get("cred")) || {};
    const cs = this.creds;
    const make = async () => {
      const r = await this.fetchOut("https://" + app + ".metered.live/api/v1/turn/credential?secretKey=" + encodeURIComponent(key), {
        method: "POST", headers: { "content-type": "application/json" }, body: JSON.stringify({ expiryInSeconds: 6 * 60 * 60, label: "sc" }),
      });
      if (!r.ok) return null;
      const c = await r.json();
      return c.username && c.password ? { user: String(c.username), pass: String(c.password), at: t } : null;
    };
    let changed = false;
    if (cs.next && t - cs.next.at > 3 * 60 * 1000) { cs.cur = cs.next; cs.next = null; changed = true; }
    if (!cs.cur || t - cs.cur.at > 5 * H) { const c = await make(); if (c) { cs.cur = c; cs.next = null; changed = true; } else if (cs.cur && t - cs.cur.at > 6 * H) cs.cur = null; }
    else if (!cs.next && t - cs.cur.at > 2 * H) { const c = await make(); if (c) { cs.next = c; changed = true; } }
    if (changed) await this.ctx.storage.put("cred", cs);
    return cs.cur || null;
  }

  /** A player's report: the last chat lines and what the checks flagged. Kept 30 days. */
  async report(f, ik) {
    const l = this.lobbies.get(clean(String(f.code || "").toUpperCase(), 4, /[^A-Z2-9]/g));
    const id = idOf(f.id);
    if (!l || (id !== l.id && !l.seen.has(id))) return reply("no", {}, null, 403);
    if (!this.allow("rp:" + ik, 3, 60 * 60 * 1000)) return reply("slow", {}, null, 429);
    const t = this.now();
    const about = id === l.id ? Array.from(l.seen.keys()).pop() || "" : l.id;
    await this.ctx.storage.put("report:" + t + ":" + token(3), { at: t, by: id, about, text: textOf(f.text, 8000) });
    const old = await this.ctx.storage.list({ prefix: "report:", limit: 50 });
    for (const [k, v] of old) if (t - v.at > 30 * DAY) await this.ctx.storage.delete(k);
    return reply("ok");
  }
}

export default {
  async fetch(request, env) {
    const h = new Headers(request.headers);
    h.set("x-sc-ip", request.headers.get("cf-connecting-ip") || "0");   // used for salted in-memory rate limits only
    const stub = env.REG.get(env.REG.idFromName("main"));
    return stub.fetch(new Request(request.url, { method: request.method, headers: h, body: request.method === "POST" ? request.body : undefined }));
  },
};
