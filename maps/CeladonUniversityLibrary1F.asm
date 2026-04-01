CeladonUniversityLibrary1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  6, 11, CELADON_UNIVERSITY_1F, 4
	warp_event  7, 11, CELADON_UNIVERSITY_1F, 4
	warp_event  7,  0, CELADON_UNIVERSITY_LIBRARY_2F, 1

	def_coord_events

	def_bg_events
	bg_event  4,  0, BGEVENT_JUMPTEXT, CeladonUniversityLibrary1FSignpost1Text
	bg_event 10,  0, BGEVENT_JUMPTEXT, CeladonUniversityLibrary1FSignpost2Text
	bg_event  0,  3, BGEVENT_JUMPTEXT, CeladonUniversityLibrary1FBookshelf1Text
	bg_event  1,  3, BGEVENT_JUMPTEXT, CeladonUniversityLibrary1FBookshelf2Text
	bg_event  2,  3, BGEVENT_JUMPTEXT, CeladonUniversityLibrary1FBookshelf3Text
	bg_event  3,  3, BGEVENT_JUMPTEXT, CeladonUniversityLibrary1FBookshelf4Text
	bg_event  4,  3, BGEVENT_JUMPTEXT, CeladonUniversityLibrary1FBookshelf5Text
	bg_event  5,  3, BGEVENT_JUMPTEXT, CeladonUniversityLibrary1FBookshelf6Text
	bg_event  0,  7, BGEVENT_JUMPTEXT, CeladonUniversityLibrary1FBookshelf7Text
	bg_event  1,  7, BGEVENT_JUMPTEXT, CeladonUniversityLibrary1FBookshelf8Text
	bg_event  2,  7, BGEVENT_JUMPTEXT, CeladonUniversityLibrary1FBookshelf9Text
	bg_event  3,  7, BGEVENT_JUMPTEXT, CeladonUniversityLibrary1FBookshelf10Text
	bg_event  4,  7, BGEVENT_JUMPTEXT, CeladonUniversityLibrary1FBookshelf11Text
	bg_event  5,  7, BGEVENT_JUMPTEXT, CeladonUniversityLibrary1FBookshelf12Text

	def_object_events
	object_event  6,  3, SPRITE_AROMA_LADY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityLibrary1FLadyText, -1
	object_event 11,  7, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityLibrary1FGentlemanText, -1
	object_event  0,  5, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityLibrary1FCooltrainerfText, -1
	object_event  9,  5, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonUniversityLibrary1FGameboyKidScript, -1
	object_event  3,  8, SPRITE_MATRON, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityLibrary1FPokefan_fText, -1
	object_event 11,  3, SPRITE_COOL_DUDE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, CeladonUniversityLibrary1FCooltrainermScript, -1
	object_event  2, 11, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityLibrary1FTeacherText, -1
	object_event 10,  7, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptext, CeladonUniversityLibrary1FBookText, -1

CeladonUniversityLibrary1FLadyText:
if DEF(_LOCALE_FR)
	text "Cette bibliotheque"
	line "est sur le campus,"

	para "mais tout le monde"
	line "peut y venir."

	para "Genial, non?"
	done
else
	text "This library is on"
	line "university"
	cont "grounds, but it's"

	para "open for anyone"
	line "to use."

	para "Isn't that great?"
	done
endc

CeladonUniversityLibrary1FGentlemanText:
if DEF(_LOCALE_FR)
	text "Chut! Tu ne vois"
	line "pas que je lis?"
	done
else
	text "Shh! Can't you see"
	line "I'm reading here?"
	done
endc

CeladonUniversityLibrary1FCooltrainerfText:
if DEF(_LOCALE_FR)
	text "Le Prof. Chen a"
	line "enseigne ici: la"

	para "biblio garde tous"
	line "ses articles de"

	para "revue."
	line "Je les ai tous"

	para "lus!"
	done
else
	text "Prof.Oak used to"
	line "teach here, so the"

	para "library has copies"
	line "of all his journal"
	cont "articles."

	para "I've read each one"
	line "cover to cover!"
	done
endc

CeladonUniversityLibrary1FGameboyKidScript:
	showtextfaceplayer .Text
	turnobject LAST_TALKED, DOWN
	end

.Text:
if DEF(_LOCALE_FR)
	text "Mon #dex a une"
	line "cartouche bonus."

	para "Je joue a Tetris!"
	done
else
	text "My #dex has a"
	line "game upgrade."

	para "I'm playing Tetris!"
	done
endc

CeladonUniversityLibrary1FPokefan_fText:
if DEF(_LOCALE_FR)
	text "On echange des"
	line "livres avec la"

	para "bibliotheque de"
	line "Joliberges a Sinnoh."
	done
else
	text "We have a mutual"
	line "lending agreement"

	para "with Canalave"
	line "Library in Sinnoh."
	done
endc

CeladonUniversityLibrary1FCooltrainermScript:
	checkevent EVENT_GOT_FOCUS_BAND_IN_UNIVERSITY
	iftrue_jumptextfaceplayer .Text2
	faceplayer
	opentext
	writetext .Text1
	promptbutton
	verbosegiveitem FOCUS_BAND
	iffalse_endtext
	setevent EVENT_GOT_FOCUS_BAND_IN_UNIVERSITY
	jumpopenedtext .Text2

.Text1:
if DEF(_LOCALE_FR)
	text "Gros examen"
	line "bientot, alors je"

	para "campe ici un"
	line "moment."

	para "Il faut tenir le"
	line "coup."

	para "Ca m'aide."
	done
else
	text "I have a big test"
	line "coming up, so I'm"

	para "planning to be"
	line "here a while."

	para "I just need to"
	line "hang in there."

	para "This is what helps"
	line "me out."
	done
endc

.Text2:
if DEF(_LOCALE_FR)
	text "Pour que tes #mon"
	line "tiennent le coup,"

	para "donne-leur ce"
	line "Bandeau."
	done
else
	text "If you want your"
	line "#mon to hang in"
	cont "there, give them"
	cont "that Focus Band."
	done
endc

CeladonUniversityLibrary1FTeacherText:
if DEF(_LOCALE_FR)
	text "Je suis la"
	line "bibliothecaire."

	para "Besoin d'aide?"
	line "Crie."

	para "Discretement."
	line "C'est une biblio."
	done
else
	text "I'm the head"
	line "librarian."

	para "If you need any-"
	line "thing, just shout."

	para "Quietly, though."
	line "This IS a library."
	done
endc

CeladonUniversityLibrary1FBookText:
if DEF(_LOCALE_FR)
	text "Un livre sur l'art"
	line "floral."

	para "Un Heliatronc en"
	line "couverture."
	done
else
	text "It's a book about"
	line "flower arranging."

	para "A Sunflora is on"
	line "the cover."
	done
endc

CeladonUniversityLibrary1FSignpost1Text:
if DEF(_LOCALE_FR)
	text "Ne derange pas les"
	line "eleves en lecture."
	done
else
	text "Please do not"
	line "disturb students"

	para "reading in the"
	line "library."
	done
endc

CeladonUniversityLibrary1FSignpost2Text:
if DEF(_LOCALE_FR)
	text "Interdit de"
	line "manger ou boire"

	para "dans la bibliotheque."
	done
else
	text "Please do not"
	line "bring food or"

	para "beverages into"
	line "the library."
	done
endc

CeladonUniversityLibrary1FBookshelf1Text:
if DEF(_LOCALE_FR)
	text "Une vieille photo"
	line "dans ce livre."

	para "Erika et un homme"
	line "au sourire doux,"

	para "avec un Mystherbe."
	done
else
	text "Huh? Someone left"
	line "an old photograph"
	cont "in this book."

	para "Erika and a man"
	line "with a gentle"

	para "smile are posing"
	line "happily alongside"
	cont "an Oddish."
	done
endc

CeladonUniversityLibrary1FBookshelf2Text:
if DEF(_LOCALE_FR)
	text "Album photo #mon."
	line "Sur la couverture:"

	para "Scrapbook de Todd"
	line "Snap."
	done
else
	text "It's a photo album"
	line "containing many"

	para "pictures of"
	line "#mon."

	para "“Todd Snap's Scrap-"
	line "folio” is written"
	cont "on the cover."
	done
endc

CeladonUniversityLibrary1FBookshelf3Text:
if DEF(_LOCALE_FR)
	text "Un homme apprend"
	line "a son #mon a jouer"

	para "d'un instrument."
	line "Ils sont complices."

	done
else
	text "It's a book about"
	line "a man who taught"

	para "his #mon to"
	line "play a musical"
	cont "instrument."

	para "They seem the best"
	line "of friends."
	done
endc

CeladonUniversityLibrary1FBookshelf4Text:
if DEF(_LOCALE_FR)
	text "Un livre sur les"
	line "palindromes #mon."

	para "Couverture: Evoli"
	line "et Girafarig."
	done
else
	text "It's a book about"
	line "#mon palin-"
	cont "dromes."

	para "There's an Eevee"
	line "and a Girafarig"
	cont "on the cover."
	done
endc

CeladonUniversityLibrary1FBookshelf5Text:
if DEF(_LOCALE_FR)
	text "Des jouets #mon"
	line "qui s'animent avec"

	para "une Clef Miracle."
	line "Mignons."

	done
else
	text "This book is about"
	line "Toy #mon that"

	para "come to life after"
	line "being wound up by"
	cont "a Wonder Key."

	para "They look kinda"
	line "cute."
	done
endc

CeladonUniversityLibrary1FBookshelf6Text:
if DEF(_LOCALE_FR)
	text "Une marionnette"
	line "#mon qui ne peut"

	para "pas mentir."
	line "Titre: Pinpokeo."

	done
else
	text "It's a book about"
	line "a #mon puppet"
	cont "that can't tell"
	cont "lies."

	para "“Pinpokéo” is"
	line "written on the"
	cont "cover."
	done
endc

CeladonUniversityLibrary1FBookshelf7Text:
if DEF(_LOCALE_FR)
	text "Un livre… attends,"
	line "c'est un jeu video!"

	para "Un flipper #mon"
	line "en couverture."
	done
else
	text "It's a bo…"
	line "wait…"

	para "This is a video"
	line "game!"

	para "A #mon pinball"
	line "machine is shown"

	para "proudly on the"
	line "box art."
	done
endc

CeladonUniversityLibrary1FBookshelf8Text:
if DEF(_LOCALE_FR)
	text "Guide de peche"
	line "pour debutants."

	para "Titre: Odds and"
	line "Rods."
	done
else
	text "It's a book writ-"
	line "ten by a fishing"
	cont "guru providing"

	para "advice to new"
	line "anglers."

	para "“Odds and Rods” is"
	line "written on the"
	cont "cover."
	done
endc

CeladonUniversityLibrary1FBookshelf9Text:
if DEF(_LOCALE_FR)
	text "Manuel du jeu de"
	line "cartes #mon."
	done
else
	text "It's a manual"
	line "explaining the"

	para "#mon Trading"
	line "Card game."
	done
endc

CeladonUniversityLibrary1FBookshelf10Text:
if DEF(_LOCALE_FR)
	text "Recettes #mon!"
	line "Gelée Rondoudou,"

	para "chutney Reptincel,"
	line "encas Goinfrex…"
	done
else
	text "It's a cookbook"
	line "full of #mon-"
	cont "themed recipes!"

	para "Jigglypuff Jello,"
	line "Charmander Chut-"
	cont "ney, Munchlax"
	cont "Snacks…"
	done
endc

CeladonUniversityLibrary1FBookshelf11Text:
if DEF(_LOCALE_FR)
	text "Guide des Poffins."
	line "Un eleveur celebre"

	para "en couverture."
	done
else
	text "It's a guide to"
	line "Poffin blending."

	para "A famous #mon"
	line "breeder is on the"
	cont "cover."
	done
endc

CeladonUniversityLibrary1FBookshelf12Text:
if DEF(_LOCALE_FR)
	text "La vie secrete du"
	line "rire, par Joe King."

	para "Tout en calembours!"
	done
else
	text "“The Secret Life"
	line "of Laughter” by"
	cont "Joe King."
	cont "Puntastic!"
	done
endc
