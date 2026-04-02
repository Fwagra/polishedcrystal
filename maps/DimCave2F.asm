DimCave2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, DimCave2FBouldersLand

	def_warp_events
	warp_event 15,  1, CERULEAN_CAPE, 2
	warp_event 29,  5, DIM_CAVE_3F, 4
	warp_event 27, 25, DIM_CAVE_3F, 5
	warp_event 14, 20, DIM_CAVE_3F, 6 ; hole
	warp_event 30,  2, DIM_CAVE_1F, 1
	warp_event  5, 17, DIM_CAVE_1F, 2
	warp_event 28, 18, DIM_CAVE_1F, 3
	warp_event 26, 32, DIM_CAVE_1F, 4

	def_coord_events

	def_bg_events
	bg_event  6,  4, BGEVENT_ITEM + STARDUST, EVENT_DIM_CAVE_2F_HIDDEN_STARDUST
	bg_event  2, 19, BGEVENT_ITEM + MOON_STONE, EVENT_DIM_CAVE_2F_HIDDEN_MOON_STONE

	def_object_events
	object_event 14, 21, SPRITE_BOULDER_ROCK_FOSSIL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptext, DimCaveFallenBoulderText, EVENT_BOULDER_FELL_IN_DIM_CAVE_2F
	object_event 15, 12, SPRITE_ENGINEER, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerEngineerLang, -1
	object_event  7, 16, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerHikerDerrick, -1
	itemball_event 28, 12, MAX_REVIVE, 1, EVENT_DIM_CAVE_2F_MAX_REVIVE
	itemball_event  2, 15, IRON, 1, EVENT_DIM_CAVE_2F_IRON
	itemball_event 24, 18, LIGHT_CLAY, 1, EVENT_DIM_CAVE_2F_LIGHT_CLAY
	tmhmball_event 31, 33, TM_FACADE, EVENT_DIM_CAVE_2F_TM_FACADE

DimCave2FBouldersLand:
	checkevent EVENT_BOULDER_FELL_IN_DIM_CAVE_2F
	iftruefwd .skip
	changeblock 14, 20, $c5
	changeblock 26, 20, $ba
.skip
	endcallback

GenericTrainerEngineerLang:
	generictrainer ENGINEER, LANG, EVENT_BEAT_ENGINEER_LANG, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Il y a 3 ans, la"
	line "CENTRALE"
	cont "était détruite."

	para "On l'a relancée"
	line "pour alimenter"

	para "le TRAIN MAGNET"
	line "vers Johto."
	done
else
	text "Three years ago"
	line "the Power Plant"
	cont "was a wreck."

	para "We got it up and"
	line "running to power"

	para "the Magnet Train"
	line "to Johto."
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "On a extrait du"
	line "minerai d'ici"

	para "pour retaper la"
	line "CENTRALE!"
	done
else
	text "We mined ore from"
	line "this mountain to"

	para "refurbish the"
	line "Power Plant!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Panne de courant!"
	done
else
	text "A power failure!"
	done
endc

GenericTrainerHikerDerrick:
	generictrainer HIKER, DERRICK, EVENT_BEAT_HIKER_DERRICK, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Ca va sans dire,"
	line "j'adore randonner"

	para "avec mes #mon."
	done
else
	text "It goes without"
	line "saying, but I love"

	para "hiking with my"
	line "#mon."
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "♪ En rando, on va,"
	line "en rando on va! ♪"
	done
else
	text "♪ A-hiking we"
	line "will go, a-hiking"
	cont "we will go… ♪"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "♪ Hi-ho, hi-ho,"
	line "en rando, on va! ♪"
	done
else
	text "♪ Eee-iiii-ah-"
	line "dee-oh, a-hiking"
	cont "we will go! ♪"
	done
endc

DimCaveFallenBoulderText:
if DEF(_LOCALE_FR)
	text "C'est coincé sur"
	line "le bouton."
	done
else
	text "It's stuck on the"
	line "button."
	done
endc
