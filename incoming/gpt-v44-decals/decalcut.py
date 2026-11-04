# usage: sheet.png outdir family  -> decal_<family>_1..3.png (512x512 RGBA)
# GPT sheets carry a fake soft grey "fade" halo (partial alpha, light grey RGB). Keep only the damage marks:
# alpha *= how far each pixel's brightness departs from the local halo brightness; then cut 3 cells, 512 square
# window centred on each mark, radial fade so the decal is fully transparent before its edge. No scaling.
import sys, os; import numpy as np; from PIL import Image; from scipy import ndimage
src,out,fam=sys.argv[1],sys.argv[2],sys.argv[3]
x=np.asarray(Image.open(src).convert('RGBA')).astype(float); H,W=x.shape[:2]
L=x[...,:3].mean(2); A=x[...,3]/255
Lm=ndimage.median_filter(np.where(A>0.05,L,0),size=31)             # marks removed
w=ndimage.gaussian_filter((A>0.05).astype(float),12)
B=ndimage.gaussian_filter(Lm,12)/np.maximum(w,1e-3)                   # halo brightness (normalised, no edge bias)
d=np.abs(B-L)/np.maximum(B,30)
a=A*np.clip((d-0.12)/0.25,0,1)*np.clip((A-0.45)/0.4,0,1)             # drop the halo's soft outer rim
a=ndimage.gaussian_filter(a,0.6)
cw=W//3; S=512; r=np.hypot(*np.mgrid[-S/2+.5:S/2,-S/2+.5:S/2]); win=np.clip((S/2-8-r)/40,0,1)
for i in range(3):
    sub=a[:,i*cw:(i+1)*cw]
    ys,xs=np.nonzero(sub>0.15)
    cy,cx=(int(ys.mean()),int(xs.mean())+i*cw) if len(ys) else (H//2,i*cw+cw//2)
    y0=min(max(cy-S//2,0),H-S); x0=min(max(cx-S//2,i*cw-(S-cw)//2),W-S); x0=max(x0,0)
    rgb=x[y0:y0+S,x0:x0+S,:3]; aa=a[y0:y0+S,x0:x0+S]*win
    o=np.dstack([rgb,aa*255]).round().clip(0,255).astype(np.uint8); o[aa<=0.004]=0
    p=os.path.join(out,'decal_%s_%d.png'%(fam,i+1)); Image.fromarray(o,'RGBA').save(p)
    print(p,'edge alpha max',int(o[[0,-1],:,3].max()),int(o[:,[0,-1],3].max()),'cover',round((o[...,3]>20).mean(),3))
