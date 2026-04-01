CherrygroveEvolutionSpeechHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, CHERRYGROVE_CITY, 5
	warp_event  3,  7, CHERRYGROVE_CITY, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  5, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptext, CherrygroveEvolutionSpeechHouseLassText, -1
	object_event  2,  5, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptext, CherrygroveEvolutionSpeechHouseYoungsterText, -1

CherrygroveEvolutionSpeechHouseYoungsterText:
if DEF(_LOCALE_FR)
	text "Les #mon"
	line "gagnent de l'expé-"

	para "rience et évoluent"
	line "en combattant."
	done
else
	text "#mon gain expe-"
	line "rience in battle"

	para "and change their"
	line "form."
	done
endc

CherrygroveEvolutionSpeechHouseLassText:
if DEF(_LOCALE_FR)
	text "Les #mon"

	para "évoluent?"
	para "Je serais curieuse"
	line "de voir ça!"
	done
else
	text "#mon change?"

	para "I would be shocked"
	line "if one did that!"
	done
endc
