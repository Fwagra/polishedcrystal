SilverCavePokeCenter1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  7, SILVER_CAVE_OUTSIDE, 1
	warp_event  6,  7, SILVER_CAVE_OUTSIDE, 1
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events
	bg_event 10,  1, BGEVENT_READ, PokemonJournalLanceScript

	def_object_events
	pc_nurse_event  5, 1
	object_event  9,  4, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 1, 2, -1, 0, OBJECTTYPE_SCRIPT, 0, SilverCavePokeCenterGrampsScript, -1
	object_event  2,  4, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 1, 2, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, SilverCavePokeCenter1FGrannyText, -1

PokemonJournalLanceScript:
	setflag ENGINE_READ_LANCE_JOURNAL
	jumpthistext

if DEF(_LOCALE_FR)
	text "Journal #mon"

	para "Dossier special:"
	line "Peter!"

	para "On dit que Peter"
	line "achete ses"

	para "capes au Centre"
	line "Comm. de"
	cont "Céladopole."
	done
else
	text "#mon Journal"

	para "Special Feature:"
	line "Champion Lance!"

	para "Lance has been"
	line "spotted buying"

	para "his capes at Cel-"
	line "adon Dept.Store."
	done
endc

SilverCavePokeCenterGrampsScript:
	checkevent EVENT_GOT_EXPERT_BELT
	iftrue_jumptextfaceplayer .AfterText
	faceplayer
	opentext
	writetext .GreetingText
	waitbutton
	readvar VAR_PKMN_JOURNALS
	ifequalfwd 0, .ReadNone
	ifequalfwd NUM_POKEMON_JOURNALS, .ReadThemAll
	jumpthisopenedtext

	text "Oh, you've read "
	text_decimal hScriptVar, 1, 2
	line "of them?"

	para "Not bad, but I've"
	line "read all {d:NUM_POKEMON_JOURNALS}!"
	done

.ReadNone:
	jumpthisopenedtext

	text "You haven't read"
	line "any? What a shame."

	para "#mon Centers"
	line "have most of them"
	cont "on their shelves,"

	para "but real fans like"
	line "me track down the"
	cont "rare issues."
	done

.ReadThemAll:
	writetext .ReadAllText
	promptbutton
	verbosegiveitem EXPERT_BELT
	iffalse_endtext
	setevent EVENT_GOT_EXPERT_BELT
	jumpthisopenedtext

.AfterText:
if DEF(_LOCALE_FR)
	text "Cette Ceinture"
	line "n'est pas"
	cont "pour frimer."

	para "Elle booste un"
	line "#mon qui"
	cont "la tient."
	done
else
	text "That Belt's not"
	line "just for show."

	para "It'll power up your"
	line "#mon if they"
	cont "hold it."
	done
endc

.GreetingText:
if DEF(_LOCALE_FR)
	text "Jeune, j'étais"
	line "Dresseur."

	para "Maintenant, je lis"
	line "le Journal"
	cont "#mon."

	para "Tu lis aussi?"
	done
else
	text "In my youth I was"
	line "a talented trainer"
	cont "myself."

	para "Now I just read"
	line "about others in"
	cont "#mon Journal."

	para "Are you a Journal"
	line "reader too?"
	done
endc

.ReadAllText:
if DEF(_LOCALE_FR)
	text "Tu les as tous"
	line "lus?"

	para "Alors tu es"
	line "expert!"

	para "Prends ca,"
	line "fan!"
	done
else
	text "You've read them"
	line "all? Then you're"

	para "a Journal expert"
	line "like me!"

	para "Take this to show"
	line "you're a fan!"
	done
endc

SilverCavePokeCenter1FGrannyText:
if DEF(_LOCALE_FR)
	text "Les Dresseurs qui"
	line "recherchent le"
	cont "pouvoir"

	para "grimpent le"
	line "Mont Argenté"
	cont "malgré ses"

	para "nombreux dangers."

	para "Avec leurs Pokémon"
	line "les plus forts,"

	para "ils pensent"
	line "pouvoir aller"
	cont "partout…"
	done
else
	text "Trainers who seek"
	line "power climb Mt."

	para "Silver despite its"
	line "many dangers…"

	para "With their trusted"
	line "#mon, they must"

	para "feel they can go"
	line "anywhere…"
	done
endc
