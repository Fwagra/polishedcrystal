GoldenrodDeptStore2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 12,  0, GOLDENROD_DEPT_STORE_3F, 1
	warp_event 15,  0, GOLDENROD_DEPT_STORE_1F, 3
	warp_event  2,  0, GOLDENROD_DEPT_STORE_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event 14,  0, BGEVENT_JUMPTEXT, GoldenrodDeptStore2FDirectoryText

	def_object_events
	object_event 13,  5, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_COMMAND, pokemart, MARTTYPE_STANDARD, MART_GOLDENROD_2F_1, -1
	object_event 13,  6, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore2FClerk2Script, -1
	object_event  9,  6, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldenrodDeptStore2FYoungsterText, -1
	object_event  6,  2, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldenrodDeptStore2FCooltrainerFText, -1
	object_event  2,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldenrodDeptStore2FGentlemanText, -1

GoldenrodDeptStore2FClerk2Script:
	checkevent EVENT_GOT_EEVEE
	iftruefwd .eevee
	pokemart MARTTYPE_STANDARD, MART_GOLDENROD_2F_2

.eevee
	pokemart MARTTYPE_STANDARD, MART_GOLDENROD_2F_2_EEVEE

GoldenrodDeptStore2FYoungsterText:
if DEF(_LOCALE_FR)
	text "Le #MATOS"
	line "peut enregistrer"
	cont "jusqu'à dix"
	cont "numéros."

	para "C'est difficile de"
	line "décider quel"
	cont "numéro garder."
	done
else
	text "#gear has no"
	line "storage limit."

	para "But getting too"
	line "many phone calls"
	cont "can be annoying."
	done
endc

GoldenrodDeptStore2FCooltrainerFText:
if DEF(_LOCALE_FR)
	text "J'ai eu mon ABRA"
	line "au CASINO."

	para "Maintenant, c'est"
	line "mon meilleur ami."
	done
else
	text "I got my Abra at"
	line "the Game Corner."

	para "Now it's my best"
	line "partner."
	done
endc

GoldenrodDeptStore2FGentlemanText:
if DEF(_LOCALE_FR)
	text "Ce CENTRE COMMER-"
	line "CIAL montre que"

	para "DOUBLONVILLE est"
	line "une grande ville."

	para "La marchandise est"
	line "la meilleure de"
	cont "la région."
	done
else
	text "This Dept.Store"
	line "makes me realize"

	para "that Goldenrod is"
	line "a big city."

	para "The selection here"
	line "is unmatched any-"
	cont "where else."
	done
endc

GoldenrodDeptStore2FDirectoryText:
if DEF(_LOCALE_FR)
	text "Votre compagnon de"
	line "voyage"

	para "1ER  BOUTIQUE"
	line "     DRESSEUR"
	done
else
	text "Your Travel"
	line "Companion"

	para "2F Trainer's"
	line "   Market"
	done
endc
