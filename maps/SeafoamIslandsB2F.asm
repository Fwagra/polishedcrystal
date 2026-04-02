SeafoamIslandsB2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 25, 15, SEAFOAM_ISLANDS_B1F, 3
	warp_event 15,  7, SEAFOAM_ISLANDS_B1F, 4
	warp_event 13, 13, SEAFOAM_ISLANDS_B1F, 5
	warp_event  7, 15, SEAFOAM_ISLANDS_B1F, 6
	warp_event 35,  7, SEAFOAM_ISLANDS_B3F, 1
	warp_event 28,  9, SEAFOAM_ISLANDS_B3F, 2
	warp_event 35, 15, SEAFOAM_ISLANDS_B3F, 3
	warp_event  4, 13, SEAFOAM_ISLANDS_B3F, 4

	def_coord_events

	def_bg_events
	bg_event  7,  9, BGEVENT_ITEM + PEARL, EVENT_SEAFOAM_ISLANDS_B2F_HIDDEN_PEARL_1
	bg_event 35, 13, BGEVENT_ITEM + PEARL, EVENT_SEAFOAM_ISLANDS_B2F_HIDDEN_PEARL_2

	def_object_events
	object_event 11,  4, SPRITE_SKIER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerSkierCady, -1
	object_event 16,  5, SPRITE_BOARDER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerBoarderShaun, -1
	object_event 25,  8, SPRITE_BOARDER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerBoarderBryce, -1
	itemball_event 15, 16, WATER_STONE, 1, EVENT_SEAFOAM_ISLANDS_B2F_WATER_STONE

GenericTrainerSkierCady:
	generictrainer SKIER, CADY, EVENT_BEAT_SKIER_CADY, SkierCadySeenText, SkierCadyBeatenText

if DEF(_LOCALE_FR)
	text "Quel combat"
	line "brûlant!"
	done
else
	text "That was a hot"
	line "battle!"
	done
endc

GenericTrainerBoarderShaun:
	generictrainer BOARDER, SHAUN, EVENT_BEAT_BOARDER_SHAUN, BoarderShaunSeenText, BoarderShaunBeatenText

if DEF(_LOCALE_FR)
	text "Bon, vas-y,"
	line "passe!"
	done
else
	text "All right, please"
	line "pass through!"
	done
endc

GenericTrainerBoarderBryce:
	generictrainer BOARDER, BRYCE, EVENT_BEAT_BOARDER_BRYCE, BoarderBryceSeenText, BoarderBryceBeatenText

if DEF(_LOCALE_FR)
	text "Des dresseurs"
	line "partout."
	done
else
	text "Trainers are"
	line "everywhere."
	done
endc

SkierCadySeenText:
if DEF(_LOCALE_FR)
	text "Pour vaincre le"
	line "froid, mets des"
	cont "vêtements chauds"
	cont "et bois chaud!"
	done
else
	text "To beat the cold,"
	line "try warm clothes"
	cont "and a hot drink!"
	done
endc

SkierCadyBeatenText:
if DEF(_LOCALE_FR)
	text "Argh, jusque-là!"
	done
else
	text "Argh, all the way"
	line "out here!"
	done
endc

BoarderShaunSeenText:
if DEF(_LOCALE_FR)
	text "Hé, hé, tu me"
	line "gênes! Oui!"
	done
else
	text "Hey, hey, you're"
	line "in my way! Right!"
	done
endc

BoarderShaunBeatenText:
if DEF(_LOCALE_FR)
	text "Je me suis fait"
	line "bousculer..."
	done
else
	text "I got kicked"
	line "around…"
	done
endc

BoarderBryceSeenText:
if DEF(_LOCALE_FR)
	text "Pourquoi venir"
	line "jusqu'ici?"
	done
else
	text "What did you"
	line "come all the way"
	cont "out here for,"
	cont "I wonder."
	done
endc

BoarderBryceBeatenText:
if DEF(_LOCALE_FR)
	text "J'ai perdu jusque-"
	line "là..."
	done
else
	text "I lost all the"
	line "way out here…"
	done
endc

