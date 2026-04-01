SafariZoneEast_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2, 24, SAFARI_ZONE_HUB, 3
	warp_event  2, 25, SAFARI_ZONE_HUB, 4
	warp_event  2,  6, SAFARI_ZONE_NORTH, 1
	warp_event  2,  7, SAFARI_ZONE_NORTH, 2
	warp_event 27, 11, SAFARI_ZONE_EAST_REST_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event  6, 24, BGEVENT_JUMPTEXT, SafariZoneEastAreaSignText
	bg_event 28, 12, BGEVENT_JUMPTEXT, SafariZoneEastRestHouseSignText
	bg_event  8,  6, BGEVENT_JUMPTEXT, SafariZoneEastTrainerTipsSignText

	def_object_events
	object_event  9, 11, SPRITE_COWGIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerCowgirlApril, -1
	itemball_event 22, 15, CARBOS, 1, EVENT_SAFARI_ZONE_EAST_CARBOS
	itemball_event  7, 13, SILVERPOWDER, 1, EVENT_SAFARI_ZONE_EAST_SILVERPOWDER
	itemball_event  5,  3, FULL_RESTORE, 1, EVENT_SAFARI_ZONE_EAST_FULL_RESTORE

GenericTrainerCowgirlApril:
	generictrainer COWGIRL, APRIL, EVENT_BEAT_COWGIRL_APRIL, CowgirlAprilSeenText, CowgirlAprilBeatenText

if DEF(_LOCALE_FR)
	text "Parfois, tu verras"
	line "10 fois le même"

	para "#mon d'affilée!"
	done
else
	text "Sometimes you'll"
	line "see 10 of the same"

	para "#mon, all in a"
	line "row!"
	done
endc

CowgirlAprilSeenText:
if DEF(_LOCALE_FR)
	text "Yeehaw!"
	line "Je viens de"
	cont "capturer"
	cont "un troupeau"
	cont "de #mon!"
	done
else
	text "Yeehaw!"
	line "I just caught a"
	cont "whole herd of"
	cont "#mon!"
	done
endc

CowgirlAprilBeatenText:
if DEF(_LOCALE_FR)
	text "Ah, zut!"
	done
else
	text "Well, shoot!"
	done
endc

SafariZoneEastAreaSignText:
if DEF(_LOCALE_FR)
	text "Parc Safari"
	line "Zone Est"
	done
else
	text "Safari Zone"
	line "East Area"
	done
endc

SafariZoneEastRestHouseSignText:
if DEF(_LOCALE_FR)
	text "Maison Repos"
	done
else
	text "Rest House"
	done
endc

SafariZoneEastTrainerTipsSignText:
if DEF(_LOCALE_FR)
	text "ASTUCE"

	para "Cherche des"
	line "#mon"
	line "rares le matin"

	para "ou la nuit!"
	done
else
	text "Trainer Tips"

	para "Search for rare"
	line "#mon at night"
	cont "or in the morning!"
	done
endc
