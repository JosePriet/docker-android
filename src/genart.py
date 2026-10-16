# Builds new hull sprites from the game's own sprites (recolour, rescale, kitbash). Output: power-of-two PNGs.
from PIL import Image, ImageEnhance, ImageFilter
import glob, colorsys, sys
R='work/res/res/'; OUT='work/modart/'
def src(n): return Image.open(glob.glob(R+'drawable*/%s.png'%n)[0]).convert('RGBA')
def crop(im):
    return im.crop(im.getbbox())
def recolor(im, hue=None, shift=0.0, sat=1.0, val=1.0, keep_glow=True):
    im=im.copy(); px=im.load(); w,h=im.size
    for y in range(h):
        for x in range(w):
            r,g,b,a=px[x,y]
            if a==0: continue
            hh,s,v=colorsys.rgb_to_hsv(r/255,g/255,b/255)
            if hue is not None and s>0.18: hh=hue
            else: hh=(hh+shift)%1.0
            s=min(1.0,s*sat); v=min(1.0,v*val)
            r2,g2,b2=colorsys.hsv_to_rgb(hh,s,v)
            px[x,y]=(int(r2*255),int(g2*255),int(b2*255),a)
    return im
def tint_metal(im, rgb, amount=0.35):
    # tints low-saturation (metal) pixels toward rgb
    im=im.copy(); px=im.load(); w,h=im.size
    for y in range(h):
        for x in range(w):
            r,g,b,a=px[x,y]
            if a==0: continue
            hh,s,v=colorsys.rgb_to_hsv(r/255,g/255,b/255)
            if s<0.25:
                r=int(r*(1-amount)+rgb[0]*v*amount); g=int(g*(1-amount)+rgb[1]*v*amount); b=int(b*(1-amount)+rgb[2]*v*amount)
                px[x,y]=(min(255,r),min(255,g),min(255,b),a)
    return im
def canvas(size): return Image.new('RGBA',(size,size),(0,0,0,0))
def place(c, im, cx, cy, scale=1.0, flip=False):
    if scale!=1.0: im=im.resize((max(1,int(im.width*scale)),max(1,int(im.height*scale))),Image.LANCZOS)
    if flip: im=im.transpose(Image.FLIP_LEFT_RIGHT)
    c.alpha_composite(im,(int(cx-im.width/2),int(cy-im.height/2)))
def fit(im, size, fill=0.94):
    im=crop(im); c=canvas(size); s=min(size*fill/im.width,size*fill/im.height)
    place(c,im,size/2,size/2,s); return c
def save(im,n): im.save(OUT+n+'.png'); print(n, im.size)

# Frigates
save(fit(recolor(src('ennemis_1').resize((128,128),Image.LANCZOS),hue=0.58,sat=1.1),128),'viper')
shade=recolor(src('taupe_ship').resize((128,128),Image.LANCZOS),hue=0.47,sat=0.8,val=0.9)
save(fit(shade,128,0.9),'shade')
# Destroyers
save(fit(tint_metal(recolor(src('defensor'),hue=0.6,sat=0.7),(120,160,220),0.3),256,0.9),'bastion')
save(fit(recolor(src('frelon'),hue=0.12,sat=1.2,val=1.05),256),'hornet')
# Cruisers (Albatros line)
alb=src('mini_croiseur')
save(fit(alb,512),'albatros')
save(fit(tint_metal(recolor(alb,hue=0.99,sat=1.6),(220,50,40),0.6),512),'raptor')
save(fit(tint_metal(recolor(alb,hue=0.38,sat=1.4),(120,230,170),0.6),512),'sanctum')
# Industrials
save(fit(tint_metal(src('civil3'),(200,170,110),0.3),256,0.9),'mule')
save(fit(tint_metal(recolor(src('transporteur'),hue=0.08,sat=1.2),(170,150,120),0.3),256),'bulwark')
save(fit(tint_metal(src('civil1'),(110,140,110),0.3),512,0.9),'tortoise')
# Battlecruisers (Cosmowarrior line)
cor=src('player_ship_corvette')
save(fit(tint_metal(recolor(cor,hue=0.08,sat=1.3),(190,140,80),0.4),512),'warlord')
# Harbinger: corvette + two missile pods (frelon wings) kitbashed
h=canvas(512); place(h,crop(recolor(src('frelon'),hue=0.78,sat=0.9,val=0.8)),256-120,300,0.55); place(h,crop(recolor(src('frelon'),hue=0.78,sat=0.9,val=0.8)),256+120,300,0.55,flip=True)
place(h,crop(tint_metal(recolor(cor,hue=0.78,sat=1.2),(150,110,200),0.4)),256,256,1.7)
save(fit(h,512),'harbinger')
# Battleships (Guardian line)
gua=src('croiseur_gentil')
save(fit(tint_metal(recolor(gua,hue=0.6,sat=0.9,val=0.85),(70,110,170),0.6),1024,0.9),'monolith')
save(fit(tint_metal(recolor(gua,hue=0.13,sat=1.3),(230,190,90),0.45),1024,0.9),'tempest')
# Titan: Leviathan = Guardian spine + two Albatros flank hulls + Regent prow, all in dark gold/black
lev=canvas(1024)
flank=crop(tint_metal(recolor(alb,hue=0.11,sat=0.9,val=0.75),(120,100,60),0.5))
place(lev,flank,512-230,560,1.55); place(lev,flank,512+230,560,1.55,flip=True)
from PIL import ImageDraw
dl=ImageDraw.Draw(lev)
for yy,hh in ((330,26),(560,34),(780,26)):
    dl.rectangle([512-235,yy-hh//2,512+235,yy+hh//2],fill=(70,58,30,255),outline=(200,165,80,255),width=3)
    for xx in (512-150,512+150):
        dl.rectangle([xx-10,yy-hh//2-6,xx+10,yy+hh//2+6],fill=(120,95,45,255))
spine=crop(tint_metal(recolor(gua,hue=0.11,sat=1.0,val=0.85),(200,170,90),0.45))
place(lev,spine,512,512,1.9)
prow=crop(recolor(src('alien_blatte'),hue=0.11,sat=0.8,val=0.9))
place(lev,prow,512,170,0.9)
save(fit(lev,1024,0.96),'leviathan')
# turret for the heavy hulls
save(fit(recolor(src('canon_ship1'),hue=0.11,sat=0.6),64,0.9),'turret_heavy')
