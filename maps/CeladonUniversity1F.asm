CeladonUniversity1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 14, 19, CELADON_CITY, 13
	warp_event 15, 19, CELADON_CITY, 13
	warp_event 25, 12, CELADON_UNIVERSITY_2F, 1
	warp_event 21, 12, CELADON_UNIVERSITY_LIBRARY_1F, 1
	warp_event 15,  0, CELADON_UNIVERSITY_PRINCIPALS_OFFICE, 1
	warp_event  3,  4, CELADON_UNIVERSITY_CLASSROOM_1, 1
	warp_event  9,  4, CELADON_UNIVERSITY_CLASSROOM_2, 1
	warp_event 21,  4, CELADON_UNIVERSITY_CLASSROOM_3, 1
	warp_event 27,  4, CELADON_UNIVERSITY_CLASSROOM_4, 1
	warp_event  3, 12, CELADON_UNIVERSITY_LOUNGE, 1

	def_coord_events

	def_bg_events
	bg_event 14,  0, BGEVENT_JUMPTEXT, CeladonUniversity1FPrincipalsOfficeSignText
	bg_event  2,  4, BGEVENT_JUMPTEXT, CeladonUniversity1FClassroom1SignText
	bg_event  8,  4, BGEVENT_JUMPTEXT, CeladonUniversity1FClassroom2SignText
	bg_event 20,  4, BGEVENT_JUMPTEXT, CeladonUniversity1FClassroom3SignText
	bg_event 26,  4, BGEVENT_JUMPTEXT, CeladonUniversity1FClassroom4SignText
	bg_event  2, 12, BGEVENT_JUMPTEXT, CeladonUniversity1FStudentLoungeSignText
	bg_event 20, 12, BGEVENT_JUMPTEXT, CeladonUniversity1FLibrarySignText
	bg_event 22,  5, BGEVENT_JUMPTEXT, CeladonUniversity1FTrophyCaseSignText
	bg_event 23,  5, BGEVENT_JUMPTEXT, CeladonUniversity1FTrophyCaseSignText
	bg_event  6, 13, BGEVENT_JUMPTEXT, CeladonUniversity1FTrophyCaseSignText
	bg_event  7, 13, BGEVENT_JUMPTEXT, CeladonUniversity1FTrophyCaseSignText
	bg_event 26, 13, BGEVENT_JUMPTEXT, CeladonUniversity1FBookshelfText
	bg_event 27, 13, BGEVENT_JUMPTEXT, CeladonUniversity1FBookshelfText

	def_object_events
	object_event  6,  5, SPRITE_POKEMANIAC, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversity1FSuperNerdText, -1
	object_event 16,  4, SPRITE_PICNICKER, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversity1FLassText, -1
	object_event 25,  5, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversity1FCooltrainermText, -1
	object_event 13,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversity1FYoungsterText, -1
	object_event  4, 15, SPRITE_CHILD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, (1 << MORN) | (1 << DAY), PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversity1FChildText, -1
	object_event  6, 15, SPRITE_POKEFAN_M, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 3, (1 << EVE) | (1 << NITE), PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversity1FPokefanmText, -1
	object_event 14, 14, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversity1FReceptionistText, -1
	object_event 23, 13, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversity1FCooltrainerfText, -1

CeladonUniversity1FSuperNerdText:
if DEF(_LOCALE_FR)
	text "D'autres mondes"
	line "existent, disent"

	para "certains savants."
	line "Sans #mon?"

	para "Quel désastre!"
	done
else
	text "Some academics be-"
	line "lieve there are"

	para "other universes"
	line "parallel to this"
	cont "one."

	para "Does that mean"
	line "there's a universe"

	para "without any"
	line "#mon?"

	para "That would be"
	line "tragic!"
	done
endc

CeladonUniversity1FLassText:
if DEF(_LOCALE_FR)
	text "On peut tout"
	line "étudier ici:"

	para "de l'art floral"
	line "à la psycho"

	para "#mon!"
	done
else
	text "This place offers"
	line "courses of study"

	para "in everything from"
	line "flower arranging"

	para "to #mon"
	line "psychology!"
	done
endc

CeladonUniversity1FCooltrainermText:
if DEF(_LOCALE_FR)
	text "Ici, tous sont"
	line "dresseurs #mon."

	para "L'admission: une"
	line "série de combats"

	para "#mon."
	done
else
	text "Everyone at this"
	line "university is a"
	cont "#mon trainer."

	para "To get offered a"
	line "place here, you"

	para "have to pass a"
	line "series of #mon"
	cont "battling tests."
	done
endc

CeladonUniversity1FYoungsterText:
if DEF(_LOCALE_FR)
	text "Magicarpe: notre"
	line "mascotte #mon!"

	para "Symbole: chacun"
	line "peut viser haut!"
	done
else
	text "Magikarp is the"
	line "university's mascot"
	cont "#mon."

	para "It's a symbol that"
	line "anybody can aspire"
	cont "to greatness!"
	done
endc

CeladonUniversity1FChildText:
if DEF(_LOCALE_FR)
	text "Beurk! Je trouve"
	line "pas mon cours…"

	para "Je vais être en"
	line "retard!"
	done
else
	text "Ugh! I can't find"
	line "my next class…"

	para "I'm gonna be late!"
	done
endc

CeladonUniversity1FPokefanmText:
if DEF(_LOCALE_FR)
	text "Je suis l'agent"
	line "d'entretien!"

	para "Attention, sol"
	line "glissant!"
	done
else
	text "I'm the janitor!"

	para "Be careful, the"
	line "floor is wet!"
	done
endc

CeladonUniversity1FReceptionistText:
if DEF(_LOCALE_FR)
	text "Bienvenue à"
	line "l'université de"

	para "Céladopole!"
	line "Les salles et le"

	para "bureau du direc-"
	line "teur sont au fond"

	para "du couloir."
	line "Bibliothèque"

	para "à droite, salon"
	line "étudiant à gauche."

	para "Cafet', piscine"
	line "et infirmerie:"

	para "à l'étage."
	done
else
	text "Welcome to Celadon"
	line "University!"

	para "Classrooms and the"
	line "principal's office"
	cont "are down the hall."

	para "The library is to"
	line "your right, the"

	para "student lounge to"
	line "your left."

	para "The cafeteria,"
	line "pool, and nurse's"

	para "office are up-"
	line "stairs."
	done
endc

CeladonUniversity1FCooltrainerfText:
if DEF(_LOCALE_FR)
	text "Je veux etre"
	line "infirmière pour"

	para "#mon. Tant"
	line "d'espèces: dur"

	para "à tout savoir!"
	done
else
	text "I'm studying to be"
	line "a #mon nurse."

	para "With so many spe-"
	line "cies out there,"

	para "it's a steep"
	line "learning curve!"
	done
endc

CeladonUniversity1FPrincipalsOfficeSignText:
if DEF(_LOCALE_FR)
	text "Bureau du"
	line "directeur"
	done
else
	text "Principal's Office"
	done
endc

CeladonUniversity1FClassroom1SignText:
if DEF(_LOCALE_FR)
	text "W2 Arts"
	done
else
	text "W2 Art"
	done
endc

CeladonUniversity1FClassroom2SignText:
if DEF(_LOCALE_FR)
	text "W1 Histoire"
	done
else
	text "W1 History"
	done
endc

CeladonUniversity1FClassroom3SignText:
if DEF(_LOCALE_FR)
	text "E1 Sciences"
	done
else
	text "E1 Science"
	done
endc

CeladonUniversity1FClassroom4SignText:
if DEF(_LOCALE_FR)
	text "E2 Combat"
	done
else
	text "E2 Battling"
	done
endc

CeladonUniversity1FStudentLoungeSignText:
if DEF(_LOCALE_FR)
	text "Salon étudiant"
	done
else
	text "Student Lounge"
	done
endc

CeladonUniversity1FLibrarySignText:
if DEF(_LOCALE_FR)
	text "Bibliothèque"
	done
else
	text "Library"
	done
endc

CeladonUniversity1FTrophyCaseSignText:
if DEF(_LOCALE_FR)
	text "Des coupes et"
	line "médailles partout."
	done
else
	text "The case is full"
	line "of trophies and"
	cont "medals."
	done
endc

CeladonUniversity1FBookshelfText:
if DEF(_LOCALE_FR)
	text "Des tonnes"
	line "d'albums promo."

	para "Les élèves ont"
	line "tout barbouille."
	done
else
	text "There are tons of"
	line "yearbooks here."

	para "Students have"
	line "scribbled all over"
	cont "them."
	done
endc
