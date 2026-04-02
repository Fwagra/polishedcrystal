GoldenrodMagnetTrainStation_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  8, 17, GOLDENROD_CITY, 5
	warp_event  9, 17, GOLDENROD_CITY, 5
	warp_event  6,  5, SAFFRON_TRAIN_STATION, 4
	warp_event 11,  5, SAFFRON_TRAIN_STATION, 3

	def_coord_events
	coord_event 11,  6, 0, Script_ArriveFromSaffron

	def_bg_events

	def_object_events
	object_event  9,  9, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GoldenrodMagnetTrainStationOfficerScript, -1
	object_event 11, 14, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WANDER, 2, 2, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldenrodMagnetTrainStationGentlemanText, EVENT_GOLDENROD_TRAIN_STATION_GENTLEMAN
	object_event  6, 12, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoldenrodMagnetTrainStationCooltrainerfScript, -1

	object_const_def
	const GOLDENRODMAGNETTRAINSTATION_OFFICER

GoldenrodMagnetTrainStationOfficerScript:
	faceplayer
	opentext
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftruefwd .MagnetTrainToSaffron
	jumpopenedtext GoldenrodMagnetTrainStationOfficerTheTrainHasntComeInText

.MagnetTrainToSaffron:
	writetext GoldenrodMagnetTrainStationOfficerAreYouComingAboardText
	yesorno
	iffalse_jumpopenedtext GoldenrodMagnetTrainStationOfficerHopeToSeeYouAgainText
	checkkeyitem PASS
	iffalse_jumpopenedtext GoldenrodMagnetTrainStationOfficerYouDontHaveARailPassText
	writetext GoldenrodMagnetTrainStationOfficerRightThisWayText
	waitbutton
	closetext
	applymovement GOLDENRODMAGNETTRAINSTATION_OFFICER, GoldenrodMagnetTrainStationOfficerApproachTrainDoorMovement
	applymovement PLAYER, GoldenrodMagnetTrainStationPlayerApproachAndEnterTrainMovement
	setval $0
	special Special_MagnetTrain
	warpcheck
	newloadmap MAPSETUP_TRAIN
	applyonemovement PLAYER, turn_head_down
	wait 36
	end

Script_ArriveFromSaffron:
	applymovement GOLDENRODMAGNETTRAINSTATION_OFFICER, GoldenrodMagnetTrainStationOfficerApproachTrainDoorMovement
	applymovement PLAYER, GoldenrodMagnetTrainStationPlayerLeaveTrainAndEnterStationMovement
	applymovement GOLDENRODMAGNETTRAINSTATION_OFFICER, GoldenrodMagnetTrainStationOfficerReturnToBoardingGateMovement
	showtext GoldenrodMagnetTrainStationOfficerArrivedInGoldenrodText
	turnobject PLAYER, DOWN
	end

GoldenrodMagnetTrainStationCooltrainerfScript:
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftruefwd .PowerRestored
	jumptextfaceplayer GoldenrodMagnetTrainStationCooltrainerfText1

.PowerRestored
	jumptextfaceplayer GoldenrodMagnetTrainStationCooltrainerfText2

GoldenrodMagnetTrainStationOfficerApproachTrainDoorMovement:
	step_up
	step_up
	step_right
	turn_head_left
	step_end

GoldenrodMagnetTrainStationOfficerReturnToBoardingGateMovement:
	step_left
	step_down
	step_down
	step_end

GoldenrodMagnetTrainStationPlayerApproachAndEnterTrainMovement:
	step_up
	step_up
	step_up
	step_left
	step_left
	step_left
	step_up
	step_up
	step_end

GoldenrodMagnetTrainStationPlayerLeaveTrainAndEnterStationMovement:
	step_left
	step_left
	step_down
	step_down
	step_down
	step_down
	turn_head_up
	step_end

GoldenrodMagnetTrainStationOfficerTheTrainHasntComeInText:
if DEF(_LOCALE_FR)
	text "Le train n'est pas"
	line "passé..."

	para "Je sais! Je vais"
	line "transporter les"
	cont "passagers sur mon"
	cont "dos!"

	para "Ca ne marchera"
	line "pas!"
	done
else
	text "The train hasn't"
	line "come in…"

	para "I know! I'll carry"
	line "the passengers on"
	cont "my back!"

	para "That won't work."
	done
endc

GoldenrodMagnetTrainStationOfficerAreYouComingAboardText:
if DEF(_LOCALE_FR)
	text "Nous allons bien-"
	line "tôt partir pour"
	cont "SAFRANIA."

	para "Vous montez"
	line "à bord?"
	done
else
	text "We'll soon depart"
	line "for Saffron."

	para "Are you coming"
	line "aboard?"
	done
endc

GoldenrodMagnetTrainStationOfficerRightThisWayText:
if DEF(_LOCALE_FR)
	text "Puis-je voir votre"
	line "PASSE train, s'il"
	cont "vous plaît?"

	para "Merci, c'est par"
	line "là..."
	done
else
	text "May I see your"
	line "rail pass, please?"

	para "OK. Right this"
	line "way, please."
	done
endc

GoldenrodMagnetTrainStationOfficerYouDontHaveARailPassText:
if DEF(_LOCALE_FR)
	text "Désolé, vous"
	line "n'avez pas de"
	cont "PASSE train."
	cont "Pas de PASSE train"
	cont "pas de copains!!"
	done
else
	text "Sorry. You don't"
	line "have a rail pass."
	done
endc

GoldenrodMagnetTrainStationOfficerHopeToSeeYouAgainText:
if DEF(_LOCALE_FR)
	text "En espérant vous"
	line "revoir bientôt!"
	done
else
	text "We hope to see you"
	line "again!"
	done
endc

GoldenrodMagnetTrainStationOfficerArrivedInGoldenrodText:
if DEF(_LOCALE_FR)
	text "On est arrivé"
	line "à DOUBLONVILLE."

	para "Nous espérons vous"
	line "revoir bientôt."
	done
else
	text "We have arrived in"
	line "Goldenrod."

	para "We hope to see you"
	line "again."
	done
endc

GoldenrodMagnetTrainStationGentlemanText:
if DEF(_LOCALE_FR)
	text "Je suis le"
	line "PRESIDENT."

	para "Mon rêve était de"
	line "construire un"

	para "train plus rapide"
	line "que n'importe quel"
	cont "#mon."

	para "Cela rapproche"
	line "JOHTO de KANTO."
	done
else
	text "I'm the President."

	para "My dream was to"
	line "build a train that"

	para "is faster than any"
	line "#mon."

	para "It really brings"
	line "Johto much closer"
	cont "to Kanto."
	done
endc

GoldenrodMagnetTrainStationCooltrainerfText1:
if DEF(_LOCALE_FR)
	text "Le TRAIN MAGNET,"
	line "c'est genre"
	cont "zouuum, byun!"

	para "Au moins quand il"
	line "marche..."
	done
else
	text "The Magnet Train"
	line "is like, zoooom,"
	cont "byun! Shuuu!"

	para "At least when"
	line "it's running…"
	done
endc

GoldenrodMagnetTrainStationCooltrainerfText2:
if DEF(_LOCALE_FR)
	text "Le TRAIN MAGNET,"
	line "c'est genre"
	cont "zouuum, byun!"

	para "C'est trop cool!"
	done
else
	text "The Magnet Train"
	line "is like, zoooom,"
	cont "byun! Shuuu!"

	para "It's so cool!"
	done
endc
