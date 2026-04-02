CeladonUniversityPool_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  6,  9, CELADON_UNIVERSITY_2F, 6
	warp_event  7,  9, CELADON_UNIVERSITY_2F, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event 11,  5, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonUniversityPoolFergusScript, -1
	object_event  9,  1, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityPoolLassText, -1
	object_event  4,  4, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SWIM_UP_DOWN, 1, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityPoolSwimmer_girlText, -1
	object_event  3,  8, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityPoolTeacherText, -1
	itemball_event 12,  8, WATER_STONE, 1, EVENT_CELADON_UNIVERSITY_POOL_WATER_STONE

	object_const_def
	const CELADONUNIVERSITYPOOL_FERGUS

CeladonUniversityPoolFergusScript:
	faceplayer
	checkevent EVENT_BEAT_COOLTRAINERM_FERGUS
	iftruefwd .Beaten
	opentext
	checkevent EVENT_INTRODUCED_CELADON_FOUR
	iftruefwd .IntroducedCeladonFour1
	writetext .IntroText1
	sjumpfwd .AfterIntro
.IntroducedCeladonFour1
	writetext .IntroText2
.AfterIntro
	yesorno
	iffalse_jumpopenedtext .NoBattleText
	writetext .SeenText
	waitbutton
	closetext
	winlosstext .BeatenText, 0
	setlasttalked CELADONUNIVERSITYPOOL_FERGUS
	loadtrainer COOLTRAINERM, FERGUS
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_COOLTRAINERM_FERGUS
.Beaten
	opentext
	setevent EVENT_INTRODUCED_CELADON_FOUR
	checkevent EVENT_BEAT_COOLTRAINERM_COREY
	iffalse_jumpopenedtext .AfterText1
	checkevent EVENT_BEAT_COOLTRAINERM_RAYMOND
	iffalse_jumpopenedtext .AfterText1
	checkevent EVENT_BEAT_COOLTRAINERF_NEESHA
	iffalse_jumpopenedtext .AfterText1
	checkevent EVENT_GOT_CHOICE_BAND_FROM_CELADON_FOUR
	iftrue_jumpopenedtext .FinalText
	writetext .AfterText2
	promptbutton
	verbosegiveitem CHOICE_BAND
	iffalse_endtext
	setevent EVENT_GOT_CHOICE_BAND_FROM_CELADON_FOUR
	jumpopenedtext .FinalText

.IntroText1:
if DEF(_LOCALE_FR)
	text "Moi, Fergus!"
	line "Je suis du top 4"

	para "Dresseurs de"
	line "l'université de"

	para "Céladopole. On est"
	line "les 4 Céladon!"

	para "Je te bats pour"
	line "prouver que je"

	para "merite ma rep!"
	done
else
	text "The name's Fergus!"
	line "I'm one of top four"

	para "trainers at Cela-"
	line "don University."

	para "They call us the"
	line "Celadon Four!"

	para "I'll prove to you"
	line "that I earned my"
	cont "rep with a battle!"
	done
endc

.IntroText2:
if DEF(_LOCALE_FR)
	text "Moi, Fergus!"
	line "Je fais partie des"

	para "les 4 Céladon!"
	line "Tu nous défies?"

	para "Allez, au combat!"
	done
else
	text "The name's Fergus!"
	line "I'm one of the"
	cont "Celadon Four!"

	para "You're taking on"
	line "all four of us?"

	para "Well then, let's"
	line "battle!"
	done
endc

.NoBattleText:
if DEF(_LOCALE_FR)
	text "Alors ne me barre"
	line "pas le chemin."
	done
else
	text "Then don't get in"
	line "my way."
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "On te montre!"
	line "C'est parti!"
	done
else
	text "We'll show you!"
	line "Let's go!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Sans déc!"
	done
else
	text "No way!"
	done
endc

.AfterText1:
if DEF(_LOCALE_FR)
	text "J'ai tant entraîné"
	line "mon équipe, mais"

	para "tu nous as eu."
	line "Avec ta force,"

	para "affronte le reste"
	line "du groupe des 4!"
	done
else
	text "I've spent so much"
	line "time training my"
	cont "team, but you beat"
	cont "us anyway."

	para "With your power,"
	line "you should take on"

	para "the rest of the"
	line "Celadon Four!"
	done
endc

.AfterText2:
if DEF(_LOCALE_FR)
	text "Les Quatre ont"
	line "perdu contre toi?"

	para "Tu décroches!"
	line "Tiens, pour toi!"
	done
else
	text "All of the Celadon"
	line "Four lost to you?"

	para "You really are"
	line "something!"

	para "You've earned this"
	line "reward!"
	done
endc

.FinalText:
if DEF(_LOCALE_FR)
	text "Les Quatre font"
	line "le poids ici, mais"

	para "tu cartonne dans"
	line "le monde réel."

	para "Continue!"
	done
else
	text "The Celadon Four"
	line "are a big deal"
	cont "here, but you're"

	para "making waves in"
	line "the real world."

	para "Keep it up!"
	done
endc

CeladonUniversityPoolLassText:
if DEF(_LOCALE_FR)
	text "Aie!"

	para "J'ai une crampe"
	line "dans la jambe."
	done
else
	text "Ouch!"

	para "I'm working out a"
	line "cramp in my leg."
	done
endc

CeladonUniversityPoolSwimmer_girlText:
if DEF(_LOCALE_FR)
	text "J'ai postulé pour"
	line "aller étudier aux"

	para "Iles Ecume!"
	line "Il me faut de la"

	para "nage intense."
	done
else
	text "I applied for a"
	line "special program to"

	para "study in the Sea-"
	line "foam Islands!"

	para "I need to be pre-"
	line "pared for intense"
	cont "swimming."
	done
endc

CeladonUniversityPoolTeacherText:
if DEF(_LOCALE_FR)
	text "OK, cinq longueurs"
	line "encore!"
	done
else
	text "OK, five more"
	line "laps!"
	done
endc

