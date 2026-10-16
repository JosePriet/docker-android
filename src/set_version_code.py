# v27: copies the binary AndroidManifest.xml from an APK with android:versionCode and android:versionName replaced.
#   python3 -I src/set_version_code.py <in.apk> <versionCode> <versionName> <out AndroidManifest.xml>
import struct, sys, zipfile
src, code, vname, dst = sys.argv[1], int(sys.argv[2]), sys.argv[3], sys.argv[4]
b = bytearray(zipfile.ZipFile(src).read('AndroidManifest.xml'))
u16 = lambda o: struct.unpack_from('<H', b, o)[0]; u32 = lambda o: struct.unpack_from('<I', b, o)[0]

# 1) append vname to the string pool (first chunk after the 8-byte file header)
P = u16(2)
assert u16(P) == 0x0001
psz, cnt, scnt, flags, sstart, ystart = u32(P + 4), u32(P + 8), u32(P + 12), u32(P + 16), u32(P + 20), u32(P + 24)
utf8 = bool(flags & 0x100)
offs = [u32(P + 28 + 4 * i) for i in range(cnt)]
sdata_end = (P + ystart) if scnt else (P + psz)
strings = bytes(b[P + sstart:sdata_end])
if utf8:
    e = vname.encode('utf-8'); enc = bytes([len(vname), len(e)]) + e + b'\0'
else:
    enc = struct.pack('<H', len(vname)) + vname.encode('utf-16-le') + b'\0\0'
# strings area is padded to 4 bytes; trim trailing zero padding past the last string end is unsafe, so append after it
new_off = len(strings)
strings2 = strings + enc
while len(strings2) % 4: strings2 += b'\0'
styles = bytes(b[P + ystart:P + psz]) if scnt else b''
style_offs = bytes(b[P + 28 + 4 * cnt:P + 28 + 4 * cnt + 4 * scnt])
hdr = bytearray(b[P:P + 28])
cnt2 = cnt + 1
sstart2 = 28 + 4 * cnt2 + 4 * scnt
ystart2 = (sstart2 + len(strings2)) if scnt else 0
body = b''.join(struct.pack('<I', x) for x in offs + [new_off]) + style_offs + strings2 + styles
struct.pack_into('<IIIIII', hdr, 4, 28 + len(body), cnt2, scnt, flags, sstart2, ystart2)
pool = bytes(hdr) + body
b = b[:P] + bytearray(pool) + b[P + psz:]
struct.pack_into('<I', b, 4, len(b))
new_idx = cnt

# 2) patch the <manifest> attributes
o = u16(2); resmap = []; done = set()
while o < len(b):
    t, sz = u16(o), u32(o + 4)
    if t == 0x0180: resmap = [u32(o + 8 + 4 * i) for i in range((sz - 8) // 4)]
    elif t == 0x0102:
        ast, asz, n = u16(o + 16 + 8), u16(o + 16 + 10), u16(o + 16 + 12)
        for i in range(n):
            a = o + 16 + ast + i * asz
            rid = resmap[u32(a + 4)] if u32(a + 4) < len(resmap) else 0
            if rid == 0x0101021b:          # versionCode
                print('versionCode %d -> %d' % (u32(a + 16), code)); struct.pack_into('<I', b, a + 16, code); done.add('code')
            elif rid == 0x0101021c:        # versionName -> plain string
                struct.pack_into('<I', b, a + 8, new_idx)               # rawValue
                struct.pack_into('<HBBI', b, a + 12, 8, 0, 0x03, new_idx)  # typed value: string
                print('versionName ->', vname); done.add('name')
    o += sz
assert done == {'code', 'name'}, done
open(dst, 'wb').write(b)
