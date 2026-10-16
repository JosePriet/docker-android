# v25-es: GLText atlas gains 20 Spanish glyphs (ModLang.GL_EXTRA: áéíóúüñÁÉÍÓÚÜÑ¡¿ºª«»).
# Cell index: ASCII 32..126 -> 0..94, extras -> 95..114, unknown -> 115 (blank, as before). CHAR_CNT 96 -> 116.
# 256px atlas threshold lowered 24 -> 23 so 11x11 cells >= 116; 512/1024/2048 tiers already give >= 12x12 / 11x11.
# getCharWidth/getLength now map through ModLang.glIndex too (they used to throw on chars > 126). Run ONCE.
import sys, re
p = sys.argv[1] + '/fr/testudo/spacecorsair/textengine/GLText.smali'
s = open(p).read()
assert 'ModLang' not in s
L = 'Lfr/testudo/spacecorsair/mod/ModLang;'
IDX = L + '->glIndex(I)I'
PUT = L + '->glPut([CI)V'

def method(sig):
    i = s.index('.method ' + sig); j = s.index('.end method', i); return i, j

def sub(sig, old, new, count=1):
    global s
    i, j = method(sig); body = s[i:j]
    assert body.count(old) == count, (sig, old, body.count(old))
    s = s[:i] + body.replace(old, new) + s[j:]

# constructor: array sizes
sub('public constructor <init>', '    const/16 v5, 0x60\n', '    const/16 v5, 0x74\n')
# draw(String,FFF)
sub('public draw(Ljava/lang/String;FFF)V', '    add-int/lit8 v0, v0, -0x20\n', '    invoke-static {v0}, %s\n\n    move-result v0\n' % IDX)
sub('public draw(Ljava/lang/String;FFF)V', '    const/16 v5, 0x60\n', '    const/16 v5, 0x74\n')
sub('public draw(Ljava/lang/String;FFF)V', '    const/16 v0, 0x5f\n', '    const/16 v0, 0x73\n')
# getCharWidth(C) / getLength(String)
sub('public getCharWidth(C)F', '    add-int/lit8 v0, p1, -0x20\n', '    invoke-static {p1}, %s\n\n    move-result v0\n' % IDX)
sub('public getLength(Ljava/lang/String;)F', '    add-int/lit8 v4, v4, -0x20\n', '    invoke-static {v4}, %s\n\n    move-result v4\n' % IDX)
# load: measure loop (v0 = cell index 0..114), draw loop (v7), region loop count, atlas tier
sig = 'public load(Ljava/lang/String;III)Z'
sub(sig, '    const/16 v0, 0x20\n\n    :goto_61\n    const/16 v4, 0x7e\n', '    const/16 v0, 0x0\n\n    :goto_61\n    const/16 v4, 0x72\n')
sub(sig, '    aput-char v0, v1, v4\n', '    invoke-static {v1, v0}, %s\n' % PUT)
sub(sig, '    const/16 v2, 0x20\n\n    move v7, v2\n\n    :goto_11c\n    const/16 v2, 0x7e\n', '    const/16 v2, 0x0\n\n    move v7, v2\n\n    :goto_11c\n    const/16 v2, 0x72\n')
sub(sig, '    aput-char v7, v1, v2\n', '    invoke-static {v1, v7}, %s\n' % PUT)
sub(sig, '    const/16 v0, 0x60\n\n    if-ge v7, v0, :cond_1fc\n', '    const/16 v0, 0x74\n\n    if-ge v7, v0, :cond_1fc\n')
sub(sig, '    const/16 v2, 0x18\n', '    const/16 v2, 0x17\n')
s = s.replace('.field public static final CHAR_CNT:I = 0x60', '.field public static final CHAR_CNT:I = 0x74')
open(p, 'w').write(s)
print('hooks22_font ok')
