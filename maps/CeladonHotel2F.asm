CeladonHotel2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 16,  0, CELADON_HOTEL_1F, 3
	warp_event  4,  0, CELADON_HOTEL_ROOM_1, 1
	warp_event  8,  0, CELADON_HOTEL_ROOM_2, 1
	warp_event 12,  0, CELADON_HOTEL_ROOM_3, 1

	def_coord_events

	def_bg_events
	bg_event  5,  0, BGEVENT_JUMPTEXT, CeladonHotel2FRoom1Text
	bg_event  9,  0, BGEVENT_JUMPTEXT, CeladonHotel2FRoom2Text
	bg_event 13,  0, BGEVENT_JUMPTEXT, CeladonHotel2FRoom3Text

	def_object_events
	object_event 11,  2, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonHotel2FTeacherText, -1

CeladonHotel2FTeacherText:
if DEF(_LOCALE_FR)
	text "Je vois mon fils"
	line "a l'universite en"

	para "surprise!"
	line "J'espere ne pas"

	para "l'embarrasser…"
	done
else
	text "I'm on a surprise"
	line "visit to see my"
	cont "son at university!"

	para "Hopefully he isn't"
	line "too embarrassed…"
	done
endc

CeladonHotel2FRoom1Text:
if DEF(_LOCALE_FR)
	text "Chambre 1"
	done
else
	text "Room 1"
	done
endc

CeladonHotel2FRoom2Text:
if DEF(_LOCALE_FR)
	text "Chambre 2"
	done
else
	text "Room 2"
	done
endc

CeladonHotel2FRoom3Text:
if DEF(_LOCALE_FR)
	text "Chambre 3"
	done
else
	text "Room 3"
	done
endc
