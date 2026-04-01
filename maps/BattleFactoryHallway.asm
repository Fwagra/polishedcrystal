BattleFactoryHallway_MapScriptHeader:
	def_scene_scripts
	scene_script BattleFactoryHallwayFollowReceptionist

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .SetScientistPosition

	def_warp_events
	warp_event  4, 13, BATTLE_FACTORY_1F, 3
	warp_event  5, 13, BATTLE_FACTORY_1F, 3
	warp_event  4,  4, BATTLE_FACTORY_BATTLE_ROOM, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  8, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  4, 12, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2

	object_const_def
	const BATTLEFACTORYHALLWAY_RECEPTIONIST
	const BATTLEFACTORYHALLWAY_LOBBY_RECEPTIONIST

.SetScientistPosition:
	disappear BATTLEFACTORYHALLWAY_RECEPTIONIST
	disappear BATTLEFACTORYHALLWAY_LOBBY_RECEPTIONIST
	readvar VAR_YCOORD
	ifequalfwd 13, .lobby_arrival
	appear BATTLEFACTORYHALLWAY_RECEPTIONIST
	end
.lobby_arrival
	appear BATTLEFACTORYHALLWAY_LOBBY_RECEPTIONIST
	end

BattleFactoryHallwayFollowReceptionist:
	readvar VAR_YCOORD
	ifequalfwd 13, .arrived_from_lobby
	sdefer .WonBattle
	end

.arrived_from_lobby
	sdefer .StepIntoRoom
	end

.WonBattle:
	opentext
	writethistext
if DEF(_LOCALE_FR)
		text "<PLAYER> gagne"
		line ""
		text_ram wStringBuffer1
		text " PB!"
		done
else
		text "<PLAYER> earned"
		line ""
		text_ram wStringBuffer1
		text " BP!"
		done
endc
	waitsfx
	specialsound
	waitbutton
	special Special_BattleTower_GetBattleResult
	ifequal BTCHALLENGE_WON, Script_BeatenAllFactoryTrainers
	ifequalfwd BTCHALLENGE_FACILITYBRAIN, .WarnAboutHead
.AskNextBattle:
	writethistext
if DEF(_LOCALE_FR)
		text "Prochain adversai-"
		line "re, le no."
		text_decimal wStringBuffer3, 2, 5
		text ". OK?"
		done
else
		text "Next up, opponent"
		line "No. "
		text_decimal wStringBuffer3, 2, 5
		text ". Ready?"
		done
endc
	sjumpfwd .ShownText
.WarnAboutHead:
	writethistext
if DEF(_LOCALE_FR)
		text "Félicitations,"
		line "Dresseur!"

		para "Inspiré par tes"
		line "victoires,"

		para "notre Meneur de"
		line "Zone veut"
		cont "t'affronter."

		para "Prochain combat:"
		line "le Chef d'Usine!"

		para "Prêt?"
		done
else
		text "Congratulations"
		line "on your winning"
		cont "streak, trainer!"

		para "The Factory Head"
		line "has sent word that"

		para "he is demanding"
		line "a match with you."

		para "Are you ready to"
		line "battle the"
		cont "Factory Head?"
		done
endc
.ShownText
	yesorno
	iffalsefwd .DontBattleNextOpponent
	closetext
	special Special_BattleTower_GenerateNextOpponent
	sjumpfwd .NextRentalBattle

.DontBattleNextOpponent:
	writethistext
if DEF(_LOCALE_FR)
		text "SAUVER et finir"
		line "la session?"
		done
else
		text "Save and end the"
		line "session?"
		done
endc
	yesorno
	iffalsefwd .DontSaveAndEndTheSession
	special SaveOptions
	setval BATTLETOWER_SAVED_AND_LEFT
	special Special_BattleTower_SetChallengeState
	playsound SFX_SAVE
	waitsfx
	special FadeOutPalettes
	special SoftReset
.DontSaveAndEndTheSession:
	writethistext
if DEF(_LOCALE_FR)
		text "Annuler le défi"
		line "de l'Etage de"
		cont "Combat?"

		para "Attention: ça"
		line "compte comme"
		cont "une défaite."
		done
else
		text "Cancel your Battle"
		line "Floor challenge?"

		para "Beware, it counts"
		line "as a loss."
		done
endc
	yesorno
	iffalse .AskNextBattle
	special FadeOutPalettes
	sjumpfwd Script_LostBattleFactory

.StepIntoRoom:
	; First, step into the room properly, don't just linger at the entrance.
	follow BATTLEFACTORYHALLWAY_LOBBY_RECEPTIONIST, PLAYER
	applymovement BATTLEFACTORYHALLWAY_LOBBY_RECEPTIONIST, .WalkIntoRoomMovement
	stopfollow
	special Special_BattleTower_GenerateNextOpponent
	turnobject PLAYER, RIGHT
	appear BATTLEFACTORYHALLWAY_RECEPTIONIST
	disappear BATTLEFACTORYHALLWAY_LOBBY_RECEPTIONIST
	; fallthrough
.NextRentalBattle:
	opentext
.NextRentalBattle_AfterOpenText:
	writethistext
if DEF(_LOCALE_FR)
		text "J'ai étudié le"
		line "prochain"
		cont "adversaire."
		prompt
else
		text "I researched the"
		line "next opponent."
		prompt
endc

	special Special_BattleTower_NextRentalBattle
	iftruefwd .Continue

	writethistext
if DEF(_LOCALE_FR)
		text "Annuler la série?"
		line "Ca compte comme"
		cont "une défaite."
		done
else
		text "Cancel your run?"
		line "This counts as a"
		cont "streak loss."
		done
endc
	yesorno
	iffalse .NextRentalBattle_AfterOpenText
	closetext

	; Player aborted the run.
	special FadeOutPalettes
	sjumpfwd Script_LostBattleFactory

.Continue:
	faceobject PLAYER, BATTLEFACTORYHALLWAY_RECEPTIONIST
	writetext .PleaseStepThisWayText
	closetext
	applymovement BATTLEFACTORYHALLWAY_RECEPTIONIST, .StepAbovePlayerMovement
	follow BATTLEFACTORYHALLWAY_RECEPTIONIST, PLAYER
	applymovement BATTLEFACTORYHALLWAY_RECEPTIONIST, .StepOntoFloorMovement
	stopfollow
	warpsound
	disappear BATTLEFACTORYHALLWAY_RECEPTIONIST
	applyonemovement PLAYER, step_up
	warpcheck
	end

.WalkIntoRoomMovement:
	step_up
	step_up
	step_up
	step_up
	step_right
	turn_head_left
	step_end

.PleaseStepThisWayText:
if DEF(_LOCALE_FR)
	text "Par ici, s'il te"
	line "plaît."
	prompt
else
	text "Please step this"
	line "way."
	prompt
endc

.StepAbovePlayerMovement:
	step_up
	step_left
	step_end

.StepOntoFloorMovement:
	step_up
	step_up
	step_up
	step_end
