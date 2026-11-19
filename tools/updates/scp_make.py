# v45 in-game updates: .scp delta that rebuilds NEW.apk byte for byte from OLD.apk (applied by ModUpdate.applyPatch).
#   python3 -I tools/updates/scp_make.py OLD.apk NEW.apk OUT.scp
# Format: b"SCP1", sha256(old) 32, sha256(new) 32, len(new) u64 BE, then zlib stream of ops:
#   1 offset(u64 BE) length(u32 BE) = copy from OLD; 2 length(u32 BE) bytes = literal; 0 = end.
# Each local entry of NEW (header + data) that exists byte-identical in OLD becomes a COPY; everything else
# (changed entries, APK signing block, central directory) is literal.
import hashlib, struct, sys, zlib, zipfile

def entries(path, data):
    out = []
    with zipfile.ZipFile(path) as z:
        for i in z.infolist():
            o = i.header_offset
            assert data[o:o + 4] == b'PK\x03\x04', i.filename
            n, x = struct.unpack_from('<HH', data, o + 26)
            end = o + 30 + n + x + i.compress_size
            if i.flag_bits & 8:   # data descriptor
                end += 16 if data[end:end + 4] == b'PK\x07\x08' else 12
            out.append((o, end, i))
    return out

def main(old_p, new_p, out_p):
    old, new = open(old_p, 'rb').read(), open(new_p, 'rb').read()
    have = {}
    for o, e, i in entries(old_p, old): have.setdefault((i.filename, i.CRC, i.compress_size), []).append((o, e))
    ops, pos, copied = [], 0, 0
    def lit(a, b):
        if b > a: ops.append((2, a, b))
    for o, e, i in sorted(entries(new_p, new), key=lambda t: t[0]):
        if o < pos: continue
        cand = have.get((i.filename, i.CRC, i.compress_size), [])
        hit = next(((so, se) for so, se in cand if se - so == e - o and old[so:se] == new[o:e]), None)
        if hit is None: continue
        lit(pos, o)
        if ops and ops[-1][0] == 1 and ops[-1][1] + ops[-1][2] == hit[0]: ops[-1] = (1, ops[-1][1], ops[-1][2] + (e - o))
        else: ops.append((1, hit[0], e - o))
        copied += e - o; pos = e
    lit(pos, len(new))
    z = zlib.compressobj(9)
    body = bytearray()
    for op in ops:
        if op[0] == 1: body += z.compress(struct.pack('>BqI', 1, op[1], op[2]))
        else:
            a, b = op[1], op[2]
            while a < b:
                c = min(b - a, 1 << 24)
                body += z.compress(struct.pack('>BI', 2, c) + new[a:a + c]); a += c
    body += z.compress(b'\0') + z.flush()
    head = b'SCP1' + hashlib.sha256(old).digest() + hashlib.sha256(new).digest() + struct.pack('>q', len(new))
    open(out_p, 'wb').write(head + bytes(body))
    print('patch %s: %d bytes (new %d, copied %d)' % (out_p, len(head) + len(body), len(new), copied))

if __name__ == '__main__':
    main(*sys.argv[1:4])
