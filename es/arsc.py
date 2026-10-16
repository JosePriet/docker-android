# Minimal resources.arsc reader/writer helpers (shared by add_locale.py and dump checks).
import struct
def u16(b,o): return struct.unpack_from('<H',b,o)[0]
def u32(b,o): return struct.unpack_from('<I',b,o)[0]

def _len8(b,o):
    n=b[o]; o+=1
    if n&0x80: n=((n&0x7f)<<8)|b[o]; o+=1
    return n,o
def _len16(b,o):
    n=u16(b,o); o+=2
    if n&0x8000: n=((n&0x7fff)<<16)|u16(b,o); o+=2
    return n,o

class Pool:
    def __init__(self, b):
        self.raw=b
        hs=u16(b,2); self.count=u32(b,8); self.scount=u32(b,12); self.flags=u32(b,16)
        ss=u32(b,20); sts=u32(b,24); self.utf8=bool(self.flags&0x100)
        offs=[u32(b,hs+4*i) for i in range(self.count)]
        soffs=[u32(b,hs+4*self.count+4*i) for i in range(self.scount)]
        self.strings=[]
        for o in offs:
            p=ss+o
            if self.utf8:
                _,p=_len8(b,p); n,p=_len8(b,p); self.strings.append(b[p:p+n].decode('utf-8','replace'))
            else:
                n,p=_len16(b,p); self.strings.append(b[p:p+2*n].decode('utf-16le','replace'))
        # styles kept raw
        self.styles_raw=b[sts:len(b)] if self.scount else b''
        self.style_offs=soffs
    def add(self,s):
        self.strings.append(s); return len(self.strings)-1
    def build(self):
        data=bytearray(); offs=[]
        for s in self.strings:
            offs.append(len(data))
            if self.utf8:
                e=s.encode('utf-8'); n16=len(s.encode('utf-16le'))//2
                for n in (n16,len(e)):
                    if n>0x7f: data+=bytes([0x80|(n>>8),n&0xff])
                    else: data+=bytes([n])
                data+=e+b'\0'
            else:
                e=s.encode('utf-16le'); n=len(e)//2
                data+=struct.pack('<H',n) if n<0x8000 else struct.pack('<HH',0x8000|(n>>16),n&0xffff)
                data+=e+b'\0\0'
        while len(data)%4: data+=b'\0'
        hs=28
        ss=hs+4*len(self.strings)+4*self.scount
        sts=(ss+len(data)) if self.scount else 0
        body=b''.join(struct.pack('<I',o) for o in offs)+b''.join(struct.pack('<I',o) for o in self.style_offs)+bytes(data)+self.styles_raw
        size=hs+len(body)
        return struct.pack('<HHIIIIII',1,hs,size,len(self.strings),self.scount,self.flags,ss,sts)+body

def chunks(b,start,end):
    o=start
    while o<end:
        t,hs,sz=struct.unpack_from('<HHI',b,o); yield o,t,hs,sz; o+=sz

def parse(b):
    """returns dict: gpool(off,size), pkg info and list of type/spec chunks"""
    assert u16(b,0)==2
    hs=u16(b,2); res={'pkgs':[]}
    for o,t,h,sz in chunks(b,hs,len(b)):
        if t==1: res['gpool']=(o,sz)
        elif t==0x200:
            pk={'off':o,'size':sz,'hs':h,'id':u32(b,o+8)}
            ts=u32(b,o+268); ks=u32(b,o+276)
            pk['types']=Pool(b[o+ts:o+ts+u32(b,o+ts+4)]).strings
            pk['keys']=Pool(b[o+ks:o+ks+u32(b,o+ks+4)]).strings
            pk['chunks']=list(chunks(b,o+h,o+sz))
            res['pkgs'].append(pk)
    return res

def config_lang(b,o):
    # ResTable_type: header(8) id(1) flags(1) res(2) entryCount(4) entriesStart(4) config(...)
    c=o+20
    return bytes(b[c+8:c+10]).rstrip(b'\0').decode('latin-1'), bytes(b[c+10:c+12]).rstrip(b'\0').decode('latin-1')

def type_entries(b,o,gstrings=None):
    """yield (index, key, flags, value-tuple or bag) for a ResTable_type chunk"""
    hs=u16(b,o+2); n=u32(b,o+12); es=u32(b,o+16); flags=b[o+9]
    out={}
    for i in range(n):
        off=u32(b,o+hs+4*i)
        if off==0xffffffff: continue
        p=o+es+off; size,fl,key=struct.unpack_from('<HHI',b,p)
        if fl&1:
            parent,cnt=struct.unpack_from('<II',b,p+8); items=[]
            q=p+size
            for _ in range(cnt):
                name=u32(b,q); _,_,dt,data=struct.unpack_from('<HBBI',b,q+4); items.append((name,dt,data)); q+=12
            out[i]=(key,'bag',items)
        else:
            _,_,dt,data=struct.unpack_from('<HBBI',b,p+size); out[i]=(key,dt,data)
    return out
