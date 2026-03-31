CherrygroveMart_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, CHERRYGROVE_CITY, 1
	warp_event  3,  7, CHERRYGROVE_CITY, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveMartClerkScript, -1
	object_event  7,  6, SPRITE_COOL_DUDE, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygroveMartCooltrainerMScript, -1
	object_event  2,  5, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, CherrygroveMartYoungsterText, -1

CherrygroveMartClerkScript:
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftruefwd .AfterDex
	pokemart MARTTYPE_STANDARD, MART_CHERRYGROVE

.AfterDex:
	pokemart MARTTYPE_STANDARD, MART_CHERRYGROVE_DEX

CherrygroveMartCooltrainerMScript:
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue_jumptextfaceplayer CherrygroveMartCooltrainerMText_PokeBallsInStock
	jumpthistextfaceplayer

if DEF(_LOCALE_FR)
	text "Ils n'ont plus de"
	line "Poké Balls!"

	para "Je me demande"
	line "quand ils"
	cont "en recevront…"
	done
else
	text "They're fresh out"
	line "of # Balls!"

	para "When will they get"
	line "more of them?"
	done
endc

CherrygroveMartCooltrainerMText_PokeBallsInStock:
if DEF(_LOCALE_FR)
	text "Les Poké Balls"
	line "sont arrivées! Je"
	cont "vais attraper"
	cont "tous les Pokémon"
	cont "en vue!"
	done
else
	text "# Balls are in"
	line "stock! Now I can"
	cont "catch #mon!"
	done
endc

CherrygroveMartYoungsterText:
if DEF(_LOCALE_FR)
	text "Je marchais"
	line "dans"
	cont "l'herbe et"

	para "un #mon"
	line "Insecte a"
	cont "empoisonné"

	para "le mien…"

	para "Après, j'ai"
	line "continué,"

	para "et mon #mon"
	line "allait"
	cont "de plus en"
	cont "plus mal!"

	para "Il faut"
	line "toujours"
	cont "avoir de"

	para "l'Antidote"
	line "avec soi."
	done
else
	text "When I was walking"
	line "in the grass, a"

	para "bug #mon poi-"
	line "soned my #mon!"

	para "I just kept going,"
	line "and my #mon"
	cont "barely recovered."

	para "You should keep an"
	line "Antidote with you."
	done
endc
