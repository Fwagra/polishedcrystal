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
	text "Mais la Boîte à"
	line "Noigrumes est"
	cont "pleine…"
	done

SECTION "_PutAwayTheApricornText", ROMX
_PutAwayTheApricornText::
	text "<PLAYER> mets le"
	line ""
	text_ram wStringBuffer3
	text "dans"
	cont "la Boîte Noigrume."
	done

SECTION "_NothingHereText", ROMX
_NothingHereText::
	text "Il n'y a rien"
	line "ici..."
	done

SECTION "_WantToUseMulchText", ROMX
_WantToUseMulchText::
	text "Voulez-vous utiliser"
	line "l'Engrais?"
	done

SECTION "_UsedMulchText", ROMX
_UsedMulchText::
	text "<PLAYER> a utilisé"
	line "Engrais!"

	para "L'arbre a été"
	line "fertilisé !"
	done

SECTION "_WhichApricornText", ROMX
_WhichApricornText::
	text "Quel noigrume"
	line "dois-je utiliser ?"
	done

SECTION "_HowManyShouldIMakeText", ROMX
_HowManyShouldIMakeText::
	text "Combien dois-je"
	line "en créer?"
	done

SECTION "_HowManyDoYouWantToSellText", ROMX
_HowManyDoYouWantToSellText::
	text "Combien veux-tu"
	line "en vendre ?"
	done

SECTION "_RecoveredSomeHPText", ROMX
_RecoveredSomeHPText::
	text_ram wStringBuffer1
	line "regagne "
	text_decimal wCurHPAnimDeltaHP, 2, 3
	text "PV!"
	done

SECTION "_CuredOfPoisonText", ROMX
_CuredOfPoisonText::
	text_ram wStringBuffer1
	text " n'est"
	line "plus empoisonné."
	done

SECTION "_RidOfParalysisText", ROMX
_RidOfParalysisText::
	text_ram wStringBuffer1
	text " n'est"
	line "plus paralysé."
	done

SECTION "_BurnWasHealedText", ROMX
_BurnWasHealedText::
	text_ram wStringBuffer1
	line "ne brûle plus."
	done

SECTION "_WasDefrostedText", ROMX
_WasDefrostedText::
	text_ram wStringBuffer1
	line "n'est plus gelé."
	done

SECTION "_WokeUpText", ROMX
_WokeUpText::
	text_ram wStringBuffer1
	line "se réveille."
	done

SECTION "_HealthReturnedText", ROMX
_HealthReturnedText::
	text_ram wStringBuffer1
	text " regagne"
	line "son énergie."
	done

SECTION "_RevitalizedText", ROMX
_RevitalizedText::
	text_ram wStringBuffer1
	text " est"
	line "revitalisé."
	done

SECTION "_GrewToLevelText", ROMX
_GrewToLevelText::
	text_ram wStringBuffer1
	text "monte"
	line "au niveau"
	text_decimal wCurPartyLevel, 1, 3
	text "!"
	text_sound SFX_DEX_FANFARE_50_79
	text_promptbutton
	text_end

SECTION "_CameToItsSensesText", ROMX
_CameToItsSensesText::
	text_ram wStringBuffer1
	text " revient"
	line "à lui."
	done

SECTION "_OakTimeWokeUpText", ROMX
_OakTimeWokeUpText::
	text "………………………………"
	line "………………………………"

	para "Zzz… Hum ? Quoi… ?"
	line "Tu m'as réveillé !"

	para "Mais quelle heure"
	line "est-il ?"
	prompt

SECTION "_OakTimeWhatTimeIsItText", ROMX
_OakTimeWhatTimeIsItText::
	text "Quelle heure"
	line "est-il?"
	done

SECTION "_OakTimeHowManyMinutesText", ROMX
_OakTimeHowManyMinutesText::
	text "Combien de"
	line "minutes?"
	done

SECTION "_OakTimeWhoaText", ROMX
_OakTimeWhoaText::
	text "Waouh !"
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
	line "J'ai dormi pendant"
	cont "trop longtemps !"
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
	text "Rangé:"
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
	text "Installé:"
	line ""
	text_ram wStringBuffer3
	text "."
	prompt

SECTION "_PutAwayAndSetUpText", ROMX
_PutAwayAndSetUpText::
	text "Rangé:"
	line ""
	text_ram wStringBuffer3
	para "et installé:"
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
	text "C'est la CARTE."
	done

SECTION "_LookPikachuPosterText", ROMX
_LookPikachuPosterText::
	text "C'est un poster du"
	line "mignon Pikachu."
	done

SECTION "_LookClefairyPosterText", ROMX
_LookClefairyPosterText::
	text "C'est un poster du"
	line "mignon Mélofée."
	done

SECTION "_LookJigglypuffPosterText", ROMX
_LookJigglypuffPosterText::
	text "C'est un poster du"
	line "mignon Marill."
	done

SECTION "_LookAdorableDecoText", ROMX
_LookAdorableDecoText::
	text "Un(e) superbe"
	line ""
	text_ram wStringBuffer3
	text "."
	done

SECTION "DecoConsoleText", ROMX
DecoConsoleText::
	text "C'est un brillant"
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
	text "Salut, <PLAYER>!"
	line "Ca va bien?"
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
	text "En faisant les"
	line "courses j'ai vu"
	cont "cette superbe"
	cont "poupée, alors..."
	prompt

SECTION "_MomItsInYourRoomText", ROMX
_MomItsInYourRoomText::
	text "Elle est dans ta"
	line "chambre!"
	done

SECTION "_MonWasSentToText", ROMX
_MonWasSentToText::
	text_ram wPlayerTrademonSpeciesName
	text " est"
	line "envoyé à "
	text_ram wOTTrademonSenderName
	text "."
	done

SECTION "_BidsFarewellToMonText", ROMX
_BidsFarewellToMonText::
	text_ram wOTTrademonSenderName
	text " dit"
	line "adieu à"
	done

SECTION "_MonNameBidsFarewellText", ROMX
_MonNameBidsFarewellText::
	text_ram wOTTrademonSpeciesName
	text "."
	done

SECTION "_TakeGoodCareOfMonText", ROMX
_TakeGoodCareOfMonText::
	text "Prends soin de"
	line ""
	text_ram wOTTrademonSpeciesName
	text "."
	done

SECTION "_ForYourMonSendsText", ROMX
_ForYourMonSendsText::
	text "Contre "
	text_ram wPlayerTrademonSpeciesName
	text ""
	line "de "
	text_ram wPlayerTrademonSenderName
	text ","
	done

SECTION "_OTSendsText", ROMX
_OTSendsText::
	text_ram wOTTrademonSenderName
	text " envoie"
	line ""
	text_ram wOTTrademonSpeciesName
	text "."
	done

SECTION "_WillTradeText", ROMX
_WillTradeText::
	text_ram wOTTrademonSenderName
	text "volonté"
	line "commerce"
	text_ram wOTTrademonSpeciesName
	text_end

SECTION "_ForYourMonWillTradeText", ROMX
_ForYourMonWillTradeText::
	text "contre "
	text_ram wPlayerTrademonSpeciesName
	text ""
	line "de "
	text_ram wPlayerTrademonSenderName
	text "."
	done

SECTION "_OPT_IntroText1", ROMX
_OPT_IntroText1::
	line "Mary : celle du professeur Oak"
	done

SECTION "_OPT_IntroText2", ROMX
_OPT_IntroText2::
	line "#mon Parlez !"
	done

SECTION "_OPT_IntroText3", ROMX
_OPT_IntroText3::
	line "Avec moi, Marie !"
	done

SECTION "_OPT_OakText1", ROMX
_OPT_OakText1::
	line "Chêne:"
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
	line "Marie:"
	text_ram wStringBuffer1
	text "c'est"
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

SECTION "_BenIntroText1", ROMX
_BenIntroText1::
	line "Ben : #mon Musique"
	done

SECTION "_BenIntroText2", ROMX
_BenIntroText2::
	line "Canal! ♪"
	done

SECTION "_BenIntroText3", ROMX
_BenIntroText3::
	line "C'est moi, DJ Ben ! ♪"
	done

SECTION "_FernIntroText1", ROMX
_FernIntroText1::
	line "Fougère : #musique ! ♪"
	done

SECTION "_FernIntroText2", ROMX
_FernIntroText2::
	line "Avec DJ Fern ! ♪"
	done

SECTION "_BenFernText1", ROMX
_BenFernText1::
	line "Aujourd'hui"
	text_today
	text ","
	done

SECTION "_BenFernText2A", ROMX
_BenFernText2A::
	line "alors allons-y"
	done

SECTION "_BenFernText2B", ROMX
_BenFernText2B::
	line "on s'la donne avec"
	done

SECTION "_BenFernText3A", ROMX
_BenFernText3A::
	line "la fanfare PKMN!"
	done

SECTION "_BenFernText3B", ROMX
_BenFernText3B::
	line "la berceuse PKMN!"
	done

SECTION "_LC_Text1", ROMX
_LC_Text1::
	line "Reed : Ouais ! Comment"
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
	line "Spectacle de numéros porte-bonheur !"
	done

SECTION "_LC_Text7", ROMX
_LC_Text7::
	line "La chance du jour"
	done

SECTION "_LC_Text8", ROMX
_LC_Text8::
	line "No. est "
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
	line "la Tour Radio !"
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
	line "Des lieux et des gens !"
	done

SECTION "_PnP_Text2", ROMX
_PnP_Text2::
	line "Présenté par"
	done

SECTION "_PnP_Text3", ROMX
_PnP_Text3::
	line "moi, DJ Lily !"
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
	line "L'équipe Rocket !"
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
	line "Giovanni !"
	text_pause
	text "Peux-tu"
	done

SECTION "_RocketRadioText8", ROMX
_RocketRadioText8::
	text ""
	line "On a réussi!"
	done

SECTION "_RocketRadioText9", ROMX
_RocketRadioText9::
	line ""
	text_pause
	text "Où est notre patron ?"
	done

SECTION "_RocketRadioText10", ROMX
_RocketRadioText10::
	line ""
	text_pause
	text "Est-ce qu'il écoute ?"
	done

SECTION "_BuenaRadioText1", ROMX
_BuenaRadioText1::
	line "Buena : Buena ici !"
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
	line "Je suis chez Goldenrod"
	done

SECTION "_BuenaRadioText7", ROMX
_BuenaRadioText7::
	line "Tour radio !"
	done

SECTION "_BuenaRadioMidnightText1", ROMX
_BuenaRadioMidnightText1::
	line "Buena : Oh mon…"
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
	line "vous par DJ Buena !"
	done

SECTION "_BuenaRadioMidnightText9", ROMX
_BuenaRadioMidnightText9::
	text ""
	line "Au revoir!"
	done

SECTION "_BuenaRadioMidnightText10", ROMX
_BuenaRadioMidnightText10::
	text ""
	line "…"
	done

SECTION "_BuenaOffTheAirText", ROMX
_BuenaOffTheAirText::
	text ""
	line ""
	done

SECTION "Text_EnemyUsed", ROMX
Text_EnemyUsed::
	text "<ENEMY>"
	line "utilisé"
	text_ram wMonOrItemNameBuffer
	text "!"
	prompt

SECTION "Text_EnemyUsedOn", ROMX
Text_EnemyUsedOn::
	text "<ENEMY>"
	line "utilise"
	cont ""
	text_ram wMonOrItemNameBuffer
	text " sur"
	cont ""
	text_ram wEnemyMonNickname
	text "!"
	prompt

SECTION "_AskFloorElevatorText", ROMX
_AskFloorElevatorText::
	text "Quel étage?"
	done

SECTION "_BugCatchingContestTimeUpText", ROMX
_BugCatchingContestTimeUpText::
	text "Annonceur : BIP !"

	para "Le temps est écoulé !"
	done

SECTION "_BugCatchingContestIsOverText", ROMX
_BugCatchingContestIsOverText::
	text "Annonceur : Le"
	line "Le concours est terminé !"
	done

SECTION "_RepelWoreOffText", ROMX
_RepelWoreOffText::
	text "Effet de repousse"
	line "s'est dissipé."
	done

SECTION "UseAnotherRepelText", ROMX
UseAnotherRepelText::
	text "Effet de repousse"
	line "s'est dissipé."

	para "En utiliser un autre ?"
	done

SECTION "_JustSawSomeRareMonText", ROMX
_JustSawSomeRareMonText::
	text "J'ai vu un"
	line ""
	text_ram wStringBuffer1
	text " rare"
	cont "vers "
	text_ram wStringBuffer2
	text "."
	para "Je t'appelle si je"
	line "vois un autre"
	cont "#mon rare, OK?"
	prompt

SECTION "_SavingRecordText", ROMX
_SavingRecordText::
	text "Enregistrement de l'enregistrement…"
	line "Ne l'éteignez pas !"
	done

SECTION "_NoCoinsText", ROMX
_NoCoinsText::
	text "Vous n'avez pas de"
	line "jetons."
	prompt

SECTION "_NoCoinCaseText", ROMX
_NoCoinCaseText::
	text "Vous n'avez pas de"
	line "Étui à pièces."
	prompt

SECTION "_NPCTradeCableText", ROMX
_NPCTradeCableText::
	text "OK, connectez le"
	line "Câble Game Link."
	prompt

SECTION "Text_NPCTraded", ROMX
Text_NPCTraded::
	text "<PLAYER> échangé"
	line ""
	text_ram wMonOrItemNameBuffer
	text "pour"
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
	text "Je collectionne"
	line "les #mon. As-tu"
	cont ""
	text_ram wStringBuffer1
	text "?"
	para "Tu veux l'échanger"
	line "contre "
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
	text "Hein? C'est pas"
	line ""
	text_ram wStringBuffer1
	text "."
	cont "Tu plaisantes… ?"
	done

SECTION "_NPCTradeCompleteText1", ROMX
_NPCTradeCompleteText1::
	text "Ouais! J'ai un"
	line ""
	text_ram wStringBuffer1
	text "!"
	cont "Cool!"
	done

SECTION "_NPCTradeAfterText1", ROMX
_NPCTradeAfterText1::
	text "Comment va mon"
	line ""
	text_ram wStringBuffer2
	text "?"
	done

SECTION "_NPCTradeIntroText2", ROMX
_NPCTradeIntroText2::
	text "Salut! Je cherche"
	line "ce #mon."
	para "Si tu as"
	line ""
	text_ram wStringBuffer1
	text ","
	para "peux-tu l'échanger"
	line "contre "
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
	text "Tu n'as pas"
	line ""
	text_ram wStringBuffer1
	text "?"
	cont "C'est dommage."
	done

SECTION "_NPCTradeCompleteText2", ROMX
_NPCTradeCompleteText2::
	text "Cool! Merci!"
	para "J'ai enfin"
	line ""
	text_ram wStringBuffer1
	text "."
	done

SECTION "_NPCTradeAfterText2", ROMX
_NPCTradeAfterText2::
	text "Salut! "
	text_ram wMonOrItemNameBuffer
	line "est en pleine for-"
	cont "me! Merci encore!"
	done

SECTION "_NPCTradeIntroText3", ROMX
_NPCTradeIntroText3::
	text_ram wMonOrItemNameBuffer
	text " est"
	line "mignon mais je"
	para "l'ai pas. Toi t'as"
	line ""
	text_ram wStringBuffer1
	text "?"
	para "Tu veux l'échanger"
	line "contre "
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
	text "C'est pas"
	line ""
	text_ram wStringBuffer1
	text "."
	para "Amène-m'en un, par"
	line "pitié!!!"
	done

SECTION "_NPCTradeCompleteText3", ROMX
_NPCTradeCompleteText3::
	text "Woah! Merci!"
	line "Je voulais tant un"
	cont ""
	text_ram wMonOrItemNameBuffer
	text "!"
	done

SECTION "_NPCTradeAfterText3", ROMX
_NPCTradeAfterText3::
	text "Comment va mon"
	line ""
	text_ram wStringBuffer2
	text "?"
	cont "Toujours la pêche?"
	para "Ton "
	text_ram wMonOrItemNameBuffer
	line "est si mignon!"
	done

SECTION "_NPCTradeCompleteText4", ROMX
_NPCTradeCompleteText4::
	text "Bah alors?"
	done

SECTION "_NPCTradeAfterText4", ROMX
_NPCTradeAfterText4::
	text "Echanger c'est"
	line "trop bizarre..."
	para "J'ai beaucoup à"
	line "apprendre."
	done

SECTION "_MomLeavingText1", ROMX
_MomLeavingText1::
	text "Oh! Quel joli"
	line "#mon."
	para "Où l'as-tu trouvé?"
	line "Hein? Où ça?"
	para "........."
	para "Alors t'aimes"
	line "l'aventure, quoi."
	para "OK!"
	line "J'vais t'aider."
	para "Mais..."
	line "Que faire?"
	para "Je sais! Je vais"
	line "économiser pour"
	cont "toi."
	para "L'argent, c'est"
	line "important."
	para "Veux-tu que j'éco-"
	line "nomise pour toi?"
	done

SECTION "_MomLeavingText2", ROMX
_MomLeavingText2::
	text "OK, je vais m'en occuper"
	line "de votre argent."

	para "………………"
	prompt

SECTION "_MomLeavingText3", ROMX
_MomLeavingText3::
	text "Fais attention."
	para "Les #mon sont"
	line "tes amis. Il faut"
	cont "les aimer aussi."
	para "En route!"
	done

SECTION "_MomIsThisAboutYourMoneyText", ROMX
_MomIsThisAboutYourMoneyText::
	text "Bienvenue!"
	line "Tu fais des"
	cont "efforts... C'est"
	cont "dur l'aventure!"
	para "J'ai rangé ta"
	line "chambre."
	para "Est-ce à propos"
	line "de l'argent?"
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
	text "OK, je vais écono-"
	line "miser ton argent."
	cont "Aie confiance!"
	para "<PLAYER>,"
	line "tiens bon!"
	done

SECTION "_MomStoredMoneyText", ROMX
_MomStoredMoneyText::
	text "Je m'occupe de tes"
	line "sous! Va!"
	done

SECTION "_MomTakenMoneyText", ROMX
_MomTakenMoneyText::
	text "<PLAYER>,"
	line "courage!"
	done

SECTION "_MomJustDoWhatYouCanText", ROMX
_MomJustDoWhatYouCanText::
	text "Fais de ton"
	line "mieux."
	done

SECTION "_DayCareManIntroText", ROMX
_DayCareManIntroText::
	text "Je m'occupe de la"
	line "PENSION. Veux-tu"
	cont "que j'entraîne un"
	cont "#mon?"
	done

SECTION "_DayCareManIntroEggText", ROMX
_DayCareManIntroEggText::
	text "Je m'occupe de la"
	line "PENSION. Connais-"
	cont "tu les OEUFS?"
	para "J'élevais des"
	line "#mon avec"
	cont "ma femme et..."
	para "Surprise! On a"
	line "trouvé un OEUF!"
	para "C'est super dingue"
	line "comme truc!"
	para "Alors tu veux que"
	line "j'entraîne un"
	cont "#mon?"
	done

SECTION "_DayCareLadyIntroText", ROMX
_DayCareLadyIntroText::
	text "Je suis la femme"
	line "du type qui"
	cont "s'occupe de la"
	cont "PENSION."
	para "Veux-tu que"
	line "j'entraîne un"
	cont "#mon?"
	done

SECTION "_DayCareLadyIntroEggText", ROMX
_DayCareLadyIntroEggText::
	text "Je suis la femme"
	line "du type qui"
	cont "s'occupe de la"
	cont "PENSION. Connais-"
	cont "tu les OEUFS?"
	para "J'élevais des"
	line "#mon avec"
	cont "mon mari et..."
	para "Surprise! On a"
	line "trouvé un OEUF!"
	para "C'est super dingue"
	line "comme truc!"
	para "Alors tu veux que"
	line "j'entraîne un"
	cont "#mon?"
	done

SECTION "_WhatShouldIRaiseText", ROMX
_WhatShouldIRaiseText::
	text "Qui veux-tu que"
	line "j'entraîne?"
	prompt

SECTION "_OnlyOneMonText", ROMX
_OnlyOneMonText::
	text "Oh? Mais tu n'as"
	line "qu'un #mon."
	prompt

SECTION "_CantAcceptEggText", ROMX
_CantAcceptEggText::
	text "Ah... Je n'accepte"
	line "pas les OEUFS."
	prompt

SECTION "_RemoveMailText", ROMX
_RemoveMailText::
	text "Enlève les LETTRES"
	line "avant de me voir."
	prompt

SECTION "_LastHealthyMonText", ROMX
_LastHealthyMonText::
	text "Si tu me le donnes"
	line "qui va combattre"
	cont "pour toi?"
	prompt

SECTION "_IllRaiseYourMonText", ROMX
_IllRaiseYourMonText::
	text "Entendu. Je vais"
	line "entraîner ton"
	cont ""
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
	text "On est trop bon!"
	line "Tu veux voir"
	cont "ton "
	text_ram wStringBuffer1
	text "?"
	done

SECTION "_YourMonHasGrownText", ROMX
_YourMonHasGrownText::
	text "Ton"
	text_ram wStringBuffer1
	line "a beaucoup grandi."

	para "Il a gagné"
	line ""
	text_decimal wStringBuffer2 + 1, 1, 3
	text "niveau(x)."

	para "Si tu veux récupé-"
	line "rer ton POKéMON,"
	cont "tu dois payer "
	text_decimal wStringBuffer2 + 2, 3, 5
	text "¥."
	done

SECTION "_PerfectHeresYourMonText", ROMX
_PerfectHeresYourMonText::
	text "Parfait! Voilà"
	line "ton #mon."
	prompt

SECTION "_GotBackMonText", ROMX
_GotBackMonText::
	text "<PLAYER> récupère"
	line ""
	text_ram wStringBuffer1
	text "."
	prompt

SECTION "_BackAlreadyText", ROMX
_BackAlreadyText::
	text "Hein? Déjà?"
	line "Ton "
	text_ram wStringBuffer1
	para "a besoin de plus"
	line "de temps! Pour"
	para "récupérer ton"
	line "#mon, tu dois"
	cont "payer 100¥."
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
	text "Ah, c'est toi !"

	para "Ton #mon avait"
	line "un autre œuf !"

	para "Tu le veux ?"
	done

SECTION "_FoundAnEggText", ROMX
_FoundAnEggText::
	text "Ah, c'est toi!"
	para "On entraînait ton"
	line "#mon, et..."
	cont "Surprise totale!"
	para "Ton #mon a"
	line "pondu un OEUF!"
	para "On sait pas trop"
	line "comment mais..."
	para "Il est là en tout"
	line "cas. Tu le veux?"
	done

SECTION "_ReceivedEggText", ROMX
_ReceivedEggText::
	text "<PLAYER> a reçu"
	line "l'Oeuf !"
	done

SECTION "_TakeGoodCareOfEggText", ROMX
_TakeGoodCareOfEggText::
	text "Prends-en soin!"
	done

SECTION "_IllKeepItThanksText", ROMX
_IllKeepItThanksText::
	text "Bon ben..."
	line "J'le garde. Merci!"
	done

SECTION "_NoRoomForEggText", ROMX
_NoRoomForEggText::
	text "Tu n'as pas de"
	line "place dans ton"
	cont "équipe..."
	done

SECTION "_NameRaterHelloText", ROMX
_NameRaterHelloText::
	text "B'jour! Je suis le"
	line "SPECIALISTE des"
	para "NOMS. Je donne mon"
	line "avis sur les noms"
	cont "des #mon."
	para "Veux-tu que je te"
	line "donne mon avis sur"
	cont "tes noms?"
	done

SECTION "_NameRaterWhichMonText", ROMX
_NameRaterWhichMonText::
	text "Le nom de quel"
	line "#mon veux-tu"
	cont "que j'étudie?"
	prompt

SECTION "_NameRaterBetterNameText", ROMX
_NameRaterBetterNameText::
	text "Hmm... "
	text_ram wStringBuffer1
	text "."
	line "C'est un nom"
	cont "ma foi correct."
	para "Mais pourquoi ne"
	line "pas lui donner"
	cont "plus de pêche?"
	para "Veux-tu lui donner"
	line "un autre nom?"
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
	text "Hmm... "
	text_ram wStringBuffer1
	text "?"
	line "C'est un super"
	cont "nom! Terrible!"
	para "Prends bien soin"
	line "de "
	text_ram wStringBuffer1
	text "."
	done

SECTION "_NameRaterEggText", ROMX
_NameRaterEggText::
	text "Whoa… C'est juste"
	line "un œuf."
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
	text "Parfait. Ce"
	line "#mon s'appelle"
	cont "donc "
	text_ram wStringBuffer1
	text "."
	prompt

SECTION "Text_Gained", ROMX
Text_Gained::
	text_ram wStringBuffer1
	text " a gagné@"
	text_end

SECTION "Text_ABoostedStringBuffer2ExpPoints", ROMX
Text_ABoostedStringBuffer2ExpPoints::
	line "un bonus de "
	cont ""
	text_decimal wStringBuffer2, 3, 6
	text "Points EXP !"
	prompt

SECTION "Text_StringBuffer2ExpPoints", ROMX
Text_StringBuffer2ExpPoints::
	line ""
	text_decimal wStringBuffer2, 3, 6
	text " Points EXP !"
	prompt

SECTION "Text_GoPkmn", ROMX
Text_GoPkmn::
	text "Allez! @"
	text_end

SECTION "Text_DoItPkmn", ROMX
Text_DoItPkmn::
	text "@ Fonce !"
	text_end

SECTION "Text_GoForItPkmn", ROMX
Text_GoForItPkmn::
	text "En avant,"
	line "@"
	text_end

SECTION "Text_YourFoesWeakGetmPkmn", ROMX
Text_YourFoesWeakGetmPkmn::
	text "Attaque,"
	line "@"
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
	text "ça suffit, @!"
	line "reviens!"
	text_end

SECTION "Text_OKComeBack", ROMX
Text_OKComeBack::
	text "OK, @!"
	line "Reviens!"
	text_end

SECTION "Text_GoodComeBack", ROMX
Text_GoodComeBack::
	text "Bien, @!"
	line "Reviens!"
	text_end

SECTION "Text_ComeBack", ROMX
Text_ComeBack::
	text ""
	line "reviens!"
	done

SECTION "_BootedTMText", ROMX
_BootedTMText::
	text "CT activée."
	done

SECTION "_BootedHMText", ROMX
_BootedHMText::
	text "CS activée."
	done

SECTION "_ContainedMoveText", ROMX
_ContainedMoveText::
	text "Elle contient"
	line ""
	text_ram wStringBuffer2
	text "."
	para "Apprendre"
	line ""
	text_ram wStringBuffer2
	cont "à un #mon?"
	done

SECTION "_TMHMNotCompatibleText", ROMX
_TMHMNotCompatibleText::
	text_ram wStringBuffer2
	text " n'est"
	line "pas compatible"
	cont "avec "
	text_ram wStringBuffer1
	text "."
	para "Il ne peut pas"
	line "apprendre"
	cont ""
	text_ram wStringBuffer2
	text "."
	prompt

SECTION "_BadgeRequiredText", ROMX
_BadgeRequiredText::
	text "Un BADGE est"
	line "requis."
	prompt

SECTION "_CantUseItemText", ROMX
_CantUseItemText::
	text "Impossible d'uti-"
	line "liser ça ici."
	prompt

SECTION "_UseCutText", ROMX
_UseCutText::
	text_ram wStringBuffer2
	line "lance COUPE!"
	prompt

SECTION "_CutNothingText", ROMX
_CutNothingText::
	text "Il n'y a rien"
	line "à COUPER ici."
	prompt

SECTION "_AskFlashText", ROMX
_AskFlashText::
	text "Il fait noir ici."
	line "Utiliser FLASH?"
	done

SECTION "_BlindingFlashText", ROMX
_BlindingFlashText::
	text "Un éclair aveuglant"
	line "éclaire la zone!"
	text_promptbutton
	text_end

SECTION "_UsedSurfText", ROMX
_UsedSurfText::
	text_ram wStringBuffer2
	text "lance"
	line "Surf!"
	done

SECTION "_CantSurfText", ROMX
_CantSurfText::
	text "Vous ne pouvez pas surfer"
	line "ici."
	prompt

SECTION "_AlreadySurfingText", ROMX
_AlreadySurfingText::
	text "Vous êtes déjà en"
	line "train de SURFER!"
	prompt

SECTION "_AskSurfText", ROMX
_AskSurfText::
	text "L'eau est calme."
	line "Un coup de SURF ?"
	done

SECTION "_UseWaterfallText", ROMX
_UseWaterfallText::
	text_ram wStringBuffer2
	line "lance CASCADE!"
	done

SECTION "_HugeWaterfallText", ROMX
_HugeWaterfallText::
	text "Oh! Une énorme"
	line "cascade."
	done

SECTION "_AskWaterfallText", ROMX
_AskWaterfallText::
	text "Voulez-vous uti-"
	line "liser CASCADE?"
	done

SECTION "_UseDigText", ROMX
_UseDigText::
	text_ram wStringBuffer2
	line "lance TUNNEL!"
	done

SECTION "_UseEscapeRopeText", ROMX
_UseEscapeRopeText::
	text "<PLAYER> utilise"
	line "une CORDE SORTIE."
	done

SECTION "_CantUseDigText", ROMX
_CantUseDigText::
	text "Impossible d'uti-"
	line "liser ça ici."
	done

SECTION "_CantUseTeleportText", ROMX
_CantUseTeleportText::
	text "Impossible d'uti-"
	line "liser ça ici."

	para ""
	done

SECTION "_UseStrengthText", ROMX
_UseStrengthText::
	text_ram wStringBuffer2
	line "lance FORCE!"
	done

SECTION "_MoveBoulderText", ROMX
_MoveBoulderText::
	text_ram wStringBuffer1
	text " peut"
	line "déplacer les"
	cont "rochers."
	prompt

SECTION "_AskStrengthText", ROMX
_AskStrengthText::
	text "Un #mon peut"
	line "déplacer ça."

	para "Voulez-vous utili-"
	line "ser FORCE?"
	done

SECTION "_BouldersMoveText", ROMX
_BouldersMoveText::
	text "Les rochers peu-"
	line "vent être mainte-"
	cont "nant déplacés!"
	done

SECTION "_BouldersMayMoveText", ROMX
_BouldersMayMoveText::
	text "Un #mon peut"
	line "déplacer ceci."
	done

SECTION "_UseWhirlpoolText", ROMX
_UseWhirlpoolText::
	text_ram wStringBuffer2
	line "lance SIPHON!"
	prompt

SECTION "_MayPassWhirlpoolText", ROMX
_MayPassWhirlpoolText::
	text "C'est un terrible"
	line "siphon!"
	para "Un #mon peut"
	line "le traverser."
	done

SECTION "_AskWhirlpoolText", ROMX
_AskWhirlpoolText::
	text "Un siphon est sur"
	line "la route."

	para "Lancer"
	line "SIPHON?"
	done

SECTION "_UseHeadbuttText", ROMX
_UseHeadbuttText::
	text_ram wStringBuffer2
	text " donne"
	line "un COUP D'BOULE!"
	prompt

SECTION "_HeadbuttNothingText", ROMX
_HeadbuttNothingText::
	text "Non. Rien..."
	done

SECTION "_AskHeadbuttText", ROMX
_AskHeadbuttText::
	text "Un #mon peut"
	line "être dans l'arbre."

	para "Voulez-vous donner"
	line "un COUP D'BOULE?"
	done

SECTION "_UseRockSmashText", ROMX
_UseRockSmashText::
	text_ram wStringBuffer2
if DEF(FAITHFUL)
	line "lance ECLATE-ROC!"
else
	line "lance CASSE-BRIQUE!"
endc
	prompt

SECTION "_MaySmashText", ROMX
_MaySmashText::
	text "Un #mon peut"
	line "le briser."
	done

SECTION "_AskRockSmashText", ROMX
_AskRockSmashText::
	text "Ce rocher a l'air"
	line "cassable."

if DEF(FAITHFUL)
	para "Voulez-vous utili-"
	line "ser ECLATE-ROC?"
else
	para "Voulez-vous utili-"
	line "ser CASSE-BRIQUE?"
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
	text "<PLAYER> monte sur:"
	line ""
	text_ram wStringBuffer2
	text "."
	done

SECTION "_GotOffBikeText", ROMX
_GotOffBikeText::
	text "<PLAYER> descend"
	line "de: "
	text_ram wStringBuffer2
	text "."
	done

SECTION "_AskCutText", ROMX
_AskCutText::
	text "Cet arbre peut"
	line "être COUPE!"

	para "Lancer COUPE?"
	done

SECTION "_CanCutText", ROMX
_CanCutText::
	text "Cet arbre peut"
	line "être COUPE!"
	done

SECTION "_FoundItemText", ROMX
_FoundItemText::
	text "<PLAYER> trouve"
	line ""
	text_ram wStringBuffer3
	text "!"
	done

SECTION "_GotTheItemText", ROMX
_GotTheItemText:
	text "<PLAYER> reçoit"
	line ""
	text_ram wStringBuffer4
	text "."
	done

SECTION "_ReceivedTheBadgeText", ROMX
_ReceivedTheBadgeText:
	text "<PLAYER> reçoit"
	line "le "
	text_ram wStringBuffer4
	text "."
	done

SECTION "WhiteoutText", ROMX
WhiteoutText::
	text "<PLAYER> n'a plus"
	line "de #mon en"
	cont "forme!"
	para "<PLAYER> est"
	line "hors-jeu!"
	done

SECTION "WhiteoutToWildText", ROMX
WhiteoutToWildText::
	text "<PLAYER> n'a plus"
	line "de #mon en"
	cont "forme!"

	para "Dans la panique,"
	line "<PLAYER> laisse"
	cont "tomber ¥"
	text_decimal hMoneyTemp, 3, 7
	text "…"

	para "………………"
	line "………………"

	para "<PLAYER> est"
	line "hors-jeu!"
	done

SECTION "WhiteoutToTrainerText", ROMX
WhiteoutToTrainerText::
	text "<PLAYER> n'a plus"
	line "de #mon en"
	cont "forme!"

	para "<PLAYER> verse"
	line "¥"
	text_decimal hMoneyTemp, 3, 7
	text " au"
	cont "gagnant…"

	para "………………"
	line "………………"

	para "<PLAYER> est"
	line "hors-jeu!"
	done

SECTION "ForfeitToTrainerText", ROMX
ForfeitToTrainerText::
	text "<PLAYER> a"
	line "abandonné le"
	cont "combat…"

	para "<PLAYER> verse"
	line "¥"
	text_decimal hMoneyTemp, 3, 7
	text " au"
	cont "gagnant…"

	para "………………"
	line "………………"

	para "<PLAYER> est"
	line "hors-jeu!"
	done

SECTION "_PoisonFaintText", ROMX
_PoisonFaintText::
	text_ram wStringBuffer3
	line "se remet"
	cont "du poison!"
	prompt

SECTION "_UseSweetHoneyText", ROMX
_UseSweetHoneyText::
	text "<PLAYER> répand"
if DEF(FAITHFUL)
	line "le miel!"
else
	line "le miel!"
endc
	done

SECTION "_SweetHoneyNothingText", ROMX
_SweetHoneyNothingText::
	text "Il n'y a rien"
	line "dans le coin..."
	done

SECTION "_SquirtbottleNothingText", ROMX
_SquirtbottleNothingText::
	text "<PLAYER> fait"
	line "jaillir de l'eau."
	para "Mais rien ne"
	line "se passe..."
	done

SECTION "_UseSacredAshText", ROMX
_UseSacredAshText::
	text "Les #mon de"
	line "<PLAYER> sont tous"
	cont "soignés!"
	done

SECTION "Text_AnEGGCantHoldAnItem", ROMX
Text_AnEGGCantHoldAnItem::
	text "Un OEUF ne peut"
	line "rien porter."
	prompt

SECTION "_AskThrowAwayText", ROMX
_AskThrowAwayText::
	text "En jeter"
	line "combien?"
	done

SECTION "_AskQuantityThrowAwayText", ROMX
_AskQuantityThrowAwayText::
	text "Jeter"
	text_decimal wItemQuantityChangeBuffer, 1, 2
	line ""
	text_ram wStringBuffer2
	text_plural
	text "?"
	done

SECTION "_ThrewAwayText", ROMX
_ThrewAwayText::
	text_ram wStringBuffer2
	line "à la poubelle!"
	prompt

SECTION "_OakThisIsntTheTimeText", ROMX
_OakThisIsntTheTimeText::
	text "CHEN: <PLAYER>!"
	line "Ce n'est pas le"
	cont "moment d'utiliser"
	cont "ce truc!"
	prompt

SECTION "Text_YouDontHaveAPkmn", ROMX
Text_YouDontHaveAPkmn::
	text "Vous n'avez pas"
	line "de #mon!"
	prompt

SECTION "_RegisteredItemText", ROMX
_RegisteredItemText::
	text_ram wStringBuffer2
	line "enregistré(e)."
	prompt

SECTION "UnregisteredItemText", ROMX
UnregisteredItemText::
	text "Retiré des"
	line "raccourcis :"
	cont ""
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
	text "Quelle photo choi-"
	line "sis-tu pour ta"
	cont "carte de Dresseur?"
	done

SECTION "Text_SoThisIsYou", ROMX
Text_SoThisIsYou::
	text "Alors c'est toi ?"
	done

SECTION "Text_BattleUser", ROMX
Text_BattleUser::
	text "<USER>"
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
	text "Hein?"
	text_end

SECTION "_BreedEggHatchText", ROMX
_BreedEggHatchText::
	text_ram wStringBuffer1
	text "est sorti"
	line "de son œuf !"
	text_sound SFX_CAUGHT_MON
	text_promptbutton
	text_end

SECTION "_BreedAskNicknameText", ROMX
_BreedAskNicknameText::
	text "Donner un surnom"
	line "à @"
	text_ram wStringBuffer1
	text "?"
	done

SECTION "_LeftWithDayCareLadyText", ROMX
_LeftWithDayCareLadyText::
	text "C'est"
	text_ram wBreedMon2Nickname
	line "il restait avec"
	cont "la dame de la garderie."
	done

SECTION "_LeftWithDayCareManText", ROMX
_LeftWithDayCareManText::
	text "C'est"
	text_ram wBreedMon1Nickname
	line "il restait avec"
	cont "l'homme de la garderie."
	done

SECTION "_BreedNoInterestText", ROMX
_BreedNoInterestText::
	text "Il se fiche de"
	line "@"
	text_ram wStringBuffer1
	text "."
	prompt

SECTION "_BreedAppearsToCareForText", ROMX
_BreedAppearsToCareForText::
	text "Il aime bien"
	line "@"
	text_ram wStringBuffer1
	text "."
	prompt

SECTION "_BreedFriendlyText", ROMX
_BreedFriendlyText::
	text "Il est amical avec"
	line "@"
	text_ram wStringBuffer1
	text "."
	prompt

SECTION "_BreedShowsInterestText", ROMX
_BreedShowsInterestText::
	text "Il s'intéresse à"
	line "@"
	text_ram wStringBuffer1
	text "."
	prompt

SECTION "_EmptyMailboxText", ROMX
_EmptyMailboxText::
	text "Il n'y a pas de courrier"
	line "ici."
	prompt

SECTION "ClearedMailPutAwayText", ROMX
ClearedMailPutAwayText::
	text "Le courrier effacé"
	line "a été mis de côté."
	prompt

SECTION "MailPackFullText", ROMX
MailPackFullText::
	text "Le sac est plein."
	prompt

SECTION "MailMessageLostText", ROMX
MailMessageLostText::
	text "Le message de la"
	line "LETTRE sera perdu."
	cont "OK?"
	done

SECTION "MailAlreadyHoldingItemText", ROMX
MailAlreadyHoldingItemText::
	text "Il porte déjà"
	line "un objet."
	prompt

SECTION "MailEggText", ROMX
MailEggText::
	text "Un OEUF ne peut"
	line "porter une LETTRE!"
	prompt

SECTION "MailMovedFromBoxText", ROMX
MailMovedFromBoxText::
	text "Cette LETTRE vient"
	line "de la BOITE AUX"
	cont "LETTRES."
	prompt

SECTION "_ReceivedGiftMonText", ROMX
_ReceivedGiftMonText::
	text "<PLAYER> reçoit"
	line ""
	text_ram wMonOrItemNameBuffer
	text "!"
	done

SECTION "_EggSentToPCText", ROMX
_EggSentToPCText::
	text "L'OEUF a été envoyé"
	line "à "
	text_ram wStringBuffer1
	text "."
	prompt

SECTION "_PCGottaHavePokemonText", ROMX
_PCGottaHavePokemonText::
	text "Il faut des"
	line "#mon à appeler!"
	prompt

SECTION "_ContestCaughtMonText", ROMX
_ContestCaughtMonText::
	text_ram wStringBuffer1
	line "capturé!"
	prompt

SECTION "_ContestAskSwitchText", ROMX
_ContestAskSwitchText::
	text "Changer de"
	line "#mon?"
	done

SECTION "_ContestAlreadyCaughtText", ROMX
_ContestAlreadyCaughtText::
	text "Vous avez déjà"
	line "un @"
	text_ram wStringBuffer1
	text "."
	prompt

SECTION "ContestJudging_FirstPlaceText", ROMX
ContestJudging_FirstPlaceText::
	text "Le gagnant du"
	line "Concours de"
	cont "Capture est@"
	text_pause
	text "..."
	para "@"
	text_ram wBugContestWinnerName
	text ","
	line "qui a capturé un"
	cont "@"
	text_ram wStringBuffer1
	text "!"
	text_end

SECTION "ContestJudging_FirstPlaceScoreText", ROMX
ContestJudging_FirstPlaceScoreText::
	para "Le score gagnant"
	line "est de @"
	text_decimal wBugContestFirstPlaceScore, 2, 3
	text " pts!"
	prompt

SECTION "ContestJudging_SecondPlaceText", ROMX
ContestJudging_SecondPlaceText::
	text "En deuxième place:"
	line "@"
	text_ram wBugContestWinnerName
	text ","
	para "qui a capturé un"
	line "@"
	text_ram wStringBuffer1
	text "!"
	text_end

SECTION "ContestJudging_SecondPlaceScoreText", ROMX
ContestJudging_SecondPlaceScoreText::
	para "Le score est de"
	line "@"
	text_decimal wBugContestSecondPlaceScore, 2, 3
	text " points!"
	prompt

SECTION "ContestJudging_ThirdPlaceText", ROMX
ContestJudging_ThirdPlaceText::
	text "En troisième:"
	line "@"
	text_ram wBugContestWinnerName
	text ","
	para "qui a capturé un"
	line "@"
	text_ram wStringBuffer1
	text "!"
	text_end

SECTION "ContestJudging_ThirdPlaceScoreText", ROMX
ContestJudging_ThirdPlaceScoreText::
	para "Le score est de"
	line "@"
	text_decimal wBugContestThirdPlaceScore, 2, 3
	text " points!"
	prompt

SECTION "_MagikarpGuruMeasureText", ROMX
_MagikarpGuruMeasureText::
	text "Laisse-moi mesurer"
	line "ce Magikarpe."

	para "…CS, ça mesure"
	line ""
	text_ram wStringBuffer1
	text "."
	prompt

SECTION "_KarpGuruRecordText", ROMX
_KarpGuruRecordText::
	text "Record actuel"
	para ""
	text_ram wStringBuffer1
	text "attrapé par"
	line ""
	text_ram wMagikarpRecordHoldersName
	text_promptbutton
	text_end

SECTION "_LuckyNumberMatchPartyText", ROMX
_LuckyNumberMatchPartyText::
	text "Félicitations!"
	para "Le No. ID de votre"
	line "@"
	text_ram wStringBuffer1
	text " dans"
	para "votre équipe"
	line "correspond."
	prompt

SECTION "_LuckyNumberMatchPCText", ROMX
_LuckyNumberMatchPCText::
	text "Félicitations!"
	para "Le No. ID de votre"
	line "@"
	text_ram wStringBuffer1
	text " dans"
	para "votre BOITE PC"
	line "correspond."
	prompt

SECTION "_CaughtAskNicknameText", ROMX
_CaughtAskNicknameText::
	text "Donner un surnom"
	line "au @"
	text_ram wStringBuffer1
	cont "reçu?"
	done

SECTION "_PokecenterPCCantUseText", ROMX
_PokecenterPCCantUseText::
	text "Bzzzzt! Il faut un"
	line "#mon pour"
	cont "utiliser ça!"
	prompt

SECTION "_PlayersPCTurnOnText", ROMX
_PlayersPCTurnOnText::
	text "<PLAYER> allume"
	line "le PC."
	prompt

SECTION "_PlayersPCAskWhatDoText", ROMX
_PlayersPCAskWhatDoText::
	text "Que veux-tu"
	line "faire?"
	done

SECTION "_PlayersPCHowManyWithdrawText", ROMX
_PlayersPCHowManyWithdrawText::
	text "Combien voulez-"
	line "vous en retirer?"
	done

SECTION "_PlayersPCWithdrewItemsText", ROMX
_PlayersPCWithdrewItemsText::
	text "Retiré @"
	text_decimal wItemQuantityChangeBuffer, 1, 2
	line "@"
	text_ram wStringBuffer2
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
	text "Cet article ne peut pas"
	line "être déposé."
	prompt

SECTION "_PlayersPCHowManyDepositText", ROMX
_PlayersPCHowManyDepositText::
	text "Combien voulez-"
	line "vous en déposer?"
	done

SECTION "_PlayersPCDepositItemsText", ROMX
_PlayersPCDepositItemsText::
	text "Déposé @"
	text_decimal wItemQuantityChangeBuffer, 1, 2
	line "@"
	text_ram wStringBuffer2
	text "."
	prompt

SECTION "_PlayersPCNoRoomDepositText", ROMX
_PlayersPCNoRoomDepositText::
	text "Plus de place pour"
	line "garder des objets."
	prompt

SECTION "_PokecenterPCTurnOnText", ROMX
_PokecenterPCTurnOnText::
	text "<PLAYER> allume"
	line "le PC."
	prompt

SECTION "_PokecenterPCWhoseText", ROMX
_PokecenterPCWhoseText::
	text "Accéder à quel PC?"
	done

SECTION "_PokecenterBillsPCText", ROMX
_PokecenterBillsPCText::
	text "PC de LEO"
	line "connecté."
	para "Gestion Stocks"
	line "de #mon."
	prompt

SECTION "_PokecenterPlayersPCText", ROMX
_PokecenterPlayersPCText::
	text "PC personnel"
	line "connecté."
	para "Gestion Stocks"
	line "d'objets."
	prompt

SECTION "_PokecenterOaksPCText", ROMX
_PokecenterOaksPCText::
	text "PC du PROF.CHEN"
	line "connecté."

	para "Evaluation du"
	line "#dex."
	prompt

SECTION "_PokecenterPCOaksClosedText", ROMX
_PokecenterPCOaksClosedText::
	text "..."
	line "Déconnexion..."
	done

SECTION "_OakPCText1", ROMX
_OakPCText1::
	text "Veux-tu que j'éva-"
	line "lue ton #dex?"
	done

SECTION "_OakPCText2", ROMX
_OakPCText2::
	text "Niveau #dex"
	line "actuel:"
	prompt

SECTION "_OakPCText3", ROMX
_OakPCText3::
	text_ram wStringBuffer3
	text " #mon vus"
	line "@"
	text_ram wStringBuffer4
	text " #mon pris"
	para "Evaluation"
	line "PROF.CHEN:"
	done

SECTION "_OakRating01", ROMX
_OakRating01::
	text "Cherche des #-"
	line "MON dans les"
	cont "hautes herbes!"
	done

SECTION "_OakRating02", ROMX
_OakRating02::
	text "Bien. Je vois que"
	line "tu sais te servir"
	cont "des # BALLS."
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
	text "Tu dois remplir"
	line "ton #dex."
	para "Attrape plusieurs"
	line "types de #mon!"
	done

SECTION "_OakRating05", ROMX
_OakRating05::
	text "Tu te donnes du"
	line "mal, ça se voit."
	para "Ton #dex se"
	line "remplit doucement."
	done

SECTION "_OakRating06", ROMX
_OakRating06::
	text "Certains #mon"
	line "évoluent seuls,"
	para "d'autres ont be-"
	line "soin de PIERRES."
	done

SECTION "_OakRating07", ROMX
_OakRating07::
	text "Est-ce que tu as"
	line "une CANNE? Tu"
	para "peux pêcher des"
	line "#mon!"
	done

SECTION "_OakRating08", ROMX
_OakRating08::
	text "Super! Tu aimes"
	line "collectionner"
	cont "des trucs, hein?"
	done

SECTION "_OakRating09", ROMX
_OakRating09::
	text "Certains #mon"
	line "n'apparaissent"
	para "qu'à certains"
	line "moments de la"
	cont "journée."
	done

SECTION "_OakRating10", ROMX
_OakRating10::
	text "Ton #dex se"
	line "remplit. C'est"
	cont "bien!"
	done

SECTION "_OakRating11", ROMX
_OakRating11::
	text "Impressionnant!"
	line "Tu fais évoluer"
	para "tes #mon!"
	line "Bravo!"
	done

SECTION "_OakRating12", ROMX
_OakRating12::
	text "Tu connais"
	line "FARGAS? Il fabri-"
	cont "que des BALLS!"
	done

SECTION "_OakRating13", ROMX
_OakRating13::
	text "Oh! Tu as trouvé"
	line "plus de #mon"
	para "qu'au dernier"
	line "recensement du"
	cont "#dex."
	done

SECTION "_OakRating14", ROMX
_OakRating14::
	text "Echanges-tu tes"
	line "#mon? Il"
	para "faut se faire"
	line "des amis!"
	done

SECTION "_OakRating15", ROMX
_OakRating15::
	text "Whoa! T'as passé"
	line "la barre des 200!"
	cont "Ton #dex est"
	cont "mortel!"
	done

SECTION "_OakRating16", ROMX
_OakRating16::
	text "Tu as trouvé tant"
	line "de #mon!"
	para "Tu aides vraiment"
	line "mes recherches!"
	done

SECTION "_OakRating17", ROMX
_OakRating17::
	text "Magnifique! Tu"
	line "peux devenir un"
	para "PROF. #mon"
	line "dès maintenant!"
	done

SECTION "_OakRating18", ROMX
_OakRating18::
	text "Ton #dex est"
	line "incroyable! Tu"
	para "vas devenir un"
	line "professionnel!"
	done

SECTION "_OakRating19", ROMX
_OakRating19::
	text "Whoa! Un #dex"
	line "parfait! Mon rêve"
	para "devient réalité!"
	line "Bravo! Bravo!"
	done

SECTION "_OakPCText4", ROMX
_OakPCText4::
	text "Connexion au PC du"
	line "PROF.CHEN coupée."
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
	text "Jeter combien de"
	line "@"
	text_ram wStringBuffer2
	text "?"
	done

SECTION "_ItemsDiscardedText", ROMX
_ItemsDiscardedText::
	text_ram wStringBuffer1
	line "à la poubelle."
	prompt

SECTION "_ItemsOakWarningText", ROMX
_ItemsOakWarningText::
	text "CHEN: <PLAYER>!"
	line "Ce n'est pas le"
	cont "moment d'utiliser"
	cont "ce truc!"
	done

SECTION "_PokemonSwapItemText", ROMX
_PokemonSwapItemText::
	text "Pris @"
	text_ram wStringBuffer1
	line "de @"
	text_ram wMonOrItemNameBuffer
	text " et"
	para "fait tenir"
	line "@"
	text_ram wStringBuffer2
	text "."
	prompt

SECTION "_PokemonHoldItemText", ROMX
_PokemonHoldItemText::
	text_ram wMonOrItemNameBuffer
	text " tient"
	line "@"
	text_ram wStringBuffer2
	text "."
	prompt

SECTION "_PokemonRemoveMailText", ROMX
_PokemonRemoveMailText::
	text "Enlever la"
	line "LETTRE d'abord."
	prompt

SECTION "_PokemonNotHoldingText", ROMX
_PokemonNotHoldingText::
	text_ram wMonOrItemNameBuffer
	text " ne"
	line "tient rien."
	prompt

SECTION "_ItemStorageFullText", ROMX
_ItemStorageFullText::
	text "Espace de stockage"
	line "d'objets complet."
	prompt

SECTION "_PokemonTookItemText", ROMX
_PokemonTookItemText::
	text "Pris @"
	text_ram wStringBuffer1
	line "de @"
	text_ram wMonOrItemNameBuffer
	text "."
	prompt

SECTION "_PokemonAskSwapItemText", ROMX
_PokemonAskSwapItemText::
	text_ram wMonOrItemNameBuffer
	line "tient déjà"
	para "@"
	text_ram wStringBuffer1
	text "."
	line "Changer d'objet?"
	done

SECTION "_ItemCantHeldText", ROMX
_ItemCantHeldText::
	text "Cet objet ne peut"
	line "pas être tenu."
	prompt

SECTION "_MailLoseMessageText", ROMX
_MailLoseMessageText::
	text "La LETTRE perdra"
	line "son message. OK?"
	done

SECTION "_MailDetachedText", ROMX
_MailDetachedText::
	text "LETTRE enlevée de"
	line "@"
	text_ram wStringBuffer1
	text "."
	prompt

SECTION "_MailNoSpaceText", ROMX
_MailNoSpaceText::
	text "Pas de place pour"
	line "enlever la LETTRE."
	prompt

SECTION "_MailAskSendToPCText", ROMX
_MailAskSendToPCText::
	text "Envoyer la LETTRE"
	line "enlevée au PC?"
	done

SECTION "_MailboxFullText", ROMX
_MailboxFullText::
	text "La BOITE AUX LET-"
	line "TRES du PC est"
	cont "pleine."
	prompt

SECTION "_MailSentToPCText", ROMX
_MailSentToPCText::
	text "La LETTRE a été"
	line "envoyée au PC."
	prompt

SECTION "_PokemonNotEnoughHPText", ROMX
_PokemonNotEnoughHPText::
	text "Pas assez de PV!"
	prompt

SECTION "_MayRegisterItemText", ROMX
_MayRegisterItemText::
	text "Un objet du SAC"
	line "peut être enregis-"

	para "tré comme fonction"
	line "du bouton SELECT."
	done

SECTION "_InitialOptionsText", ROMX
_InitialOptionsText::
	text "Choisis comment"
	line "tu veux jouer à"
	cont "Polished Crystal."
	prompt

SECTION "_ElmText1", ROMX
_ElmText1::
	text "Bonjour! Désolé de"
	line "l'attente!"
	para "Bienvenue dans le"
	line "monde de #mon!"
	para "Mon nom est ORME."
	para "Mais on m'appelle"
	line "le PROF.#mon."
	prompt

SECTION "_ElmText2", ROMX
_ElmText2::
	text "Ce monde est peu-"
	line "plé de créatures"
	cont "appelées #mon."
	text_end

SECTION "_ElmText4", ROMX
_ElmText4::
	text "Humains et #mon"
	line "vivent en parfaite"
	cont "harmonie..."
	para "Certains jouent"
	line "avec les #mon,"
	cont "d'autres font des"
	cont "combats avec eux."
	prompt

SECTION "_ElmText5", ROMX
_ElmText5::
	text "Mais il reste"
	line "beaucoup à appren-"
	cont "dre sur nos amis"
	cont "les #mon."
	para "De nombreux mystè-"
	line "res planent à leur"
	cont "sujet."
	para "Et c'est pourquoi"
	line "j'étudie les"
	cont "#mon tous les"
	cont "jours."
	prompt

SECTION "_ElmText6", ROMX
_ElmText6::
	text "Quel est ton nom ?"
	line ""
	prompt

SECTION "_ElmText7", ROMX
_ElmText7::
	text "<PLAYER>, ta quête"
	line "est sur le point"
	cont "de commencer."
	para "Joies et périls"
	line "paveront ta"
	cont "route..."
	para "Un monde de rêve,"
	line "de dangers et de"
	para "#mon t'attend!"
	line "En avant!"
	para "..."
	line "A plus tard."
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
	text "OK?"
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
	text "Vous ne pourrez"
	line "pas combattre si"
	cont "vous échangez ce"
	cont "#mon."
	prompt

SECTION "_LinkAbnormalMonText", ROMX
_LinkAbnormalMonText::
	text "Le @"
	text_ram wStringBuffer1
	line "de votre ami(e) a"
	cont "l'air bizarre!"
	prompt

SECTION "_LinkAskTradeForText", ROMX
_LinkAskTradeForText::
	text_ram wBufferTrademonNickname
	line "contre @"
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
	text "<PLAYER> sauve"
	line "la partie."
	done

SECTION "_AnotherSaveFileText", ROMX
_AnotherSaveFileText::
	text "Attention! Il y a"
	line "déjà un fichier de"
	cont "sauvegarde."

	para "Veux-tu l'écraser?"
	done

SECTION "_SaveFileCorruptedText", ROMX
_SaveFileCorruptedText::
	text "La sauvegarde"
	line "est corrompue!"
	prompt

SECTION "_GainedItemText", ROMX
_GainedItemText::
	text "<PLAYER> a obtenu"
	line ""
	text_ram wStringBuffer4
	text "."
	done

SECTION "_GainedMultipleItemsText", ROMX
_GainedMultipleItemsText::
	text "<PLAYER> a obtenu"
	line ""
	text_decimal wItemQuantityChangeBuffer, 1, 2
	text " "
	text_ram wStringBuffer4
	text "."
	done

SECTION "_PutItemInPocketText", ROMX
_PutItemInPocketText::
	text "<PLAYER> met"
	line "@"
	text_ram wStringBuffer1
	text " dans"
	cont "@"
	text_ram wStringBuffer3
	text "."
	prompt

SECTION "_PocketIsFullText", ROMX
_PocketIsFullText::
	text_ram wStringBuffer3
	text ":"
	line "complet!"
	prompt

SECTION "_FoundWingsText", ROMX
_FoundWingsText::
	text "<PLAYER> obtenu"
	text_decimal wCurWingQuantity, 1, 2
	line ""
	text_ram wStringBuffer4
	text "."
	done

SECTION "_CongratulationsYourPokemonText", ROMX
_CongratulationsYourPokemonText::
	text "Félicitations!"
	line "Ton"
	text_ram wStringBuffer2
	text_end

SECTION "_EvolvedIntoText", ROMX
_EvolvedIntoText::
	para "évolue en"
	line "@"
	text_ram wStringBuffer1
	text "!"
	done

SECTION "_StoppedEvolvingText", ROMX
_StoppedEvolvingText::
	text "Hein? @"
	text_ram wStringBuffer2
	line "n'évolue plus!"
	prompt

SECTION "_EvolvingText", ROMX
_EvolvingText::
	text "Quoi? @"
	text_ram wStringBuffer2
	line "évolue!"
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
	line "sera de ¥"
	text_decimal hMoneyTemp, 3, 7
	text "."
	done

SECTION "_HerbShopLadyIntroText", ROMX
_HerbShopLadyIntroText::
	text "Bonjour toi."
	para "Je vends des"
	line "herbes médicinales"
	cont "à bon marché."
	para "C'est bien bon"
	line "mais un peu amer."
	para "Ton #mon ne va"
	line "peut-être pas"
	cont "aimer."
	para "Héhéhéhéhé..."
	done

SECTION "_HerbalLadyFinalPriceText", ROMX
_HerbalLadyFinalPriceText::
	text_decimal wItemQuantityChangeBuffer, 1, 2
	text " "
	text_ram wStringBuffer2
	text_plural
	line "sera de ¥"
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
	text "Ton SAC est"
	line "plein."
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
	text " coûte"
	line "@"
	text_decimal hMoneyTemp, 3, 7
	text "¥. Tu veux?"
	done

SECTION "_BargainShopThanksText", ROMX
_BargainShopThanksText::
	text "Merci."
	done

SECTION "_BargainShopPackFullText", ROMX
_BargainShopPackFullText::
	text "Oh! Ton SAC"
	line "est super plein."
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
	line "coûtera ¥"
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
	text "J'peux t'en donner"
	line "@"
	text_decimal hMoneyTemp, 3, 7
	text "¥."
	para "Ca te va?"
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
	text "Reçu: @"
	text_decimal hMoneyTemp, 3, 7
	text "¥"
	line "pour @"
	text_ram wStringBuffer2
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
	line "sera de ¥"
	text_decimal hMoneyTemp, 3, 7
	text "."
	done

SECTION "BTMartHowMayIHelpYouText", ROMX
BTMartHowMayIHelpYouText::
	text "Bienvenue au"
	line "Bureau d'échange!"

	para "Tu peux échanger"
	line "tes BP contre de"
	cont "super prix."
	done

SECTION "BTMartCostsThisMuchText", ROMX
BTMartCostsThisMuchText::
	text_decimal wItemQuantityChangeBuffer, 1, 2
	text " "
	text_ram wStringBuffer1
	text_plural
	line "coûtera"
	text_decimal hMoneyTemp+1, 2, 4
	text " BP."
	done

SECTION "BTMartInsufficientFundsText", ROMX
BTMartInsufficientFundsText::
	text "Je suis désolé,"
	line "tu n'as pas assez"
	cont "de BP."
	done

SECTION "BTMartBagFullText", ROMX
BTMartBagFullText::
	text "Je suis désolé,"
	line "ton SAC est plein."
	done

SECTION "BTMartComeAgainText", ROMX
BTMartComeAgainText::
	text "Reviens quand"
	line "tu veux !"
	done

SECTION "_SlotsStartText", ROMX
_SlotsStartText::
	text "C'est parti!"
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
	text "en ligne!"
	line "@"
	text_ram wStringBuffer2
	text " jetons!"
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
	text "Choisis Continuer"
	line "pour régler"
	cont "l'heure."
	prompt

SECTION "_PasswordAskResetClockText", ROMX
_PasswordAskResetClockText::
	text "Réinitialiser"
	line "l'horloge?"
	done

SECTION "_ClearAllSaveDataText", ROMX
_ClearAllSaveDataText::
	text "Effacer zone de"
	line "sauvegarde?"
	done

SECTION "ResetInitialOptionsText", ROMX
ResetInitialOptionsText::
	text "Réinitialiser les"
	line "options de jeu ?"
	done

SECTION "_LearnedMoveText", ROMX
_LearnedMoveText::
	text_ram wMonOrItemNameBuffer
	text " apprend"
	line ""
	text_ram wStringBuffer2
	text "!"
	text_sound SFX_DEX_FANFARE_50_79
	text_promptbutton
	text_end

SECTION "_MoveAskForgetText", ROMX
_MoveAskForgetText::
	text "Quelle capa. doit"
	next "être oubliée ?"

	para ""
	done

SECTION "_StopLearningMoveText", ROMX
_StopLearningMoveText::
	text "Arrêter d'appren-"
	line "dre @"
	text_ram wStringBuffer2
	text "?"
	done

SECTION "_DidNotLearnMoveText", ROMX
_DidNotLearnMoveText::
	text_ram wMonOrItemNameBuffer
	line "n'a pas appris"
	cont "@"
	text_ram wStringBuffer2
	text "."
	prompt

SECTION "_AskForgetMoveText", ROMX
_AskForgetMoveText::
	text_ram wMonOrItemNameBuffer
	line "veut apprendre"
	cont ""
	text_ram wStringBuffer2
	text "!"

	para "Faut-il oublier"
	line "une capa. pour"
	cont "apprendre"
	text_ram wStringBuffer2
	text "?"
	done

SECTION "Text_MoveForgetCount", ROMX
Text_MoveForgetCount::
	text "1, 2 et..."
	text_pause
	text_end

SECTION "_MoveForgotText", ROMX
_MoveForgotText::
	text "Tadaa!@"
	text_pause
	para "@"
	text_ram wMonOrItemNameBuffer
	text " oublie"
	line "@"
	text_ram wStringBuffer1
	text "."
	para "Et..."
	prompt

SECTION "_MoveCantForgetHMText", ROMX
_MoveCantForgetHMText::
	text "Les capacités des"
	line "CS ne peuvent être"
	cont "oubliées."
	prompt

SECTION "_CardFlipPlayWithThreeCoinsText", ROMX
_CardFlipPlayWithThreeCoinsText::
	text "Jouer avec 3"
	line "jetons?"
	done

SECTION "_CardFlipNotEnoughCoinsText", ROMX
_CardFlipNotEnoughCoinsText::
	text "Pas assez de"
	line "jetons."
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
	text "Jouer à nouveau?"
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
	text "Tu peux échanger"
	line "tes points contre"
	cont "un fabuleux prix!"
	done

SECTION "_BuenaIsThatRightText", ROMX
_BuenaIsThatRightText::
	text_ram wStringBuffer1
	text "?"
	line "C'est ça?"
	done

SECTION "_BuenaHereYouGoText", ROMX
_BuenaHereYouGoText::
	text "Allez hop!"
	done

SECTION "_BuenaNotEnoughPointsText", ROMX
_BuenaNotEnoughPointsText::
	text "Tu n'as pas"
	line "assez de points."
	done

SECTION "_BuenaNoRoomText", ROMX
_BuenaNoRoomText::
	text "Pas de place."
	done

SECTION "_BuenaComeAgainText", ROMX
_BuenaComeAgainText::
	text "Oh. Revenez"
	line "plus tard!"
	done

SECTION "_BallBrokeFreeText", ROMX
_BallBrokeFreeText::
	text "Oh non! Le #mon"
	line "s'est libéré!"
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
	text "Et hop! "
	text_ram wEnemyMonNickname
	line "est attrapé!"
	text_sound SFX_CAUGHT_MON
	text_end

SECTION "Text_Waitbutton_2", ROMX
Text_Waitbutton_2::
	text_promptbutton
	text_end

SECTION "_CurBoxFullText", ROMX
_CurBoxFullText::
	text_ram wStringBuffer1
	text "est plein."
	prompt

SECTION "_MonSentToPCText", ROMX
_MonSentToPCText::
	text_ram wMonOrItemNameBuffer
	text "a été"
	line "envoyé à"
	text_ram wStringBuffer1
	text "."
	prompt

SECTION "_NewDexDataText", ROMX
_NewDexDataText::
	text "Le profil de"
	line "@"
	text_ram wEnemyMonNickname
	text " est"
	cont "ajouté au #dex."
	text_sound SFX_SLOT_MACHINE_START
	text_promptbutton
	text_end

SECTION "_AskGiveNicknameText", ROMX
_AskGiveNicknameText::
	text "Donner un surnom"
	line "à @"
	text_ram wStringBuffer1
	text "?"
	done

SECTION "_ItemHappinessRoseButStatFellText", ROMX
_ItemHappinessRoseButStatFellText::
	text_ram wStringBuffer1
	text "est devenu"
	line "plus amical."
	para "La stat "
	text_ram wStringBuffer2
	text " de"
	line "@"
	text_ram wStringBuffer1
	text " a baissé!"
	prompt

SECTION "_ItemStatRoseText", ROMX
_ItemStatRoseText::
	text_ram wStringBuffer2
	text " de"
	line "@"
	text_ram wStringBuffer1
	text " monte."
	prompt

SECTION "_ItemCantUseOnMonText", ROMX
_ItemCantUseOnMonText::
	text "Inutilisable sur"
	line "ce #mon."
	prompt

SECTION "Text_RepelUsedEarlierIsStillInEffect", ROMX
Text_RepelUsedEarlierIsStillInEffect::
	text "Le REPOUSSE utili-"
	line "sé auparavant est"
	cont "toujours effectif."
	prompt

SECTION "_BlueCardBalanceText", ROMX
_BlueCardBalanceText::
	text "Vous avez"
	line "@"
	text_decimal wBlueCardBalance, 1, 2
	text " points."
	done

SECTION "_CoinCaseCountText", ROMX
_CoinCaseCountText::
	text "Pièces:"
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
	text "PP de @"
	text_ram wStringBuffer2
	line "au max."
	prompt

SECTION "Text_PPsIncreased", ROMX
Text_PPsIncreased::
	text "PP de @"
	text_ram wStringBuffer2
	line "augmentés."
	prompt

SECTION "Text_PPsMaximized", ROMX
Text_PPsMaximized::
	text "PP de @"
	text_ram wStringBuffer2
	line "maximisés."
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
	text "Cela ne peut pas être utilisé"
	line "sur un œuf."
	prompt

SECTION "_ItemOakWarningText", ROMX
_ItemOakWarningText::
	text "CHEN: <PLAYER>!"
	line "Ce n'est pas le"
	cont "moment d'utiliser"
	cont "ce truc!"
	prompt

SECTION "_ItemWontHaveEffectText", ROMX
_ItemWontHaveEffectText::
	text "Ca n'a aucun"
	line "effet."
	prompt

SECTION "_BallBlockedText", ROMX
_BallBlockedText::
	text "Le dresseur"
	line "détourne la BALL!"
	prompt

SECTION "_BallDontBeAThiefText", ROMX
_BallDontBeAThiefText::
	text "Voler c'est mal!"
	prompt

SECTION "_BallStorageFullText", ROMX
_BallStorageFullText::
	text "Le système de sto-"
	line "ckage est plein."
	cont "C'est inutilisable"
	prompt

SECTION "_BallDatabaseFullText", ROMX
_BallDatabaseFullText::
	text "La base du PC est"
	line "surchargée. Pense"
	cont "à sauvegarder."
	prompt

SECTION "Text_MonIsHiddenFromBall", ROMX
Text_MonIsHiddenFromBall::
	text "Le #mon ne"
	line "peut pas être vu!"
	prompt

SECTION "Text_MonCantBeCaught", ROMX
Text_MonCantBeCaught::
	text "Le #mon ne "
	line "peut être attrapé!"
	prompt

SECTION "_ItemUsedText", ROMX
_ItemUsedText::
	text "<PLAYER> a utilisé "
	line ""
	text_ram wStringBuffer2
	text "."
	done

SECTION "_KnowsMoveText", ROMX
_KnowsMoveText::
	text_ram wStringBuffer1
	text " connaît"
	line "@"
	text_ram wStringBuffer2
	text "."
	prompt

SECTION "_MoveKnowsOneText", ROMX
_MoveKnowsOneText::
	text "Ce #mon ne"
	line "connaît qu'une"
	cont "seule capacité."
	done

SECTION "_AskDeleteMoveText", ROMX
_AskDeleteMoveText::
	text "Lui faire oublier"
	line "@"
	text_ram wStringBuffer1
	text "?"
	done

SECTION "_DeleterForgotMoveText", ROMX
_DeleterForgotMoveText::
	text "Le #mon a ou-"
	line "blié la capacité!"
	done

SECTION "_DeleterEggText", ROMX
_DeleterEggText::
	text "Un œuf ne peut pas"
	line "avoir de capacité!"
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
	text "Et oui! Moi j'suis"
	line "le TYPE QUI EFFACE"
	cont "LES CAPACITES!!!"
	para "Je peux persuader"
	line "les #mon"
	cont "d'oublier leurs"
	cont "capacités."
	para "Dois-je m'occuper"
	line "de l'un de tes"
	cont "#mon?"
	done

SECTION "_DeleterAskWhichMonText", ROMX
_DeleterAskWhichMonText::
	text "Quel #mon?"
	prompt

SECTION "Text_DSTIsThatOK", ROMX
Text_DSTIsThatOK::
	line "OK?"
	done

SECTION "_TimeAskOkayText", ROMX
_TimeAskOkayText::
	text ","
	line "OK?"
	done

SECTION "_TimesetAskDSTText", ROMX
_TimesetAskDSTText::
	text "Veux-tu"
	line "modifier l'heure?"
	done

SECTION "_TimesetDSTText", ROMX
_TimesetDSTText::
	text "J'avance la"
	line "montre d'une"
	cont "heure."
	prompt

SECTION "_TimesetAskNotDSTText", ROMX
_TimesetAskNotDSTText::
	text "Le changement"
	line "d'heure est-il"
	cont "fini?"
	done

SECTION "_TimesetNotDSTText", ROMX
_TimesetNotDSTText::
	text "Je recule la"
	line "montre d'une"
	cont "heure."
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
	text "J'ai perdu la"
	line "notice du"
	cont "#MATOS."
	cont "Reviens plus tard."
	prompt

SECTION "WonderTradeQuestionText", ROMX
WonderTradeQuestionText::
	text "Veux-tu faire"
	line "un échange ?"
	done

SECTION "WonderTradePromptText", ROMX
WonderTradePromptText::
	text "Quel #mon veux-tu"
	line "échanger ?"
	prompt

SECTION "WonderTradeCantTradeSpikyEaredPichuText", ROMX
WonderTradeCantTradeSpikyEaredPichuText::
	text "Ce Pichu semble"
	line "avoir voyagé"
	cont "à dans le temps."

	para "Ce serait risqué"
	line "de le transférer,"

	para "donc c'est mieux"
	line "qu'il reste"
	cont "où il se trouve."
	prompt

SECTION "WonderTradeConfirmText", ROMX
WonderTradeConfirmText::
	text "Échanger"
	line ""
	text_ram wStringBuffer1
	text "?"
	done

SECTION "WonderTradeSetupText", ROMX
WonderTradeSetupText::
	text "Recherche d'un"
	line "partenaire d'écha-"
	cont "nge…"
	prompt

SECTION "WonderTradeReadyText", ROMX
WonderTradeReadyText::
	text "Partenaire d'écha-"
	line "nge trouvé!"
	prompt

SECTION "SilphMartIntroText", ROMX
SilphMartIntroText::
	text "Les employés comme"
	line "moi ont accès à"
	cont "des cadeaux !"

	para "T'en veux ?"
	done

SECTION "SilphMartComeAgainText", ROMX
SilphMartComeAgainText::
	text "Reviens! Je"
	line "pourrais me faire"
	cont "du pognon."
	done

SECTION "AdventurerMartIntroText", ROMX
AdventurerMartIntroText::
	text "J'ai ramassé des"
	line "objets rares à"
	cont "l'étranger !"
	done

SECTION "AdventurerMartComeAgainText", ROMX
AdventurerMartComeAgainText::
	text "Repasse quand tu"
	line "veux !"
	done

SECTION "InformalMartIntroText", ROMX
InformalMartIntroText::
	text "Quoi de neuf? T'as"
	line "besoin de quelque"
	cont "chose ?"
	done

SECTION "BazaarMartIntroText", ROMX
BazaarMartIntroText::
	text "Jete un oeil à"
	line "mes marchandises!"
	done

SECTION "AlreadyHaveTMText", ROMX
AlreadyHaveTMText::
	text "Tu as déjà"
	line "cette CT."
	done

SECTION "MartPremierBallText", ROMX
MartPremierBallText::
	text "Tu reçois"
	line "aussi une"
	text_sound SFX_TRANSACTION
	cont "Honor Ball !"
	done

SECTION "ItemCantBeSelectedText", ROMX
ItemCantBeSelectedText::
	text "Cet article ne"
	line "peut pas être "
	cont "choisi."
	prompt

SECTION "AlreadyInThatBallTextData", ROMX
AlreadyInThatBallTextData::
	text "Ton #mon est"
	line "déjà dans cette"
	cont "BALL."
	prompt

SECTION "CantChangeTradedMonBallTextData", ROMX
CantChangeTradedMonBallTextData::
	text "Tu ne peux pas"
	line "changer la BALL"
	cont "d’un PKMN échangé."
	prompt

