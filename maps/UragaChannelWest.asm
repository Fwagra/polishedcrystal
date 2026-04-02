UragaChannelWest_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 16,  9, SCARY_CAVE_1F, 2

	def_coord_events

	def_bg_events
	bg_event 17, 11, BGEVENT_JUMPTEXT, ScaryCaveWestSignText
	bg_event 15, 11, BGEVENT_ITEM + BIG_PEARL, EVENT_URAGA_CHANNEL_WEST_HIDDEN_BIG_PEARL

	def_object_events
	object_event 13,  9, SPRITE_ENGINEER, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, UragaChannelWestEngineerText, -1

UragaChannelWestEngineerText:
if DEF(_LOCALE_FR)
	text "Les courants"
	line "charrient toutes"
	cont "sortes d'epaves."

	para "Je fouille avec"
	line "un detecteur de"
	cont "metaux."

	para "Un Cherche Objet"
	line "serait plus utile…"
else
	text "The currents wash"
	line "up all kinds of"
	cont "debris here."

	para "I'm using a metal"
	line "detector to find"
	cont "hidden items."

	para "But an Itemfinder"
	line "would work better…"
endc
	done

ScaryCaveWestSignText:
if DEF(_LOCALE_FR)
	text "Canal Uraga"
	line "plus loin"

	para "Entree par l'ouest"
	line "depuis la Route"

	cont "18 uniquement!"
else
	text "Uraga Channel"
	line "Ahead"

	para "Enter west from"
	line "Route 18 only!"
endc
	done
