RadioTower5F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  0,  0, RADIO_TOWER_4F, 1
	warp_event 12,  0, RADIO_TOWER_4F, 3

	def_coord_events
	coord_event  0,  3, 0, FakeDirectorScript
	coord_event 16,  5, 1, RadioTower5FRocketBossTrigger

	def_bg_events
	bg_event  3,  0, BGEVENT_JUMPTEXT, SignpostRadioTower5FOffice
	bg_event 11,  0, BGEVENT_JUMPTEXT, SignpostRadioTower5FStudio
	bg_event 15,  0, BGEVENT_JUMPTEXT, SignpostRadioTower5FStudio

	def_object_events
	object_event  3,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, RadioTower5FDirectorText, EVENT_RADIO_TOWER_DIRECTOR
	object_event  0,  4, SPRITE_PETREL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, Petrel1Script, EVENT_RADIO_TOWER_PETREL
	object_event 13,  5, SPRITE_ARCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 17,  2, SPRITE_ARIANA, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerAriana1, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 13,  5, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, BenText, EVENT_RADIO_TOWER_CIVILIANS_AFTER
	itemball_event  8,  5, ZOOM_LENS, 1, EVENT_RADIO_TOWER_5F_ZOOM_LENS

	object_const_def
	const RADIOTOWER5F_DIRECTOR
	const RADIOTOWER5F_PETREL
	const RADIOTOWER5F_ARCHER
	const RADIOTOWER5F_ARIANA

FakeDirectorScript:
	turnobject RADIOTOWER5F_DIRECTOR, UP
	showemote EMOTE_SHOCK, RADIOTOWER5F_DIRECTOR, 15
	showtext FakeDirectorTextBefore1
	applymovement RADIOTOWER5F_DIRECTOR, FakeDirectorMovement
	special SaveMusic
	playmusic MUSIC_ROCKET_ENCOUNTER
	showtext FakeDirectorTextBefore2
	applymovement RADIOTOWER5F_DIRECTOR, FakeDirectorSpinMovement
	appear RADIOTOWER5F_PETREL
	disappear RADIOTOWER5F_DIRECTOR
	turnobject RADIOTOWER5F_PETREL, UP
	pause 10
Petrel1Script:
	checkevent EVENT_BEAT_PETREL_1
	iftrue_jumptextfaceplayer FakeDirectorTextAfter
	setscene $1
	faceplayer
	showtext FakeDirectorTextBefore3
	winlosstext FakeDirectorWinText, 0
	setlasttalked RADIOTOWER5F_PETREL
	loadtrainer PETREL, PETREL1
	startbattle
	reloadmapafterbattle
	opentext
	writetext FakeDirectorTextAfter
	promptbutton
	verbosegivekeyitem BASEMENT_KEY
	closetext
	setevent EVENT_BEAT_PETREL_1
	end

GenericTrainerAriana1:
	generictrainer ARIANA, ARIANA1, EVENT_BEAT_ARIANA_1, Ariana1SeenText, Ariana1BeatenText

if DEF(_LOCALE_FR)
	text "<PLAYER>, c'est"
	line "ça? Une peste"
	line "comme toi ne peut"
	line "pas apprécier la"
	line "beauté de la TEAM"
	line "ROCKET. C'est"
	line "dommage. Tu es"
	line "pourtant assez"
	line "fort."
	done
else
	text "<PLAYER>, isn't it?"

	para "A brat like you"
	line "won't appreciate"

	para "the magnificence"
	line "of Team Rocket."

	para "That's too bad."
	line "I really admire"
	cont "your power."
	done
endc

RadioTower5FRocketBossTrigger:
	applymovement PLAYER, RadioTower5FPlayerTwoStepsLeftMovement
	playmusic MUSIC_ROCKET_ENCOUNTER
	turnobject RADIOTOWER5F_ARCHER, RIGHT
	showtext RadioTower5FRocketBossBeforeText
	winlosstext RadioTower5FRocketBossWinText, 0
	setlasttalked RADIOTOWER5F_ARCHER
	loadtrainer ARCHER, ARCHER1
	startbattle
	reloadmapafterbattle
	showtext RadioTower5FRocketBossAfterText
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	disappear RADIOTOWER5F_ARCHER
	disappear RADIOTOWER5F_ARIANA
	pause 15
	special Special_FadeInQuickly
	setevent EVENT_BEAT_ARCHER_1
	setevent EVENT_CLEARED_RADIO_TOWER
	clearflag ENGINE_ROCKETS_IN_RADIO_TOWER
	setevent EVENT_GOLDENROD_CITY_ROCKET_SCOUT
	setevent EVENT_GOLDENROD_CITY_ROCKET_TAKEOVER
	setevent EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	clearevent EVENT_MAHOGANY_MART_OWNERS
	clearflag ENGINE_ROCKETS_IN_MAHOGANY
	clearevent EVENT_GOLDENROD_CITY_CIVILIANS
	clearevent EVENT_RADIO_TOWER_CIVILIANS_AFTER
	setevent EVENT_BLACKTHORN_CITY_DRAGON_TAMER_BLOCKS_GYM
	clearevent EVENT_BLACKTHORN_CITY_DRAGON_TAMER_DOES_NOT_BLOCK_GYM
	special PlayMapMusic
	disappear RADIOTOWER5F_PETREL
	disappear RADIOTOWER5F_DIRECTOR
	moveobject RADIOTOWER5F_DIRECTOR, 12, 0
	appear RADIOTOWER5F_DIRECTOR
	applymovement RADIOTOWER5F_DIRECTOR, RadioTower5FDirectorWalksIn
	turnobject PLAYER, RIGHT
	opentext
	writetext RadioTower5FDirectorThankYouText
	promptbutton
	verbosegivekeyitem CLEAR_BELL
	writetext RadioTower5FDirectorDescribeClearBellText
	waitbutton
	closetext
	setscene $2
	setmapscene ECRUTEAK_HOUSE, $0
	setevent EVENT_GOT_CLEAR_BELL
	setevent EVENT_TEAM_ROCKET_DISBANDED
	applymovement RADIOTOWER5F_DIRECTOR, RadioTower5FDirectorWalksOut
	playsound SFX_EXIT_BUILDING
	disappear RADIOTOWER5F_DIRECTOR
	moveobject RADIOTOWER5F_DIRECTOR, 3, 6
	appear RADIOTOWER5F_DIRECTOR
	end

FakeDirectorMovement:
	step_left
	step_left
	step_left
	step_up
	step_up
	step_end

FakeDirectorSpinMovement:
	turn_head_left
	turn_head_down
	turn_head_right
	turn_head_up
	turn_head_left
	turn_head_down
	turn_head_right
	turn_head_up
	turn_head_left
	turn_head_down
	turn_head_right
	turn_head_up
	step_sleep 8
	step_end

RadioTower5FDirectorWalksIn:
	step_down
	step_down
	step_right
	step_right
	step_right
	step_right
	step_down
	step_down
	step_down
	step_left
	step_end

RadioTower5FDirectorWalksOut:
	step_right
	step_up
	step_up
	step_up
	step_left
	step_left
	step_left
	step_left
	step_up
	step_up
	step_end

RadioTower5FPlayerTwoStepsLeftMovement:
	step_left
	step_left
	step_end

FakeDirectorTextBefore1:
if DEF(_LOCALE_FR)
	text "T-toi! T-tu es là"
	line "pour me s-sauver?"
	done
else
	text "Y-you! You came to"
	line "rescue me?"
	done
endc

FakeDirectorTextBefore2:
if DEF(_LOCALE_FR)
	text "Alors… Surpris? Et"
	line "oui! Je suis un"
	line "imposteur! Cette"
	line "mascarade était"
	line "nécessaire à notre"
	line "invasion! Ha ha ha"
	line "ha ha! Veux-tu"
	line "savoir où est"
	line "caché le vrai"
	line "DIRECTEUR? J'vais"
	line "te le dire. Mais"
	line "d'abord…"
	line "COMBAT!!!!"
	done
else
	text "Is that what you"
	line "were expecting?"

	para "Wrong!"
	line "I'm an imposter!"
	done
endc

FakeDirectorTextBefore3:
if DEF(_LOCALE_FR)
	text "Alors… Surpris? Et"
	line "oui! Je suis un"
	line "imposteur! Cette"
	line "mascarade était"
	line "nécessaire à notre"
	line "invasion! Ha ha ha"
	line "ha ha! Veux-tu"
	line "savoir où est"
	line "caché le vrai"
	line "DIRECTEUR? J'vais"
	line "te le dire. Mais"
	line "d'abord…"
	line "COMBAT!!!!"
	done
else
	text "I pretended to be"
	line "the real thing to"

	para "prepare for our"
	line "takeover."

	para "Do you want to"
	line "know where we hid"
	cont "the real Director?"

	para "Sure, I'll tell"
	line "you. But only if"
	cont "you can beat me!"
	done
endc

FakeDirectorWinText:
if DEF(_LOCALE_FR)
	text "OK, OK. Je vais"
	line "parler."
	done
else
	text "OK, OK. I'll tell"
	line "you where he is."
	done
endc

FakeDirectorTextAfter:
if DEF(_LOCALE_FR)
	text "On a planqué le"
	line "DIRECTEUR dans"
	line "l'ENTREPOT"
	line "SOUTERRAIN. C'est"
	line "tout au bout du"
	line "SOUTERRAIN. Mais"
	line "t'y arriveras"
	line "jamais… Ha!"
	done
else
	text "We stashed the"
	line "real Director in"

	para "the Underground"
	line "Warehouse."

	para "It's at the far"
	line "end of the Under-"
	cont "ground."

	para "But I doubt you'll"
	line "get that far."
	done
endc

Ariana1SeenText:
if DEF(_LOCALE_FR)
	text "Hé petit… Tu te"
	line "souviens de moi et"
	line "de la PLAN- QUE"
	line "d'ACAJOU? Tu m'as"
	line "battue mais je me"
	line "suis entraînée"
	line "depuis."
	done
else
	text "Remember me from"
	line "the hideout in"
	cont "Mahogany Town?"

	para "I lost then, but I"
	line "won't this time."
	done
endc

Ariana1BeatenText:
if DEF(_LOCALE_FR)
	text "Mais c'est pas"
	line "possible! J'me"
	line "bats à fond et je"
	line "perds…"
	done
else
	text "This can't be"
	line "happening!"

	para "I fought hard, but"
	line "I still lost…"
	done
endc

RadioTower5FRocketBossBeforeText:
if DEF(_LOCALE_FR)
	text "Oh? Tu es arrivé"
	line "jusqu'ici? Tu dois"
	line "être un sacré"
	line "dresseur. Nous"
	line "allons con- trôler"
	line "cette STA- TION de"
	line "RADIO pour"
	line "annoncer au monde"
	line "notre retour. Cela"
	line "devrait faire"
	line "revenir notre chef"
	line "GIOVANNI de son"
	line "entraînement solo."
	line "La gloire passée"
	line "de la TEAM sera"
	line "restituée. Et toi"
	line "moucheron, tu vas"
	line "pas nous agacer"
	line "longtemps."
	done
else
	text "Oh? You managed to"
	line "get this far?"

	para "You must be quite"
	line "the trainer."

	para "We intend to take"
	line "over this Radio"

	para "Station and an-"
	line "nounce our come-"
	cont "back."

	para "That should bring"
	line "our boss Giovanni"

	para "back from his solo"
	line "training."

	para "We are going to"
	line "regain our former"
	cont "glory."

	para "I won't allow you"
	line "to interfere with"
	cont "our plans."
	done
endc

RadioTower5FRocketBossWinText:
if DEF(_LOCALE_FR)
	text "Non! Pardon,"
	line "GIOVANNI!"
	done
else
	text "No! Forgive me,"
	line "Giovanni!"
	done
endc

RadioTower5FRocketBossAfterText:
if DEF(_LOCALE_FR)
	text "Impossible! Nos"
	line "rêves se brisent."
	line "Je suis pas digne."
	line "Comme GIOVANNI l'a"
	line "fait jadis, je"
	line "vais dissoudre la"
	line "TEAM ROCKET."
	line "Adieu."
	done
else
	text "How could this be?"

	para "Our dreams have"
	line "come to naught."

	para "I wasn't up to the"
	line "task after all."

	para "Like Giovanni did"
	line "before me, I will"

	para "disband Team"
	line "Rocket here today."

	para "Farewell."
	done
endc

RadioTower5FDirectorThankYouText:
if DEF(_LOCALE_FR)
	text "DIRECTEUR: Merci"
	line "<PLAYER>! Ton acte"
	line "courageux a sauvé"
	line "les #- MON du"
	line "monde entier. Ce"
	line "n'est pas grand"
	line "chose, mais prends"
	line "ceci."
	done
else
	text "Director: <PLAYER>,"
	line "thank you!"

	para "Your courageous"
	line "actions have saved"

	para "#mon nation-"
	line "wide."

	para "I know it's not"
	line "much, but please"
	cont "take this."
	done
endc

RadioTower5FDirectorDescribeClearBellText:
if DEF(_LOCALE_FR)
	text "Il y avait une"
	line "tour ici à DOU-"
	line "BLONVILLE. Mais"
	line "elle était en"
	line "mauvais état. On"
	line "l'a alors rem-"
	line "placée par notre"
	line "TOUR RADIO."
	line "Pendant les tra-"
	line "vaux, nous avons"
	line "trouvé ce glas. On"
	line "dit qu'une"
	line "multitude de #-"
	line "MON différents vi-"
	line "vaient ici. Alors…"
	line "Ce glas a"
	line "peut-être un lien"
	line "avec la TOUR FER-"
	line "RAILLE de ROSALIA."
	line "Ah! Au fait… J'ai"
	line "entendu un des"
	line "types de la TEAM"
	line "ROCKET."
	line "Apparemment, il se"
	line "passe des trucs à"
	line "la TOUR FERRAILLE."
	line "A mon avis, tu"
	line "devrais y aller."
	line "OK, je retourne au"
	line "BUREAU."
	done
else
	text "There used to be a"
	line "tower right here"
	cont "in Goldenrod City."

	para "But it was old and"
	line "creaky."

	para "So we replaced it"
	line "with our Radio"
	cont "Tower."

	para "We dug up that"
	line "bell during"
	cont "construction."

	para "I heard that all"
	line "sorts of #mon"

	para "lived in Goldenrod"
	line "in the past."

	para "Perhaps…"

	para "That bell has some"
	line "connection to the"

	para "Bell Tower in"
	line "Ecruteak City…"

	para "Ah!"

	para "That reminds me…"

	para "I overheard Team"
	line "Rocket whispering."

	para "Apparently, some-"
	line "thing is going on"
	cont "at the Bell Tower."

	para "I have no idea"
	line "what is happening,"

	para "but you might look"
	line "into it."

	para "OK, I better go to"
	line "my office."
	done
endc

RadioTower5FDirectorText:
if DEF(_LOCALE_FR)
	text "DIRECTEUR: Bonjour"
	line "<PLAYER>! Tu sais,"
	line "j'adore les #MON."
	line "J'ai construit la"
	line "TOUR RADIO pour"
	line "crier mon amour"
	line "comme un dingue."
	line "J'espère que les"
	line "gens aiment nos"
	line "émissions."
	done
else
	text "Director: Hello,"
	line "<PLAYER>!"

	para "You know, I love"
	line "#mon."

	para "I built this Radio"
	line "Tower so I could"

	para "express my love"
	line "of #mon."

	para "It would be nice"
	line "if people enjoyed"
	cont "our programs."
	done
endc

BenText:
if DEF(_LOCALE_FR)
	text "BEN: Tu écoutes"
	line "notre musique?"
	done
else
	text "Ben: Do you listen"
	line "to our music?"
	done
endc

SignpostRadioTower5FOffice:
if DEF(_LOCALE_FR)
	text "4ème BUREAU"
	line "DIRECTION"
	done
else
	text "5F Director's"
	line "   Office"
	done
endc

SignpostRadioTower5FStudio:
if DEF(_LOCALE_FR)
	text "4ème STUDIO 1"
	done
else
	text "5F Studio 1"
	done
endc
