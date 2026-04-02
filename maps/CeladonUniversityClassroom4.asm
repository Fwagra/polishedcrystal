CeladonUniversityClassroom4_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2, 11, CELADON_UNIVERSITY_1F, 9
	warp_event  3, 11, CELADON_UNIVERSITY_1F, 9

	def_coord_events

	def_bg_events
	bg_event  2,  0, BGEVENT_JUMPTEXT, CeladonUniversityClassroom4BlackboardText
	bg_event  3,  0, BGEVENT_JUMPTEXT, CeladonUniversityClassroom4BlackboardText
	bg_event  4,  0, BGEVENT_JUMPTEXT, CeladonUniversityClassroom4BlackboardText
	bg_event  6,  1, BGEVENT_READ, CeladonUniversityClassroom4Bookshelf1
	bg_event  7,  1, BGEVENT_JUMPTEXT, CeladonUniversityClassroom4Bookshelf2Text

	def_object_events
	object_event  5,  2, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonUniversityClassroom4RaymondScript, -1
	object_event  2,  1, SPRITE_CANDELA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, (1 << MORN) | (1 << DAY), 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityClassroom4CandelaText, -1
	object_event  2,  1, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, (1 << EVE) | (1 << NITE), PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityClassroom4TeacherText, -1
	object_event  2,  5, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityClassroom4Bug_catcherText, -1
	object_event  3,  7, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityClassroom4FisherText, -1
	object_event  5,  7, SPRITE_AROMA_LADY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityClassroom4LadyText, -1
	object_event  4,  9, SPRITE_RICH_BOY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonUniversityClassroom4Rich_boyScript, -1

	object_const_def
	const CELADONUNIVERSITYCLASSROOM4_RAYMOND

CeladonUniversityClassroom4RaymondScript:
	faceplayer
	checkevent EVENT_BEAT_COOLTRAINERM_RAYMOND
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
	setlasttalked CELADONUNIVERSITYCLASSROOM4_RAYMOND
	loadtrainer COOLTRAINERM, COOLTRAINERM_RAYMOND
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_COOLTRAINERM_RAYMOND
.Beaten
	opentext
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
	text "Salut! Raymond!"
	line "Appelle-moi Ray."

	para "Je suis du top 4"
	line "de l'université de"

	para "Céladopole!"
	line "On est les 4"

	para "Céladon!"
	line "Tu veux voir notre"

	para "niveau? Match!"
	line "Sauf si tu as"

	para "peur de perdre."
	done
else
	text "Hey! I'm Raymond!"
	line "Just call me Ray."

	para "I'm one of top four"
	line "trainers at Cela-"
	cont "don University."

	para "We're known as the"
	line "Celadon Four!"

	para "Want to see our"
	line "skill yourself?"

	para "Let's have a match!"
	line "Unless you're"
	cont "afraid to lose."
	done
endc

.IntroText2:
if DEF(_LOCALE_FR)
	text "Salut! Raymond!"
	line "Appelle-moi Ray."

	para "Je fais partie"
	line "des 4 Céladon!"

	para "Tu veux nous"
	line "affronter tous?"

	para "Match! Sauf si tu"
	line "as peur de perdre."
	done
else
	text "Hey! I'm Raymond!"
	line "Just call me Ray."

	para "I'm one of the"
	line "Celadon Four!"

	para "You're looking to"
	line "fight us all?"

	para "Let's have a match!"
	line "Unless you're"
	cont "afraid to lose."
	done
endc

.NoBattleText:
if DEF(_LOCALE_FR)
	text "Je savais que tu"
	line "avais la frousse."
	done
else
	text "I knew you were"
	line "scared."
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "C'est parti!"
	done
else
	text "Let's do this!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Ohhh nonnn!"
	done
else
	text "Ohhhh nooooo!"
	done
endc

.AfterText1:
if DEF(_LOCALE_FR)
	text "Comment? Moi,"
	line "un des 4 Céladon!"

	para "J'ai perdu, mais"
	line "mes trois potes"

	para "me vengeront."
	line "Va les trouver!"
	done
else
	text "How could this be?"
	line "I'm one of the"
	cont "Celadon Four!"

	para "I may have lost,"
	line "but my three pals"
	cont "will avenge me."

	para "Go find them"
	line "yourself!"
	done
endc

.AfterText2:
if DEF(_LOCALE_FR)
	text "Tu as battu les"
	line "4 Céladon?"

	para "Sans blague!"

	para "…Bon. Tu mérites"
	line "ca."
	done
else
	text "You've beaten all"
	line "of the Celadon"
	cont "Four?"

	para "No way!"

	para "…Fine. I guess"
	line "you've earned this."
	done
endc

.FinalText:
if DEF(_LOCALE_FR)
	text "Si tu bats les"
	line "4 Céladon,"

	para "tu peux tout"
	line "supporter."
	done
else
	text "If you've conquered"
	line "the Celadon Four,"

	para "you can bear any"
	line "burden."
	done
endc

CeladonUniversityClassroom4CandelaText:
if DEF(_LOCALE_FR)
	text "Salut! Candela."
	line "J'enseigne le"

	para "combat #mon!"
	line "Je cherche à"

	para "booster la force"
	line "naturelle des"

	para "#mon."
	done
else
	text "Hi! I'm Candela."
	line "I teach #mon"
	cont "Battling!"

	para "I'm researching"
	line "ways to enhance"

	para "#mon's natural"
	line "power in the pur-"
	cont "suit of strength."
	done
endc

CeladonUniversityClassroom4TeacherText:
if DEF(_LOCALE_FR)
	text "Candela? Elle"
	line "enseigne le jour"

	para "seulement."
	done
else
	text "Candela? She only"
	line "teaches during the"
	cont "day."
	done
endc

CeladonUniversityClassroom4Bug_catcherText:
if DEF(_LOCALE_FR)
	text "La prof dit que"
	line "mon #mon peut"

	para "rivaliser avec les"
	line "meilleurs."

	para "Son potentiel: le"
	line "plus fort qu'elle"

	para "ait vu!"
	done
else
	text "My lecturer said"
	line "my #mon could"

	para "really battle with"
	line "the best of them."

	para "Its potential was"
	line "the best she'd"
	cont "ever seen!"
	done
endc

CeladonUniversityClassroom4FisherText:
if DEF(_LOCALE_FR)
	text "Le prof dit que"
	line "mon #mon est un"

	para "chef-d'oeuvre!"
	line "A couper le"

	para "souffle."
	done
else
	text "The prof said my"
	line "#mon was a"
	cont "wonder!"

	para "It's a breath-"
	line "taking #mon."
	done
endc

CeladonUniversityClassroom4LadyText:
if DEF(_LOCALE_FR)
	text "La prof dit que"
	line "mon #mon l'a"

	para "époustouflée."
	line "Il peut tout"

	para "réussir!"
	done
else
	text "The professor said"
	line "my #mon simply"
	cont "amazed her."

	para "I guess it really"
	line "can accomplish"
	cont "anything!"
	done
endc

CeladonUniversityClassroom4Rich_boyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_ABILITY_CAP_IN_UNIVERSITY
	iftruefwd .GotItem
	writetext .Text1
	promptbutton
	verbosegiveitem ABILITY_CAP
	iffalse_endtext
	setevent EVENT_GOT_ABILITY_CAP_IN_UNIVERSITY
.GotItem:
	writetext .Text2
	waitendtext

.Text1:
if DEF(_LOCALE_FR)
	text "On étudie les"
	line "talents #mon."

	para "Certaines espèces"
	line "ont plusieurs"

	para "talents possibles."
	line "Utilise ca pour"

	para "les alterner!"
	done
else
	text "We're learning"
	line "about #mon"
	cont "abilities."

	para "Some species can"
	line "have more than one"
	cont "ability."

	para "Use this to switch"
	line "between them!"
	done
endc

.Text2:
if DEF(_LOCALE_FR)
	text "Il existe des"
	line "talents cachés"

	para "rares que la"
	line "Capsule Talent ne"

	para "change pas."
	line "Mais! Un #mon"

	para "porte-Capsule qui"
	line "fait un Oeuf peut"

	para "donner un bébé"
	line "au talent cache!"
	done
else
	text "There are some"
	line "rare “hidden"
	cont "abilities” that"

	para "an Ability Cap"
	line "can't change."

	para "But! If a #-"
	line "mon holding an"

	para "Ability Cap has"
	line "an Egg, its baby"

	para "might have a"
	line "hidden ability!"
	done
endc

CeladonUniversityClassroom4BlackboardText:
if DEF(_LOCALE_FR)
	text "Facteurs combat:"
	line "- Types"

	para "- Effets des"
	line "attaques"

	para "- Catégories"
	line "- Etats"

	para "- Objets"
	line "- Stats"

	para "- EV, natures,"
	line "talents, météo…"
	done
else
	text "Be aware of these"
	line "factors in battle:"
	cont "- Type chart"
	cont "- Move effects"
	cont "- Move categories"
	cont "- Conditions"
	cont "- Held items"
	cont "- Base stats"
	cont "- Effort values"
	cont "- Natures"
	cont "- Abilities"
	cont "- Weather"
	cont "- Others?"
	done
endc

CeladonUniversityClassroom4Bookshelf1:
	checkevent EVENT_GOT_X_SP_ATK_IN_UNIVERSITY
	iftrue_jumptext .Text2
	opentext
	writetext .Text1
	promptbutton
	verbosegiveitem X_SP_ATK
	iffalse_endtext
	setevent EVENT_GOT_X_SP_ATK_IN_UNIVERSITY
	endtext

.Text1:
if DEF(_LOCALE_FR)
	text "Bibliothèque en"
	line "désordre!"

	para "<PLAYER> range"
	line "les livres."

	para "…Hein?"
	done
else
	text "This bookcase is"
	line "a mess!"

	para "<PLAYER> straight-"
	line "ened up the books."

	para "…Oh?"
	done
endc

.Text2:
if DEF(_LOCALE_FR)
	text "Les livres sont"
	line "tout bien rangés."
	done
else
	text "This bookcase is"
	line "all neat and tidy."
	done
endc

CeladonUniversityClassroom4Bookshelf2Text:
if DEF(_LOCALE_FR)
	text "Un coloriage"
	line "#mon."

	para "Ca fait quoi là?"
	done
else
	text "It's a #mon"
	line "coloring book."

	para "What's this doing"
	line "here?"
	done
endc
