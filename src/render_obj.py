# Minimal top-down OBJ renderer (painter's algorithm + lambert shading) -> PNG sprite
import sys, math
from PIL import Image, ImageDraw
def load(objp):
    mats={}; cur=None; V=[]; F=[]
    base=objp.rsplit('/',1)[0]
    for line in open(objp):
        p=line.split()
        if not p: continue
        if p[0]=='mtllib':
            for l2 in open(base+'/'+p[1]):
                q=l2.split()
                if q and q[0]=='newmtl': m=q[1]
                elif q and q[0]=='Kd': mats[m]=tuple(float(x) for x in q[1:4])
        elif p[0]=='usemtl': cur=p[1]
        elif p[0]=='v': V.append(tuple(float(x) for x in p[1:4]))
        elif p[0]=='f': F.append(([int(x.split('/')[0])-1 for x in p[1:]], cur))
    return V,F,mats
def render(objp, outp, size=256):
    V,F,mats=load(objp)
    # top-down: look along -Y (Kenney models are Y-up); screen x=X, screen y=Z (nose toward -Z = up)
    xs=[v[0] for v in V]; zs=[v[2] for v in V]
    ext=max(max(xs)-min(xs), max(zs)-min(zs)); cx=(max(xs)+min(xs))/2; cz=(max(zs)+min(zs))/2
    s=size*0.9/ext; SS=4; img=Image.new('RGBA',(size*SS,size*SS),(0,0,0,0)); d=ImageDraw.Draw(img)
    L=(-0.4,0.85,-0.35); ln=math.sqrt(sum(c*c for c in L)); L=tuple(c/ln for c in L)
    tris=[]
    for idx,m in F:
        pts=[V[i] for i in idx]
        a,b,c=pts[0],pts[1],pts[2]
        u=(b[0]-a[0],b[1]-a[1],b[2]-a[2]); w=(c[0]-a[0],c[1]-a[1],c[2]-a[2])
        n=(u[1]*w[2]-u[2]*w[1], u[2]*w[0]-u[0]*w[2], u[0]*w[1]-u[1]*w[0]); nl=math.sqrt(sum(k*k for k in n)) or 1
        n=tuple(k/nl for k in n)
        if n[1] <= 0: continue
        sh=0.35+0.65*max(0,sum(n[k]*L[k] for k in range(3)))
        col=mats.get(m,(0.7,0.7,0.7)); col=tuple(int(min(1,c*sh)*255) for c in col)+(255,)
        depth=sum(p[1] for p in pts)/len(pts)
        poly=[((p[0]-cx)*s*SS+size*SS/2, (p[2]-cz)*s*SS+size*SS/2) for p in pts]
        tris.append((depth,poly,col))
    for _,poly,col in sorted(tris,key=lambda t:t[0]):
        d.polygon(poly,fill=col)
    img=img.resize((size,size),Image.LANCZOS); img.save(outp)
if __name__=='__main__':
    render(sys.argv[1], sys.argv[2], int(sys.argv[3]) if len(sys.argv)>3 else 256)
