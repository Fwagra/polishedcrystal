DimCave1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 30,  2, DIM_CAVE_2F, 5
	warp_event  5, 17, DIM_CAVE_2F, 6
	warp_event 28, 18, DIM_CAVE_2F, 7
	warp_event 24, 32, DIM_CAVE_2F, 8

	def_coord_events

	def_bg_events
	bg_event 28,  2, BGEVENT_ITEM + FULL_HEAL, EVENT_DIM_CAVE_1F_HIDDEN_FULL_HEAL

	def_object_events
	object_event 30,  7, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerSuper_nerdGregg, -1
	object_event 12, 18, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerScientistDexter, -1
	object_event 27, 21, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerGuitaristmBiff, -1
	itemball_event  3, 20, DUSK_BALL, 1, EVENT_DIM_CAVE_1F_DUSK_BALL
	itemball_event 28, 31, RARE_BONE, 1, EVENT_DIM_CAVE_1F_RARE_BONE

GenericTrainerSuper_nerdGregg:
	generictrainer SUPER_NERD, GREGG, EVENT_BEAT_SUPER_NERD_GREGG, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Le TRAIN MAGNET"
	line "est rapide, mais"
	cont "il ne drift pas."
	done
else
	text "The Magnet Train"
	line "is fast, but it"
	cont "can't drift."
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Ces chariots sont"
	line "nuls! Impossible"
	cont "de drifter!"
	done
else
	text "These carts are"
	line "lame! They can't"
	cont "drift at all!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Je m'en fiche!"
	done
else
	text "I don't care!"
	done
endc

GenericTrainerScientistDexter:
	generictrainer SCIENTIST, DEXTER, EVENT_BEAT_SCIENTIST_DEXTER, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Je bosse à la"
	line "CENTRALE."

	para "On utilise la"
	line "cascade de cette"
	cont "grotte pour une"
	cont "énergie propre!"
	done
else
	text "I work for the"
	line "Power Plant."

	para "We use the water-"
	line "fall from this"
	cont "cave for clean,"
	cont "renewable energy!"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Je suis hydrologue"
	line "d'abord, et"
	cont "dresseur ensuite."
	done
else
	text "I'm a hydrologist"
	line "first, and a"
	cont "trainer second."
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Je devrais rester"
	line "en hydrologie..."
	done
else
	text "I should stick to"
	line "hydrology…"
	done
endc

GenericTrainerGuitaristmBiff:
	generictrainer GUITARISTM, BIFF, EVENT_BEAT_GUITARISTM_BIFF, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "J'aime le heavy"
	line "metal et les"
	cont "métaux lourds!"
	done
else
	text "I love heavy metal"
	line "and heavy metals!"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Je kiffe le rock"
	line "et je creuse la"
	cont "roche!"
	done
else
	text "I dig rock and"
	line "dig rock!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Ecrasé..."
	line "à la masse!"
	done
else
	text "Ground into the"
	line "ground!"
	done
endc

