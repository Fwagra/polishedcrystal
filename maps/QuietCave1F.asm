QuietCave1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 19, 33, ROUTE_47, 5
	warp_event  5, 25, QUIET_CAVE_B1F, 1
	warp_event 27, 23, QUIET_CAVE_B1F, 2
	warp_event 21,  9, QUIET_CAVE_B1F, 3
	warp_event  3, 17, QUIET_CAVE_B1F, 4
	warp_event 31, 13, QUIET_CAVE_B1F, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  6,  8, SPRITE_HEX_MANIAC, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerHexManiacAshley, -1
	object_event 13, 17, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerCooltrainermHenri, -1
	object_event 23, 25, SPRITE_HIKER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerHikerGrady, -1
	object_event 29,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerScientistCarl, -1
	itemball_event 10, 23, NUGGET, 1, EVENT_QUIET_CAVE_1F_NUGGET
	itemball_event 26,  4, TWISTEDSPOON, 1, EVENT_QUIET_CAVE_1F_TWISTEDSPOON
	itemball_event 14,  2, DUSK_STONE, 1, EVENT_QUIET_CAVE_1F_DUSK_STONE
	itemball_event  3,  3, DUSK_BALL, 1, EVENT_QUIET_CAVE_1F_DUSK_BALL

GenericTrainerHexManiacAshley:
	generictrainer HEX_MANIAC, ASHLEY, EVENT_BEAT_HEX_MANIAC_ASHLEY, HexManiacAshleySeenText, HexManiacAshleyBeatenText

if DEF(_LOCALE_FR)
	text "Je vois des choses"
	line "que d'autres ne"
	cont "voient pas..."
	done
else
	text "I see things that"
	line "others can't see…"
	done
endc

GenericTrainerCooltrainermHenri:
	generictrainer COOLTRAINERM, HENRI, EVENT_BEAT_COOLTRAINERM_HENRI, CooltrainermHenriSeenText, CooltrainermHenriBeatenText

if DEF(_LOCALE_FR)
	text "Une équipe variée"
	line "qui couvre les"

	para "faiblesses, c'est"
	line "la clé."
	done
else
	text "Having a diverse"
	line "team to support"

	para "each others' weak-"
	line "nesses is key."
	done
endc

GenericTrainerHikerGrady:
	generictrainer HIKER, GRADY, EVENT_BEAT_HIKER_GRADY, HikerGradySeenText, HikerGradyBeatenText

if DEF(_LOCALE_FR)
	text "On entendrait une"
	line "mouche voler!"
	done
else
	text "You could hear a"
	line "pin drop in this"
	cont "place!"
	done
endc

GenericTrainerScientistCarl:
	generictrainer SCIENTIST, CARL, EVENT_BEAT_SCIENTIST_CARL, ScientistCarlSeenText, ScientistCarlBeatenText

if DEF(_LOCALE_FR)
	text "C'est curieux"
	line "qu'un lieu si"
	cont "calme"

	para "existe près d'une"
	line "eau si agitée."
	done
else
	text "It's interesting"
	line "that such a quiet"
	cont "environment can"

	para "exist right near"
	line "rushing water."
	done
endc

HexManiacAshleySeenText:
if DEF(_LOCALE_FR)
	text "Les esprits ont"
	line "prévu ta défaite!"
	done
else
	text "The spirits have"
	line "shown me your"
	cont "defeat!"
	done
endc

HexManiacAshleyBeatenText:
if DEF(_LOCALE_FR)
	text "Non! Les esprits"
	line "ont toujours"
	cont "raison!"
	done
else
	text "No! The spirits"
	line "can't be wrong!"
	done
endc

CooltrainermHenriSeenText:
if DEF(_LOCALE_FR)
	text "Tu peux gérer mon"
	line "équipe équilibrée"
	cont "de #mon?"
	done
else
	text "Can you handle my"
	line "balanced team of"
	cont "#mon?"
	done
endc

CooltrainermHenriBeatenText: ; text > text
if DEF(_LOCALE_FR)
	text "Alors, oui!"
	done
else
	text "I guess you can!"
	done
endc

HikerGradySeenText:
if DEF(_LOCALE_FR)
	text "Je t'ai entendu"
	line "avant de te voir!"
	done
else
	text "I heard you long"
	line "before I saw you!"
	done
endc

HikerGradyBeatenText:
if DEF(_LOCALE_FR)
	text "Argh!"
	done
else
	text "Ach!"
	done
endc

ScientistCarlSeenText:
if DEF(_LOCALE_FR)
	text "J'étudie"
	line "l'acoustique de"
	cont "ces grottes."
	done
else
	text "I'm studying the"
	line "acoustics of this"
	cont "cave system."
	done
endc

ScientistCarlBeatenText:
if DEF(_LOCALE_FR)
	text "Mes études ne"
	line "servent pas"
	cont "en combat!"
	done
else
	text "My studies don't"
	line "apply to battles!"
	done
endc

