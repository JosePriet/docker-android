#!/usr/bin/env python3
# v49 LAN co-op emulator peer (stands in for the second phone).
#   guest SECONDS OUTDIR SHOTFILE : connects to 127.0.0.1:37001 (adb forward to the game hosting), flies a guest ship next
#                                   to the host, fires a shot every 2 s, records the host's stream to OUTDIR/host_stream.bin
#   host  SECONDS OUTDIR          : listens on 0.0.0.0:37001, replays OUTDIR/host_stream.bin to the game joining as guest
#                                   (damage counter climbing), records what the guest sends
import socket, struct, sys, time, threading, zlib
MSG_DEF, MSG_FRAME, MSG_STATE, MSG_SHOT, MSG_BYE, MSG_Z, MSG_CHAT, MSG_KILL = 1, 2, 3, 4, 5, 6, 7, 8
MSG_LFRAME, MSG_LSTATE, MSG_STYLE = 10, 11, 12   # v45 small stream (internet links; emulator switch corsair_lean)

def lean_head(b):
    """Small-format host frame: (level or None, hx, hy, record count)."""
    fl = b[0]; hx, hy = struct.unpack_from('>ff', b, 1); o = 9; lv = None
    if fl & 1:
        lv, o = rd_utf(b, o); o += 4 + 8 + 1 + 4 + 2 + 2
        _, o = rd_utf(b, o); o += 1
    return lv, hx, hy, struct.unpack_from('>H', b, o)[0]

def utf(s):
    b = s.encode('utf-8'); return struct.pack('>H', len(b)) + b

def rd_utf(b, o):
    n = struct.unpack_from('>H', b, o)[0]; return b[o + 2:o + 2 + n].decode('utf-8', 'replace'), o + 2 + n

def msg(t, body):
    return struct.pack('>BI', t, len(body)) + body

def recv_all(s, n):
    out = b''
    while len(out) < n:
        c = s.recv(n - len(out))
        if not c: raise EOFError
        out += c
    return out

def reader(s, sink, stop):
    try:
        while not stop[0]:
            h = recv_all(s, 5); t, n = struct.unpack('>BI', h); body = recv_all(s, n)
            WIRE[0] += n + 5
            if t == MSG_Z:   # v45: deflated FRAME / STATE = [type][raw length][zlib]
                t = body[0]; body = zlib.decompress(body[5:])
            RAW[0] += len(body) + 5
            sink.append((t, body, time.time()))
    except Exception as e:
        sink.append((-1, str(e).encode(), time.time()))

WIRE, RAW = [0], [0]

def hello_guest(s):
    """v45 handshake as a guest: a wrong version first, so the host names its own; then the real one. Returns the host version."""
    s.sendall(b'SCLAN2' + utf('?') + utf('Peer') + utf('PAN'))
    r = recv_all(s, 1)[0]
    if r != 2: return None
    n = struct.unpack('>H', recv_all(s, 2))[0]; return recv_all(s, n).decode('utf-8', 'replace')

def v50_tail(b):
    """FRAME: count enemy bars (R_BAR) and radar marks; returns (bars, marks, mission) or None."""
    try:
        lv, o = rd_utf(b, 0); o += 20
        n = struct.unpack_from('>H', b, o)[0]; o += 2; bars = 0
        for _ in range(n):
            k = b[o]; o += 1
            if k in (0, 1):
                o += 2 + 12 + 4; fl = b[o]; o += 1 + 8
                if k == 1: o += 16 + (8 if fl & 16 else 0)
            elif k == 2:
                o += 8 + 4 + 2; _, o = rd_utf(b, o)
            elif k == 3: o += 8 + 4 + 4
            elif k == 4: o += 8 + 8 + 12 + 8; bars += 1
            else: return None
        o += 9
        if len(b) - o < 5: return (bars, -1, '')
        ms, o = rd_utf(b, o); o += 1
        marks = struct.unpack_from('>H', b, o)[0]
        return (bars, marks, ms)
    except Exception as e:
        return ('err', str(e))


def guest(secs, out, shotfile, aim=False):
    po, vo, hexs = open(shotfile).read().split()
    tpl = bytearray(bytes.fromhex(hexs)); po = int(po); vo = int(vo)
    s = None; ver = None
    for i in range(30):
        try:
            s = socket.create_connection(('127.0.0.1', 37001), timeout=5)
            if ver is None:
                ver = hello_guest(s); s.close(); s = None
                print('GUEST host version', ver)
                if ver is None: time.sleep(1)
                continue
            break
        except Exception:
            s = None; time.sleep(1)
    if s is None:
        print('GUEST no connection'); return
    s.settimeout(None); s.setsockopt(socket.IPPROTO_TCP, socket.TCP_NODELAY, 1)
    s.sendall(b'SCLAN2' + utf(ver) + utf('Peer') + utf('PAN'))
    r = recv_all(s, 1)[0]
    if r != 0:
        print('GUEST refused', r); return
    n = struct.unpack('>H', recv_all(s, 2))[0]; hn = recv_all(s, n).decode('utf-8', 'replace')
    n = struct.unpack('>H', recv_all(s, 2))[0]; hc = recv_all(s, n).decode('utf-8', 'replace')
    print('GUEST accepted by host nick=%r country=%r' % (hn, hc))
    s.sendall(msg(MSG_CHAT, utf('hello from the test peer')))
    got, stop = [], [False]
    threading.Thread(target=reader, args=(s, got, stop), daemon=True).start()
    s.sendall(msg(MSG_DEF, struct.pack('>H', 1) + utf('Lrv_raider')))
    t0 = time.time(); last_shot = 0; level = None; hx = hy = 0.0; sent = 0; shots = 0
    raw = open(out + ('/duel_stream.bin' if aim else '/host_stream.bin'), 'wb')
    done = 0
    while time.time() - t0 < secs:
        while done < len(got):
            t, body, at = got[done]; done += 1
            if t in (MSG_DEF, MSG_FRAME, MSG_STYLE, MSG_LFRAME): raw.write(msg(t, body))
            if t == MSG_FRAME:
                level, o = rd_utf(body, 0); hx, hy = struct.unpack_from('>ff', body, o)
            if t == MSG_LFRAME:
                lv, hx, hy, _ = lean_head(body)
                if lv is not None: level = lv
        if level is not None:
            gx, gy = hx + 450.0, hy
            rec = struct.pack('>BHfff', 0, 1, 0.0, 0.0, (time.time() * 40) % 360) + bytes([255, 255, 255, 255, 0]) + struct.pack('>ff', 160.0, 160.0)
            body = struct.pack('>?', True) + utf(level) + struct.pack('>fffffffff', gx, gy, 0, 0, 0, 900, 1000, 1200, 700) + struct.pack('>H', 1) + rec
            s.sendall(msg(MSG_STATE, body)); sent += 1
            if time.time() - last_shot > 2:
                last_shot = time.time()
                b = bytearray(tpl)
                if aim:   # duel: fire at the host
                    struct.pack_into('>?ff', b, po, True, gx - 150, gy)
                    struct.pack_into('>?ff', b, vo, True, -18.0, 0.0)
                else:
                    struct.pack_into('>?ff', b, po, True, gx, gy - 120)
                    struct.pack_into('>?ff', b, vo, True, 0.0, -18.0)
                s.sendall(msg(MSG_SHOT, bytes(b))); shots += 1
        time.sleep(0.04)
    stop[0] = True
    s.sendall(msg(MSG_BYE, b'')); s.close(); raw.close()
    frames = [b for t, b, _ in got if t == MSG_FRAME]; defs = [b for t, b, _ in got if t == MSG_DEF]
    recs = []
    for b in frames:
        lv, o = rd_utf(b, 0); o += 4 * 3 + 8; recs.append(struct.unpack_from('>H', b, o)[0])
    lean = [b for t, b, _ in got if t == MSG_LFRAME]
    if lean:
        ln = [lean_head(b)[3] for b in lean]
        print('GUEST lean frames=%d styles=%d recs(min/avg/max)=%s' % (len(lean), len([1 for t, b, _ in got if t == MSG_STYLE]), (min(ln), sum(ln) // len(ln), max(ln))))
    errs = [b for t, b, _ in got if t == -1]
    kills = [b for t, b, _ in got if t == MSG_KILL]
    print('GUEST v45 wire_bytes=%d raw_bytes=%d seconds=%d wire_Bps=%d raw_Bps=%d kills=%d chat=%d' % (WIRE[0], RAW[0], secs, WIRE[0] // max(1, secs), RAW[0] // max(1, secs), len(kills), len([1 for t, b, _ in got if t == MSG_CHAT])))
    print('GUEST level=%s frames=%d defs=%d recs(min/avg/max)=%s states_sent=%d shots_sent=%d bytes=%d errs=%s' % (
        level, len(frames), len(defs), (min(recs), sum(recs) // len(recs), max(recs)) if recs else None, sent, shots,
        sum(len(b) for _, b, _ in got), errs[:1]))
    tails = [v50_tail(b) for b in frames]
    good = [t for t in tails if t and t[0] != 'err']
    print('GUEST v50 bars(max)=%s marks(min/max)=%s mission=%s bad=%d' % (max([t[0] for t in good] or [None]), (min([t[1] for t in good]), max([t[1] for t in good])) if good else None, good[-1][2] if good else None, len(tails) - len(good)))

def host(secs, out):
    data = open(out + '/host_stream.bin', 'rb').read()
    msgs, o = [], 0
    while o + 5 <= len(data):
        t, n = struct.unpack_from('>BI', data, o); msgs.append((t, data[o + 5:o + 5 + n])); o += 5 + n
    defs = [m for m in msgs if m[0] in (MSG_DEF, MSG_STYLE)]; frames = [m[1] for m in msgs if m[0] == MSG_FRAME]
    lean = [m[1] for m in msgs if m[0] == MSG_LFRAME]
    print('HOST replaying defs=%d frames=%d lean=%d' % (len(defs), len(frames), len(lean)))
    ls = socket.socket(); ls.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1); ls.bind(('0.0.0.0', 37001)); ls.listen(1)
    ls.settimeout(secs)
    try:
        s, addr = ls.accept()
    except Exception:
        print('HOST nobody joined'); return
    s.setsockopt(socket.IPPROTO_TCP, socket.TCP_NODELAY, 1)
    hello = recv_all(s, 6)
    hv = []
    for _ in range(3):
        n = struct.unpack('>H', recv_all(s, 2))[0]; hv.append(recv_all(s, n).decode('utf-8', 'replace'))
    print('HOST hello', hello, hv)
    s.sendall(b'\x00' + utf('PeerHost') + utf('ESP'))   # v45: accepted, then the host's name
    s.sendall(msg(MSG_CHAT, utf('hello from the test host')))
    got, stop = [], [False]
    threading.Thread(target=reader, args=(s, got, stop), daemon=True).start()
    for t, b in defs: s.sendall(msg(t, b))
    t0 = time.time(); i = 0; dmg = 0.0
    try:
        while time.time() - t0 < secs and lean and not frames:   # small-format stream, replayed as recorded, 15 a second
            s.sendall(msg(MSG_LFRAME, lean[i % len(lean)])); i += 1
            time.sleep(0.066)
        while time.time() - t0 < secs and frames:
            b = bytearray(frames[i % len(frames)]); i += 1
            lv, o = rd_utf(b, 0)
            if time.time() - t0 > 8: dmg += 2.0   # the host's game "hits" the guest: 2 per frame after 8 s
            struct.pack_into('>f', b, o + 8, dmg)
            s.sendall(msg(MSG_FRAME, bytes(b)))
            if i % 150 == 60:   # v45: a kill for the guest's own loot roll, 200 units from the host
                hx, hy = struct.unpack_from('>ff', b, o)
                s.sendall(msg(MSG_KILL, utf('fr.testudo.spacecorsair.business.ennemis.AlienBlatte') + struct.pack('>i?ff', 5, True, hx + 200.0, hy)))
                s.sendall(msg(MSG_KILL, utf('java.lang.Runtime') + struct.pack('>i?ff', 5, True, hx, hy)))   # refused quietly
            time.sleep(0.033)
        s.sendall(msg(MSG_BYE, b''))
    except Exception as e:
        print('HOST send error', e)
    stop[0] = True
    states = [b for t, b, _ in got if t in (MSG_STATE, MSG_LSTATE)]; shots = [b for t, b, _ in got if t == MSG_SHOT]
    lives = []
    for b in states[-3:]:
        alive = b[0]; lv, o = rd_utf(b, 1); x, y, vx, vy, sp, life, mx, hw, hh = struct.unpack_from('>fffffffff', b, o)
        n = struct.unpack_from('>H', b, o + 36)[0]; lives.append((alive, lv, int(x), int(y), int(life), int(mx), n))
    print('HOST v45 guest wire_bytes=%d raw_bytes=%d wire_Bps=%d' % (WIRE[0], RAW[0], WIRE[0] // max(1, int(time.time() - t0))))
    print('HOST joined by %s frames_sent=%d dmg_total=%.0f guest_states=%d guest_shots=%d last_states=%s' % (addr[0], i, dmg, len(states), len(shots), lives))

if __name__ == '__main__':
    if sys.argv[1] in ('guest', 'duel'): guest(float(sys.argv[2]), sys.argv[3], sys.argv[4], sys.argv[1] == 'duel')
    else: host(float(sys.argv[2]), sys.argv[3])
