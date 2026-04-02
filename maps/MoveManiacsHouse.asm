MoveManiacsHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, CIANWOOD_CITY, 7
	warp_event  3,  7, CIANWOOD_CITY, 7

	def_coord_events

	def_bg_events
	bg_event  7,  1, BGEVENT_JUMPSTD, magazinebookshelf

	def_object_events
	object_event  2,  3, SPRITE_COSPLAYER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, MoveReminderScript, -1

MoveReminderScript:
	faceplayer
	opentext
	writetext MoveReminderIntroText
	waitbutton
	checkitem GOLD_LEAF
	iffalsefwd .no_gold_leaf
	writetext MoveReminderPromptText
	yesorno
	iffalsefwd .refused
	setval NO_MOVE ; to toggle move relearner
	writetext MoveReminderWhichMonText
	waitbutton
	special Special_MoveTutor
	ifequalfwd $0, .teach_move
.refused
	jumpopenedtext MoveReminderCancelText

.no_gold_leaf
	jumpopenedtext MoveReminderNoGoldLeafText

.teach_move
	takeitem GOLD_LEAF
	jumpopenedtext MoveReminderCancelText

MoveReminderIntroText::
if DEF(_LOCALE_FR)
	text "Moi? Je suis le"
	line "maniaque des capa-"
	cont "cités."

	para "Je peux aider un"
	line "#mon à retenir"
	cont "un talent"

	para "si tu m'échanges"
	line "une FEUILLE D'OR!"
	done
else
	text "Me? I'm the"
	line "Move Maniac."

	para "I'll make your"
	line "#mon remember"

	para "a move if you'll"
	line "trade me a"
	cont "Gold Leaf!"
	done
endc

MoveReminderPromptText::
if DEF(_LOCALE_FR)
	text "Tu veux que je"
	line "réapprenne une"
	cont "capacité à l'un"
	cont "de tes #mon?"
	done
else
	text "Do you want me to"
	line "teach one of your"
	cont "#mon a move?"
	done
endc

MoveReminderWhichMonText::
if DEF(_LOCALE_FR)
	text "OK! Quel #mon"
	line "doit réapprendre?"
	done
else
	text "Yay! Which #mon"
	line "needs tutoring?"
	done
endc

MoveReminderNoGoldLeafText::
if DEF(_LOCALE_FR)
	text "Hein? Tu n'as pas"
	line "de FEUILLE D'OR."

	para "Parfois, tu peux"
	line "en trouver sur les"
	cont "Chétiflor."
	done
else
	text "Huh? You don't"
	line "have any Gold"
	cont "Leaves."

	para "Sometimes you can"
	line "find them on wild"
	cont "Bellsprout."
	done
endc

MoveReminderNoMovesText::
if DEF(_LOCALE_FR)
	text "Désolé... Il n'y a"
	line "aucune capacité"

	para "que je puisse lui"
	line "réapprendre."
	prompt
else
	text "Sorry… There isn't"
	line "any move I can"

	para "make that #mon"
	line "remember."
	prompt
endc

MoveReminderCancelText::
if DEF(_LOCALE_FR)
	text "Si un #mon doit"
	line "réapprendre une"

	para "capacité, reviens"
	line "avec une"
	cont "FEUILLE D'OR!"
	done
else
	text "If your #mon"
	line "needs to learn a"

	para "move, come back"
	line "with a Gold Leaf!"
	done
endc
