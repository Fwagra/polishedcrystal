Route5UndergroundEntrance_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  7, ROUTE_5, 1
	warp_event  4,  7, ROUTE_5, 1
	warp_event  4,  4, UNDERGROUND, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_TEACHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, Route5UndergroundPathEntranceTeacherText, -1

Route5UndergroundPathEntranceTeacherText:
if DEF(_LOCALE_FR)
	text "Beaucoup de villes"
	line "de Johto sont de"
	cont "vrais tresors"

	para "historiques."
	line "J'aimerais tant"
	cont "les visiter!"
else
	text "Many cities in"
	line "Johto have long"

	para "histories. I'd"
	line "love to visit!"
endc
	done
