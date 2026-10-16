# v28: remastered original-game sprites. TextureLibrary.loadBitmap passes each decoded bitmap through
# ModArt.gameTex(gl, bitmap, texture) right before GLUtils.texImage2D. Run ONCE.
import sys
p = sys.argv[1] + '/fr/testudo/spacecorsair/display/TextureLibrary.smali'
s = open(p).read()
sig = '    :cond_55\n    invoke-static {v5, v6, v1, v6}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V\n'
assert s.count(sig) == 1 and 'ModArt;->gameTex' not in s
s = s.replace(sig, '''    :cond_55
    invoke-static {p2, v1, p3}, Lfr/testudo/spacecorsair/mod/ModArt;->gameTex(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/Bitmap;Lfr/testudo/spacecorsair/display/Texture;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v5, v6, v1, v6}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V
''')
open(p, 'w').write(s)
print('hooks23_orig ok')
