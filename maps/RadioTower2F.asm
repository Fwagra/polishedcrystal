DEF BLUE_CARD_POINT_CAP EQU 30

RadioTower2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  0,  0, RADIO_TOWER_3F, 1
	warp_event 15,  0, RADIO_TOWER_1F, 3

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_JUMPTEXT, RadioTower2FSalesSignText
	bg_event  5,  0, BGEVENT_JUMPTEXT, RadioTower2FOaksPKMNTalkSignText
	bg_event 13,  0, BGEVENT_JUMPTEXT, RadioTower2FPokemonRadioSignText

	def_object_events
	object_event 14,  5, SPRITE_BUENA, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, Buena, -1
	object_event  6,  6, SPRITE_POKEMANIAC, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, RadioTower2FSuperNerdText, EVENT_GOLDENROD_CITY_CIVILIANS
	object_event 17,  2, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RadioTower2FTeacherScript, -1
	object_event  1,  4, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerGruntM4, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  7,  4, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerGruntM5, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  4,  1, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerGruntM6, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 10,  5, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerGruntF2, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event  0,  1, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, RadioTower2FBlackBelt1Text, EVENT_RADIO_TOWER_BLACKBELT_BLOCKS_STAIRS
	object_event  1,  1, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, RadioTower2FBlackBelt2Text, EVENT_RADIO_TOWER_CIVILIANS_AFTER
	pokemon_event 12,  1, JIGGLYPUFF, SPRITEMOVEDATA_POKEMON, -1, PAL_NPC_PINK, RadioTowerJigglypuffText, -1
	object_event 12,  7, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, RadioTowerBuenaPrizeReceptionist, EVENT_GOLDENROD_CITY_CIVILIANS
	object_event  3,  6, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, RadioTower2FRockerText, EVENT_GOLDENROD_CITY_CIVILIANS

	object_const_def
	const RADIOTOWER2F_BUENA

RadioTower2FTeacherScript:
	checkflag ENGINE_ROCKETS_IN_RADIO_TOWER
	iftrue_jumptextfaceplayer RadioTower2FTeacherText_Rockets
	jumpthistextfaceplayer

if DEF(_LOCALE_FR)
	text "Les berceuses de"
	line "la radio peuvent"
	line "endormir les #MON."
	done
else
	text "Lullabies on the"
	line "radio may make"
	cont "#mon sleep."
	done
endc

GenericTrainerGruntM4:
	generictrainer GRUNTM, 4, EVENT_BEAT_ROCKET_GRUNTM_4, GruntM4SeenText, GruntM4BeatenText

if DEF(_LOCALE_FR)
	text "On te laissera pas"
	line "nous empêcher de"
	line "tout casser!"
	done
else
	text "We won't let you"
	line "ruin our plans"
	cont "for our comeback!"
	done
endc

GenericTrainerGruntM5:
	generictrainer GRUNTM, 5, EVENT_BEAT_ROCKET_GRUNTM_5, GruntM5SeenText, GruntM5BeatenText

if DEF(_LOCALE_FR)
	text "On est pas juste"
	line "super méchant. On"
	line "fait c'qu'on veut."
	done
else
	text "We're not always"
	line "evil. We just do"
	cont "whatever we like."
	done
endc

GenericTrainerGruntM6:
	generictrainer GRUNTM, 6, EVENT_BEAT_ROCKET_GRUNTM_6, GruntM6SeenText, GruntM6BeatenText

if DEF(_LOCALE_FR)
	text "Nos CAIDS sont en"
	line "train de contrôler"
	line "cet endroit. Ils"
	line "ont un super plan"
	line "en tête. Je me"
	line "demande ce que"
	line "c'est…"
	done
else
	text "Our Executives are"
	line "trying to take"
	cont "this place over."

	para "They have some big"
	line "plan. I wonder"
	cont "what that is?"
	done
endc

GenericTrainerGruntF2:
	generictrainer GRUNTF, 2, EVENT_BEAT_ROCKET_GRUNTF_2, GruntF2SeenText, GruntF2BeatenText

if DEF(_LOCALE_FR)
	text "Tu as gagné. Je ne"
	line "l'oublierai pas!"
	done
else
	text "You beat me, and"
	line "I won't forget it!"
	done
endc

Buena:
	checkflag ENGINE_ROCKETS_IN_RADIO_TOWER
	iftrue_jumptextfaceplayer RadioTower2FBuenaPasswordIsHelpText
	faceplayer
	opentext
	checkevent EVENT_MET_BUENA
	iffalsefwd .Introduction
	checkflag ENGINE_BUENAS_PASSWORD_2
	iftruefwd .PlayedAlready
	readvar VAR_HOUR
	ifless EVE_HOUR, .TooEarly
	checkflag ENGINE_BUENAS_PASSWORD
	iffalsefwd .TuneIn
	checkkeyitem BLUE_CARD
	iffalsefwd .NoBlueCard
	readvar VAR_BLUECARDBALANCE
	ifequalfwd BLUE_CARD_POINT_CAP, .BlueCardCapped0
	playmusic MUSIC_BUENAS_PASSWORD
	writetext RadioTower2FBuenaDoYouKnowPasswordText
	special AskRememberPassword
	iffalsefwd .ForgotPassword
	writetext RadioTower2FBuenaJoinTheShowText
	waitbutton
	closetext
	turnobject RADIOTOWER2F_BUENA, RIGHT
	readvar VAR_FACING
	ifnotequal RIGHT, .DontNeedToMove
	applymovement PLAYER, RadioTower2FPlayerWalksToMicrophoneMovement
.DontNeedToMove:
	turnobject PLAYER, RIGHT
	showtext RadioTower2FBuenaEveryoneSayPasswordText
	turnobject RADIOTOWER2F_BUENA, DOWN
	reanchormap
	special SpecialBuenasPassword
	closetext
	iffalsefwd .WrongAnswer
	showtext RadioTower2FBuenaCorrectAnswerText
	readvar VAR_BLUECARDBALANCE
	addval $1
	writevar VAR_BLUECARDBALANCE
	waitsfx
	playsound SFX_TRANSACTION
	setflag ENGINE_BUENAS_PASSWORD_2
	pause 20
	turnobject RADIOTOWER2F_BUENA, RIGHT
	showtext RadioTower2FBuenaThanksForComingText
	special Special_FadeOutMusic
	pause 20
	special RestartMapMusic
	readvar VAR_BLUECARDBALANCE
	ifequalfwd BLUE_CARD_POINT_CAP, .BlueCardCapped1
	end

.Introduction:
	writetext RadioTower2FBuenaShowIntroductionText
	promptbutton
	setevent EVENT_MET_BUENA
	verbosegivekeyitem BLUE_CARD
.TuneIn:
	writetext RadioTower2FBuenaTuneInToMyShowText
	waitbutton
	closetext
	checkcellnum PHONE_BUENA
	iftruefwd .Registered0
	checkevent EVENT_BUENA_OFFERED_HER_PHONE_NUMBER
	iftruefwd .OfferedNumberBefore
.Registered0:
	turnobject RADIOTOWER2F_BUENA, RIGHT
	end

.ForgotPassword:
	writetext RadioTower2FBuenaComeBackAfterListeningText
	waitbutton
	closetext
	turnobject RADIOTOWER2F_BUENA, RIGHT
	special Special_FadeOutMusic
	pause 20
	special RestartMapMusic
	end

.PlayedAlready:
	writetext RadioTower2FBuenaAlreadyPlayedText
	waitbutton
	closetext
	checkcellnum PHONE_BUENA
	iftruefwd .Registered1
	checkevent EVENT_BUENA_OFFERED_HER_PHONE_NUMBER
	iftruefwd .OfferedNumberBefore
.Registered1:
	turnobject RADIOTOWER2F_BUENA, RIGHT
	pause 10
	end

.WrongAnswer:
	setflag ENGINE_BUENAS_PASSWORD_2
	showtext RadioTower2FBuenaDidYouForgetText
	turnobject RADIOTOWER2F_BUENA, RIGHT
	pause 20
	showtext RadioTower2FBuenaThanksForComingText
	turnobject RADIOTOWER2F_BUENA, RIGHT
	special Special_FadeOutMusic
	pause 20
	special RestartMapMusic
	end

.NoBlueCard:
	writetext RadioTower2FBuenaNoBlueCardText
	waitbutton
	closetext
	checkcellnum PHONE_BUENA
	iftruefwd .Registered2
	checkevent EVENT_BUENA_OFFERED_HER_PHONE_NUMBER_NO_BLUE_CARD
	iftruefwd .OfferedNumberBefore
.Registered2:
	turnobject RADIOTOWER2F_BUENA, RIGHT
	end

.BlueCardCapped0:
	writetext RadioTower2FBuenaCardIsFullText
	waitbutton
	closetext
	checkcellnum PHONE_BUENA
	iftruefwd .Registered3
	checkevent EVENT_BUENA_OFFERED_HER_PHONE_NUMBER_NO_BLUE_CARD
	iftruefwd .OfferedNumberBefore
.Registered3:
	turnobject RADIOTOWER2F_BUENA, RIGHT
	end

.TooEarly:
	writetext RadioTower2FBuenaTuneInAfterSixText
	waitbutton
	closetext
	checkcellnum PHONE_BUENA
	iftruefwd .Registered4
	checkevent EVENT_BUENA_OFFERED_HER_PHONE_NUMBER
	iftruefwd .OfferedNumberBefore
.Registered4:
	end

.BlueCardCapped1:
	checkcellnum PHONE_BUENA
	iftruefwd .HasNumber
	pause 20
	turnobject RADIOTOWER2F_BUENA, DOWN
	pause 15
	turnobject PLAYER, UP
	pause 15
	checkevent EVENT_BUENA_OFFERED_HER_PHONE_NUMBER_NO_BLUE_CARD
	iftruefwd .OfferedNumberBefore
	showemote EMOTE_SHOCK, RADIOTOWER2F_BUENA, 15
	setevent EVENT_BUENA_OFFERED_HER_PHONE_NUMBER_NO_BLUE_CARD
	setevent EVENT_BUENA_OFFERED_HER_PHONE_NUMBER
	opentext
	writetext RadioTower2FBuenaOfferPhoneNumberText
	sjumpfwd .AskForNumber

.OfferedNumberBefore:
	opentext
	writetext RadioTower2FBuenaOfferNumberAgainText
.AskForNumber:
	askforphonenumber PHONE_BUENA
	ifequalfwd $1, .PhoneFull
	ifequalfwd $2, .NumberDeclined
	writetext RadioTower2FRegisteredBuenasNumberText
	playsound SFX_REGISTER_PHONE_NUMBER
	waitsfx
	promptbutton
	writetext RadioTower2FBuenaCallMeText
	waitbutton
	closetext
	turnobject RADIOTOWER2F_BUENA, RIGHT
	addcellnum PHONE_BUENA
	end

.NumberDeclined:
	writetext RadioTower2FBuenaSadRejectedText
	waitbutton
	closetext
	turnobject RADIOTOWER2F_BUENA, RIGHT
	end

.PhoneFull:
	writetext RadioTower2FBuenaYourPhoneIsFullText
	waitbutton
	closetext
	turnobject RADIOTOWER2F_BUENA, RIGHT
.HasNumber:
	end

RadioTowerBuenaPrizeReceptionist:
	checkkeyitem BLUE_CARD
	iffalse_jumptextfaceplayer RadioTower2FBuenaReceptionistNoCardText
	pokemart MARTTYPE_BLUECARD, 0

RadioTower2FPlayerWalksToMicrophoneMovement:
	slow_step_down
	slow_step_right
	step_end

RadioTower2FSuperNerdText:
if DEF(_LOCALE_FR)
	text "Ecoutez la radio"
	line "n'importe où! A"
	line "bientôt!"
	done
else
	text "You can listen to"
	line "the radio any-"
	cont "where. Tune in!"
	done
endc

RadioTower2FRockerText:
	text "I have a radio"
	line "interview to pro-"

	para "mote my latest"
	line "song."

	para "I've performed in"
	line "front of big"
	cont "crowds before,"

	para "but boy am I"
	line "nervous."
	done

RadioTower2FTeacherText_Rockets:
if DEF(_LOCALE_FR)
	text "Pourquoi veulent-"
	line "ils contrôler la"
	line "TOUR RADIO?"
	done
else
	text "Why would they"
	line "want to take over"
	cont "the Radio Tower?"
	done
endc

RadioTowerJigglypuffText:
if DEF(_LOCALE_FR)
	text "RONDOUDOU: Douuu…"
	done
else
	text "Jigglypuff:"
	line "Jiggly…"
	done
endc

RadioTower2FBlackBelt1Text:
if DEF(_LOCALE_FR)
	text "Cet accès est ré-"
	line "servé au personnel"
	line "autorisé. Cette"
	line "mesure vient"
	line "d'être appliquée."
	line "Le DIRECTEUR ne va"
	line "pas bien…"
	done
else
	text "Sorry. Authorized"
	line "personnel only"
	cont "beyond this point."

	para "It wasn't that way"
	line "before."

	para "There's something"
	line "wrong with the"
	cont "Director…"
	done
endc

RadioTower2FBlackBelt2Text:
if DEF(_LOCALE_FR)
	text "Vous pouvez vous"
	line "balader. Le"
	line "DIRECTEUR est"
	line "agréable. Comme"
	line "avant, quoi."
	done
else
	text "Feel free to look"
	line "around anywhere."

	para "The Director is"
	line "nice again, just"
	cont "as he was before."
	done
endc

GruntM4SeenText:
if DEF(_LOCALE_FR)
	text "Il y a trois ans,"
	line "la TEAM ROCKET a"
	line "été obligée de se"
	line "dissoudre. Mais"
	line "nous revenons en"
	line "force!"
	done
else
	text "Three years ago,"
	line "Team Rocket was"
	cont "forced to disband."

	para "But we're making a"
	line "comeback here!"
	done
endc

GruntM4BeatenText:
if DEF(_LOCALE_FR)
	text "Gueuh! T'es pas"
	line "mignon, toi!"
	done
else
	text "Gwah! Don't get"
	line "cute!"
	done
endc

GruntM5SeenText:
if DEF(_LOCALE_FR)
	text "On est la TEAM"
	line "ROCKET, on est les"
	line "exploiteurs de"
	line "#MON! On est des"
	line "pas beaux méchants"
	line "qui font peur!"
	line "Grrr. T'as peur,"
	line "là?"
	done
else
	text "We're Team Rocket,"
	line "the exploiters of"
	cont "#mon!"

	para "We love being"
	line "evil! Scared?"
	done
endc

GruntM5BeatenText:
if DEF(_LOCALE_FR)
	text "Tu te crois un"
	line "héros?"
	done
else
	text "You think you're a"
	line "hero?"
	done
endc

GruntM6SeenText:
if DEF(_LOCALE_FR)
	text "Hé! Dégage, le"
	line "nain!"
	done
else
	text "Hey, hey! Keep out"
	line "of our way!"
	done
endc

GruntM6BeatenText:
if DEF(_LOCALE_FR)
	text "Pfff. J'abandonne."
	done
else
	text "Arggh. I give up."
	done
endc

GruntF2SeenText:
if DEF(_LOCALE_FR)
	text "Hahaha! Très"
	line "ennuyeux. C'était"
	line "trop fa- cile"
	line "d'envahir cet"
	line "endroit! Allez les"
	line "petits! Faites-moi"
	line "encore rire!"
	done
else
	text "Hahaha!"

	para "How boring."
	line "It was far too"

	para "easy to take over"
	line "this place!"

	para "Come on, keep me"
	line "amused!"
	done
endc

GruntF2BeatenText:
if DEF(_LOCALE_FR)
	text "Hein? Tu es qui,"
	line "déjà? Moi? Tu"
	line "ignores qui je"
	line "suis? Je suis la"
	line "star musicale,"
	line "Imakuni! Je chante"
	line "le #Rap--tu"
	line "danses! ♪ La di da"
	line "di da, La di da di"
	line "da… ♪ Bouge les"
	line "pieds! Quoi? Des"
	line "#mon? Tu veux te"
	line "battre contre moi?"
	done
else
	text "Wh-who are you?"
	done
endc

RadioTower2FBuenaShowIntroductionText:
if DEF(_LOCALE_FR)
	text "BUENA: Salut! Je"
	line "suis BUENA!"
	line "Connais-tu l'émis-"
	line "sion LE MOT DE"
	line "PASSE? Si tu peux"
	line "me donner le mot"
	line "de passe de"
	line "l'émis- sion, tu"
	line "remportes des"
	line "points. Gagne"
	line "plein de points et"
	line "échange- les à la"
	line "jolie fille à côté"
	line "con- tre de"
	line "fabuleux prix!"
	line "Voilà! Ta carte à"
	line "points"
	line "personnelle!"
	done
else
	text "Buena: Hi! I'm"
	line "Buena!"

	para "Do you know about"
	line "a radio program"
	cont "called Password?"

	para "If you can tell me"
	line "the password from"

	para "the program, you"
	line "will earn points."

	para "Save up those"
	line "points and trade"

	para "them to that sweet"
	line "young lady over"

	para "there for some"
	line "choice prizes!"

	para "Here you go!"

	para "It's your very own"
	line "point card!"
	done
endc

RadioTower2FBuenaTuneInToMyShowText:
if DEF(_LOCALE_FR)
	text "BUENA: Ecoutez"
	line "tous l'émission du"
	line "MOT DE PASSE!"
	done
else
	text "Buena: Tune in to"
	line "my Password Show!"
	done
endc

RadioTower2FBuenaDoYouKnowPasswordText:
if DEF(_LOCALE_FR)
	text "BUENA: Bonjour!"
	line "As-tu écouté mon"
	line "émission? Te"
	line "souviens-tu du mot"
	line "de passe d'au-"
	line "jourd'hui?"
	done
else
	text "Buena: Hi!"
	line "Did you tune in to"
	cont "my radio show?"

	para "Do you remember"
	line "today's password?"
	done
endc

RadioTower2FBuenaJoinTheShowText:
if DEF(_LOCALE_FR)
	text "BUENA: Oh! Merci!"
	line "Quel est ton nom,"
	line "déjà? …<PLAYER>,"
	line "OK! Viens,"
	line "<PLAYER>. Tu es en"
	line "direct."
	done
else
	text "Buena: Oh, wow!"
	line "Thank you!"

	para "What was your name"
	line "again?"

	para "…<PLAYER>, OK!"

	para "Come on, <PLAYER>."
	line "Join the show."
	done
endc

RadioTower2FBuenaEveryoneSayPasswordText:
if DEF(_LOCALE_FR)
	text "BUENA: Tout le"
	line "monde est prêt? Il"
	line "faut crier le mot"
	line "de passe d'au-"
	line "jourd'hui pour"
	line "<PLAYER>!"
	done
else
	text "Buena: Everyone"
	line "ready?"

	para "I want to hear you"
	line "shout out today's"

	para "password for"
	line "<PLAYER>!"
	done
endc

RadioTower2FBuenaComeBackAfterListeningText:
if DEF(_LOCALE_FR)
	text "BUENA: Reviens"
	line "après avoir écouté"
	line "mon émission, OK?"
	line "A plus tard!"
	done
else
	text "Buena: Come back"
	line "after you listen"

	para "to my show, OK?"
	line "Catch ya later!"
	done
endc

RadioTower2FBuenaAlreadyPlayedText:
if DEF(_LOCALE_FR)
	text "BUENA: Désolée… Tu"
	line "n'as qu'un essai"
	line "par jour. Reviens"
	line "donc demain!"
	done
else
	text "Buena: Sorry…"

	para "You get just one"
	line "chance each day."

	para "Come back tomorrow"
	line "for another try!"
	done
endc

RadioTower2FBuenaCorrectAnswerText:
if DEF(_LOCALE_FR)
	text "BUENA: OUAIIIS!"
	line "C'est exact! Tu as"
	line "donc écouté mon"
	line "émission! Tu as"
	line "gagné un point!"
	line "Bravo!"
	done
else
	text "Buena: YIPPEE!"
	line "That's right!"

	para "You did tune in!"
	line "I'm so happy!"

	para "You earned one"
	line "point! Congrats!"
	done
endc

RadioTower2FBuenaDidYouForgetText:
if DEF(_LOCALE_FR)
	text "BUENA: … Pas du"
	line "tout. Tu as oublié"
	line "le mot de passe?"
	done
else
	text "Buena: Aww…"
	line "That's not it…"

	para "Did you forget the"
	line "password?"
	done
endc

RadioTower2FBuenaThanksForComingText:
if DEF(_LOCALE_FR)
	text "BUENA: Notre"
	line "candidat était"
	line "<PLAYER>. Merci!"
	line "Suivez tous ma"
	line "super émission!"
	done
else
	text "Buena: Yup! Our"
	line "contestant was"

	para "<PLAYER>."
	line "Thanks for coming!"

	para "I hope all you"
	line "listeners will"

	para "come too!"
	line "I'll be waiting!"
	done
endc

RadioTower2FBuenaPasswordIsHelpText:
if DEF(_LOCALE_FR)
	text "BUENA: De quoi? Le"
	line "mot de passe? AU"
	line "SECOURS!"
	done
else
	text "Buena: Huh?"
	line "Today's password?"

	para "HELP, of course!"
	done
endc

RadioTower2FBuenaCardIsFullText:
if DEF(_LOCALE_FR)
	text "BUENA: Ta carte"
	line "est pleine. Va"
	line "donc empocher un"
	line "prix!"
	done
else
	text "Buena: Your Blue"
	line "Card's full."

	para "Trade it in for a"
	line "fabulous prize!"
	done
endc

RadioTower2FBuenaTuneInAfterSixText:
if DEF(_LOCALE_FR)
	text "BUENA: Ecoutez le"
	line "MOT DE PASSE tous"
	line "les soirs de 18"
	line "heures à minuit!"
	line "Ecoutez et venez!"
	done
else
	text "Buena: Tune in to"
	line "Password every"

	assert EVE_HOUR == 12 + 5
	para "night from five"
	line "to midnight!"

	para "Tune in, then drop"
	line "in for a visit!"
	done
endc

RadioTower2FBuenaNoBlueCardText:
if DEF(_LOCALE_FR)
	text "BUENA: Oh? Tu n'as"
	line "pas amené ta CARTE"
	line "BLEUE? Je ne peux"
	line "pas te donner de"
	line "points dans ce"
	line "cas."
	done
else
	text "Buena: Oh? You"
	line "forgot to bring"
	cont "your Blue Card?"

	para "I can't give you"
	line "points if you"
	cont "don't have it."
	done
endc

RadioTower2FBuenaOfferPhoneNumberText:
	text "Buena: Oh! Your"
	line "Blue Card reached"

	para "{d:BLUE_CARD_POINT_CAP} points today!"
	line "That's so wild!"

	para "Hmm… There isn't a"
	line "prize for hitting"
	cont "{d:BLUE_CARD_POINT_CAP} points, but…"

	para "You came by so"
	line "often, <PLAYER>."

	para "I'll make you a"
	line "special deal!"

	para "How would you like"
	line "my phone number?"
	done

RadioTower2FBuenaOfferNumberAgainText:
if DEF(_LOCALE_FR)
	text "BUENA: <PLAYER>,"
	line "veux-tu mon numéro"
	line "de téléphone?"
	done
else
	text "Buena: <PLAYER>,"
	line "do you want to"

	para "register my phone"
	line "number?"
	done
endc

RadioTower2FRegisteredBuenasNumberText:
if DEF(_LOCALE_FR)
	text "<PLAYER>"
	line "enregistre le No."
	line "de BUENA."
	done
else
	text "<PLAYER> registered"
	line "Buena's number."
	done
endc

RadioTower2FBuenaCallMeText:
if DEF(_LOCALE_FR)
	text "BUENA: Appelle-moi"
	line "vite!"
	done
else
	text "Buena: I look"
	line "forward to hearing"
	cont "from you!"
	done
endc

RadioTower2FBuenaSadRejectedText:
if DEF(_LOCALE_FR)
	text "BUENA:… C'est"
	line "spécial…"
	done
else
	text "Buena: Aww… It's a"
	line "special prize…"
	done
endc

RadioTower2FBuenaYourPhoneIsFullText:
if DEF(_LOCALE_FR)
	text "BUENA: <PLAYER>,"
	line "il n'y a plus de"
	line "place sur ton"
	line "téléphone…"
	done
else
	text "Buena: <PLAYER>,"
	line "your phone list"

	para "has no room left"
	line "for me…"
	done
endc

RadioTower2FBuenaReceptionistNoCardText:
if DEF(_LOCALE_FR)
	text "Tu ne peux pas"
	line "échanger tes"
	line "points sans ta"
	line "CARTE BLEUE."
	line "N'oublie pas ta"
	line "CARTE BLEUE!"
	done
else
	text "You can't trade in"
	line "points without"
	cont "your Blue Card."

	para "Don't forget your"
	line "Blue Card!"
	done
endc

RadioTower2FSalesSignText:
if DEF(_LOCALE_FR)
	text "1er VENTES"
	done
else
	text "2F Sales"
	done
endc

RadioTower2FOaksPKMNTalkSignText:
if DEF(_LOCALE_FR)
	text "CHRONIQUE #MON du"
	line "PROF.CHEN"
	line "L'émission star à"
	line "l'antenne!"
	done
else
	text "Prof.Oak's #mon"
	line "Talk"

	para "The Hottest Show"
	line "on the Air!"
	done
endc

RadioTower2FPokemonRadioSignText:
if DEF(_LOCALE_FR)
	text "Pour chacune Pour"
	line "chacun Le soir"
	line "Comme le matin"
	line "RADIO #MON C'est"
	line "bien…"
	done
else
	text "Anywhere, Anytime"
	line "#mon Radio"
	done
endc
