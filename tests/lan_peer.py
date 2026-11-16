#!/usr/bin/env python3
# v49 LAN co-op emulator peer (stands in for the second phone).
#   guest SECONDS OUTDIR SHOTFILE : connects to 127.0.0.1:37001 (adb forward to the game hosting), flies a guest ship next
#                                   to the host, fires a shot every 2 s, records the host's stream to OUTDIR/host_stream.bin
#   host  SECONDS OUTDIR          : listens on 0.0.0.0:37001, replays OUTDIR/host_stream.bin to the game joining as guest
#                                   (damage counter climbing), records what the guest sends
import socket, struct, sys, time, threading
MSG_DEF, MSG_FRAME, MSG_STATE, MSG_SHOT, MSG_BYE = 1, 2, 3, 4, 5

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
            sink.append((t, body, time.time()))
    except Exception as e:
        sink.append((-1, str(e).encode(), time.time()))

def guest(secs, out, shotfile, aim=False):
    po, vo, hexs = open(shotfile).read().split()
    tpl = bytearray(bytes.fromhex(hexs)); po = int(po); vo = int(vo)
    s = None
    for i in range(30):
        try:
            s = socket.create_connection(('127.0.0.1', 37001), timeout=5); break
        except Exception:
            time.sleep(1)
    if s is None:
        print('GUEST no connection'); return
    s.settimeout(None); s.setsockopt(socket.IPPROTO_TCP, socket.TCP_NODELAY, 1)
    s.sendall(b'SCLAN1')
    got, stop = [], [False]
    threading.Thread(target=reader, args=(s, got, stop), daemon=True).start()
    s.sendall(msg(MSG_DEF, struct.pack('>H', 1) + utf('Lrv_raider')))
    t0 = time.time(); last_shot = 0; level = None; hx = hy = 0.0; sent = 0; shots = 0
    raw = open(out + ('/duel_stream.bin' if aim else '/host_stream.bin'), 'wb')
    done = 0
    while time.time() - t0 < secs:
        while done < len(got):
            t, body, at = got[done]; done += 1
            if t in (MSG_DEF, MSG_FRAME): raw.write(msg(t, body))
            if t == MSG_FRAME:
                level, o = rd_utf(body, 0); hx, hy = struct.unpack_from('>ff', body, o)
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
    errs = [b for t, b, _ in got if t == -1]
    print('GUEST level=%s frames=%d defs=%d recs(min/avg/max)=%s states_sent=%d shots_sent=%d bytes=%d errs=%s' % (
        level, len(frames), len(defs), (min(recs), sum(recs) // len(recs), max(recs)) if recs else None, sent, shots,
        sum(len(b) for _, b, _ in got), errs[:1]))

def host(secs, out):
    data = open(out + '/host_stream.bin', 'rb').read()
    msgs, o = [], 0
    while o + 5 <= len(data):
        t, n = struct.unpack_from('>BI', data, o); msgs.append((t, data[o + 5:o + 5 + n])); o += 5 + n
    defs = [m for m in msgs if m[0] == MSG_DEF]; frames = [m[1] for m in msgs if m[0] == MSG_FRAME]
    print('HOST replaying defs=%d frames=%d' % (len(defs), len(frames)))
    ls = socket.socket(); ls.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1); ls.bind(('0.0.0.0', 37001)); ls.listen(1)
    ls.settimeout(secs)
    try:
        s, addr = ls.accept()
    except Exception:
        print('HOST nobody joined'); return
    s.setsockopt(socket.IPPROTO_TCP, socket.TCP_NODELAY, 1)
    hello = recv_all(s, 6); print('HOST hello', hello)
    got, stop = [], [False]
    threading.Thread(target=reader, args=(s, got, stop), daemon=True).start()
    for t, b in defs: s.sendall(msg(t, b))
    t0 = time.time(); i = 0; dmg = 0.0
    try:
        while time.time() - t0 < secs and frames:
            b = bytearray(frames[i % len(frames)]); i += 1
            lv, o = rd_utf(b, 0)
            if time.time() - t0 > 8: dmg += 2.0   # the host's game "hits" the guest: 2 per frame after 8 s
            struct.pack_into('>f', b, o + 8, dmg)
            s.sendall(msg(MSG_FRAME, bytes(b)))
            time.sleep(0.033)
        s.sendall(msg(MSG_BYE, b''))
    except Exception as e:
        print('HOST send error', e)
    stop[0] = True
    states = [b for t, b, _ in got if t == MSG_STATE]; shots = [b for t, b, _ in got if t == MSG_SHOT]
    lives = []
    for b in states[-3:]:
        alive = b[0]; lv, o = rd_utf(b, 1); x, y, vx, vy, sp, life, mx, hw, hh = struct.unpack_from('>fffffffff', b, o)
        n = struct.unpack_from('>H', b, o + 36)[0]; lives.append((alive, lv, int(x), int(y), int(life), int(mx), n))
    print('HOST joined by %s frames_sent=%d dmg_total=%.0f guest_states=%d guest_shots=%d last_states=%s' % (addr[0], i, dmg, len(states), len(shots), lives))

if __name__ == '__main__':
    if sys.argv[1] in ('guest', 'duel'): guest(float(sys.argv[2]), sys.argv[3], sys.argv[4], sys.argv[1] == 'duel')
    else: host(float(sys.argv[2]), sys.argv[3])
