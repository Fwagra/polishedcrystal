CliffCave_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5, 19, ROUTE_47, 2
	warp_event  7,  9, ROUTE_47, 3
	warp_event  5, 33, ROUTE_47, 4
	warp_event  3, 17, CLIFF_CAVE, 6
	warp_event  7, 17, CLIFF_CAVE, 7
	warp_event  3,  3, CLIFF_CAVE, 4
	warp_event  7, 27, CLIFF_CAVE, 5

	def_coord_events

	def_bg_events
	bg_event  9,  9, BGEVENT_ITEM + ULTRA_BALL, EVENT_CLIFF_CAVE_HIDDEN_ULTRA_BALL

	def_object_events
	object_event  9,  5, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerGruntM22, EVENT_CLEARED_YELLOW_FOREST
	object_event  5, 33, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CliffCaveRocketText, EVENT_CLEARED_YELLOW_FOREST

GenericTrainerGruntM22:
	generictrainer GRUNTM, 22, EVENT_BEAT_ROCKET_GRUNTM_22, GruntM22SeenText, GruntM22BeatenText

if DEF(_LOCALE_FR)
	text "Pas etonnant que"
	line "tu sois arrive"
	cont "jusqu'ici."
else
	text "No wonder you"
	line "were able to"
	cont "reach here."
endc
	done

GruntM22SeenText:
if DEF(_LOCALE_FR)
	text "Hein! Tu as passe"
	line "les gardes!"
else
	text "Hey! You got past"
	line "the guards!"
endc
	done

GruntM22BeatenText:
if DEF(_LOCALE_FR)
	text "Aie!"
else
	text "Aieee!"
endc
	done

CliffCaveRocketText:
if DEF(_LOCALE_FR)
	text "Ne te promene pas"
	line "pendant une op' de"

	para "la Team Rocket!"
	done
else
	text "Don't just wander"
	line "around during a"
	cont "Team Rocket"
	cont "operation!"
endc
	done
