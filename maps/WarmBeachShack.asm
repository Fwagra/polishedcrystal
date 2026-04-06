WarmBeachShack_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, WARM_BEACH, 1
	warp_event  3,  7, WARM_BEACH, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_FAT_GUY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, WarmBeachShackEndureFisherScript, -1
	object_event  3,  3, SPRITE_FAT_GUY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, WarmBeachShackBodySlamFisherScript, -1

WarmBeachShackBodySlamFisherScript:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_BODY_SLAM_INTRO
	iftruefwd WarmBeachShackTutorBodySlamScript
	writetext WarmBeachShackBodySlamFisherText
	waitbutton
	setevent EVENT_LISTENED_TO_BODY_SLAM_INTRO
WarmBeachShackTutorBodySlamScript:
	writetext Text_WarmBeachShackBodySlamTutorBodySlamQuestion
	checkitem SILVER_LEAF
	iffalsefwd .NoSilverLeaf
	yesorno
	iffalsefwd .TutorRefused
	setval BODY_SLAM
	writetext ClearText
	special Special_MoveTutor
	ifequalfwd $0, .TeachMove
.TutorRefused
	jumpopenedtext Text_WarmBeachShackTutorsRefused

.NoSilverLeaf
	waitbutton
	jumpopenedtext Text_WarmBeachShackTutorsNoSilverLeaf

.TeachMove
	takeitem SILVER_LEAF
	jumpopenedtext Text_WarmBeachShackBodySlamTutorTaught

WarmBeachShackBodySlamFisherText:
if DEF(_LOCALE_FR)
	text "Prêt?"
	line "Boing!"

	para "On fait un sumo"
	line "pour voir qui"

	para "lâche en premier."

	para "Moi j'utilise"
	line "Plaquage, lui"

	para "tient avec"
	line "Tenacité!"
	done
else
	text "Ready?"
	line "Boing!"

	para "We're having a"
	line "sumo match to see"

	para "who wimps out"
	line "first."

	para "I use Body Slam,"
	line "and he Endures it!"
	done
endc

Text_WarmBeachShackBodySlamTutorBodySlamQuestion:
if DEF(_LOCALE_FR)
	text "Je t'apprends"
	line "Plaquage contre"

	para "une Feuille Arg."
	line "pour un #mon?"
	done
else
	text "How about I teach"
	line "Body Slam to a"

	para "#mon of yours"
	line "for a Silver Leaf?"
	done
endc

Text_WarmBeachShackBodySlamTutorTaught:
if DEF(_LOCALE_FR)
	text "A bientôt!"
	line "Boioing!"
	done
else
	text "Come again!"
	line "Boioing!"
	done
endc

WarmBeachShackEndureFisherScript:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_ENDURE_INTRO
	iftruefwd WarmBeachShackTutorEndureScript
	writetext WarmBeachShackEndureFisherText
	waitbutton
	setevent EVENT_LISTENED_TO_ENDURE_INTRO
WarmBeachShackTutorEndureScript:
	writetext Text_WarmBeachShackEndureTutorEndureQuestion
	checkitem SILVER_LEAF
	iffalsefwd .NoSilverLeaf
	yesorno
	iffalsefwd .TutorRefused
	setval ENDURE
	writetext ClearText
	special Special_MoveTutor
	ifequalfwd $0, .TeachMove
.TutorRefused
	jumpopenedtext Text_WarmBeachShackTutorsRefused

.NoSilverLeaf
	waitbutton
	jumpopenedtext Text_WarmBeachShackTutorsNoSilverLeaf

.TeachMove
	takeitem SILVER_LEAF
	jumpopenedtext Text_WarmBeachShackEndureTutorTaught

WarmBeachShackEndureFisherText:
if DEF(_LOCALE_FR)
	text "Pret?"
	line "Nnnh!"

	para "On fait un sumo"
	line "pour voir qui"

	para "abandonne en"
	line "premier."

	para "Lui fait Pla-"
	line "quage, moi je"

	para "tiens avec"
	line "Tenacité!"
	done
else
	text "Ready?"
	line "Nnnh!"

	para "We're having a"
	line "sumo match to see"

	para "who gives up"
	line "first."

	para "He uses Body Slam,"
	line "and I Endure it!"
	done
endc

Text_WarmBeachShackEndureTutorEndureQuestion:
if DEF(_LOCALE_FR)
	text "Je t'apprends"
	line "Tenacité contre"

	para "une Feuille Arg."
	line "pour un #mon?"
	done
else
	text "How about I teach"
	line "Endure to one of"

	para "your #mon for"
	line "a Silver Leaf?"
	done
endc

Text_WarmBeachShackEndureTutorTaught:
if DEF(_LOCALE_FR)
	text "A bientôt!"
	line "Nnnh!"
	done
else
	text "Come again!"
	line "Nnnh!"
	done
endc

Text_WarmBeachShackTutorsNoSilverLeaf:
if DEF(_LOCALE_FR)
	text "Hein? T'en as"
	line "pas!"
	done
else
	text "Huh? You don't"
	line "have any!"
	done
endc

Text_WarmBeachShackTutorsRefused:
if DEF(_LOCALE_FR)
	text "Comme tu veux."
	done
else
	text "Alright then."
	done
endc
