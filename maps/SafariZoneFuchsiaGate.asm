SafariZoneFuchsiaGate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  0, SAFARI_ZONE_HUB, 1
	warp_event  5,  0, SAFARI_ZONE_HUB, 2
	warp_event  4,  7, FUCHSIA_CITY, 6
	warp_event  5,  7, FUCHSIA_CITY, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, SafariZoneFuchsiaGateOfficerText, -1

SafariZoneFuchsiaGateOfficerText:
if DEF(_LOCALE_FR)
	text "Salut!"

	para "Le Garde est"
	line "absent, donc pas"

	para "de Safari pour"
	line "l'instant."

	para "Apporte tes"
	line "propres Balls si"

	para "tu veux attraper"
	line "des #mon."
else
	text "Hi there!"

	para "The Warden is"
	line "gone, so we're not"

	para "running the Safari"
	line "Game right now."

	para "You'll have to"
	line "bring your own"

	para "Balls if you want"
	line "to catch any"
	cont "#mon."
endc
	done
