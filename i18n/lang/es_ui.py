# v25 phase-2a: Spanish for the mod's UI labels (exact-match keys, also matched per " · " segment by ModLang.translateTree)
import json, sys
T = {
# ship tree
"◀ TREE": "◀ ÁRBOL", "TREE": "ÁRBOL", "SHIP TREE": "ÁRBOL DE NAVES", "FRIGATE": "FRAGATA", "DESTROYER": "DESTRUCTOR", "CRUISER": "CRUCERO",
"BATTLECRUISER": "CRUCERO DE BATALLA", "BATTLESHIP": "ACORAZADO", "CAPITAL / TITAN": "CAPITAL / TITÁN", "INDUSTRIAL": "INDUSTRIAL",
"Independent": "Independiente", "Developers": "Desarrolladores", "Original hulls · no faction standing": "Cascos originales · sin reputación de facción",
"Gift code hull": "Casco de código regalo", "Standings": "Reputación", "Inbox": "Buzón", "No ships in this faction yet.": "Aún no hay naves en esta facción.",
"NEW": "NUEVA", "HONORED": "HONRADO", "FLYING": "EN USO", "OWNED": "TUYA", "BUY": "COMPRAR", "CREDITS": "CRÉDITOS", "GIFT": "REGALO", "LICENCE": "LICENCIA",
"You are flying this ship": "Estás pilotando esta nave", "Owned": "En propiedad", "Can buy now": "Puedes comprarla", "Not enough credits": "Créditos insuficientes",
"Locked": "Bloqueada", "Close": "Cerrar", "OPEN ▶": "ABRIR ▶", "LOCKED": "BLOQUEADA",
"Disciplined fleets; safe passage is a public duty.": "Flotas disciplinadas; el paso seguro es un deber público.",
"Share the spoils. Never leave a crew behind.": "Reparte el botín. Nunca abandones a una tripulación.",
"One living signal can guide a whole migration.": "Una sola señal viva puede guiar toda una migración.",
"Every risk priced. Every obligation recorded.": "Cada riesgo tiene precio. Cada obligación, registro.",
"Repair what you can. Hold while neighbors escape.": "Repara lo que puedas. Resiste mientras los vecinos escapan.",
"Keep routes open with dependable speed.": "Mantén las rutas abiertas con velocidad confiable.",
"Rescue first. Keep the frontier routes public.": "Primero el rescate. Rutas fronterizas siempre públicas.",
"Civilian workhorses and pirate-market hulls.": "Naves civiles de carga y cascos del mercado pirata.",
"Fleet discipline": "Disciplina de flota", "Layered shields": "Escudos en capas", "Escort support": "Apoyo de escolta", "Salvage armor": "Blindaje rescatado",
"Close assault": "Asalto cercano", "Crew loyalty": "Lealtad de tripulación", "Living hulls": "Cascos vivos", "Brood survival": "Supervivencia de la camada",
"Signal swarm": "Enjambre de señales", "Contract fleets": "Flotas por contrato", "Protected cores": "Núcleos protegidos", "Measured force": "Fuerza medida",
"Heavy armor": "Blindaje pesado", "Field repairs": "Reparaciones de campo", "Hold the line": "Mantener la línea", "Fast hulls": "Cascos rápidos",
"Efficient engines": "Motores eficientes", "Trade routes": "Rutas comerciales", "Long patrol": "Patrulla larga", "Rescue service": "Servicio de rescate", "Open routes": "Rutas abiertas",
# fitting
"WEAPON": "ARMA", "LAUNCHER": "LANZADOR", "SHIELD": "ESCUDO", "BOOSTER": "PROPULSOR", "HYPERDRIVE": "HIPERMOTOR", "HULL": "CASCO",
"HIGH SLOT": "RANURA ALTA", "MID SLOT": "RANURA MEDIA", "LOW SLOT": "RANURA BAJA", "HIGH": "ALTA", "MID": "MEDIA", "LOW": "BAJA",
"nothing fitted": "nada equipado", "No launcher fitted": "Sin lanzador", "No booster fitted": "Sin propulsor", "No hyperdrive fitted": "Sin hipermotor",
"FITTING": "EQUIPAMIENTO", "CLASSIC": "CLÁSICO", "SHIP STATUS": "ESTADO DE LA NAVE", "CARGO HOLD": "BODEGA", "CARGO": "CARGA", "MISSILES": "MISILES",
"INVENTORY": "INVENTARIO", "CASH SHOP": "TIENDA", "SHIPS": "NAVES", "DEFENSE": "DEFENSA", "Hull HP": "PV del casco", "Shield HP": "PV del escudo",
"Shield regen": "Regen. de escudo", "Regen delay": "Retraso de regen.", "Armour rating": "Blindaje", "Hull repair": "Reparación de casco", "OFFENSE": "ATAQUE",
"Beam": "Rayo", "Guns": "Cañones", "Cycle time": "Ciclo", "Laser DPS (item)": "DPS láser (objeto)", "Fitted DPS (est.)": "DPS equipado (est.)",
"Missile damage": "Daño de misil", "Missile reload": "Recarga de misil", "Launchers": "Lanzadores", "Missiles": "Misiles", "no launcher": "sin lanzador",
"(no launcher)": "(sin lanzador)", "NAVIGATION": "NAVEGACIÓN", "Top speed": "Velocidad máx.", "Agility": "Agilidad", "Mass": "Masa", "Booster": "Propulsor",
"Hyperdrive": "Hipermotor", "Hold": "Bodega", "Hull cargo bonus": "Bonificación de carga", "HULL BONUSES": "BONIFICACIONES DEL CASCO",
"CLOSE": "CERRAR", "DETAILS": "DETALLES", "FITTED": "EQUIPADO", "IN CARGO — TAP FIT TO SWAP (the fitted item returns to your hold)": "EN BODEGA — TOCA EQUIPAR PARA CAMBIAR (el objeto equipado vuelve a tu bodega)",
"FIT": "EQUIPAR", "OPEN INVENTORY": "ABRIR INVENTARIO", "Empty slot": "Ranura vacía", "none": "ninguno", "Static": "Fijo",
# ModUi toolbar
"Sell junk": "Vender chatarra", "Rarity": "Rareza", "Level": "Nivel", "Value": "Valor", "Name": "Nombre", "Gift code": "Código regalo",
"Rarity: All": "Rareza: todas", "SELL": "VENDER", "Sell": "Vender", "Cancel": "Cancelar", "No Common gear below your level to sell.": "No hay equipo común por debajo de tu nivel para vender.",
# shields / alerts / titan
"SHIELDS REBOOTING": "REINICIANDO ESCUDOS", "SHIELD EMITTERS DAMAGED - HALF RECHARGE UNTIL REPAIRED": "EMISORES DAÑADOS - MEDIA RECARGA HASTA REPARAR",
"DISENGAGING": "RETIRÁNDOSE", "FURNACE NOVA": "NOVA DE FORJA", "DOOMSDAY LANCE": "LANZA DEL JUICIO", "FURNACE NOVA CHARGING": "CARGANDO NOVA DE FORJA",
"DOOMSDAY CHARGING": "CARGANDO JUICIO FINAL", "CHARGING": "CARGANDO", "FIRING": "DISPARANDO",
"Ship-specific gear moved to your hold and swapped for compatible gear.": "El equipo exclusivo pasó a tu bodega y se cambió por equipo compatible.",
# comms / standings
"Flagship and patrols attack on sight. The commander will not answer.": "La nave insignia y las patrullas atacan a primera vista. El comandante no responderá.",
"Only amends contracts are offered.": "Solo se ofrecen contratos de reparación.", "Faction standings": "Reputación con facciones",
"Hostile": "Hostil", "Unfriendly": "Inamistoso", "Neutral": "Neutral", "Friendly": "Amistoso", "Trusted": "De confianza", "Honored": "Honrado",
# language selector
"Language changed. Restart the game to apply it everywhere.": "Idioma cambiado. Reinicia el juego para aplicarlo en todas partes.",
"empty": "vacía", "Corsair mod options": "Opciones del mod Corsair", "Bigger buttons": "Botones más grandes", "Damage numbers": "Números de daño",
"Fixed joystick (off = joystick appears under your thumb)": "Joystick fijo (apagado = aparece bajo tu pulgar)", "Numbers on hull and shield bars": "Números en las barras de casco y escudo",
"We defend civilian routes with coordinated formations, layered shields and visible command ships. Force is a public trust, measured by who makes it home.": "Defendemos las rutas civiles con formaciones coordinadas, escudos en capas y naves de mando visibles. La fuerza es una confianza pública, medida por quién vuelve a casa.",
"Captains earn authority by keeping a crew fed and a ship flying. Salvaged armor, close-range pressure and a hard code make betrayal costly.": "Los capitanes ganan autoridad manteniendo a la tripulación alimentada y la nave en vuelo. Blindaje rescatado, presión a corta distancia y un código duro hacen cara la traición.",
"Living hulls carry brood chambers between safe worlds. Shared memory and the survival of the young shape every migration and answer to danger.": "Cascos vivos llevan cámaras de cría entre mundos seguros. La memoria compartida y la supervivencia de las crías guían cada migración y cada respuesta al peligro.",
"Predictable routes and enforceable contracts are our public good. Symmetrical command hulls protect the core while measured force keeps agreements intact.": "Rutas predecibles y contratos exigibles son nuestro bien público. Cascos de mando simétricos protegen el núcleo mientras una fuerza medida mantiene los acuerdos.",
"Settlement crews build with replaceable armor, visible braces and parts a belt-side shop can repair. We hold ground until the evacuation is done.": "Las cuadrillas de los asentamientos construyen con blindaje reemplazable, refuerzos visibles y piezas que cualquier taller del cinturón repara. Resistimos hasta completar la evacuación.",
"Our light, efficient hulls move people and cargo between markets. Shared standards and reliable engines turn each successful contract into the next open route.": "Nuestros cascos ligeros y eficientes mueven gente y carga entre mercados. Estándares comunes y motores fiables convierten cada contrato cumplido en la próxima ruta abierta.",
"Rangers patrol beyond easy support, mark safe passages and answer distress calls. We cooperate on security while resisting tolls that close a public route.": "Los guardabosques patrullan lejos de todo apoyo, marcan pasos seguros y responden a llamadas de auxilio. Cooperamos en seguridad y rechazamos peajes que cierran rutas públicas.",
"Unaligned ships trade under local names and practical warranties. Expect civilian refits, salvaged hardware and a seller who values payment more than a flag.": "Naves sin bandera comercian con nombres locales y garantías prácticas. Espera reformas civiles, equipo rescatado y un vendedor que valora el pago más que una bandera.",
}
json.dump(T, open(sys.argv[1], 'w', encoding='utf-8'), ensure_ascii=False, indent=0, sort_keys=True)
print(len(T))
