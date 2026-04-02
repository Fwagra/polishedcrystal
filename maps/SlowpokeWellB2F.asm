SlowpokeWellB2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  9, 11, SLOWPOKE_WELL_B1F, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  4, SPRITE_GYM_GUY, SPRITEMOVEDATA_WANDER, 2, 1, -1, 0, OBJECTTYPE_SCRIPT, 1, SlowpokeWellB2FGymGuideScript, -1
	itemball_event 15,  5, DAMP_ROCK, 1, EVENT_SLOWPOKE_WELL_B2F_DAMP_ROCK

SlowpokeWellB2FGymGuideScript:
	checkevent EVENT_GOT_KINGS_ROCK_IN_SLOWPOKE_WELL
	iftrue_jumptextfaceplayer SlowpokeWellB2FGymGuideText_GotKingsRock
	faceplayer
	opentext
	writetext SlowpokeWellB2FGymGuideText
	promptbutton
	verbosegiveitem KINGS_ROCK
	iffalse_endtext
	setevent EVENT_GOT_KINGS_ROCK_IN_SLOWPOKE_WELL
	endtext

SlowpokeWellB2FGymGuideText:
if DEF(_LOCALE_FR)
	text "J'attends de voir"
	line "l'évolution du"
	cont "RAMOLOSS."

	para "En observant j'ai"
	line "fait une nouvelle"
	cont "découverte."

	para "Un RAMOLOSS avec"
	line "une ROCHE ROYALE"

	para "se fait mordre par"
	line "un KOKIYAS."

	para "Tiens! Je vais te"
	line "donner une ROCHE"
	cont "ROYALE."
	done
else
	text "I'm waiting to see"
	line "Slowpoke's moment"
	cont "of evolution."

	para "Through observa-"
	line "tion, I made a new"
	cont "discovery."

	para "A Slowpoke with a"
	line "King's Rock often"

	para "gets bitten by a"
	line "Shellder."

	para "Here, I'll share a"
	line "King's Rock with"
	cont "you."
	done
endc

SlowpokeWellB2FGymGuideText_GotKingsRock:
if DEF(_LOCALE_FR)
	text "Je serai comme"
	line "RAMOLOSS."

	para "Je serai patient"
	line "et j'en verrai un"
	cont "évoluer."
	done
else
	text "I'm going to be"
	line "like Slowpoke."

	para "I'll wait patient-"
	line "ly, so I can see"
	cont "one evolve."
	done
endc
