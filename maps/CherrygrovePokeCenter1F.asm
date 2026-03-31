CherrygrovePokeCenter1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  7, CHERRYGROVE_CITY, 2
	warp_event  6,  7, CHERRYGROVE_CITY, 2
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events
	bg_event 10,  1, BGEVENT_READ, PokemonJournalRedScript

	def_object_events
	pc_nurse_event  5, 1
	object_event  1,  6, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygrovePokeCenter1FTeacherScript, -1
	object_event  8,  1, SPRITE_FAT_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, CherrygrovePokeCenter1FFisherText, -1
	object_event 11,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CherrygrovePokeCenter1FGentlemanText, -1
	object_event  9,  4, SPRITE_LADY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, CherrygrovePokeCenter1FLadyText, -1

PokemonJournalRedScript:
	setflag ENGINE_READ_RED_JOURNAL
	jumptext PokemonJournalRedText

PokemonJournalRedText:
if DEF(_LOCALE_FR)
	text "Journal #mon"

	para "Dossier spécial:"
	line "Red!"

	para "On dit que Red"
	line "a battu"
	cont "Blue"

	para "et est devenu"
	line "Maître de la"
	cont "Ligue"

	para "en un temps"
	line "record."
	done
else
	text "#mon Journal"

	para "Special Feature:"
	line "<PK><MN> Trainer Red!"

	para "Red is said to"
	line "have defeated his"

	para "rival Blue for the"
	line "title of #mon"

	para "League Champion in"
	line "record time."
	done
endc

CherrygrovePokeCenter1FTeacherScript:
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue_jumptextfaceplayer CherrygrovePokeCenter1FTeacherText2
	jumptextfaceplayer CherrygrovePokeCenter1FTeacherText1

CherrygrovePokeCenter1FTeacherText1:
if DEF(_LOCALE_FR)
	text "Ils installent"
	line "un centre de"
	cont "connexion"

	line "à l'étage."

	para "Mais il n'est"
	line "pas encore prêt."
	done
else
	text "The Communication"
	line "Center upstairs"
	cont "was just built."

	para "But they're still"
	line "finishing it up."
	done
endc

CherrygrovePokeCenter1FTeacherText2:
if DEF(_LOCALE_FR)
	text "Ils ont installé"
	line "un centre de"
	cont "connexion"

	line "à l'étage."

	para "J'ai déjà fait"
	line "un échange de"
	cont "Pokémon!"
	done
else
	text "The Communication"
	line "Center upstairs"
	cont "was just built."

	para "I traded #mon"
	line "there already!"
	done
endc

CherrygrovePokeCenter1FFisherText:
if DEF(_LOCALE_FR)
	text "Heureusement"
	line "qu'on peut"
	cont "laisser"

	para "autant de Pokémon"
	line "qu'on veut"
	cont "gratuitement!"
	done
else
	text "It's great. I can"
	line "store any number"

	para "of #mon, and"
	line "it's all free."
	done
endc

CherrygrovePokeCenter1FGentlemanText:
if DEF(_LOCALE_FR)
	text "Le PC posé là-bas"
	line "peut être utilisé"

	para "par n'importe quel"
	line "Dresseur,"

	para "alors ne te gêne"
	line "pas!"
	done
else
	text "That PC is free"
	line "for any trainer"
	cont "to use."
	done
endc

CherrygrovePokeCenter1FLadyText:
if DEF(_LOCALE_FR)
	text "Le Journal #mon"
	line "a des"
	cont "histoires"

	para "passionnantes!"

	para "Je viens ici"
	line "pour le"
	cont "dernier."

	para "Mais on peut"
	line "s'abonner"

	para "ailleurs aussi."
	done
else
	text "#mon Journal"
	line "has such fascin-"
	cont "ating stories!"

	para "I come to #mon"
	line "Centers for the"

	para "latest issues, but"
	line "they're not the"

	para "only place with"
	line "a subscription."
	done
endc
