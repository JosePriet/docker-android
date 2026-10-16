# Converts the user's asset packs into power-of-two sprites for assets/modart/
from PIL import Image
import os
U='dl/user/'; OUT='work/modart/'
SP=U+'Space_Pack/Space Pack/Ships/'; SB=U+'space_breaker_asset/space_breaker_asset/'; EX=U+'Example_ships/'; AL='dl/dl_alien/'
def fit(src, name, size, fill=0.96):
    im=Image.open(src).convert('RGBA'); bb=im.getbbox(); im=im.crop(bb)
    s=min(size*fill/im.width, size*fill/im.height)
    rs=Image.LANCZOS
    im=im.resize((max(1,round(im.width*s)),max(1,round(im.height*s))),rs)
    c=Image.new('RGBA',(size,size),(0,0,0,0)); c.alpha_composite(im,((size-im.width)//2,(size-im.height)//2))
    c.save(OUT+name+'.png')
J=[ # (source, name, texture size)
 (SP+'Spaceship_5.png','comet',256),(SP+'Spaceship_1.png','kite',256),(SP+'Spaceship_10.png','talon',256),
 (SP+'Spaceship_3.png','nightjar',256),(SP+'Spaceship_4.png','raven',256),(SP+'Spaceship_8.png','seraph',256),(SP+'Spaceship_6.png','aurora',256),
 (SB+'Ships/Medium/body_02.png','bulldog',128),(SB+'Ships/Big/body_01.png','ironside',256),(SB+'Ships/Big/body_03.png','foundry',256),
 (EX+'4B.png','mantis',256),(EX+'5B.png','cardinal',256),(EX+'1B.png','verdant',256),(EX+'3B.png','sovereign',256),
 (EX+'8B.png','wraith',256),(EX+'9B.png','imperator',512),(EX+'11B.png','moth',512),(EX+'12B.png','sunlance',512),
 (EX+'13B.png','graywall',256),(EX+'6B.png','cobalt',256),(EX+'2B.png','hydra',256),(EX+'7B.png','bastille',512),(EX+'10B.png','tidewarden',128),
 # Crimson Reavers (enemy pirates)
 (EX+'5.png','rv_raider',256),(EX+'1.png','rv_gunship',256),(EX+'10.png','rv_hunter',128),(EX+'4.png','rv_marauder',256),
 (EX+'2.png','rv_corsair',256),(EX+'7.png','rv_lancer',256),(EX+'9.png','rv_dreadnought',512),(EX+'3.png','rv_warlord',256),
 # Kre'tari (enemy aliens)
 (AL+'Alien-Scout.png','kt_scout',128),(AL+'Alien-Bomber.png','kt_bomber',128),(AL+'Alien-Frigate.png','kt_frigate',256),
 (AL+'Alien-Destroyer.png','kt_destroyer',256),(AL+'Alien-Cruiser.png','kt_cruiser',256),(AL+'Alien-HeavyCruiser.png','kt_heavycruiser',256),
 (AL+'Alien-Battlecruiser.png','kt_battlecruiser',256),(AL+'Alien-Battleship.png','kt_battleship',256),(AL+'Alien-Mothership2.png','kt_mothership',512),
 # turrets
 (SB+'Weapons/Medium/Laser/turret_02_mk2.png','turret_laser',64),(SB+'Weapons/Medium/Cannon/turret_01_mk2.png','turret_cannon',64),
]
for src,name,size in J:
    fit(src,name,size); print(name,size)
