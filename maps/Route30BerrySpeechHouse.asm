Route30BerrySpeechHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, ROUTE_30, 1
	warp_event  3,  7, ROUTE_30, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route30BerryHousePokefanMScript, -1

Route30BerryHousePokefanMScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_MULCH_FROM_ROUTE_30_HOUSE
	iftruefwd .GotMulch
	writetext Route30BerrySpeechHouseMonEatBerriesText
	promptbutton
	verbosegiveitem MULCH
	iffalse_endtext
	setevent EVENT_GOT_MULCH_FROM_ROUTE_30_HOUSE
.GotMulch:
	jumpthisopenedtext

if DEF(_LOCALE_FR)
	text "J'achète du Mulch"
	line "de qualité à"
	cont "Doublonville."
	done
else
	text "I buy top-quality"
	line "Mulch in Goldenrod"
	cont "City."
	done
endc

Route30BerrySpeechHouseMonEatBerriesText:
if DEF(_LOCALE_FR)
	text "Tu sais, les"
	line "#mon"
	line "mangent des Baies."

	para "Ca repousse lent-"
	line "ement après la"
	cont "cueillette,"

	para "mais le Mulch sur"
	line "la terre accélère"
	cont "tout ca!"

	para "Tiens. Je t'en"
	line "donne un peu!"
	done
else
	text "You know, #mon"
	line "eat Berries."

	para "They take time to"
	line "grow back when"
	cont "they're picked,"

	para "but using Mulch"
	line "on the soil really"
	cont "speeds that up!"

	para "Here. I'll share"
	line "some with you!"
	done
endc
