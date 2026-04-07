UndergroundPathSwitchRoomEntrances_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, UndergroundPathSwitchRoomEntrancesUpdateDoorPositions

	def_warp_events
	warp_event 23,  3, WAREHOUSE_ENTRANCE, 6
	warp_event 22, 10, UNDERGROUND_WAREHOUSE, 1
	warp_event 23, 10, UNDERGROUND_WAREHOUSE, 2
	warp_event  5, 23, WAREHOUSE_ENTRANCE, 2
	warp_event  4, 27, GOLDENROD_CITY, 14
	warp_event  5, 27, GOLDENROD_CITY, 14
	warp_event 21, 23, WAREHOUSE_ENTRANCE, 1
	warp_event 20, 27, GOLDENROD_CITY, 13
	warp_event 21, 27, GOLDENROD_CITY, 13
	warp_event  5, 37, WAREHOUSE_ENTRANCE, 7
	warp_event  4, 41, GOLDENROD_CITY, 22
	warp_event  5, 41, GOLDENROD_CITY, 22

	def_coord_events
	coord_event 19,  4, 0, UndergroundRivalTrigger1
	coord_event 19,  5, 0, UndergroundRivalTrigger2

	def_bg_events
	bg_event 16,  1, BGEVENT_READ, Switch1Script
	bg_event 10,  1, BGEVENT_READ, Switch2Script
	bg_event  2,  1, BGEVENT_READ, Switch3Script
	bg_event 20, 11, BGEVENT_READ, EmergencySwitchScript
	bg_event  8,  9, BGEVENT_ITEM + MAX_POTION, EVENT_UNDERGROUND_PATH_SWITCH_ROOM_ENTRANCES_HIDDEN_MAX_POTION
	bg_event  1,  8, BGEVENT_ITEM + REVIVE, EVENT_UNDERGROUND_PATH_SWITCH_ROOM_ENTRANCES_HIDDEN_REVIVE

	def_object_events
	object_event 23,  3, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RIVAL_UNDERGROUND_PATH
	object_event  9, 12, SPRITE_BURGLAR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerBurglarDuncan, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  4,  8, SPRITE_BURGLAR, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerBurglarOrson, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 17,  2, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerGruntM13, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 11,  2, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerGruntM11, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  3,  2, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerGruntM25, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 19, 12, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerGruntF3, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  3, 25, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, UndergroundPathSwitchRoomEntrances_TeacherText, -1
	object_event  8, 24, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, UndergroundPathSwitchRoomEntrances_SuperNerd1Text, -1
	object_event 19, 25, SPRITE_BUG_MANIAC, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, UndergroundPathSwitchRoomEntrances_SuperNerd2Text, -1
	object_event  1, 39, SPRITE_VETERAN_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, PAL_NPC_GRAY, OBJECTTYPE_SCRIPT, 0, UndergroundPathSwitchRoomEntrancesVeteranMScript, -1
	object_event  8, 38, SPRITE_BEAUTY, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, UndergroundPathSwitchRoomEntrances_BeautyText, -1
	itemball_event  1, 12, SMOKE_BALL, 1, EVENT_UNDERGROUND_PATH_SWITCH_ROOM_ENTRANCES_SMOKE_BALL
	itemball_event 14,  9, FULL_HEAL, 1, EVENT_UNDERGROUND_PATH_SWITCH_ROOM_ENTRANCES_FULL_HEAL

	object_const_def
	const UNDERGROUNDPATHSWITCHROOMENTRANCES_RIVAL

DEF UNDERGROUND_DOOR_CLOSED1 EQU $2a
DEF UNDERGROUND_DOOR_CLOSED2 EQU $3e
DEF UNDERGROUND_DOOR_CLOSED3 EQU $3f
DEF UNDERGROUND_DOOR_OPEN1   EQU $2d
DEF UNDERGROUND_DOOR_OPEN2   EQU $3d

MACRO ugdoor
	DEF \1_YCOORD EQU \2
	DEF \1_XCOORD EQU \3
ENDM

	ugdoor UGDOOR_1,  $10, $06
	ugdoor UGDOOR_2,  $0a, $06
	ugdoor UGDOOR_3,  $02, $06
	ugdoor UGDOOR_4,  $02, $0a
	ugdoor UGDOOR_5,  $0a, $0a
	ugdoor UGDOOR_6,  $10, $0a
	ugdoor UGDOOR_7,  $0c, $06
	ugdoor UGDOOR_8,  $0c, $08
	ugdoor UGDOOR_9,  $06, $06
	ugdoor UGDOOR_10, $06, $08
	ugdoor UGDOOR_11, $0c, $0a
	ugdoor UGDOOR_12, $0c, $0c
	ugdoor UGDOOR_13, $06, $0a
	ugdoor UGDOOR_14, $06, $0c
	ugdoor UGDOOR_15, $12, $0a
	ugdoor UGDOOR_16, $12, $0c

MACRO doorstate
	changeblock UGDOOR_\1_YCOORD, UGDOOR_\1_XCOORD, UNDERGROUND_DOOR_\2
ENDM

UndergroundPathSwitchRoomEntrancesUpdateDoorPositions:
	checkevent EVENT_SWITCH_4
	iffalsefwd .false4
	doorstate 1, OPEN1
.false4
	checkevent EVENT_SWITCH_5
	iffalsefwd .false5
	doorstate 2, OPEN1
.false5
	checkevent EVENT_SWITCH_6
	iffalsefwd .false6
	doorstate 3, OPEN1
.false6
	checkevent EVENT_SWITCH_7
	iffalsefwd .false7
	doorstate 4, OPEN1
.false7
	checkevent EVENT_SWITCH_8
	iffalsefwd .false8
	doorstate 5, OPEN1
.false8
	checkevent EVENT_SWITCH_9
	iffalsefwd .false9
	doorstate 6, OPEN1
.false9
	checkevent EVENT_SWITCH_10
	iffalsefwd .false10
	doorstate 7, CLOSED1
	doorstate 8, OPEN1
.false10
	checkevent EVENT_SWITCH_11
	iffalsefwd .false11
	doorstate 9, CLOSED1
	doorstate 10, OPEN1
.false11
	checkevent EVENT_SWITCH_12
	iffalsefwd .false12
	doorstate 11, CLOSED1
	doorstate 12, OPEN1
.false12
	checkevent EVENT_SWITCH_13
	iffalsefwd .false13
	doorstate 13, CLOSED1
	doorstate 14, OPEN1
.false13
	checkevent EVENT_SWITCH_14
	iffalsefwd .false14
	doorstate 15, CLOSED1
	doorstate 16, OPEN1
.false14
	endcallback

UndergroundRivalTrigger1:
	turnobject PLAYER, RIGHT
	showemote EMOTE_SHOCK, PLAYER, 15
	special Special_FadeOutMusic
	pause 15
	playsound SFX_EXIT_BUILDING
	appear UNDERGROUNDPATHSWITCHROOMENTRANCES_RIVAL
	waitsfx
	applymovement UNDERGROUNDPATHSWITCHROOMENTRANCES_RIVAL, UndergroundRivalApproachMovement1
	turnobject PLAYER, RIGHT
	scall UndergroundRivalBattleScript
	applymovement UNDERGROUNDPATHSWITCHROOMENTRANCES_RIVAL, UndergroundRivalRetreatMovement1
	playsound SFX_EXIT_BUILDING
	disappear UNDERGROUNDPATHSWITCHROOMENTRANCES_RIVAL
	setscene 1
	waitsfx
	playmapmusic
	end

UndergroundRivalTrigger2:
	turnobject PLAYER, RIGHT
	showemote EMOTE_SHOCK, PLAYER, 15
	special Special_FadeOutMusic
	pause 15
	playsound SFX_EXIT_BUILDING
	appear UNDERGROUNDPATHSWITCHROOMENTRANCES_RIVAL
	waitsfx
	applymovement UNDERGROUNDPATHSWITCHROOMENTRANCES_RIVAL, UndergroundRivalApproachMovement2
	turnobject PLAYER, RIGHT
	scall UndergroundRivalBattleScript
	applymovement UNDERGROUNDPATHSWITCHROOMENTRANCES_RIVAL, UndergroundRivalRetreatMovement2
	playsound SFX_EXIT_BUILDING
	disappear UNDERGROUNDPATHSWITCHROOMENTRANCES_RIVAL
	setscene 1
	waitsfx
	playmapmusic
	end

UndergroundRivalBattleScript:
	checkevent EVENT_RIVAL_BURNED_TOWER
	iftruefwd .Continue
	setevent EVENT_RIVAL_BURNED_TOWER
	setmapscene BURNED_TOWER_1F, 1
.Continue:
	playmusic MUSIC_RIVAL_ENCOUNTER
	showtext UndergroundRivalBeforeText
	setevent EVENT_RIVAL_UNDERGROUND_PATH
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftruefwd .Totodile
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftruefwd .Chikorita
	winlosstext UndergroundRivalWinText, UndergroundRivalLossText
	setlasttalked UNDERGROUNDPATHSWITCHROOMENTRANCES_RIVAL
	loadtrainer RIVAL1, RIVAL1_12
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjumpfwd .FinishRivalBattle

.Totodile:
	winlosstext UndergroundRivalWinText, UndergroundRivalLossText
	setlasttalked UNDERGROUNDPATHSWITCHROOMENTRANCES_RIVAL
	loadtrainer RIVAL1, RIVAL1_10
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjumpfwd .FinishRivalBattle

.Chikorita:
	winlosstext UndergroundRivalWinText, UndergroundRivalLossText
	setlasttalked UNDERGROUNDPATHSWITCHROOMENTRANCES_RIVAL
	loadtrainer RIVAL1, RIVAL1_11
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	; fallthrough

.FinishRivalBattle:
	special DeleteSavedMusic
	playmusic MUSIC_RIVAL_AFTER
	jumptext UndergroundRivalAfterText

GenericTrainerGruntM11:
	generictrainer GRUNTM, 11, EVENT_BEAT_ROCKET_GRUNTM_11, GruntM11SeenText, GruntM11BeatenText

if DEF(_LOCALE_FR)
	text "Moi aussi je m'y"
	line "perds: le premier"
	line "interrupteur à"
	line "activer est au"
	line "bout et après…"
	done
else
	text "I'm confused too…"
	line "The switch on the"

	para "end is the one to"
	line "press first, but…"
	done
endc

GenericTrainerGruntM25:
	generictrainer GRUNTM, 25, EVENT_BEAT_ROCKET_GRUNTM_25, GruntM25SeenText, GruntM25BeatenText

if DEF(_LOCALE_FR)
	text "OK. Un conseil!"
	line "Change l'ordre"
	line "d'activation. Et"
	line "l'ordre de fer-"
	line "meture des volets"
	line "changera."
	done
else
	text "All right. A hint!"

	para "Change the order"
	line "of switching."

	para "That'll change the"
	line "ways the shutters"
	cont "open and close."
	done
endc

GenericTrainerBurglarDuncan:
	generictrainer BURGLAR, DUNCAN, EVENT_BEAT_BURGLAR_DUNCAN, BurglarDuncanSeenText, BurglarDuncanBeatenText

if DEF(_LOCALE_FR)
	text "Voler c'est cool!"
	line "Piller c'est top!"
	done
else
	text "Steal and sell!"
	line "That's basic in"
	cont "crime, kid!"
	done
endc

GenericTrainerBurglarOrson:
	generictrainer BURGLAR, ORSON, EVENT_BEAT_BURGLAR_ORSON, BurglarOrsonSeenText, BurglarOrsonBeatenText

if DEF(_LOCALE_FR)
	text "Le DEPOT"
	line "SOUTERRAIN?"
	line "Pourquoi tu veux y"
	line "aller? Y'a rien du"
	line "tout dans le coin."
	done
else
	text "Underground Ware-"
	line "house?"

	para "What do you want"
	line "to go there for?"

	para "There's nothing"
	line "down there."
	done
endc

GenericTrainerGruntM13:
	generictrainer GRUNTM, 13, EVENT_BEAT_ROCKET_GRUNTM_13, GruntM13SeenText, GruntM13BeatenText

if DEF(_LOCALE_FR)
	text "T'as un sacré cou-"
	line "rage pour t'atta-"
	line "quer à la ROCKET."
	done
else
	text "You must have ice"
	line "in your veins to"
	cont "dis Team Rocket."
	done
endc

GenericTrainerGruntF3:
	generictrainer GRUNTF, 3, EVENT_BEAT_ROCKET_GRUNTF_3, GruntF3SeenText, GruntF3BeatenText

if DEF(_LOCALE_FR)
	text "Va où tu veux!"
	line "Va-t'en! Je m'en"
	line "fiche!"
	done
else
	text "Go wherever you'd"
	line "like! Get lost!"
	cont "See if I care!"
	done
endc

Switch1Script:
	opentext
	writetext SwitchRoomText_Switch1
	promptbutton
	checkevent EVENT_SWITCH_1
	iftruefwd .On
	writetext SwitchRoomText_OffTurnOn
	yesorno
	iffalsefwd UndergroundPathSwitchRoomEntrances_DontToggle
	readmem wUndergroundSwitchPositions
	addval 1
	writemem wUndergroundSwitchPositions
	setevent EVENT_SWITCH_1
	sjumpfwd UndergroundPathSwitchRoomEntrances_UpdateDoors

.On:
	writetext SwitchRoomText_OnTurnOff
	yesorno
	iffalsefwd UndergroundPathSwitchRoomEntrances_DontToggle
	readmem wUndergroundSwitchPositions
	addval -1
	writemem wUndergroundSwitchPositions
	clearevent EVENT_SWITCH_1
	sjumpfwd UndergroundPathSwitchRoomEntrances_UpdateDoors

Switch2Script:
	opentext
	writetext SwitchRoomText_Switch2
	promptbutton
	checkevent EVENT_SWITCH_2
	iftruefwd .On
	writetext SwitchRoomText_OffTurnOn
	yesorno
	iffalsefwd UndergroundPathSwitchRoomEntrances_DontToggle
	readmem wUndergroundSwitchPositions
	addval 2
	writemem wUndergroundSwitchPositions
	setevent EVENT_SWITCH_2
	sjumpfwd UndergroundPathSwitchRoomEntrances_UpdateDoors

.On:
	writetext SwitchRoomText_OnTurnOff
	yesorno
	iffalsefwd UndergroundPathSwitchRoomEntrances_DontToggle
	readmem wUndergroundSwitchPositions
	addval -2
	writemem wUndergroundSwitchPositions
	clearevent EVENT_SWITCH_2
	sjumpfwd UndergroundPathSwitchRoomEntrances_UpdateDoors

Switch3Script:
	opentext
	writetext SwitchRoomText_Switch3
	promptbutton
	checkevent EVENT_SWITCH_3
	iftruefwd .On
	writetext SwitchRoomText_OffTurnOn
	yesorno
	iffalsefwd UndergroundPathSwitchRoomEntrances_DontToggle
	readmem wUndergroundSwitchPositions
	addval 3
	writemem wUndergroundSwitchPositions
	setevent EVENT_SWITCH_3
	sjumpfwd UndergroundPathSwitchRoomEntrances_UpdateDoors

.On:
	writetext SwitchRoomText_OnTurnOff
	yesorno
	iffalsefwd UndergroundPathSwitchRoomEntrances_DontToggle
	readmem wUndergroundSwitchPositions
	addval -3
	writemem wUndergroundSwitchPositions
	clearevent EVENT_SWITCH_3
	sjumpfwd UndergroundPathSwitchRoomEntrances_UpdateDoors

EmergencySwitchScript:
	opentext
	writetext SwitchRoomText_Emergency
	promptbutton
	checkevent EVENT_EMERGENCY_SWITCH
	iftruefwd .On
	writetext SwitchRoomText_OffTurnOn
	yesorno
	iffalsefwd UndergroundPathSwitchRoomEntrances_DontToggle
	setval 7
	writemem wUndergroundSwitchPositions
	setevent EVENT_EMERGENCY_SWITCH
	setevent EVENT_SWITCH_1
	setevent EVENT_SWITCH_2
	setevent EVENT_SWITCH_3
	sjumpfwd UndergroundPathSwitchRoomEntrances_UpdateDoors

.On:
	writetext SwitchRoomText_OnTurnOff
	yesorno
	iffalsefwd UndergroundPathSwitchRoomEntrances_DontToggle
	setval 0
	writemem wUndergroundSwitchPositions
	clearevent EVENT_EMERGENCY_SWITCH
	clearevent EVENT_SWITCH_1
	clearevent EVENT_SWITCH_2
	clearevent EVENT_SWITCH_3
	sjumpfwd UndergroundPathSwitchRoomEntrances_UpdateDoors

UndergroundPathSwitchRoomEntrances_DontToggle:
	endtext

UndergroundPathSwitchRoomEntrances_UpdateDoors:
	readmem wUndergroundSwitchPositions
	ifequalfwd 0, .Position0
	ifequalfwd 1, .Position1
	ifequalfwd 2, .Position2
	ifequalfwd 3, .Position3
	ifequalfwd 4, .Position4
	ifequalfwd 5, .Position5
	ifequalfwd 6, .Position6
	ifequalfwd 7, .EmergencyPosition
.Position0:
	playsound SFX_ENTER_DOOR
	scall .Clear4
	scall .Clear5
	scall .Clear6
	scall .Clear7
	scall .Clear8
	scall .Clear9
	scall .Clear10
	scall .Clear11
	scall .Clear12
	scall .Clear13
	scall .Clear14
	refreshmap
	endtext

.Position1:
	playsound SFX_ENTER_DOOR
	scall .Set4
	scall .Set10
	scall .Set13
	scall .Clear9
	scall .Clear11
	scall .Clear12
	scall .Clear14
	refreshmap
	endtext

.Position2:
	playsound SFX_ENTER_DOOR
	scall .Set5
	scall .Set11
	scall .Set12
	scall .Clear8
	scall .Clear10
	scall .Clear13
	scall .Clear14
	refreshmap
	endtext

.Position3:
	playsound SFX_ENTER_DOOR
	scall .Set6
	scall .Set10
	scall .Set13
	scall .Clear7
	scall .Clear11
	scall .Clear12
	scall .Clear14
	refreshmap
	endtext

.Position4:
	playsound SFX_ENTER_DOOR
	scall .Set7
	scall .Set11
	scall .Set12
	scall .Clear6
	scall .Clear10
	scall .Clear13
	scall .Clear14
	refreshmap
	endtext

.Position5:
	playsound SFX_ENTER_DOOR
	scall .Set8
	scall .Set10
	scall .Set13
	scall .Clear5
	scall .Clear11
	scall .Clear12
	scall .Clear14
	refreshmap
	endtext

.Position6:
	playsound SFX_ENTER_DOOR
	scall .Set9
	scall .Set11
	scall .Set12
	scall .Set14
	scall .Clear4
	scall .Clear10
	scall .Clear13
	refreshmap
	endtext

.EmergencyPosition:
	playsound SFX_ENTER_DOOR
	scall .Clear4
	scall .Clear5
	scall .Set6
	scall .Clear7
	scall .Set8
	scall .Set9
	scall .Clear10
	scall .Set11
	scall .Set12
	scall .Clear13
	scall .Set14
	refreshmap
	closetext
	setval 6
	writemem wUndergroundSwitchPositions
	end

.Set4:
	doorstate 1, OPEN1
	setevent EVENT_SWITCH_4
	end

.Set5:
	doorstate 2, OPEN1
	setevent EVENT_SWITCH_5
	end

.Set6:
	doorstate 3, OPEN1
	setevent EVENT_SWITCH_6
	end

.Set7:
	doorstate 4, OPEN1
	setevent EVENT_SWITCH_7
	end

.Set8:
	doorstate 5, OPEN1
	setevent EVENT_SWITCH_8
	end

.Set9:
	doorstate 6, OPEN1
	setevent EVENT_SWITCH_9
	end

.Set10:
	doorstate 7, CLOSED1
	doorstate 8, OPEN1
	setevent EVENT_SWITCH_10
	end

.Set11:
	doorstate 9, CLOSED1
	doorstate 10, OPEN1
	setevent EVENT_SWITCH_11
	end

.Set12:
	doorstate 11, CLOSED1
	doorstate 12, OPEN1
	setevent EVENT_SWITCH_12
	end

.Set13:
	doorstate 13, CLOSED1
	doorstate 14, OPEN1
	setevent EVENT_SWITCH_13
	end

.Set14:
	doorstate 15, CLOSED1
	doorstate 16, OPEN1
	setevent EVENT_SWITCH_14
	end

.Clear4:
	doorstate 1, CLOSED2
	clearevent EVENT_SWITCH_4
	end

.Clear5:
	doorstate 2, CLOSED2
	clearevent EVENT_SWITCH_5
	end

.Clear6:
	doorstate 3, CLOSED2
	clearevent EVENT_SWITCH_6
	end

.Clear7:
	doorstate 4, CLOSED2
	clearevent EVENT_SWITCH_7
	end

.Clear8:
	doorstate 5, CLOSED2
	clearevent EVENT_SWITCH_8
	end

.Clear9:
	doorstate 6, CLOSED2
	clearevent EVENT_SWITCH_9
	end

.Clear10:
	doorstate 7, CLOSED3
	doorstate 8, OPEN2
	clearevent EVENT_SWITCH_10
	end

.Clear11:
	doorstate 9, CLOSED3
	doorstate 10, OPEN2
	clearevent EVENT_SWITCH_11
	end

.Clear12:
	doorstate 11, CLOSED3
	doorstate 12, OPEN2
	clearevent EVENT_SWITCH_12
	end

.Clear13:
	doorstate 13, CLOSED3
	doorstate 14, OPEN2
	clearevent EVENT_SWITCH_13
	end

.Clear14:
	doorstate 15, CLOSED3
	doorstate 16, OPEN2
	clearevent EVENT_SWITCH_14
	end

UndergroundRivalApproachMovement1:
	step_down
	step_left
	step_left
	step_left
	step_end

UndergroundRivalApproachMovement2:
	step_down
	step_down
	step_left
	step_left
	step_left
	step_end

UndergroundRivalRetreatMovement1:
	step_right
	step_right
	step_right
	step_up
	step_end

UndergroundRivalRetreatMovement2:
	step_right
	step_right
	step_right
	step_up
	step_up
	step_end

UndergroundPathSwitchRoomEntrancesVeteranMScript:
	checkevent EVENT_GOT_LOADED_DICE_FROM_GOLDENROD
	iftrue_jumptextfaceplayer .Text2
	faceplayer
	opentext
	writetext .Text1
	promptbutton
	verbosegiveitem LOADED_DICE
	iffalse_endtext
	setevent EVENT_GOT_LOADED_DICE_FROM_GOLDENROD
	jumpthisopenedtext

.Text2:
	text "In the long run,"
	line "the house always"
	cont "wins…"
	done

.Text1:
	text "I tried to use"
	line "this item in the"

	para "Game Corner, but"
	line "they caught me."

	para "You may as well"
	line "take it."
	done

UndergroundRivalBeforeText:
if DEF(_LOCALE_FR)
	text "Minute! Hé hé! Je"
	line "t'ai suivi… J'ai"
	line "pas besoin de toi"
	line "pour casser la"
	line "tête à la TEAM"
	line "ROCKET. …Attends"
	line "voir… Tu m'as"
	line "battu avant, non?"
	line "C'était de la"
	line "chance. Mais cette"
	line "fois… Ca va"
	line "saigner!"
	done
else
	text "Hold it!"

	para "I saw you, so I"
	line "tailed you."

	para "I don't need you"
	line "underfoot while I"

	para "take care of Team"
	line "Rocket."

	para "…Wait a second."
	line "You beat me be-"
	cont "fore, didn't you?"

	para "That was just a"
	line "fluke."

	para "But I repay my"
	line "debts!"
	done
endc

UndergroundRivalWinText:
if DEF(_LOCALE_FR)
	text "…Pourquoi… Moi"
	line "perdre? Mes #MON"
	line "sont super"
	line "balèzes! Je les ai"
	line "entraî- nés à"
	line "fond! Alors"
	line "pourquoi???"
	done
else
	text "…Why…"
	line "Why do I lose?"

	para "I've assembled the"
	line "toughest #mon."

	para "I didn't ease up"
	line "on the gas."

	para "So why do I lose?"
	done
endc

UndergroundRivalAfterText:
if DEF(_LOCALE_FR)
	text "C'est… Incroyable…"
	line "Ce qu'a dit PETER"
	line "est donc vrai? Je"
	line "m'occupe mal de"
	line "mes #MON? Amour…"
	line "Confiance… Est-ce"
	line "aussi im- portant?"
	line "Est-ce la raison"
	line "de ma défaite? Je"
	line "ne comprends plus"
	line "rien… Mais ce"
	line "n'est pas la fin."
	line "Pas maintenant…"
	line "Pas comme ça. Je"
	line "serai le plus"
	line "grand dresseur de"
	line "#MON de tous les"
	line "temps!"
	done
else
	text "…I don't under-"
	line "stand…"

	para "Is what that Lance"
	line "guy said true?"

	para "That I don't treat"
	line "#mon properly?"

	para "Love…"

	para "Trust…"

	para "Are they really"
	line "what I lack?"

	para "Are they keeping"
	line "me from winning?"

	para "I… I just don't"
	line "understand."

	para "But it's not going"
	line "to end here."

	para "Not now. Not"
	line "because of this."

	para "I won't give up my"
	line "dream of becoming"

	para "the world's best"
	line "#mon trainer!"
	done
endc

UndergroundRivalLossText:
if DEF(_LOCALE_FR)
	text "Tsss! Voilà ce que"
	line "c'est la force."
	line "J'vais la bouffer"
	line "la TEAM ROCKET. Et"
	line "PETER… J'vais lui"
	line "casser ses rêves."
	done
else
	text "Humph. This is my"
	line "real power, wimp."

	para "I'll make Team"
	line "Rocket history."

	para "And I'm going to"
	line "grind that Lance"
	cont "under my heels."
	done
endc

UndergroundPathSwitchRoomEntrances_TeacherText:
if DEF(_LOCALE_FR)
	text "Il y a des bouti-"
	line "ques en bas… Mais"
	line "il y a aussi des"
	line "dresseurs… Alors"
	line "j'ai peur d'y"
	line "aller."
	done
else
	text "There are some"
	line "shops downstairs…"

	para "But there are"
	line "also trainers."

	para "I'm scared to go"
	line "down there."
	done
endc

UndergroundPathSwitchRoomEntrances_SuperNerd1Text:
	text "This tunnel was"
	line "originally made"
	cont "for deliveries to"

	para "the department"
	line "store."

	para "It's a nice short-"
	line "cut across the"
	cont "city too."
	done

UndergroundPathSwitchRoomEntrances_SuperNerd2Text:
if DEF(_LOCALE_FR)
	text "J'ai fait un"
	line "combat en bas."
	line "C'était super"
	line "chaud. Un conseil:"
	line "fais super gaffe!"
	done
else
	text "I was challenged"
	line "to a battle down-"
	cont "stairs."

	para "It's rough down"
	line "there. You'd"
	cont "better be careful."
	done
endc

UndergroundPathSwitchRoomEntrances_BeautyText:
	text "I went on a tour"
	line "of the Radio"

	para "Tower. I saw all"
	line "three studios and"

	para "even ate in the"
	line "café."
	done

GruntM11SeenText:
if DEF(_LOCALE_FR)
	text "Ouvre un truc et"
	line "un autre se ferme."
	line "C'est dur d'avan-"
	line "cer, hein?"
	done
else
	text "Open one shutter,"
	line "another closes."

	para "Bet you can't get"
	line "where you want!"
	done
endc

GruntM11BeatenText:
if DEF(_LOCALE_FR)
	text "Zut de flûte!"
	line "J'suis perdu!"
	done
else
	text "Drat! I was sunk"
	line "by indecision!"
	done
endc

GruntM25SeenText:
if DEF(_LOCALE_FR)
	text "Kwahaha! Les"
	line "volets te po- sent"
	line "un problème?"
	line "Bats-moi et je te"
	line "confie un p'tit"
	line "secret!"
	done
else
	text "Kwahaha!"

	para "Confounded by the"
	line "shutters, are we?"

	para "I'll let you in on"
	line "a secret if you"
	cont "can beat me!"
	done
endc

GruntM25BeatenText:
if DEF(_LOCALE_FR)
	text "Hmmm… Dommage."
	done
else
	text "Uwww…"
	line "I blew it."
	done
endc

BurglarDuncanSeenText:
if DEF(_LOCALE_FR)
	text "Envoie ton blé!"
	done
else
	text "Fork over your"
	line "goodies!"
	done
endc

BurglarDuncanBeatenText:
if DEF(_LOCALE_FR)
	text "Pitié!"
	done
else
	text "Mercy!"
	done
endc

BurglarOrsonSeenText:
if DEF(_LOCALE_FR)
	text "Ils ont abandonné"
	line "ce projet avant la"
	line "fin. Je cherche"
	line "des restes à"
	line "voler."
	done
else
	text "They ditched this"
	line "project before"
	cont "they finished."

	para "I'm searching for"
	line "leftover loot."
	done
endc

BurglarOrsonBeatenText:
if DEF(_LOCALE_FR)
	text "Yarglah!"
	done
else
	text "Over the top!"
	done
endc

GruntM13SeenText:
if DEF(_LOCALE_FR)
	text "Je m'en fiche si"
	line "t'es perdu. Si tu"
	line "viens ici, tu dois"
	line "être prêt aux"
	line "conséquences!"
	done
else
	text "I don't care if"
	line "you're lost."

	para "You show up here,"
	line "you're nothing but"
	cont "a victim!"
	done
endc

GruntM13BeatenText:
if DEF(_LOCALE_FR)
	text "Gueuh! Tu te crois"
	line "fort ou quoi?"
	done
else
	text "Urk! Yeah, think"
	line "you're cool, huh?"
	done
endc

SwitchRoomText_Switch1:
if DEF(_LOCALE_FR)
	text "C'est écrit:"
	line "INTERRUPTEUR 1."
	done
else
	text "It's labeled"
	line "Switch 1."
	done
endc

GruntF3SeenText:
if DEF(_LOCALE_FR)
	text "T'es perdu? Non,"
	line "je le crois pas."
	line "T'as pas l'air"
	line "d'avoir peur."
	line "Attends… Moi je"
	line "vais te faire"
	line "peur!"
	done
else
	text "Are you lost? No,"
	line "you can't be."

	para "You don't have"
	line "that scared look."

	para "I'll give you"
	line "something to be"
	cont "scared about!"
	done
endc

GruntF3BeatenText:
if DEF(_LOCALE_FR)
	text "Comment oses-tu?"
	done
else
	text "How could you?"
	done
endc

SwitchRoomText_OffTurnOn:
if DEF(_LOCALE_FR)
	text "C'est éteint. On"
	line "l'active?"
	done
else
	text "It's off."
	line "Turn it on?"
	done
endc

SwitchRoomText_OnTurnOff:
if DEF(_LOCALE_FR)
	text "C'est activé. On"
	line "l'éteint?"
	done
else
	text "It's on."
	line "Turn it off?"
	done
endc

SwitchRoomText_Switch2:
if DEF(_LOCALE_FR)
	text "C'est écrit:"
	line "INTERRUPTEUR 2."
	done
else
	text "It's labeled"
	line "Switch 2."
	done
endc

SwitchRoomText_Switch3:
if DEF(_LOCALE_FR)
	text "C'est écrit:"
	line "INTERRUPTEUR 3."
	done
else
	text "It's labeled"
	line "Switch 3."
	done
endc

SwitchRoomText_Emergency:
if DEF(_LOCALE_FR)
	text "C'est écrit:"
	line "URGENCE."
	done
else
	text "It's labeled"
	line "Emergency."
	done
endc
