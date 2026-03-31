ShamoutiPokeCenter1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  7, SHAMOUTI_ISLAND, 1
	warp_event  6,  7, SHAMOUTI_ISLAND, 1
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events
	bg_event 10,  1, BGEVENT_READ, PokemonJournalLoreleiScript

	def_object_events
	object_event  6,  3, SPRITE_IVY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ShamoutiPokeCenter1FIvyScript, EVENT_SHAMOUTI_POKE_CENTER_IVY
	pc_nurse_event  5, 1

	object_const_def
	const SHAMOUTIPOKECENTER1F_IVY

PokemonJournalLoreleiScript:
	setflag ENGINE_READ_LORELEI_JOURNAL
	jumpthistext

if DEF(_LOCALE_FR)
	text "Journal #mon"

	para "Dossier special:"
	line "Olga!"

	para "On dit qu'Olga a"
	line "une collection"

	para "complete de"
	line "Poupées #mon."
	done
else
	text "#mon Journal"

	para "Special Feature:"
	line "Ex-Elite Lorelei!"

	para "Lorelei is said to"
	line "have a complete"

	para "collection of"
	line "#mon dolls."
	done
endc

ShamoutiPokeCenter1FIvyScript:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_IVY_INTRO
	iftruefwd .HeardIntro
	writetext .GreetingText
	waitbutton
	setevent EVENT_LISTENED_TO_IVY_INTRO
.HeardIntro
	writetext .OfferText
	loadmenu .KantoStarterMenuData
	verticalmenu
	closewindow
	ifequalfwd $1, .Bulbasaur
	ifequalfwd $2, .Charmander
	ifequalfwd $3, .Squirtle
	jumpthisopenedtext

	text "Ivy: Hm, I thought"
	line "you'd be happy to"

	para "raise a rare"
	line "#mon…"
	done

.Bulbasaur:
	writetext .ChoseKantoStarterText
	promptbutton
	waitsfx
	givepoke BULBASAUR, PLAIN_FORM, 10, SITRUS_BERRY
	iffalse_jumpopenedtext .NoRoomText
	getmonname BULBASAUR, STRING_BUFFER_3
	setevent EVENT_GOT_BULBASAUR_FROM_IVY
	sjumpfwd .Finish

.Charmander:
	writetext .ChoseKantoStarterText
	promptbutton
	waitsfx
	givepoke CHARMANDER, PLAIN_FORM, 10, SITRUS_BERRY
	iffalse_jumpopenedtext .NoRoomText
	getmonname CHARMANDER, STRING_BUFFER_3
	setevent EVENT_GOT_CHARMANDER_FROM_IVY
	sjumpfwd .Finish

.Squirtle:
	writetext .ChoseKantoStarterText
	promptbutton
	waitsfx
	givepoke SQUIRTLE, PLAIN_FORM, 10, SITRUS_BERRY
	iffalse_jumpopenedtext .NoRoomText
	getmonname SQUIRTLE, STRING_BUFFER_3
	setevent EVENT_GOT_SQUIRTLE_FROM_IVY
.Finish:
	writetext .GoodbyeText
	waitbutton
	closetext
	readvar VAR_FACING
	turnobject PLAYER, DOWN
	ifnotequal UP, .noleftstep
	applyonemovement SHAMOUTIPOKECENTER1F_IVY, step_left
.noleftstep
	applymovement SHAMOUTIPOKECENTER1F_IVY, .DownMovement
	playsound SFX_EXIT_BUILDING
	disappear SHAMOUTIPOKECENTER1F_IVY
	setevent EVENT_GOT_A_POKEMON_FROM_IVY
	checkevent EVENT_BEAT_YELLOW
	iffalsefwd .skip
	clearevent EVENT_INDIGO_PLATEAU_POKECENTER_YELLOW
.skip
	waitsfx
	end

.NoRoomText:
if DEF(_LOCALE_FR)
	text "Zut, pas de"
	line "place"
	cont "dans l'equipe"

	para "ni dans"
	line "les Boites…"
	done
else
	text "Alas, it seems"
	line "there's no room in"
	cont "either your party"
	cont "or your Box…"
	done
endc

.GreetingText:
if DEF(_LOCALE_FR)
	text "Ivy: Oh! Tu es"
	line "<PLAYER>,"
	cont "le Maître!"

	para "Ravie de"
	line "te voir!"

	para "Je suis Ivy,"
	line "Prof #mon."

	para "J'etudie les"
	line "variantes"
	cont "locales."

	para "Certains #mon"
	line "sauvages"

	para "connaissent"
	line "des coups"
	cont "uniques."

	para "Et meme deux"
	line "#mon"

	para "peuvent avoir"
	line "des couleurs"
	cont "different-"
	cont "es…"

	para "Pardon, je"
	line "m'emballe…"
	done
else
	text "Ivy: Oh! You're"
	line "<PLAYER>, the new"
	cont "Champion!"

	para "Pleased to meet"
	line "you!"

	para "I'm Ivy, a #mon"
	line "professor."

	para "I'm studying local"
	line "variation in #-"
	cont "mon phenotypes."

	para "Did you know that"
	line "some wild #mon"

	para "know moves unique"
	line "to their habitat?"

	para "And even two of"
	line "the same #mon"

	para "in one area can"
	line "have different"
	cont "colors…"

	para "Ah, sorry, I get"
	line "carried away some-"
	cont "times."
	done
endc

.OfferText:
if DEF(_LOCALE_FR)
	text "Ivy: Tu vas"
	line "dans une"
	cont "nouvelle"

	para "region…"

	para "Alors je te"
	line "donne aussi"
	cont "un #mon!"

	para "Lequel tu"
	line "veux?"
	done
else
	text "Ivy: So you're"
	line "taking a whole new"

	para "Gym challenge in"
	line "a new region…"

	para "Aha! Why don't I"
	line "give you a new"
	cont "#mon too?"

	para "Which one do you"
	line "want?"
	done
endc

.ChoseKantoStarterText:
if DEF(_LOCALE_FR)
	text "Ivy: Super"
	line "choix!"
	done
else
	text "Ivy: I think"
	line "that's a great"
	cont "#mon too!"
	done
endc

.GoodbyeText:
if DEF(_LOCALE_FR)
	text "Ivy: Le Prof.Orme"
	line "t'a confie"
	cont "un #mon,"

	para "et Pr.Chen"
	line "un #dex."

	para "Je sais que tu"
	line "prendras soin"
	cont "de "
	text_ram wStringBuffer3
	text "."

	para "Je reprends le"
	line "ferry pour"
	cont "Valencia."

	para "Passe le bonjour"
	line "a Pr.Chen!"
	done
else
	text "Ivy: Prof.Elm"
	line "trusted you with"
	cont "a #mon, and"

	para "Prof.Oak gave you"
	line "a #dex, so I"

	para "know you'll take"
	line "good care of that"
	cont ""
	text_ram wStringBuffer3
	text "."

	para "Well, I need to"
	line "take a ferry back"

	para "to my lab on"
	line "Valencia Island."

	para "Say hi to Prof.Oak"
	line "for me!"
	done
endc

.DownMovement:
	step_down
	step_down
	step_down
	step_down
	step_end

.KantoStarterMenuData:
	db MENU_BACKUP_TILES
	menu_coords 0, 2, 13, 11
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 4 ; items
	db "Bulbasaur@"
	db "Charmander@"
	db "Squirtle@"
	db "Cancel@"
