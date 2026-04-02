LyrasHouse1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, NEW_BARK_TOWN, 4
	warp_event  3,  7, NEW_BARK_TOWN, 4
	warp_event  0,  0, LYRAS_HOUSE_2F, 1

	def_coord_events

	def_bg_events
	bg_event 10,  1, BGEVENT_UP, LyrasFridgeScript
	bg_event  8,  1, BGEVENT_JUMPTEXT, LyrasSinkText
	bg_event  9,  1, BGEVENT_JUMPTEXT, LyrasStoveText
	bg_event  5,  1, BGEVENT_UP, LyrasTVScript

	def_object_events
	object_event  2,  3, SPRITE_DAD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, LyrasDadScript, -1

LyrasDadScript:
	faceplayer
	opentext
	checkevent EVENT_LYRA_IN_HER_ROOM
	iffalsefwd .LyraInside
	checkevent EVENT_GOT_SS_TICKET_FROM_ELM
	iftruefwd .LyraTraining
	jumpopenedtext LyrasDadHelpingText

.LyraInside
	jumpopenedtext LyrasDadInsideText

.LyraTraining
	jumpopenedtext LyrasDadTrainingText

LyrasDadInsideText:
if DEF(_LOCALE_FR)
	text "Salut, <PLAYER>!"
	line "Célesta est en"
	cont "haut."

	para "Elle joue avec ses"
	line "#MON, comme"
	cont "d'habitude."
	done
else
	text "Hi, <PLAYER>!"
	line "Lyra is upstairs."

	para "She's playing"
	line "with her #mon"
	cont "as usual."
	done
endc

LyrasDadHelpingText:
if DEF(_LOCALE_FR)
	text "Salut, <PLAYER>!"
	line "Célesta n'est"
	cont "pas là."

	para "Elle aide le pro-"
	line "fesseur."
	done
else
	text "Hi, <PLAYER>!"
	line "Lyra isn't here."

	para "She's been busy"
	line "helping the prof-"
	cont "essor."
	done
endc

LyrasDadTrainingText:
if DEF(_LOCALE_FR)
	text "Salut, <PLAYER>!"
	line "Célesta n'est"
	cont "pas là."

	para "Elle collecte des"
	line "Badges dans tout"
	cont "JOHTO!"
	done
else
	text "Hi, <PLAYER>!"
	line "Lyra isn't here."

	para "She's collecting"
	line "Badges all over"
	cont "Johto!"
	done
endc

LyrasFridgeScript:
	jumpthistext

if DEF(_LOCALE_FR)
	text "Voyons voir ce"
	line "qui se trame"
	cont "dans le frigo..."

	para "De l'EAU FRAICHE"
	line "et de la bonne"
	cont "LIMONADE!"
	done
else
	text "Let's see what's"
	line "in the fridge…"

	para "Fresh Water and"
	line "rice balls!"
	done
endc

LyrasSinkText:
if DEF(_LOCALE_FR)
	text "L'évier est"
	line "impeccable."
	done
else
	text "The sink is spot-"
	line "less."
	done
endc

LyrasStoveText:
if DEF(_LOCALE_FR)
	text "Du curry mijote"
	line "sur le feu."
	done
else
	text "Curry is simmering"
	line "on the stove."
	done
endc

LyrasTVScript:
	jumpthistext

if DEF(_LOCALE_FR)
	text "Un film passe à"
	line "la TV: Une fille"

	para "avec des couettes"
	line "marche sur une"
	cont "route de briques."

	para "Je ferais mieux"
	line "d'y aller aussi!"
	done
else
	text "There's a movie on"
	line "TV: A girl with"

	para "her hair in pig-"
	line "tails is walking"
	cont "up a brick road."

	para "I'd better get"
	line "going too!"
	done
endc
