CinnabarLab_MapScriptHeader:
	def_scene_scripts
	scene_script CinnabarLabTrigger0

	def_callbacks

	def_warp_events

	def_coord_events
	coord_event  2,  6, 1, CinnabarLabCelebiEventScript

	def_bg_events
	bg_event  8, 14, BGEVENT_JUMPTEXT, CinnabarLabRoom1SignText
	bg_event  9, 14, BGEVENT_JUMPTEXT, CinnabarLabLockedDoorText
	bg_event 16, 14, BGEVENT_JUMPTEXT, CinnabarLabRoom2SignText
	bg_event 17, 14, BGEVENT_JUMPTEXT, CinnabarLabLockedDoorText
	bg_event 24, 14, BGEVENT_JUMPTEXT, CinnabarLabRoom3SignText
	bg_event 25, 14, BGEVENT_JUMPTEXT, CinnabarLabLockedDoorText
	bg_event  3,  6, BGEVENT_JUMPTEXT, CinnabarLabRoom4SignText
	bg_event  3, 11, BGEVENT_ITEM + BERSERK_GENE, EVENT_CINNABAR_LAB_HIDDEN_BERSERK_GENE

	def_object_events
	object_event 15,  6, SPRITE_GIOVANNI, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 15,  4, SPRITE_ARMORED_MEWTWO, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 11,  6, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 20,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_CINNABAR_LAB_SCIENTIST1
	object_event 11,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_CINNABAR_LAB_SCIENTIST2
	pokemon_event 15,  7, MEWTWO, SPRITEMOVEDATA_STILL, -1, PAL_NPC_PURPLE, ClearText, EVENT_CINNABAR_LAB_MEWTWO
	object_event 14,  8, SPRITE_CELEBI, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_CINNABAR_LAB_CELEBI
	object_event 15,  8, SPRITE_CHRIS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_CINNABAR_LAB_CHRIS
	object_event 15,  8, SPRITE_KRIS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_CINNABAR_LAB_KRIS
	object_event 15,  8, SPRITE_CRYS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_CINNABAR_LAB_CRYS

	object_const_def
	const CINNABARLAB_GIOVANNI
	const CINNABARLAB_ARMORED_MEWTWO
	const CINNABARLAB_SCIENTIST1
	const CINNABARLAB_SCIENTIST2
	const CINNABARLAB_SCIENTIST3
	const CINNABARLAB_MEWTWO
	const CINNABARLAB_CELEBI
	const CINNABARLAB_CHRIS
	const CINNABARLAB_KRIS
	const CINNABARLAB_CRYS

CinnabarLabTrigger0:
	sdefer CinnabarLabStepDownScript
	end

CinnabarLabStepDownScript:
	readvar VAR_YCOORD
	ifnotequal $6, .Done
	readvar VAR_XCOORD
	ifnotequal $2, .Done
	applyonemovement PLAYER, step_down
.Done
	setscene $1
	end

CinnabarLabCelebiEventScript:
	playsound SFX_EXIT_BUILDING
	special FadeOutPalettes
	pause 15
	setevent EVENT_CINNABAR_LAB_CELEBI
	setevent EVENT_CINNABAR_LAB_MEWTWO
	setevent EVENT_CINNABAR_LAB_CHRIS
	setevent EVENT_CINNABAR_LAB_KRIS
	setevent EVENT_CINNABAR_LAB_CRYS
	clearevent EVENT_CINNABAR_LAB_SCIENTIST1
	setevent EVENT_CINNABAR_LAB_SCIENTIST2
	setscene $0
	warpfacing UP, CINNABAR_LAB, 15, 9
	special Special_FadeOutMusic
	pause 30
	showtext CinnabarLabContinueTestingText
	applyonemovement PLAYER, slow_step_up
	showemote EMOTE_SHOCK, CINNABARLAB_GIOVANNI, 15
	playmusic MUSIC_ROCKET_OVERTURE
	turnobject CINNABARLAB_GIOVANNI, DOWN
	showtext CinnabarLabGiovanniWhoAreYouText
	applymovement CINNABARLAB_GIOVANNI, CinnabarLabGiovanniStepAsideMovementData
	showemote EMOTE_SHOCK, PLAYER, 15
	scall CinnabarLabHidePlayer
	applymovement PLAYER, CinnabarLabPanUpAndDownMovementData
	scall CinnabarLabShowPlayer
	applyonemovement PLAYER, slow_step_up
	opentext
	writetext CinnabarLabGiovanniAttackText
	cry MEWTWO
	waitsfx
	closetext
	clearevent EVENT_TIME_TRAVELING
	winlosstext CinnabarLabGiovanniBeatenText, 0
	setlasttalked CINNABARLAB_GIOVANNI
	loadtrainer GIOVANNI, GIOVANNI1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	special DeleteSavedMusic
	playmusic MUSIC_NONE
	setevent EVENT_TIME_TRAVELING
	showtext CinnabarLabGiovanniAfterText
	showemote EMOTE_SHOCK, CINNABARLAB_ARMORED_MEWTWO, 15
	opentext
	writetext CinnabarLabMewtwoText
	cry MEWTWO
	waitsfx
	closetext
	playmusic MUSIC_KANTO_LEGEND_BATTLE_XY
	pause 15
	playsound SFX_SWORDS_DANCE
	callasm BlindingFlash
	callasm BlindingFlash
	waitsfx
	pause 15
	playsound SFX_OUTRAGE
	callasm BlindingFlash
	callasm BlindingFlash
	waitsfx
	pause 15
	playsound SFX_EMBER
	callasm BlindingFlash
	callasm BlindingFlash
	earthquake 30
	waitsfx
	pause 15
	applymovement CINNABARLAB_ARMORED_MEWTWO, CinnabarLabMewtwoFloatsDownMovementData
	applymovement PLAYER, CinnabarLabPlayerStepsBackMovementData
	pause 15
	scall CinnabarLabHidePlayer
	waitsfx
	showemote EMOTE_SHOCK, CINNABARLAB_GIOVANNI, 10
	cry MEWTWO
	waitsfx
	turnobject CINNABARLAB_ARMORED_MEWTWO, LEFT
	applymovement PLAYER, CinnabarLabPan1MovementData
	playsound SFX_PSYCHIC
	turnobject CINNABARLAB_SCIENTIST1, RIGHT
	showemote EMOTE_SHOCK, CINNABARLAB_SCIENTIST1, 10
	applymovement CINNABARLAB_SCIENTIST1, CinnabarLabScientist1Thrown1MovementData
	playsound SFX_TACKLE
	applymovement CINNABARLAB_SCIENTIST1, CinnabarLabScientist1Thrown2MovementData
	disappear CINNABARLAB_SCIENTIST1
	appear CINNABARLAB_SCIENTIST3
	turnobject CINNABARLAB_ARMORED_MEWTWO, RIGHT
	applymovement PLAYER, CinnabarLabPan2MovementData
	playsound SFX_PSYCHIC
	turnobject CINNABARLAB_SCIENTIST2, LEFT
	showemote EMOTE_SHOCK, CINNABARLAB_SCIENTIST2, 10
	applymovement CINNABARLAB_SCIENTIST2, CinnabarLabScientist2Thrown1MovementData
	playsound SFX_TACKLE
	applymovement CINNABARLAB_SCIENTIST2, CinnabarLabScientist2Thrown2MovementData
	waitsfx
	opentext
	writetext CinnabarLabGiovanniStopText
	pause 20
	closetext
	playsound SFX_PSYCHIC
	applymovement CINNABARLAB_GIOVANNI, CinnabarLabGiovanniThrown1MovementData
	turnobject CINNABARLAB_ARMORED_MEWTWO, UP
	applymovement PLAYER, CinnabarLabPan3MovementData
	waitsfx
	playsound SFX_TACKLE
	applyonemovement CINNABARLAB_GIOVANNI, jump_step_up
	waitsfx
	applymovement PLAYER, CinnabarLabPan4MovementData
	scall CinnabarLabShowPlayer
	turnobject CINNABARLAB_ARMORED_MEWTWO, DOWN
	pause 30
	applyonemovement CINNABARLAB_ARMORED_MEWTWO, slow_step_down
	playsound SFX_KINESIS
	special FadeOutPalettes
	special LoadMapPalettes
	pause 15
	disappear CINNABARLAB_ARMORED_MEWTWO
	appear CINNABARLAB_MEWTWO
	waitsfx
	special FadeInPalettes_EnableDynNoApply
	opentext
	writetext CinnabarLabMewtwoText
	cry MEWTWO
	waitsfx
	closetext
	playsound SFX_GAME_FREAK_LOGO_GS
	special FadeOutPalettes
	special LoadMapPalettes
	pause 30
	appear CINNABARLAB_CELEBI
	special FadeInPalettes_EnableDynNoApply
	waitsfx
	opentext
	writetext CinnabarLabCelebiText
	cry CELEBI
	waitsfx
	closetext
	turnobject PLAYER, LEFT
	showemote EMOTE_SHOCK, PLAYER, 15
	playsound SFX_PROTECT
	applymovement CINNABARLAB_CELEBI, CinnabarLabCelebiFloatsMovementData
	waitsfx
	playsound SFX_GAME_FREAK_LOGO_GS
	special FadeOutPalettes
	pause 30
	waitsfx
	clearevent EVENT_ILEX_FOREST_LYRA
	setmapscene ILEX_FOREST, $1
	warp ILEX_FOREST, 10, 26
	end

CinnabarLabHidePlayer:
	readvar VAR_PLAYERGENDER
	scalltable .Appear
	applyonemovement PLAYER, hide_object
	end
.Appear:
	dw .Male
	dw .Female
	dw .Enby
.Male:
	appear CINNABARLAB_CHRIS
	end
.Female:
	appear CINNABARLAB_KRIS
	end
.Enby:
	appear CINNABARLAB_CRYS
	end

CinnabarLabShowPlayer:
	applyonemovement PLAYER, show_object
	disappear CINNABARLAB_CHRIS
	disappear CINNABARLAB_KRIS
	disappear CINNABARLAB_CRYS
	end

CinnabarLabGiovanniStepAsideMovementData:
	slow_step_right
	slow_step_right
	turn_head_left
	step_end

CinnabarLabPanUpAndDownMovementData:
	slow_step_up
	slow_step_up
	slow_step_up
	slow_step_up
	step_sleep 32
	slow_step_down
	slow_step_down
	slow_step_down
	slow_step_down
	step_sleep 32
	turn_head_up
	step_end

CinnabarLabMewtwoFloatsDownMovementData:
	set_sliding
	jump_step_down
	remove_sliding
	step_end

CinnabarLabPlayerStepsBackMovementData:
	fix_facing
	step_down
	remove_fixed_facing
	step_end

CinnabarLabPan1MovementData:
	run_step_left
	run_step_left
	run_step_left
	run_step_up
	run_step_up
	run_step_up
	step_end

CinnabarLabScientist1Thrown1MovementData:
	set_sliding
	fix_facing
	step_up
	step_up
	remove_fixed_facing
	remove_sliding
	run_step_left
	step_end

CinnabarLabScientist1Thrown2MovementData:
	jump_step_right
	turn_head_up
	step_end

CinnabarLabPan2MovementData:
	run_step_right
	run_step_right
	run_step_right
	run_step_right
	run_step_right
	run_step_right
	step_end

CinnabarLabScientist2Thrown1MovementData:
	set_sliding
	fix_facing
	step_up
	step_up
	remove_fixed_facing
	remove_sliding
	run_step_right
	step_end

CinnabarLabScientist2Thrown2MovementData:
	jump_step_left
	turn_head_up
	step_end

CinnabarLabGiovanniThrown1MovementData:
	set_sliding
	step_left
	turn_head_down
	fix_facing
	step_up
	step_up
	remove_fixed_facing
	step_end

CinnabarLabPan3MovementData:
	step_up
	step_up
	step_end

CinnabarLabPan4MovementData:
	step_left
	step_left
	step_left
	step_down
	step_down
	step_down
	step_down
	step_down
	turn_head_up
	step_end

CinnabarLabCelebiFloatsMovementData:
	turn_head_down
	fix_facing
	slow_step_up
	slow_step_up
	slow_step_up
	remove_fixed_facing
	step_end

CinnabarLabRoom1SignText:
if DEF(_LOCALE_FR)
	text "Salle de clonage"
	done
else
	text "Cloning Room"
	done
endc

CinnabarLabRoom2SignText:
if DEF(_LOCALE_FR)
	text "Salle cybernétique"
	done
else
	text "Cybernetics Room"
	done
endc

CinnabarLabRoom3SignText:
if DEF(_LOCALE_FR)
	text "Salle de stockage"
	done
else
	text "Storage Room"
	done
endc

CinnabarLabRoom4SignText:
if DEF(_LOCALE_FR)
	text "Projet Ambre"
	line "Salle de test"

	para "ACCES INTERDIT"
	line "SANS NIVEAU 5"
	done
else
	text "Project Amber"
	line "Testing Room"

	para "ABSOLUTELY NO"
	line "ENTRY WITHOUT"
	cont "LEVEL 5 CLEARANCE"
	done
endc

CinnabarLabLockedDoorText:
if DEF(_LOCALE_FR)
	text "C'est fermé..."
	done
else
	text "It's locked…"
	done
endc

CinnabarLabContinueTestingText:
if DEF(_LOCALE_FR)
	text "Continue les"
	line "tests. Ta"

	para "création marche"
	line "bien, Dr.Fu--"
	done
else
	text "Continue the"
	line "tests. Your"

	para "creation has per-"
	line "formed very well"
	cont "so far, Dr.Fu--"
	done
endc

CinnabarLabGiovanniWhoAreYouText:
if DEF(_LOCALE_FR)
	text "Qui es-tu?!"
	line "Tu n'es pas de la"
	cont "TEAM ROCKET."

	para "Un espion de la"
	line "police?"

	para "...Bien. Tu veux"
	line "savoir ce qu'on"
	cont "fait ici?"

	para "Je vais te le"
	line "montrer."

	para "Le #mon le plus"
	line "puissant..."
	done
else
	text "Who are you?!"
	line "You aren't part"
	cont "of Team Rocket."

	para "Are you a spy for"
	line "the police?"

	para "…Fine. You want to"
	line "know about Team"
	cont "Rocket's business?"
	cont "I'll show you."

	para "The world's most"
	line "powerful #mon…"
	done
endc

CinnabarLabGiovanniAttackText:
if DEF(_LOCALE_FR)
	text "GIOVANNI: Attaque!"
	done
else
	text "Giovanni: Attack!"
	done
endc

CinnabarLabGiovanniBeatenText:
if DEF(_LOCALE_FR)
	text "GIOVANNI: Quoi?!"
	line "Impossible!"
	done
else
	text "Giovanni: What?!"
	line "Impossible!"
	done
endc

CinnabarLabGiovanniAfterText:
if DEF(_LOCALE_FR)
	text "GIOVANNI: Comment"
	line "un gamin comme toi"

	para "a pu battre le"
	line "#mon parfait?"

	para "Je l'ai créé pour"
	line "me servir!"

	para "Il ne devrait pas"
	line "être si nul!"
	done
else
	text "Giovanni: How was"
	line "a kid like you"

	para "able to beat the"
	line "perfect #mon?"

	para "It was created to"
	line "fight for me!"

	para "It shouldn't be"
	line "this useless!"
	done
endc

CinnabarLabMewtwoText:
if DEF(_LOCALE_FR)
	text "???: Myuu!"
	done
else
	text "???: Myuu!"
	done
endc

CinnabarLabGiovanniStopText:
if DEF(_LOCALE_FR)
	text "GIOVANNI: Stop!"
	done
else
	text "Giovanni: Stop"
	line "this now!"
	done
endc

CinnabarLabCelebiText:
if DEF(_LOCALE_FR)
	text "CELEBI: Biii!"
	done
else
	text "Celebi: Biii!"
	done
endc
