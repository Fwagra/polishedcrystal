CeruleanPoliceStation_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, CERULEAN_CITY, 2
	warp_event  3,  7, CERULEAN_CITY, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeruleanPoliceStationFishingGuruText, -1
	object_event  5,  4, SPRITE_MATRON, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeruleanPoliceStationPokefanFText, -1
	pokemon_event  3,  5, DIGLETT, SPRITEMOVEDATA_POKEMON, -1, PAL_NPC_BROWN, CeruleanDiglettText, -1

CeruleanPoliceStationFishingGuruText:
if DEF(_LOCALE_FR)
	text "On raconte qu'un"
	line "drôle de type"
	cont "rôde dans le coin."

	para "Si c'est un vo-"
	line "leur, c'est grave."
else
	text "I heard that some"
	line "shady character is"
	cont "skulking about."

	para "I won't stand for"
	line "it if he turns out"
	cont "to be a thief."
endc
	done

CeruleanPoliceStationPokefanFText:
if DEF(_LOCALE_FR)
	text "Des voleurs nous"
	line "ont déjà volés."
else
	text "We were held up by"
	line "robbers before."
endc
	done

CeruleanDiglettText:
if DEF(_LOCALE_FR)
	text "Taupiqueur:"
	line "Dig dig."
else
	text "Diglett: Dug dug."
endc
	done
