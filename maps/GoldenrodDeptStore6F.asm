GoldenrodDeptStore6F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 15,  0, GOLDENROD_DEPT_STORE_5F, 2
	warp_event  2,  0, GOLDENROD_DEPT_STORE_ELEVATOR, 1
	warp_event 13,  0, GOLDENROD_DEPT_STORE_ROOF, 1

	def_coord_events

	def_bg_events
	bg_event 14,  0, BGEVENT_JUMPTEXT, GoldenrodDeptStore6FDirectoryText

	def_object_events
	object_event 10,  2, SPRITE_PICNICKER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldenrodDeptStore6FLassText, -1
	object_event  8,  2, SPRITE_POKEMANIAC, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldenrodDeptStore6FSuperNerdText, -1

GoldenrodDeptStore6FLassText:
if DEF(_LOCALE_FR)
	text "Ecoutes-tu"
	line "L'ANTENNE DE LA"
	cont "CHANCE?"

	para "Si tu veux gagner,"
	line "échange un maximum"

	para "de #MON avec le"
	line "plus de personnes"

	para "possibles pour"
	line "avoir un max de"
	cont "numéros ID"
	cont "différents."
	done
else
	text "Do you listen to"
	line "Lucky Channel?"

	para "If you want to"
	line "win, trade #mon"

	para "with as many peo-"
	line "ple as possible to"

	para "get different ID"
	line "numbers."
	done
endc

GoldenrodDeptStore6FSuperNerdText:
if DEF(_LOCALE_FR)
	text "Si tu es naze,"
	line "sers-toi du"
	cont "distributeur auto-"
	cont "matique."

	para "Ton #MON"
	line "appréciera aussi."
	done
else
	text "If you're tired,"
	line "try the vending"
	cont "machine's drinks."

	para "Your #mon will"
	line "love them too."
	done
endc

GoldenrodDeptStore6FDirectoryText:
if DEF(_LOCALE_FR)
	text "Une petite pause!"

	para "5EME COIN"
	line "     TRANQUILLE"
	done
else
	text "Take a Break from"
	line "Shopping!"

	para "6F Tranquil Square"
	done
endc
