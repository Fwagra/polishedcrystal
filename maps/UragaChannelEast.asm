UragaChannelEast_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2, 11, SCARY_CAVE_1F, 1

	def_coord_events

	def_bg_events
	bg_event 45,  5, BGEVENT_JUMPTEXT, UragaChannelSignText
	bg_event  3, 13, BGEVENT_JUMPTEXT, ScaryCaveEastSignText
	bg_event 33,  4, BGEVENT_ITEM + NUGGET, EVENT_URAGA_CHANNEL_EAST_HIDDEN_NUGGET
	bg_event 34, 14, BGEVENT_ITEM + PEARL, EVENT_URAGA_CHANNEL_EAST_HIDDEN_PEARL
	bg_event 22, 12, BGEVENT_ITEM + BOTTLE_CAP, EVENT_URAGA_CHANNEL_EAST_HIDDEN_BOTTLE_CAP
	bg_event  9, 11, BGEVENT_ITEM + STAR_PIECE, EVENT_URAGA_CHANNEL_EAST_HIDDEN_STAR_PIECE

	def_object_events
	object_event  5,  2, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerSwimmerfWoda, -1
	object_event 22,  7, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerCooltrainermKieran, -1
	object_event 34, 15, SPRITE_BIKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerBikerTyrone, -1
	itemball_event  9,  2, DIVE_BALL, 1, EVENT_URAGA_CHANNEL_EAST_DIVE_BALL
	itemball_event 20,  8, EVIOLITE, 1, EVENT_URAGA_CHANNEL_EAST_EVIOLITE

GenericTrainerSwimmerfWoda:
	generictrainer SWIMMERF, WODA, EVENT_BEAT_SWIMMERF_WODA, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Les courants forts"
	line "en font un bon"
	cont "coin d'entrai-"
	cont "nement."
	done
else
	text "The strong curr-"
	line "ents here make it"
	cont "a good place to"
	cont "train."
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Tu viens t'entraî-"
	line "ner aussi?"
	done
else
	text "Did you come here"
	line "to train too?"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "T'as pas besoin de"
	line "t'entraîner plus!"
	done
else
	text "You don't need"
	line "more training!"
	done
endc

GenericTrainerCooltrainermKieran:
	generictrainer COOLTRAINERM, KIERAN, EVENT_BEAT_COOLTRAINERM_KIERAN, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "J'ai pas réussi"
	line "mon #mon."

	para "Je dois me"
	line "remettre dedans."
	done
else
	text "I couldn't get my"
	line "#m-on."

	para "I need to get my"
	line "head back in the"
	cont "game."
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "C'est parti!"
	done
else
	text "It's on like"
	line "#mon!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Game over."
	done
else
	text "Game over."
	done
endc

GenericTrainerBikerTyrone:
	generictrainer BIKER, TYRONE, EVENT_BEAT_BIKER_TYRONE, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Je suis tombé à"
	line "l'eau en frimant"
	cont "sur la PIST.CYCL."

	para "Les courants forts"
	line "m'ont traîné"
	cont "jusqu'ici."
	done
else
	text "I fell in the"
	line "water while show-"
	cont "ing off on Cycling"
	cont "Road."

	para "Then the strong"
	line "currents dragged"
	cont "me here."
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Glou! Glou!"
	done
else
	text "Cough! Splutter!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "...Gasp!"
	done
else
	text "…Gasp!"
	done
endc

UragaChannelSignText:
if DEF(_LOCALE_FR)
	text "Chenal URAGA"
	done
else
	text "Uraga Channel"
	done
endc

ScaryCaveEastSignText:
if DEF(_LOCALE_FR)
	text "Un tag sur"
	line "le panneau..."

	para "Cette grotte"
	line "fait peur!"
	done
else
	text "There's graffiti"
	line "on this sign…"

	para "“This cave is"
	line "scary!”"
	done
endc
