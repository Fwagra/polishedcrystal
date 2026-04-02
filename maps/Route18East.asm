Route18East_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  0,  6, ROUTE_18_GATE, 3
	warp_event  0,  7, ROUTE_18_GATE, 4

	def_coord_events

	def_bg_events
	bg_event  7,  5, BGEVENT_JUMPTEXT, Route18SignText

	def_object_events
	object_event  7, 12, SPRITE_BIRD_KEEPER, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBird_keeperBoris, -1
	object_event 11,  6, SPRITE_BIRD_KEEPER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBird_keeperBob, -1

GenericTrainerBird_keeperBoris:
	generictrainer BIRD_KEEPER, BORIS, EVENT_BEAT_BIRD_KEEPER_BORIS, Bird_keeperBorisSeenText, Bird_keeperBorisBeatenText

if DEF(_LOCALE_FR)
	text "Ca te fait quoi"
	line "d'être balèze?"
	cont "C'est sympa?"
	done
else
	text "Since you're so"
	line "strong, it must be"
	cont "fun to battle."
	done
endc

GenericTrainerBird_keeperBob:
	generictrainer BIRD_KEEPER, BOB, EVENT_BEAT_BIRD_KEEPER_BOB, Bird_keeperBobSeenText, Bird_keeperBobBeatenText

if DEF(_LOCALE_FR)
	text "Sans BICYCLETTE,"
	line "tu ne peux pas"

	para "emprunter ce"
	line "raccourci."
	done
else
	text "If you don't have"
	line "a Bicycle, you're"

	para "not allowed to use"
	line "the shortcut."
	done
endc

Bird_keeperBorisSeenText:
if DEF(_LOCALE_FR)
	text "Cherche les #-"
	line "MON dans les"

	para "hautes herbes."
	line "Tu le savais déjà?"
	done
else
	text "If you're looking"
	line "for #mon, you"

	para "have to look in"
	line "the tall grass."
	done
endc

Bird_keeperBorisBeatenText:
if DEF(_LOCALE_FR)
	text "Aïe!"
	done
else
	text "Ayieee!"
	done
endc

Bird_keeperBobSeenText:
if DEF(_LOCALE_FR)
	text "La PISTE CYCLABLE"
	line "est un raccourci"
	cont "vers CELADOPOLE."
	done
else
	text "Cycling Road is a"
	line "quick shortcut to"
	cont "Celadon."
	done
endc

Bird_keeperBobBeatenText:
if DEF(_LOCALE_FR)
	text "...Fouiii!"
	done
else
	text "…Whew!"
	done
endc

Route18SignText:
if DEF(_LOCALE_FR)
	text "ROUTE 18"

	para "CELADOPOLE -"
	line "PARMANIE"
	done
else
	text "Route 18"

	para "Celadon City -"
	line "Fuchsia City"
	done
endc
