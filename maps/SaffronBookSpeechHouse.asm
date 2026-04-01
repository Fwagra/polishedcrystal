SaffronBookSpeechHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, SAFFRON_CITY, 18
	warp_event  3,  7, SAFFRON_CITY, 18

	def_coord_events

	def_bg_events
	bg_event  5,  1, BGEVENT_JUMPSTD, picturebookshelf
	bg_event  7,  1, BGEVENT_JUMPSTD, difficultbookshelf

	def_object_events
	object_event  2,  3, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_COMMAND, jumptextfaceplayer, SaffronBookSpeechHouseLassText, -1
	object_event  3,  3, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptext, SaffronBookSpeechHouseBookText, -1

SaffronBookSpeechHouseLassText:
if DEF(_LOCALE_FR)
	text "J'adore lire!"

	para "J'ai emprunté"
	line "plein de livres à"

	para "la bibliothèque"
	line "de l'université"
	cont "d'Acajou."
	done
else
	text "I absolutely love"
	line "to read!"

	para "I borrowed a bunch"
	line "of books from the"

	para "university library"
	line "in Celadon."
	done
endc

SaffronBookSpeechHouseBookText:
if DEF(_LOCALE_FR)
	text "Une pile de"
	line "livres"
	cont "d'histoires."

	para "La Princesse et"
	line "le #mon,"

	para "Edward aux mains"
	line "Cizayox, Dr.Jekyll"
	cont "& M.Mime…"
	done
else
	text "It's a stack of"
	line "story books."

	para "The Princess and"
	line "the #mon,"

	para "Edward Scizor-"
	line "hands, Dr.Jekyll"
	cont "& Mr.Mime…"
	done
endc
