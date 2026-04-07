RadioTower1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, GOLDENROD_CITY, 11
	warp_event  3,  7, GOLDENROD_CITY, 11
	warp_event 15,  0, RADIO_TOWER_2F, 2

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_JUMPTEXT, RadioTower1FDirectoryText
	bg_event 13,  0, BGEVENT_JUMPTEXT, RadioTower1FLuckyChannelSignText

	def_object_events
	object_event  8,  6, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, RadioTower1FLuckyNumberManScript, EVENT_GOLDENROD_CITY_CIVILIANS
	object_event 14,  6, SPRITE_WHITNEY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, RadioTower1FWhitneyScript, EVENT_GOLDENROD_GYM_WHITNEY
	object_event  5,  6, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RadioTower1FReceptionistScript, -1
	object_event 17,  5, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, RadioTower1FLassText, EVENT_GOLDENROD_CITY_CIVILIANS
	object_event 17,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, RadioTower1FYoungsterText, EVENT_GOLDENROD_CITY_CIVILIANS
	object_event 14,  1, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerGruntM3, EVENT_RADIO_TOWER_ROCKET_TAKEOVER
	object_event 12,  6, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, RadioTower1FRadioCardWomanScript, EVENT_GOLDENROD_CITY_CIVILIANS

	object_const_def
	const RADIOTOWER1F_FELICITY
	const RADIOTOWER1F_WHITNEY

RadioTower1FReceptionistScript:
	checkflag ENGINE_ROCKETS_IN_RADIO_TOWER
	iftrue_jumptextfaceplayer RadioTower1FReceptionistNoToursText
	jumptextfaceplayer RadioTower1FReceptionistWelcomeText

RadioTower1FLuckyNumberManScript:
	faceplayer
	opentext
	writetext RadioTower1FLuckyNumberManAskToPlayText
	waitbutton
	checkevent EVENT_INTRODUCED_FELICITY
	iftruefwd .introduced
	writetext IntroduceFelicityText
	waitbutton
	setevent EVENT_INTRODUCED_FELICITY
.introduced
	writetext ExplainLuckyNumberShowText
	promptbutton
	checkflag ENGINE_LUCKY_NUMBER_SHOW
	iftruefwd .skip
	special Special_ResetLuckyNumberShowFlag
.skip
	special Special_PrintTodaysLuckyNumber
	checkflag ENGINE_LUCKY_NUMBER_SHOW
	iftrue_jumpopenedtext RadioTower1FLuckyNumberManComeAgainText
	writetext RadioTower1FLuckyNumberManTodayIdIsText
	promptbutton
	closetext
	applymovement RADIOTOWER1F_FELICITY, RadioTower1FLuckyNumberManGoToPCMovement
	opentext
	writetext RadioTower1FLuckyNumberManCheckIfMatchText
	promptbutton
	waitsfx
	writetext RadioTower1FLuckyNumberManDotDotDotText
	playsound SFX_DEX_FANFARE_20_49
	special Special_CheckForLuckyNumberWinners
	closetext
	applymovement RADIOTOWER1F_FELICITY, RadioTower1FLuckyNumberManReturnToPlayerMovement
	opentext
	ifequalfwd 5, .FirstPlace
	ifequalfwd 4, .SecondPlace
	ifequalfwd 3, .ThirdPlace
	ifequalfwd 2, .FourthPlace
	ifequalfwd 1, .FifthPlace
	jumpopenedtext RadioTower1FLuckyNumberManNoneOfYourIDNumbersMatchText

.FirstPlace:
	giveitem MASTER_BALL
	writetext WonFirstPlaceText
	special ShowItemIcon
	playsound SFX_1ST_PLACE
	sjumpfwd .Finish

.SecondPlace:
	giveitem BOTTLE_CAP
	writetext WonSecondPlaceText
	special ShowItemIcon
	playsound SFX_2ND_PLACE
	sjumpfwd .Finish

.ThirdPlace:
	giveitem PP_MAX
	writetext WonThirdPlaceText
	special ShowItemIcon
	playsound SFX_2ND_PLACE
	sjumpfwd .Finish

.FourthPlace:
	giveitem PP_UP
	writetext WonFourthPlaceText
	special ShowItemIcon
	playsound SFX_3RD_PLACE
	sjumpfwd .Finish

.FifthPlace:
	giveitem RARE_CANDY
	writetext WonFifthPlaceText
	special ShowItemIcon
	playsound SFX_3RD_PLACE
.Finish:
	waitsfx
	promptbutton
	iffalse_jumpopenedtext RadioTower1FLuckyNumberManNoRoomForYourPrizeText
	itemnotify
	setflag ENGINE_LUCKY_NUMBER_SHOW
	jumpthisopenedtext

RadioTower1FLuckyNumberManComeAgainText:
	text "Please come back"
	line "tomorrow for the"
	cont "next Lucky Number."
	done

RadioTower1FRadioCardWomanScript:
	checkevent EVENT_GOLDENROD_GYM_WHITNEY
	iftrue_jumptextfaceplayer RadioTower1FRadioCardWomanTuneInText
	faceplayer
	opentext
	writetext RadioTower1FRadioCardWomanOfferQuizText
	yesorno
	iffalse_jumpopenedtext RadioTower1FRadioCardWomanNotTakingQuizText
	writetext RadioTower1FRadioCardWomanQuestion1Text
	yesorno
	iffalsefwd .WrongAnswer
	playsound SFX_ELEVATOR_END
	waitsfx
	writetext RadioTower1FRadioCardWomanQuestion2Text
	yesorno
	iffalsefwd .WrongAnswer
	playsound SFX_ELEVATOR_END
	waitsfx
	writetext RadioTower1FRadioCardWomanQuestion3Text
	yesorno
	iftruefwd .WrongAnswer
	playsound SFX_ELEVATOR_END
	waitsfx
	writetext RadioTower1FRadioCardWomanQuestion4Text
	yesorno
	iftruefwd .WrongAnswer
	playsound SFX_ELEVATOR_END
	waitsfx
	writetext RadioTower1FRadioCardWomanQuestion5Text
	yesorno
	iftruefwd .WrongAnswer
	playsound SFX_ELEVATOR_END
	waitsfx
	writetext RadioTower1FRadioCardWomanYouWinText
	promptbutton
	givespecialitem RADIO_CARD
	writetext RadioTower1FPokegearIsARadioText
	promptbutton
	setflag ENGINE_RADIO_CARD
	writetext RadioTower1FRadioCardWomanTuneInText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, RADIOTOWER1F_WHITNEY, 15
	applymovement RADIOTOWER1F_WHITNEY, RadioTower1FWhitneyApproachesMovementData
	turnobject PLAYER, RIGHT
	showtext RadioTower1FWhitney2Text
	applymovement RADIOTOWER1F_WHITNEY, RadioTower1FWhitneyLeaves1MovementData
	turnobject PLAYER, LEFT
	applymovement RADIOTOWER1F_WHITNEY, RadioTower1FWhitneyLeaves2MovementData
	disappear RADIOTOWER1F_WHITNEY
	end

.WrongAnswer:
	playsound SFX_WRONG
	jumpthisopenedtext

if DEF(_LOCALE_FR)
	text "Oh là làààà!!!"
	line "C'est la mauvaise"
	line "réponse! Essaie"
	line "une autre fois!"
	done
else
	text "Oh, dear."
	line "Sorry, but you"

	para "got it wrong."
	line "Please try again!"
	done
endc

GenericTrainerGruntM3:
	generictrainer GRUNTM, 3, EVENT_BEAT_ROCKET_GRUNTM_3, GruntM3SeenText, GruntM3BeatenText

if DEF(_LOCALE_FR)
	text "T'es trop fort. Je"
	line "dois prévenir les"
	line "autres. Tu es un"
	line "danger…"
	done
else
	text "You're too strong."

	para "Our plan could be"
	line "ruined. I must"
	cont "warn the others…"
	done
endc

RadioTower1FWhitneyScript:
	showtextfaceplayer RadioTower1FWhitney1Text
	turnobject RADIOTOWER1F_WHITNEY, LEFT
	end

RadioTower1FLuckyNumberManGoToPCMovement:
	step_right
	turn_head_up
	step_end

RadioTower1FLuckyNumberManReturnToPlayerMovement:
	step_left
	turn_head_up
	step_end

RadioTower1FWhitneyApproachesMovementData:
	step_up
	step_up
	step_left
	step_end

RadioTower1FWhitneyLeaves1MovementData:
	step_up
	step_left
	step_left
	step_end

RadioTower1FWhitneyLeaves2MovementData:
	step_left
	step_left
	step_left
	step_left
	step_end

RadioTower1FReceptionistWelcomeText:
if DEF(_LOCALE_FR)
	text "Bienvenue!"
	done
else
	text "Welcome!"
	done
endc

RadioTower1FReceptionistNoToursText:
if DEF(_LOCALE_FR)
	text "Bonjour. Il n'y a"
	line "pas de visite"
	line "prévue"
	line "aujourd'hui."
	done
else
	text "Hello. I'm sorry,"
	line "but we're not"
	cont "offering any tours"
	cont "today."
	done
endc

RadioTower1FLuckyNumberManAskToPlayText:
if DEF(_LOCALE_FR)
	text "Salut! Es-tu ici"
	line "pour le SHOW du"
	line "BON NUMERO?"
	line "Veux-tu que je re-"
	line "garde le No. ID de"
	line "tes #MON? Si tu as"
	line "de la chance, tu"
	line "gagne- ras un"
	line "prix."
	done
else
	text "Hi, are you here"
	line "for the Lucky Num-"
	cont "ber Show?"
	done
endc

IntroduceFelicityText:
	text "I'm Felicity,"
	line "your attendant"
	cont "today."
	done

ExplainLuckyNumberShowText:
if DEF(_LOCALE_FR)
	text "Salut! Es-tu ici"
	line "pour le SHOW du"
	line "BON NUMERO?"
	line "Veux-tu que je re-"
	line "garde le No. ID de"
	line "tes #MON? Si tu as"
	line "de la chance, tu"
	line "gagne- ras un"
	line "prix."
	done
else
	text "Want me to check"
	line "the ID numbers of"
	cont "your #mon?"

	para "If you get lucky,"
	line "you win a prize."
	done
endc

RadioTower1FLuckyNumberManTodayIdIsText:
	text "Today's lucky ID"
	line "number is "
	text_ram wStringBuffer3
	text "."
	done

RadioTower1FLuckyNumberManCheckIfMatchText:
if DEF(_LOCALE_FR)
	text "Voyons si cela"
	line "correspond."
	done
else
	text "Let's see if you"
	line "have a match."
	done
endc

RadioTower1FLuckyNumberManDotDotDotText: ; text > text
if DEF(_LOCALE_FR)
	text "…… …… …… …Oh,"
	line "c'est toi. Je suis"
	line "venu pour trouver"
	line "une sorte de #mon"
	line "légen- daire… Mais"
	line "y'a rien ici!"
	line "Venir dans ce trou"
	line "paumé pour rien"
	line "trouver, moi ça"
	line "m'énerve la tête!"
	line "Je vais t'en faire"
	line "baver!"
	done
else
	text "……"
	line "……"
	done
endc

WonFirstPlaceText:
if DEF(_LOCALE_FR)
	text "Oh! Tes 5 numéros"
	line "correspondent"
	line "parfaitement! Tu"
	line "es le grand"
	line "vainqueur! Tu"
	line "remportes une"
	line "MASTER BALL!"
	done
else
	text "Wow! You have a"
	line "perfect match of"
	cont "all five numbers!"

	para "We have a grand"
	line "prize winner!"

	para "You have won a"
	line "Master Ball!"
	done
endc

WonSecondPlaceText:
	text "Hey! You've"
	line "matched the last"
	cont "four numbers!"

	para "You've won second"
	line "prize, a rare"
	cont "Bottle Cap!"
	done

WonThirdPlaceText:
	text "Hey! You've"
	line "matched the last"
	cont "three numbers!"

	para "You've won third"
	line "prize, a PP Max!"
	done

WonFourthPlaceText:
if DEF(_LOCALE_FR)
	text "Hé! Tes deux der-"
	line "niers numéros"
	line "correspondent! Tu"
	line "remportes le"
	line "troisième prix: un"
	line "PP PLUS!"
	done
else
	text "Ooh, you've"
	line "matched the last"
	cont "two numbers."

	para "You've won"
	line "fourth prize,"
	cont "a PP Up."
	done
endc

WonFifthPlaceText:
	text "Ooh, you've"
	line "matched the last"
	cont "number."

	para "You've won fifth"
	line "prize, a"
	cont "Rare Candy."
	done

RadioTower1FLuckyNumberManNoneOfYourIDNumbersMatchText:
if DEF(_LOCALE_FR)
	text "Non! Aucun de tes"
	line "numéros ID ne"
	line "correspond."
	done
else
	text "Nope, none of your"
	line "ID numbers match."
	done
endc

RadioTower1FLuckyNumberManNoRoomForYourPrizeText:
if DEF(_LOCALE_FR)
	text "Ton inventaire est"
	line "plein! Fais de la"
	line "place et reviens"
	line "vite."
	done
else
	text "You've got no room"
	line "for your prize."

	para "Make room and come"
	line "back right away."
	done
endc

RadioTower1FRadioCardWomanOfferQuizText:
if DEF(_LOCALE_FR)
	text "Nous avons un quiz"
	line "disponible en ce"
	line "moment. Réponds à"
	line "5 ques- tions"
	line "correctement pour"
	line "gagner un COUPON"
	line "RADIO. Glisse-le"
	line "dans ton #MATOS"
	line "pour écouter la"
	line "radio n'importe"
	line "quand. Veux-tu"
	line "jouer au quiz?"
	done
else
	text "We have a special"
	line "quiz campaign on"
	cont "right now."

	para "Answer five ques-"
	line "tions correctly to"
	cont "win a Radio Card."

	para "Slide it into your"
	line "#gear to play"

	para "the radio anytime,"
	line "anywhere."

	para "Would you like to"
	line "take the quiz?"
	done
endc

RadioTower1FRadioCardWomanQuestion1Text:
if DEF(_LOCALE_FR)
	text "Question 1: Y"
	line "a-t-il un #- MON"
	line "apparaissant"
	line "uniquement le"
	line "matin?"
	done
else
	text "Question 1:"

	para "Is there a #mon"
	line "that appears only"
	cont "in the morning?"
	done
endc

RadioTower1FRadioCardWomanQuestion2Text:
if DEF(_LOCALE_FR)
	text "Exact!"
	done
else
	text "Correct!"
	line "Question 2:"

	para "Nidorina can only"
	line "be female. True?"
	done
endc

RadioTower1FRadioCardWomanQuestion3Text:
if DEF(_LOCALE_FR)
	text "Question 3:"
	done
else
	text "Bull's-eye!"
	line "Question 3:"

	para "Can Magikarp learn"
	line "any moves via TM?"
	done
endc

RadioTower1FRadioCardWomanQuestion4Text:
if DEF(_LOCALE_FR)
	text "Question 4:"
	done
else
	text "So far so good!"
	line "Question 4:"

	para "Does Kurt, the"
	line "# Ball creator,"

	para "use apricots as"
	line "ingredients?"
	done
endc

RadioTower1FRadioCardWomanQuestion5Text:
if DEF(_LOCALE_FR)
	text "Encore gagné!"
	line "Voici la dernière"
	line "question:"
	line "SALAMECHE appa-"
	line "raît-il sur les"
	line "machines à sous au"
	line "CASINO de DOUBLON-"
	line "VILLE?"
	done
else
	text "Wow! Right again!"
	line "Here's the final"
	cont "question:"

	para "Do Goldenrod Game"
	line "Corner's slots"

	para "have Charmander"
	line "on their reels?"
	done
endc

RadioTower1FRadioCardWomanYouWinText:
if DEF(_LOCALE_FR)
	text "Bingo! Gagné!"
	line "Félicitations!"
	line "Voici ton prix: un"
	line "COUPON RADIO!"
	done
else
	text "Bingo! You got it!"
	line "Congratulations!"

	para "Here's your prize,"
	line "a Radio Card!"
	done
endc

RadioTower1FPokegearIsARadioText:
if DEF(_LOCALE_FR)
	text "Le #MATOS de"
	line "<PLAYER> peut"
	line "main- tenant"
	line "servir de radio!"
	done
else
	text "<PLAYER>'s #gear"
	line "can now double as"
	cont "a radio!"
	done
endc

RadioTower1FRadioCardWomanTuneInText:
if DEF(_LOCALE_FR)
	text "Ecoute bien nos"
	line "émissions!!!"
	done
else
	text "Please tune in to"
	line "our radio shows."
	done
endc

RadioTower1FRadioCardWomanNotTakingQuizText:
if DEF(_LOCALE_FR)
	text "Oh. Je vois."
	line "N'hésite pas si tu"
	line "changes d'avis."
	done
else
	text "Oh. I see. Please"
	line "see me if you"
	cont "change your mind."
	done
endc

RadioTower1FLassText:
if DEF(_LOCALE_FR)
	text "BEN est un super"
	line "DJ!!! Sa voix me"
	line "fait super"
	line "craquer!"
	done
else
	text "Ben is a fabulous"
	line "DJ."

	para "His sweet voice"
	line "makes me melt!"
	done
endc

RadioTower1FYoungsterText:
if DEF(_LOCALE_FR)
	text "J'adore LULA de la"
	line "CHRONIQUE #MON. En"
	line "tout cas j'ado- re"
	line "sa voix… C'est"
	line "déjà ça."
	done
else
	text "I love Mary, from"
	line "#mon Talk."

	para "I only know what"
	line "she sounds like,"
	cont "though."
	done
endc

GruntM3SeenText:
if DEF(_LOCALE_FR)
	text "Nous avons enfin"
	line "envahi la TOUR"
	line "RADIO! Vous allez"
	line "tous trembler"
	line "devant la"
	line "puissance de la"
	line "TEAM ROCKET! Ya ha"
	line "ha ah ah! On est"
	line "méchant!"
	done
else
	text "We've finally"
	line "taken over the"
	cont "Radio Tower!"

	para "Now everyone will"
	line "get to experience"

	para "the true terror of"
	line "Team Rocket!"

	para "We'll show you"
	line "how scary we are!"
	done
endc

GruntM3BeatenText:
if DEF(_LOCALE_FR)
	text "Trop fort! Toi on"
	line "t'a à l'oeil!"
	done
else
	text "Too strong! We"
	line "must watch you…"
	done
endc

RadioTower1FWhitney1Text:
	text "Hi! I'm Whitney!"

	para "I heard about the"
	line "quiz to win a"
	cont "Radio Card,"

	para "so I came here"
	line "to get one…"

	para "But this quiz is"
	line "so hard!"
	done

RadioTower1FWhitney2Text:
	text "Whitney: Wow, you"
	line "did it!"

	para "I thought the"
	line "fourth answer"
	cont "was apricots…"

	para "Oops! I should get"
	line "back to the Gym!"
	done

RadioTower1FDirectoryText:
if DEF(_LOCALE_FR)
	text "RDC RECEPTION 1er"
	line "VENTES 2ème"
	line "PERSONNEL 3ème"
	line "PRODUCTION 4ème"
	line "BUREAU DIRECTION"
	done
else
	text "1F Reception"
	line "2F Sales"

	para "3F Personnel"
	line "4F Production"

	para "5F Director's"
	line "   Office"
	done
endc

RadioTower1FLuckyChannelSignText:
if DEF(_LOCALE_FR)
	text "ANTENNE LA CHANCE!"
	line "Gagnez grâce aux"
	line "No. ID de vos"
	line "#MON! Echangez vos"
	line "#- MON pour avoir"
	line "plus de No. ID!"
	done
else
	text "Lucky Channel!"

	para "Win with #mon"
	line "ID numbers!"

	para "Trade your #mon"
	line "to collect differ-"
	cont "ent ID numbers!"
	done
endc
