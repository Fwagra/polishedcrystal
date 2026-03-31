VioletMart_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, VIOLET_CITY, 1
	warp_event  3,  7, VIOLET_CITY, 1

	def_coord_events

	def_bg_events

	def_object_events
	mart_clerk_event  1,  3, MARTTYPE_STANDARD, MART_VIOLET
	object_event  7,  6, SPRITE_GRANNY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, VioletMartGrannyText, -1
	object_event  5,  2, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, VioletMartCooltrainerMText, -1

VioletMartGrannyText:
if DEF(_LOCALE_FR)
	text "Quand tu cap-"
	line "tures un #mon,"

	para "il peut etre"
	line "faible."

	para "Mais il"
	line "deviendra"
	cont "fort."

	para "Aime bien"
	line "tes #mon."
	done
else
	text "When you first"
	line "catch a #mon,"
	cont "it may be weak."

	para "But it will even-"
	line "tually grow to be"
	cont "strong."

	para "It's important to"
	line "treat #mon with"
	cont "love."
	done
endc

VioletMartCooltrainerMText:
if DEF(_LOCALE_FR)
	text "Les #mon"
	line "peuvent tenir"
	cont "des objets,"

	para "mais ils ne"
	line "savent pas"
	cont "se servir"

	para "de ceux crees"
	line "par les"
	cont "humains,"

	para "comme une"
	line "Potion ou"
	cont "un Antidote."
	done
else
	text "#mon can hold"
	line "items like Potion"
	cont "and Antidote."

	para "But they don't"
	line "appear to know how"

	para "to use man-made"
	line "items."
	done
endc
