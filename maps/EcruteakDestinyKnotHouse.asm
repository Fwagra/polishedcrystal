EcruteakDestinyKnotHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  7, ECRUTEAK_CITY, 17
	warp_event  4,  7, ECRUTEAK_CITY, 17

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_JUMPSTD, radio2

	def_object_events
	object_event  5,  4, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakDestinyKnotHouseCooltrainerFScript, -1
	object_event  2,  3, SPRITE_RICH_BOY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, trade, NPC_TRADE_HARI, -1

EcruteakDestinyKnotHouseCooltrainerFScript:
	checkevent EVENT_GOT_DESTINY_KNOT_FROM_ECRUTEAK
	iftrue_jumptextfaceplayer .Text4
	faceplayer
	opentext
	writetext .Text1
	promptbutton
	special SpecialBeastsCheck
	iffalse_jumpopenedtext .Text2
	special SpecialBirdsCheck
	iffalse_jumpopenedtext .Text2
	special SpecialDuoCheck
	iffalse_jumpopenedtext .Text2
	writetext .Text3
	verbosegiveitem DESTINY_KNOT
	iffalse_endtext
	setevent EVENT_GOT_DESTINY_KNOT_FROM_ECRUTEAK
	jumpthisopenedtext

.Text4:
if DEF(_LOCALE_FR)
	text "Le fil rouge du"
	line "destin te lie aux"

	para "#mon"
	line "légendaires…"

	para "Tu serais pas"
	line "l'Elu?"
	done
else
	text "The red string of"
	line "fate ties you to"

	para "the legendary"
	line "#mon…"

	para "Are you some kind"
	line "of Chosen One?"
	done
endc

.Text1:
if DEF(_LOCALE_FR)
	text "Deux oiseaux puis-"
	line "sants de Johto,"

	para "chacun gardant un"
	line "trio de #mon"
	cont "légendaires."

	para "Des légendes dans"
	line "la légende…"
	done
else
	text "Two mighty bird"
	line "#mon of Johto,"

	para "each guarding a"
	line "trio of legendary"
	cont "#mon."

	para "Legends within"
	line "legends…"
	done
endc

.Text2:
if DEF(_LOCALE_FR)
	text "Et si un dresseur"
	line "les capturait"
	cont "tous?"

	para "Quel destin impro-"
	line "bable!"
	done
else
	text "What if a trainer"
	line "were to catch all"
	cont "of them?"

	para "What an unlikely"
	line "destiny!"
	done
endc

.Text3:
if DEF(_LOCALE_FR)
	text "Quoi? Tu les as"
	line "vus et"
	cont "capturés?!"

	para "Montre ton"
	line "#dex…"
	line "Waouh!"

	para "C'était ton"
	line "destin."

	para "Tiens, prends ça."
	done
else
	text "What? You've seen"
	line "them? And you even"
	cont "caught them?!"

	para "Let me see your"
	line "#dex… Wow!"

	para "It must have been"
	line "your destiny."

	para "Here, you should"
	line "have this."
	done
endc
