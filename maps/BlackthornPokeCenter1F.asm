BlackthornPokeCenter1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  7, BLACKTHORN_CITY, 5
	warp_event  6,  7, BLACKTHORN_CITY, 5
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events
	bg_event 10,  1, BGEVENT_READ, PokemonJournalClairScript

	def_object_events
	pc_nurse_event  5, 1
	object_event  8,  1, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, ProfOaksAide4Script, -1
	object_event 11,  6, SPRITE_COOL_DUDE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumpstd, happinesschecknpc, -1
	object_event  8,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, BlackthornPokeCenter1FGentlemanText, -1
	object_event  1,  4, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, BlackthornPokeCenter1FTwinText, -1

PokemonJournalClairScript:
	setflag ENGINE_READ_CLAIR_JOURNAL
	jumpthistext

if DEF(_LOCALE_FR)
	text "Journal #mon"

	para "Dossier special:"
	line "Sandra!"

	para "La tenue bleue"
	line "de Sandra"

	para "fait fureur"
	line "dans la mode."
	done
else
	text "#mon Journal"

	para "Special Feature:"
	line "Leader Clair!"

	para "Clair's bright blue"
	line "outfit and cape"

	para "have made her the"
	line "latest name in"
	cont "fashion."
	done
endc

ProfOaksAide4Script:
	checkevent EVENT_GOT_LUCKY_EGG_FROM_PROF_OAKS_AIDE
	iftrue_jumptextfaceplayer .ExplainText
	faceplayer
	opentext
	writetext .HiText
	waitbutton
	setval16 60
	special CountCaught
	iftruefwd .HereYouGo
	jumpthisopenedtext

	text "Let's see…"
	line "Uh-oh! You've only"

	para "caught "
	text_decimal wTempDexOwn, 2, 3
	text " kinds"
	line "of #mon."

	para "Come back and see"
	line "me when you catch"
	cont "60 kinds."
	done

.HereYouGo
	writetext .HereYouGoText
	waitbutton
	verbosegiveitem LUCKY_EGG
	iffalse_jumpopenedtext .NoRoomText
	setevent EVENT_GOT_LUCKY_EGG_FROM_PROF_OAKS_AIDE
	jumpthisopenedtext

.ExplainText:
if DEF(_LOCALE_FR)
	text "Cet Oeuf Chance"
	line "aide un #mon"

	para "a gagner plus"
	line "d'experience."

	para "Utilise-le"
	line "pour le"
	cont "#dex!"
	done
else
	text "That Lucky Egg"
	line "helps a #mon"

	para "gain more exper-"
	line "ience than usual."

	para "Use it to com-"
	line "plete the #dex!"
	done
endc

.HiText:
if DEF(_LOCALE_FR)
	text "Salut! Je suis"
	line "l'aide de"
	cont "Pr.Chen."

	para "Si tu as 60"
	line "especes,"

	para "je dois te"
	line "donner un"
	cont "objet."

	para "Alors, <PLAYER>,"
	line "tu as"
	cont "60 #mon?"
	done
else
	text "Hello there! I'm"
	line "Prof.Oak's aide."

	para "If you caught 60"
	line "kinds of #mon,"

	para "I'm supposed to"
	line "give you an item."

	para "So, <PLAYER>,"
	line "have you caught"

	para "at least 60 kinds"
	line "of #mon?"
	done
endc

.HereYouGoText:
	text "Let's see…"
	line "Great job! You've"

	para "caught "
	text_decimal wTempDexOwn, 2, 3
	text " kinds"
	line "of #mon."

	para "Congratulations!"
	line "Here you go!"
	done

.NoRoomText:
if DEF(_LOCALE_FR)
	text "Oh! Tu n'as"
	line "plus de"
	cont "place."
	done
else
	text "Oh! I see you"
	line "don't have any"
	cont "room for this."
	done
endc

BlackthornPokeCenter1FGentlemanText:
if DEF(_LOCALE_FR)
	text "Au fond du"
	line "Plateau"
	cont "Indigo,"

	para "il y a la"
	line "Ligue #mon."

	para "Les meilleurs"
	line "s'y reunissent."
	done
else
	text "Deep inside far-"
	line "off Indigo Plateau"

	para "is the #mon"
	line "League."

	para "I hear the best"
	line "trainers gather"

	para "there from around"
	line "the country."
	done
endc

BlackthornPokeCenter1FTwinText:
if DEF(_LOCALE_FR)
	text "Je devais"
	line "apprendre"
	cont "un coup."

	para "Du coup, j'ai"
	line "vu l'Effaceur"
	cont "de Capacite."

	para "Pour oublier"
	line "une CS."
	done
else
	text "There was this"
	line "move I just had"

	para "to teach my #-"
	line "mon."

	para "So I got the Move"
	line "Deleter to make it"
	cont "forget an HM move."
	done
endc
