import struct, sys
data = open(sys.argv[1], 'rb').read()
i = data.find(b'AppInfo')
# name is length-prefixed; back up 4
p = i - 4
def rs(p):
    n = struct.unpack_from('<I', data, p)[0]
    s = data[p+4:p+4+n]
    p = p + 4 + n
    p = (p + 3) & ~3
    return s, p
name, p = rs(p)
print('name', name)
cv = struct.unpack_from('<i', data, p)[0]; p += 4
print('client_version', cv)
fields = ['assetUrl','devUrl','liveUrl','stagingUrl','iapAndroidPublicKeyDev','iapAndroidPublicKey','appleIdKeyDev','appleIdKeyLive','_clientID','keenWriteKeyDev','keenWriteKeyLive','keenProductIdDev','keenProductIdLive']
for f in fields:
    s, p = rs(p)
    print(f, repr(s[:120]), len(s))
