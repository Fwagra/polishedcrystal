GoldenrodPokecomCenterOffice_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  0,  8, GOLDENROD_POKECOM_CENTER_1F, 3
	warp_event  1,  8, GOLDENROD_POKECOM_CENTER_1F, 3

	def_coord_events

	def_bg_events
	bg_event  3,  2, BGEVENT_JUMPTEXT, RangiComputerText
	bg_event  6,  2, BGEVENT_JUMPTEXT, LunaComputerText
	bg_event  9,  2, BGEVENT_JUMPTEXT, FredrikComputerText
	bg_event  9,  5, BGEVENT_JUMPTEXT, VulcanComputerText
	bg_event  6,  5, BGEVENT_JUMPTEXT, AizawaComputerText
	bg_event  4,  2, BGEVENT_READ, RangiKeyboardScript

	def_object_events
	object_event  4,  4, SPRITE_SCIENTIST_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_RANGI, OBJECTTYPE_COMMAND, jumptextfaceplayer, AdminRangiText, -1
	object_event  7,  3, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, AdminLunaText, -1
	object_event 10,  3, SPRITE_COOL_DUDE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, AdminFredrikText, -1
	object_event  7,  6, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, AdminAizawaText, -1
	object_event 10,  6, SPRITE_PI, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_AZURE, OBJECTTYPE_COMMAND, jumptextfaceplayer, AdminVulcanText, -1

	object_const_def
	const GOLDENRODPOKECOMCENTEROFFICE_RANGI

AdminRangiText:
if DEF(_LOCALE_FR)
	text "Rangi: J'espère"
	line "tu profites"

	para "de ton aventure"
	line "dans ce jeu!"

	para "On a galéré à"
	line "tout faire tenir."

	para "Y avait à peine"
	line "la place pour"
	cont "mon sprite!"
	done
else
	text "Rangi: I hope"
	line "you're enjoying"

	para "your journey"
	line "through this game!"

	para "We had trouble"
	line "fitting all the"
	cont "data in for it."

	para "There was barely"
	line "even enough room"
	cont "for my sprite!"
	done
endc

AdminLunaText:
if DEF(_LOCALE_FR)
	text "Luna: La 1re fois"
	line "que tu as fait un"

	para "Wonder Trade avec"
	line "une autre région,"

	para "t'étais pas"
	line "impressionné?"

	para "J'ai créé le"
	line "système ici,"
	cont "à DOUBLONVILLE!"
	done
else
	text "Luna: When you"
	line "Wonder Traded"

	para "with someone in"
	line "another region"

	para "for the first"
	line "time, weren't you"
	cont "impressed?"

	para "I built the orig-"
	line "inal system right"
	cont "here in Goldenrod!"
	done
endc

AdminFredrikText:
if DEF(_LOCALE_FR)
	text "Fredrik: Le PC de"
	line "BILL est open-"
	cont "source,"

	para "donc j'ai pu"
	line "réécrire et"

	para "améliorer sa base!"
	done
else
	text "Fredrik: Bill's PC"
	line "Storage System"
	cont "is open-source,"

	para "so I was able to"
	line "completely re-"

	para "write and upgrade"
	line "his database!"
	done
endc

AdminAizawaText:
if DEF(_LOCALE_FR)
	text "Aizawa: Dialogues,"
	line "maps, sprites,"
	cont "équipes..."

	para "Game Freak à"
	line "KANTO a de la"
	cont "chance"

	para "d'avoir une"
	line "équipe!"
	done
else
	text "Aizawa: Dialog,"
	line "map designs,"
	cont "character sprites,"
	cont "trainer parties…"

	para "Game Freak over"
	line "in Kanto is lucky"

	para "to have a whole"
	line "team for this!"
	done
endc

AdminVulcanText:
if DEF(_LOCALE_FR)
	text "Vulcan: Ca va,"
	line "la météo?"

	para "C'est pas du"
	line "small talk..."

	para "Je l'ai codée!"

	para "On pensait que"
	line "c'était pas"
	cont "possible..."

	para "J'ai eu tort!"
	done
else
	text "Vulcan: How's the"
	line "weather?"

	para "That's no small"
	line "talk… I actually"
	cont "implemented it!"

	para "We thought it"
	line "couldn't be done…"

	para "I proved myself"
	line "wrong!"
	done
endc

VulcanComputerText:
if DEF(_LOCALE_FR)
	text "Une carte météo"
	line "est affichée."

	para "Il pleut à JOHTO."
	done
else
	text "A weather map"
	line "is displayed on"
	cont "the screen."

	para "It's showing"
	line "rain in Johto."
	done
endc

RangiComputerText:
if DEF(_LOCALE_FR)
	text "Optimizing…"
	line "clignote."

	para "Ca a l'air long..."
	done
else
	text "“Optimizing…” is"
	line "blinking on the"
	cont "screen."

	para "It seems to be"
	line "taking a while."
	done
endc

LunaComputerText:
if DEF(_LOCALE_FR)
	text "Le trafic réseau"
	line "des Wonder Trades"

	para "défile à l'écran."
	done
else
	text "Network traffic"
	line "from Wonder Trades"

	para "is streaming by"
	line "on the screen."
	done
endc

FredrikComputerText:
if DEF(_LOCALE_FR)
	text "Une douzaine de"
	line "fenêtres sont"

	para "ouvertes, une"
	line "par fonction."
	done
else
	text "A dozen windows"
	line "are open at once,"

	para "each related to"
	line "its own feature."
	done
endc

AizawaComputerText:
if DEF(_LOCALE_FR)
	text "Un programme nommé"
	line "Polished Map"

	para "affiche une île"
	line "tropicale à moitié"
	cont "dessinée."
	done
else
	text "A program called"
	line "Polished Map is"
	cont "displaying a"

	para "half-drawn trop-"
	line "ical island."
	done
endc

RangiKeyboardScript:
	turnobject GOLDENRODPOKECOMCENTEROFFICE_RANGI, UP
	showemote EMOTE_SHOCK, GOLDENRODPOKECOMCENTEROFFICE_RANGI, 10
	jumpthistext

if DEF(_LOCALE_FR)
	text "Rangi: Hé! Si tu"
	line "veux hacker le"
	cont "jeu, utilise ton"
	cont "propre ordi!"
	done
else
	text "Rangi: Hey! If you"
	line "want to hack the"
	cont "game, use your"
	cont "own computer!"
	done
endc
