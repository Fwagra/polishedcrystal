CeladonDeptStore1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  7,  7, CELADON_CITY, 1
	warp_event  8,  7, CELADON_CITY, 1
	warp_event 15,  0, CELADON_DEPT_STORE_2F, 2
	warp_event  2,  0, CELADON_DEPT_STORE_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event 14,  0, BGEVENT_JUMPTEXT, CeladonDeptStore1FDirectoryText

	def_object_events
	object_event 10,  1, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonDeptStore1FReceptionistText, -1
	object_event 11,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_WANDER, 1, 1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonDeptStore1FGentlemanText, -1
	object_event  5,  3, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonDeptStore1FTeacherText, -1

CeladonDeptStore1FReceptionistText:
if DEF(_LOCALE_FR)
	text "Bonjour! Bien-"
	line "venue au Centre"
	cont "Commercial de"
	cont "Céladopole!"

	para "L'annuaire est"
	line "au mur."
	done
else
	text "Hello! Welcome to"
	line "Celadon Dept."
	cont "Store!"

	para "The directory is"
	line "on the wall."
	done
endc

CeladonDeptStore1FGentlemanText:
if DEF(_LOCALE_FR)
	text "Ce Centre Comm."
	line "est de la même"

	para "chaîne que celui"
	line "de Doublonville."

	para "Ils ont été réno-"
	line "vés ensemble."
	done
else
	text "This Dept.Store is"
	line "part of the same"

	para "chain as the one"
	line "in Goldenrod City."

	para "They were both"
	line "renovated at the"
	cont "same time."
	done
endc

CeladonDeptStore1FTeacherText:
if DEF(_LOCALE_FR)
	text "C'est ma première"
	line "fois ici."

	para "Quelle taille…"

	para "J'ai peur de me"
	line "perdre."
	done
else
	text "This is my first"
	line "time here."

	para "It's so big…"

	para "I'm afraid I'll"
	line "get lost."
	done
endc

CeladonDeptStore1FDirectoryText:
if DEF(_LOCALE_FR)
	text "1F: Accueil"

	para "2F: Marché"
	line "    Dresseur"

	para "3F: Salon"
	line "    Tech"

	para "4F: Cadeaux"
	line "    Sages"

	para "5F: Pharmacie"

	para "6F: Atrium"
	line "    (toit)"
	done
else
	text "1F: Service"
	line "    Counter"

	para "2F: Trainer's"
	line "    Market"

	para "3F: Tech Shop"

	para "4F: Wiseman Gifts"

	para "5F: Drug Store"

	para "6F: Rooftop"
	line "    Atrium"
	done
endc
