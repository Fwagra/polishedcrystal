VermilionSSAnneSpeechHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, VERMILION_CITY, 14
	warp_event  3,  7, VERMILION_CITY, 14

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 1, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, VermilionSSAnneSpeechHouseGrampsText, -1
	object_event  5,  4, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_LEFT, 1, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, VermilionSSAnneSpeechHouseBeautyText, -1

VermilionSSAnneSpeechHouseGrampsText:
if DEF(_LOCALE_FR)
	text "Une fois par an,"
	line "un paquebot nommé"

	para "le S.S. Anne"
	line "venait à l'ancre"

	para "ici à Carmin"
	line "sur Mer."

	para "Jusqu'à ce qu'un"
	line "an, une tragédie"

	para "frappe."

	para "Quelque chose a"
	line "mal tourné et le"

	para "navire a sombré"
	line "très profondément"

	para "dans l'océan,"
	line "sans jamais"
	cont "être revu."
	done
else
	text "Once a year, a"
	line "cruise ship named"

	para "the S.S.Anne used"
	line "to dock here in"
	cont "Vermilion."

	para "That is, until one"
	line "year, when tragedy"
	cont "struck."

	para "Something went"
	line "wrong and the ship"

	para "sank deep into the"
	line "ocean, never to be"
	cont "seen again."
	done
endc

VermilionSSAnneSpeechHouseBeautyText:
if DEF(_LOCALE_FR)
	text "J'ai vu une"
	line "maquette du"

	para "S.S. Anne dans"
	line "un musée océanique"

	para "très loin d'ici."
	done
else
	text "I've seen a model"
	line "of the S.S.Anne"

	para "in an Oceanic"
	line "Museum far away."
	done
endc
