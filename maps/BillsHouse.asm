BillsHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, CERULEAN_CAPE, 1
	warp_event  3,  7, CERULEAN_CAPE, 1

	def_coord_events

	def_bg_events
	bg_event  6,  1, BGEVENT_READ, PokemonJournalBillScript
	bg_event  7,  1, BGEVENT_READ, PokemonJournalBillScript
	bg_event  5,  1, BGEVENT_JUMPTEXT, BillsHousePCText

	def_object_events
	object_event  2,  3, SPRITE_BILL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, BillsHouseBillScript, EVENT_NEVER_MET_BILL

PokemonJournalBillScript:
	setflag ENGINE_READ_BILL_JOURNAL
	jumpthistext

if DEF(_LOCALE_FR)
	text "Journal #mon"

	para "Article spécial:"
	line "#Maniac Léo!"

	para "Léo a inventé le"
	line "Système de"
	cont "Stockage"
	cont "#mon"

	para "pour sa vaste"
	line "collection."

	para "On dit que son"
	line "premier #mon"

	para "était un Abra."
	done
else
	text "#mon Journal"

	para "Special Feature:"
	line "#Maniac Bill!"

	para "Bill invented the"
	line "#mon Storage"
	cont "System to hold his"

	para "own vast #mon"
	line "collection."

	para "Apparently, the"
	line "first one he"

	para "caught was an"
	line "Abra."
	done
endc

BillsHousePCText:
if DEF(_LOCALE_FR)
	text "Un modèle 3D de"
	line "Porygon tourne."
	done
else
	text "There's a spinning"
	line "3D model of a"
	cont "Porygon."
	done
endc

BillsHouseBillScript:
	checkevent EVENT_BEAT_POKEMANIAC_BILL
	iftrue_jumptextfaceplayer .AfterText
	special SpecialBeastsCheck
	iffalse_jumptextfaceplayer .IntroText
	faceplayer
	opentext
	writetext .IntroText
	waitbutton
	writetext .SeenText
	waitbutton
	closetext
	winlosstext .BeatenText, 0
	loadtrainer BILL_T, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_POKEMANIAC_BILL
	jumpthistext

.AfterText:
if DEF(_LOCALE_FR)
	text "Quel combat"
	line "d'enfer!"

	para "Tout #Maniac"
	line "serait ravi"

	para "de voir tes"
	line "captures."
	done
else
	text "That was one rad"
	line "battle!"

	para "Any #Maniac"
	line "would be thrilled"

	para "to see what"
	line "you've caught."
	done
endc

.IntroText:
if DEF(_LOCALE_FR)
	text "Léo: Evoli est un"
	line "#mon fascinant."

	para "Certains disent"
	line "que les 3 fauves"

	para "légendaires de"
	line "Johto étaient"

	para "3 #mon qui"
	line "évoluent d'Evoli."

	para "Mais c'est peut-"
	line "être une rumeur."

	para "J'aimerais tant"
	line "les voir…"
	done
else
	text "Bill: Eevee is"
	line "such a fascinating"
	cont "#mon."

	para "Some say that the"
	line "three legendary"

	para "beasts of Johto"
	line "were once three"

	para "#mon that"
	line "evolve from Eevee."

	para "But that might be"
	line "only a rumor."

	para "Still, I'd sure"
	line "love to see them…"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Tu as attrapé les"
	line "3 fauves"
	cont "légendaires?"

	para "Trop cool,"
	line "<PLAYER>!"

	para "Tu crois qu'ils"
	line "ont un lien"
	cont "avec Evoli?"

	para "Je dois te"
	line "montrer mon"
	cont "équipe!"

	para "Compare les"
	line "3 légendes"

	para "a ma propre"
	line "équipe #mon!"
	done
else
	text "You caught all"
	line "three of the"
	cont "legendary beasts?"

	para "That's so cool,"
	line "<PLAYER>!"

	para "Do you think they"
	line "were once related"
	cont "to Eevee?"

	para "Oh man, now I have"
	line "to show you my"
	cont "team!"

	para "You can compare"
	line "the three legends"

	para "you battled to"
	line "my own #mon!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Yeehah!"
	done
else
	text "Yeehah!"
	done
endc
