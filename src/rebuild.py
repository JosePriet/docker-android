# Raw-copy zip rebuild: drops META-INF/*, strips all extra fields, clears data-descriptor flag,
# 4-byte aligns STORED entries (zipalign-equivalent, via 0xD935 alignment extra in local header only).
import struct, sys
import zlib
src, dst = sys.argv[1], sys.argv[2]
repl = dict(a.split('=',1) for a in sys.argv[3:] if not a.startswith('+'))  # entry=localfile
ADD = [a[1:].split('=',1) for a in sys.argv[3:] if a.startswith('+')]  # +entry=localfile (new stored entries)
d = open(src, 'rb').read()
eocd = d.rfind(b'PK\x05\x06')
_, _, _, _, n, cdsize, cdoff, _ = struct.unpack('<IHHHHIIH', d[eocd:eocd+22])
out, cd, p = bytearray(), bytearray(), cdoff
count = 0
for _ in range(n):
    (sig, vmade, vneed, flag, meth, mt, md, crc, csz, usz, nl, xl, cl, disk, iattr, eattr, loff) = \
        struct.unpack('<IHHHHHHIIIHHHHHII', d[p:p+46])
    name = d[p+46:p+46+nl]
    p += 46 + nl + xl + cl
    if name.startswith(b'META-INF/'):
        continue
    lnl, lxl = struct.unpack('<HH', d[loff+26:loff+30])
    data = d[loff+30+lnl+lxl: loff+30+lnl+lxl+csz]
    assert len(data) == csz
    if name.decode() in repl:
        raw = open(repl[name.decode()], 'rb').read()
        crc = zlib.crc32(raw) & 0xffffffff
        usz = len(raw)
        if meth == 8:
            co = zlib.compressobj(9, zlib.DEFLATED, -15); data = co.compress(raw) + co.flush()
        else:
            data = raw
        csz = len(data)
    flag &= ~0x0008
    extra = b''
    if meth == 0:
        base = len(out) + 30 + nl
        pad = (-(base + 6)) % 4
        extra = struct.pack('<HHH', 0xD935, 2 + pad, 4) + b'\0' * pad
    newoff = len(out)
    out += struct.pack('<IHHHHHIIIHH', 0x04034b50, vneed, flag, meth, mt, md, crc, csz, usz, nl, len(extra)) + name + extra + data
    cd += struct.pack('<IHHHHHHIIIHHHHHII', 0x02014b50, vmade, vneed, flag, meth, mt, md, crc, csz, usz, nl, 0, 0, 0, iattr, eattr, newoff) + name
    count += 1
for name_s, path in ADD:
    name = name_s.encode(); raw = open(path, 'rb').read(); crc = zlib.crc32(raw) & 0xffffffff
    nl = len(name); base = len(out) + 30 + nl; pad = (-(base + 6)) % 4
    extra = struct.pack('<HHH', 0xD935, 2 + pad, 4) + b'\0' * pad
    newoff = len(out)
    out += struct.pack('<IHHHHHIIIHH', 0x04034b50, 20, 0, 0, 0, 0x21, crc, len(raw), len(raw), nl, len(extra)) + name + extra + raw
    cd += struct.pack('<IHHHHHHIIIHHHHHII', 0x02014b50, 20, 20, 0, 0, 0, 0x21, crc, len(raw), len(raw), nl, 0, 0, 0, 0, 0, newoff) + name
    count += 1
cdstart = len(out)
out += cd
out += struct.pack('<IHHHHIIH', 0x06054b50, 0, 0, count, count, len(cd), cdstart, 0)
open(dst, 'wb').write(out)
print(count, 'entries written')
