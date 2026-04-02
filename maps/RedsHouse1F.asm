RedsHouse1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, PALLET_TOWN, 1
	warp_event  3,  7, PALLET_TOWN, 1
	warp_event  7,  0, REDS_HOUSE_2F, 1

	def_coord_events

	def_bg_events
	bg_event  5,  1, BGEVENT_UP, RedsHouse1FTVScript

	def_object_events
	object_event  5,  3, SPRITE_REDS_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, RedsMom, -1

RedsMom:
	checkevent EVENT_MET_REDS_MOM
	iftrue_jumptextfaceplayer .Text2
	setevent EVENT_MET_REDS_MOM
	jumpthistextfaceplayer

if DEF(_LOCALE_FR)
	text "Salut!"

	para "RED est parti il"
	line "y a longtemps."

	para "Il n'a même pas"
	line "appelé... Je ne"

	para "sais vraiment pas"
	line "ce qu'il fait en"
	cont "ce moment."

	para "A vrai dire, je me"
	line "fais du souci."
	done
else
	text "Hi!"

	para "Red's been away"
	line "for a long time."

	para "He hasn't called"
	line "either, so I have"

	para "no idea where he"
	line "is or what he's"
	cont "been doing."

	para "They say that no"
	line "word is proof that"

	para "he's doing fine,"
	line "but I do worry"
	cont "about him."
	done
endc

.Text2:
if DEF(_LOCALE_FR)
	text "Je me fais du sou-"
	line "ci pour RED mais"

	para "c'est un garçon..."
	line "Il est indépendant"

	para "maintenant."
	done
else
	text "I worry about Red"
	line "getting hurt or"

	para "sick, but he's a"
	line "boy. I'm proud"

	para "that he is doing"
	line "what he wants to"
	cont "do."
	done
endc

RedsHouse1FTVScript:
	jumpthistext

if DEF(_LOCALE_FR)
	text "Il y a des émis-"
	line "sions qui ne pas-"
	cont "sent pas à Johto."
	done
else
	text "They have programs"
	line "that aren't shown"
	cont "in Johto…"
	done
endc
