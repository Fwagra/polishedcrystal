Route12North_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 10, 15, ROUTE_12_GATE, 1
	warp_event 11, 15, ROUTE_12_GATE, 2

	def_coord_events

	def_bg_events
	bg_event 13, 13, BGEVENT_JUMPTEXT, FishingSpotSignText

	def_object_events
	object_event  6, 11, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerFisherKyle, -1

GenericTrainerFisherKyle:
	generictrainer FISHER, KYLE, EVENT_BEAT_FISHER_KYLE, FisherKyleSeenText, FisherKyleBeatenText

if DEF(_LOCALE_FR)
	text "La p'tite secousse"
	line "que l'on sent"

	para "quand on ferre un"
	line "#MON..."

	para "C'est la plus"
	line "belle des sensa-"
	cont "tions!!!"
	done
else
	text "The tug you feel"
	line "on the Rod when"

	para "you hook a #-"
	line "mon…"
	done
endc

FisherKyleSeenText:
if DEF(_LOCALE_FR)
	text "Tu t'en souviens?"
	done
else
	text "Do you remember?"
	done
endc

FisherKyleBeatenText:
if DEF(_LOCALE_FR)
	text "Tu t'en souviens?"
	done
else
	text "You do remember?"
	done
endc

FishingSpotSignText:
if DEF(_LOCALE_FR)
	text "COIN PECHE"
	done
else
	text "Fishing Spot"
	done
endc
