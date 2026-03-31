CianwoodPokeCenter1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  7, CIANWOOD_CITY, 3
	warp_event  6,  7, CIANWOOD_CITY, 3
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events
	bg_event 10,  1, BGEVENT_READ, PokemonJournalChuckScript

	def_object_events
	pc_nurse_event  5, 1
	object_event  6,  3, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CianwoodGymGuyScript, -1
	object_event  1,  5, SPRITE_PICNICKER, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CianwoodPokeCenter1FLassText, -1
	object_event  9,  7, SPRITE_JUGGLER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CianwoodPokeCenter1FSuperNerdText, -1
	object_event 11,  5, SPRITE_RICH_BOY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, CianwoodPokeCenter1FRichBoyText, -1

PokemonJournalChuckScript:
	setflag ENGINE_READ_CHUCK_JOURNAL
	jumpthistext

if DEF(_LOCALE_FR)
	text "Journal #mon"

	para "Dossier special:"
	line "Chuck!"

	para "On dit que Chuck"
	line "aime les"
	cont "desserts."

	para "Mais il s'entraine"
	line "sous une"
	cont "cascade."
	done
else
	text "#mon Journal"

	para "Special Feature:"
	line "Leader Chuck!"

	para "Chuck is said to"
	line "really like sweet"
	cont "desserts."

	para "However, he has"
	line "also been seen"

	para "training under a"
	line "heavy waterfall"
	cont "to work them off."
	done
endc

CianwoodGymGuyScript:
	checkevent EVENT_GOT_HM04_STRENGTH
	iffalsefwd .no_strength
	checkevent EVENT_BEAT_CHUCK
	iftrue_jumptextfaceplayer .WinText
	jumptextfaceplayer .Text

.no_strength
	faceplayer
	opentext
	writetext .Text
	waitbutton
	writetext .StrengthText1
	promptbutton
	verbosegivetmhm HM_STRENGTH
	setevent EVENT_GOT_HM04_STRENGTH
	writetext .StrengthText2
	waitendtext

.Text:
if DEF(_LOCALE_FR)
	text "Les Dresseurs"
	line "ici sont"
	cont "brutes."

	para "Si je reste,"
	line "ils vont me"
	cont "chercher."

	para "Conseil: le"
	line "Champion est"

	para "du type Combat."

	para "Bats-le avec"
	line "des #mon"
	cont "Psy."

	para "Bats-les"
	line "avant qu'ils"

	para "frappent fort."

	para "Les rochers"
	line "au milieu?"

	para "Si tu les"
	line "bouges mal,"

	para "tu n'iras pas"
	line "jusqu'au"
	cont "Champion."

	para "Si tu bloques,"
	line "sors."
	done
else
	text "The #mon Gym"
	line "trainers here are"
	cont "macho bullies."

	para "If I stick around,"
	line "they might come"
	cont "after me."

	para "Here's some ad-"
	line "vice: the Gym"

	para "Leader uses the"
	line "Fighting-type."

	para "So you should"
	line "confound him with"
	cont "Psychic #mon."

	para "Wipe out his #-"
	line "mon before they"

	para "can use their"
	line "physical strength."

	para "And those boulders"
	line "in the middle of"
	cont "the Gym?"

	para "If you don't move"
	line "them correctly,"

	para "you won't reach"
	line "the Gym Leader."

	para "If you get stuck,"
	line "go outside."
	done
endc

.StrengthText1:
if DEF(_LOCALE_FR)
	text "Tu ne peux pas"
	line "bouger les"
	cont "rochers?"

	para "Prends ca et"
	line "apprends Force!"
	done
else
	text "You can't move the"
	line "boulders aside?"

	para "Here, use this"
	line "and teach your"
	cont "#mon Strength!"
	done
endc

.StrengthText2:
if DEF(_LOCALE_FR)
	text "Bonne chance!"
	done
else
	text "Good luck!"
	done
endc

.WinText:
if DEF(_LOCALE_FR)
	text "<PLAYER>!"
	line "Tu as gagne!"

	para "Je le voyais!"
	done
else
	text "<PLAYER>! You won!"
	line "I could tell by"
	cont "looking at you!"
	done
endc

CianwoodPokeCenter1FLassText:
if DEF(_LOCALE_FR)
	text "Tu as vu le"
	line "#Maniac?"

	para "Il se vante"
	line "de son"
	cont "#mon rare."
	done
else
	text "Did you meet the"
	line "#Maniac?"

	para "He's always brag-"
	line "ging about his"
	cont "rare #mon."
	done
endc

CianwoodPokeCenter1FSuperNerdText:
if DEF(_LOCALE_FR)
	text "J'adore frimer"
	line "avec mes"
	cont "#mon."

	para "Pas toi?"

	para "Je vais faire"
	line "plein de"
	cont "combats,"

	para "pour les"
	line "montrer!"
	done
else
	text "I love showing off"
	line "the #mon that"

	para "I've raised."
	line "Don't you?"

	para "I'm going to get"
	line "into a bunch of"

	para "battles, and show"
	line "off my #mon!"
	done
endc

CianwoodPokeCenter1FRichBoyText:
if DEF(_LOCALE_FR)
	text "Pas de # Mart"
	line "ici."

	para "On importe"
	line "par la mer."
	done
else
	text "There's no #"
	line "Mart in this town,"

	para "so we have to im-"
	line "port products from"
	cont "across the sea."
	done
endc
