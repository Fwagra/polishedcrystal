CeladonUniversityHyperTestRoom_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2, 11, CELADON_UNIVERSITY_2F, 4
	warp_event  3, 11, CELADON_UNIVERSITY_2F, 4

	def_coord_events

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, CeladonUniversityHyperTestRoomMagikarpSign
	bg_event  6,  1, BGEVENT_JUMPTEXT, CeladonUniversityHyperTestRoomBookshelf1Text
	bg_event  7,  1, BGEVENT_JUMPTEXT, CeladonUniversityHyperTestRoomBookshelf2Text
	bg_event  7,  4, BGEVENT_RIGHT, CeladonUniversityHyperTestRoomComputer
	bg_event  7,  6, BGEVENT_RIGHT, CeladonUniversityHyperTestRoomComputer

	def_object_events
	object_event  4,  2, SPRITE_WESTWOOD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonUniversityHyperTestRoomWestwoodScript, -1
	object_event  6,  7, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityHyperTestRoomScientistText, -1
	object_event  1,  6, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityHyperTestRoomTwin1Text, -1
	object_event  1,  8, SPRITE_SCHOOLGIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityHyperTestRoomTwin2Text, -1

CeladonUniversityHyperTestRoomWestwoodScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_DRAGON_RAGE_MAGIKARP
	iftrue_jumpopenedtext .TestOverText
	checkevent EVENT_PASSED_CELADON_HYPER_TEST
	iftruefwd .GiveMagikarp
	writetext .GreetingText
	waitbutton
	checkevent EVENT_LISTENED_TO_WESTWOOD_INTRO
	iftruefwd .HeardIntro
	writetext .IntroText
	waitbutton
	setevent EVENT_LISTENED_TO_WESTWOOD_INTRO
.HeardIntro
	writetext .QuestionText
	yesorno
	iffalse_jumpopenedtext .RefusedText
	checkflag ENGINE_TOOK_HYPER_TEST
	iftrue_jumpopenedtext .AlreadyTookText
	setflag ENGINE_TOOK_HYPER_TEST
	writetext .BeginText
	waitbutton

	writetext .Question1IntroText
	waitbutton
	closetext
	reanchormap
	trainerpic SILHOUETTE
	waitbutton
	closepokepic
	opentext
	writetext .Question1QuestionText
	loadmenu .Question1MenuData
	verticalmenu
	closewindow
	ifnotequal $2, .WrongAnswer
	waitsfx
	playsound SFX_ELEVATOR_END
	writetext .CorrectText
	promptbutton

	writetext .Question2IntroText
	waitbutton
	closetext
	cry SLOWKING
	waitsfx
	opentext
	writetext .Question2QuestionText
	loadmenu .Question2MenuData
	verticalmenu
	closewindow
	ifnotequal $3, .WrongAnswer
	waitsfx
	playsound SFX_ELEVATOR_END
	writetext .CorrectText
	promptbutton

	writetext .Question3IntroText
	waitbutton
	writetext .Question3QuestionText
	loadmenu .Question3MenuData
	verticalmenu
	closewindow
	ifnotequal $4, .WrongAnswer
	waitsfx
	playsound SFX_ELEVATOR_END
	writetext .CorrectText
	promptbutton

	writetext .Question4IntroText
	waitbutton
	writetext .Question4QuestionText
	loadmenu .Question4MenuData
	verticalmenu
	closewindow
	ifnotequal $1, .WrongAnswer
	waitsfx
	playsound SFX_ELEVATOR_END
	writetext .CorrectText
	promptbutton

	writetext .Question5IntroText
	waitbutton
	writetext .Question5QuestionText
	loadmenu .Question5MenuData
	verticalmenu
	closewindow
	ifnotequal $3, .WrongAnswer
	waitsfx
	playsound SFX_ELEVATOR_END
	writetext .CorrectText
	promptbutton

	writetext .Question6IntroText
	waitbutton
	writetext .Question6QuestionText
	loadmenu .Question6MenuData
	verticalmenu
	closewindow
	ifnotequal $4, .WrongAnswer
	waitsfx
	playsound SFX_ELEVATOR_END
	writetext .CorrectText
	promptbutton

	setevent EVENT_PASSED_CELADON_HYPER_TEST
.GiveMagikarp:
	writetext .CongratulationsText
	waitbutton

	givepoke MAGIKARP, MAGIKARP_MASK1_FORM, 10, EVIOLITE, ULTRA_BALL, DRAGON_RAGE
	iffalse_jumpopenedtext .PartyAndBoxFullText
	setevent EVENT_GOT_DRAGON_RAGE_MAGIKARP
	jumpopenedtext .TestOverText

.WrongAnswer:
	waitsfx
	playsound SFX_WRONG
	jumpopenedtext .WrongAnswerText

.GreetingText:
if DEF(_LOCALE_FR)
	text "Prof. Westwood?"
	line "C'est bien moi."
	done
else
	text "Prof.Westwood?"
	line "That would be me."
	done
endc

.IntroText:
if DEF(_LOCALE_FR)
	text "Un chercheur"
	line "hors pair!"

	para "Mes travaux sont"
	line "sans equivalent."

	para "Une distinction"
	line "me attend bientot…"
	done
else
	text "A researcher"
	line "extraordinaire!"

	para "My findings are"
	line "second to none."

	para "No doubt I'll win"
	line "a commendation"
	cont "before long…"
	done
endc

.QuestionText:
if DEF(_LOCALE_FR)
	text "Hum. Tu dis?"
	line "Tu viens pour le"

	para "Hyper Test de"
	line "l'universite de"

	para "Céladopole?"
	done
else
	text "Ahem. What was"
	line "that?"

	para "You came to take"
	line "the Celadon Univ-"
	cont "ersity Hyper Test?"
	done
endc

.BeginText:
if DEF(_LOCALE_FR)
	text "Parfait!"

	para "Le Hyper Test:"
	line "six questions qui"

	para "testent tes sens"
	line "sous pression!"

	para "Si tu reussis,"
	line "un prix digne de"

	para "notre universite!"
	done
else
	text "Excellent!"

	para "The Hyper Test is"
	line "a series of six"
	cont "questions, testing"

	para "all of your senses"
	line "under pressure!"

	para "If you pass, you'll"
	line "receive a prize"

	para "worthy of our"
	line "university!"
	done
endc

.CorrectText:
if DEF(_LOCALE_FR)
	text "Exact!"
	done
else
	text "Correct!"
	done
endc

.Question1IntroText:
if DEF(_LOCALE_FR)
	text "Question 1:"
	line "Regarde bien!"
	done
else
	text "Question 1:"
	line "Look closely!"
	done
endc

.Question1QuestionText:
if DEF(_LOCALE_FR)
	text "Quel #mon sur"
	line "cette silhouette?"
	done
else
	text "What #mon's sil-"
	line "houette is this?"
	done
endc

.Question2IntroText:
if DEF(_LOCALE_FR)
	text "Question 2:"
	line "Ecoute bien!"
	done
else
	text "Question 2:"
	line "Listen carefully!"
	done
endc

.Question2QuestionText:
if DEF(_LOCALE_FR)
	text "De quel #mon"
	line "est ce cri?"
	done
else
	text "What #mon's cry"
	line "is this?"
	done
endc

.Question3IntroText:
if DEF(_LOCALE_FR)
	text "Question 3:"
	done
else
	text "Question 3:"
	done
endc

.Question3QuestionText:
if DEF(_LOCALE_FR)
	text "Quel medicament"
	line "est amer?"
	done
else
	text "Which medicine"
	line "tastes bitter?"
	done
endc

.Question4IntroText:
if DEF(_LOCALE_FR)
	text "Question 4:"
	done
else
	text "Question 4:"
	done
endc

.Question4QuestionText:
if DEF(_LOCALE_FR)
	text "Quel #mon a"
	line "Peau Seche?"
	done
else
	text "Which #mon"
	line "has Dry Skin?"
	done
endc

.Question5IntroText:
if DEF(_LOCALE_FR)
	text "Question 5:"
	done
else
	text "Question 5:"
	done
endc

.Question5QuestionText:
if DEF(_LOCALE_FR)
	text "Quelle Baie sent"
	line "le bleu?"
	done
else
	text "Which Berry"
	line "smells blue?"
	done
endc

.Question6IntroText:
if DEF(_LOCALE_FR)
	text "Question 6:"
	line "Reflechis!"
	done
else
	text "Question 6:"
	line "Think wisely!"
	done
endc

.Question6QuestionText:
if DEF(_LOCALE_FR)
	text "Quel prof est le"
	line "plus illustre?"
	done
else
	text "Who is the most"
	line "accomplished"
	cont "professor?"
	done
endc

.CongratulationsText:
if DEF(_LOCALE_FR)
	text "Bravo!"

	para "Tu as reussi le"
	line "Hyper Test haut"

	para "la main!"
	line "Voici un Magicarpe"

	para "d'elevage rare,"
	line "avec Draco-Rage!"
	done
else
	text "Congratulations!"

	para "You passed the"
	line "Hyper Test with"
	cont "flying colors!"

	para "Here's your prize--"
	line "a uniquely bred"

	para "Magikarp that"
	line "knows Dragon Rage!"
	done
endc

.TestOverText:
if DEF(_LOCALE_FR)
	text "Nos eleves ont la"
	line "tenacite d'un"

	para "Magicarpe qui se"
	line "bat pour evoluer."

	para "Toi aussi!"
	done
else
	text "Our students have"
	line "the tenacity of a"

	para "Magikarp strugg-"
	line "ling to evolve."
	cont "And so do you!"
	done
endc

.PartyAndBoxFullText:
if DEF(_LOCALE_FR)
	text "Oh non! Equipe"
	line "et Boite pleines…"
	done
else
	text "Oh no! Your party"
	line "and Box are full…"
	done
endc

.RefusedText:
if DEF(_LOCALE_FR)
	text "Bon, si tu es sur."
	done
else
	text "Well, if you're"
	line "certain."
	done
endc

.AlreadyTookText:
if DEF(_LOCALE_FR)
	text "Tu as deja passe"
	line "le test ce jour!"

	para "Reviens demain."
	done
else
	text "But you already"
	line "attempted the test"
	cont "today!"

	para "You may retake"
	line "it tomorrow."
	done
endc

.WrongAnswerText:
if DEF(_LOCALE_FR)
	text "Faux, desole!"

	para "Retente le Hyper"
	line "Test demain."
	done
else
	text "I'm sorry, that's"
	line "incorrect!"

	para "You may try and"
	line "retake the Hyper"
	cont "Test tomorrow."
	done
endc

.Question1MenuData:
	db MENU_BACKUP_TILES
	menu_coords 0, 1, 11, 11
	dw .Question1MenuData2
	db 1 ; default option

.Question1MenuData2:
	db $81 ; flags
	db 4 ; items
	db "Umbreon@"
	db "Glaceon@"
	db "Persian@"
	db "Girafarig@"

.Question2MenuData:
	db MENU_BACKUP_TILES
	menu_coords 0, 1, 10, 11
	dw .Question2MenuData2
	db 1 ; default option

.Question2MenuData2:
	db $81 ; flags
	db 4 ; items
	db "Blissey@"
	db "Qwilfish@"
	db "Slowking@"
	db "Venomoth@"

.Question3MenuData:
	db MENU_BACKUP_TILES
	menu_coords 0, 1, 13, 11
	dw .Question3MenuData2
	db 1 ; default option

.Question3MenuData2:
	db $81 ; flags
	db 4 ; items
	db "Elixir@"
	db "Calcium@"
	db "Antidote@"
	db "Heal Powder@"

.Question4MenuData:
	db MENU_BACKUP_TILES
	menu_coords 0, 1, 12, 11
	dw .Question4MenuData2
	db 1 ; default option

.Question4MenuData2:
	db $81 ; flags
	db 4 ; items
	db "Parasect@"
	db "Magmar@"
	db "Sandslash@"
	db "Victreebel@"

.Question5MenuData:
	db MENU_BACKUP_TILES
	menu_coords 0, 1, 13, 11
	dw .Question5MenuData2
	db 1 ; default option

.Question5MenuData2:
	db $81 ; flags
	db 4 ; items
	db "Cheri Berry@"
	db "Lum Berry@"
	db "Oran Berry@"
	db "Pecha Berry@"

.Question6MenuData:
	db MENU_BACKUP_TILES
	menu_coords 0, 1, 15, 11
	dw .Question6MenuData2
	db 1 ; default option

.Question6MenuData2:
	db $81 ; flags
	db 4 ; items
	db "Prof.Oak@"
	db "Prof.Elm@"
	db "Prof.Willow@"
	db "Prof.Westwood@"

CeladonUniversityHyperTestRoomScientistText:
if DEF(_LOCALE_FR)
	text "Le Hyper Test est"
	line "un passage"

	para "obligatoire pour"
	line "les diplomes de"

	para "l'universite de"
	line "Céladopole."

	para "Ca teste toutes"
	line "tes facultes!"
	done
else
	text "The Hyper Test is"
	line "a rite of passage"

	para "for all Celadon"
	line "University grad-"
	cont "uates."

	para "It tests all of"
	line "their faculties to"
	cont "the utmost!"
	done
endc

CeladonUniversityHyperTestRoomTwin1Text:
if DEF(_LOCALE_FR)
	text "Je reussis le"
	line "Hyper Test avant"
	cont "toi!"
	done
else
	text "I'll pass the Hyper"
	line "Test before you!"
	done
endc

CeladonUniversityHyperTestRoomTwin2Text:
if DEF(_LOCALE_FR)
	text "Non, c'est moi"
	line "qui reussis avant"
	cont "toi!"
	done
else
	text "No, I'll pass the"
	line "Hyper Test before"
	cont "you!"
	done
endc

CeladonUniversityHyperTestRoomMagikarpSign:
	reanchormap
	pokepic MAGIKARP, MAGIKARP_MASK1_FORM
	cry MAGIKARP
	waitbutton
	closepokepic
	jumpthistext

if DEF(_LOCALE_FR)
	text "Un Magicarpe"
	line "nage en rond."
	done
else
	text "A Magikarp is"
	line "swimming around."
	done
endc

CeladonUniversityHyperTestRoomBookshelf1Text:
if DEF(_LOCALE_FR)
	text "Un marque-page"
	line "depasse du livre."

	para "Quelqu'un n'a pas"
	line "fini sa lecture!"
	done
else
	text "This book has a"
	line "bookmark in it."

	para "Someone's not done"
	line "with it yet!"
	done
endc

CeladonUniversityHyperTestRoomBookshelf2Text:
if DEF(_LOCALE_FR)
	text "Un vieux magazine"
	line "Nintendo Power!"

	para "Un Pikachu en"
	line "couverture."
	done
else
	text "It's a copy of"
	line "Nintendo Power!"

	para "A Pikachu picture"
	line "fills the front"
	cont "cover."
	done
endc

CeladonUniversityHyperTestRoomComputer:
	jumpthistext

if DEF(_LOCALE_FR)
	text "Un fichier"
	line "questions.txt sur"

	para "le bureau."
	line "Pas tricher!"
	done
else
	text "There's a file on"
	line "the desktop named"
	cont "questions.txt."

	para "Better not cheat!"
	done
endc
