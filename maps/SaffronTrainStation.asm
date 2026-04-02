SaffronTrainStation_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  8, 17, SAFFRON_CITY, 6
	warp_event  9, 17, SAFFRON_CITY, 6
	warp_event  6,  5, GOLDENROD_MAGNET_TRAIN_STATION, 4
	warp_event 11,  5, GOLDENROD_MAGNET_TRAIN_STATION, 3

	def_coord_events
	coord_event 11,  6, 0, Script_ArriveFromGoldenrod

	def_bg_events

	def_object_events
	object_event  9,  9, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SaffronMagnetTrainStationOfficerScript, -1
	object_event 11, 13, SPRITE_GYM_GUY, SPRITEMOVEDATA_WANDER, 1, 1, -1, 0, OBJECTTYPE_SCRIPT, 0, SaffronMagnetTrainStationGymGuideScript, -1
	object_event  6, 11, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, SaffronMagnetTrainStationTeacherText, EVENT_SAFFRON_TRAIN_STATION_POPULATION
	object_event  6, 10, SPRITE_PICNICKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, SaffronMagnetTrainStationLassText, EVENT_SAFFRON_TRAIN_STATION_POPULATION

	object_const_def
	const SAFFRONTRAINSTATION_OFFICER

SaffronMagnetTrainStationOfficerScript:
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iffalse_jumptextfaceplayer SaffronMagnetTrainStationOfficerTrainIsntOperatingText
	faceplayer
	opentext
	writetext SaffronMagnetTrainStationOfficerAreYouComingOnBoardText
	yesorno
	iffalse_jumpopenedtext SaffronMagnetTrainStationOfficerHopeToSeeYouAgainText
	checkkeyitem PASS
	iffalse_jumpopenedtext SaffronMagnetTrainStationOfficerYouDontHaveAPassText
	writetext SaffronMagnetTrainStationOfficerRightThisWayText
	waitbutton
	closetext
	applymovement SAFFRONTRAINSTATION_OFFICER, SaffronMagnetTrainStationOfficerApproachTrainDoorMovement
	applymovement PLAYER, SaffronMagnetTrainStationPlayerApproachAndEnterTrainMovement
	setval $1
	special Special_MagnetTrain
	warpcheck
	newloadmap MAPSETUP_TRAIN
	applyonemovement PLAYER, turn_head_down
	wait 36
	end

Script_ArriveFromGoldenrod:
	applymovement SAFFRONTRAINSTATION_OFFICER, SaffronMagnetTrainStationOfficerApproachTrainDoorMovement
	applymovement PLAYER, SaffronMagnetTrainStationPlayerLeaveTrainAndEnterStationMovement
	applymovement SAFFRONTRAINSTATION_OFFICER, SaffronMagnetTrainStationOfficerReturnToBoardingGateMovement
	showtext SaffronMagnetTrainStationOfficerArrivedInSaffronText
	turnobject PLAYER, DOWN
	end

SaffronMagnetTrainStationGymGuideScript:
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue_jumptextfaceplayer SaffronMagnetTrainStationGymGuideText_ReturnedMachinePart
	jumptextfaceplayer SaffronMagnetTrainStationGymGuideText

SaffronMagnetTrainStationOfficerApproachTrainDoorMovement:
	step_up
	step_up
	step_right
	turn_head_left
	step_end

SaffronMagnetTrainStationOfficerReturnToBoardingGateMovement:
	step_left
	step_down
	step_down
	step_end

SaffronMagnetTrainStationPlayerApproachAndEnterTrainMovement:
	step_up
	step_up
	step_up
	step_left
	step_left
	step_left
	step_up
	step_up
	step_end

SaffronMagnetTrainStationPlayerLeaveTrainAndEnterStationMovement:
	step_left
	step_left
	step_down
	step_down
	step_down
	step_down
	turn_head_up
	step_end

SaffronMagnetTrainStationOfficerTrainIsntOperatingText:
if DEF(_LOCALE_FR)
	text "Le TRAIN MAGNET ne"
	line "fonctionne pas"
	cont "pour l'instant."
	done
else
	text "I'm sorry, but the"
	line "Magnet Train isn't"
	cont "operating now."
	done
endc

SaffronMagnetTrainStationOfficerAreYouComingOnBoardText:
if DEF(_LOCALE_FR)
	text "Nous partons bien-"
	line "tôt pour DOUBLON-"
	cont "VILLE."

	para "Veux-tu monter"
	line "à bord?"
	done
else
	text "We'll soon depart"
	line "for Goldenrod."

	para "Are you coming on"
	line "board?"
	done
endc

SaffronMagnetTrainStationOfficerRightThisWayText:
if DEF(_LOCALE_FR)
	text "Puis-je voir"
	line "ton PASSE?"

	para "OK. Ca marche."
	line "Par ici."
	done
else
	text "May I see your"
	line "rail pass, please?"

	para "OK. Right this"
	line "way, please."
	done
endc

SaffronMagnetTrainStationOfficerYouDontHaveAPassText:
if DEF(_LOCALE_FR)
	text "Désolé."
	line "Pas de PASSE."
	done
else
	text "Sorry, but you"
	line "don't have a pass."
	done
endc

SaffronMagnetTrainStationOfficerHopeToSeeYouAgainText:
if DEF(_LOCALE_FR)
	text "Allez..."
	line "Au revoir."
	done
else
	text "We hope to see you"
	line "again."
	done
endc

SaffronMagnetTrainStationOfficerArrivedInSaffronText:
if DEF(_LOCALE_FR)
	text "Nous sommes arri-"
	line "vés à SAFRANIA."

	para "A bientôt."
	done
else
	text "We have arrived in"
	line "Saffron."

	para "We hope to see you"
	line "again."
	done
endc

SaffronMagnetTrainStationGymGuideText:
if DEF(_LOCALE_FR)
	text "Le TRAIN MAGNET"
	line "est un train super"

	para "moderne qui utili-"
	line "se l'énergie"

	para "magnétique pour"
	line "aller à toute"
	cont "vitesse."

	para "Mais sans électri-"
	line "cité, il ne bouge"
	cont "pas trop..."
	done
else
	text "The Magnet Train"
	line "is a super modern"

	para "rail liner that"
	line "uses electricity"

	para "and magnets to"
	line "attain incredible"
	cont "speed."

	para "However, if there"
	line "isn't any elec-"
	cont "tricity…"
	done
endc

SaffronMagnetTrainStationGymGuideText_ReturnedMachinePart:
if DEF(_LOCALE_FR)
	text "Fouiii..."

	para "Combien de fois"
	line "ai-je fait la na-"

	para "vette entre KANTO"
	line "et JOHTO? J'en"
	cont "sais rien, moi!"
	done
else
	text "Whew…"

	para "How many times"
	line "have I gone back"

	para "and forth between"
	line "Kanto and Johto?"
	done
endc

SaffronMagnetTrainStationTeacherText:
if DEF(_LOCALE_FR)
	text "Avant la STATION"
	line "de TRAIN MAGNET,"

	para "il y avait une"
	line "maison ici."

	para "Une fillette,"
	line "COPIEUSE, y"
	cont "vivait."
	done
else
	text "Before the Magnet"
	line "Train Station was"

	para "built, there was a"
	line "house there."

	para "A little girl"
	line "named Copycat used"
	cont "to live there."
	done
endc

SaffronMagnetTrainStationLassText:
if DEF(_LOCALE_FR)
	text "Salut. Tu as un"
	line "PASSE?"

	para "Moi j'en ai un!"
	line "Tous ceux de SA-"

	para "FRANIA qui utili-"
	line "sent le TRAIN"
	cont "MAGNET en ont un."
	done
else
	text "Hi. Do you have a"
	line "rail pass? I have"

	para "one. All the peo-"
	line "ple in Saffron who"

	para "ride the Magnet"
	line "Train have passes."
	done
endc
