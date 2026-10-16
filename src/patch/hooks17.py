# v22: weapon-family item icons. Every getDrawableId() -> ImageView call site (inventory rows, item details, mission
# rewards) goes through ModIcons: id() remembers the type, then apply*() swaps in the family icon bitmap. Run ONCE.
import re, sys
B = sys.argv[1] + '/fr/testudo/spacecorsair/'
T = 'Lfr/testudo/spacecorsair/business/loot/SpaceObjectType;'
files = ['activity/viewgroup/InventoryItem.smali', 'activity/InventoryDetailActivity.smali', 'activity/viewgroup/MissionItem.smali', 'utils/MissionUtils.smali']
pat = re.compile(r'(    invoke-virtual \{(v\d+|p\d+)\}, ' + re.escape(T) + r'->getDrawableId\(\)I\n(?:\s*\n|\s*\.line \d+\n)*'
                 r'    move-result (v\d+|p\d+)\n(?:\s*\n|\s*\.line \d+\n)*'
                 r'    invoke-virtual \{(v\d+|p\d+), \3\}, Landroid/widget/ImageView;->(setBackgroundResource|setImageResource)\(I\)V\n)')
total = 0
for f in files:
    p = B + f
    s = open(p).read()
    assert 'ModIcons' not in s
    def rep(m):
        blk = m.group(1)
        blk = blk.replace('invoke-virtual {%s}, %s->getDrawableId()I' % (m.group(2), T),
                          'invoke-static {%s}, Lfr/testudo/spacecorsair/mod/ModIcons;->id(%s)I' % (m.group(2), T))
        how = 'applyBackground' if m.group(5) == 'setBackgroundResource' else 'applyImage'
        return blk + '\n    invoke-static {%s}, Lfr/testudo/spacecorsair/mod/ModIcons;->%s(Landroid/widget/ImageView;)V\n' % (m.group(4), how)
    s, n = pat.subn(rep, s)
    assert n > 0, f
    total += n
    open(p, 'w').write(s)
print('hooks17 ok, sites', total)
