Route2NuggetSpeechHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, ROUTE_2_NORTH, 1
	warp_event  3,  7, ROUTE_2_NORTH, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  4, SPRITE_FAT_GUY, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route2NuggetSpeechHouseFisherScript, -1

Route2NuggetSpeechHouseFisherScript:
	checkevent EVENT_GOT_NUGGET_FROM_GUY
	iftrue_jumptextfaceplayer .Text2
	faceplayer
	opentext
	writetext .Text1
	promptbutton
	verbosegiveitem NUGGET
	iffalse_endtext
	setevent EVENT_GOT_NUGGET_FROM_GUY
	jumpthisopenedtext

.Text2:
if DEF(_LOCALE_FR)
	text "C'est une Pépite."

	para "Tu verras, ca vaut"
	line "du pognon!"
	done
else
	text "That's a Nugget."

	para "I can't give you"
	line "any nuggets of"

	para "wisdom, so that'll"
	line "have to do!"
	done
endc

.Text1:
if DEF(_LOCALE_FR)
	text "Hé! J'suis content"
	line "de te voir."

	para "Ca fait longtemps"
	line "qu'on ne m'a pas"
	cont "rendu visite."

	para "Et pour la peine,"
	line "je vais t'offrir"
	cont "un p'tit cadeau."
	done
else
	text "Hi! Wow, I'm glad"
	line "to see you."

	para "You're the first"
	line "visitor I've had"
	cont "in a long time."

	para "I'm super happy!"
	line "Let me give you a"
	cont "little present."
	done
endc
