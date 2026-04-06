SinjohRuinsHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, SINJOH_RUINS, 2
	warp_event  3,  7, SINJOH_RUINS, 2

	def_coord_events

	def_bg_events
	bg_event  1,  1, BGEVENT_JUMPSTD, difficultbookshelf
	bg_event  2,  1, BGEVENT_JUMPSTD, difficultbookshelf

	def_object_events
	object_event  5,  4, SPRITE_CYNTHIA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, SinjohRuinsHouseCynthiaScript, EVENT_SINJOH_RUINS_HOUSE_CYNTHIA
	object_event  5,  3, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, SinjohRuinsHousePokefanmText, -1
	object_event  2,  4, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SinjohRuinsHouseGrampsScript, -1
	pokemon_event  2,  3, ABRA, SPRITEMOVEDATA_POKEMON, -1, PAL_NPC_BROWN, SinjohRuinsHouseAbraText, -1

	object_const_def
	const SINJOHRUINSHOUSE_CYNTHIA

SinjohRuinsHouseGrampsScript:
	faceplayer
	opentext
	writetext SinjohRuinsHouseGrampsText
	yesorno
	iffalse_jumpopenedtext SinjohRuinsHouseGrampsNoText
	writetext SinjohRuinsHouseGrampsYesText
	waitbutton
	closetext
	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx
	warp NEW_BARK_TOWN, 15, 6
	end

SinjohRuinsHouseCynthiaScript:
	checkevent EVENT_BEAT_CYNTHIA
	iftrue_jumptextfaceplayer SinjohRuinsHouseCynthiaAfterText
	faceplayer
	opentext
	writetext SinjohRuinsHouseCynthiaChallengeText
	yesorno
	iffalse_jumpopenedtext SinjohRuinsHouseCynthiaNoText
	writetext SinjohRuinsHouseCynthiaYesText
	waitbutton
	closetext
	winlosstext SinjohRuinsHouseCynthiaWinText, 0
	setlasttalked SINJOHRUINSHOUSE_CYNTHIA
	loadtrainer CYNTHIA, 2
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_CYNTHIA
	jumpthistext

SinjohRuinsHouseCynthiaAfterText:
if DEF(_LOCALE_FR)
	text "Cynthia: Quel"
	line "combat incroyable!"

	para "Tu es un super"
	line "dresseur. Reviens"

	para "me voir un de"
	line "ces jours!"
	done
else
	text "Cynthia: What an"
	line "incredible battle!"

	para "You're a great"
	line "trainer, and it"

	para "would make me"
	line "happy to see you"
	cont "again sometime."
	done
endc

SinjohRuinsHousePokefanmText:
if DEF(_LOCALE_FR)
	text "Autrefois, les"
	line "gens vivaient"

	para "plus proches des"
	line "#mon."

	para "Mythes et légendes"
	line "naissaient autour"

	para "des #mon"
	line "puissants, puis"

	para "voyageaient entre"
	line "les régions."

	para "Ces ruines mêlent"
	line "les peuples des"

	para "Ruines d'Alpha et"
	line "la Colonne Lance"

	para "de Sinnoh."
	done
else
	text "A long time ago,"
	line "people used to"

	para "have closer bonds"
	line "with #mon."

	para "Myths and legends"
	line "formed about"
	cont "powerful #mon,"

	para "and those legends"
	line "were carried to"
	cont "different regions."

	para "The ruins here"
	line "have been influ-"
	cont "enced by the"

	para "ancient peoples of"
	line "Alph in Johto and"

	para "Spear Pillar in"
	line "Sinnoh."
	done
endc

SinjohRuinsHouseGrampsText:
if DEF(_LOCALE_FR)
	text "Tu sembles perdu,"
	line "sans savoir"

	para "pourquoi tu es là."

	para "Tu veux que mon"
	line "Abra te Teleporte"

	para "chez toi?"
	done
else
	text "You seem so out"
	line "of place, not even"

	para "knowing why you"
	line "are here."

	para "Do you want my"
	line "Abra to Teleport"
	cont "you back home?"
	done
endc

SinjohRuinsHouseGrampsYesText:
if DEF(_LOCALE_FR)
	text "Très bien. Pense"
	line "fort à ta maison."
	done
else
	text "OK, OK. Picture"
	line "your house in your"
	cont "mind…"
	done
endc

SinjohRuinsHouseGrampsNoText:
if DEF(_LOCALE_FR)
	text "OK. Alors bon"
	line "courage!"
	done
else
	text "OK, OK. The best"
	line "of luck to you!"
	done
endc

SinjohRuinsHouseAbraText:
	text "Abra: Aabra…"
	done

SinjohRuinsHouseCynthiaChallengeText:
if DEF(_LOCALE_FR)
	text "Cynthia: Salut,"
	line "<PLAYER>."

	para "Tu vas bien?"

	para "Tu as refait le"
	line "Conseil 4! Bravo!"

	para "Je me demande ce"
	line "que tu as appris"

	para "depuis notre duel."

	para "On recommence,"
	line "<PLAYER>?"
	done
else
	text "Cynthia: Hello,"
	line "<PLAYER>."

	para "Have you been"
	line "keeping well?"

	para "You won a rematch"
	line "against the Elite"
	cont "Four! Well done!"

	para "I'm curious about"
	line "what you learned"
	cont "since we last met."

	para "Shall we battle"
	line "again, <PLAYER>?"
	done
endc

SinjohRuinsHouseCynthiaNoText:
if DEF(_LOCALE_FR)
	text "Cynthia: Reviens"
	line "si tu changes"
	cont "d'avis."
	done
else
	text "Cynthia: Come back"
	line "any time if you"
	cont "change your mind."
	done
endc

SinjohRuinsHouseCynthiaYesText:
if DEF(_LOCALE_FR)
	text "Cynthia: Avant"
	line "d'envoyer mes"

	para "#mon, mon cœur"
	line "s'emballe…"
	done
else
	text "Cynthia: Before"
	line "I send out my"
	cont "#mon,"

	para "my heart always"
	line "begins to race…"
	done
endc

SinjohRuinsHouseCynthiaWinText:
if DEF(_LOCALE_FR)
	text "Je ne me souviens"
	line "pas d'avoir été"

	para "à ce point"
	line "dominée!"
	done
else
	text "I can't remember"
	line "the last time I"

	para "was outclassed"
	line "like this!"
	done
endc
