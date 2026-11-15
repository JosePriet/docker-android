# v49 LAN co-op (owner 2026-11-15): host-authoritative two-phone co-op over the local network (ModLan).
# - Widens access of the render structures ModLan reads and writes (RenderElement fields, RenderQueue indices,
#   Drawable crop, Game.textureLibrary, GameThread view extents). Access widening only, no behaviour change.
# - RenderQueue.swapQueues: first calls ModLan.beforeSwap(queue) (host captures its world sprites for the guest;
#   guest captures its own ship sprites for the host).
# - GameThread.isElementVisible: an element off the host's screen still counts as visible when it is inside the
#   guest's view (ModLan.alsoVisible), so the host draws, and streams, what the guest needs to see.
# Run ONCE on work/smali: python3 src/patch/hooks49_lan.py work/smali
import sys, re
B = sys.argv[1] + '/fr/testudo/spacecorsair/'

def edit(rel, pairs):
    p = B + rel
    s = open(p).read()
    for old, new in pairs:
        assert s.count(old) == 1, 'hooks49_lan: anchor not unique in %s: %r (already applied?)' % (rel, old[:80])
        s = s.replace(old, new)
    open(p, 'w').write(s)

# access widening
re_fields = ['a:F', 'b:F', 'backgroundMode:Z', 'g:F', 'pointSize:F', 'position:Lfr/testudo/spacecorsair/engine/Vector2;',
             'r:F', 'renderType:Lfr/testudo/spacecorsair/display/RenderElementType;', 'spin:F', 'text:Ljava/lang/String;',
             'textSize:Lfr/testudo/spacecorsair/textengine/TextSize;', 'zoomInsensitive:Z']
edit('display/RenderElement.smali', [('\n.field ' + f + '\n', '\n.field public ' + f + '\n') for f in re_fields])
edit('engine/RenderQueue.smali', [('.field private queueSize:I', '.field public queueSize:I'),
                                  ('.field private waitingQueueIndex:I', '.field public waitingQueueIndex:I')])
edit('display/Drawable.smali', [('.field private mCrop:[I', '.field public mCrop:[I')])
edit('game/Game.smali', [('\n.field textureLibrary:', '\n.field public textureLibrary:')])
edit('engine/GameThread.smali', [('\n.field static xDelta:F', '\n.field public static xDelta:F'),
                                 ('\n.field static yDelta:F', '\n.field public static yDelta:F')])

# swapQueues hook
edit('engine/RenderQueue.smali', [(
    ".method public swapQueues(Lfr/testudo/spacecorsair/engine/GameRenderer;)V\n    .registers 4\n\n    .prologue\n",
    ".method public swapQueues(Lfr/testudo/spacecorsair/engine/GameRenderer;)V\n    .registers 4\n\n    .prologue\n"
    "    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->beforeSwap(Lfr/testudo/spacecorsair/engine/RenderQueue;)V\n\n")])

# isElementVisible fallback
p = B + 'engine/GameThread.smali'
s = open(p).read()
i = s.index('.method public static isElementVisible(Lfr/testudo/spacecorsair/business/Element;)Z')
j = s.index('.end method', i)
body = s[i:j]
old = "    :cond_5e\n    const/4 v0, 0x0\n\n    goto :goto_5d\n"
assert body.count(old) == 1, 'hooks49_lan: isElementVisible tail (already applied?)'
new = ("    :cond_5e\n    invoke-static {p0}, Lfr/testudo/spacecorsair/mod/ModLan;->alsoVisible(Lfr/testudo/spacecorsair/business/Element;)Z\n\n"
       "    move-result v0\n\n    goto :goto_5d\n")
s = s[:i] + body.replace(old, new) + s[j:]
open(p, 'w').write(s)
print('hooks49_lan: access widening, RenderQueue.swapQueues -> ModLan.beforeSwap, isElementVisible -> ModLan.alsoVisible')
