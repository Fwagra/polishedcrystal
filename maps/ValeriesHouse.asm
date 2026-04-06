ValeriesHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, SetupValerieAfterMorningWalkScript

	def_warp_events
	warp_event  3,  7, ECRUTEAK_CITY, 12
	warp_event  4,  7, ECRUTEAK_CITY, 12

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_JUMPSTD, radio2

	def_object_events
	object_event  2,  3, SPRITE_VALERIE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, ValeriesHouseValerieText, EVENT_VALERIE_ECRUTEAK_CITY
	object_event  3,  3, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptext, ValeriesHouseRedFairyBookText, EVENT_RED_FAIRY_BOOK
	object_event  3,  3, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptext, ValeriesHouseBlueFairyBookText, EVENT_BLUE_FAIRY_BOOK
	object_event  3,  3, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptext, ValeriesHouseGreenFairyBookText, EVENT_GREEN_FAIRY_BOOK
	object_event  3,  3, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptext, ValeriesHouseBrownFairyBookText, EVENT_BROWN_FAIRY_BOOK
	object_event  3,  3, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptext, ValeriesHouseVioletFairyBookText, EVENT_VIOLET_FAIRY_BOOK
	object_event  3,  3, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_PINK, OBJECTTYPE_COMMAND, jumptext, ValeriesHousePinkFairyBookText, EVENT_PINK_FAIRY_BOOK
	object_event  3,  3, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_YELLOW, OBJECTTYPE_COMMAND, jumptext, ValeriesHouseYellowFairyBookText, EVENT_YELLOW_FAIRY_BOOK

	object_const_def
	const VALERIESHOUSE_VALERIE
	const VALERIESHOUSE_RED_FAIRY_BOOK
	const VALERIESHOUSE_BLUE_FAIRY_BOOK
	const VALERIESHOUSE_GREEN_FAIRY_BOOK
	const VALERIESHOUSE_BROWN_FAIRY_BOOK
	const VALERIESHOUSE_VIOLET_FAIRY_BOOK
	const VALERIESHOUSE_PINK_FAIRY_BOOK
	const VALERIESHOUSE_YELLOW_FAIRY_BOOK

SetupValerieAfterMorningWalkScript:
	checkevent EVENT_FOUGHT_SUICUNE
	iffalsefwd .Disappear
	checkevent EVENT_BEAT_VALERIE
	iffalsefwd .Disappear
	checkflag ENGINE_VALERIE_MORNING_WALK
	iftruefwd .Appear
	checktime 1 << MORN
	iffalsefwd .Appear
.Disappear:
	disappear VALERIESHOUSE_VALERIE
	sjumpfwd SetupFairyBookScript

.Appear
	appear VALERIESHOUSE_VALERIE
	; fallthrough

SetupFairyBookScript:
	disappear VALERIESHOUSE_RED_FAIRY_BOOK
	disappear VALERIESHOUSE_BLUE_FAIRY_BOOK
	disappear VALERIESHOUSE_GREEN_FAIRY_BOOK
	disappear VALERIESHOUSE_BROWN_FAIRY_BOOK
	disappear VALERIESHOUSE_VIOLET_FAIRY_BOOK
	disappear VALERIESHOUSE_PINK_FAIRY_BOOK
	disappear VALERIESHOUSE_YELLOW_FAIRY_BOOK
	readvar VAR_WEEKDAY
	ifequalfwd MONDAY, .Monday
	ifequalfwd TUESDAY, .Tuesday
	ifequalfwd WEDNESDAY, .Wednesday
	ifequalfwd THURSDAY, .Thursday
	ifequalfwd FRIDAY, .Friday
	ifequalfwd SATURDAY, .Saturday
.Sunday
	appear VALERIESHOUSE_PINK_FAIRY_BOOK
	endcallback
.Monday
	appear VALERIESHOUSE_BROWN_FAIRY_BOOK
	endcallback
.Tuesday
	appear VALERIESHOUSE_RED_FAIRY_BOOK
	endcallback
.Wednesday
	appear VALERIESHOUSE_BLUE_FAIRY_BOOK
	endcallback
.Thursday
	appear VALERIESHOUSE_GREEN_FAIRY_BOOK
	endcallback
.Friday
	appear VALERIESHOUSE_YELLOW_FAIRY_BOOK
	endcallback
.Saturday
	appear VALERIESHOUSE_VIOLET_FAIRY_BOOK
	endcallback

ValeriesHouseValerieText:
if DEF(_LOCALE_FR)
	text "Valerie: Mes"
	line "créations mode"

	para "paraissent"
	line "mystiques, tu"

	para "trouves?"

	para "J'ai toujours"
	line "voulu être un"

	para "#mon, tu sais."
	line "C'est ma source"

	para "pour créer."

	para "Pourtant… je ne"
	line "me sens vraiment"

	para "unie aux #mon"
	line "qu'en combat"

	para "désespéré."
	line "Pourquoi, je"

	para "me le demande…"
	done
else
	text "Valerie: My"
	line "fashion designs"

	para "are said to be"
	line "rather mystifying."
	cont "Do you agree with"
	cont "that?"

	para "I've always wanted"
	line "to be a #mon,"
	cont "you see."

	para "That desire is my"
	line "inspiration and"

	para "what I try to"
	line "achieve by"
	cont "designing."

	para "And yet… the only"
	line "time I feel truly"

	para "one with #mon"
	line "is when we are"

	para "embroiled in"
	line "desperate battle."

	para "I wonder why that"
	line "is…"
	done
endc

ValeriesHouseRedFairyBookText:
if DEF(_LOCALE_FR)
	text "Un recueil de"
	line "contes de fées."

	para "Une fille aux"
	line "cheveux très longs"

	para "est enfermée dans"
	line "une tour…"
	done
else
	text "It's a book of"
	line "fairy tales."

	para "A girl with very"
	line "long hair is lock-"
	cont "ed in a tower…"
	done
endc

ValeriesHouseBlueFairyBookText:
if DEF(_LOCALE_FR)
	text "Un recueil de"
	line "contes de fées."

	para "Une belle fille"
	line "parle à une tête"

	para "de cheval…"
	done
else
	text "It's a book of"
	line "fairy tales."

	para "A beautiful girl"
	line "is talking to a"
	cont "horse's head…"
	done
endc

ValeriesHouseGreenFairyBookText:
if DEF(_LOCALE_FR)
	text "Un recueil de"
	line "contes de fées."

	para "Un poisson"
	line "parlant promet"

	para "d'exaucer des"
	line "vœux…"
	done
else
	text "It's a book of"
	line "fairy tales."

	para "A talking fish"
	line "claims that it can"
	cont "grant wishes…"
	done
endc

ValeriesHouseBrownFairyBookText:
if DEF(_LOCALE_FR)
	text "Un recueil de"
	line "contes de fées."

	para "La chaumière d'un"
	line "paysan devient un"

	para "palais du jour au"
	line "lendemain…"
	done
else
	text "It's a book of"
	line "fairy tales."

	para "A peasant's house"
	line "has become a fine"
	cont "palace overnight…"
	done
endc

ValeriesHouseVioletFairyBookText:
if DEF(_LOCALE_FR)
	text "Un recueil de"
	line "contes de fées."

	para "Un chien creuse"
	line "au jardin et"

	para "trouve un trésor"
	line "d'or…"
	done
else
	text "It's a book of"
	line "fairy tales."

	para "A dog digs in the"
	line "garden and finds"
	cont "golden treasure…"
	done
endc

ValeriesHousePinkFairyBookText:
if DEF(_LOCALE_FR)
	text "Un recueil de"
	line "contes de fées."

	para "Une tortue mène"
	line "un homme sous la"

	para "mer…"
	done
else
	text "It's a book of"
	line "fairy tales."

	para "A man is being"
	line "led by a turtle"
	cont "under the sea…"
	done
endc

ValeriesHouseYellowFairyBookText:
if DEF(_LOCALE_FR)
	text "Un recueil de"
	line "contes de fées."

	para "Un pommier d'or"
	line "pousse au sommet"

	para "d'une montagne de"
	line "verre…"
	done
else
	text "It's a book of"
	line "fairy tales."

	para "A golden apple"
	line "tree stands atop"
	cont "a glass mountain…"
	done
endc
