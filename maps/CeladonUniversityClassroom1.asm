CeladonUniversityClassroom1_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2, 11, CELADON_UNIVERSITY_1F, 6
	warp_event  3, 11, CELADON_UNIVERSITY_1F, 6

	def_coord_events

	def_bg_events
	bg_event  2,  0, BGEVENT_JUMPTEXT, CeladonUniversityClassroom1BlackboardText
	bg_event  3,  0, BGEVENT_JUMPTEXT, CeladonUniversityClassroom1BlackboardText
	bg_event  4,  0, BGEVENT_JUMPTEXT, CeladonUniversityClassroom1BlackboardText
	bg_event  6,  1, BGEVENT_JUMPTEXT, CeladonUniversityClassroom1Bookshelf1Text
	bg_event  7,  1, BGEVENT_JUMPTEXT, CeladonUniversityClassroom1Bookshelf2Text

	def_object_events
	object_event  0,  6, SPRITE_IMAKUNI, SPRITEMOVEDATA_WANDER, 2, 1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonUniversityClassroom1ImakuniScript, -1
	object_event  1,  2, SPRITE_ANDY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityClassroom1AndyText, -1
	object_event  5,  2, SPRITE_DRAGON_TAMER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptext, CeladonUniversityClassroom1Dragon_tamerText, -1
	object_event  2,  5, SPRITE_LADY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityClassroom1LadyText, -1
	object_event  5,  5, SPRITE_ARTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityClassroom1Artist1Text, -1
	object_event  4,  7, SPRITE_ARTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, (1 << MORN) | (1 << DAY), PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityClassroom1Artist2Text, -1
	object_event  3,  9, SPRITE_ARTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, (1 << EVE) | (1 << NITE), PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityClassroom1Artist3Text, -1

	object_const_def
	const CELADONUNIVERSITYCLASSROOM1_IMAKUNI

CeladonUniversityClassroom1ImakuniScript:
	readvar VAR_FACING
	ifequalfwd UP, .Up
	ifequalfwd DOWN, .Down
	ifequalfwd LEFT, .Left
	turnobject CELADONUNIVERSITYCLASSROOM1_IMAKUNI, RIGHT
	sjumpfwd .Continue

.Up:
	turnobject CELADONUNIVERSITYCLASSROOM1_IMAKUNI, UP
	sjumpfwd .Continue

.Down:
	turnobject CELADONUNIVERSITYCLASSROOM1_IMAKUNI, DOWN
	sjumpfwd .Continue

.Left:
	turnobject CELADONUNIVERSITYCLASSROOM1_IMAKUNI, LEFT
.Continue:
	checkevent EVENT_BEAT_IMAKUNI
	iftruefwd .Beaten
	opentext
	writetext .Text1
	yesorno
	iffalse_jumpopenedtext .Text2
	writetext .Text3
	waitbutton
	closetext
	winlosstext .Text4, 0
	setlasttalked CELADONUNIVERSITYCLASSROOM1_IMAKUNI
	loadtrainer IMAKUNI, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_IMAKUNI
.Beaten
	checkevent EVENT_GOT_PERSIM_BERRY_FROM_IMAKUNI
	iftrue_jumptext .Text6
	opentext
	writetext .Text5
	promptbutton
	verbosegiveitem PERSIM_BERRY
	iffalse_endtext
	setevent EVENT_GOT_PERSIM_BERRY_FROM_IMAKUNI
	jumpthisopenedtext

.Text6:
if DEF(_LOCALE_FR)
	text "Au combat comme"
	line "en danse, l'âme"

	para "et le rythme,"
	line "c'est le secret."

	para "Ouah, j'adore!"
	line "Je deviens poète!"
	done
else
	text "In both battle and"
	line "dance, soul and"
	cont "rhythm are the"
	cont "secret."

	para "Hey, that sounds"
	line "pretty cool!"

	para "Maybe I'll become"
	line "a poet!"
	done
endc

.Text1:
if DEF(_LOCALE_FR)
	text "Hein? Tu es"
	line "qui, déjà?"

	para "Moi? Tu ignores"
	line "qui je suis?"

	para "Je suis la star"
	line "musicale, Imakuni!"

	para "Je chante le"
	line "#Rap--tu danses!"

	para "♪ La di da di da,"
	line "La di da di da… ♪"

	para "Bouge les pieds!"
	line "Quoi? Des #mon?"

	para "Tu veux te battre"
	line "contre moi?"
	done
else
	text "Huh? W…Who are"
	line "you?"

	para "Who? Me? You don't"
	line "know who I am?"

	para "I am the super"
	line "musical star,"
	cont "Imakuni!"

	para "I'll sing the"
	line "#Rap--you"
	cont "dance!"

	para "♪ La di da di da,"
	line "La di da di da… ♪"

	para "Hey! Move those"
	line "feet!"

	para "What? #mon?"

	para "You want to"
	line "battle me?"
	done
endc

.Text2:
if DEF(_LOCALE_FR)
	text "Sois pas méchant!"

	para "Tu vas me faire"
	line "pleurer!"
	done
else
	text "Come on, don't be"
	line "cruel!"

	para "You're going to"
	line "make me cry!"
	done
endc

.Text3:
if DEF(_LOCALE_FR)
	text "OK, mais si je"
	line "gagne, tu danses!"
	done
else
	text "OK, but if I win,"
	line "you dance!"
	done
endc

.Text4:
if DEF(_LOCALE_FR)
	text "Même en perdant,"
	line "c'est si grave?"
	done
else
	text "Even if I lost, is"
	line "it really so bad?"
	done
endc

.Text5:
if DEF(_LOCALE_FR)
	text "Tu gères bien!"

	para "Prends cette Baie,"
	line "mais ne dis pas"

	para "que j'ai perdu,"
	line "OK?"
	done
else
	text "Hey! You're pretty"
	line "good!"

	para "I'll give you this"
	line "Berry, so don't"

	para "tell anyone I"
	line "lost, OK?"
	done
endc

CeladonUniversityClassroom1AndyText:
if DEF(_LOCALE_FR)
	text "Bonjour!"
	line "Je suis Prof."

	para "Andy, j'enseigne"
	line "ce que j'aime:"

	para "l'art!"
	line "Dessine ce que"

	para "tu vois, pas ce"
	line "que tu crois voir."

	para "Laisse tomber tes"
	line "a priori sur les"
	cont "formes."
	done
else
	text "Hello there!"
	line "I'm Prof.Andy,"

	para "and I teach what"
	line "I love--art!"

	para "Remember, draw"
	line "what you see,"

	para "not what you think"
	line "you see."

	para "Get past your pre-"
	line "conceptions about"
	cont "how things look."
	done
endc

CeladonUniversityClassroom1Dragon_tamerText:
if DEF(_LOCALE_FR)
	text "Je tiens cette"
	line "pose depuis un"

	para "moment…"
	done
else
	text "I've been holding"
	line "this pose for a"
	cont "while now."
	done
endc

CeladonUniversityClassroom1LadyText:
if DEF(_LOCALE_FR)
	text "En arts plas-"
	line "tiques, tu croises"

	para "des gens bizarres,"
	line "mais le type en"

	para "noir, lui, il est"
	line "vraiment louche!"
	done
else
	text "You meet some"
	line "unique people in"
	cont "art class, but"

	para "that guy in the"
	line "black costume is"
	cont "really suspicious!"
	done
endc

CeladonUniversityClassroom1Artist1Text:
if DEF(_LOCALE_FR)
	text "Dur de plier"
	line "la cape comme il"
	cont "faut."
	done
else
	text "It's tough getting"
	line "the folds of this"
	cont "cape just right."
	done
endc

CeladonUniversityClassroom1Artist2Text:
if DEF(_LOCALE_FR)
	text "Atchoum!"

	para "Séminaire fleurs,"
	line "et je n'arrête pas"

	para "d'éternuer…"
	line "Allergie, sure-"

	para "ment…"
	done
else
	text "Aah-choo!"

	para "Ugh. We just had a"
	line "flower-arranging"
	cont "seminar, but now"

	para "I can't stop"
	line "sneezing."

	para "I must be aller-"
	line "gic…"
	done
endc

CeladonUniversityClassroom1Artist3Text:
if DEF(_LOCALE_FR)
	text "Je bosse le jour,"
	line "alors je prends"

	para "des cours le soir."
	done
else
	text "I work a lot dur-"
	line "ing the day, so I"

	para "take classes in"
	line "the evenings."
	done
endc

CeladonUniversityClassroom1BlackboardText:
if DEF(_LOCALE_FR)
	text "Schéma de pers-"
	line "pective à deux et"

	para "trois points de"
	line "fuite."
	done
else
	text "There's a descrip-"
	line "tion of two-point"

	para "and three-point"
	line "perspective."
	done
endc

CeladonUniversityClassroom1Bookshelf1Text:
if DEF(_LOCALE_FR)
	text "Livre sur"
	line "Queulorior,"

	para "#mon peintre."
	line "De beaux dessins."
	done
else
	text "It's a book about"
	line "Smeargle, a"
	cont "#mon artist."

	para "It's full of beau-"
	line "tiful drawings."
	done
endc

CeladonUniversityClassroom1Bookshelf2Text:
if DEF(_LOCALE_FR)
	text "Brochure sur le"
	line "Musée de Nenu-"

	para "crique."
	done
else
	text "It's a brochure"
	line "showcasing fine"
	cont "art from a place"

	para "called Lilycove"
	line "Museum."
	done
endc
