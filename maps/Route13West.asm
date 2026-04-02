Route13West_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event 17, 13, BGEVENT_JUMPTEXT, Route13DirectionsSignText

	def_object_events
	object_event  5,  5, SPRITE_CAMPER, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerCamperClark, -1
	object_event 16,  6, SPRITE_PICNICKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerPicnickerGinger, -1
	object_event 14, 10, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerHikerKenny, -1
	object_event 25,  6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1

GenericTrainerCamperClark:
	generictrainer CAMPER, CLARK, EVENT_BEAT_CAMPER_CLARK, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Peu importe ta"
	line "préparation."

	para "Si tu perds,"
	line "tu perds."
	done
else
	text "It doesn't matter"
	line "what kind of prep"
	cont "work you've done."

	para "If you lose, you"
	line "lose."
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "De l'eau!"
	line "Faut pas que"
	cont "le feu s'éteigne!"

	para "Attention aux"
	line "#MON sauvages!"

	para "Allez,"
	line "feu de camp!"
	done
else
	text "Collect water!"
	line "Don't let the fire"
	cont "go out!"

	para "Look out for wild"
	line "#mon!"

	para "Let's go,"
	line "Campfire!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Pfuuuuhh…"
	done
else
	text "Pfuuuuhh…"
	done
endc

GenericTrainerPicnickerGinger:
	generictrainer PICNICKER, GINGER, EVENT_BEAT_PICNICKER_GINGER, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Tu peux parler"
	line "aux #MON"

	para "en sifflant,"
	line "sans mots!"
	done
else
	text "You can communi-"
	line "cate with #mon"

	para "through whistling"
	line "instead of words!"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Pourquoi j'ai"
	line "toujours envie"
	cont "de siffler dehors?"
	done
else
	text "Why do I always"
	line "get the urge to"
	cont "whistle outdoors?"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Tweeee!"
	done
else
	text "Tweeee!"
	done
endc

GenericTrainerHikerKenny:
	generictrainer HIKER, KENNY, EVENT_BEAT_HIKER_KENNY, HikerKennySeenText, HikerKennyBeatenText

if DEF(_LOCALE_FR)
	text "La terre change..."
	line "Petit à petit."

	para "Les montagnes, les"
	line "paysages... Tout"
	cont "évolue."
	done
else
	text "Geological fea-"
	line "tures don't appear"
	cont "to change."

	para "But they actually"
	line "change, little by"
	cont "little."
	done
endc

HikerKennySeenText:
if DEF(_LOCALE_FR)
	text "Je vais passer à"
	line "la GROTTE pour"
	cont "choper un ONIX."
	done
else
	text "I should go to"
	line "Rock Tunnel to get"
	cont "myself an Onix."
	done
endc

HikerKennyBeatenText:
if DEF(_LOCALE_FR)
	text "Perdu..."
	done
else
	text "I lost…"
	done
endc

Route13DirectionsSignText:
if DEF(_LOCALE_FR)
	text "NORD: LAVANVILLE"
	line "OUEST: PARMANIE"
	done
else
	text "North to Lavender"
	line "Town"

	para "West to Fuchsia"
	line "City"
	done
endc
