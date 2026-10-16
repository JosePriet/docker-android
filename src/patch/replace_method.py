# usage: replace_method.py file.smali "method signature line prefix" newbody.smali
import sys,re
f,sig,new=sys.argv[1:4]
s=open(f).read(); n=open(new).read().strip()+"\n"
i=s.index(sig); j=s.index(".end method",i)+len(".end method\n")
open(f,'w').write(s[:i]+n+s[j:]); print("replaced",sig.strip())
