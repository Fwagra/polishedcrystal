WillsRoom_MapScriptHeader:
	def_scene_scripts
	scene_script WillsRoomEntranceTrigger

	def_callbacks
	callback MAPCALLBACK_TILES, WillsRoomDoorCallback

	def_warp_events
	warp_event  5, 17, INDIGO_PLATEAU_POKECENTER_1F, 4
	warp_event  4,  2, KOGAS_ROOM, 1
	warp_event  5,  2, KOGAS_ROOM, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  7, SPRITE_WILL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, WillScript, -1

WillsRoomEntranceTrigger:
	sdefer .Script
	end

.Script:
	applymovement PLAYER, WalkIntoEliteFourRoomMovement
	reanchormap
	playsound SFX_STRENGTH
	earthquake 80
	changeblock 4, 14, $2a
	refreshmap
	closetext
	setscene $1
	setevent EVENT_WILLS_ROOM_ENTRANCE_CLOSED
	waitsfx
	end

WillsRoomDoorCallback:
	checkevent EVENT_WILLS_ROOM_ENTRANCE_CLOSED
	iffalsefwd .KeepDoorClosed
	changeblock 4, 14, $2a
.KeepDoorClosed:
	checkevent EVENT_WILLS_ROOM_EXIT_OPEN
	iffalsefwd .OpenDoor
	changeblock 4, 2, $16
.OpenDoor:
	endcallback

WillScript:
	readvar VAR_BADGES
	ifequalfwd 16, .Rematch
	checkevent EVENT_BEAT_ELITE_4_WILL
	iftrue_jumptextfaceplayer WillAfterText
	showtextfaceplayer WillSeenText
	winlosstext WillBeatenText, 0
	loadtrainer WILL, 1
	startbattle
	reloadmapafterbattle
	showtext WillAfterText
	sjumpfwd .EndBattle

.Rematch:
	checkevent EVENT_BEAT_ELITE_4_WILL
	iftrue_jumptextfaceplayer WillAfterRematchText
	showtextfaceplayer WillSeenRematchText
	winlosstext WillBeatenText, 0
	loadtrainer WILL, 2
	startbattle
	reloadmapafterbattle
	showtext WillAfterRematchText
.EndBattle:
	playsound SFX_ENTER_DOOR
	changeblock 4, 2, $16
	refreshmap
	setevent EVENT_WILLS_ROOM_EXIT_OPEN
	setevent EVENT_BEAT_ELITE_4_WILL
	waitsfx
	end

if DEF(_LOCALE_FR)
INCLUDE "locale/fr/maps/WillsRoom.asm"
else

WillSeenText:
	text "Welcome to the"
	line "#mon League,"
	cont "<PLAYER>."

	para "Allow me to intro-"
	line "duce myself. I am"
	cont "Will."

	para "I have trained all"
	line "around the world,"

	para "making my Psychic"
	line "#mon powerful."

	para "And, at last, I've"
	line "been accepted into"
	cont "the Elite Four."

	para "I can only keep"
	line "getting better!"

	para "Losing is not an"
	line "option!"
	done

WillBeatenText:
	text "I… I can't…"
	line "believe it…"
	done

WillAfterText:
	text "Even though I was"
	line "defeated, I won't"
	cont "change my course."

	para "I will continue"
	line "battling until I"

	para "stand above all"
	line "trainers!"

	para "Now, <PLAYER>, move"
	line "on and experience"

	para "the true ferocity"
	line "of the Elite Four."
	done

WillSeenRematchText:
	text "So, you have"
	line "finally appeared."

	para "I have observed"
	line "your battle"
	cont "techniques."

	para "I'm ready for you!"

	para "All right."

	para "Prepare for"
	line "battle!"
	done

WillAfterRematchText:
	text "I've expended all"
	line "my power."

	para "I have no regrets"
	line "about losing"
	cont "this way."
	done

endc
