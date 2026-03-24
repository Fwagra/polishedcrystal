SECTION "_FruitBearingTreeText", ROMX
_FruitBearingTreeText::
	text "C'est un arbre à"
	line "fruits."
	done

SECTION "_HeyItsFruitText", ROMX
_HeyItsFruitText::
	text "Hé! C'est un(e)"
	line ""
	text_ram wStringBuffer3
	text "!"
	done

SECTION "_ObtainedOneFruitText", ROMX
_ObtainedOneFruitText::
	text "Obtenu"
	line ""
	text_ram wStringBuffer3
	text "!"
	done

SECTION "_ObtainedTwoFruitText", ROMX
_ObtainedTwoFruitText::
	text "Obtenu deux"
	line ""
	text_ram wStringBuffer3
	text "!"
	done

SECTION "_ObtainedThreeFruitText", ROMX
_ObtainedThreeFruitText::
	text "Obtenu trois"
	line ""
	text_ram wStringBuffer3
	text "!"
	done

SECTION "_FruitPackIsFullText", ROMX
_FruitPackIsFullText::
	text "Mais le Sac est"
	line "plein…"
	done

SECTION "_NoApricornBoxText", ROMX
_NoApricornBoxText::
	text "Mais il n'y a rien"
	line "à y mettre…"
	done

SECTION "_ApricornBoxIsFullText", ROMX
_ApricornBoxIsFullText::
	text "Mais la boîte à"
	line "Noigrumes est"
	cont "pleine…"
	done

SECTION "_PutAwayTheApricornText", ROMX
_PutAwayTheApricornText::
	text "<PLAYER> put the"
	line ""
	text_ram wStringBuffer3
	text " in"
	cont "the Apricorn Box."
	done

SECTION "_NothingHereText", ROMX
_NothingHereText::
	text "Il n'y a rien"
	line "ici..."
	done

SECTION "_WantToUseMulchText", ROMX
_WantToUseMulchText::
	text "Want to use"
	line "Mulch?"
	done

SECTION "_UsedMulchText", ROMX
_UsedMulchText::
	text "<PLAYER> used"
	line "Mulch!"

	para "The tree was"
	line "fertilized!"
	done

SECTION "_WhichApricornText", ROMX
_WhichApricornText::
	text "Which Apricorn"
	line "should I use?"
	done

SECTION "_HowManyShouldIMakeText", ROMX
_HowManyShouldIMakeText::
	text "Combien dois-je"
	line "en créer?"
	done

SECTION "_HowManyDoYouWantToSellText", ROMX
_HowManyDoYouWantToSellText::
	text "How many do you"
	line "want to sell?"
	done

SECTION "_RecoveredSomeHPText", ROMX
_RecoveredSomeHPText::
	text_ram wStringBuffer1
	line "recovered "
	text_decimal wCurHPAnimDeltaHP, 2, 3
	text "HP!"
	done

SECTION "_CuredOfPoisonText", ROMX
_CuredOfPoisonText::
	text_ram wStringBuffer1
	text "'s"
	line "cured of poison."
	done

SECTION "_RidOfParalysisText", ROMX
_RidOfParalysisText::
	text_ram wStringBuffer1
	text "'s"
	line "rid of paralysis."
	done

SECTION "_BurnWasHealedText", ROMX
_BurnWasHealedText::
	text_ram wStringBuffer1
	text "'s"
	line "burn was healed."
	done

SECTION "_WasDefrostedText", ROMX
_WasDefrostedText::
	text_ram wStringBuffer1
	line "was defrosted."
	done

SECTION "_WokeUpText", ROMX
_WokeUpText::
	text_ram wStringBuffer1
	line "woke up."
	done

SECTION "_HealthReturnedText", ROMX
_HealthReturnedText::
	text_ram wStringBuffer1
	text "'s"
	line "health returned."
	done

SECTION "_RevitalizedText", ROMX
_RevitalizedText::
	text_ram wStringBuffer1
	line "is revitalized."
	done

SECTION "_GrewToLevelText", ROMX
_GrewToLevelText::
	text_ram wStringBuffer1
	text " grew to"
	line "level "
	text_decimal wCurPartyLevel, 1, 3
	text "!"
	text_sound SFX_DEX_FANFARE_50_79
	text_promptbutton
	text_end

SECTION "_CameToItsSensesText", ROMX
_CameToItsSensesText::
	text_ram wStringBuffer1
	text " came"
	line "to its senses."
	done

SECTION "_OakTimeWokeUpText", ROMX
_OakTimeWokeUpText::
	text "………………………………"
	line "………………………………"

	para "Zzz… Hm? Wha…?"
	line "You woke me up!"

	para "Will you check the"
	line "clock for me?"
	prompt

SECTION "_OakTimeWhatTimeIsItText", ROMX
_OakTimeWhatTimeIsItText::
	text "What time is it?"
	done

SECTION "_OakTimeHowManyMinutesText", ROMX
_OakTimeHowManyMinutesText::
	text "How many minutes?"
	done

SECTION "_OakTimeWhoaText", ROMX
_OakTimeWhoaText::
	text "Whoa!"
	done

SECTION "_OakTimeQuestionMarkText", ROMX
_OakTimeQuestionMarkText::
	text "?"
	done

SECTION "_OakTimeOversleptText", ROMX
_OakTimeOversleptText::
	text "!"
	line "J'suis en retard!"
	done

SECTION "_OakTimeYikesText", ROMX
_OakTimeYikesText::
	text "!"
	line "Non! J'suis en"
	cont "retard!"
	done

SECTION "ProfElmNappedText", ROMX
ProfElmNappedText::
	text "!"
	line "I napped for"
	cont "too long!"
	done

SECTION "_OakTimeSoDarkText", ROMX
_OakTimeSoDarkText::
	text "!"
	line "C'est normal qu'il"
	cont "fasse nuit!"
	done

SECTION "_OakTimeWhatDayIsItText", ROMX
_OakTimeWhatDayIsItText::
	text "Quel jour?"
	done

SECTION "_OakTimeIsItText", ROMX
_OakTimeIsItText::
	text "?"
	done

SECTION "_NothingToChooseText", ROMX
_NothingToChooseText::
	text "Il n'y a rien"
	line "à choisir."
	prompt

SECTION "_WhichSidePutOnText", ROMX
_WhichSidePutOnText::
	text "Mettre de quel"
	line "côté?"
	done

SECTION "_WhichSidePutAwayText", ROMX
_WhichSidePutAwayText::
	text "Ranger de quel"
	line "côté?"
	done

SECTION "_PutAwayTheDecoText", ROMX
_PutAwayTheDecoText::
	text "Put away the"
	line ""
	text_ram wStringBuffer3
	text "."
	prompt

SECTION "_NothingToPutAwayText", ROMX
_NothingToPutAwayText::
	text "Il n'y a rien"
	line "à ranger."
	prompt

SECTION "_SetUpTheDecoText", ROMX
_SetUpTheDecoText::
	text "Set up the"
	line ""
	text_ram wStringBuffer3
	text "."
	prompt

SECTION "_PutAwayAndSetUpText", ROMX
_PutAwayAndSetUpText::
	text "Put away the"
	line ""
	text_ram wStringBuffer3

	para "and set up the"
	line ""
	text_ram wStringBuffer4
	text "."
	prompt

SECTION "_AlreadySetUpText", ROMX
_AlreadySetUpText::
	text "C'est déjà"
	line "installé."
	prompt

SECTION "_LookTownMapText", ROMX
_LookTownMapText::
	text "It's the Town Map."
	done

SECTION "_LookPikachuPosterText", ROMX
_LookPikachuPosterText::
	text "It's a poster of a"
	line "cute Pikachu."
	done

SECTION "_LookClefairyPosterText", ROMX
_LookClefairyPosterText::
	text "It's a poster of a"
	line "cute Clefairy."
	done

SECTION "_LookJigglypuffPosterText", ROMX
_LookJigglypuffPosterText::
	text "It's a poster of a"
	line "cute Marill."
	done

SECTION "_LookAdorableDecoText", ROMX
_LookAdorableDecoText::
	text "It's an adorable"
	line ""
	text_ram wStringBuffer3
	text "."
	done

SECTION "DecoConsoleText", ROMX
DecoConsoleText::
	text "It's a shiny"
	line ""
	text_ram wStringBuffer3
	text "."
	done

SECTION "_LookGiantDecoText", ROMX
_LookGiantDecoText::
	text "Une poupée géante!"
	line "C'est super doux."
	done

SECTION "_MomHiHowAreYouText", ROMX
_MomHiHowAreYouText::
	text "Hi, <PLAYER>!"
	line "How are you?"
	prompt

SECTION "_MomFoundAnItemText", ROMX
_MomFoundAnItemText::
	text "J'ai trouvé un bel"
	line "objet à acheter..."
	prompt

SECTION "_MomBoughtWithYourMoneyText", ROMX
_MomBoughtWithYourMoneyText::
	text "Alors j'ai dépensé"
	line "tes sous. Désolée!"
	prompt

SECTION "_MomItsInPCText", ROMX
_MomItsInPCText::
	text "C'est dans ton PC."
	line "Ca va te plaire!"
	done

SECTION "_MomFoundADollText", ROMX
_MomFoundADollText::
	text "While shopping"
	line "today, I saw this"
	cont "adorable doll, so"
	prompt

SECTION "_MomItsInYourRoomText", ROMX
_MomItsInYourRoomText::
	text "Elle est dans ta"
	line "chambre!"
	done

SECTION "_MonWasSentToText", ROMX
_MonWasSentToText::
	text_ram wPlayerTrademonSpeciesName
	text " was"
	line "sent to "
	text_ram wOTTrademonSenderName
	text "."
	done

SECTION "_BidsFarewellToMonText", ROMX
_BidsFarewellToMonText::
	text_ram wOTTrademonSenderName
	text " bids"
	line "farewell to"
	done

SECTION "_MonNameBidsFarewellText", ROMX
_MonNameBidsFarewellText::
	text_ram wOTTrademonSpeciesName
	text "."
	done

SECTION "_TakeGoodCareOfMonText", ROMX
_TakeGoodCareOfMonText::
	text "Take good care of"
	line ""
	text_ram wOTTrademonSpeciesName
	text "."
	done

SECTION "_ForYourMonSendsText", ROMX
_ForYourMonSendsText::
	text "For "
	text_ram wPlayerTrademonSenderName
	text "'s"
	line ""
	text_ram wPlayerTrademonSpeciesName
	text ","
	done

SECTION "_OTSendsText", ROMX
_OTSendsText::
	text_ram wOTTrademonSenderName
	text " sends"
	line ""
	text_ram wOTTrademonSpeciesName
	text "."
	done

SECTION "_WillTradeText", ROMX
_WillTradeText::
	text_ram wOTTrademonSenderName
	text " will"
	line "trade "
	text_ram wOTTrademonSpeciesName
	text_end

SECTION "_ForYourMonWillTradeText", ROMX
_ForYourMonWillTradeText::
	text "for "
	text_ram wPlayerTrademonSenderName
	text "'s"
	line ""
	text_ram wPlayerTrademonSpeciesName
	text "."
	done

; Oak's Pokémon Talk

SECTION "_OPT_IntroText1", ROMX
_OPT_IntroText1::
	line "Mary: Prof.Oak's"
	done

SECTION "_OPT_IntroText2", ROMX
_OPT_IntroText2::
	line "#mon Talk!"
	done

SECTION "_OPT_IntroText3", ROMX
_OPT_IntroText3::
	line "With me, Mary!"
	done

SECTION "_OPT_OakText1", ROMX
_OPT_OakText1::
	line "Oak: "
	text_ram wMonOrItemNameBuffer
	done

SECTION "_OPT_OakText2", ROMX
_OPT_OakText2::
	line "est près de:"
	done

SECTION "_OPT_OakText3", ROMX
_OPT_OakText3::
	line ""
	text_ram wStringBuffer1
	text "."
	done

SECTION "_OPT_MaryText1", ROMX
_OPT_MaryText1::
	line "Mary: "
	text_ram wStringBuffer1
	text "'s"
	done

SECTION "OPT_SweetAdorably", ROMX
OPT_SweetAdorably::
	line "est adorable et"
	done

SECTION "OPT_WigglySlickly", ROMX
OPT_WigglySlickly::
	line "est mou et"
	done

SECTION "OPT_AptlyNamed", ROMX
OPT_AptlyNamed::
	line "bien nommé et"
	done

SECTION "OPT_UndeniablyKindOf", ROMX
OPT_UndeniablyKindOf::
	line "est vraiment"
	done

SECTION "OPT_Unbearably", ROMX
OPT_Unbearably::
	line "est très"
	done

SECTION "OPT_WowImpressively", ROMX
OPT_WowImpressively::
	line "est super"
	done

SECTION "OPT_AlmostPoisonously", ROMX
OPT_AlmostPoisonously::
	line "est toxique et"
	done

SECTION "OPT_Sensually", ROMX
OPT_Sensually::
	line "est sensuel et"
	done

SECTION "OPT_Mischievously", ROMX
OPT_Mischievously::
	line "est vicieux et"
	done

SECTION "OPT_Topically", ROMX
OPT_Topically::
	line "est célèbre et"
	done

SECTION "OPT_Addictively", ROMX
OPT_Addictively::
	line "est très"
	done

SECTION "OPT_LooksInWater", ROMX
OPT_LooksInWater::
	line "dans l'eau est"
	done

SECTION "OPT_EvolutionMustBe", ROMX
OPT_EvolutionMustBe::
	line "évolué est"
	done

SECTION "OPT_Provocatively", ROMX
OPT_Provocatively::
	line "est provoquant et"
	done

SECTION "OPT_FlippedOut", ROMX
OPT_FlippedOut::
	line "est fou et"
	done

SECTION "OPT_HeartMeltingly", ROMX
OPT_HeartMeltingly::
	line "est tellement"
	done

SECTION "OPT_Cute", ROMX
OPT_Cute::
	line "mignon."
	done

SECTION "OPT_Weird", ROMX
OPT_Weird::
	line "bizarre."
	done

SECTION "OPT_Pleasant", ROMX
OPT_Pleasant::
	line "agréable."
	done

SECTION "OPT_BoldSortOf", ROMX
OPT_BoldSortOf::
	line "courageux."
	done

SECTION "OPT_Frightening", ROMX
OPT_Frightening::
	line "effrayant."
	done

SECTION "OPT_SuaveDebonair", ROMX
OPT_SuaveDebonair::
	line "rapide!"
	done

SECTION "OPT_Powerful", ROMX
OPT_Powerful::
	line "puissant."
	done

SECTION "OPT_Exciting", ROMX
OPT_Exciting::
	line "vigoureux."
	done

SECTION "OPT_Groovy", ROMX
OPT_Groovy::
	line "cool!"
	done

SECTION "OPT_Inspiring", ROMX
OPT_Inspiring::
	line "exaltant."
	done

SECTION "OPT_Friendly", ROMX
OPT_Friendly::
	line "amical."
	done

SECTION "OPT_HotHotHot", ROMX
OPT_HotHotHot::
	line "chaud!"
	done

SECTION "OPT_Stimulating", ROMX
OPT_Stimulating::
	line "stimulant."
	done

SECTION "OPT_Guarded", ROMX
OPT_Guarded::
	line "protégé."
	done

SECTION "OPT_Lovely", ROMX
OPT_Lovely::
	line "gracieux."
	done

SECTION "OPT_Speedy", ROMX
OPT_Speedy::
	line "rapide."
	done

SECTION "_OPT_PokemonChannelText", ROMX
_OPT_PokemonChannelText::
	text "#mon"
	done

SECTION "_PokedexShowText", ROMX
_PokedexShowText::
	line ""
	text_ram wStringBuffer1
	done

; Pokémon Music Channel / Pokémusic

SECTION "_BenIntroText1", ROMX
_BenIntroText1::
	line "Ben: #mon Music"
	done

SECTION "_BenIntroText2", ROMX
_BenIntroText2::
	line "Channel! ♪"
	done

SECTION "_BenIntroText3", ROMX
_BenIntroText3::
	line "It's me, DJ Ben! ♪"
	done

SECTION "_FernIntroText1", ROMX
_FernIntroText1::
	line "Fern: #music! ♪"
	done

SECTION "_FernIntroText2", ROMX
_FernIntroText2::
	line "With DJ Fern! ♪"
	done

SECTION "_BenFernText1", ROMX
_BenFernText1::
	line "Today's "
	text_today
	text ","
	done

SECTION "_BenFernText2A", ROMX
_BenFernText2A::
	line "so let's jam to"
	done

SECTION "_BenFernText2B", ROMX
_BenFernText2B::
	line "on s'la donne avec"
	done

SECTION "_BenFernText3A", ROMX
_BenFernText3A::
	line "#mon March!"
	done

SECTION "_BenFernText3B", ROMX
_BenFernText3B::
	line "#mon Lullaby!"
	done

; Lucky Channel

SECTION "_LC_Text1", ROMX
_LC_Text1::
	line "Reed: Yeehaw! How"
	done

SECTION "_LC_Text2", ROMX
_LC_Text2::
	line "ça gaze les gars?"
	done

SECTION "_LC_Text3", ROMX
_LC_Text3::
	line "Si t'as la pêche"
	done

SECTION "_LC_Text4", ROMX
_LC_Text4::
	line "ou pas le moral,"
	done

SECTION "_LC_Text5", ROMX
_LC_Text5::
	line "ne rate jamais le"
	done

SECTION "_LC_Text6", ROMX
_LC_Text6::
	line "Lucky Number Show!"
	done

SECTION "_LC_Text7", ROMX
_LC_Text7::
	line "Today's Lucky"
	done

SECTION "_LC_Text8", ROMX
_LC_Text8::
	line "Number is "
	text_pause
	text_ram wStringBuffer1
	text "!"
	done

SECTION "_LC_Text9", ROMX
_LC_Text9::
	line "Je répète..."
	done

SECTION "_LC_Text10", ROMX
_LC_Text10::
	line "Gagne et va vite"
	done

SECTION "_LC_Text11", ROMX
_LC_Text11::
	line "the Radio Tower!"
	done

SECTION "_LC_DragText1", ROMX
_LC_DragText1::
	line "J'aime pas trop"
	done

SECTION "_LC_DragText2", ROMX
_LC_DragText2::
	line "répéter..."
	done

SECTION "_PnP_Text1", ROMX
_PnP_Text1::
	line "Places and People!"
	done

SECTION "_PnP_Text2", ROMX
_PnP_Text2::
	line "Présenté par"
	done

SECTION "_PnP_Text3", ROMX
_PnP_Text3::
	line "me, DJ Lily!"
	done

SECTION "_PnP_Text4", ROMX
_PnP_Text4::
	line ""
	text_ram wStringBuffer2
	text " "
	text_ram wStringBuffer1
	done

SECTION "_PnP_cute", ROMX
_PnP_cute::
	line "est adorable."
	done

SECTION "_PnP_lazy", ROMX
_PnP_lazy::
	line "est cool."
	done

SECTION "_PnP_happy", ROMX
_PnP_happy::
	line "est en joie."
	done

SECTION "_PnP_noisy", ROMX
_PnP_noisy::
	line "fait du bruit."
	done

SECTION "_PnP_precocious", ROMX
_PnP_precocious::
	line "est calme."
	done

SECTION "_PnP_bold", ROMX
_PnP_bold::
	line "est difficile."
	done

SECTION "_PnP_picky", ROMX
_PnP_picky::
	line "est difficile!"
	done

SECTION "_PnP_sortofok", ROMX
_PnP_sortofok::
	line "est pas mal."
	done

SECTION "_PnP_soso", ROMX
_PnP_soso::
	line "est OK."
	done

SECTION "_PnP_great", ROMX
_PnP_great::
	line "est super!"
	done

SECTION "_PnP_mytype", ROMX
_PnP_mytype::
	line "est trop cool."
	done

SECTION "_PnP_cool", ROMX
_PnP_cool::
	line "est cool, non?"
	done

SECTION "_PnP_inspiring", ROMX
_PnP_inspiring::
	line "est terrible!"
	done

SECTION "_PnP_weird", ROMX
_PnP_weird::
	line "est étrange."
	done

SECTION "_PnP_rightforme", ROMX
_PnP_rightforme::
	line "est formidable."
	done

SECTION "_PnP_odd", ROMX
_PnP_odd::
	line "est bizarre!"
	done

SECTION "_PnP_Text5", ROMX
_PnP_Text5::
	line ""
	text_ram wStringBuffer1
	done

SECTION "_RocketRadioText1", ROMX
_RocketRadioText1::
	line "...Heu...on est"
	done

SECTION "_RocketRadioText2", ROMX
_RocketRadioText2::
	line "Team Rocket!"
	done

SECTION "_RocketRadioText3", ROMX
_RocketRadioText3::
	line "Après trois ans"
	done

SECTION "_RocketRadioText4", ROMX
_RocketRadioText4::
	line "d'attente, on"
	done

SECTION "_RocketRadioText5", ROMX
_RocketRadioText5::
	line "est de retour"
	done

SECTION "_RocketRadioText6", ROMX
_RocketRadioText6::
	line "pour de bon!"
	done

SECTION "_RocketRadioText7", ROMX
_RocketRadioText7::
	line "Giovanni! "
	text_pause
	text "Can you"
	done

SECTION "_RocketRadioText8", ROMX
_RocketRadioText8::
	line "hear?"
	text_pause
	text " We did it!"
	done

SECTION "_RocketRadioText9", ROMX
_RocketRadioText9::
	line ""
	text_pause
	text "Where is our boss?"
	done

SECTION "_RocketRadioText10", ROMX
_RocketRadioText10::
	line ""
	text_pause
	text "Is he listening?"
	done

SECTION "_BuenaRadioText1", ROMX
_BuenaRadioText1::
	line "Buena: Buena here!"
	done

SECTION "_BuenaRadioText2", ROMX
_BuenaRadioText2::
	line "Le mot de passe!"
	done

SECTION "_BuenaRadioText3", ROMX
_BuenaRadioText3::
	line "C'est..."
	done

SECTION "_BuenaRadioText4", ROMX
_BuenaRadioText4::
	line ""
	text_ram wStringBuffer1
	text "!"
	done

SECTION "_BuenaRadioText5", ROMX
_BuenaRadioText5::
	line "Souvenez-vous en!"
	done

SECTION "_BuenaRadioText6", ROMX
_BuenaRadioText6::
	line "I'm in Goldenrod's"
	done

SECTION "_BuenaRadioText7", ROMX
_BuenaRadioText7::
	line "Radio Tower!"
	done

SECTION "_BuenaRadioMidnightText1", ROMX
_BuenaRadioMidnightText1::
	line "Buena: Oh my…"
	done

SECTION "_BuenaRadioMidnightText2", ROMX
_BuenaRadioMidnightText2::
	line "Il est minuit!"
	done

SECTION "_BuenaRadioMidnightText3", ROMX
_BuenaRadioMidnightText3::
	line "C'est la fin!"
	done

SECTION "_BuenaRadioMidnightText4", ROMX
_BuenaRadioMidnightText4::
	line "Merci d'avoir"
	done

SECTION "_BuenaRadioMidnightText5", ROMX
_BuenaRadioMidnightText5::
	line "écouté aujourd'hui"
	done

SECTION "_BuenaRadioMidnightText6", ROMX
_BuenaRadioMidnightText6::
	line "et allez au dodo!"
	done

SECTION "_BuenaRadioMidnightText7", ROMX
_BuenaRadioMidnightText7::
	line "C'était DJ BUENA"
	done

SECTION "_BuenaRadioMidnightText8", ROMX
_BuenaRadioMidnightText8::
	line "you by DJ Buena!"
	done

SECTION "_BuenaRadioMidnightText9", ROMX
_BuenaRadioMidnightText9::
	text "I'm outta here!"
	done

SECTION "_BuenaRadioMidnightText10", ROMX
_BuenaRadioMidnightText10::
	text "…"
	done

SECTION "_BuenaOffTheAirText", ROMX
_BuenaOffTheAirText::
	line ""
	done

SECTION "Text_EnemyUsed", ROMX
Text_EnemyUsed::
	text "<ENEMY>"
	line "used "
	text_ram wMonOrItemNameBuffer
	text "!"
	prompt

SECTION "Text_EnemyUsedOn", ROMX
Text_EnemyUsedOn::
	text "<ENEMY>"
	line "used "
	text_ram wMonOrItemNameBuffer
	cont "on "
	text_ram wEnemyMonNickname
	text "!"
	prompt

SECTION "_AskFloorElevatorText", ROMX
_AskFloorElevatorText::
	text "Quel étage?"
	done

SECTION "_BugCatchingContestTimeUpText", ROMX
_BugCatchingContestTimeUpText::
	text "Announcer: BEEEP!"

	para "Time's up!"
	done

SECTION "_BugCatchingContestIsOverText", ROMX
_BugCatchingContestIsOverText::
	text "Announcer: The"
	line "Contest is over!"
	done

SECTION "_RepelWoreOffText", ROMX
_RepelWoreOffText::
	text "Repel's effect"
	line "wore off."
	done

SECTION "UseAnotherRepelText", ROMX
UseAnotherRepelText::
	text "Repel's effect"
	line "wore off."

	para "Use another?"
	done

SECTION "_JustSawSomeRareMonText", ROMX
_JustSawSomeRareMonText::
	text "I just saw some"
	line "rare "
	text_ram wStringBuffer1
	text " in"
	cont ""
	text_ram wStringBuffer2
	text "."

	para "I'll call you if I"
	line "see another rare"
	cont "#mon, OK?"
	prompt

SECTION "_SavingRecordText", ROMX
_SavingRecordText::
	text "Saving record…"
	line "Don't turn off!"
	done

SECTION "_NoCoinsText", ROMX
_NoCoinsText::
	text "You have no coins."
	prompt

SECTION "_NoCoinCaseText", ROMX
_NoCoinCaseText::
	text "You don't have a"
	line "Coin Case."
	prompt

SECTION "_NPCTradeCableText", ROMX
_NPCTradeCableText::
	text "OK, connectez le"
	line "Câble Game Link."
	prompt

SECTION "Text_NPCTraded", ROMX
Text_NPCTraded::
	text "<PLAYER> traded"
	line ""
	text_ram wMonOrItemNameBuffer
	text " for"
	cont ""
	text_ram wStringBuffer2
	text "."
	done

SECTION "_NPCTradeFanfareText", ROMX
_NPCTradeFanfareText::
	text_sound SFX_DEX_FANFARE_80_109
	text_pause
	text_end

SECTION "_NPCTradeIntroText1", ROMX
_NPCTradeIntroText1::
	text "I collect #mon."
	line "Do you have"
	cont ""
	text_ram wStringBuffer1
	text "?"

	para "Want to trade it"
	line "for my "
	text_ram wStringBuffer2
	text "?"
	done

SECTION "_NPCTradeCancelText1", ROMX
_NPCTradeCancelText1::
	text "Pas d'échange?"
	line "Maiiiiiis!!!"
	done

SECTION "_NPCTradeWrongText1", ROMX
_NPCTradeWrongText1::
	text "Huh? That's not"
	line ""
	text_ram wStringBuffer1
	text "."
	cont "What a letdown…"
	done

SECTION "_NPCTradeCompleteText1", ROMX
_NPCTradeCompleteText1::
	text "Yay! I got myself"
	line ""
	text_ram wStringBuffer1
	text "!"
	cont "Thanks!"
	done

SECTION "_NPCTradeAfterText1", ROMX
_NPCTradeAfterText1::
	text "Hi, how's my old"
	line ""
	text_ram wStringBuffer2
	text " doing?"
	done

SECTION "_NPCTradeIntroText2", ROMX
_NPCTradeIntroText2::
	text "Hi, I'm looking"
	line "for this #mon."

	para "If you have"
	line ""
	text_ram wStringBuffer1
	text ", would"

	para "you trade it for"
	line "my "
	text_ram wStringBuffer2
	text "?"
	done

SECTION "_NPCTradeCancelText2", ROMX
_NPCTradeCancelText2::
	text "T'en as pas non"
	line "plus?"
	para "Pfff...."
	line "Et zut..."
	done

SECTION "_NPCTradeWrongText2", ROMX
_NPCTradeWrongText2::
	text "You don't have"
	line ""
	text_ram wStringBuffer1
	text "? That's"
	cont "too bad, then."
	done

SECTION "_NPCTradeCompleteText2", ROMX
_NPCTradeCompleteText2::
	text "Great! Thank you!"

	para "I finally got"
	line ""
	text_ram wStringBuffer1
	text "."
	done

SECTION "_NPCTradeAfterText2", ROMX
_NPCTradeAfterText2::
	text "Hi! The "
	text_ram wMonOrItemNameBuffer
	line "you traded me is"
	cont "doing great!"
	done

SECTION "_NPCTradeIntroText3", ROMX
_NPCTradeIntroText3::
	text_ram wMonOrItemNameBuffer
	text "'s cute,"
	line "but I don't have"

	para "it. Do you have"
	line ""
	text_ram wStringBuffer1
	text "?"

	para "Want to trade it"
	line "for my "
	text_ram wStringBuffer2
	text "?"
	done

SECTION "_NPCTradeCancelText3", ROMX
_NPCTradeCancelText3::
	text "Tu veux pas échan-"
	line "ger? Bah mince..."
	done

SECTION "_NPCTradeWrongText3", ROMX
_NPCTradeWrongText3::
	text "That's not"
	line ""
	text_ram wStringBuffer1
	text "."

	para "Please trade with"
	line "me if you get one."
	done

SECTION "_NPCTradeCompleteText3", ROMX
_NPCTradeCompleteText3::
	text "Wow! Thank you!"
	line "I always wanted"
	cont ""
	text_ram wMonOrItemNameBuffer
	text "!"
	done

SECTION "_NPCTradeAfterText3", ROMX
_NPCTradeAfterText3::
	text "How is that"
	line ""
	text_ram wStringBuffer2
	text " I"
	cont "traded you doing?"

	para "Your "
	text_ram wMonOrItemNameBuffer
	text "'s"
	line "so cute!"
	done

SECTION "_NPCTradeCompleteText4", ROMX
_NPCTradeCompleteText4::
	text "Bah alors?"
	done

SECTION "_NPCTradeAfterText4", ROMX
_NPCTradeAfterText4::
	text "Trading is so odd…"

	para "I still have a lot"
	line "to learn about it."
	done

SECTION "_MomLeavingText1", ROMX
_MomLeavingText1::
	text "Wow, that's a cute"
	line "#mon."

	para "Where did you get"
	line "it?"

	para "…"

	para "So, you're leaving"
	line "on an adventure…"

	para "OK!"
	line "I'll help too."

	para "But what can I do"
	line "for you?"

	para "I know! I'll save"
	line "money for you."

	para "On a long journey,"
	line "money's important."

	para "Do you want me to"
	line "save your money?"
	done

SECTION "_MomLeavingText2", ROMX
_MomLeavingText2::
	text "OK, I'll take care"
	line "of your money."

	para "………………"
	prompt

SECTION "_MomLeavingText3", ROMX
_MomLeavingText3::
	text "Be careful."

	para "#mon are your"
	line "friends. You need"
	cont "to work as a team."

	para "Now, go on!"
	done

SECTION "_MomIsThisAboutYourMoneyText", ROMX
_MomIsThisAboutYourMoneyText::
	text "Hi! Welcome home!"
	line "You're trying very"
	cont "hard, I see."

	para "I've kept your"
	line "room tidy."

	para "Or is this about"
	line "your money?"
	done

SECTION "_MomBankWhatDoYouWantToDoText", ROMX
_MomBankWhatDoYouWantToDoText::
	text "Que voulez-vous"
	line "faire?"
	done

SECTION "_MomStoreMoneyText", ROMX
_MomStoreMoneyText::
	text "Combien veux-tu"
	line "économiser?"
	done

SECTION "_MomTakeMoneyText", ROMX
_MomTakeMoneyText::
	text "Combien veux-tu"
	line "prendre?"
	done

SECTION "_MomSaveMoneyText", ROMX
_MomSaveMoneyText::
	text "Veux-tu économiser"
	line "de l'argent?"
	done

SECTION "_MomHaventSavedThatMuchText", ROMX
_MomHaventSavedThatMuchText::
	text "Tu n'as pas écono-"
	line "misé autant."
	prompt

SECTION "_MomNotEnoughRoomInWalletText", ROMX
_MomNotEnoughRoomInWalletText::
	text "Tu ne peux en"
	line "prendre autant."
	prompt

SECTION "_MomInsufficientFundsInWalletText", ROMX
_MomInsufficientFundsInWalletText::
	text "Tu n'en as pas"
	line "autant."
	prompt

SECTION "_MomNotEnoughRoomInBankText", ROMX
_MomNotEnoughRoomInBankText::
	text "Tu ne peux en"
	line "économiser autant."
	prompt

SECTION "_MomStartSavingMoneyText", ROMX
_MomStartSavingMoneyText::
	text "OK, I'll save your"
	line "money. Trust me!"

	para "<PLAYER>, stick"
	line "with it!"
	done

SECTION "_MomStoredMoneyText", ROMX
_MomStoredMoneyText::
	text "Je m'occupe de tes"
	line "sous! Va!"
	done

SECTION "_MomTakenMoneyText", ROMX
_MomTakenMoneyText::
	text "<PLAYER>, don't"
	line "give up!"
	done

SECTION "_MomJustDoWhatYouCanText", ROMX
_MomJustDoWhatYouCanText::
	text "Fais de ton"
	line "mieux."
	done

SECTION "_DayCareManIntroText", ROMX
_DayCareManIntroText::
	text "I'm the Day-Care"
	line "Man. Want me to"
	cont "raise a #mon?"
	done

SECTION "_DayCareManIntroEggText", ROMX
_DayCareManIntroEggText::
	text "I'm the Day-Care"
	line "Man. Do you know"
	cont "about Eggs?"

	para "I was raising"
	line "#mon with my"
	cont "wife, you see."

	para "We were shocked to"
	line "find an Egg!"

	para "How incredible is"
	line "that?"

	para "So, want me to"
	line "raise a #mon?"
	done

SECTION "_DayCareLadyIntroText", ROMX
_DayCareLadyIntroText::
	text "I'm the Day-Care"
	line "Lady."

	para "Should I raise a"
	line "#mon for you?"
	done

SECTION "_DayCareLadyIntroEggText", ROMX
_DayCareLadyIntroEggText::
	text "I'm the Day-Care"
	line "Lady. Do you know"
	cont "about Eggs?"

	para "My husband and I"
	line "were raising some"
	cont "#mon, you see."

	para "We were shocked to"
	line "find an Egg!"

	para "How incredible"
	line "could that be?"

	para "Should I raise a"
	line "#mon for you?"
	done

SECTION "_WhatShouldIRaiseText", ROMX
_WhatShouldIRaiseText::
	text "Qui veux-tu que"
	line "j'entraîne?"
	prompt

SECTION "_OnlyOneMonText", ROMX
_OnlyOneMonText::
	text "Oh? But you have"
	line "just one #mon."
	prompt

SECTION "_CantAcceptEggText", ROMX
_CantAcceptEggText::
	text "Sorry, but I can't"
	line "accept an Egg."
	prompt

SECTION "_RemoveMailText", ROMX
_RemoveMailText::
	text "Remove Mail before"
	line "you come see me."
	prompt

SECTION "_LastHealthyMonText", ROMX
_LastHealthyMonText::
	text "Si tu me le donnes"
	line "qui va combattre"
	cont "pour toi?"
	prompt

SECTION "_IllRaiseYourMonText", ROMX
_IllRaiseYourMonText::
	text "OK. I'll raise"
	line "your "
	text_ram wStringBuffer1
	text "."
	prompt

SECTION "_ComeBackLaterText", ROMX
_ComeBackLaterText::
	text "Reviens le prendre"
	line "plus tard."
	done

SECTION "_AreWeGeniusesText", ROMX
_AreWeGeniusesText::
	text "Are we geniuses or"
	line "what? Want to see"
	cont "your "
	text_ram wStringBuffer1
	text "?"
	done

SECTION "_YourMonHasGrownText", ROMX
_YourMonHasGrownText::
	text "Your "
	text_ram wStringBuffer1
	line "has grown a lot."

	para "Its level grew"
	line "by "
	text_decimal wStringBuffer2 + 1, 1, 3
	text "."

	para "If you want your"
	line "#mon back, it"
	cont "will cost ¥"
	text_decimal wStringBuffer2 + 2, 3, 5
	text "."
	done

SECTION "_PerfectHeresYourMonText", ROMX
_PerfectHeresYourMonText::
	text "Perfect! Here's"
	line "your #mon."
	prompt

SECTION "_GotBackMonText", ROMX
_GotBackMonText::
	text "<PLAYER> got back"
	line ""
	text_ram wStringBuffer1
	text "."
	prompt

SECTION "_BackAlreadyText", ROMX
_BackAlreadyText::
	text "Huh? Back already?"
	line "Your "
	text_ram wStringBuffer1

	para "needs a little"
	line "more time with us."

	para "If you want your"
	line "#mon back, it"
	cont "will cost ¥100."
	done

SECTION "_HaveNoRoomText", ROMX
_HaveNoRoomText::
	text "Tu n'as pas de"
	line "place."
	prompt

SECTION "_NotEnoughMoneyText", ROMX
_NotEnoughMoneyText::
	text "Tu n'as pas assez"
	line "d'argent."
	prompt

SECTION "_OhFineThenText", ROMX
_OhFineThenText::
	text "Très bien."
	prompt

SECTION "_ComeAgainText", ROMX
_ComeAgainText::
	text "A bientôt."
	done

SECTION "_NotYetText", ROMX
_NotYetText::
	text "Pas encore..."
	done

SECTION "_FoundAnEggAgainText", ROMX
_FoundAnEggAgainText::
	text "Ah, it's you!"

	para "Your #mon had"
	line "another Egg!"

	para "You want it?"
	done

SECTION "_FoundAnEggText", ROMX
_FoundAnEggText::
	text "Ah, it's you!"

	para "We were raising"
	line "your #mon, and"

	para "my goodness, were"
	line "we surprised!"

	para "Your #mon had"
	line "an Egg!"

	para "We don't know how"
	line "it got there, but"

	para "your #mon had"
	line "it. You want it?"
	done

SECTION "_ReceivedEggText", ROMX
_ReceivedEggText::
	text "<PLAYER> received"
	line "the Egg!"
	done

SECTION "_TakeGoodCareOfEggText", ROMX
_TakeGoodCareOfEggText::
	text "Take good care of"
	line "it."
	done

SECTION "_IllKeepItThanksText", ROMX
_IllKeepItThanksText::
	text "Bon ben..."
	line "J'le garde. Merci!"
	done

SECTION "_NoRoomForEggText", ROMX
_NoRoomForEggText::
	text "You have no room"
	line "in your party"
	cont "or your Box."
	cont "Come back later."
	done

SECTION "_NameRaterHelloText", ROMX
_NameRaterHelloText::
	text "Hello, hello! I'm"
	line "the Name Rater."

	para "I rate the names"
	line "of #mon."

	para "Would you like me"
	line "to rate names?"
	done

SECTION "_NameRaterWhichMonText", ROMX
_NameRaterWhichMonText::
	text "Which #mon's"
	line "nickname should I"
	cont "rate for you?"
	prompt

SECTION "_NameRaterBetterNameText", ROMX
_NameRaterBetterNameText::
	text "Hm… "
	text_ram wStringBuffer1
	text "…"
	line "That's a fairly"
	cont "decent name."

	para "But, how about a"
	line "slightly better"
	cont "nickname?"

	para "Want me to give it"
	line "a better name?"
	done

SECTION "_NameRaterWhatNameText", ROMX
_NameRaterWhatNameText::
	text "OK. Comment"
	line "allons-nous le"
	cont "nommer?"
	prompt

SECTION "_NameRaterFinishedText", ROMX
_NameRaterFinishedText::
	text "C'est bien mieux"
	line "qu'avant!"
	para "Bien joué!"
	done

SECTION "_NameRaterComeAgainText", ROMX
_NameRaterComeAgainText::
	text "OK. Reviens une"
	line "autre fois."
	done

SECTION "_NameRaterPerfectNameText", ROMX
_NameRaterPerfectNameText::
	text "Hm… "
	text_ram wStringBuffer1
	text "?"
	line "What a great name!"
	cont "It's perfect."

	para "Treat "
	text_ram wStringBuffer1
	line "with loving care."
	done

SECTION "_NameRaterEggText", ROMX
_NameRaterEggText::
	text "Whoa… That's just"
	line "an Egg."
	done

SECTION "_NameRaterSameNameText", ROMX
_NameRaterSameNameText::
	text "Ca ressemble un"
	line "peu à l'ancien..."
	para "Mais c'est mieux"
	line "qu'avant!"
	para "Bien joué!"
	done

SECTION "_NameRaterNamedText", ROMX
_NameRaterNamedText::
	text "All right. This"
	line "#mon is now"
	cont "named "
	text_ram wStringBuffer1
	text "."
	prompt

SECTION "Text_Gained", ROMX
Text_Gained::
	text_ram wStringBuffer1
	text " gained@"
	text_end

SECTION "Text_ABoostedStringBuffer2ExpPoints", ROMX
Text_ABoostedStringBuffer2ExpPoints::
	line "a boosted"
	cont ""
	text_decimal wStringBuffer2, 3, 6
	text " Exp.Points!"
	prompt

SECTION "Text_StringBuffer2ExpPoints", ROMX
Text_StringBuffer2ExpPoints::
	line ""
	text_decimal wStringBuffer2, 3, 6
	text " Exp.Points!"
	prompt

SECTION "Text_GoPkmn", ROMX
Text_GoPkmn::
	text "Go! @"
	text_end

SECTION "Text_DoItPkmn", ROMX
Text_DoItPkmn::
	text "Do it! @"
	text_end

SECTION "Text_GoForItPkmn", ROMX
Text_GoForItPkmn::
	text "Go for it,"
	line "@"
	text_end

SECTION "Text_YourFoesWeakGetmPkmn", ROMX
Text_YourFoesWeakGetmPkmn::
	text "Your foe's weak!"
	line "Get'm, @"
	text_end

SECTION "Text_BattleMonNick01", ROMX
Text_BattleMonNick01::
	text_ram wBattleMonNickname
	text "!"
	done

SECTION "Text_BattleMonNickComma", ROMX
Text_BattleMonNickComma::
	text_ram wBattleMonNickname
	text ",@"
	text_end

SECTION "Text_ThatsEnoughComeBack", ROMX
Text_ThatsEnoughComeBack::
	text " that's"
	line "enough! Come back!@"
	text_end

SECTION "Text_OKComeBack", ROMX
Text_OKComeBack::
	text " OK!"
	line "Come back!@"
	text_end

SECTION "Text_GoodComeBack", ROMX
Text_GoodComeBack::
	text " good!"
	line "Come back!@"
	text_end

SECTION "Text_ComeBack", ROMX
Text_ComeBack::
	text " come"
	line "back!"
	done

SECTION "_BootedTMText", ROMX
_BootedTMText::
	text "Booted up a TM."
	done

SECTION "_BootedHMText", ROMX
_BootedHMText::
	text "Booted up an HM."
	done

SECTION "_ContainedMoveText", ROMX
_ContainedMoveText::
	text "It contained"
	line ""
	text_ram wStringBuffer2
	text "."

	para "Teach "
	text_ram wStringBuffer2
	line "to a #mon?"
	done

SECTION "_TMHMNotCompatibleText", ROMX
_TMHMNotCompatibleText::
	text_ram wStringBuffer2
	text " is"
	line "not compatible"
	cont "with "
	text_ram wStringBuffer1
	text "."

	para "It can't learn"
	line ""
	text_ram wStringBuffer2
	text "."
	prompt

SECTION "_BadgeRequiredText", ROMX
_BadgeRequiredText::
	text "Sorry! A new Badge"
	line "is required."
	prompt

SECTION "_CantUseItemText", ROMX
_CantUseItemText::
	text "Impossible d'uti-"
	line "liser ça ici."
	prompt

SECTION "_UseCutText", ROMX
_UseCutText::
	text_ram wStringBuffer2
	text " used"
	line "Cut!"
	prompt

SECTION "_CutNothingText", ROMX
_CutNothingText::
	text "There's nothing to"
	line "Cut here."
	prompt

SECTION "_AskFlashText", ROMX
_AskFlashText::
	text "It's pitch black."
	line "Want to use Flash?"
	done

SECTION "_BlindingFlashText", ROMX
_BlindingFlashText::
	text "A blinding Flash"
	line "lights the area!"
	text_promptbutton
	text_end

SECTION "_UsedSurfText", ROMX
_UsedSurfText::
	text_ram wStringBuffer2
	text " used"
	line "Surf!"
	done

SECTION "_CantSurfText", ROMX
_CantSurfText::
	text "You can't Surf"
	line "here."
	prompt

SECTION "_AlreadySurfingText", ROMX
_AlreadySurfingText::
	text "You're already"
	line "Surfing."
	prompt

SECTION "_AskSurfText", ROMX
_AskSurfText::
	text "The water is calm."
	line "Want to Surf?"
	done

SECTION "_UseWaterfallText", ROMX
_UseWaterfallText::
	text_ram wStringBuffer2
	text " used"
	line "Waterfall!"
	done

SECTION "_HugeWaterfallText", ROMX
_HugeWaterfallText::
	text "Oh! Une énorme"
	line "cascade."
	done

SECTION "_AskWaterfallText", ROMX
_AskWaterfallText::
	text "Do you want to use"
	line "Waterfall?"
	done

SECTION "_UseDigText", ROMX
_UseDigText::
	text_ram wStringBuffer2
	text " used"
	line "Dig!"
	done

SECTION "_UseEscapeRopeText", ROMX
_UseEscapeRopeText::
	text "<PLAYER> used an"
	line "Escape Rope."
	done

SECTION "_CantUseDigText", ROMX
_CantUseDigText::
	text "Impossible d'uti-"
	line "liser ça ici."
	done

SECTION "_CantUseTeleportText", ROMX
_CantUseTeleportText::
	text "Can't use that"
	line "here."

	para ""
	done

SECTION "_UseStrengthText", ROMX
_UseStrengthText::
	text_ram wStringBuffer2
	text " used"
	line "Strength!"
	done

SECTION "_MoveBoulderText", ROMX
_MoveBoulderText::
	text_ram wStringBuffer1
	text " can"
	line "move boulders."
	prompt

SECTION "_AskStrengthText", ROMX
_AskStrengthText::
	text "A #mon may be"
	line "able to move this."

	para "Want to use"
	line "Strength?"
	done

SECTION "_BouldersMoveText", ROMX
_BouldersMoveText::
	text "Boulders may now"
	line "be moved!"
	done

SECTION "_BouldersMayMoveText", ROMX
_BouldersMayMoveText::
	text "A #mon may be"
	line "able to move this."
	done

SECTION "_UseWhirlpoolText", ROMX
_UseWhirlpoolText::
	text_ram wStringBuffer2
	text " used"
	line "Whirlpool!"
	prompt

SECTION "_MayPassWhirlpoolText", ROMX
_MayPassWhirlpoolText::
	text "It's a vicious"
	line "whirlpool!"

	para "A #mon may be"
	line "able to pass it."
	done

SECTION "_AskWhirlpoolText", ROMX
_AskWhirlpoolText::
	text "A whirlpool is in"
	line "the way."

	para "Want to use"
	line "Whirlpool?"
	done

SECTION "_UseHeadbuttText", ROMX
_UseHeadbuttText::
	text_ram wStringBuffer2
	text " did a"
	line "Headbutt!"
	prompt

SECTION "_HeadbuttNothingText", ROMX
_HeadbuttNothingText::
	text "Non. Rien..."
	done

SECTION "_AskHeadbuttText", ROMX
_AskHeadbuttText::
	text "A #mon could be"
	line "in this tree."

	para "Want to Headbutt"
	line "it?"
	done

SECTION "_UseRockSmashText", ROMX
_UseRockSmashText::
	text_ram wStringBuffer2
	text " used"
if DEF(FAITHFUL)
	line "Rock Smash!"
else
	line "Brick Break!"
endc
	prompt

SECTION "_MaySmashText", ROMX
_MaySmashText::
	text "Maybe a #mon"
	line "can break this."
	done

SECTION "_AskRockSmashText", ROMX
_AskRockSmashText::
	text "This rock looks"
	line "breakable."

if DEF(FAITHFUL)
	para "Want to use Rock"
	line "Smash?"
else
	para "Want to use Brick"
	line "Break?"
endc
	done

SECTION "_RodBiteText", ROMX
_RodBiteText::
	text "Oh!"
	line "Ca mord!"
	prompt

SECTION "_RodNothingText", ROMX
_RodNothingText::
	text "Rien du tout!"
	prompt

SECTION "_CantGetOffBikeText", ROMX
_CantGetOffBikeText::
	text "Vous ne pouvez"
	line "pas descendre ici!"
	done

SECTION "_GotOnBikeText", ROMX
_GotOnBikeText::
	text "<PLAYER> got on the"
	line ""
	text_ram wStringBuffer2
	text "."
	done

SECTION "_GotOffBikeText", ROMX
_GotOffBikeText::
	text "<PLAYER> got off"
	line "the "
	text_ram wStringBuffer2
	text "."
	done

SECTION "_AskCutText", ROMX
_AskCutText::
	text "This tree can be"
	line "Cut!"

	para "Want to use Cut?"
	done

SECTION "_CanCutText", ROMX
_CanCutText::
	text "This tree can be"
	line "Cut!"
	done

SECTION "_FoundItemText", ROMX
_FoundItemText::
	text "<PLAYER> found"
	line ""
	text_ram wStringBuffer3
	text "!"
	done

SECTION "_GotTheItemText", ROMX
_GotTheItemText:
	text "<PLAYER> got"
	line "the "
	text_ram wStringBuffer4
	text "."
	done

SECTION "_ReceivedTheBadgeText", ROMX
_ReceivedTheBadgeText:
	text "<PLAYER> received"
	line "the "
	text_ram wStringBuffer4
	text " Badge."
	done

SECTION "WhiteoutText", ROMX
WhiteoutText::
	text "<PLAYER> is out of"
	line "useable #mon!"

	para "<PLAYER> blacked"
	line "out!"
	done

SECTION "WhiteoutToWildText", ROMX
WhiteoutToWildText::
	text "<PLAYER> is out of"
	line "useable #mon!"

	para "<PLAYER> panicked"
	line "and dropped"
	cont "¥"
	text_decimal hMoneyTemp, 3, 7
	text "…"

	para "………………"
	line "………………"

	para "<PLAYER> blacked"
	line "out!"
	done

SECTION "WhiteoutToTrainerText", ROMX
WhiteoutToTrainerText::
	text "<PLAYER> is out of"
	line "useable #mon!"

	para "<PLAYER> paid"
	line "¥"
	text_decimal hMoneyTemp, 3, 7
	text " to the"
	cont "winner…"

	para "………………"
	line "………………"

	para "<PLAYER> blacked"
	line "out!"
	done

SECTION "ForfeitToTrainerText", ROMX
ForfeitToTrainerText::
	text "<PLAYER> forfeit-"
	line "ed the battle…"

	para "<PLAYER> paid"
	line "¥"
	text_decimal hMoneyTemp, 3, 7
	text " to the"
	cont "winner…"

	para "………………"
	line "………………"

	para "<PLAYER> blacked"
	line "out!"
	done

SECTION "_PoisonFaintText", ROMX
_PoisonFaintText::
	text_ram wStringBuffer3
	line "recovered from"
	cont "its poisoning!"
	prompt

SECTION "_UseSweetHoneyText", ROMX
_UseSweetHoneyText::
	text "<PLAYER> spread"
if DEF(FAITHFUL)
	line "the Honey!"
else
	line "the Sweet Honey!"
endc
	done

SECTION "_SweetHoneyNothingText", ROMX
_SweetHoneyNothingText::
	text "Il n'y a rien"
	line "dans le coin..."
	done

SECTION "_SquirtbottleNothingText", ROMX
_SquirtbottleNothingText::
	text "<PLAYER> sprinkled"
	line "water."

	para "But nothing"
	line "happened…"
	done

SECTION "_UseSacredAshText", ROMX
_UseSacredAshText::
	text "<PLAYER>'s #mon"
	line "were all healed!"
	done

SECTION "Text_AnEGGCantHoldAnItem", ROMX
Text_AnEGGCantHoldAnItem::
	text "An Egg can't hold"
	line "an item."
	prompt

SECTION "_AskThrowAwayText", ROMX
_AskThrowAwayText::
	text "En jeter"
	line "combien?"
	done

SECTION "_AskQuantityThrowAwayText", ROMX
_AskQuantityThrowAwayText::
	text "Throw away "
	text_decimal wItemQuantityChangeBuffer, 1, 2
	line ""
	text_ram wStringBuffer2
	text_plural
	text "?"
	done

SECTION "_ThrewAwayText", ROMX
_ThrewAwayText::
	text "Threw away"
	line ""
	text_ram wStringBuffer2
	text_plural
	text "."
	prompt

SECTION "_OakThisIsntTheTimeText", ROMX
_OakThisIsntTheTimeText::
	text "Oak: <PLAYER>!"
	line "This isn't the"
	cont "time to use that!"
	prompt

SECTION "Text_YouDontHaveAPkmn", ROMX
Text_YouDontHaveAPkmn::
	text "You don't have a"
	line "#mon!"
	prompt

SECTION "_RegisteredItemText", ROMX
_RegisteredItemText::
	text "Registered the"
	line ""
	text_ram wStringBuffer2
	text "."
	prompt

SECTION "UnregisteredItemText", ROMX
UnregisteredItemText::
	text "Unregistered the"
	line ""
	text_ram wStringBuffer2
	text "."
	prompt

SECTION "_CantRegisterText", ROMX
_CantRegisterText::
	text "On ne peut enre-"
	line "gistrer cet objet."
	prompt

SECTION "_AskItemMoveText", ROMX
_AskItemMoveText::
	text "Où déplacer"
	line "ceci?"
	done

SECTION "Text_AreYouABoyOrAreYouAGirl", ROMX
Text_AreYouABoyOrAreYouAGirl::
	text "Which photo is on"
	line "your Trainer Card?"
	done

SECTION "Text_SoThisIsYou", ROMX
Text_SoThisIsYou::
	text "So this is you?"
	done

SECTION "Text_BattleUser", ROMX
Text_BattleUser::
	text "<USER>@"
	text_end

SECTION "_BattleTookSunlightText", ROMX
_BattleTookSunlightText::
	line "rayonne!"
	prompt

SECTION "_BattleFlewText", ROMX
_BattleFlewText::
	line "s'envole!"
	prompt

SECTION "_BattleDugText", ROMX
_BattleDugText::
	line "creuse un trou!"
	prompt

SECTION "Text_BreedHuh", ROMX
Text_BreedHuh::
	text "Huh?"
	para "@"
	text_end

SECTION "_BreedEggHatchText", ROMX
_BreedEggHatchText::
	text_ram wStringBuffer1
	text " came"
	line "out of its Egg!"
	text_sound SFX_CAUGHT_MON
	text_promptbutton
	text_end

SECTION "_BreedAskNicknameText", ROMX
_BreedAskNicknameText::
	text "Give a nickname to"
	line ""
	text_ram wStringBuffer1
	text "?"
	done

SECTION "_LeftWithDayCareLadyText", ROMX
_LeftWithDayCareLadyText::
	text "It's "
	text_ram wBreedMon2Nickname
	line "that was left with"
	cont "the Day-Care Lady."
	done

SECTION "_LeftWithDayCareManText", ROMX
_LeftWithDayCareManText::
	text "It's "
	text_ram wBreedMon1Nickname
	line "that was left with"
	cont "the Day-Care Man."
	done

SECTION "_BreedNoInterestText", ROMX
_BreedNoInterestText::
	text "It has no interest"
	line "in "
	text_ram wStringBuffer1
	text "."
	prompt

SECTION "_BreedAppearsToCareForText", ROMX
_BreedAppearsToCareForText::
	text "It appears to care"
	line "for "
	text_ram wStringBuffer1
	text "."
	prompt

SECTION "_BreedFriendlyText", ROMX
_BreedFriendlyText::
	text "It's friendly with"
	line ""
	text_ram wStringBuffer1
	text "."
	prompt

SECTION "_BreedShowsInterestText", ROMX
_BreedShowsInterestText::
	text "It shows interest"
	line "in "
	text_ram wStringBuffer1
	text "."
	prompt

SECTION "_EmptyMailboxText", ROMX
_EmptyMailboxText::
	text "There's no Mail"
	line "here."
	prompt

SECTION "ClearedMailPutAwayText", ROMX
ClearedMailPutAwayText::
	text "The cleared Mail"
	line "was put away."
	prompt

SECTION "MailPackFullText", ROMX
MailPackFullText::
	text "The Bag is full."
	prompt

SECTION "MailMessageLostText", ROMX
MailMessageLostText::
	text "The Mail's message"
	line "will be lost. OK?"
	done

SECTION "MailAlreadyHoldingItemText", ROMX
MailAlreadyHoldingItemText::
	text "Il porte déjà"
	line "un objet."
	prompt

SECTION "MailEggText", ROMX
MailEggText::
	text "An Egg can't hold"
	line "any Mail."
	prompt

SECTION "MailMovedFromBoxText", ROMX
MailMovedFromBoxText::
	text "The Mail was moved"
	line "from the Mailbox."
	prompt

SECTION "_ReceivedGiftMonText", ROMX
_ReceivedGiftMonText::
	text "<PLAYER> received"
	line ""
	text_ram wMonOrItemNameBuffer
	text "!"
	done

SECTION "_EggSentToPCText", ROMX
_EggSentToPCText::
	text "The Egg was sent"
	line "to "
	text_ram wStringBuffer1
	text "."
	prompt

SECTION "_PCGottaHavePokemonText", ROMX
_PCGottaHavePokemonText::
	text "You gotta have"
	line "#mon to call!"
	prompt

SECTION "_ContestCaughtMonText", ROMX
_ContestCaughtMonText::
	text "Caught "
	text_ram wStringBuffer1
	text "!"
	prompt

SECTION "_ContestAskSwitchText", ROMX
_ContestAskSwitchText::
	text "Switch #mon?"
	done

SECTION "_ContestAlreadyCaughtText", ROMX
_ContestAlreadyCaughtText::
	text "You already caught"
	line "a "
	text_ram wStringBuffer1
	text "."
	prompt

SECTION "ContestJudging_FirstPlaceText", ROMX
ContestJudging_FirstPlaceText::
	text "This Bug-Catching"
	line "Contest winner is"
	text_pause
	text "…"

	para ""
	text_ram wBugContestWinnerName
	text ","
	line "who caught a"
	cont ""
	text_ram wStringBuffer1
	text "!@"
	text_end

SECTION "ContestJudging_FirstPlaceScoreText", ROMX
ContestJudging_FirstPlaceScoreText::
	para "The winning score"
	line "was "
	text_decimal wBugContestFirstPlaceScore, 2, 3
	text " points!"
	prompt

SECTION "ContestJudging_SecondPlaceText", ROMX
ContestJudging_SecondPlaceText::
	text "Placing second was"
	line ""
	text_ram wBugContestWinnerName
	text ","
	para "who caught a"
	line ""
	text_ram wStringBuffer1
	text "!@"
	text_end

SECTION "ContestJudging_SecondPlaceScoreText", ROMX
ContestJudging_SecondPlaceScoreText::
	para "The score was"
	line ""
	text_decimal wBugContestSecondPlaceScore, 2, 3
	text " points!"
	prompt

SECTION "ContestJudging_ThirdPlaceText", ROMX
ContestJudging_ThirdPlaceText::
	text "Placing third was"
	line ""
	text_ram wBugContestWinnerName
	text ","
	para "who caught a"
	line ""
	text_ram wStringBuffer1
	text "!@"
	text_end

SECTION "ContestJudging_ThirdPlaceScoreText", ROMX
ContestJudging_ThirdPlaceScoreText::
	para "The score was"
	line ""
	text_decimal wBugContestThirdPlaceScore, 2, 3
	text " points!"
	prompt

SECTION "_MagikarpGuruMeasureText", ROMX
_MagikarpGuruMeasureText::
	text "Let me measure"
	line "that Magikarp."

	para "…Hm, it measures"
	line ""
	text_ram wStringBuffer1
	text "."
	prompt

SECTION "_KarpGuruRecordText", ROMX
_KarpGuruRecordText::
	text "Current Record"
	para ""
	text_ram wStringBuffer1
	text " caught by"
	line ""
	text_ram wMagikarpRecordHoldersName
	text_promptbutton
	text_end

SECTION "_LuckyNumberMatchPartyText", ROMX
_LuckyNumberMatchPartyText::
	text "Congratulations!"

	para "We have a match"
	line "with the ID number"

	para "of "
	text_ram wStringBuffer2
	text " in"
	line "your party."
	prompt

SECTION "_LuckyNumberMatchPCText", ROMX
_LuckyNumberMatchPCText::
	text "Congratulations!"

	para "We have a match"
	line "with the ID number"

	para "of "
	text_ram wStringBuffer2
	text " in Box"
	line "“"
	text_ram wStringBuffer1
	text "”."
	prompt

SECTION "_CaughtAskNicknameText", ROMX
_CaughtAskNicknameText::
	text "Give a nickname to"
	line "the "
	text_ram wStringBuffer1
	text " you"
	cont "received?"
	done

SECTION "_PokecenterPCCantUseText", ROMX
_PokecenterPCCantUseText::
	text "Bzzzzt! You must"
	line "have a #mon to"
	cont "use this!"
	prompt

SECTION "_PlayersPCTurnOnText", ROMX
_PlayersPCTurnOnText::
	text "<PLAYER> turned on"
	line "the PC."
	prompt

SECTION "_PlayersPCAskWhatDoText", ROMX
_PlayersPCAskWhatDoText::
	text "Que voulez-vous"
	line "faire?"
	done

SECTION "_PlayersPCHowManyWithdrawText", ROMX
_PlayersPCHowManyWithdrawText::
	text "Combien voulez-"
	line "vous en retirer?"
	done

SECTION "_PlayersPCWithdrewItemsText", ROMX
_PlayersPCWithdrewItemsText::
	text "Withdrew "
	text_decimal wItemQuantityChangeBuffer, 1, 2
	line ""
	text_ram wStringBuffer2
	text_plural
	text "."
	prompt

SECTION "_PlayersPCNoRoomWithdrawText", ROMX
_PlayersPCNoRoomWithdrawText::
	text "Pas de place pour"
	line "plus d'objets."
	prompt

SECTION "_PlayersPCNoItemsText", ROMX
_PlayersPCNoItemsText::
	text "Pas d'objets ici!"
	prompt

SECTION "_PlayersPCCantDepositItemText", ROMX
_PlayersPCCantDepositItemText::
	text "That item can't"
	line "be deposited."
	prompt

SECTION "_PlayersPCHowManyDepositText", ROMX
_PlayersPCHowManyDepositText::
	text "Combien voulez-"
	line "vous en déposer?"
	done

SECTION "_PlayersPCDepositItemsText", ROMX
_PlayersPCDepositItemsText::
	text "Deposited "
	text_decimal wItemQuantityChangeBuffer, 1, 2
	line ""
	text_ram wStringBuffer2
	text_plural
	text "."
	prompt

SECTION "_PlayersPCNoRoomDepositText", ROMX
_PlayersPCNoRoomDepositText::
	text "Plus de place pour"
	line "garder des objets."
	prompt

SECTION "_PokecenterPCTurnOnText", ROMX
_PokecenterPCTurnOnText::
	text "<PLAYER> turned on"
	line "the PC."
	prompt

SECTION "_PokecenterPCWhoseText", ROMX
_PokecenterPCWhoseText::
	text "Accéder à quel PC?"
	done

SECTION "_PokecenterBillsPCText", ROMX
_PokecenterBillsPCText::
	text "Bill's PC"
	line "accessed."

	para "#mon Storage"
	line "System opened."
	prompt

SECTION "_PokecenterPlayersPCText", ROMX
_PokecenterPlayersPCText::
	text "Accessed own PC."

	para "Item Storage"
	line "System opened."
	prompt

SECTION "_PokecenterOaksPCText", ROMX
_PokecenterOaksPCText::
	text "Prof.Oak's PC"
	line "accessed."

	para "#dex Rating"
	line "System opened."
	prompt

SECTION "_PokecenterPCOaksClosedText", ROMX
_PokecenterPCOaksClosedText::
	text "..."
	line "Déconnexion..."
	done

SECTION "_OakPCText1", ROMX
_OakPCText1::
	text "Want to get your"
	line "#dex rated?"
	done

SECTION "_OakPCText2", ROMX
_OakPCText2::
	text "Current #dex"
	line "completion level:"
	prompt

SECTION "_OakPCText3", ROMX
_OakPCText3::
	text_decimal wTempDexSeen, 2, 3
	text " #mon seen"
	line ""
	text_decimal wTempDexOwn, 2, 3
	text " #mon owned"

	para "Prof.Oak's"
	line "Rating:"
	done

SECTION "_OakRating01", ROMX
_OakRating01::
	text "Look for #mon"
	line "in grassy areas!"
	done

SECTION "_OakRating02", ROMX
_OakRating02::
	text "Good. I see you"
	line "understand how to"
	cont "use # Balls."
	done

SECTION "_OakRating03", ROMX
_OakRating03::
	text "Tu t'améliores"
	line "mais il te reste"
	para "beaucoup de choses"
	line "à découvrir."
	done

SECTION "_OakRating04", ROMX
_OakRating04::
	text "You need to fill"
	line "up the #dex."

	para "Catch different"
	line "kinds of #mon!"
	done

SECTION "_OakRating05", ROMX
_OakRating05::
	text "You're trying--I"
	line "can see that."

	para "Your #dex is"
	line "coming together."
	done

SECTION "_OakRating06", ROMX
_OakRating06::
	text "To evolve, some"
	line "#mon grow,"

	para "others use the"
	line "effects of Stones."
	done

SECTION "_OakRating07", ROMX
_OakRating07::
	text "Have you gotten a"
	line "fishing Rod? You"

	para "can catch #mon"
	line "by fishing."
	done

SECTION "_OakRating08", ROMX
_OakRating08::
	text "Super! Tu aimes"
	line "collectionner"
	cont "des trucs, hein?"
	done

SECTION "_OakRating09", ROMX
_OakRating09::
	text "Some #mon only"
	line "appear during"

	para "certain times of"
	line "the day."
	done

SECTION "_OakRating10", ROMX
_OakRating10::
	text "Your #dex is"
	line "filling up. Keep"
	cont "up the good work!"
	done

SECTION "_OakRating11", ROMX
_OakRating11::
	text "I'm impressed."
	line "You're evolving"

	para "#mon, not just"
	line "catching them."
	done

SECTION "_OakRating12", ROMX
_OakRating12::
	text "Have you met Kurt?"
	line "His custom Balls"
	cont "should help."
	done

SECTION "_OakRating13", ROMX
_OakRating13::
	text "Wow. You've found"
	line "more #mon than"

	para "the last #dex"
	line "research project."
	done

SECTION "_OakRating14", ROMX
_OakRating14::
	text "Are you trading"
	line "your #mon?"

	para "It's tough to do"
	line "this alone!"
	done

SECTION "_OakRating15", ROMX
_OakRating15::
	text "Wow! You've hit"
	line "200! Your #dex"
	cont "is looking great!"
	done

SECTION "_OakRating16", ROMX
_OakRating16::
	text "You've found so"
	line "many #mon!"

	para "You've really"
	line "helped my studies!"
	done

SECTION "_OakRating17", ROMX
_OakRating17::
	text "Magnificent! You"
	line "could become a"

	para "#mon professor"
	line "right now!"
	done

SECTION "_OakRating18", ROMX
_OakRating18::
	text "Your #dex is"
	line "amazing! You're"

	para "ready to turn"
	line "professional!"
	done

SECTION "_OakRating19", ROMX
_OakRating19::
	text "Whoa! A perfect"
	line "#dex! I've"

	para "dreamt about this!"
	line "Congratulations!"
	done

SECTION "_OakPCText4", ROMX
_OakPCText4::
	text "The link to Prof."
	line "Oak's PC closed."
	done

SECTION "_MemoryGameYeahText", ROMX
_MemoryGameYeahText::
	text ", ouais!"
	done

SECTION "_MemoryGameDarnText", ROMX
_MemoryGameDarnText::
	text "Zut..."
	done

SECTION "_StartMenuContestEndText", ROMX
_StartMenuContestEndText::
	text "Voulez-vous arrê-"
	line "ter le concours?"
	done

SECTION "_ItemsTossOutHowManyText", ROMX
_ItemsTossOutHowManyText::
	text "Toss out how many"
	line ""
	text_ram wStringBuffer2
	text_plural
	text "?"
	done

SECTION "_ItemsDiscardedText", ROMX
_ItemsDiscardedText::
	text "Discarded"
	line ""
	text_ram wStringBuffer1
	text_plural
	text "."
	prompt

SECTION "_ItemsOakWarningText", ROMX
_ItemsOakWarningText::
	text "Oak: <PLAYER>!"
	line "This isn't the"
	cont "time to use that!"
	done

SECTION "_PokemonSwapItemText", ROMX
_PokemonSwapItemText::
	text "Took "
	text_ram wMonOrItemNameBuffer
	text "'s"
	line ""
	text_ram wStringBuffer1
	text " and"

	para "made it hold"
	line ""
	text_ram wStringBuffer2
	text "."
	prompt

SECTION "_PokemonHoldItemText", ROMX
_PokemonHoldItemText::
	text "Made "
	text_ram wMonOrItemNameBuffer
	line "hold "
	text_ram wStringBuffer2
	text "."
	prompt

SECTION "_PokemonRemoveMailText", ROMX
_PokemonRemoveMailText::
	text "Please remove the"
	line "Mail first."
	prompt

SECTION "_PokemonNotHoldingText", ROMX
_PokemonNotHoldingText::
	text_ram wMonOrItemNameBuffer
	text " isn't"
	line "holding anything."
	prompt

SECTION "_ItemStorageFullText", ROMX
_ItemStorageFullText::
	text "Espace de stockage"
	line "d'objets complet."
	prompt

SECTION "_PokemonTookItemText", ROMX
_PokemonTookItemText::
	text "Took "
	text_ram wStringBuffer1
	line "from "
	text_ram wMonOrItemNameBuffer
	text "."
	prompt

SECTION "_PokemonAskSwapItemText", ROMX
_PokemonAskSwapItemText::
	text_ram wMonOrItemNameBuffer
	text " is"
	line "already holding"

	para ""
	text_ram wStringBuffer1
	text "."
	line "Switch items?"
	done

SECTION "_ItemCantHeldText", ROMX
_ItemCantHeldText::
	text "That item can't be"
	line "held."
	prompt

SECTION "_MailLoseMessageText", ROMX
_MailLoseMessageText::
	text "The Mail will lose"
	line "its message. OK?"
	done

SECTION "_MailDetachedText", ROMX
_MailDetachedText::
	text "Mail detached from"
	line ""
	text_ram wStringBuffer1
	text "."
	prompt

SECTION "_MailNoSpaceText", ROMX
_MailNoSpaceText::
	text "There's no space"
	line "for removing Mail."
	prompt

SECTION "_MailAskSendToPCText", ROMX
_MailAskSendToPCText::
	text "Send the removed"
	line "Mail to your PC?"
	done

SECTION "_MailboxFullText", ROMX
_MailboxFullText::
	text "Your PC's Mailbox"
	line "is full."
	prompt

SECTION "_MailSentToPCText", ROMX
_MailSentToPCText::
	text "The Mail was sent"
	line "to your PC."
	prompt

SECTION "_PokemonNotEnoughHPText", ROMX
_PokemonNotEnoughHPText::
	text "Pas assez de PV!"
	prompt

SECTION "_MayRegisterItemText", ROMX
_MayRegisterItemText::
	text "An item in your"
	line "Bag may be"

	para "registered for use"
	line "on Select Button."
	done

SECTION "_InitialOptionsText", ROMX
_InitialOptionsText::
	text "Please choose how"
	line "you want to play"
	cont "Polished Crystal."
	prompt

SECTION "_ElmText1", ROMX
_ElmText1::
	text "Hello! Sorry to"
	line "keep you waiting!"

if !DEF(DEBUG)
	para "Welcome to the"
	line "world of #mon!"

	para "My name is Elm."

	para "People call me the"
	line "#mon Prof."
endc
	prompt

SECTION "_ElmText2", ROMX
_ElmText2::
	text "This world is in-"
	line "habited by crea-"
	cont "tures that we call"
	cont "#mon.@"
	text_end

SECTION "_ElmText4", ROMX
_ElmText4::
	text "People and #mon"
	line "live together by"

	para "supporting each"
	line "other."

	para "Some people play"
	line "with #mon, some"
	cont "battle with them."
	prompt

SECTION "_ElmText5", ROMX
_ElmText5::
	text "But we don't know"
	line "everything about"
	cont "#mon yet."

	para "There are still"
	line "many mysteries to"
	cont "solve."

	para "That's why I study"
	line "#mon every day."
	prompt

SECTION "_ElmText6", ROMX
_ElmText6::
	text "Please tell me"
	line "your name."
	prompt

SECTION "_ElmText7", ROMX
_ElmText7::
	text "<PLAYER>, are you"
	line "ready?"

if !DEF(DEBUG)
	para "Your very own"
	line "#mon story is"
	cont "about to unfold."

	para "You'll face fun"
	line "times and tough"
	cont "challenges."

	para "A world of dreams"
	line "and adventures"

	para "with #mon"
	line "awaits! Let's go!"
endc

	para "I'll be seeing you"
	line "later!"
	done

SECTION "_WarnVBAText", ROMX
_WarnVBAText::
if !DEF(DEBUG)
	text "Warning!"

	para "This Game Boy"
	line "emulator has bugs"

	para "that may crash"
	line "Polished Crystal."

	para "Please use a more"
	line "accurate emulator,"

	para "such as BGB, mGBA,"
	line "or Gambatte."
	prompt
else
	text "Emulator test"
	line "failed."
	prompt
endc

SECTION "_ClockTimeMayBeWrongText", ROMX
_ClockTimeMayBeWrongText::
	text "L'horloge est"
	line "peut-être fausse."
	para "Régler l'heure"
	line "s.v.p."
	prompt

SECTION "_ClockSetWithControlPadText", ROMX
_ClockSetWithControlPadText::
	text "Régler avec la"
	line "manette."
	para "Choix:   Bouton A"
	line "Retour:  Bouton B"
	done

SECTION "_ClockIsThisOKText", ROMX
_ClockIsThisOKText::
	text "Est-ce correct?"
	done

SECTION "_ClockHasResetText", ROMX
_ClockHasResetText::
	text "L'horloge a été"
	line "réinitialisée."
	done

SECTION "_LinkTimeoutText", ROMX
_LinkTimeoutText::
	text "Trop de temps"
	line "s'est écoulé."
	cont "Essayer à nouveau."
	prompt

SECTION "_LinkTradeCantBattleText", ROMX
_LinkTradeCantBattleText::
	text "If you trade that"
	line "#mon, you won't"
	cont "be able to battle."
	prompt

SECTION "_LinkAbnormalMonText", ROMX
_LinkAbnormalMonText::
	text "Your friend's"
	line ""
	text_ram wStringBuffer1
	text " appears"
	cont "to be abnormal!"
	prompt

SECTION "_LinkAskTradeForText", ROMX
_LinkAskTradeForText::
	text "Trade "
	text_ram wBufferTrademonNickname
	line "for "
	text_ram wStringBuffer1
	text "?"
	done

SECTION "_WouldYouLikeToSaveTheGameText", ROMX
_WouldYouLikeToSaveTheGameText::
	text "Voulez-vous sauve-"
	line "garder la partie?"
	done

SECTION "_SavedTheGameText", ROMX
_SavedTheGameText::
	text "<PLAYER> saved"
	line "the game."
	done

SECTION "_AnotherSaveFileText", ROMX
_AnotherSaveFileText::
	text "Warning! There is"
	line "a save file from"
	cont "another game."

	para "Is it OK to over-"
	line "write the other"
	cont "save file?"
	done

SECTION "_SaveFileCorruptedText", ROMX
_SaveFileCorruptedText::
	text "La sauvegarde"
	line "est corrompue!"
	prompt

SECTION "_GainedItemText", ROMX
_GainedItemText::
	text "<PLAYER> gained"
	line ""
	text_ram wStringBuffer4
	text "."
	done

SECTION "_GainedMultipleItemsText", ROMX
_GainedMultipleItemsText::
	text "<PLAYER> gained"
	line ""
	text_decimal wItemQuantityChangeBuffer, 1, 2
	text " "
	text_ram wStringBuffer4
	text "."
	done

SECTION "_PutItemInPocketText", ROMX
_PutItemInPocketText::
	text "<PLAYER> put the"
	line ""
	text_ram wStringBuffer1
	text " in"
	cont "the "
	text_ram wStringBuffer3
	text "."
	prompt

SECTION "_PocketIsFullText", ROMX
_PocketIsFullText::
	text "The "
	text_ram wStringBuffer3
	line "is full…"
	prompt

SECTION "_FoundWingsText", ROMX
_FoundWingsText::
	text "<PLAYER> got "
	text_decimal wCurWingQuantity, 1, 2
	line ""
	text_ram wStringBuffer4
	text "."
	done

SECTION "_CongratulationsYourPokemonText", ROMX
_CongratulationsYourPokemonText::
	text "Congratulations!"
	line "Your "
	text_ram wStringBuffer2
	text_end

SECTION "_EvolvedIntoText", ROMX
_EvolvedIntoText::
	para "evolved into"
	line ""
	text_ram wStringBuffer1
	text "!"
	done

SECTION "_StoppedEvolvingText", ROMX
_StoppedEvolvingText::
	text "Huh? "
	text_ram wStringBuffer2
	line "stopped evolving!"
	prompt

SECTION "_EvolvingText", ROMX
_EvolvingText::
	text "What? "
	text_ram wStringBuffer2
	line "is evolving!"
	done

SECTION "_MartHowManyText", ROMX
_MartHowManyText::
	text "Combien?"
	done

SECTION "_MartFinalPriceText", ROMX
_MartFinalPriceText::
	text_decimal wItemQuantityChangeBuffer, 1, 2
	text " "
	text_ram wStringBuffer2
	text_plural
	line "will be ¥"
	text_decimal hMoneyTemp, 3, 7
	text "."
	done

SECTION "_HerbShopLadyIntroText", ROMX
_HerbShopLadyIntroText::
	text "Hello, dear."

	para "I sell inexpensive"
	line "herbal medicine."

	para "They're good, but"
	line "a trifle bitter."

	para "Your #mon may"
	line "not like them."

	para "Hehehehe…"
	done

SECTION "_HerbalLadyFinalPriceText", ROMX
_HerbalLadyFinalPriceText::
	text_decimal wItemQuantityChangeBuffer, 1, 2
	text " "
	text_ram wStringBuffer2
	text_plural
	line "will be ¥"
	text_decimal hMoneyTemp, 3, 7
	text "."
	done

SECTION "_HerbalLadyThanksText", ROMX
_HerbalLadyThanksText::
	text "Merci."
	line "Héhéhéhéhé..."
	done

SECTION "_HerbalLadyPackFullText", ROMX
_HerbalLadyPackFullText::
	text "Oh? Your Bag is"
	line "full, dear."
	done

SECTION "_HerbalLadyNoMoneyText", ROMX
_HerbalLadyNoMoneyText::
	text "Pas assez de sous!"
	line "Héhéhéhéhéhé!"
	done

SECTION "_HerbalLadyComeAgainText", ROMX
_HerbalLadyComeAgainText::
	text "A bientôt!"
	line "Héhéhéhéhéhé..."
	done

SECTION "_BargainShopIntroText", ROMX
_BargainShopIntroText::
	text "Salut! Tu cherches"
	line "une bonne affaire?"
	para "Je vends des ob-"
	line "jets super rares!"
	para "Et un de chaque"
	line "type..."
	done

SECTION "_BargainShopFinalPriceText", ROMX
_BargainShopFinalPriceText::
	text_ram wStringBuffer2
	text " costs"
	line "¥"
	text_decimal hMoneyTemp, 3, 7
	text ". Want it?"
	done

SECTION "_BargainShopThanksText", ROMX
_BargainShopThanksText::
	text "Merci."
	done

SECTION "_BargainShopPackFullText", ROMX
_BargainShopPackFullText::
	text "Uh-oh, your Bag"
	line "is chock-full."
	done

SECTION "_BargainShopSoldOutText", ROMX
_BargainShopSoldOutText::
	text "Tu as déjà acheté"
	line "ça. J'en ai"
	cont "plus du tout."
	done

SECTION "_BargainShopNoFundsText", ROMX
_BargainShopNoFundsText::
	text "Oh! T'as super"
	line "pas de sous."
	done

SECTION "_BargainShopComeAgainText", ROMX
_BargainShopComeAgainText::
	text "Reviens plus"
	line "tard."
	done

SECTION "_PharmacyIntroText", ROMX
_PharmacyIntroText::
	text "Oui? Besoin d'un"
	line "médicament?"
	done

SECTION "_HowManyText", ROMX
_HowManyText::
	text "Combien?"
	done

SECTION "_PharmacyFinalPriceText", ROMX
_PharmacyFinalPriceText::
	text_decimal wItemQuantityChangeBuffer, 1, 2
	text " "
	text_ram wStringBuffer2
	text_plural
	line "will cost ¥"
	text_decimal hMoneyTemp, 3, 7
	text "."
	done

SECTION "_PharmacyThanksText", ROMX
_PharmacyThanksText::
	text "Merci, merci!"
	done

SECTION "_PharmacyPackFullText", ROMX
_PharmacyPackFullText::
	text "Tu n'as plus de"
	line "place."
	done

SECTION "_PharmacyNoMoneyText", ROMX
_PharmacyNoMoneyText::
	text "Hein? C'est pas"
	line "assez."
	done

SECTION "_PharmacyComeAgainText", ROMX
_PharmacyComeAgainText::
	text "Très bien. A la"
	line "prochaine."
	done

SECTION "_MartSellHowManyText", ROMX
_MartSellHowManyText::
	text "Combien?"
	done

SECTION "_MartSellPriceText", ROMX
_MartSellPriceText::
	text "I can pay you"
	line "¥"
	text_decimal hMoneyTemp, 3, 7
	text "."

	para "Is that OK?"
	done

SECTION "_MartWelcomeText", ROMX
_MartWelcomeText::
	text "Bienvenue! En quoi"
	line "puis-je t'aider?"
	done

SECTION "_MartThanksText", ROMX
_MartThanksText::
	text "Voilà."
	line "Merci!"
	done

SECTION "_MartNoMoneyText", ROMX
_MartNoMoneyText::
	text "Tu n'as pas assez"
	line "d'argent."
	done

SECTION "_MartPackFullText", ROMX
_MartPackFullText::
	text "Tu ne peux plus"
	line "rien porter."
	done

SECTION "_MartCantBuyText", ROMX
_MartCantBuyText::
	text "Je ne peux pas"
	line "t'acheter ça."
	prompt

SECTION "_MartComeAgainText", ROMX
_MartComeAgainText::
	text "A la prochaine!"
	done

SECTION "_MartAskMoreText", ROMX
_MartAskMoreText::
	text "As-tu besoin"
	line "d'autre chose?"
	done

SECTION "_MartBoughtText", ROMX
_MartBoughtText::
	text "Got ¥"
	text_decimal hMoneyTemp, 3, 7
	text " for"
	line ""
	text_ram wStringBuffer2
	text_plural
	text "."
	done

SECTION "_SlotsBetHowManyCoinsText", ROMX
_SlotsBetHowManyCoinsText::
	text "Combien"
	line "de jetons?"
	done

SECTION "TMMartCostsThisMuchText", ROMX
TMMartCostsThisMuchText::
	text_ram wStringBuffer2
	text " "
	text_ram wStringBuffer1
	line "will be ¥"
	text_decimal hMoneyTemp, 3, 7
	text "."
	done

SECTION "BTMartHowMayIHelpYouText", ROMX
BTMartHowMayIHelpYouText::
	text "Welcome to the"
	line "Exchange Service"
	cont "Corner!"

	para "You can trade your"
	line "BP for prizes."
	done

SECTION "BTMartCostsThisMuchText", ROMX
BTMartCostsThisMuchText::
	text_decimal wItemQuantityChangeBuffer, 1, 2
	text " "
	text_ram wStringBuffer1
	text_plural
	line "will cost "
	text_decimal hMoneyTemp+1, 2, 4
	text " BP."
	done

SECTION "BTMartInsufficientFundsText", ROMX
BTMartInsufficientFundsText::
	text "I'm sorry, but you"
	line "don't have enough"
	cont "BP."
	done

SECTION "BTMartBagFullText", ROMX
BTMartBagFullText::
	text "I'm sorry, but your"
	line "Bag is full."
	done

SECTION "BTMartComeAgainText", ROMX
BTMartComeAgainText::
	text "Please come back"
	line "any time you want!"
	done

SECTION "_SlotsStartText", ROMX
_SlotsStartText::
	text "GO!"
	done

SECTION "_SlotsNotEnoughCoinsText", ROMX
_SlotsNotEnoughCoinsText::
	text "Pas assez de"
	line "jetons."
	prompt

SECTION "_SlotsRanOutOfCoinsText", ROMX
_SlotsRanOutOfCoinsText::
	text "Zut... plus de"
	line "jetons..."
	done

SECTION "_SlotsPlayAgainText", ROMX
_SlotsPlayAgainText::
	text "Jouer encore?"
	done

SECTION "_SlotsLinedUpText", ROMX
_SlotsLinedUpText::
	text "lined up!"
	line "Won "
	text_ram wStringBuffer2
	text " coins!"
	done

SECTION "_SlotsDarnText", ROMX
_SlotsDarnText::
	text "Et zut!"
	done

SECTION "_PhoneWrongNumberText", ROMX
_PhoneWrongNumberText::
	text "Hein? Pardon!"
	line "Mauvais numéro!"
	done

SECTION "_PhoneClickText", ROMX
_PhoneClickText::
	text "Clic!"
	done

SECTION "_PhoneEllipseText", ROMX
_PhoneEllipseText::
	text "……"
	done

SECTION "_PhoneOutOfAreaText", ROMX
_PhoneOutOfAreaText::
	text "Ce numéro est hors"
	line "de la zone."
	done

SECTION "_PhoneJustTalkToThemText", ROMX
_PhoneJustTalkToThemText::
	text "Va parler à cette"
	line "personne!"
	done

SECTION "_PasswordAskResetText", ROMX
_PasswordAskResetText::
	text "Select Continue to"
	line "set the time."
	prompt

SECTION "_PasswordAskResetClockText", ROMX
_PasswordAskResetClockText::
	text "Reset the clock?"
	done

SECTION "_ClearAllSaveDataText", ROMX
_ClearAllSaveDataText::
	text "Effacer zone de"
	line "sauvegarde?"
	done

SECTION "ResetInitialOptionsText", ROMX
ResetInitialOptionsText::
	text "Reset the initial"
	line "game options?"
	done

SECTION "_LearnedMoveText", ROMX
_LearnedMoveText::
	text_ram wMonOrItemNameBuffer
	text " learned"
	line ""
	text_ram wStringBuffer2
	text "!"
	text_sound SFX_DEX_FANFARE_50_79
	text_promptbutton
	text_end

SECTION "_MoveAskForgetText", ROMX
_MoveAskForgetText::
	text "Which move should"
	next "be forgotten?"

	para ""
	done

SECTION "_StopLearningMoveText", ROMX
_StopLearningMoveText::
	text "Stop learning"
	line ""
	text_ram wStringBuffer2
	text "?"
	done

SECTION "_DidNotLearnMoveText", ROMX
_DidNotLearnMoveText::
	text_ram wMonOrItemNameBuffer
	line "did not learn"
	cont ""
	text_ram wStringBuffer2
	text "."
	prompt

SECTION "_AskForgetMoveText", ROMX
_AskForgetMoveText::
	text_ram wMonOrItemNameBuffer
	line "wants to learn"
	cont ""
	text_ram wStringBuffer2
	text "!"

	para "Should it forget"
	line "an old move for"
	cont ""
	text_ram wStringBuffer2
	text "?"
	done

SECTION "Text_MoveForgetCount", ROMX
Text_MoveForgetCount::
	text "1, 2 and…"
	text_pause
	text_end

SECTION "_MoveForgotText", ROMX
_MoveForgotText::
	text " Poof!"
	text_pause

	para ""
	text_ram wMonOrItemNameBuffer
	text " forgot"
	line ""
	text_ram wStringBuffer1
	text "."

	para "And…"
	prompt

SECTION "_MoveCantForgetHMText", ROMX
_MoveCantForgetHMText::
	text "HM moves can't be"
	line "forgotten now."
	prompt

SECTION "_CardFlipPlayWithThreeCoinsText", ROMX
_CardFlipPlayWithThreeCoinsText::
	text "Jouer avec 3"
	line "jetons?"
	done

SECTION "_CardFlipNotEnoughCoinsText", ROMX
_CardFlipNotEnoughCoinsText::
	text "Not enough coins…"
	prompt

SECTION "_CardFlipChooseACardText", ROMX
_CardFlipChooseACardText::
	text "Choisir une carte."
	done

SECTION "_CardFlipPlaceYourBetText", ROMX
_CardFlipPlaceYourBetText::
	text "Parier..."
	done

SECTION "_CardFlipPlayAgainText", ROMX
_CardFlipPlayAgainText::
	text "Want to play"
	line "again?"
	done

SECTION "_CardFlipShuffledText", ROMX
_CardFlipShuffledText::
	text "Les cartes ont été"
	line "mélangées."
	prompt

SECTION "_CardFlipYeahText", ROMX
_CardFlipYeahText::
	text "Ouais!"
	done

SECTION "_CardFlipDarnText", ROMX
_CardFlipDarnText::
	text "Zut..."
	done

SECTION "_GearTodayText", ROMX
_GearTodayText::
	text_today
	text_end

SECTION "_GearEllipseText", ROMX
_GearEllipseText::
	text "……"
	done

SECTION "_GearOutOfServiceText", ROMX
_GearOutOfServiceText::
	text "Vous êtes en"
	line "dehors du réseau."
	prompt

SECTION "_PokegearAskWhoCallText", ROMX
_PokegearAskWhoCallText::
	text "Qui voulez-vous"
	line "appeler?"
	done

SECTION "_PokegearPressButtonText", ROMX
_PokegearPressButtonText::
	text "Presser un bouton"
	line "pour sortir."
	done

SECTION "_PokegearAskDeleteText", ROMX
_PokegearAskDeleteText::
	text "Effacer ce numéro"
	line "enregistré?"
	done

SECTION "_BuenaAskWhichPrizeText", ROMX
_BuenaAskWhichPrizeText::
	text "You can cash in"
	line "your saved points"

	para "for a lovely prize"
	line "of your choice!"

	para "Which prize would"
	line "you like?"
	done

SECTION "_BuenaIsThatRightText", ROMX
_BuenaIsThatRightText::
	text_ram wStringBuffer1
	text "?"
	line "Is that right?"
	done

SECTION "_BuenaHereYouGoText", ROMX
_BuenaHereYouGoText::
	text "Voilà!"
	done

SECTION "_BuenaNotEnoughPointsText", ROMX
_BuenaNotEnoughPointsText::
	text "You don't have"
	line "enough points."
	done

SECTION "_BuenaNoRoomText", ROMX
_BuenaNoRoomText::
	text "You have no room"
	line "for it."
	done

SECTION "_BuenaComeAgainText", ROMX
_BuenaComeAgainText::
	text "Oh. Revenez"
	line "plus tard!"
	done

SECTION "_BallBrokeFreeText", ROMX
_BallBrokeFreeText::
	text "Oh no! The #mon"
	line "broke free!"
	prompt

SECTION "_BallAppearedCaughtText", ROMX
_BallAppearedCaughtText::
	text "Raaah! Ca y était"
	line "presque!"
	prompt

SECTION "_BallAlmostHadItText", ROMX
_BallAlmostHadItText::
	text "Aaaaaah!"
	line "Presque!"
	prompt

SECTION "_BallSoCloseText", ROMX
_BallSoCloseText::
	text "Mince! Ca y était"
	line "presque!"
	prompt

SECTION "Text_BallCaught", ROMX
Text_BallCaught::
	text "Gotcha! "
	text_ram wEnemyMonNickname
	line "was caught!"
	text_sound SFX_CAUGHT_MON
	text_end

SECTION "Text_Waitbutton_2", ROMX
Text_Waitbutton_2::
	text_promptbutton
	text_end

SECTION "_CurBoxFullText", ROMX
_CurBoxFullText::
	text_ram wStringBuffer1
	text " is full."
	prompt

SECTION "_MonSentToPCText", ROMX
_MonSentToPCText::
	text_ram wMonOrItemNameBuffer
	text " was"
	line "sent to "
	text_ram wStringBuffer1
	text "."
	prompt

SECTION "_NewDexDataText", ROMX
_NewDexDataText::
	text_ram wEnemyMonNickname
	text "'s data"
	line "was newly added to"
	cont "the #dex."
	text_sound SFX_SLOT_MACHINE_START
	text_promptbutton
	text_end

SECTION "_AskGiveNicknameText", ROMX
_AskGiveNicknameText::
	text "Give a nickname to"
	line ""
	text_ram wStringBuffer1
	text "?"
	done

SECTION "_ItemHappinessRoseButStatFellText", ROMX
_ItemHappinessRoseButStatFellText::
	text_ram wStringBuffer1
	text " became"
	line "more friendly."
	para ""
	text_ram wStringBuffer1
	text "'s base"
	line ""
	text_ram wStringBuffer2
	text " fell!"
	prompt

SECTION "_ItemStatRoseText", ROMX
_ItemStatRoseText::
	text_ram wStringBuffer1
	text "'s"
	line ""
	text_ram wStringBuffer2
	text " rose."
	prompt

SECTION "_ItemCantUseOnMonText", ROMX
_ItemCantUseOnMonText::
	text "That can't be used"
	line "on this #mon."
	prompt

SECTION "Text_RepelUsedEarlierIsStillInEffect", ROMX
Text_RepelUsedEarlierIsStillInEffect::
	text "The Repel used"
	line "earlier is still"
	cont "in effect."
	prompt

SECTION "_BlueCardBalanceText", ROMX
_BlueCardBalanceText::
	text "You now have"
	line ""
	text_decimal wBlueCardBalance, 1, 2
	text " points."
	done

SECTION "_CoinCaseCountText", ROMX
_CoinCaseCountText::
	text "Coins:"
	line ""
	text_decimal wCoins, 2, 5
	text_end

SECTION "Text_RaiseThePPOfWhichMove", ROMX
Text_RaiseThePPOfWhichMove::
	text "Monter les PP de"
	line "quelle capacité?"
	done

SECTION "Text_RestoreThePPOfWhichMove", ROMX
Text_RestoreThePPOfWhichMove::
	text "Restaurer PP de"
	line "quelle capacité?"
	done

SECTION "Text_PPIsMaxedOut", ROMX
Text_PPIsMaxedOut::
	text_ram wStringBuffer2
	text "'s PP"
	line "is maxed out."
	prompt

SECTION "Text_PPsIncreased", ROMX
Text_PPsIncreased::
	text_ram wStringBuffer2
	text "'s PP"
	line "increased."
	prompt

SECTION "Text_PPsMaximized", ROMX
Text_PPsMaximized::
	text_ram wStringBuffer2
	text "'s PP"
	line "maximized."
	prompt

SECTION "_PPRestoredText", ROMX
_PPRestoredText::
	text "PP restaurés."
	prompt

SECTION "_ItemLooksBitterText", ROMX
_ItemLooksBitterText::
	text "Ca a l'air amer..."
	prompt

SECTION "_ItemCantUseOnEggText", ROMX
_ItemCantUseOnEggText::
	text "That can't be used"
	line "on an Egg."
	prompt

SECTION "_ItemOakWarningText", ROMX
_ItemOakWarningText::
	text "Oak: <PLAYER>!"
	line "This isn't the"
	cont "time to use that!"
	prompt

SECTION "_ItemWontHaveEffectText", ROMX
_ItemWontHaveEffectText::
	text "Ca n'a aucun"
	line "effet."
	prompt

SECTION "_BallBlockedText", ROMX
_BallBlockedText::
	text "The trainer"
	line "blocked the Ball!"
	prompt

SECTION "_BallDontBeAThiefText", ROMX
_BallDontBeAThiefText::
	text "Voler c'est mal!"
	prompt

SECTION "_BallStorageFullText", ROMX
_BallStorageFullText::
	text "The storage system"
	line "is full. That"
	cont "can't be used now."
	prompt

SECTION "_BallDatabaseFullText", ROMX
_BallDatabaseFullText::
	text "The PC database is"
	line "overtaxed. Please"
	cont "save the game."
	prompt

SECTION "Text_MonIsHiddenFromBall", ROMX
Text_MonIsHiddenFromBall::
	text "The #mon can't"
	line "be seen!"
	prompt

SECTION "Text_MonCantBeCaught", ROMX
Text_MonCantBeCaught::
	text "The #mon can't"
	line "be caught!"
	prompt

SECTION "_ItemUsedText", ROMX
_ItemUsedText::
	text "<PLAYER> used the"
	line ""
	text_ram wStringBuffer2
	text "."
	done

SECTION "_KnowsMoveText", ROMX
_KnowsMoveText::
	text_ram wStringBuffer1
	text " knows"
	line ""
	text_ram wStringBuffer2
	text "."
	prompt

SECTION "_MoveKnowsOneText", ROMX
_MoveKnowsOneText::
	text "That #mon knows"
	line "only one move."
	done

SECTION "_AskDeleteMoveText", ROMX
_AskDeleteMoveText::
	text "Oh, make it forget"
	line ""
	text_ram wStringBuffer1
	text "?"
	done

SECTION "_DeleterForgotMoveText", ROMX
_DeleterForgotMoveText::
	text "Done! Your #mon"
	line "forgot the move."
	done

SECTION "_DeleterEggText", ROMX
_DeleterEggText::
	text "An Egg doesn't"
	line "know any moves!"
	done

SECTION "_DeleterNoComeAgainText", ROMX
_DeleterNoComeAgainText::
	text "Ah?"
	line "A la prochaine."
	done

SECTION "_DeleterAskWhichMoveText", ROMX
_DeleterAskWhichMoveText::
	text "Quelle capacité"
	line "doit-il oublier?"
	prompt

SECTION "_DeleterIntroText", ROMX
_DeleterIntroText::
	text "Um… Oh, yes, I'm"
	line "the Move Deleter."

	para "I can make #mon"
	line "forget moves."

	para "Shall I make a"
	line "#mon forget?"
	done

SECTION "_DeleterAskWhichMonText", ROMX
_DeleterAskWhichMonText::
	text "Which #mon?"
	prompt

SECTION "Text_DSTIsThatOK", ROMX
Text_DSTIsThatOK::
	text " DST,"
	line "is that OK?"
	done

SECTION "_TimeAskOkayText", ROMX
_TimeAskOkayText::
	text ","
	line "OK?"
	done

SECTION "_TimesetAskDSTText", ROMX
_TimesetAskDSTText::
	text "Do you want to"
	line "switch to Daylight"
	cont "Saving Time?"
	done

SECTION "_TimesetDSTText", ROMX
_TimesetDSTText::
	text "J'avance la"
	line "montre d'une"
	cont "heure."
	prompt

SECTION "_TimesetAskNotDSTText", ROMX
_TimesetAskNotDSTText::
	text "Is Daylight Saving"
	line "Time over?"
	done

SECTION "_TimesetNotDSTText", ROMX
_TimesetNotDSTText::
	text "I put the clock"
	line "back one hour."
	prompt

SECTION "_TimesetAskAdjustDSTText", ROMX
_TimesetAskAdjustDSTText::
	text "Veux-tu"
	line "ajuster la"
	para "montre au change-"
	line "ment d'heure?"
	done

SECTION "_MomLostGearBookletText", ROMX
_MomLostGearBookletText::
	text "I lost the in-"
	line "struction booklet"
	cont "for the #gear."

	para "Come back again in"
	line "a while."
	prompt

SECTION "WonderTradeQuestionText", ROMX
WonderTradeQuestionText::
	text "Would you like to"
	line "trade?"
	done

SECTION "WonderTradePromptText", ROMX
WonderTradePromptText::
	text "Which #mon do"
	line "you want to trade?"
	prompt

SECTION "WonderTradeCantTradeSpikyEaredPichuText", ROMX
WonderTradeCantTradeSpikyEaredPichuText::
	text "This Pichu appears"
	line "to have traveled"
	cont "through time."

	para "It would be risky"
	line "to transfer it,"

	para "so it's best for"
	line "Pichu to stay"
	cont "where it is."
	prompt

;SECTION "WonderTradeCantTradeEggText", ROMX
;WonderTradeCantTradeEggText::
;	text "Sorry. We can't"
;	line "accept an Egg."
;	prompt

;SECTION "WonderTradeCantAcceptAbnormalMonText", ROMX
;WonderTradeCantAcceptAbnormalMonText::
;	text "Sorry, but your"
;	line "#mon appears to"
;
;	para "be abnormal. We"
;	line "can't accept it."
;	prompt

SECTION "WonderTradeConfirmText", ROMX
WonderTradeConfirmText::
	text "Offer to trade"
	line ""
	text_ram wStringBuffer1
	text "?"
	done

SECTION "WonderTradeSetupText", ROMX
WonderTradeSetupText::
	text "Searching for a"
	line "trade partner…"
	prompt

SECTION "WonderTradeReadyText", ROMX
WonderTradeReadyText::
	text "A trade partner"
	line "has been found."
	prompt

SECTION "SilphMartIntroText", ROMX
SilphMartIntroText::
	text "Employees like me"
	line "have access to"
	cont "company swag!"

	para "Want to buy some?"
	done

SECTION "SilphMartComeAgainText", ROMX
SilphMartComeAgainText::
	text "Come again! I"
	line "could use the"
	cont "side income."
	done

SECTION "AdventurerMartIntroText", ROMX
AdventurerMartIntroText::
	text "I picked up some"
	line "rare items abroad!"
	done

SECTION "AdventurerMartComeAgainText", ROMX
AdventurerMartComeAgainText::
	text "Come by again!"
	done

SECTION "InformalMartIntroText", ROMX
InformalMartIntroText::
	text "What's up? Need"
	line "some supplies?"
	done

SECTION "BazaarMartIntroText", ROMX
BazaarMartIntroText::
	text "Come take a look"
	line "at my wares!"
	done

SECTION "AlreadyHaveTMText", ROMX
AlreadyHaveTMText::
	text "You already have"
	line "that TM."
	done

SECTION "MartPremierBallText", ROMX
MartPremierBallText::
	text "You also get a"
	line "Premier Ball as"
	text_sound SFX_TRANSACTION
	cont "an added bonus."
	done

SECTION "ItemCantBeSelectedText", ROMX
ItemCantBeSelectedText::
	text "That item can't be"
	line "selected."
	prompt

SECTION "AlreadyInThatBallTextData", ROMX
AlreadyInThatBallTextData::
	text "Your #mon is in"
	line "that Ball already."
	prompt

SECTION "CantChangeTradedMonBallTextData", ROMX
CantChangeTradedMonBallTextData::
	text "You can't change"
	line "the Ball a traded"
	cont "#mon is in."
	prompt
