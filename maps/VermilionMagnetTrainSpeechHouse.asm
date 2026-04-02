VermilionMagnetTrainSpeechHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, VERMILION_CITY, 4
	warp_event  3,  7, VERMILION_CITY, 4

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_MATRON, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, VermilionMagnetTrainSpeechHousePokefanFText, -1
	object_event  0,  3, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, VermilionMagnetTrainSpeechHouseYoungsterText, -1

VermilionMagnetTrainSpeechHousePokefanFText:
if DEF(_LOCALE_FR)
	text "Tu connais le"
	line "Train Magnétique?"

	para "C'est un train qui"
	line "relie Kanto et"
	cont "Johto."
	done
else
	text "Do you know about"
	line "the Magnet Train?"

	para "It's a railway"
	line "that goes to Gol-"
	cont "denrod in Johto."
	done
endc

VermilionMagnetTrainSpeechHouseYoungsterText:
if DEF(_LOCALE_FR)
	text "Safrania!"
	line "Safrania!"

	para "Emmène-moi à"
	line "Safrania!"

	para "Le train!"
	line "Le train!"

	para "Je veux voir le"
	line "Train Magnétique!"
	done
else
	text "I want to go to"
	line "Saffron to see"
	cont "the Magnet Train."
	done
endc
