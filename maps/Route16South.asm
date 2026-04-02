Route16South_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, Route16SouthAlwaysOnBikeCallback

	def_warp_events
	warp_event 15, 10, ROUTE_16_17_GATE, 1
	warp_event 15, 11, ROUTE_16_17_GATE, 2

	def_coord_events

	def_bg_events
	bg_event 11,  9, BGEVENT_JUMPTEXT, CyclingRoadSignText

	def_object_events
	object_event 12, 11, SPRITE_OFFICER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OfficerfJamieScript, -1

Route16SouthAlwaysOnBikeCallback:
	setflag ENGINE_ALWAYS_ON_BIKE
	endcallback

OfficerfJamieScript:
	checktime 1 << NITE
	iffalse_jumptextfaceplayer OfficerfJamieDaytimeText
	checkevent EVENT_BEAT_OFFICERF_JAMIE
	iftrue_jumptextfaceplayer OfficerfJamieAfterText
	faceplayer
	opentext
	special SaveMusic
	playmusic MUSIC_OFFICER_ENCOUNTER
	writetext OfficerfJamieSeenText
	waitbutton
	closetext
	winlosstext OfficerfJamieBeatenText, 0
	loadtrainer OFFICERF, JAMIE
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_OFFICERF_JAMIE
	endtext

OfficerfJamieSeenText:
if DEF(_LOCALE_FR)
	text "Hé, toi! Tu cher-"
	line "ches les ennuis?"
	done
else
	text "Hey you! Are you"
	line "causing trouble?"
	done
endc

OfficerfJamieBeatenText:
if DEF(_LOCALE_FR)
	text "Hmph!"
	done
else
	text "Hmph!"
	done
endc

OfficerfJamieAfterText:
if DEF(_LOCALE_FR)
	text "Rouler tard la"
	line "nuit, c'est louche"
	done
else
	text "Riding around late"
	line "at night just"
	cont "looks suspicious."
	done
endc

OfficerfJamieDaytimeText:
if DEF(_LOCALE_FR)
	text "Les Bikers et les"
	line "loubards aiment"

	para "faire des ennuis"
	line "sur cette route."

	para "Ne t'en mêle pas,"
	line "OK?"
	done
else
	text "Bikers and"
	line "Roughnecks like"

	para "to make trouble"
	line "on this road."

	para "Don't you get"
	line "involved, got it?"
	done
endc

CyclingRoadSignText:
if DEF(_LOCALE_FR)
	text "PISTE CYCLABLE"

	para "Une descente"
	line "d'enfer!"
	done
else
	text "Cycling Road"

	para "Downhill coasting"
	line "all the way!"
	done
endc
