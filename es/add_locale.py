#!/usr/bin/env python3
# Usage: add_locale.py <in.apk|in.arsc> <values-xx dir> <out resources.arsc> [lang=es] [clone_from=fr]
# Appends a ResTable_type chunk with locale <lang> for 'string' (and 'array' if present in the xml),
# cloning the ResTable_config of the existing <clone_from> chunk. New values are appended to the global
# string pool; typeSpec flags get CONFIG_LOCALE. Everything else is copied byte-for-byte.
import os, sys, os, struct, zipfile, re, glob
import xml.etree.ElementTree as ET
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import arsc
from arsc import u16, u32

def unescape(s):
    # aapt rules (approx): collapse whitespace outside quotes, drop quotes, process backslash escapes
    out=[]; i=0; q=False; ws=False
    while i<len(s):
        c=s[i]
        if c=='\\' and i+1<len(s):
            n=s[i+1]; out.append({'n':'\n','t':'\t','u':None}.get(n,n) if n!='u' else chr(int(s[i+2:i+6],16)))
            i+=6 if n=='u' else 2; ws=False; continue
        if c=='"': q=not q; i+=1; continue
        if not q and c in ' \t\n\r':
            if not ws: out.append(' ')
            ws=True; i+=1; continue
        ws=False; out.append(c); i+=1
    r=''.join(out)
    return r.strip(' ') if True else r

def text_of(el):
    if len(el):
        print('warn: markup dropped in', el.get('name') or '(item)', file=sys.stderr)
    return unescape(''.join(el.itertext()))

def load_xml(d):
    strings={}; arrays={}
    for f in sorted(glob.glob(os.path.join(d,'*.xml'))):
        root=ET.parse(f).getroot()
        for el in root:
            if el.get('translatable')=='false': continue
            if el.tag=='string': strings[el.get('name')]=text_of(el)
            elif el.tag in('string-array','array'): arrays[el.get('name')]=[text_of(i) for i in el.findall('item')]
    return strings, arrays

def main():
    src, vdir, dst = sys.argv[1:4]
    lang = sys.argv[4] if len(sys.argv)>4 else 'es'
    clone = sys.argv[5] if len(sys.argv)>5 else 'fr'
    if src.endswith('.apk'):
        b=zipfile.ZipFile(src).read('resources.arsc')
    else: b=open(src,'rb').read()
    b=bytearray(b)
    strings, arrays = load_xml(vdir)
    r=arsc.parse(b); go,gs=r['gpool']; gp=arsc.Pool(bytes(b[go:go+gs]))
    # v27: SET_STRINGS="name=value;..." overrides string values in the default table and the new locale (e.g. app_version)
    sets=dict(kv.split('=',1) for kv in os.environ.get('SET_STRINGS','').split(';') if '=' in kv)
    for k,v in sets.items():
        if k in strings: strings[k]=v
    assert len(r['pkgs'])==1
    pk=r['pkgs'][0]; po=pk['off']
    types=pk['types']; keys=pk['keys']
    new_chunks={}   # insert-after-offset -> bytes
    spec_patch=[]   # (abs offset of flags u32)
    stats={}
    for tname, data in (('string',strings),('array',arrays)):
        if not data: continue
        tid=types.index(tname)+1
        default=None; clonec=None; spec=None
        for o,t,h,sz in pk['chunks']:
            if t==0x202 and b[o+8]==tid: spec=o
            if t==0x201 and b[o+8]==tid:
                l=arsc.config_lang(b,o)
                if l==('',''): default=o
                if l==(clone,''): clonec=o
                if l==(lang,''): raise SystemExit('locale %s already present for %s'%(lang,tname))
                last=o
        cfgsrc = clonec if clonec is not None else default
        assert default is not None
        ents=arsc.type_entries(b,default)
        name2idx={keys[k]:i for i,(k,*_) in ents.items()}
        n=u32(b,default+12)
        offsets=[0xffffffff]*n; body=bytearray(); missing=[]
        for name,val in data.items():
            if name not in name2idx: missing.append(name); continue
            i=name2idx[name]; key=ents[i][0]
            offsets[i]=len(body)
            if tname=='string':
                m=re.fullmatch(r'@string/(\w+)',val)
                if m and m.group(1) in name2idx:
                    rv=struct.pack('<HBBI',8,0,1,(pk['id']<<24)|(tid<<16)|name2idx[m.group(1)])
                else:
                    rv=struct.pack('<HBBI',8,0,3,gp.add(val))
                body+=struct.pack('<HHI',8,0,key)+rv
            else:
                body+=struct.pack('<HHIII',16,1,key,0,len(val))
                for j,s in enumerate(val): body+=struct.pack('<I',0x02000000+j)+struct.pack('<HBBI',8,0,3,gp.add(s))
        if missing: print('warn: %d %s names not in base table (ignored): %s'%(len(missing),tname,missing[:8]),file=sys.stderr)
        # header: copy clone header (incl. 64-byte config), fix lang
        hs=u16(b,cfgsrc+2)
        hdr=bytearray(b[cfgsrc:cfgsrc+hs])
        c=20; hdr[c+8:c+10]=lang.encode().ljust(2,b'\0')[:2]; hdr[c+10:c+12]=b'\0\0'
        hdr[9]=0  # flags: dense offsets
        struct.pack_into('<I',hdr,12,n); struct.pack_into('<I',hdr,16,hs+4*n)
        chunk=bytes(hdr)+b''.join(struct.pack('<I',x) for x in offsets)+bytes(body)
        chunk=bytearray(chunk); struct.pack_into('<I',chunk,4,len(chunk))
        new_chunks[last]=bytes(chunk)
        sh=u16(b,spec+2)
        for i,x in enumerate(offsets):
            if x!=0xffffffff: spec_patch.append(spec+sh+4*i)
        stats[tname]=sum(1 for x in offsets if x!=0xffffffff)
    if sets:
        tid=types.index('string')+1
        for o,t,h,sz in pk['chunks']:
            if t==0x201 and b[o+8]==tid and arsc.config_lang(b,o)==('',''):
                hs_=u16(b,o+2); es_=u32(b,o+16)
                for i,(key,*rest) in arsc.type_entries(b,o).items():
                    if keys[key] in sets:
                        e=o+es_+u32(b,o+hs_+4*i); size=u16(b,e)
                        assert b[e+size+3]==3, 'not a string value'
                        struct.pack_into('<I',b,e+size+4,gp.add(sets[keys[key]]))
                        print('set default %s = %s'%(keys[key],sets[keys[key]]))
    for p in spec_patch: struct.pack_into('<I',b,p,u32(b,p)|0x0004)
    # rebuild package
    pkg=bytearray(b[po:po+pk['hs']])
    pos=po+pk['hs']
    for o,t,h,sz in pk['chunks']:
        pkg+=b[o:o+sz]
        if o in new_chunks: pkg+=new_chunks[o]
    struct.pack_into('<I',pkg,4,len(pkg))
    th=u16(b,2)
    rest=bytearray()
    for o,t,h,sz in arsc.chunks(b,th,len(b)):
        if t==1: rest+=gp.build()
        elif t==0x200: rest+=pkg
        else: rest+=b[o:o+sz]
    out=bytearray(b[:th])+rest; struct.pack_into('<I',out,4,len(out))
    open(dst,'wb').write(out)
    print('add_locale: %s -> %s, %s, pool %d strings, %d bytes'%(lang,dst,stats,len(gp.strings),len(out)))
main()
