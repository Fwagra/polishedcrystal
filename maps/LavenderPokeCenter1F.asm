LavenderPokeCenter1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  7, LAVENDER_TOWN, 1
	warp_event  6,  7, LAVENDER_TOWN, 1
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events
	bg_event 10,  1, BGEVENT_READ, PokemonJournalMrFujiScript

	def_object_events
	pc_nurse_event  5, 1
	object_event  1,  5, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, LavenderPokeCenter1FYoungsterScript, -1
	object_event 11,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, LavenderPokeCenter1FGentlemanText, -1
	object_event  6,  3, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, LavenderPokeCenter1FTeacherText, -1

PokemonJournalMrFujiScript:
	setflag ENGINE_READ_MR_FUJI_JOURNAL
	jumpthistext

if DEF(_LOCALE_FR)
	text "Journal #mon"

	para "Editeur: M.Fuji"
	line "a refuse"

	para "l'interview."

	para "Il est adore"
	line "a Lavandia."
	done
else
	text "#mon Journal"

	para "Editor: The shy"
	line "Mr.Fuji turned"

	para "down our interview"
	line "requests."

	para "He is a kindly man"
	line "who is adored and"

	para "respected in Lav-"
	line "ender Town."
	done
endc

LavenderPokeCenter1FYoungsterScript:
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iffalse_jumptextfaceplayer .NoMachinePartText
	checkevent EVENT_EXORCISED_LAV_RADIO_TOWER
	iffalse_jumptextfaceplayer .NoExorcismText
	jumpthistextfaceplayer

if DEF(_LOCALE_FR)
	text "Le directeur de"
	line "la Tour Radio"

	para "se réjouit que"
	line "les émissions"

	para "puissent"
	line "reprendre,"
	cont "maintenant"

	para "que la Centrale"
	line "est réparée."
	done
else
	text "The Director of"
	line "the Radio Station"
	cont "sure was happy."

	para "He said they're"
	line "finally back on"
	cont "the air!"
	done
endc

.NoMachinePartText:
if DEF(_LOCALE_FR)
	text "Si la Centrale"
	line "ne marche pas,"

	para "le Train"
	line "Magnétique ne"
	cont "peut pas circuler."

	para "Et même la"
	line "Tour Radio"

	para "ne peut plus"
	line "rien émettre."
	done
else
	text "If the Power Plant"
	line "isn't running, the"

	para "Magnet Train won't"
	line "run either…"

	para "It also means the"
	line "Radio Tower can't"
	cont "broadcast…"
	done
endc

.NoExorcismText:
if DEF(_LOCALE_FR)
	text "La Centrale"
	line "marche, mais"
	cont "la Tour Radio"

	para "ne diffuse"
	line "toujours pas."

	para "Que se passe-t-il?"
	done
else
	text "The Power Plant is"
	line "running smoothly"
	cont "again, but the"

	para "Radio Tower still"
	line "isn't broadcasting."

	para "What's going on"
	line "over there?"
	done
endc

LavenderPokeCenter1FGentlemanText:
if DEF(_LOCALE_FR)
	text "Au nord de"
	line "Lavandia,"

	para "il y a la"
	line "Grotte."

	para "Traverse-la pour"
	line "la Centrale."
	done
else
	text "To the north of"
	line "Lavender is Rock"

	para "Tunnel. Go through"
	line "it to get to the"
	cont "Power Plant."
	done
endc

LavenderPokeCenter1FTeacherText:
if DEF(_LOCALE_FR)
	text "A la radio,"
	line "il y a la"
	cont "# Flute."

	para "Mais il te faut"
	line "la Carte+."
	done
else
	text "There's a radio"
	line "program that plays"
	cont "# Flute music."

	para "Oh? Ah, your radio"
	line "needs an Expn.Card"
	cont "to tune into it."
	done
endc
