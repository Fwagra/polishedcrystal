CeladonDeptStore2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 12,  0, CELADON_DEPT_STORE_3F, 1
	warp_event 15,  0, CELADON_DEPT_STORE_1F, 3
	warp_event  2,  0, CELADON_DEPT_STORE_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event 14,  0, BGEVENT_JUMPTEXT, CeladonDeptStore2FDirectoryText

	def_object_events
	object_event 13,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, pokemart, MARTTYPE_STANDARD, MART_CELADON_2F_1, -1
	object_event 14,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, pokemart, MARTTYPE_STANDARD, MART_CELADON_2F_2, -1
	object_event  5,  2, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonDeptStore2FPokefanMText, -1
	object_event  6,  2, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonDeptStore2FYoungsterText, -1

CeladonDeptStore2FPokefanMText:
if DEF(_LOCALE_FR)
	text "Je suis tout neuf"
	line "Dresseur."

	para "Mon fils m'a"
	line "encouragé."

	para "Je suis bluffé"
	line "par le choix d'"
	cont "objets pratiques."
	done
else
	text "I just recently"
	line "became a trainer."

	para "My son encouraged"
	line "me to do it."

	para "I'm impressed by"
	line "the selection of"
	cont "convenient items."
	done
endc

CeladonDeptStore2FYoungsterText:
if DEF(_LOCALE_FR)
	text "Mon père a du mal"
	line "à retenir les"

	para "noms des objets"
	line "et leurs usages…"
	done
else
	text "My dad's having a"
	line "hard time learning"

	para "the names of items"
	line "and how they are"

	para "supposed to be"
	line "used…"
	done
endc

CeladonDeptStore2FDirectoryText:
if DEF(_LOCALE_FR)
	text "Objets de choix"
	line "pour Dresseurs!"

	para "2F: Marché"
	line "    Dresseur"
	done
else
	text "Top Grade Items"
	line "for Trainers!"

	para "2F: Trainer's"
	line "    Market"
	done
endc
