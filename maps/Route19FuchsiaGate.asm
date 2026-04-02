Route19FuchsiaGate_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4,  0, FUCHSIA_CITY, 9
	warp_event  5,  0, FUCHSIA_CITY, 10
	warp_event  4,  7, ROUTE_19, 1
	warp_event  5,  7, ROUTE_19, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route19FuchsiaGateOfficerScript, -1

Route19FuchsiaGateOfficerScript:
	checkevent EVENT_CINNABAR_ROCKS_CLEARED
	iftrue_jumptextfaceplayer Route19FuchsiaGateOfficerText_RocksCleared
	jumpthistextfaceplayer

if DEF(_LOCALE_FR)
	text "Le volcan de"
	line "CRAMOIS'ILE est en"
	cont "éruption."

	para "Il a craché des"
	line "rochers bloquant"
	cont "la ROUTE 19."

	para "Les habitants de"
	line "CRAMOIS'ILE sont-"
	cont "ils en sécurité?"
	done
else
	text "Cinnabar's volcano"
	line "erupted."

	para "It hurled boulders"
	line "that cut off Route"
	cont "19 indefinitely."

	para "I wonder if the"
	line "people of Cinnabar"
	cont "are safe…"
	done
endc

Route19FuchsiaGateOfficerText_RocksCleared:
if DEF(_LOCALE_FR)
	text "Aucun habitant de"
	line "CRAMOIS'ILE n'a"

	para "été blessé pendant"
	line "l'éruption. Cool!"
	done
else
	text "No Cinnabar citi-"
	line "zens were injured"

	para "by the eruption."
	line "That's great!"
	done
endc
