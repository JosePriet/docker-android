# v36: music and sound-effect volume, minimap asteroid colour. Run ONCE.
# - SoundManager.playSound(IZ): the stream-volume gain is multiplied by ModSound.sfx() (settings' sound-effects bar).
# - MusicManager.resumeMusic: ModSound.musicResume(curPlaying) re-applies the music bar before start().
# - SettingsActivity.bindUI: ModSound.settingsBar(...) adds the sound-effects bar under the sound-effects checkbox.
# - Asteroid / BigAsteroid.init: ModMap.asteroidRadar(this) after the stock radar colour.
import sys
B = sys.argv[1] + '/fr/testudo/spacecorsair/'
S = 'Lfr/testudo/spacecorsair/mod/ModSound;'


def rd(p): return open(B + p).read()
def wr(p, s): open(B + p, 'w').write(s)


p = 'engine/SoundManager.smali'; s = rd(p)
a = '    div-float v2, v1, v0\n'
assert s.count(a) == 1 and 'ModSound' not in s
s = s.replace(a, a + '\n    invoke-static {}, ' + S + '->sfx()F\n\n    move-result v0\n\n    mul-float/2addr v2, v0\n')
wr(p, s)

p = 'engine/MusicManager.smali'; s = rd(p)
a = ('    .line 93\n    iget-object v0, p0, Lfr/testudo/spacecorsair/engine/MusicManager;->curPlaying:Landroid/media/MediaPlayer;\n\n'
     '    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V\n')
assert s.count(a) == 1 and 'ModSound' not in s
s = s.replace(a, a.replace('    invoke-virtual {v0}', '    invoke-static {v0}, ' + S + '->musicResume(Landroid/media/MediaPlayer;)V\n\n    invoke-virtual {v0}'))
wr(p, s)

p = 'activity/SettingsActivity.smali'; s = rd(p)
A = 'Lfr/testudo/spacecorsair/activity/SettingsActivity;'
a = '    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModQol;->settings(Ljava/lang/Object;)V\n'
assert s.count(a) == 1 and 'ModSound' not in s
s = s.replace(a, '''    iget-object v0, p0, ''' + A + '''->ckbFx:Landroid/widget/CheckBox;

    iget-object v1, p0, ''' + A + '''->layMusicVolume:Landroid/view/View;

    iget-object v2, p0, ''' + A + '''->skbMusic:Landroid/widget/SeekBar;

    invoke-static {p0, v0, v1, v2}, ''' + S + '''->settingsBar(Landroid/app/Activity;Landroid/widget/CheckBox;Landroid/view/View;Landroid/widget/SeekBar;)V

''' + a)
wr(p, s)

for cls in ('Asteroid', 'BigAsteroid'):
    p = 'business/world/' + cls + '.smali'; s = rd(p)
    a = '    iput v%s, p0, Lfr/testudo/spacecorsair/business/world/' + cls + ';->radarColorR:F\n'
    a = [a % r for r in '012' if s.count(a % r) == 1]
    assert len(a) == 1 and 'ModMap' not in s, p
    s = s.replace(a[0], a[0] + '\n    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModMap;->asteroidRadar(Lfr/testudo/spacecorsair/business/Element;)V\n')
    wr(p, s)
print('hooks36 ok')
