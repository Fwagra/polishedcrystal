IndigoPlateauPokecenter1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, PrepareEliteFourCallback

	def_warp_events
	warp_event  9, 13, INDIGO_PLATEAU, 1
	warp_event 10, 13, INDIGO_PLATEAU, 2
	warp_event  0, 13, POKECENTER_2F, 1
	warp_event 12,  3, WILLS_ROOM, 1

	def_coord_events
	coord_event 14,  4, 0, PlateauRivalBattleTrigger1
	coord_event 15,  4, 0, PlateauRivalBattleTrigger2

	def_bg_events
	bg_event 13,  7, BGEVENT_READ, PokemonJournalGiovanniScript

	def_object_events
	object_event 14,  9, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_INDIGO_PLATEAU_POKECENTER_RIVAL
	object_event 14,  9, SPRITE_LYRA, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_INDIGO_PLATEAU_POKECENTER_LYRA
	object_event 10,  9, SPRITE_YELLOW, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, IndigoPlateauYellowScript, EVENT_INDIGO_PLATEAU_POKECENTER_YELLOW
	pc_nurse_event  9, 7
	mart_clerk_event  1,  9, MARTTYPE_STANDARD, MART_INDIGO_PLATEAU
	object_event  6,  9, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, IndigoPlateauTeleportGuyScript, EVENT_TELEPORT_GUY
	pokemon_event  5,  9, ABRA, SPRITEMOVEDATA_POKEMON, -1, PAL_NPC_BROWN, IndigoPlateauAbraText, EVENT_TELEPORT_GUY
	object_event  5, 12, SPRITE_ACE_TRAINER_M, SPRITEMOVEDATA_WANDER, 1, 1, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, IndigoPlateauCooltrainermText, -1

	object_const_def
	const INDIGOPLATEAUPOKECENTER1F_RIVAL
	const INDIGOPLATEAUPOKECENTER1F_LYRA
	const INDIGOPLATEAUPOKECENTER1F_YELLOW

PrepareEliteFourCallback:
	setmapscene WILLS_ROOM, $0
	setmapscene KOGAS_ROOM, $0
	setmapscene BRUNOS_ROOM, $0
	setmapscene KARENS_ROOM, $0
	setmapscene LANCES_ROOM, $0
	setmapscene HALL_OF_FAME, $0
	clearevent EVENT_WILLS_ROOM_ENTRANCE_CLOSED
	clearevent EVENT_WILLS_ROOM_EXIT_OPEN
	clearevent EVENT_KOGAS_ROOM_ENTRANCE_CLOSED
	clearevent EVENT_KOGAS_ROOM_EXIT_OPEN
	clearevent EVENT_BRUNOS_ROOM_ENTRANCE_CLOSED
	clearevent EVENT_BRUNOS_ROOM_EXIT_OPEN
	clearevent EVENT_KARENS_ROOM_ENTRANCE_CLOSED
	clearevent EVENT_KARENS_ROOM_EXIT_OPEN
	clearevent EVENT_LANCES_ROOM_ENTRANCE_CLOSED
	clearevent EVENT_LANCES_ROOM_EXIT_OPEN
	clearevent EVENT_BEAT_ELITE_4_WILL
	clearevent EVENT_BEAT_ELITE_4_KOGA
	clearevent EVENT_BEAT_ELITE_4_BRUNO
	clearevent EVENT_BEAT_ELITE_4_KAREN
	clearevent EVENT_BEAT_CHAMPION_LANCE
	setevent EVENT_LANCES_ROOM_OAK_AND_MARY
	endcallback

PlateauRivalBattleTrigger1:
	moveobject INDIGOPLATEAUPOKECENTER1F_RIVAL, 15, 9
	moveobject INDIGOPLATEAUPOKECENTER1F_LYRA, 15, 9
PlateauRivalBattleTrigger2:
	checkevent EVENT_FINAL_BATTLE_WITH_LYRA
	iftruefwd .LyraFight
	readvar VAR_WEEKDAY
	ifequalfwd MONDAY, .MaybeRivalFight
	ifequalfwd TUESDAY, .MaybeLyraFight
	ifequalfwd WEDNESDAY, .MaybeRivalFight
	ifequalfwd THURSDAY, .MaybeLyraFight
	ifequalfwd FRIDAY, .MaybeRivalFight
	ifequalfwd SATURDAY, .MaybeLyraFight
	end

.MaybeRivalFight:
	checkevent EVENT_BEAT_RIVAL_IN_MT_MOON
	iffalse DoNothingScript
	checkflag ENGINE_INDIGO_PLATEAU_RIVAL_FIGHT
	iftrue DoNothingScript
	turnobject PLAYER, DOWN
	showemote EMOTE_SHOCK, PLAYER, 15
	special Special_FadeOutMusic
	pause 15
	appear INDIGOPLATEAUPOKECENTER1F_RIVAL
	applymovement INDIGOPLATEAUPOKECENTER1F_RIVAL, PlateauRivalApproachesMovement
	playmusic MUSIC_RIVAL_ENCOUNTER
	faceobject INDIGOPLATEAUPOKECENTER1F_RIVAL, PLAYER
	faceobject PLAYER, INDIGOPLATEAUPOKECENTER1F_RIVAL
	showtext PlateauRivalText1
	setevent EVENT_INDIGO_PLATEAU_POKECENTER_RIVAL
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftruefwd .RivalTotodile
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftruefwd .RivalChikorita
	; Cyndaquil
	winlosstext PlateauRivalWinText, PlateauRivalLoseText
	setlasttalked INDIGOPLATEAUPOKECENTER1F_RIVAL
	loadtrainer RIVAL2, 6
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjumpfwd .RivalPostBattle

.RivalTotodile:
	winlosstext PlateauRivalWinText, PlateauRivalLoseText
	setlasttalked INDIGOPLATEAUPOKECENTER1F_RIVAL
	loadtrainer RIVAL2, 4
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjumpfwd .RivalPostBattle

.RivalChikorita:
	winlosstext PlateauRivalWinText, PlateauRivalLoseText
	setlasttalked INDIGOPLATEAUPOKECENTER1F_RIVAL
	loadtrainer RIVAL2, 5
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
.RivalPostBattle:
	special DeleteSavedMusic
	playmusic MUSIC_RIVAL_AFTER
	showtext PlateauRivalText2
	turnobject PLAYER, DOWN
	applymovement INDIGOPLATEAUPOKECENTER1F_RIVAL, PlateauRivalLeavesMovement
	disappear INDIGOPLATEAUPOKECENTER1F_RIVAL
	setscene $0
	playmapmusic
	setflag ENGINE_INDIGO_PLATEAU_RIVAL_FIGHT
	end

.MaybeLyraFight:
	checkevent EVENT_BEAT_ELITE_FOUR_AGAIN
	iffalse DoNothingScript
	checkflag ENGINE_INDIGO_PLATEAU_LYRA_FIGHT
	iftrue DoNothingScript
.LyraFight:
	turnobject PLAYER, DOWN
	showemote EMOTE_SHOCK, PLAYER, 15
	special Special_FadeOutMusic
	pause 15
	appear INDIGOPLATEAUPOKECENTER1F_LYRA
	applymovement INDIGOPLATEAUPOKECENTER1F_LYRA, PlateauRivalApproachesMovement
	faceobject INDIGOPLATEAUPOKECENTER1F_LYRA, PLAYER
	faceobject PLAYER, INDIGOPLATEAUPOKECENTER1F_LYRA
	opentext
	writetext PlateauLyraText1
	waitbutton
	playmusic MUSIC_WALLY_BATTLE_ORAS
	writetext PlateauLyraText2
	waitbutton
	closetext
	setevent EVENT_INDIGO_PLATEAU_POKECENTER_LYRA
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftruefwd .LyraTotodile
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftruefwd .LyraChikorita
	; Cyndaquil
	winlosstext PlateauLyraWinText, PlateauLyraLoseText
	setlasttalked INDIGOPLATEAUPOKECENTER1F_LYRA
	loadtrainer LYRA2, 1
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjumpfwd .LyraPostBattle

.LyraTotodile:
	winlosstext PlateauRivalWinText, PlateauRivalLoseText
	setlasttalked INDIGOPLATEAUPOKECENTER1F_LYRA
	loadtrainer LYRA2, 2
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	sjumpfwd .LyraPostBattle

.LyraChikorita:
	winlosstext PlateauRivalWinText, PlateauRivalLoseText
	setlasttalked INDIGOPLATEAUPOKECENTER1F_LYRA
	loadtrainer LYRA2, 3
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
.LyraPostBattle:
	special DeleteSavedMusic
	playmusic MUSIC_LYRA_DEPARTURE_HGSS
	showtext PlateauLyraText3
	turnobject PLAYER, DOWN
	applymovement INDIGOPLATEAUPOKECENTER1F_LYRA, PlateauRivalLeavesMovement
	disappear INDIGOPLATEAUPOKECENTER1F_LYRA
	setscene $0
	playmapmusic
	setflag ENGINE_INDIGO_PLATEAU_LYRA_FIGHT
	clearevent EVENT_FINAL_BATTLE_WITH_LYRA
	end

PlateauRivalText1:
if DEF(_LOCALE_FR)
	text "<PLAYER>: Plus"
	line "un geste."

	para "Tu vas relever"
	line "le défi de la"
	cont "Ligue #mon?"

	para "Hélas…"
	line "Tu peux faire"
	cont "une croix"

	para "dessus."

	para "Mes #mon sont"
	line "devenus si"
	cont "puissants"

	para "que tu ne vas pas"
	line "les reconnaître."

	para "Tu vas mordre la"
	line "poussière!"

	para "Ici et"
	line "maintenant!"

	para "En garde!"
	done
else
	text "Hold it."

	para "You're going to"
	line "take the #mon"

	para "League challenge"
	line "now?"

	para "That's not going"
	line "to happen."

	para "My super well-"
	line "trained #mon"

	para "are going to pound"
	line "you."

	para "<PLAYER>!"
	line "I challenge you!"
	done
endc

PlateauRivalWinText:
if DEF(_LOCALE_FR)
	text "…"

	para "OK… J'ai"
	line "perdu…"
	done
else
	text "…"

	para "OK--I lost…"
	done
endc

PlateauRivalText2:
if DEF(_LOCALE_FR)
	text "<PLAYER>: Gh…"

	para "Tout cela n'a"
	line "donc pas suffi…"

	para "Est-ce…"

	para "Est-ce donc pour"
	line "ça que je dois"

	para "avoir davantage"
	line "confiance dans"
	cont "mes #mon…"

	para "… Bah, pas"
	line "grave."

	para "Désolé de"
	line "t'avoir retardé."

	para "Si tu veux te"
	line "mesurer au"
	cont "Maître,"

	para "n'oublie pas"
	line "d'aller soigner"
	cont "tes #mon"

	para "avant."
	done
else
	text "…Darn… I still"
	line "can't win…"

	para "I… I have to think"
	line "more about my"
	cont "#mon…"

	para "Humph! Try not to"
	line "lose!"
	done
endc

PlateauRivalLoseText:
if DEF(_LOCALE_FR)
	text "…"

	para "Pff…"

	para "Avec mes"
	line "partenaires,"

	para "je vais etre"
	line "le Champion!"
	done
else
	text "…"

	para "Whew…"
	line "With my partners,"

	para "I'm going to be"
	line "the Champion!"
	done
endc

PlateauLyraText1:
if DEF(_LOCALE_FR)
	text "<PLAYER>!"

	para "J'ai voyagé"
	line "à Johto,"

	para "gagné des Badges"
	line "et pris de"
	cont "la force."

	para "Tu vois, <PLAYER>."

	para "Et maintenant…"

	para "Me voilà au"
	line "Plateau Indigo."

	para "Tu sais ce que"
	line "ça veut dire?"

	para "Je peux te defier,"
	line "pas seulement"
	cont "comme amie,"
	done
else
	text "<PLAYER>!"

	para "I've been travel-"
	line "ing around Johto,"

	para "earning Badges and"
	line "gaining strength."

	para "You know what"
	line "that's like,"
	cont "<PLAYER>."

	para "And now…"

	para "Here I am, at the"
	line "Indigo Plateau."

	para "Do you know what"
	line "this means?"

	para "I get to challenge"
	line "you, not only as"
	cont "my friend, but"
	done
endc

PlateauLyraText2:
if DEF(_LOCALE_FR)
	text "mais aussi comme"
	line "Maître de la"
	cont "Ligue #mon!"
	done
else
	text "as the #mon"
	line "League Champion!"
	done
endc

PlateauLyraWinText:
if DEF(_LOCALE_FR)
	text "Tu es encore"
	line "plus fort…"
	done
else
	text "So you're still"
	line "stronger than me…"
	done
endc

PlateauLyraLoseText:
if DEF(_LOCALE_FR)
	text "… J'ai gagné?"
	done
else
	text "…I won?"
	done
endc

PlateauLyraText3:
if DEF(_LOCALE_FR)
	text "Je suis pas"
	line "fâchée."

	para "J'ai exploré"
	line "Johto,"

	para "rencontré du"
	line "monde,"
	line "et élevé"
	cont "mes #mon."

	para "Ils sont plus"
	line "forts que"
	cont "je pensais…"

	para "Et j'ai pu"
	line "te combattre"
	cont "à fond."

	para "Tu m'as battue."

	para "Va battre la"
	line "Ligue #mon!"
	done
else
	text "I'm not angry that"
	line "I lost."

	para "I got to explore"
	line "Johto, meet new"
	cont "people, raise my"

	para "#mon to be"
	line "stronger than I"

	para "thought they could"
	line "ever be…"

	para "And I got to"
	line "battle you at my"
	cont "very best."

	para "You beat me--now"
	line "go beat the #-"
	cont "mon League!"
	done
endc

PlateauRivalApproachesMovement:
	step_up
	step_up
	step_up
	step_up
	step_up
	step_end

PlateauRivalLeavesMovement:
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end

PokemonJournalGiovanniScript:
	setflag ENGINE_READ_GIOVANNI_JOURNAL
	jumpthistext

if DEF(_LOCALE_FR)
	text "Journal #mon"

	para "Dossier spécial:"
	line "Boss Giovanni!"

	para "Quand la police"
	line "a fouillé"
	cont "l'Arène"

	para "de Jadielle,"
	line "elle a"
	cont "découvert"

	para "que son Champion,"
	line "Giovanni, était"

	para "aussi le boss de"
	line "la Team Rocket."
	done
else
	text "#mon Journal"

	para "Special Feature:"
	line "Boss Giovanni!"

	para "When police sear-"
	line "ched the abandoned"
	cont "Viridian Gym, they"

	para "discovered that"
	line "its Leader,"
	cont "Giovanni, had"

	para "also been the"
	line "Team Rocket Boss."
	done
endc

IndigoPlateauYellowScript:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_YELLOW_INTRO
	iftruefwd .HeardIntro
	writetext .GreetingText
	waitbutton
	setevent EVENT_LISTENED_TO_YELLOW_INTRO
.HeardIntro
	writetext .QuestionText
	yesorno
	iffalse_jumpopenedtext .RefusedText
	writetext .GiveStarterText
	promptbutton
	waitsfx
	checkevent EVENT_GOT_BULBASAUR_FROM_IVY
	iftruefwd .Squirtle
	checkevent EVENT_GOT_CHARMANDER_FROM_IVY
	iftruefwd .Bulbasaur
	givepoke CHARMANDER, PLAIN_FORM, 10, SITRUS_BERRY
	iffalse_jumpopenedtext .PartyAndBoxFullText
	getmonname CHARMANDER, STRING_BUFFER_3
	sjumpfwd .Finish

.Bulbasaur:
	givepoke BULBASAUR, PLAIN_FORM, 10, SITRUS_BERRY
	iffalse_jumpopenedtext .PartyAndBoxFullText
	getmonname BULBASAUR, STRING_BUFFER_3
	sjumpfwd .Finish

.Squirtle:
	givepoke SQUIRTLE, PLAIN_FORM, 10, SITRUS_BERRY
	iffalse_jumpopenedtext .PartyAndBoxFullText
	getmonname SQUIRTLE, STRING_BUFFER_3
.Finish:
	writetext .GoodbyeText
	waitbutton
	closetext
	readvar VAR_FACING
	turnobject PLAYER, DOWN
	ifnotequal UP, .noleftstep
	applyonemovement INDIGOPLATEAUPOKECENTER1F_YELLOW, step_left
.noleftstep
	applymovement INDIGOPLATEAUPOKECENTER1F_YELLOW, .DownMovement
	playsound SFX_EXIT_BUILDING
	disappear INDIGOPLATEAUPOKECENTER1F_YELLOW
	setevent EVENT_GOT_A_POKEMON_FROM_YELLOW
	waitsfx
	end

.PartyAndBoxFullText:
if DEF(_LOCALE_FR)
	text "Yellow: Oh…"
	line "Tu ne peux pas"

	para "porter un"
	line "#mon de plus…"

	para "Et ta Boite"
	line "est pleine…"
	done
else
	text "Yellow: Oh…"
	line "You can't carry"

	para "another #mon"
	line "either…"

	para "And your Box is"
	line "full, too…"
	done
endc

.GreetingText:
if DEF(_LOCALE_FR)
	text "Yellow: Salut,"
	line "<PLAYER>!"

	para "Je regardais le"
	line "Conseil 4."

	para "C'est intense…"

	para "Et ils ont un"
	line "lien fort"
	cont "avec"

	para "leurs #mon…"

	para "Un jour, je serai"
	line "a leur"
	cont "niveau."
	done
else
	text "Yellow: Hi,"
	line "<PLAYER>!"

	para "I was watching the"
	line "Elite Four fight."

	para "So intense…"
	line "And they have such"

	para "strong bonds with"
	line "their #mon…"

	para "One day I'm going"
	line "to reach their"
	cont "level."
	done
endc

.QuestionText:
if DEF(_LOCALE_FR)
	text "Yellow: <PLAYER>,"
	line "tu peux"
	cont "m'aider?"

	para "J'ai un #mon"
	line "que je ne peux"
	cont "pas"

	para "elever, et je"
	line "veux pas le"
	cont "laisser"

	para "au PC."

	para "Tu peux le"
	line "prendre?"
	done
else
	text "Yellow: <PLAYER>,"
	line "can you do me a"
	cont "favor?"

	para "I have a #mon"
	line "that I can't raise"
	cont "myself, and I"

	para "want to leave it"
	line "in PC storage."

	para "Will you take it,"
	line "please?"
	done
endc

.GiveStarterText:
if DEF(_LOCALE_FR)
	text "Yellow: Merci,"
	line "<PLAYER>!"

	para "Tiens!"
	done
else
	text "Yellow: Thanks,"
	line "<PLAYER>! Here"
	cont "you go!"
	done
endc

.RefusedText:
if DEF(_LOCALE_FR)
	text "Yellow: Oh…"

	para "Et le #mon?"
	done
else
	text "Yellow: Oh…"
	line "But what about the"
	cont "#mon?"
	done
endc

.GoodbyeText:
if DEF(_LOCALE_FR)
	text "Yellow: Prends"
	line "bien soin de"

	para ""
	text_ram wStringBuffer3
	text ","
	line "<PLAYER>!"

	para "On se reverra."
	line "Bye-bye!"
	done
else
	text "Yellow: You take"
	line "good care of that"

	para ""
	text_ram wStringBuffer3
	text ","
	line "<PLAYER>!"

	para "I hope we'll meet"
	line "again."
	cont "Bye-bye!"
	done
endc

.DownMovement:
	step_down
	step_down
	step_down
	step_down
	step_end

IndigoPlateauTeleportGuyScript:
	faceplayer
	opentext
	writetext .Text
	yesorno
	iffalse_jumpopenedtext .NoText
	writetext .YesText
	waitbutton
	closetext
	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx
	warp NEW_BARK_TOWN, 15, 6
	end

.Text:
if DEF(_LOCALE_FR)
	text "Les Dresseurs"
	line "qui, une fois"

	para "parvenus ici,"
	line "ne se sentaient"
	cont "plus"

	para "de taille,"
	line "se faisaient"

	para "teleporter"
	line "chez eux par"
	cont "mon ABRA."

	para "Mais ces temps-ci,"
	line "ils peuvent"
	cont "voler"

	para "sans mon aide…"

	para "Je suis un peu"
	line "triste, et"
	cont "mon"

	para "ABRA aussi…"
	done
else
	text "Ah! You're chal-"
	line "lenging the Elite"

	para "Four? Are you sure"
	line "you're ready?"

	para "If you need to"
	line "train some more,"

	para "my Abra can help"
	line "you."

	para "It can Teleport"
	line "you home."

	para "Would you like to"
	line "go home now?"
	done
endc

.YesText:
if DEF(_LOCALE_FR)
	text "OK, OK. Pense"
	line "a ta maison…"
	done
else
	text "OK, OK. Picture"
	line "your house in your"
	cont "mind…"
	done
endc

.NoText:
if DEF(_LOCALE_FR)
	text "OK, OK. Bonne"
	line "chance!"
	done
else
	text "OK, OK. The best"
	line "of luck to you!"
	done
endc

IndigoPlateauAbraText:
	text "Abra: Aabra…"
	done

IndigoPlateauCooltrainermText:
if DEF(_LOCALE_FR)
	text "La Ligue #mon"
	line "evalue ta"

	para "capacite a"
	line "vaincre"
	cont "le"

	para "terrible"
	line "Conseil 4."

	para "Et si tu perds,"
	line "tu dois tout"

	para "recommencer"
	line "depuis le"
	cont "debut!"
	done
else
	text "At the #mon"
	line "League, you'll get"

	para "tested by the"
	line "Elite Four."

	para "You have to beat"
	line "them all. If you"

	para "lose, you have to"
	line "start all over!"
	done
endc
