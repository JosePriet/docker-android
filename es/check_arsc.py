import sys
from loguru import logger; logger.remove()
from androguard.core.axml import ARSCParser
a=ARSCParser(open(sys.argv[1],'rb').read())
p=a.get_packages_names()[0]
print('locales',a.get_locales(p))
names=sys.argv[2:] or ['stone','diamond','water','app_name','ruby']
for n in names:
    rid=a.get_res_id_by_key(p,'string',n)
    print(n, hex(rid), [(str(c.get_language()),v) for c,v in a.get_resolved_res_configs(rid)])
