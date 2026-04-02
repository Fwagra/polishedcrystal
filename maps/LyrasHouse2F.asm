LyrasHouse2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  0,  0, LYRAS_HOUSE_1F, 3

	def_coord_events

	def_bg_events
	bg_event  4,  1, BGEVENT_JUMPTEXT, LyrasHousePCText
	bg_event  5,  1, BGEVENT_READ, LyrasHouseRadio
	bg_event  7,  1, BGEVENT_READ, PokemonJournalProfElmScript

	def_object_events
	object_event  2,  3, SPRITE_LYRA, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, LyrasHouseLyraText, EVENT_LYRA_IN_HER_ROOM
	pokemon_event  3,  3, PIDGEOT, SPRITEMOVEDATA_POKEMON, -1, PAL_NPC_BROWN, LyrasHousePidgeotText, EVENT_LYRA_IN_HER_ROOM
	object_event  6,  2, SPRITE_N64, SPRITEMOVEDATA_STILL, 0, 0, -1, PAL_NPC_N64, OBJECTTYPE_COMMAND, jumptext, LyrasHouseN64Text, -1

LyrasHouseRadio:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftruefwd .NormalRadio
	checkevent EVENT_LISTENED_TO_INITIAL_RADIO
	iftruefwd .AbbreviatedRadio
	playmusic MUSIC_POKEMON_TALK
	opentext
	writetext LyrasRadioText1
	pause 45
	writetext LyrasRadioText2
	pause 45
	writetext LyrasRadioText3
	pause 45
	musicfadeout MUSIC_NEW_BARK_TOWN, 16
	writetext LyrasRadioText4
	pause 45
	closetext
	setevent EVENT_LISTENED_TO_INITIAL_RADIO
	end

.NormalRadio:
	jumpstd radio1

.AbbreviatedRadio:
	opentext
	writetext LyrasRadioText4
	pause 45
	endtext

LyrasHouseLyraText:
if DEF(_LOCALE_FR)
	text "Célesta: Salut,"
	line "<PLAYER>!"

	para "Hmm... Mes #MON"
	line "ont peut-être pris"

	para "un peu de poids"
	line "ces temps-ci..."
	done
else
	text "Lyra: Hi, <PLAYER>!"

	para "Hmm… My #mon"
	line "may be putting"

	para "on some weight"
	line "lately…"
	done
endc

LyrasHousePidgeotText:
if DEF(_LOCALE_FR)
	text "ROUCARNAGE: Pi!"
	done
else
	text "Pidgeot: Pijiii!"
	done
endc

LyrasRadioText1:
if DEF(_LOCALE_FR)
	text "La CHRONIQUE PKMN"
	line "du PROF.CHEN!"
	cont "Bientôt de retour"
	cont "sur les ondes!"
	done
else
	text "Prof.Oak's #mon"
	line "Talk! Please tune"
	cont "in next time!"
	done
endc

LyrasRadioText2:
if DEF(_LOCALE_FR)
	text "ANTENNE #MON!"
	done
else
	text "#mon Channel!"
	done
endc

LyrasRadioText3:
if DEF(_LOCALE_FR)
	text "Ici DJ LULA, votre"
	line "co-présentatrice!"
	done
else
	text "This is DJ Mary,"
	line "your co-host!"
	done
endc

LyrasRadioText4:
if DEF(_LOCALE_FR)
	text "#MON!"
	line "ANTENNE #MON..."
	done
else
	text "#mon!"
	line "#mon Channel…"
	done
endc

LyrasHousePCText:
if DEF(_LOCALE_FR)
	text "Ca appartient à"
	line "quelqu'un d'autre!"
	done
else
	text "You shouldn't mess"
	line "with someone"
	cont "else's PC!"
	done
endc

LyrasHouseN64Text:
if DEF(_LOCALE_FR)
	text "Une N64 PIKACHU"
	line "édition limitée!"
	done
else
	text "It's a limited-"
	line "edition Pikachu"
	cont "N64!"
	done
endc
