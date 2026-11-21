// In-process Worker IO for the JVM simulator. No external network or durable data.
import assert from "node:assert/strict";
import { createInterface } from "node:readline";
import { Registry } from "../src/index.js";

const day = 86400000;
const epoch = 1750000000000;
function store() {
  const map = new Map();
  return {
    alarm: null, map,
    get: async k => map.get(k),
    put: async (k, v) => map.set(k, structuredClone(v)),
    delete: async keys => { for (const k of [].concat(keys)) map.delete(k); },
    list: async ({prefix, limit = 1000, reverse}) => {
      const keys = [...map.keys()].filter(k => k.startsWith(prefix)).sort();
      if (reverse) keys.reverse();
      return new Map(keys.slice(0, limit).map(k => [k, map.get(k)]));
    },
    async getAlarm() { return this.alarm; },
    async setAlarm(at) { this.alarm = at; },
    async transaction(run) { return run(this); }
  };
}

function fixture(on, storage = store(), env = {FIX_BH02: on ? "1" : "", FIX_BH09: on ? "1" : ""}) {
  const reg = new Registry({storage}, env);
  let now = epoch;
  reg.now = () => now;
  return {reg, storage, advance(ms) { now += ms; }};
}
async function post(reg, path, fields, who = "host") {
  const r = await reg.fetch(new Request("https://registry.invalid" + path, {
    method: "POST", headers: {"x-sc-ip": who}, body: new URLSearchParams(fields)
  }));
  const raw = await r.text();
  const [result, ...lines] = raw.trim().split("\n");
  return {result, raw, fields: Object.fromEntries(lines.map(l => l.split("="))), rows: lines.filter(l => l.includes("\t")).map(l => l.split("\t"))};
}
async function open(reg) {
  const r = await post(reg, "/lobby", {id: "a".repeat(32), ver: "sim"});
  assert.equal(r.result, "ok");
  return r.fields;
}
function join(reg, lobby, guest, sid) {
  return post(reg, "/lobby/" + lobby.code + "/join", {id: String(guest).repeat(32), ver: "sim", sid}, "guest" + guest);
}
function beat(reg, lobby, full) {
  return post(reg, "/lobby/" + lobby.code + "/beat", {token: lobby.token, full: Number(full)});
}

async function findings(on) {
  const fx = fixture(on);
  const room = await open(fx.reg);
  let last;
  for (let i = 0; i < 21; i++) {
    fx.advance(8000);
    await beat(fx.reg, room, false);
    last = await join(fx.reg, room, 1, 7);
  }
  console.log("BH02 repeated valid join=" + last.result);
  const joinOK = last.result === "ok";
  if (on) {
    for (let i = 0; i < 19; i++) assert.equal((await join(fx.reg, room, 1, 8 + i)).result, "ok");
    assert.equal((await join(fx.reg, room, 1, 27)).result, "slow");
  }

  // Pre-upgrade rows with real timestamp key format, more than two alarm pages.
  for (const prefix of ["report:", "sample:"]) {
    for (let i = 0; i < 270; i++) fx.storage.map.set(prefix + epoch + ":" + i, {at: epoch});
    fx.storage.map.set(prefix + (epoch + 2 * day) + ":new", {at: epoch + 2 * day});
  }
  const restart = fixture(on, fx.storage);
  await restart.reg.load();
  if (on) assert.equal(fx.storage.alarm, epoch + 30 * day);
  restart.advance(31 * day);
  while (fx.storage.alarm !== null && fx.storage.alarm <= restart.reg.now()) {
    fx.storage.alarm = null;
    await restart.reg.alarm();
  }
  const remaining = [...fx.storage.map.values()].filter(v => v.at === epoch).length;
  console.log("BH09 expired rows after idle restart=" + remaining);
  const expiryOK = remaining === 0;
  if (on) {
    assert.equal(fx.storage.alarm, epoch + 32 * day);
    const fresh = fixture(true);
    await fresh.reg.storeRecord("report:", {at: epoch});
    assert.equal(fresh.storage.alarm, epoch + 30 * day);
    fresh.advance(30 * day);
    // Read filtering also applies while a due alarm waits for delivery.
    fresh.reg.adminKeyOk = async () => true;
    const admin = await fresh.reg.adminData({}, "fixture");
    assert.deepEqual(await admin.json(), {reports: [], samples: []});
  }
  assert(joinOK && expiryOK, "expected valid retry and idle expiry");
}

if (process.argv[2] === "pipe") {
  // The JVM drives the host heartbeat and seat changes; only a returned SID can play.
  let reg, room;
  for await (const line of createInterface({input: process.stdin})) {
    const [op, n, sid] = line.split(" ");
    if (op === "open") { reg = fixture(false, store(), {FIX_BH02: process.env.FIX_BH02, FIX_BH09: process.env.FIX_BH09}).reg; room = await open(reg); }
    if (op === "join") {
      const result = await join(reg, room, Number(n), Number(sid));
      console.log(Buffer.from(result.raw).toString("base64"));
    } else if (op === "beat") {
      const result = await beat(reg, room, n === "1");
      console.log(Buffer.from(result.raw).toString("base64"));
    } else console.log("ok");
  }
} else {
  console.log("seed=1 (fixed registry schedule)");
  await findings(process.argv[2] === "on");
}
