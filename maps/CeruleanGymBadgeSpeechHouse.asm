CeruleanGymBadgeSpeechHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, CERULEAN_CITY, 1
	warp_event  3,  7, CERULEAN_CITY, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CeruleanGymBadgeSpeechHouseGentlemanScript, -1

CeruleanGymBadgeSpeechHouseGentlemanScript:
	checkevent EVENT_INTRODUCED_TO_CERULEAN_MAN
	iftrue_jumptextfaceplayer .Text2
	faceplayer
	opentext
	writetext .Text1
	waitbutton
	setevent EVENT_INTRODUCED_TO_CERULEAN_MAN
	jumpthisopenedtext

.Text2:
if DEF(_LOCALE_FR)
	text "Tu collectionnes"
	line "les Badges de"
	cont "Kanto?"

	para "Bonne chance!"
	done
else
	text "You're collecting"
	line "Kanto Gym Badges?"
	cont "Good luck!"
	done
endc

.Text1:
if DEF(_LOCALE_FR)
	text "On a eu une"
	line "vague de vols"

	para "il y a quelques"
	line "années, alors"

	para "tout le monde"
	line "est prudent."

	para "Qui es-tu?"
	done
else
	text "We had a spate of"
	line "burglaries a few"

	para "years back, so now"
	line "everyone's super"
	cont "cautious."

	para "Who are you?"
	done
endc
