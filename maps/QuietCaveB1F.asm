QuietCaveB1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5, 25, QUIET_CAVE_1F, 2
	warp_event 29, 23, QUIET_CAVE_1F, 3
	warp_event 19, 11, QUIET_CAVE_1F, 4
	warp_event  3, 15, QUIET_CAVE_1F, 5
	warp_event 31, 15, QUIET_CAVE_1F, 6
	warp_event 21,  3, QUIET_CAVE_B2F, 1
	warp_event 17, 25, QUIET_CAVE_B2F, 2
	warp_event 23, 33, QUIET_CAVE_B2F, 3
	warp_event 32,  2, QUIET_CAVE_B2F, 4

	def_coord_events

	def_bg_events
	bg_event 26, 33, BGEVENT_ITEM + HYPER_POTION, EVENT_QUIET_CAVE_B1F_HIDDEN_HYPER_POTION

	def_object_events
	object_event  6, 20, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, QuietCaveB1FNurseKeikoScript, -1
	object_event 25,  4, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerBattleGirlKagami, -1
	object_event 21, 17, SPRITE_POKEMANIAC, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerPokemaniacAidan, -1
	object_event 33, 30, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerHikerSteve, -1
	object_event  4,  7, SPRITE_PSYCHIC, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerPsychicVirgil, -1
	itemball_event  8,  3, BIG_PEARL, 1, EVENT_QUIET_CAVE_B1F_BIG_PEARL
	itemball_event 14, 13, ELIXIR, 1, EVENT_QUIET_CAVE_B1F_ELIXIR

	object_const_def
	const QUIETCAVEB1F_NURSE

QuietCaveB1FNurseKeikoScript:
	faceplayer
	checkevent EVENT_BEAT_NURSE_KEIKO
	iftruefwd .Beaten
	showtext .SeenText
	winlosstext .BeatenText, 0
	setlasttalked QUIETCAVEB1F_NURSE
	loadtrainer NURSE, KEIKO
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_NURSE_KEIKO
.Beaten
	showtext .AfterText
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special Special_FadeInQuickly
	special RestartMapMusic
	jumpthistext

if DEF(_LOCALE_FR)
	text "Vois comme tes"
	line "#mon ont la"
	cont "pêche!"
	done
else
	text "See how energetic"
	line "your #mon are!"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Tu veux l'aide"
	line "d'une infirmière?"

	para "OK, si tu gagnes,"
	line "je te soigne!"
	done
else
	text "You need a Nurse's"
	line "help?"

	para "Sure, if you can"
	line "win against me,"
	cont "I'll heal you!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Tu as vraiment"
	line "besoin de soins?"
	done
else
	text "Do you really"
	line "need healing?"
	done
endc

.AfterText:
if DEF(_LOCALE_FR)
	text "OK alors..."
	line "On redonne de"
	cont "l'énergie à tes"
	cont "#mon!"
	done
else
	text "OK then… Time to"
	line "give your #mon"
	cont "some energy!"
	done
endc

GenericTrainerBattleGirlKagami:
	generictrainer BATTLE_GIRL, KAGAMI, EVENT_BEAT_BATTLE_GIRL_KAGAMI, BattleGirlKagamiSeenText, BattleGirlKagamiBeatenText

if DEF(_LOCALE_FR)
	text "Je viens ici"
	line "m'entraîner en"
	cont "paix, seule."
	done
else
	text "I come here to"
	line "train in peace"
	cont "and solitude."
	done
endc

GenericTrainerPokemaniacAidan:
	generictrainer POKEMANIAC, AIDAN, EVENT_BEAT_POKEMANIAC_AIDAN, PokemaniacAidanSeenText, PokemaniacAidanBeatenText

if DEF(_LOCALE_FR)
	text "Certains #mon"
	line "connaissent une"
	cont "attaque rare."

	done
else
	text "Sometimes a"
	line "#mon in a"

	para "certain area will"
	line "know a rare move."
	done
endc

GenericTrainerHikerSteve:
	generictrainer HIKER, STEVE, EVENT_BEAT_HIKER_STEVE, HikerSteveSeenText, HikerSteveBeatenText

if DEF(_LOCALE_FR)
	text "La spéléologie,"
	line "c'est explorer"
	cont "des grottes!"
	done
else
	text "Spelunking is also"
	line "called caving."

	para "It means exploring"
	line "caves!"
	done
endc

GenericTrainerPsychicVirgil:
	generictrainer PSYCHIC_T, VIRGIL, EVENT_BEAT_PSYCHIC_VIRGIL, PsychicVirgilSeenText, PsychicVirgilBeatenText

if DEF(_LOCALE_FR)
	text "Le silence m'aide"
	line "à concentrer mon"
	cont "ESP."
	done
else
	text "The silence helps"
	line "focus my ESP."
	done
endc

BattleGirlKagamiSeenText:
if DEF(_LOCALE_FR)
	text "Ne gêne pas mon"
	line "entraînement!"
	done
else
	text "Don't disturb my"
	line "training!"
	done
endc

BattleGirlKagamiBeatenText:
if DEF(_LOCALE_FR)
	text "Pas assez bon..."
	done
else
	text "Not good enough…"
	done
endc

PokemaniacAidanSeenText:
if DEF(_LOCALE_FR)
	text "Mes #mon!"

	para "Je te les montre!"
	done
else
	text "My #mon!"

	para "Let me show"
	line "you them!"
	done
endc

PokemaniacAidanBeatenText: ; text > text
if DEF(_LOCALE_FR)
	text "Mes #mon..."
	done
else
	text "My #mon…"
	done
endc

HikerSteveSeenText:
if DEF(_LOCALE_FR)
	text "On m'appelle"
	line "randonneur, mais"
	cont "je suis spéléo!"
	done
else
	text "They call me a"
	line "Hiker, but now"
	cont "I'm a spelunker!"
	done
endc

HikerSteveBeatenText:
if DEF(_LOCALE_FR)
	text "Et maintenant,"
	line "je suis nul..."
	done
else
	text "And now I'm a"
	line "loser…"
	done
endc

PsychicVirgilSeenText:
if DEF(_LOCALE_FR)
	text "Chut! Silence!"
	done
else
	text "Shh! Be quiet!"
	done
endc

PsychicVirgilBeatenText:
if DEF(_LOCALE_FR)
	text "Pourquoi les"
	line "combats font"
	cont "tant de bruit?"
	done
else
	text "Why must battling"
	line "be so loud?"
	done
endc
