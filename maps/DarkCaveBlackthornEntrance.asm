DarkCaveBlackthornEntrance_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 23,  3, ROUTE_45, 1
	warp_event  3, 25, DARK_CAVE_VIOLET_ENTRANCE, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  7,  3, SPRITE_PHARMACIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, DarkCaveBlackthornEntrancePharmacistScript, -1
	itemball_event 21, 24, REVIVE, 1, EVENT_DARK_CAVE_BLACKTHORN_ENTRANCE_REVIVE
	tmhmball_event  7, 22, TM_DARK_PULSE, EVENT_DARK_CAVE_BLACKTHORN_ENTRANCE_TM_DARK_PULSE

DarkCaveBlackthornEntrancePharmacistScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_BLACKGLASSES_IN_DARK_CAVE
	iftrue_jumpopenedtext .PharmacistText2
	writetext .PharmacistText1
	promptbutton
	verbosegiveitem BLACKGLASSES
	iffalse_endtext
	setevent EVENT_GOT_BLACKGLASSES_IN_DARK_CAVE
	jumpthisopenedtext

.PharmacistText2:
if DEF(_LOCALE_FR)
	text "Les LUNET.NOIRES"
	line "augmentent la"
	cont "puissance des"
	cont "attaques du type"
	cont "TENEBRES."
	done
else
	text "BlackGlasses ups"
	line "the power of Dark-"
	cont "type moves."
	done
endc

.PharmacistText1:
if DEF(_LOCALE_FR)
	text "Whoa! Tu m'as"
	line "fait peur!"

	para "J'avais mes"
	line "LUNETTES NOIRES..."

	para "J'ai rien vu"
	line "venir."

	para "Ce que je fais"
	line "ici?"

	para "C'est pas trop tes"
	line "oignons, non?"

	para "Voilà une paire de"
	line "LUNETTES NOIRES."
	cont "Oublie que tu m'as"
	cont "vu, OK?"
	done
else
	text "Whoa! You startled"
	line "me there!"

	para "I had my Black-"
	line "Glasses on, so I"

	para "didn't notice you"
	line "at all."

	para "What am I doing"
	line "here?"

	para "Hey, don't you"
	line "worry about it."

	para "I'll give you a"
	line "pair of Black-"
	cont "Glasses, so forget"
	cont "you saw me, OK?"
	done
endc
