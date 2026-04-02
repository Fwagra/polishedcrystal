DragonShrine_MapScriptHeader:
	def_scene_scripts
	scene_script DragonShrineTrigger0

	def_callbacks

	def_warp_events
	warp_event  4,  9, DRAGONS_DEN_B1F, 2
	warp_event  5,  9, DRAGONS_DEN_B1F, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  1, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, DragonShrineElder1Script, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  4,  8, SPRITE_CLAIR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_DRAGON_SHRINE_CLAIR
	object_event  2,  4, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, DragonShrineElder2Text, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	object_event  7,  4, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, DragonShrineElder3Text, EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1

	object_const_def
	const DRAGONSHRINE_ELDER1
	const DRAGONSHRINE_CLAIR

DragonShrineTrigger0:
	sdefer DragonShrineTestScript
	end

DragonShrineTestScript:
	applymovement PLAYER, DragonShrinePlayerWalkInMovement
	applyonemovement DRAGONSHRINE_ELDER1, slow_step_down
	opentext
	writetext DragonShrineElderGreetingText
	promptbutton
.Question1:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	writetext DragonShrineQuestion1Text
	promptbutton
	loadmenu DragonShrineQuestion1_MenuHeader
	verticalmenu
	closewindow
	ifequalfwd $1, .RightAnswer
	ifequalfwd $2, .WrongAnswer
	ifequalfwd $3, .RightAnswer
	end

.Question2:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	writetext DragonShrineQuestion2Text
	promptbutton
	loadmenu DragonShrineQuestion2_MenuHeader
	verticalmenu
	closewindow
	ifequalfwd $1, .RightAnswer
	ifequalfwd $2, .RightAnswer
	ifequalfwd $3, .WrongAnswer
.Question3:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
	writetext DragonShrineQuestion3Text
	promptbutton
	loadmenu DragonShrineQuestion3_MenuHeader
	verticalmenu
	closewindow
	ifequalfwd $1, .WrongAnswer
	ifequalfwd $2, .RightAnswer
	ifequalfwd $3, .RightAnswer
.Question4:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_5
	writetext DragonShrineQuestion4Text
	promptbutton
	loadmenu DragonShrineQuestion4_MenuHeader
	verticalmenu
	closewindow
	ifequalfwd $1, .RightAnswer
	ifequalfwd $2, .WrongAnswer
	ifequalfwd $3, .RightAnswer
.Question5:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_6
	writetext DragonShrineQuestion5Text
	promptbutton
	loadmenu DragonShrineQuestion5_MenuHeader
	verticalmenu
	closewindow
	ifequalfwd $1, .WrongAnswer
	ifequalfwd $2, .WrongAnswer
	ifequalfwd $3, .RightAnswer
.RightAnswer:
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_6
	iftruefwd .PassedTheTest
	writetext DragonShrineRightAnswerText
	promptbutton
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_5
	iftrue .Question5
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
	iftrue .Question4
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	iftrue .Question3
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iftrue .Question2
.WrongAnswer:
	closetext
	turnobject DRAGONSHRINE_ELDER1, LEFT
	showtext DragonShrineWrongAnswerText1
	turnobject DRAGONSHRINE_ELDER1, DOWN
	showtext DragonShrineWrongAnswerText2
	setevent EVENT_ANSWERED_DRAGON_MASTER_QUIZ_WRONG
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_6
	iftrue .Question5
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_5
	iftrue .Question4
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_4
	iftrue .Question3
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_3
	iftrue .Question2
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iftrue .Question1
.PassedTheTest:
	writetext DragonShrinePassedTestText
	waitbutton
	closetext
	playsound SFX_ENTER_DOOR
	showemote EMOTE_SHOCK, PLAYER, 15
	playmusic MUSIC_CLAIR
	appear DRAGONSHRINE_CLAIR
	waitsfx
	turnobject PLAYER, DOWN
	pause 30
	applymovement DRAGONSHRINE_CLAIR, DragonShrineClairWalkInMovement
	turnobject DRAGONSHRINE_CLAIR, RIGHT
	turnobject PLAYER, LEFT
	turnobject DRAGONSHRINE_ELDER1, LEFT
	showtext DragonShrineClairYouPassedText
	special Special_FadeOutMusic
	applymovement DRAGONSHRINE_CLAIR, DragonShrineClairBigStepLeftMovement
	showtext DragonShrineClairThatCantBeText
	applymovement DRAGONSHRINE_CLAIR, DragonShrineClairSlowStepLeftMovement
	showtext DragonShrineClairYoureLyingText
	applymovement DRAGONSHRINE_ELDER1, DragonShrineElderWalkToClairMovement
	turnobject DRAGONSHRINE_CLAIR, UP
	showtext DragonShrineMustIInformLanceText
	showemote EMOTE_SHOCK, DRAGONSHRINE_CLAIR, 15
	showtext DragonShrineIUnderstandText
	applymovement DRAGONSHRINE_CLAIR, DragonShrineClairTwoSlowStepsRightMovement
	opentext
	writetext DragonShrineHereRisingBadgeText
	waitbutton
	givebadge RISINGBADGE, JOHTO_REGION
	special RestartMapMusic
	specialphonecall SPECIALCALL_MASTERBALL
	setscene $1
	setmapscene DRAGONS_DEN_B1F, $1
	writetext DragonShrineRisingBadgeExplanationText
	waitbutton
	closetext
	applymovement DRAGONSHRINE_ELDER1, DragonShrineElderWalkAway1Movement
	turnobject DRAGONSHRINE_CLAIR, UP
	applymovement DRAGONSHRINE_ELDER1, DragonShrineElderWalkAway2Movement
	turnobject PLAYER, UP
	showtext DragonShrineElderScoldsClairText
	showtext DragonShrineSpeechlessText
	applymovement DRAGONSHRINE_CLAIR, DragonShrineClairWalkOutMovement
	playsound SFX_ENTER_DOOR
	disappear DRAGONSHRINE_CLAIR
	waitsfx
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	end

DragonShrineElder1Script:
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue_jumptextfaceplayer DragonShrineComeAgainText
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_7
	iftrue_jumptextfaceplayer DragonShrineSymbolicDragonText
	checkevent EVENT_GOT_DRATINI
	iffalsefwd .GiveDratini
	checkevent EVENT_BEAT_RIVAL_IN_MT_MOON
	iftrue_jumptextfaceplayer DragonShrineSilverIsInTrainingText
	jumptextfaceplayer DragonShrineClairsGrandfatherText

.GiveDratini:
	faceplayer
	opentext
	writetext DragonShrineTakeThisDratiniText
	waitbutton
	checkevent EVENT_ANSWERED_DRAGON_MASTER_QUIZ_WRONG
	iftruefwd .NoExtremeSpeed
	givepoke DRATINI, PLAIN_FORM, 15, SITRUS_BERRY, ULTRA_BALL, EXTREMESPEED
	sjumpfwd .FinishElderScript
.NoExtremeSpeed
	givepoke DRATINI, PLAIN_FORM, 15, SITRUS_BERRY, ULTRA_BALL
.FinishElderScript
	iffalse_jumpopenedtext DragonShrinePartyAndBoxFullText
	setevent EVENT_GOT_DRATINI
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_7
	jumpopenedtext DragonShrineSymbolicDragonText

DragonShrineQuestion1_MenuHeader:
	db MENU_BACKUP_TILES
	menu_coords 8, 4, 19, 11
	dw .MenuData
	db 1 ; default option

.MenuData:
	db $81 ; flags
	db 3 ; items
if DEF(_LOCALE_FR)
	db "Copain@"
	db "Esclave@"
	db "Ami@"
else
	db "Ally@"
	db "Underling@"
	db "Friend@"
endc

DragonShrineQuestion2_MenuHeader:
	db MENU_BACKUP_TILES
	menu_coords 9, 4, 19, 11
	dw .MenuData
	db 1 ; default option

.MenuData:
	db $81 ; flags
	db 3 ; items
if DEF(_LOCALE_FR)
	db "Stratégie@"
	db "Entraînement@"
	db "Triche@"
else
	db "Strategy@"
	db "Training@"
	db "Cheating@"
endc

DragonShrineQuestion3_MenuHeader:
	db MENU_BACKUP_TILES
	menu_coords 5, 4, 19, 11
	dw .MenuData
	db 1 ; default option

.MenuData:
	db $81 ; flags
	db 3 ; items
if DEF(_LOCALE_FR)
	db "Dres. faible@"
	db "Dres. fort@"
	db "N'importe qui@"
else
	db "Weak person@"
	db "Tough person@"
	db "Anybody@"
endc

DragonShrineQuestion4_MenuHeader:
	db MENU_BACKUP_TILES
	menu_coords 8, 4, 19, 11
	dw .MenuData
	db 1 ; default option

.MenuData:
	db $81 ; flags
	db 3 ; items
if DEF(_LOCALE_FR)
	db "Amour@"
	db "Violence@"
	db "Savoir@"
else
	db "Love@"
	db "Violence@"
	db "Knowledge@"
endc

DragonShrineQuestion5_MenuHeader:
	db MENU_BACKUP_TILES
	menu_coords 11, 4, 19, 11
	dw .MenuData
	db 1 ; default option

.MenuData:
	db $81 ; flags
	db 3 ; items
if DEF(_LOCALE_FR)
	db "Puissant@"
	db "Les deux@"
	db "Faible@"
else
	db "Strong@"
	db "Weak@"
	db "Both@"
endc

DragonShrinePlayerWalkInMovement:
	slow_step_up
	slow_step_up
	slow_step_up
	slow_step_right
	slow_step_up
	slow_step_up
	slow_step_up
	step_end

DragonShrineElderWalkToClairMovement:
	slow_step_left
	slow_step_left
	slow_step_left
	turn_head_down
	step_end

DragonShrineElderWalkAway1Movement:
	slow_step_right
	slow_step_right
	step_end

DragonShrineElderWalkAway2Movement:
	slow_step_right
	turn_head_down
	step_end

DragonShrineClairWalkInMovement:
	slow_step_up
	slow_step_up
	slow_step_up
	slow_step_up
	slow_step_up
	step_end

DragonShrineClairBigStepLeftMovement:
	fix_facing
	run_step_left
	step_end

DragonShrineClairSlowStepLeftMovement:
	slow_step_left
	remove_fixed_facing
	step_end

DragonShrineClairTwoSlowStepsRightMovement:
	slow_step_right
	slow_step_right
	step_end

DragonShrineClairWalkOutMovement:
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end

DragonShrineElderGreetingText:
if DEF(_LOCALE_FR)
	text "Hmm..."
	line "Bienvenue."

	para "Ne parle pas."

	para "SANDRA t'a dit de"
	line "venir, non?"

	para "Coriace la petite,"
	line "non?"

	para "Je dois te mettre"
	line "à l'épreuve."

	para "Tu ne dois répon-"
	line "dre qu'à quelques"
	cont "questions."

	para "On commence?"
	done
else
	text "Hm… Good to see"
	line "you here."

	para "No need to explain"
	line "why you came."

	para "Clair sent you"
	line "here, didn't she?"

	para "That girl is a"
	line "handful…"

	para "I am sorry, but I"
	line "must test you."

	para "Not to worry, you"
	line "are to answer only"
	cont "a few questions."

	para "Ready?"
	done
endc

DragonShrineQuestion1Text:
if DEF(_LOCALE_FR)
	text "Que représente un"
	line "#mon à tes"
	cont "yeux?"
	done
else
	text "What are #mon"
	line "to you?"
	done
endc

DragonShrineQuestion2Text:
if DEF(_LOCALE_FR)
	text "Qu'est-ce qui aide"
	line "à gagner les"
	cont "combats?"
	done
else
	text "What helps you to"
	line "win battles?"
	done
endc

DragonShrineQuestion3Text:
if DEF(_LOCALE_FR)
	text "Quel type de"
	line "dresseur veux-tu"
	cont "affronter?"
	done
else
	text "What kind of"
	line "trainer do you"
	cont "wish to battle?"
	done
endc

DragonShrineQuestion4Text:
if DEF(_LOCALE_FR)
	text "Quelle est la cho-"
	line "se la plus impor-"
	cont "tante en entraî-"
	cont "nant les #mon?"
	done
else
	text "What is most"
	line "important for"
	cont "raising #mon?"
	done
endc

DragonShrineQuestion5Text:
if DEF(_LOCALE_FR)
	text "#mon puissant."
	line "#mon faible."

	para "Lequel est le plus"
	line "important?"
	done
else
	text "Strong #mon."
	line "Weak #mon."

	para "Which is more"
	line "important?"
	done
endc

DragonShrinePassedTestText:
if DEF(_LOCALE_FR)
	text "Hmm... Je vois..."

	para "Tu as de vrais"
	line "sentiments pour"
	cont "les #mon."

	para "C'est bien ça."

	para "C'est très impor-"
	line "tant!"

	para "<PLAYER>, ne"
	line "change jamais."

	para "Cela t'aidera"
	line "pour la LIGUE"
	cont "#mon."
	done
else
	text "Hm… I see…"

	para "You care deeply"
	line "for #mon."

	para "Very commendable."

	para "That conviction is"
	line "what is important!"

	para "<PLAYER>, don't"
	line "lose that belief."

	para "It will see you"
	line "through at the"
	cont "#mon League."
	done
endc

DragonShrineMustIInformLanceText:
if DEF(_LOCALE_FR)
	text "SANDRA!"

	para "C'est un bon"
	line "élément..."

	para "Admets ta défaite"
	line "et donne ton"
	cont "BADGE LEVER!"

	para "...Ou dois-je en"
	line "informer PETER?"
	done
else
	text "Clair!"

	para "This child is"
	line "impeccable, in"
	cont "skill and spirit!"

	para "Admit defeat and"
	line "confer the Rising"
	cont "Badge!"

	para "…Or must I inform"
	line "Lance of this?"
	done
endc

DragonShrineElderScoldsClairText:
if DEF(_LOCALE_FR)
	text "SANDRA..."

	para "Penche-toi sur"
	line "tes lacunes..."

	para "Prends exemple sur"
	line "<PLAYER>."
	done
else
	text "Clair…"

	para "Reflect upon what"
	line "it is that you"

	para "lack and this"
	line "child has."
	done
endc

DragonShrineComeAgainText:
if DEF(_LOCALE_FR)
	text "N'hésite pas à"
	line "revenir en ce"
	cont "saint lieu."
	done
else
	text "Come again, if you"
	line "so desire."
	done
endc

DragonShrineTakeThisDratiniText:
if DEF(_LOCALE_FR)
	text "Hmm..."
	line "Bienvenue."

	para "Tu tombes au bon"
	line "moment."

	para "J'ai quelque chose"
	line "pour toi."

	para "Ce MINIDRACO est"
	line "la preuve de ta"
	cont "valeur..."
	done
else
	text "Hm… Good to see"
	line "you here."

	para "Your arrival is"
	line "most fortunate."

	para "I have something"
	line "for you."

	para "Take this Dratini"
	line "as proof that I"

	para "have recognized"
	line "your worth."
	done
endc

DragonShrinePartyAndBoxFullText:
if DEF(_LOCALE_FR)
	text "Hmm? Ton équipe"
	line "est pleine."
	done
else
	text "Hm? Your party and"
	line "Box are both full."
	done
endc

DragonShrineSymbolicDragonText:
if DEF(_LOCALE_FR)
	text "Les #mon dra-"
	line "gons représentent"
	cont "notre clan."

	para "Tu es digne d'en"
	line "posséder un."
	done
else
	text "Dragon #mon are"
	line "symbolic of our"
	cont "clan."

	para "You have shown"
	line "that you can be"

	para "entrusted with"
	line "one."
	done
endc

DragonShrineClairsGrandfatherText:
if DEF(_LOCALE_FR)
	text "SANDRA a appris"
	line "quelque chose en"
	cont "te connaissant."

	para "Etant son grand-"
	line "père, je te"
	cont "remercie."
	done
else
	text "Clair appears to"
	line "have learned an"

	para "invaluable lesson"
	line "from you."

	para "I thank you as her"
	line "grandfather."
	done
endc

DragonShrineSilverIsInTrainingText:
if DEF(_LOCALE_FR)
	text "Un garçon de ton"
	line "âge s'entraîne"
	cont "ici."

	para "Il est comme l'é-"
	line "tait SANDRA plus"

	para "jeune. Je suis"
	line "très inquiet..."
	done
else
	text "A boy close to"
	line "your age is in"
	cont "training here."

	para "He is much like"
	line "Clair when she was"

	para "younger. It is a"
	line "little worrisome…"
	done
endc

DragonShrineWrongAnswerText1:
if DEF(_LOCALE_FR)
	text "Hein? J'ai pas"
	line "tout compris..."
	done
else
	text "Hah? I didn't"
	line "quite catch that…"
	done
endc

DragonShrineWrongAnswerText2:
if DEF(_LOCALE_FR)
	text "Qu'as-tu dit?"
	done
else
	text "What was it you"
	line "said?"
	done
endc

DragonShrineRightAnswerText:
if DEF(_LOCALE_FR)
	text "Oh, je vois..."
	done
else
	text "Oh, I understand…"
	done
endc

DragonShrineElder2Text:
if DEF(_LOCALE_FR)
	text "Cela fait long-"
	line "temps que notre"

	para "MAITRE n'a pas"
	line "cautionné un"
	cont "dresseur."

	para "Pas une seule fois"
	line "depuis PETER."
	done
else
	text "It's been quite"
	line "some time since a"

	para "trainer has gained"
	line "our Master's rare"
	cont "approval."

	para "In fact, not since"
	line "Master Lance."
	done
endc

DragonShrineElder3Text:
if DEF(_LOCALE_FR)
	text "Tu connais"
	line "Maître PETER?"

	para "Il ressemble à"
	line "notre MAITRE étant"
	cont "jeune."

	para "C'est dans leur"
	line "sang."
	done
else
	text "You know young"
	line "Master Lance?"

	para "He looks so much"
	line "like our Master"
	cont "did in his youth."

	para "It's in their"
	line "blood."
	done
endc

DragonShrineClairYouPassedText:
if DEF(_LOCALE_FR)
	text "Comment c'était?"

	para "Je ne vois pas"
	line "pourquoi je deman-"
	cont "de..."

	para "Tu as échoué,"
	line "n'est-ce pas?"

	para "………………………………"

	para "...Quoi? Réussi?"
	done
else
	text "So how did it go?"

	para "I guess there's no"
	line "point in asking."

	para "You did fail?"

	para "………………………………"

	para "…What? You passed?"
	done
endc

DragonShrineClairThatCantBeText:
if DEF(_LOCALE_FR)
	text "Y'a maldonne!"
	done
else
	text "That can't be!"
	done
endc

DragonShrineClairYoureLyingText:
if DEF(_LOCALE_FR)
	text "Tu mens!"

	para "Même moi j'ai pas"
	line "réussi!"
	done
else
	text "You're lying!"

	para "Even I haven't"
	line "been approved!"
	done
endc

DragonShrineIUnderstandText:
if DEF(_LOCALE_FR)
	text "Je... Je vois."
	done
else
	text "I-I understand…"
	done
endc

DragonShrineHereRisingBadgeText:
if DEF(_LOCALE_FR)
	text "Tiens, voilà le"
	line "BADGE LEVER..."

	para "Allez! Prends-le!"
	done
else
	text "Here, this is the"
	line "Rising Badge…"

	para "Hurry up! Take it!"
	done
endc

DragonShrineRisingBadgeExplanationText:
if DEF(_LOCALE_FR)
	text "Le BADGE LEVER"
	line "permet à tes"

	para "#mon de lancer"
	line "une capacité pour"
	cont "escalader les"
	cont "cascades."

	para "De plus, tous les"
	line "#mon t'obéiront"

	para "au doigt et à"
	line "l'oeil."
	done
else
	text "The Rising Badge"
	line "will enable your"

	para "#mon to use the"
	line "move for climbing"
	cont "waterfalls."

	para "Also, all #mon"
	line "will recognize you"

	para "as a trainer and"
	line "obey your every"

	para "command without"
	line "question."
	done
endc

DragonShrineSpeechlessText: ; text > text
	text "………………………………"
	done
