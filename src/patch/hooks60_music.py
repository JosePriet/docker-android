# Content updates phase 2: music from content packs.
# MusicManager.initMusic: the 7 MediaPlayer.create(Context,I) calls -> ModSound.music(Context,I) (same signature and
# return; a pack's music/<raw name>.ogg replaces the track, otherwise the stock create runs).
# Run ONCE on work/smali: python3 src/patch/hooks60_music.py work/smali
import sys
p = sys.argv[1] + '/fr/testudo/spacecorsair/engine/MusicManager.smali'
s = open(p).read()
old = 'invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;'
new = 'invoke-static {v0, v1}, Lfr/testudo/spacecorsair/mod/ModSound;->music(Landroid/content/Context;I)Landroid/media/MediaPlayer;'
assert 'ModSound;->music(' not in s, 'hooks60_music: already applied'
a = s.index('.method private initMusic()V')
b = s.index('.end method', a)
body = s[a:b]
assert body.count(old) == 7 and s.count(old) == 7, s.count(old)
s = s[:a] + body.replace(old, new) + s[b:]
open(p, 'w').write(s)
print('hooks60_music ok')
