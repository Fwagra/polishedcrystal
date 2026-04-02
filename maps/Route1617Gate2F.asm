Route1617Gate2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  7,  7, ROUTE_16_17_GATE_2F, -1

	def_coord_events

	def_bg_events
	bg_event  1,  2, BGEVENT_UP, Route1617Gate2FBinoculars1
	bg_event  6,  2, BGEVENT_UP, Route1617Gate2FBinoculars2

	def_object_events
	object_event 2, 5, SPRITE_PSYCHIC, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, Route1617Gate2FPsychicScript, -1

Route1617Gate2FPsychicScript:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_TRICK_ROOM_INTRO
	iftruefwd Route1617Gate2FTutorTrickRoomScript
	writetext Route1617Gate2FPsychicText
	waitbutton
	setevent EVENT_LISTENED_TO_TRICK_ROOM_INTRO
Route1617Gate2FTutorTrickRoomScript:
	writetext Text_Route1617Gate2FTutorTrickRoom
	waitbutton
	checkitem SILVER_LEAF
	iffalsefwd .NoSilverLeaf
	writetext Text_Route1617Gate2FTutorQuestion
	yesorno
	iffalsefwd .TutorRefused
	setval TRICK_ROOM
	writetext ClearText
	special Special_MoveTutor
	ifequalfwd $0, .TeachMove
.TutorRefused
	jumpthisopenedtext

	text "What a pity."
	done

.NoSilverLeaf
	jumpthisopenedtext

	text "But I'll need a"
	line "Silver Leaf first,"

	para "so come back when"
	line "you get one."
	done

.TeachMove
	takeitem SILVER_LEAF
	jumpthisopenedtext

	text "My technique is"
	line "pretty clever,"
	cont "don't you think?"
	done

Route1617Gate2FBinoculars1:
	jumptext Route1617Gate2FBinoculars1Text

Route1617Gate2FBinoculars2:
	jumptext Route1617Gate2FBinoculars2Text

Route1617Gate2FPsychicText:
if DEF(_LOCALE_FR)
	text "Il y a un Psy"
	line "pas loin d'ici"

	para "qui peut changer"
	line "le cours d'un"

	para "combat #mon."

	para "Il m'inspire, donc"
	line "j'ai travaillé"

	para "ma technique."
	done
else
	text "There's a Psychic"
	line "not far from here"

	para "who has the power"
	line "to change his"

	para "surroundings in a"
	line "#mon battle."

	para "He's an inspiration"
	line "of mine, so I've"

	para "worked on my own"
	line "technique."
	done
endc

Text_Route1617Gate2FTutorTrickRoom:
if DEF(_LOCALE_FR)
	text "Je peux apprendre"
	line "la capacité"
	cont "Distorsion"

	para "à ton #mon."

	para "Les #mon lents"
	line "dépasseront les"

	para "plus rapides un"
	line "moment."
	done
else
	text "I can teach your"
	line "#mon the move"
	cont "Trick Room."

	para "This will let"
	line "slower #mon"

	para "outspeed faster"
	line "ones for a time."
	done
endc

Text_Route1617Gate2FTutorQuestion:
if DEF(_LOCALE_FR)
	text "Une FEUILLE ARGENT"
	line "te paraît juste?"
	done
else
	text "Is a Silver Leaf"
	line "a fair price?"
	done
endc

Route1617Gate2FBinoculars1Text:
if DEF(_LOCALE_FR)
	text "Tu regardes dans"
	line "les jumelles."

	para "C'est le CENTRE CO"
	line "de CELADOPOLE!"
	done
else
	text "Looked into the"
	line "binoculars."

	para "It's Celadon Dept."
	line "Store!"
	done
endc

Route1617Gate2FBinoculars2Text:
if DEF(_LOCALE_FR)
	text "Tu regardes dans"
	line "les jumelles."

	para "Un long chemin sur"
	line "l'eau!"
	done
else
	text "Looked into the"
	line "binoculars."

	para "There's a long"
	line "path over water!"
	done
endc
