SafariZoneWestRestHouse2_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, SAFARI_ZONE_WEST, 8
	warp_event  3,  7, SAFARI_ZONE_WEST, 8

	def_coord_events

	def_bg_events
	bg_event  4,  1, BGEVENT_READ, PokemonJournalKogaScript
	bg_event  5,  1, BGEVENT_READ, PokemonJournalKogaScript
	bg_event  6,  1, BGEVENT_READ, PokemonJournalKogaScript
	bg_event  7,  1, BGEVENT_READ, PokemonJournalKogaScript

	def_object_events
	object_event  3,  4, SPRITE_FLANNERY, SPRITEMOVEDATA_WANDER, 1, 1, -1, 0, OBJECTTYPE_SCRIPT, 0, SafariZoneWestRestHouse2FlanneryScript, -1

	object_const_def
	const SAFARIZONEWESTRESTHOUSE2_FLANNERY

SafariZoneWestRestHouse2FlanneryScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_FLANNERY
	iftruefwd .Beaten
	checkevent EVENT_INTRODUCED_FLANNERY
	iftruefwd .Introduced
	writetext .IntroText
	sjumpfwd .Question
.Introduced
	writetext .RematchText
.Question
	yesorno
	iffalsefwd .Refused
	writetext .SeenText
	waitbutton
	closetext
	winlosstext .BeatenText, 0
	setlasttalked SAFARIZONEWESTRESTHOUSE2_FLANNERY
	checkevent EVENT_BEAT_ELITE_FOUR_AGAIN
	iftruefwd .Rematch
	loadtrainer FLANNERY, 1
	sjumpfwd .StartBattle
.Rematch
	loadtrainer FLANNERY, 2
.StartBattle
	startbattle
	reloadmapafterbattle
	setevent EVENT_INTRODUCED_FLANNERY
	setevent EVENT_BEAT_FLANNERY
	opentext
.Beaten:
	jumpopenedtext .AfterText

.Refused:
	jumpopenedtext .RefusedText

.IntroText:
if DEF(_LOCALE_FR)
	text "Salut!"

	para "Cool de croiser"
	line "un autre explora-"
	cont "teur ici!"

	para "Je suis Flannery."

	para "Je viens de Hoenn,"
	line "j'aime l'humidité"

	para "et les sources"
	line "chaudes."

	para "La Zone Safari,"
	line "c'est comme chez"

	para "moi! On échange"
	line "des attaques"

	para "brûlantes en"
	line "combat!"
	done
else
	text "Hi there!"

	para "Good to see some-"
	line "one else exploring"
	cont "this place!"

	para "I am Flannery."

	para "I'm from the Hoenn"
	line "region, so I like"

	para "humidity and hot"
	line "springs."

	para "The Safari Zone"
	line "feels like home!"

	para "Let's exchange"
	line "superhot moves in"
	cont "a battle!"
	done
endc

.RematchText:
if DEF(_LOCALE_FR)
	text "Salut,"
	line "<PLAYER>!"

	para "Contente de te"
	line "revoir!"

	para "Perdre ne va pas"
	line "m'empêcher de"

	para "sourire."

	para "On refait un duel"
	line "de moves brûlants!"
	done
else
	text "Hi there,"
	line "<PLAYER>!"

	para "Good to see you"
	line "again!"

	para "Losing a match"
	line "isn't going to"
	cont "deflate me."

	para "Let's exchange"
	line "superhot moves in"
	cont "another battle!"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Je vais te montrer"
	line "les moves torrides"

	para "que j'ai rodés"
	line "près d'un volcan!"
	done
else
	text "I'm going to demo-"
	line "nstrate the hot"

	para "moves I honed"
	line "close to a vol-"
	cont "cano!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Pfiou! J'étais"
	line "près d'exploser!"
	done
else
	text "Whew! On the verge"
	line "of eruption!"
	done
endc

.AfterText:
if DEF(_LOCALE_FR)
	text "J'ai perdu, mais"
	line "je suis comblée."

	para "Rarement un combat"
	line "aussi torride!"

	para "On remet ça une"
	line "autre fois!"
	done
else
	text "I lost the match,"
	line "but I'm completely"
	cont "satisfied."

	para "It's not often I"
	line "get to enjoy a"

	para "battle this"
	line "heated."

	para "Let's have another"
	line "one like this"
	cont "sometime!"
	done
endc

.RefusedText:
if DEF(_LOCALE_FR)
	text "OK… Euh…"
	line "Reviens si tu veux"
	cont "te battre!"
	done
else
	text "OK then… Uh…"
	line "Don't be shy about"
	cont "it if you return!"
	done
endc
