VermilionHouseFishingSpeechHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, VERMILION_CITY, 1
	warp_event  3,  7, VERMILION_CITY, 1

	def_coord_events

	def_bg_events
	bg_event  5,  0, BGEVENT_JUMPTEXT, FishingDudesHousePhotoText

	def_object_events
	object_event  2,  4, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, FishingDudeText, -1

FishingDudeText:
if DEF(_LOCALE_FR)
	text "Moi chuis le"
	line "Gars qui Peche,"
	cont "l'aîné des Freres"
	cont "Pecheurs."

	para "As-tu vu le Maitre"
	line "Pecheur au Lac"
	cont "Colère?"

	para "Il rêve de voir le"
	line "plus grand Magi-"
	cont "carpe du monde."

	para "Si ca t'embête pas"
	line "trop, peux-tu lui"

	para "montrer les"
	line "Magicarpe que"
	cont "tu attrapes?"

	para "Qui sait, tu"
	line "attraperas peut-"
	cont "être le Magicarpe"
	cont "de ses rêves."
	done
else
	text "I am the Fishing"
	line "Dude, the elder of"
	cont "the Fishing Bros."

	para "Have you met the"
	line "Fishing Guru at"
	cont "Lake of Rage?"

	para "He dreams about"
	line "seeing the world's"
	cont "greatest Magikarp."

	para "If you don't mind,"
	line "could you show him"

	para "any Magikarp you"
	line "catch?"

	para "Who knows, you may"
	line "catch the Magikarp"
	cont "of his dreams."
	done
endc

FishingDudesHousePhotoText:
if DEF(_LOCALE_FR)
	text "C'est une photo de"
	line "pêcheurs…"

	para "Ils ont l'air de"
	line "s'amuser…"
	done
else
	text "It's a photo of"
	line "people fishing…"

	para "They're having a"
	line "great time…"
	done
endc
