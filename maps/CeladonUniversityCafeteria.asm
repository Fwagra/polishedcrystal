CeladonUniversityCafeteria_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 13,  7, CELADON_UNIVERSITY_2F, 2
	warp_event 14,  7, CELADON_UNIVERSITY_2F, 2

	def_coord_events

	def_bg_events
	bg_event 10,  0, BGEVENT_JUMPTEXT, CeladonUniversityCafeteriaSignText

	def_object_events
	object_event 11,  2, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonUniversityCafeteriaCoreyScript, -1
	object_event  4,  2, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityCafeteriaCooltrainerfText, -1
	object_event  7,  3, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityCafeteriaBeautyText, -1
	object_event  2,  6, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityCafeteriaYoungster1Text, -1
	object_event  8,  6, SPRITE_LADY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityCafeteriaLadyText, -1
	object_event 11,  5, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonUniversityCafeteriaYoungster2Script, -1
	object_event  0,  3, SPRITE_BAKER, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonUniversityCafeteriaBakerScript, -1

	object_const_def
	const CELADONUNIVERSITYCAFETERIA_COREY

CeladonUniversityCafeteriaCoreyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_COOLTRAINERM_COREY
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
	setlasttalked CELADONUNIVERSITYCAFETERIA_COREY
	loadtrainer COOLTRAINERM, COOLTRAINERM_COREY
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_COOLTRAINERM_COREY
	opentext
.Beaten
	setevent EVENT_INTRODUCED_CELADON_FOUR
	checkevent EVENT_BEAT_COOLTRAINERM_RAYMOND
	iffalse_jumpopenedtext .AfterText1
	checkevent EVENT_BEAT_COOLTRAINERM_FERGUS
	iffalse_jumpopenedtext .AfterText1
	checkevent EVENT_BEAT_COOLTRAINERF_NEESHA
	iffalse_jumpopenedtext .AfterText1
	checkevent EVENT_GOT_CHOICE_BAND_FROM_CELADON_FOUR
	iftrue_jumpopenedtext .FinalText
	writetext .AfterText2
	promptbutton
	verbosegiveitem CHOICE_BAND
	iffalse_jumpopenedtext CeladonUni_NoRoomText
	setevent EVENT_GOT_CHOICE_BAND_FROM_CELADON_FOUR
	jumpthisopenedtext

.FinalText:
if DEF(_LOCALE_FR)
	text "Tu serais une"
	line "élève modèle ici."

	para "Tu as sans doute"
	line "d'autres buts,"
	cont "non?"
	done
else
	text "You'd be a star"
	line "student if you"
	cont "enrolled here."

	para "But you have other"
	line "goals, don't you?"
	done
endc

.IntroText1:
if DEF(_LOCALE_FR)
	text "Moi, Corey!"
	line "Je suis du top 4"

	para "de l'université"
	line "de Céladopole!"

	para "On est les 4"
	line "Céladon!"

	para "Je te montre"
	line "pourquoi avec un"

	para "petit combat!"
	done
else
	text "I'm Corey! I'm one"
	line "of top four train-"
	cont "ers at Celadon"
	cont "University."

	para "We're known as the"
	line "Celadon Four!"

	para "Let me show you"
	line "how we earned that"

	para "title with a quick"
	line "battle!"
	done
endc

.IntroText2:
if DEF(_LOCALE_FR)
	text "Moi, Corey!"
	line "Je suis des 4"
	cont "Celadon!"

	para "Tu veux nous"
	line "quatre?"

	para "OK, j'ai fini"
	line "de manger."

	para "Tu es prêt?"
	line "On se bat?"
	done
else
	text "I'm Corey! I'm one"
	line "of the Celadon"
	cont "Four!"

	para "You're challenging"
	line "all four of us?"

	para "Sure, I'm finished"
	line "eating here."

	para "Are you ready to"
	line "battle?"
	done
endc

.NoBattleText:
if DEF(_LOCALE_FR)
	text "Oui, on peut"
	line "faire peur."
	done
else
	text "Yeah, we can be"
	line "intimidating."
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Ce sera facile!"
	done
else
	text "Winning this will"
	line "be a breeze!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Je t'ai sous-"
	line "estime…"
	done
else
	text "I underestimated"
	line "you…"
	done
endc

.AfterText1:
if DEF(_LOCALE_FR)
	text "Tu es fort!"

	para "Mais je ne suis"
	line "qu'un des 4"

	para "Céladon."
	line "Va défier les"

	para "autres pour tester"
	line "ta force!"
	done
else
	text "You're a strong"
	line "trainer!"

	para "But I'm just one of"
	line "the Celadon Four."

	para "You should track"
	line "down the rest of"

	para "us to really test"
	line "your strength!"
	done
endc

.AfterText2:
if DEF(_LOCALE_FR)
	text "Tu as vaincu les"
	line "4 Céladon?"

	para "Bravo!"

	para "Tiens, un"
	line "souvenir!"
	done
else
	text "You beat all of"
	line "the Celadon Four?"

	para "Congratulations!"

	para "Take this as a"
	line "memento!"
	done
endc

CeladonUni_NoRoomText:
if DEF(_LOCALE_FR)
	text "Tu ne peux pas"
	line "porter ça."
	done
else
	text "You can't carry it."
	done
endc

CeladonUniversityCafeteriaCooltrainerfText:
if DEF(_LOCALE_FR)
	text "Ici, les meilleurs"
	line "steaks burger"

	para "style Cramois'I"
	line "de tout Kanto!"

	para "Comme à la maison."
	done
else
	text "This place makes"
	line "the best Cinnabar-"
	cont "style hamburger"

	para "steaks this side"
	line "of Kanto!"

	para "It's just like"
	line "being home."
	done
endc

CeladonUniversityCafeteriaBeautyText:
if DEF(_LOCALE_FR)
	text "Le chef a refait"
	line "du Vieux Gâteau!"

	para "Je repasserai"
	line "peut-être…"
	done
else
	text "The cook finally"
	line "made another batch"
	cont "of Old Gateau!"

	para "I might go back"
	line "for seconds."
	done
endc

CeladonUniversityCafeteriaYoungster1Text:
if DEF(_LOCALE_FR)
	text "J'ai demandé des"
	line "Cornets Castelia à"

	para "la cafet'."
	line "Ca me rappelle"

	para "la maison, et"
	line "c'est trop bon!"
	done
else
	text "I asked the cafe-"
	line "teria to stock"
	cont "Casteliacones."

	para "They remind me of"
	line "home, and they're"
	cont "yummy too!"
	done
endc

CeladonUniversityCafeteriaLadyText:
if DEF(_LOCALE_FR)
	text "Je fais attention."
	line "Aujourd'hui,"

	para "salade Graine Glu"
	line "pour moi."
	done
else
	text "I'm on a diet."
	line "Today it's a"
	para "nutritious Slip"
	line "Seed salad for me."
	done
endc

CeladonUniversityCafeteriaYoungster2Script:
	checkevent EVENT_GOT_LEMONADE_IN_UNIVERSITY
	iftrue_jumptextfaceplayer .Text2
	faceplayer
	opentext
	writetext .Text1
	promptbutton
	verbosegiveitem LEMONADE
	iffalse_jumpopenedtext CeladonUni_NoRoomText
	setevent EVENT_GOT_LEMONADE_IN_UNIVERSITY
	jumpopenedtext .Text2

.Text1:
if DEF(_LOCALE_FR)
	text "Le distrib' m'a"
	line "file une boisson"

	para "en trop!"
	line "Tiens, partageons."
	done
else
	text "The vending ma-"
	line "chine gave me an"
	cont "extra drink!"

	para "Let me share it"
	line "with you."
	done
endc

.Text2:
if DEF(_LOCALE_FR)
	text "J'adore une Eau"
	line "Fraîche froide"

	para "après un dur"
	line "combat."
	done
else
	text "I love a cold"
	line "Lemonade after a"
	cont "tough battle."
	done
endc

CeladonUniversityCafeteriaBakerScript:
	faceplayer
	opentext
	checkflag ENGINE_BOUGHT_LEFTOVERS
	iftrue_jumpopenedtext .Text3
	writetext .Text1
	special PlaceMoneyTopRight
	yesorno
	iffalse_jumpopenedtext .Text4
	checkmoney YOUR_MONEY, 4000
	ifequalfwd HAVE_LESS, .NotEnoughMoney
	giveitem LEFTOVERS
	iffalse_jumpopenedtext .Text6
	setflag ENGINE_BOUGHT_LEFTOVERS
	waitsfx
	playsound SFX_TRANSACTION
	takemoney YOUR_MONEY, 4000
	special PlaceMoneyTopRight
	jumpthisopenedtext

.Text2:
if DEF(_LOCALE_FR)
	text "Voilà, mon ange!"
	line "Bon appétit!"
	done
else
	text "Here you go, hon!"
	line "Enjoy it!"
	done
endc

.NotEnoughMoney:
	jumpthisopenedtext

if DEF(_LOCALE_FR)
	text "Pas assez"
	line "d'argent…"
	done
else
	text "You don't have"
	line "enough money…"
	done
endc

.Text1:
if DEF(_LOCALE_FR)
	text "Quoi donc, mon"

	para "ange? Désolé,"
	line "le service du soir"

	para "est fini. Il reste"
	line "des Restes, mais"

	para "c'est ¥4000."
	line "Tu en veux?"
	done
else
	text "What's that, hon?"

	para "Sorry, we're done"
	line "serving dinner."

	para "There are some"
	line "Leftovers, but"

	para "it'll cost ¥4000."
	line "Want some?"
	done
endc

.Text3:
if DEF(_LOCALE_FR)
	text "Plus de Restes"
	line "aujourd'hui."
	done
else
	text "There aren't any"
	line "more Leftovers"
	cont "today."
	done
endc

.Text4:
if DEF(_LOCALE_FR)
	text "Bonne journée!"
	done
else
	text "Have a nice day!"
	done
endc

.Text6:
if DEF(_LOCALE_FR)
	text "Tu ne peux pas"
	line "porter ça, ange."
	done
else
	text "You can't carry"
	line "it, hon."
	done
endc

CeladonUniversityCafeteriaSignText:
if DEF(_LOCALE_FR)
	text "Merci de ranger"
	line "après ton repas."
	done
else
	text "Please clean up"
	line "when you are"
	cont "finished eating."
	done
endc
