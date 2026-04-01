CeladonMansionRoof_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  1,  1, CELADON_MANSION_3F, 1
	warp_event  6,  1, CELADON_MANSION_3F, 4
	warp_event  2,  5, CELADON_MANSION_ROOF_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event  6,  1, BGEVENT_LEFT, MapCeladonMansionRoofSignpost0Script

	def_object_events
	object_event  7,  5, SPRITE_FAT_GUY, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonMansionRoofFisherText, -1

MapCeladonMansionRoofSignpost0Script:
	jumptext CeladonMansionRoofGraffitiText

CeladonMansionRoofFisherText:
if DEF(_LOCALE_FR)
	text "Les hauts lieux,"
	line "j'adore ca!"

	para "Seule la fumee"
	line "aime autant"

	para "monter que moi!"
	done
else
	text "High places--I do"
	line "love them so!"

	para "I'd say the only"
	line "thing that loves"

	para "heights as much as"
	line "me is smoke!"
	done
endc

CeladonMansionRoofGraffitiText:
if DEF(_LOCALE_FR)
	text "Du graffiti sur"
	line "le mur…"

	para "<PLAYER> trace une"
	line "moustache!"
	done
else
	text "There's graffiti"
	line "on the wall…"

	para "<PLAYER> added a"
	line "moustache!"
	done
endc
