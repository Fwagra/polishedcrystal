CeladonUniversityLounge_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  4, 11, CELADON_UNIVERSITY_1F, 10
	warp_event  5, 11, CELADON_UNIVERSITY_1F, 10

	def_coord_events

	def_bg_events
	bg_event  7,  5, BGEVENT_JUMPTEXT, CeladonUniversityLoungeBookshelf1Text
	bg_event  7,  8, BGEVENT_READ, CeladonUniversityLoungeBookshelf2
	bg_event  0,  7, BGEVENT_RIGHT, CeladonUniversityLoungeComputer

	def_object_events
	object_event  5,  8, SPRITE_ACE_TRAINER_F, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonUniversityLoungeNeeshaScript, -1
	object_event  3,  1, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityLoungeLassText, -1
	object_event  5,  3, SPRITE_RICH_BOY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityLoungeRichBoyText, -1
	object_event  5,  4, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityLoungeCooltrainerfText, -1
	object_event  2,  5, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityLoungeSuper_nerd1Text, -1
	object_event  1,  8, SPRITE_BUG_MANIAC, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityLoungeSuper_nerd2Text, -1

	object_const_def
	const CELADONUNIVERSITYLOUNGE_NEESHA

CeladonUniversityLoungeNeeshaScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_COOLTRAINERF_NEESHA
	iftruefwd .Beaten
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
	setlasttalked CELADONUNIVERSITYLOUNGE_NEESHA
	loadtrainer COOLTRAINERF, NEESHA
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_COOLTRAINERF_NEESHA
	opentext
.Beaten
	setevent EVENT_INTRODUCED_CELADON_FOUR
	checkevent EVENT_BEAT_COOLTRAINERM_COREY
	iffalse_jumpopenedtext .AfterText1
	checkevent EVENT_BEAT_COOLTRAINERM_RAYMOND
	iffalse_jumpopenedtext .AfterText1
	checkevent EVENT_BEAT_COOLTRAINERM_FERGUS
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
	text "Salut! Neesha!"
	line "Je suis du top 4"

	para "de l'université de"
	line "Céladopole!"

	para "On est les 4"
	line "Céladon!"

	para "Je te montre"
	line "pourquoi on est"

	para "connus?"
	line "Allez, combat!"
	done
else
	text "Hi! I'm Neesha!"
	line "I'm one of top four"

	para "trainers in Cela-"
	line "don University."

	para "We're known as the"
	line "Celadon Four!"

	para "Want me to show"
	line "you why we're so"
	cont "famous?"

	para "Then let's battle!"
	done
endc

.IntroText2:
if DEF(_LOCALE_FR)
	text "Salut! Neesha!"
	line "Je suis des 4"

	para "Céladon!"
	line "Tu as déjà entendu"

	para "parler de nous."
	line "Allez, combat!"
	done
else
	text "Hi! I'm Neesha!"
	line "I'm one of the"
	cont "Celadon Four!"

	para "It looks like"
	line "you've heard of us."

	para "Then let's battle!"
	done
endc

.NoBattleText:
if DEF(_LOCALE_FR)
	text "Pas envie de"
	line "défi?"
	done
else
	text "Not interested in"
	line "a challenge?"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "On va t'envoyer"
	line "voler!"
	done
else
	text "We'll blow you"
	line "away!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Une défaite"
	line "qui fait mal…"
	done
else
	text "A painful loss…"
	done
endc

.AfterText1:
if DEF(_LOCALE_FR)
	text "Tu vaux le coup!"

	para "Mais tu n'as pas"
	line "vu tout ce que"

	para "les 4 Céladon"
	line "savent faire."

	para "Va trouver les"
	line "autres et défie-"

	para "les!"
	done
else
	text "You're a worthy"
	line "opponent!"

	para "But you haven't"
	line "seen everything"

	para "the Celadon Four"
	line "can do."

	para "Why don't you find"
	line "the rest of us and"
	cont "challenge them?"
	done
endc

.AfterText2:
if DEF(_LOCALE_FR)
	text "Tu as vaincu les"
	line "4 Céladon…"

	para "Trop fort!"

	para "Tiens, un prix"
	line "pour toi!"
	done
else
	text "So you beat all of"
	line "the Celadon Four…"

	para "That's so cool!"

	para "Take this as a"
	line "prize!"
	done
endc

.FinalText:
if DEF(_LOCALE_FR)
	text "Rare qu'on nous"
	line "pousse au bout,"

	para "nous les 4"
	line "Céladon."

	para "Je ne t'oublierai"
	line "pas, Dresseur!"
	done
else
	text "It's not often that"
	line "someone gives us"

	para "Celadon Four a"
	line "real challenge."

	para "I won't forget"
	line "you, trainer!"
	done
endc

CeladonUniversityLoungeLassText:
if DEF(_LOCALE_FR)
	text "Le mois prochain,"
	line "excursion à"

	para "Mont Sélénite."
	line "J'espère voir un"

	para "Mélofée!"
	done
else
	text "Next month we're"
	line "going on a trip"
	cont "to Mt.Moon."

	para "Maybe I'll see a"
	line "Clefairy!"
	done
endc

CeladonUniversityLoungeRichBoyText:
if DEF(_LOCALE_FR)
	text "Tu t'es demandé"
	line "pourquoi la Hyper"

	para "Ball a un H jaune"
	line "dessus?"

	para "Avant, on disait"
	line "Hyper Ball!"
	done
else
	text "Have you ever"
	line "wondered why"

	para "Ultra Balls have"
	line "a yellow letter"
	cont "H on the top?"

	para "It's because they"
	line "were first called"
	cont "Hyper Balls!"
	done
endc

CeladonUniversityLoungeCooltrainerfText:
if DEF(_LOCALE_FR)
	text "Un #mon bien"
	line "affaibli"

	para "tente souvent"
	line "d'entrer dans une"

	para "# Ball."
	done
else
	text "#mon with"
	line "reduced physical"

	para "strength instinct-"
	line "ively attempt to"
	cont "enter a # Ball."
	done
endc

CeladonUniversityLoungeSuper_nerd1Text:
if DEF(_LOCALE_FR)
	text "Tu croises une"
	line "blague et une"

	para "question rhéto-"
	line "rique?"

	para "………………………………"
	done
else
	text "What do you get if"
	line "you cross a joke"

	para "with a rhetorical"
	line "question?"

	para "………………………………"
	done
endc

CeladonUniversityLoungeSuper_nerd2Text:
if DEF(_LOCALE_FR)
	text "J'ecris des"
	line "scripts pour un"

	para "jeu. Ne dis pas"
	line "qu'il faut tout"

	para "faire en asm!"
	done
else
	text "I'm writing scripts"
	line "for a game."

	para "Do not said use"
	line "asm!"
	done
endc

CeladonUniversityLoungeBookshelf1Text:
if DEF(_LOCALE_FR)
	text "Plein de mangas"
	line "#mon ici!"
	done
else
	text "It's stuffed full"
	line "of copies of"
	cont "#mon manga!"
	done
endc

CeladonUniversityLoungeBookshelf2:
	opentext
	writetext .Text1
	waitbutton
	checkevent EVENT_GOT_PP_MAX_IN_UNIVERSITY
	iftruefwd .GotItem
	verbosegiveitem PP_MAX
	iffalsefwd .Done
	setevent EVENT_GOT_PP_MAX_IN_UNIVERSITY
.Done
	endtext

.GotItem
	jumpopenedtext .Text2

.Text1:
if DEF(_LOCALE_FR)
	text "Ce livre a une"
	line "cachette vide"

	para "là où il devrait"
	line "y avoir des pages!"
	done
else
	text "This book has a"
	line "secret compartment"

	para "where the pages"
	line "should be!"
	done
endc

.Text2:
if DEF(_LOCALE_FR)
	text "Dommage… vide."
	done
else
	text "Too bad--it's"
	line "empty."
	done
endc

CeladonUniversityLoungeComputer:
	jumpthistext

if DEF(_LOCALE_FR)
	text "Un perso court"
	line "dans Céladopole"

	para "en 2D."
	done
else
	text "There's a player"
	line "character running"

	para "around a 2D"
	line "Celadon City."
	done
endc
