BlackthornMart_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, BLACKTHORN_CITY, 4
	warp_event  3,  7, BLACKTHORN_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
	mart_clerk_event  1,  3, MARTTYPE_STANDARD, MART_BLACKTHORN
	object_event  7,  6, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, BlackthornMartCooltrainermText, -1
	object_event  5,  2, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, BlackthornMartBlackbeltText, -1
	object_event 11,  3, SPRITE_POKEMANIAC, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, BlackthornMartSuperNerdText, -1

BlackthornMartCooltrainermText:
if DEF(_LOCALE_FR)
	text "Le Rappel Max"
	line "soigne un"
	cont "#mon K.O."

	para "Mais il ne"
	line "rend pas"
	cont "les PP."
	done
else
	text "You can't buy Max"
	line "Revive, but it"

	para "fully restores a"
	line "fainted #mon."

	para "Beware--it won't"
	line "restore PP, the"

	para "Power Points"
	line "needed for moves."
	done
endc

BlackthornMartBlackbeltText:
if DEF(_LOCALE_FR)
	text "Repousse Max"
	line "eloigne"
	cont "les faibles."

	para "C'est le plus"
	line "long."
	done
else
	text "Max Repel keeps"
	line "weak #mon away"
	cont "from you."

	para "It's the longest"
	line "lasting of the"
	cont "Repel sprays."
	done
endc

BlackthornMartSuperNerdText:
if DEF(_LOCALE_FR)
	text "Les villes"
	line "de Johto"
	cont "sont"

	para "nommees"
	line "comme des"
	cont "plantes."

	para "T'as vu?"
	done
else
	text "The towns in Johto"
	line "are all named"
	cont "after plants."

	para "Did you ever"
	line "notice?"
	done
endc
