Route11Gate2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  7,  7, ROUTE_11_GATE_2F, -1

	def_coord_events

	def_bg_events
	bg_event  1,  2, BGEVENT_UP, Route11Gate2FBinoculars1
	bg_event  6,  2, BGEVENT_UP, Route11Gate2FBinoculars2

	def_object_events

Route11Gate2FBinoculars1:
	jumptext Route11Gate2FBinoculars1Text

Route11Gate2FBinoculars2:
	jumptext Route11Gate2FBinoculars2Text

Route11Gate2FBinoculars1Text:
if DEF(_LOCALE_FR)
	text "Tu regardes dans"
	line "les jumelles."

	para "C'est superbe!"
	done
else
	text "Looked into the"
	line "binoculars."

	para "It's a beautiful"
	line "view!"
	done
endc

Route11Gate2FBinoculars2Text:
if DEF(_LOCALE_FR)
	text "Tu regardes dans"
	line "les jumelles."

	para "Le seul moyen"
	line "d'aller de"

	para "AZURIA à"
	line "LAVANVILLE,"

	para "c'est la"
	line "GROTTE."
	done
else
	text "Looked into the"
	line "binoculars."

	para "The only way to"
	line "get from Cerulean"
	cont "City to Lavender"

	para "is by way of the"
	line "Rock Tunnel."
	done
endc
