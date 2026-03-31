IndigoPlateau_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, IndigoPlateauFlyPoint

	def_warp_events
	warp_event 11,  5, INDIGO_PLATEAU_POKECENTER_1F, 1
	warp_event 12,  5, INDIGO_PLATEAU_POKECENTER_1F, 2

	def_coord_events

	def_bg_events
	bg_event 13,  7, BGEVENT_JUMPTEXT, IndigoPlateauSignText

	def_object_events

IndigoPlateauFlyPoint:
	setflag ENGINE_FLYPOINT_INDIGO_PLATEAU
	endcallback

IndigoPlateauSignText:
if DEF(_LOCALE_FR)
	text "Plateau Indigo"

	para "Le sommet de la"
	line "carrière de"
	cont "Dresseur!"

	para "QG de la"
	line "Ligue Pokémon"
	done
else
	text "Indigo Plateau"

	para "The Ultimate Goal"
	line "for Trainers!"

	para "#mon League HQ"
	done
endc
