CeruleanTradeSpeechHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, CERULEAN_CITY, 3
	warp_event  3,  7, CERULEAN_CITY, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  4, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeruleanTradeSpeechHouseGrannyText, -1
	object_event  3,  2, SPRITE_GRAMPS, SPRITEMOVEDATA_WANDER, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeruleanTradeSpeechHouseGrampsText, -1
	pokemon_event  6,  2, POLIWRATH, SPRITEMOVEDATA_POKEMON, -1, PAL_NPC_BLUE, CeruleanTradeSpeechHouseRhydonText, -1
	pokemon_event  5,  6, IVYSAUR, SPRITEMOVEDATA_POKEMON, -1, PAL_NPC_TEAL, CeruleanTradeSpeechHouseZubatText, -1

CeruleanTradeSpeechHouseGrannyText:
if DEF(_LOCALE_FR)
	text "Mon mari aime les"
	line "#mon qu'il a"
	cont "eu en faisant des"
	cont "échanges."
	done
else
	text "My husband lives"
	line "happily with #-"
	cont "mon he got through"
	cont "trades."
	done
endc

CeruleanTradeSpeechHouseGrampsText:
if DEF(_LOCALE_FR)
	text "Ah... Super..."
	done
else
	text "Ah… I'm so happy…"
	done
endc

CeruleanTradeSpeechHouseRhydonText:
if DEF(_LOCALE_FR)
	text "Tarpaud: Croak!"
	done
else
	text "Poliwrath: Ribbit!"
	done
endc

CeruleanTradeSpeechHouseZubatText:
if DEF(_LOCALE_FR)
	text "Herbizarre: Saaur!"
	done
else
	text "Ivysaur: Sauur!"
	done
endc
