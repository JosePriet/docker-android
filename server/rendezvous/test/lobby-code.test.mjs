import assert from "node:assert/strict";
import { mock } from "node:test";
import { Registry } from "../src/index.js";

const registry = new Registry({}, {});
let byte = 0;
const random = mock.method(crypto, "getRandomValues", bytes => bytes.fill(byte++));
const alphabet = "ABCDEFGHJKLMNPQRSTUVWXYZ23456789";
for (const letter of alphabet) assert.equal(registry.newCode(), letter.repeat(4));
registry.lobbies.set("AAAA", {});
// Byte 32 wraps to A, which is taken. Byte 33 yields B.
assert.equal(registry.newCode(), "BBBB");
for (const letter of alphabet) registry.lobbies.set(letter.repeat(4), {});
const attempts = random.mock.callCount();
assert.equal(registry.newCode(), null);
assert.equal(random.mock.callCount() - attempts, 50);
random.mock.restore();
console.log("CASES 35");
