PewterMuseumOfScience2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  7,  7, PEWTER_MUSEUM_OF_SCIENCE_1F, 5

	def_coord_events

	def_bg_events
	bg_event  3,  6, BGEVENT_READ, Museum2FMoonStoneSignpostScript
	bg_event 11,  2, BGEVENT_JUMPTEXT, Museum2FSpaceShuttleSignpostText
	bg_event  0,  1, BGEVENT_READ, PokemonJournalStevenScript
	bg_event  1,  1, BGEVENT_READ, PokemonJournalStevenScript
	bg_event  4,  1, BGEVENT_READ, PokemonJournalCynthiaScript
	bg_event  5,  1, BGEVENT_READ, PokemonJournalCynthiaScript

	def_object_events
	object_event  7,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GRAY, OBJECTTYPE_COMMAND, jumptextfaceplayer, Museum2FScientistText, -1
	object_event  1,  7, SPRITE_CHILD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, Museum2FChildText, -1
	object_event  2,  7, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, Museum2FTeacherText, -1
	object_event  2,  1, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, Museum2FLassText, -1
	object_event 12,  5, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, Museum2FPokefanMScript, -1

Museum2FPokefanMScript:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_SEISMIC_TOSS_INTRO
	iftruefwd Museum2FTutorSeismicTossScript
	checkunits
	iftruefwd .metric
	writetext Museum2FPokefanMImperialText
	sjumpfwd .ok
.metric
	writetext Museum2FPokefanMMetricText
.ok
	waitbutton
	setevent EVENT_LISTENED_TO_SEISMIC_TOSS_INTRO
Museum2FTutorSeismicTossScript:
	writetext Text_Museum2FTutorSeismicToss
	waitbutton
	checkitem SILVER_LEAF
	iffalsefwd .NoSilverLeaf
	writetext Text_Museum2FTutorQuestion
	yesorno
	iffalsefwd .TutorRefused
	setval SEISMIC_TOSS
	writetext ClearText
	special Special_MoveTutor
	ifequalfwd $0, .TeachMove
.TutorRefused
	jumpopenedtext Text_Museum2FTutorRefused

.NoSilverLeaf
	jumpopenedtext Text_Museum2FTutorNoSilverLeaf

.TeachMove
	takeitem SILVER_LEAF
	jumpopenedtext Text_Museum2FTutorTaught

Museum2FMoonStoneSignpostScript:
	reanchormap
	trainerpic METEORITE
	waitbutton
	closepokepic
	jumptext Museum2FMoonStoneSignpostText

Museum2FScientistText:
if DEF(_LOCALE_FR)
	text "Des météorites ont"
	line "frappé le MONT"
	cont "SELENITE."

	para "On en expose une."

	para "Elle émet une"
	line "étrange énergie…"
	done
else
	text "Meteorites struck"
	line "Mt.Moon near"
	cont "Pewter City."

	para "We have one"
	line "on display."

	para "It seems to emit"
	line "strange energy…"
	done
endc


Museum2FLassText:
if DEF(_LOCALE_FR)
	text "Les #MON issus"
	line "de fossiles sont"

	para "tous de type"
	line "Roche."

	para "C'était déjà le"
	line "cas, ou c'est"

	para "à cause de la"
	line "fossilisation?"
	done
else
	text "#mon revived"
	line "from fossils are"

	para "all part Rock-"
	line "type."

	para "Were they always"
	line "that way, or is it"

	para "a result of the"
	line "fossilization"
	cont "process?"
	done
endc

Museum2FPokefanMImperialText:
if DEF(_LOCALE_FR)
	text "Cette navette"
	line "volait à 160"

	para "miles au-dessus"
	line "de la terre!"

	para "Et tu sais quoi"
	line "d'autre peut"

	para "défier la"
	line "gravité?"

	para "FRAPPE ATLAS,"
	line "évidemment!"
	done
else
	text "This space shuttle"
	line "used to fly 160"

	para "miles above the"
	line "earth, defying"
	cont "gravity!"

	para "You know what else"
	line "can defy gravity?"

	para "Seismic Toss,"
	line "of course!"
	done
endc

Museum2FChildText:
if DEF(_LOCALE_FR)
	text "Des trucs et"
	line "des cailloux et"

	para "des cailloux."
	line "On y va?"
	done
else
	text "Stuff and rocks"
	line "and rocks and"

	para "stuff. Can we go"
	line "already?"
	done
endc

Museum2FTeacherText:
if DEF(_LOCALE_FR)
	text "Pff… Mon fils"
	line "n'aime pas tant"

	para "le musée que je"
	line "l'espérais."

	para "Les enfants, hein?"
	done
else
	text "Sigh… My son isn't"
	line "enjoying the mu-"

	para "seum as much as I"
	line "hoped he would."

	para "Kids, huh?"
	done
endc

Museum2FPokefanMMetricText:
if DEF(_LOCALE_FR)
	text "Cette navette"
	line "volait à 250"

	para "kilomètres"
	line "au-dessus de"
	cont "la terre!"

	para "Et tu sais quoi"
	line "d'autre peut"

	para "défier la"
	line "gravité?"

	para "FRAPPE ATLAS,"
	line "évidemment!"
	done
else
	text "This space shuttle"
	line "used to fly 250"

	para "kilometers above"
	line "the earth, defy-"
	cont "ing gravity!"

	para "You know what else"
	line "can defy gravity?"

	para "Seismic Toss,"
	line "of course!"
	done
endc

Text_Museum2FTutorSeismicToss:
if DEF(_LOCALE_FR)
	text "Je peux enseigner"
	line "FRAPPE ATLAS"

	para "à ton #MON contre"
	line "une Feuille Arg."
	done
else
	text "I can teach your"
	line "#mon to use"

	para "Seismic Toss for"
	line "one Silver Leaf."
	done
endc

Text_Museum2FTutorNoSilverLeaf:
if DEF(_LOCALE_FR)
	text "Tu n'as pas de"
	line "Feuille Arg…"
	done
else
	text "You don't have a"
	line "Silver Leaf!"
	done
endc

Text_Museum2FTutorQuestion:
if DEF(_LOCALE_FR)
	text "Je lui enseigne"
	line "FRAPPE ATLAS?"
	done
else
	text "Should I teach"
	line "your #mon"
	cont "Seismic Toss?"
	done
endc

Text_Museum2FTutorRefused:
if DEF(_LOCALE_FR)
	text "Vendeur: Bon, si"
	line "vous voulez."
	done
else
	text "If you say so."
	done
endc

Text_Museum2FTutorTaught:
if DEF(_LOCALE_FR)
	text "Ton #MON connaît"
	line "FRAPPE ATLAS!"
	done
else
	text "Now your #mon"
	line "knows how to use"
	cont "Seismic Toss!"
	done
endc

Museum2FMoonStoneSignpostText:
	text "Meteorite that"
	line "fell on Mt.Moon."
	cont "(Moon Stone)"
	done

Museum2FSpaceShuttleSignpostText:
	text "Space Shuttle"
	done

PokemonJournalStevenScript:
	setflag ENGINE_READ_STEVEN_JOURNAL
	jumpthistext

if DEF(_LOCALE_FR)
	text "Journal #MON"

	para "Article spécial:"
	line "Steven le"
	cont "collectionneur!"

	para "Steven Stone"
	line "aiderait Devon"
	cont "S.A."

	para "dirigée par son"
	line "père Joseph,"

	para "en cherchant des"
	line "minéraux rares"

	para "et même des"
	line "fossiles."
	done
else
	text "#mon Journal"

	para "Special Feature:"
	line "Rock Hound Steven!"

	para "Steven Stone is"
	line "said to assist"
	cont "Devon Corp, which"

	para "is run by his fa-"
	line "ther Joseph Stone,"

	para "by hunting down"
	line "rare minerals and"
	cont "even fossils."
	done
endc

PokemonJournalCynthiaScript: ; TODO: move to Goldenrod Museum
	setflag ENGINE_READ_CYNTHIA_JOURNAL
	jumpthistext

if DEF(_LOCALE_FR)
	text "Journal #MON"

	para "Article spécial:"
	line "Cynthia la"
	cont "chercheuse!"

	para "Cynthia aurait"
	line "appris bien des"

	para "légendes grâce à"
	line "sa grand-mère à"

	para "Sinnoh."
	done
else
	text "#mon Journal"

	para "Special Feature:"
	line "Researcher"
	cont "Cynthia!"

	para "Cynthia is said to"
	line "have learned many"

	para "legends and myths"
	line "from her grand-"
	cont "mother in Sinnoh."
	done
endc
