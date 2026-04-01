CeladonUniversityClassroom2_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2, 11, CELADON_UNIVERSITY_1F, 7
	warp_event  3, 11, CELADON_UNIVERSITY_1F, 7

	def_coord_events

	def_bg_events
	bg_event  2,  0, BGEVENT_JUMPTEXT, CeladonUniversityClassroom2BlackboardText
	bg_event  3,  0, BGEVENT_JUMPTEXT, CeladonUniversityClassroom2BlackboardText
	bg_event  4,  0, BGEVENT_JUMPTEXT, CeladonUniversityClassroom2BlackboardText
	bg_event  6,  1, BGEVENT_JUMPTEXT, CeladonUniversityClassroom2Bookshelf1Text
	bg_event  7,  1, BGEVENT_JUMPTEXT, CeladonUniversityClassroom2Bookshelf2Text

	def_object_events
	object_event  2,  1, SPRITE_BLANCHE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, (1 << MORN) | (1 << DAY), 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityClassroom2BlancheText, -1
	object_event  2,  1, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, (1 << EVE) | (1 << NITE), PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityClassroom2TeacherText, -1
	object_event  4,  5, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityClassroom2YoungsterText, -1
	object_event  2,  7, SPRITE_CHILD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityClassroom2ChildText, -1
	object_event  5,  7, SPRITE_LADY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityClassroom2LadyText, -1
	object_event  3,  9, SPRITE_COOL_DUDE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonUniversityClassroom2CooltrainermScript, -1

CeladonUniversityClassroom2BlancheText:
if DEF(_LOCALE_FR)
	text "Je suis Blanche."
	line "J'enseigne ici"

	para "l'Histoire."
	line "Sans le passe,"

	para "on est condamne"
	line "a le revivre."
	done
else
	text "I am Blanche."
	line "I teach History"
	cont "here."

	para "We must learn from"
	line "history, or we"

	para "will be doomed to"
	line "repeat it."
	done
endc

CeladonUniversityClassroom2TeacherText:
if DEF(_LOCALE_FR)
	text "Blanche n'est pas"
	line "la, desole."

	para "Elle n'enseigne"
	line "que le jour."
	done
else
	text "I'm afraid Blanche"
	line "isn't available."

	para "They only teach"
	line "during the day."
	done
endc

CeladonUniversityClassroom2YoungsterText:
if DEF(_LOCALE_FR)
	text "Je feuillette mes"
	line "notes a toute"

	para "vitesse--AIE!"
	line "Coupe-papier…"
	done
else
	text "Flipping through"
	line "my notes at the"
	cont "speed of--YOW!"
	cont "Paper cut…"
	done
endc

CeladonUniversityClassroom2ChildText:
if DEF(_LOCALE_FR)
	text "Cours sur le Prof."
	line "Westwood et le"

	para "#dex. On dit"
	line "qu'a la fin il"

	para "laissait tomber"
	line "et inventait des"

	para "trucs!"
	done
else
	text "We just had a"
	line "lecture on Prof."

	para "Westwood's contri-"
	line "butions to the"
	cont "#dex."

	para "I heard that"
	line "towards the end"

	para "he got lazy and"
	line "just made some of"
	cont "it up!"
	done
endc

CeladonUniversityClassroom2LadyText:
if DEF(_LOCALE_FR)
	text "Tu viens de Johto?"
	line "Quelle histoire"

	para "passionnante!"
	done
else
	text "You're from Johto?"
	line "That region has"

	para "such fascinating"
	line "history!"
	done
endc

CeladonUniversityClassroom2CooltrainermScript:
	showtext .Text1
	showtextfaceplayer .Text2
	turnobject LAST_TALKED, UP
	end

.Text1: ; text > text
if DEF(_LOCALE_FR)
	text "…Zzz…"
	line "Aaah!"
	done
else
	text "…Zzz…"
	line "Aah!"
	done
endc

.Text2:
if DEF(_LOCALE_FR)
	text "Hum."

	para "Pardon--tu m'as"
	line "fait sursauter."

	para "J'ai veille pour"
	line "un devoir, alors"

	para "je suis a plat."
	done
else
	text "Ahem."

	para "Sorry about that--"
	line "you startled me."

	para "I stayed up late"
	line "to finish an"

	para "assignment, so now"
	line "I'm exhausted."
	done
endc

CeladonUniversityClassroom2BlackboardText:
if DEF(_LOCALE_FR)
	text "Chronologie d'his-"
	line "toire recente."

	para "Il y a 400 ans:"
	line "invention Toxic."

	para "Il y a 71 ans:"
	line "# Ball moderne."

	para "Il y a 27 ans:"
	line "1er pas sur la"

	para "Lune."
	line "Il y a 3 ans:"

	para "1er #mon"
	line "virtuel."

	para "Hypothese: tech"
	line "qui explose."
	done
else
	text "There's a timeline"
	line "of recent history."

	para "400 years ago:"
	line "Toxic move invent-"
	cont "ed."

	para "71 years ago:"
	line "modern # Ball"
	cont "developed."

	para "27 years ago:"
	line "first Moon land-"
	cont "ing."

	para "Three years ago:"
	line "first virtual"
	cont "#mon created."

	para "“Hypothesis: tech-"
	line "nology grows expo-"
	cont "nentially.”"
	done
endc

CeladonUniversityClassroom2Bookshelf1Text:
if DEF(_LOCALE_FR)
	if DEF(FAITHFUL)
		text "Un livre sur"
		line "l'incendie de la"
		cont "Tour en Laiton"

		para "a Ecruteak"
		line "il y a 150 ans."
		done
	else
		text "Un livre sur"
		line "l'incendie de la"
		cont "Tour Gong"

		para "a Ecruteak"
		line "il y a 150 ans."
		done
	endc
else
	if DEF(FAITHFUL)
		text "It's a book about"
		line "how the Brass"
		cont "Tower in Ecruteak"

		para "City burned down"
		line "150 years ago."
		done
	else
		text "It's a book about"
		line "how the Gong Tower"
		cont "in Ecruteak City"

		para "burned down 150"
		line "years ago."
		done
	endc
endc

CeladonUniversityClassroom2Bookshelf2Text:
if DEF(_LOCALE_FR)
	text "Un recueil d'argot"
	line "des annees 80."

	para "Totalement"
	line "lourd!"
	done
else
	text "It's a book of"
	line "slang terms from"
	cont "the 1980s."
	cont "Heavy!"
	done
endc
