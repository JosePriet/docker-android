# v45 in-game updates: adds <uses-permission android:name="PERM"/> to a binary AndroidManifest.xml (in place) by
# cloning an existing <uses-permission> element and pointing its name at a new string-pool entry.
#   python3 -I src/add_permission.py <AndroidManifest.xml> android.permission.REQUEST_INSTALL_PACKAGES
import struct, sys
path, perm = sys.argv[1], sys.argv[2]
b = bytearray(open(path, 'rb').read())
u16 = lambda o: struct.unpack_from('<H', b, o)[0]; u32 = lambda o: struct.unpack_from('<I', b, o)[0]

def strings():
    P = u16(2); cnt, flags, sstart = u32(P + 8), u32(P + 16), u32(P + 20)
    utf8 = bool(flags & 0x100); out = []
    for i in range(cnt):
        o = P + sstart + u32(P + 28 + 4 * i)
        if utf8:
            n = b[o + 1]; o += 2
            if n & 0x80: n = ((n & 0x7f) << 8) | b[o]; o += 1
            out.append(bytes(b[o:o + n]).decode('utf-8', 'replace'))
        else:
            n = u16(o); out.append(bytes(b[o + 2:o + 2 + 2 * n]).decode('utf-16-le', 'replace'))
    return out

S = strings()
if perm in S:
    # already present as a string: refuse a second element
    o = u16(2)
    while o < len(b):
        t, sz = u16(o), u32(o + 4)
        if t == 0x0102 and S[u32(o + 20)] == 'uses-permission':
            a = o + 16 + u16(o + 24)
            if u32(a + 8) < len(S) and S[u32(a + 8)] == perm: print('already has', perm); sys.exit(0)
        o += sz

# 1) append the string (same encoding as set_version_code.py)
P = u16(2)
psz, cnt, scnt, flags, sstart, ystart = u32(P + 4), u32(P + 8), u32(P + 12), u32(P + 16), u32(P + 20), u32(P + 24)
utf8 = bool(flags & 0x100)
offs = [u32(P + 28 + 4 * i) for i in range(cnt)]
sdata_end = (P + ystart) if scnt else (P + psz)
sdata = bytes(b[P + sstart:sdata_end])
enc = (bytes([len(perm), len(perm.encode())]) + perm.encode() + b'\0') if utf8 else (struct.pack('<H', len(perm)) + perm.encode('utf-16-le') + b'\0\0')
new_off = len(sdata); sdata2 = sdata + enc
while len(sdata2) % 4: sdata2 += b'\0'
styles = bytes(b[P + ystart:P + psz]) if scnt else b''
style_offs = bytes(b[P + 28 + 4 * cnt:P + 28 + 4 * cnt + 4 * scnt])
hdr = bytearray(b[P:P + 28]); cnt2 = cnt + 1
sstart2 = 28 + 4 * cnt2 + 4 * scnt; ystart2 = (sstart2 + len(sdata2)) if scnt else 0
body = b''.join(struct.pack('<I', x) for x in offs + [new_off]) + style_offs + sdata2 + styles
struct.pack_into('<IIIIII', hdr, 4, 28 + len(body), cnt2, scnt, flags, sstart2, ystart2)
b = b[:P] + bytearray(bytes(hdr) + body) + b[P + psz:]
new_idx = cnt
S = strings()

# 2) clone the first <uses-permission> start + end element right after its end element
o = u16(2); start = None
while o < len(b):
    t, sz = u16(o), u32(o + 4)
    if t == 0x0102 and start is None and S[u32(o + 20)] == 'uses-permission': start = (o, sz)
    elif t == 0x0103 and start is not None and S[u32(o + 20)] == 'uses-permission':
        so, ssz = start
        el = bytearray(b[so:so + ssz]); end = bytes(b[o:o + sz])
        ast, asz, n = struct.unpack_from('<HHH', el, 24)
        done = False
        for i in range(n):
            a = 16 + ast + i * asz
            if S[struct.unpack_from('<I', el, a + 4)[0]] == 'name':
                struct.pack_into('<I', el, a + 8, new_idx)                     # rawValue
                struct.pack_into('<HBBI', el, a + 12, 8, 0, 0x03, new_idx)     # typed value: string
                done = True
        assert done, 'no name attribute'
        ins = o + sz
        b = b[:ins] + el + bytearray(end) + b[ins:]
        break
    o += sz
assert start is not None, 'no uses-permission element'
struct.pack_into('<I', b, 4, len(b))
open(path, 'wb').write(b)
print('added', perm)
