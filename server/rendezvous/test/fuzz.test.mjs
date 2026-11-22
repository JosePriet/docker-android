// Drives the production Request handler in memory. Each run starts with empty storage.
import assert from "node:assert/strict";
import worker, { Registry } from "../src/index.js";

const seed = 0xb2052026;
let state = seed;
function random() {
  state = (Math.imul(state, 1664525) + 1013904223) >>> 0;
  return state;
}

function storage() {
  const rows = new Map();
  return {
    get: async k => structuredClone(rows.get(k)),
    put: async (k, v) => rows.set(k, structuredClone(v)),
    delete: async k => rows.delete(k),
    list: async ({ prefix, limit }) => new Map([...rows].filter(([k]) => k.startsWith(prefix)).sort().slice(0, limit)),
  };
}

function dispatch(reg, request) {
  const REG = { idFromName: name => name, get: () => reg };
  return worker.fetch(request, { REG });
}

let requests = 0;
let scenario = 0;
async function call(reg, path, fields, status, first) {
  const init = fields == null ? {} : { method: "POST", body: new URLSearchParams(fields) };
  const res = await dispatch(reg, new Request("https://registry.invalid" + path, init));
  const [word, ...lines] = (await res.text()).trimEnd().split("\n");
  const context = "seed=" + seed + " scenario=" + scenario + " request=" + (++requests);
  assert.equal(res.status, status, context);
  assert.equal(word, first, context);
  const values = new URLSearchParams();
  const rows = [];
  for (const line of lines) {
    if (line.includes("\t")) rows.push(line.split("\t"));
    else {
      const at = line.indexOf("=");
      values.set(line.slice(0, at), line.slice(at + 1));
    }
  }
  return { values, rows };
}

console.log("service seed=0x" + seed.toString(16));
const hostId = "a".repeat(32), guestId = "b".repeat(32);
for (scenario = 0; scenario < 16000; scenario++) {
  const db = storage();
  const reg = new Registry({ storage: db }, { PUBLIC_OPEN: "1" });
  reg.now = () => 86400000;
  reg.fetchOut = () => { throw new Error("unexpected network access"); };
  const value = random() % 998 + 2;
  const sector = ["Zone " + value, "Δ🚀", "A\tB", "A\nB", "x".repeat(41)][scenario % 5];
  const normalized = sector.replace(/\t/g, "").replace(/\n/g, " ").slice(0, 40);
  const version = "v" + (random() % 200);
  const levels = [[String(value), value], [value + "x", 1], ["", 1], ["-2", 1], ["9999", 999], ["NaN", 1], ["Infinity", 1]];
  const [level, expected] = levels[scenario % levels.length];
  const form = new URLSearchParams({ id: hostId, ver: version, pub: "1", clean: "1", sector, level: "1" });
  form.append("level", level);
  const host = [10, 0, value % 256, 1].join(".");
  const candidate = host + ":" + (1024 + value);
  const malformed = [host + ":0", host + ":65536", [256, 0, 0, 1].join(".") + ":3000", "[:::]:3000"];
  form.set("cands", [candidate, malformed[scenario % malformed.length]].join(","));
  form.set("relay", malformed[scenario % malformed.length]);
  const h = (await call(reg, "/lobby", form, 200, "ok")).values;
  const code = h.get("code"), token = h.get("token");
  const route = "/lobby/" + code;
  const listing = await call(reg, "/lobbies?ver=" + version, null, 200, "ok");
  assert.equal(listing.rows.length, 1);
  assert.equal(listing.rows[0][4], normalized);
  assert.equal(Number(listing.rows[0][5]), expected);
  const guest = { id: guestId, ver: version, clean: "1", sid: String(random() | 0) };
  await call(reg, route + "/join", { ...guest, ver: "other" }, 200, "version");
  const joined = await call(reg, route + "/join", guest, 200, "ok");
  assert.equal(joined.values.get("sid"), guest.sid);
  assert.equal(joined.values.get("cands"), candidate);
  assert.equal(joined.values.get("relay"), "");
  const beat = await call(reg, route + "/beat", { token, full: "1" }, 200, "ok");
  assert.equal(beat.rows.length, 1);
  await call(reg, "/turn", { code, id: guestId }, 200, "off");
  await call(reg, "/report", { code, id: guestId, text: sector }, 200, "ok");
  const sample = { code, token, peakShot: String(value), expShot: "2.5e+0" };
  const invalid = ["4x", "Infinity", "NaN", "-1", "1e-321"][scenario % 5];
  await call(reg, "/sample", { ...sample, expShot: invalid }, 400, "bad");
  await call(reg, "/sample", sample, 200, "ok");
  const samples = await db.list({ prefix: "sample:", limit: 2 });
  assert.equal(samples.size, 1);
  assert.equal([...samples.values()][0].ratio, value / 2.5);
  await call(reg, route + "/unreach", { id: guestId }, 200, "ok");
  await call(reg, route + "/kick", { token, id: beat.rows[0][3] }, 200, "ok");
  await call(reg, "/dev", {}, 403, "no");
  await call(reg, "/admin/data", {}, 403, "no");
  await call(reg, route + "/close", { token }, 200, "ok");
  assert.equal(reg.lobbies.size, 0);
}
// Exercise the streaming body cap without trusting a Content-Length header.
for (const size of [11999, 12000, 12001]) {
  const reg = new Registry({ storage: storage() }, {});
  const prefix = "id=" + hostId + "&sector=";
  const bytes = new TextEncoder().encode(prefix + "x".repeat(size - prefix.length));
  let offset = 0;
  const body = new ReadableStream({
    pull(controller) {
      if (offset === bytes.length) return controller.close();
      const end = Math.min(bytes.length, offset + 1 + random() % 700);
      controller.enqueue(bytes.subarray(offset, end));
      offset = end;
    },
  });
  const res = await dispatch(reg, new Request("https://registry.invalid/lobby", { method: "POST", body, duplex: "half" }));
  requests++;
  assert.equal(res.status, size <= 12000 ? 200 : 413);
  assert.equal(reg.lobbies.size, size <= 12000 ? 1 : 0);
}
console.log("SERVICE OK scenarios=" + scenario + " requests=" + requests);
