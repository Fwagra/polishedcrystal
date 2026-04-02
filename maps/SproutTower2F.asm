SproutTower2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  4, SPROUT_TOWER_1F, 3
	warp_event  0,  6, SPROUT_TOWER_1F, 4
	warp_event 15,  3, SPROUT_TOWER_1F, 5
	warp_event  8, 14, SPROUT_TOWER_3F, 1

	def_coord_events

	def_bg_events
	bg_event 10, 15, BGEVENT_JUMPTEXT, SproutTower2FStatueText

	def_object_events
	object_event 10,  3, SPRITE_SAGE, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerSageNico, -1
	object_event  7, 14, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 5, GenericTrainerSageEdmond, -1
	itemball_event  1,  1, X_ACCURACY, 1, EVENT_SPROUT_TOWER2F_X_ACCURACY

GenericTrainerSageNico:
	generictrainer SAGE, NICO, EVENT_BEAT_SAGE_NICO, SageNicoSeenText, SageNicoBeatenText

if DEF(_LOCALE_FR)
	text "Le pilier flexible"
	line "protège la TOUR de"

	para "tout, même des"
	line "séismes."
	done
else
	text "The flexible pil-"
	line "lar protects the"

	para "tower, even from"
	line "earthquakes."
	done
endc

GenericTrainerSageEdmond:
	generictrainer SAGE, EDMOND, EVENT_BEAT_SAGE_EDMOND, SageEdmondSeenText, SageEdmondBeatenText

if DEF(_LOCALE_FR)
	text "J'ai essayé de"
	line "copier les mouve-"

	para "ments de CHETIFLOR"
	line "en combat..."

	para "Mais je manque"
	line "d'entraînement."
	done
else
	text "I tried to copy"
	line "Bellsprout's"

	para "gentle movements"
	line "for battle…"

	para "But I didn't train"
	line "well enough."
	done
endc

SageNicoSeenText:
if DEF(_LOCALE_FR)
	text "Toutefois, la TOUR"
	line "ne cédera pas même"
	cont "lors d'un grand et"
	cont "rude combat."
	done
else
	text "However hard we"
	line "battle, the tower"
	cont "will stand strong."
	done
endc

SageNicoBeatenText:
if DEF(_LOCALE_FR)
	text "J'ai perdu..."
	line "Je suis faible."
	done
else
	text "I fought hard but"
	line "I'm too weak."
	done
endc

SageEdmondSeenText:
if DEF(_LOCALE_FR)
	text "Volez comme vents"
	line "et feuilles!"
	cont "Combat!"
	done
else
	text "…Sway like leaves"
	line "in the wind…"
	done
endc

SageEdmondBeatenText:
if DEF(_LOCALE_FR)
	text "Oh! Perdu!"
	done
else
	text "Oh, I'm weak!"
	done
endc

SproutTower2FStatueText:
if DEF(_LOCALE_FR)
	text "Une statue de"
	line "#MON..."

	para "Ca a l'air cher"
	line "et raffiné."
	done
else
	text "A #mon statue…"

	para "It looks very"
	line "distinguished."
	done
endc
