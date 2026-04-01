SafariZoneWest_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 22,  2, SAFARI_ZONE_NORTH, 8
	warp_event 23,  2, SAFARI_ZONE_NORTH, 9
	warp_event 28,  2, SAFARI_ZONE_NORTH, 3
	warp_event 29,  2, SAFARI_ZONE_NORTH, 4
	warp_event 31, 24, SAFARI_ZONE_HUB, 5
	warp_event 31, 25, SAFARI_ZONE_HUB, 6
	warp_event 13, 13, SAFARI_ZONE_WEST_REST_HOUSE_1, 1
	warp_event  5,  5, SAFARI_ZONE_WEST_REST_HOUSE_2, 1

	def_coord_events

	def_bg_events
	bg_event 26, 24, BGEVENT_JUMPTEXT, SafariZoneWestAreaSignText
	bg_event 14, 14, BGEVENT_JUMPTEXT, SafariZoneWestRestHouseSignText
	bg_event 28,  6, BGEVENT_JUMPTEXT, SafariZoneWestTrainerTips1SignText
	bg_event 19,  5, BGEVENT_JUMPTEXT, SafariZoneWestTrainerTips2SignText
	bg_event 13,  6, BGEVENT_ITEM + NUGGET, EVENT_SAFARI_ZONE_WEST_HIDDEN_NUGGET

	def_object_events
	object_event 22, 23, SPRITE_LASS, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerLassDuplica, -1
	object_event 23, 12, SPRITE_CAMPER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerCamperAmos, -1
	object_event 12, 19, SPRITE_TAMER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerTamerBrett, -1
	itemball_event 14,  9, MAX_REVIVE, 1, EVENT_SAFARI_ZONE_WEST_MAX_REVIVE

GenericTrainerLassDuplica:
	generictrainer LASS, DUPLICA, EVENT_BEAT_LASS_DUPLICA, LassDuplicaSeenText, LassDuplicaBeatenText

if DEF(_LOCALE_FR)
	text "Je suis très forte"
	line "en imitations!"

	para "Un jour, je serai"
	line "dresseuse à"
	cont "Parmanie,"

	para "et j'imiterai"
	line "Jasmine."
	done
else
	text "I'm really good at"
	line "impressions!"

	para "Someday I'll"
	line "become"
	line "a Fuchsia Gym"

	para "Trainer and mimic"
	line "Janine."
	done
endc

GenericTrainerCamperAmos:
	generictrainer CAMPER, AMOS, EVENT_BEAT_CAMPER_AMOS, CamperAmosSeenText, CamperAmosBeatenText

if DEF(_LOCALE_FR)
	text "Je cherche des"
	line "nouveaux #mon"
	cont "partout."
	done
else
	text "I'll search far"
	line "and wide for new"
	cont "#mon."
	done
endc

GenericTrainerTamerBrett:
	generictrainer TAMER, BRETT, EVENT_BEAT_TAMER_BRETT, TamerBrettSeenText, TamerBrettBeatenText

if DEF(_LOCALE_FR)
	text "Il faut diriger"
	line "ses #mon avec"
	cont "assurance."

	para "Les Badges aident."
	done
else
	text "You have to com-"
	line "mand #mon with"
	cont "confidence."

	para "Earning Badges can"
	line "help with that."
	done
endc

LassDuplicaSeenText:
if DEF(_LOCALE_FR)
	text "Pour bien utiliser"
	line "Métamorph,"
	cont "il faut"
	cont "connaître tous"
	cont "les #mon!"
	done
else
	text "To truly use"
	line "Ditto, you must"
	cont "know all #mon!"
	done
endc

LassDuplicaBeatenText:
if DEF(_LOCALE_FR)
	text "J'ai encore"
	line "beaucoup"
	cont "a apprendre."
	done
else
	text "I've got a lot"
	line "to learn."
	done
endc

CamperAmosSeenText:
if DEF(_LOCALE_FR)
	text "Plein de #mon"
	line "vivent au Parc"
	cont "Safari."

	para "Je suis là pour"
	line "tous les attraper!"
	done
else
	text "Plenty of #mon"
	line "live in the Safari"
	cont "Zone."

	para "I'm here to catch"
	line "'em all!"
	done
endc

CamperAmosBeatenText:
if DEF(_LOCALE_FR)
	text "J'ai perdu, car"
	line "je dois"
	cont "les entraîner!"
	done
else
	text "I lost 'cause I"
	line "have to train"
	cont "them!"
	done
endc

TamerBrettSeenText:
if DEF(_LOCALE_FR)
	text "Tu sais gérer des"
	line "#mon agressifs?"
	done
else
	text "Do you know how to"
	line "handle aggressive"
	cont "#mon?"
	done
endc

TamerBrettBeatenText:
if DEF(_LOCALE_FR)
	text "Oui, toi!"
	done
else
	text "Yeah, you do!"
	done
endc

SafariZoneWestAreaSignText:
if DEF(_LOCALE_FR)
	text "Parc Safari"
	line "Zone Ouest"
	done
else
	text "Safari Zone"
	line "West Area"
	done
endc

SafariZoneWestRestHouseSignText:
if DEF(_LOCALE_FR)
	text "Maison Repos"
	done
else
	text "Rest House"
	done
endc

SafariZoneWestTrainerTips1SignText:
if DEF(_LOCALE_FR)
	text "ASTUCE"

	para "Les #mon Feu"
	line "ne brûlent pas,"

	para "ceux Electrik ne"
	line "sont pas"
	cont "paralisés,"

	para "et ceux Glace ne"
	line "gèlent pas."
	done
else
	text "Trainer Tips"

	para "Fire-type #mon"
	line "cannot be burnt,"

	para "Electric types"
	line "can't be"
	cont "paralyzed,"

	para "and Ice types"
	line "can't"
	line "be frozen solid."
	done
endc

SafariZoneWestTrainerTips2SignText:
if DEF(_LOCALE_FR)
	text "ASTUCE"

	para "Dans une tempête,"
	line "les #mon Roche"

	para "boostent leur"
	line "Déf.Spé."
	done
else
	text "Trainer Tips"

	para "In a sandstorm,"
	line "Rock-type #mon"

	para "get a boost to"
	line "their Sp.Def."
	done
endc
