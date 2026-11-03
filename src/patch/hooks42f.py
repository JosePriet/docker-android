#!/usr/bin/env python3
"""v42: stock music bar default 0.4 -> 1.0 (Config constructor and reset). Run once."""
import re, sys
p = 'work/smali/fr/testudo/spacecorsair/game/Config.smali'
s = open(p).read()
n = s.count('0x3ecccccd    # 0.4f')
assert n == 2, n
s = s.replace('0x3ecccccd    # 0.4f', '0x3f800000    # 1.0f')
open(p, 'w').write(s)
open('work/HOOKS_APPLIED.txt', 'a').write('hooks42f.py: Config.musicVolums default 0.4 -> 1.0 (2 sites)\n')
print('hooks42f OK')
