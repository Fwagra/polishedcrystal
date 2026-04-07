GoldenrodPokecomCenter1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, JudgeMachineScreenCallback

	def_warp_events
	warp_event  6, 15, GOLDENROD_CITY, 15
	warp_event  7, 15, GOLDENROD_CITY, 15
	warp_event  1,  6, GOLDENROD_POKECOM_CENTER_OFFICE, 2
	warp_event  0, 15, POKECENTER_2F, 1

	def_coord_events

	def_bg_events
	bg_event 11,  7, BGEVENT_READ, PokemonJournalWhitneyScript
	bg_event 24,  5, BGEVENT_RIGHT, JudgeMachineScript
	bg_event 24,  6, BGEVENT_RIGHT, JudgeMachineScript
	bg_event 24,  7, BGEVENT_RIGHT, JudgeMachineScript
	bg_event 24,  8, BGEVENT_RIGHT, JudgeMachineScript
	bg_event 24,  9, BGEVENT_RIGHT, JudgeMachineScript
	bg_event 24, 10, BGEVENT_RIGHT, JudgeMachineScript
	bg_event 25, 11, BGEVENT_UP, JudgeMachineScript
	bg_event 26, 11, BGEVENT_UP, JudgeMachineScript
	bg_event 27, 11, BGEVENT_UP, JudgeMachineScript
	bg_event 28, 11, BGEVENT_UP, JudgeMachineScript
	bg_event 29,  5, BGEVENT_LEFT, JudgeMachineScript
	bg_event 29,  6, BGEVENT_LEFT, JudgeMachineScript
	bg_event 29,  7, BGEVENT_LEFT, JudgeMachineScript
	bg_event 29,  8, BGEVENT_LEFT, JudgeMachineScript
	bg_event 29,  9, BGEVENT_LEFT, JudgeMachineScript
	bg_event 29, 10, BGEVENT_LEFT, JudgeMachineScript
	bg_event 24,  3, BGEVENT_ITEM + RARE_CANDY, EVENT_GOLDENROD_POKECOM_CENTER_1F_HIDDEN_RARE_CANDY

	def_object_events
	object_event 23, 10, SPRITE_ENGINEER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, JudgeMachineEngineerScript, EVENT_JUDGE_MACHINE_ENGINEER
	object_event  7,  7, SPRITE_BOWING_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecenter1FNurseScript, -1
	object_event  0, 12, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldenrodPokecenter1FGameboyKidText, -1
	object_event  3, 11, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldenrodPokecenter1FLassText, -1
	object_event 12, 14, SPRITE_MATRON, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, GoldenrodPokecenter1FPokefanF, -1
	object_event 16,  8, SPRITE_LINK_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_TEAL, OBJECTTYPE_SCRIPT, 0, WonderTradeReceptionistScript, -1
	object_event  8, 13, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldenrodPokecenter1FSuperNerdText, -1
	object_event 27, 13, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldenrodPokecenter1FPokefanFText_Sunflora, -1
	object_event 21,  6, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldenrodPokecenter1FRockerText, -1
	object_event 18, 13, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldenrodPokecenter1FGrampsText, -1
	object_event 18,  9, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, GoldenrodPokecenter1FLassText_PidgeyMail, -1
	object_event  3,  9, SPRITE_ICE_BOULDER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_POKECOM_SIGN, OBJECTTYPE_SCRIPT, 0, InfoSignScript, -1
	object_event 23,  3, SPRITE_ICE_BOULDER, SPRITEMOVEDATA_POKECOM_NEWS, 0, 0, -1, PAL_NPC_POKECOM_SIGN, OBJECTTYPE_COMMAND, end, NULL, -1

	object_const_def
	const GOLDENRODPOKECOMCENTER1F_ENGINEER

JudgeMachineScreenCallback:
	checkflag ENGINE_JUDGE_MACHINE
	iffalsefwd .Done
	changeblock 24, 0, $49
	changeblock 26, 0, $4a
	changeblock 28, 0, $4b
	changeblock 24, 2, $4c
	changeblock 26, 2, $4d
	changeblock 28, 2, $4e
.Done
	endcallback

GoldenrodPokecenter1FNurseScript:
	setevent EVENT_WELCOMING_TO_POKECOM_CENTER
	jumpstd pokecenternurse

GoldenrodPokecenter1FGameboyKidText:
if DEF(_LOCALE_FR)
	text "Le COLISEE sert à"
	line "faire des com-"
	line "bats en Link. Les"
	line "records sont"
	line "affichés sur le"
	line "mur. Perdre, c'est"
	line "la honte!"
	done
else
	text "The Colosseum"
	line "upstairs is for"
	cont "link battles."

	para "Battle records are"
	line "posted on the"

	para "wall, so I can't"
	line "afford to lose."
	done
endc

GoldenrodPokecenter1FLassText:
if DEF(_LOCALE_FR)
	text "Un #MON de niveau"
	line "élevé ne gagnera"
	line "pas à tous les"
	line "coups. Après tout,"
	line "il y a peut-être"
	line "un type"
	line "désavantagé. Je ne"
	line "crois pas qu'il y"
	line "ait un type de"
	line "#MON qui soit le"
	line "plus résistant."
	done
else
	text "A higher level"
	line "#mon doesn't"
	cont "always win."

	para "After all, it may"
	line "have a type dis-"
	cont "advantage."

	para "I don't think"
	line "there is a single"

	para "#mon that is"
	line "the toughest."
	done
endc

GoldenrodPokecenter1FPokefanF:
	checkevent EVENT_GOT_EVIOLITE_IN_GOLDENROD
	iftrue_jumptextfaceplayer GoldenrodPokecenter1FPokefanFGotEvioliteText
	faceplayer
	opentext
	writetext GoldenrodPokecenter1FPokefanFDoYouHaveEonMailText
	waitbutton
	checkitem EON_MAIL
	iffalse_jumpopenedtext GoldenrodPokecenter1FPokefanFTooBadText
	writetext GoldenrodPokecenter1FAskGiveAwayAnEonMailText
	yesorno
	iffalse_jumpopenedtext GoldenrodPokecenter1FPokefanFTooBadText
	takeitem EON_MAIL
	writetext GoldenrodPokecenter1FPlayerGaveAwayTheEonMailText
	waitbutton
	writetext GoldenrodPokecenter1FPokefanFThisIsForYouText
	waitbutton
	verbosegiveitem EVIOLITE
	iffalsefwd .NoRoomForEviolite
	setevent EVENT_GOT_EVIOLITE_IN_GOLDENROD
	jumpthisopenedtext

if DEF(_LOCALE_FR)
	text "Ma fille sera"
	line "ravie!"
	done
else
	text "My daughter will"
	line "be delighted!"
	done
endc

.NoRoomForEviolite:
	giveitem EON_MAIL
	jumpthisopenedtext

if DEF(_LOCALE_FR)
	text "Oh… Une autre"
	line "fois, alors."
	done
else
	text "Oh… Well, another"
	line "time, then."
	done
endc

GoldenrodPokecenter1FPokefanFDoYouHaveEonMailText:
if DEF(_LOCALE_FR)
	text "Ton SAC a l'air"
	line "siiiii lourd! Oh!"
	line "As-tu un truc du"
	line "nom de LETR EVOLI?"
	line "Ma fille en veut"
	line "une. Tu peux m'en"
	line "donner une?"
	done
else
	text "Oh my, your bag"
	line "looks so heavy!"

	para "Oh! Do you happen"
	line "to have something"
	cont "named Eon Mail?"

	para "My daughter is"
	line "after one."

	para "You can part with"
	line "one, can't you?"
	done
endc

GoldenrodPokecenter1FAskGiveAwayAnEonMailText:
if DEF(_LOCALE_FR)
	text "Donner LETR EVOLI?"
	done
else
	text "Give away an Eon"
	line "Mail?"
	done
endc

GoldenrodPokecenter1FPokefanFThisIsForYouText:
if DEF(_LOCALE_FR)
	text "Oh, formidable!"
	line "Merci merci! Voilà"
	line "pour toi!"
	done
else
	text "Oh, that's great!"
	line "Thank you, honey!"

	para "Here, this is for"
	line "you in return!"
	done
endc

GoldenrodPokecenter1FPokefanFTooBadText:
if DEF(_LOCALE_FR)
	text "Oh? Tu n'en as"
	line "pas? Dommage."
	done
else
	text "Oh? You don't have"
	line "one? Too bad."
	done
endc

GoldenrodPokecenter1FPlayerGaveAwayTheEonMailText:
if DEF(_LOCALE_FR)
	text "<PLAYER> donne la"
	line "LETR EVOLI."
	done
else
	text "<PLAYER> gave away"
	line "the Eon Mail."
	done
endc

GoldenrodPokecenter1FPokefanFGotEvioliteText:
if DEF(_LOCALE_FR)
	text "Ma fille sera"
	line "ravie!"
	done
else
	text "Thank you for"
	line "the Eon Mail!"

	para "My daughter will"
	line "be delighted!"
	done
endc

WonderTradeReceptionistScript:
	opentext
	writetext WonderTradeIntroText
	waitbutton
	checkevent EVENT_INTRODUCED_TEALA
	iftruefwd .introduced
	writetext IntroduceTealaText
	waitbutton
	setevent EVENT_INTRODUCED_TEALA
.introduced
	writetext WonderTradeExplanationText
	promptbutton
	special WonderTrade
	iffalsefwd .done
	playmusic MUSIC_POKECOM_CENTER
	writetext WonderTradeCompleteText
	playsound SFX_DEX_FANFARE_80_109
	waitsfx
	ifnotequal 2, .done
	setevent EVENT_GOT_GS_BALL_FROM_POKECOM_CENTER
	setevent EVENT_CAN_GIVE_GS_BALL_TO_KURT
	playmusic MUSIC_SPIKY_EARED_PICHU_HGSS
	writetext WonderTradeForGSBallPichuText
	promptbutton
	verbosegivekeyitem GS_BALL
	writetext WonderTradeForGSBallPichuText2
	waitbutton
.done
	jumpopenedtext WonderTradeGoodbyeText

WonderTradeIntroText:
if DEF(_LOCALE_FR)
	text "Salut! Bienvenue"
	line "au Hub d'Echanges"
	cont "Mystere du"
	cont "#Com Center."
	done
else
	text "Hello! Welcome to"
	line "#Com Center"
	cont "Wonder Trade Hub."
	done
endc

IntroduceTealaText:
if DEF(_LOCALE_FR)
	text "Je suis Teala,"
	line "préposée aux"
	cont "échanges."
	done
else
	text "I'm Teala, your"
	line "trade attendant."
	done
endc

WonderTradeExplanationText:
if DEF(_LOCALE_FR)
	text "Tu peux échanger"
	line "des #mon avec"
	cont "des gens loin."
	done
else
	text "You can trade"
	line "#mon with other"
	cont "people far away."
	done
endc

WonderTradeCompleteText:
if DEF(_LOCALE_FR)
	text "Voici ton nouveau"
	line "partenaire."

	para "Prends-en soin"
	line "avec amour."
	done
else
	text "It's your new"
	line "partner."

	para "Please take care"
	line "of it with love."
	done
endc

WonderTradeGoodbyeText:
if DEF(_LOCALE_FR)
	text "Allez… Au revoir."
	done
else
	text "We hope to see you"
	line "again."
	done
endc

WonderTradeForGSBallPichuText:
if DEF(_LOCALE_FR)
	text "…Mais qu'est-ce"
	line "que c'est?"

	para "La machine d'Echa-"
	line "nge Mystere a un"
	cont "problème?"

	para "On dirait que tu"
	line "as échangé un"

	para "#mon avec"
	line "toi-même."

	para "Mais c'est impos-"
	line "sible… Tu ne peux"

	para "pas être à deux"
	line "endroits à la"
	cont "fois."

	para "Et puis, la ma-"
	line "chine"
	line "communique dans"
	cont "l'espace,"

	para "pas dans le"
	line "temps…"

	para "Et cette Balle"
	line "étrange? Une Balle"

	para "de Noigrume?"
	line "Regarde…"
	done
else
	text "…But what's this?"
	line "Is something wrong"

	para "with the Wonder"
	line "Trade machine?"

	para "It seems like you"
	line "just traded a"

	para "#mon with"
	line "yourself."

	para "But that can't be"
	line "right… You can't"

	para "be in two places"
	line "at once."

	para "Besides, the ma-"
	line "chine communicates"

	para "through space,"
	line "not time…"

	para "And what is that"
	line "strange Ball it's"

	para "holding? Is it an"
	line "Apricorn Ball?"

	para "Here, take a look…"
	done
endc

WonderTradeForGSBallPichuText2:
if DEF(_LOCALE_FR)
	text "C'est peut-être"
	line "bizarre, mais un"
	cont "#mon reste un"
	cont "#mon."

	para "Prends-en soin."
	done
else
	text "It may be unusual,"
	line "but a #mon"
	cont "is a #mon."

	para "Please look after"
	line "it carefully."
	done
endc

InfoSignScript:
	jumpthistext

if DEF(_LOCALE_FR)
	text "#Com Center"
	line "Infos RDC"

	para "Gauche:"
	line "Administration"

	para "Centre:"
	line "Hub Echange"

	para "Droite:"
	line "Juge <PK><MN>"
	done
else
	text "#Com Center"
	line "1F Information"

	para "Left:"
	line "Administration"

	para "Center:"
	line "Wonder Trade Hub"

	para "Right:"
	line "<PK><MN> Judge Machine"
	done
endc

PokemonJournalWhitneyScript:
	setflag ENGINE_READ_WHITNEY_JOURNAL
	jumpthistext

if DEF(_LOCALE_FR)
	text "Journal #mon"

	para "En vedette:"
	line "Whitney!"

	para "On dit que Whitney"
	line "admire Bruno,"
	cont "du Conseil 4."
	done
else
	text "#mon Journal"

	para "Special Feature:"
	line "Leader Whitney!"

	para "Whitney is said to"
	line "admire Bruno of"
	cont "the Elite Four."
	done
endc

JudgeMachineScript:
	opentext
	special JudgeMachine
	waitendtext

GoldenrodPokecenter1FSuperNerdText:
if DEF(_LOCALE_FR)
	text "Wouah, ce CENTRE"
	line "#MON est énorme."

	para "Ils viennent de"
	line "le construire."

	para "Et ils ont même"
	line "installé plein de"
	cont "machines."
	done
else
	text "Whoa, this #mon"
	line "Center is huge."

	para "They just built"
	line "this place. They"

	para "installed lots of"
	line "new machines too."
	done
endc

GoldenrodPokecenter1FLassText_PidgeyMail:
if DEF(_LOCALE_FR)
	text "J'ai eu une idée"
	line "pour le Hub"
	cont "d'Echanges!"

	para "Je fais porter une"
	line "LETTRE à un"
	cont "Roucool…"

	para "puis je l'échange"
	line "contre un autre!"

	para "Si tout le monde"
	line "faisait ça,"

	para "on échangerait des"
	line "LETTRES avec plein"
	cont "de gens!"

	para "Je l'appelle"
	line "LETTRE ROUCOOL!"

	para "Si ça marche, je"
	line "me ferai plein"
	cont "d'amis!"
	done
else
	text "I thought up a fun"
	line "new thing for the"
	cont "Wonder Trade Hub!"

	para "I make a Pidgey"
	line "hold Mail, then"

	para "put it up for"
	line "trade for another"
	cont "one!"

	para "If everyone did"
	line "that, Mail could"

	para "be traded with all"
	line "sorts of people!"

	para "I call it Pidgey"
	line "Mail!"

	para "If it becomes"
	line "popular, I might"

	para "make lots of new"
	line "friends!"
	done
endc

JudgeMachineEngineerScript:
	checkevent EVENT_BRED_AN_EGG
	iffalsefwd .NotBredYet
	showtextfaceplayer JudgeMachineEngineerFinishedText
	readvar VAR_FACING
	ifnotequal RIGHT, .GoLeft
	applyonemovement GOLDENRODPOKECOMCENTER1F_ENGINEER, step_down
	applyonemovement GOLDENRODPOKECOMCENTER1F_ENGINEER, step_left
.GoLeft
	applymovement GOLDENRODPOKECOMCENTER1F_ENGINEER, JudgeMachineEngineerLeavesMovement
	disappear GOLDENRODPOKECOMCENTER1F_ENGINEER
	setflag ENGINE_JUDGE_MACHINE
	changeblock 24, 0, $49
	changeblock 26, 0, $4a
	changeblock 28, 0, $4b
	changeblock 24, 2, $4c
	changeblock 26, 2, $4d
	changeblock 28, 2, $4e
	end

.NotBredYet:
	showtextfaceplayer JudgeMachineEngineerWorkingText
	turnobject LAST_TALKED, RIGHT
	end

JudgeMachineEngineerWorkingText:
if DEF(_LOCALE_FR)
	text "Le Juge #mon…"

	para "C'est mon rêve"
	line "depuis longtemps."

	para "Avec les fonds du"
	line "#Com Center,"
	cont "c'est possible,"

	para "même si ça prend"
	line "un ordinateur"
	cont "géant!"

	para "Ce sera super pour"
	line "les éleveurs qui"
	cont "font beaucoup"
	cont "d'Oeufs!"

	para "J'ai presque fini…"
	done
else
	text "The #mon"
	line "Judge Machine…"

	para "It's been my dream"
	line "for a long time."

	para "And with the #-"
	line "Com Center funding"
	cont "my work, it can"
	cont "become a reality,"

	para "even if it takes"
	line "a computer the"
	cont "size of a room!"

	para "Think of how use-"
	line "ful it will be"
	cont "for Breeders who"
	cont "hatch many Eggs!"

	para "I'm almost done…"
	done
endc

JudgeMachineEngineerFinishedText:
if DEF(_LOCALE_FR)
	text "Le Juge #mon…"

	para "Il est enfin fini!"
	line "Mon rêve devient"
	cont "réalité!"

	para "C'est quoi?"
	line "Une machine qui"

	para "juge les stats de"
	line "n'importe quel"
	cont "#mon!"

	para "Elle utilise une"
	line "IA ultra moderne"

	para "pour évaluer le"
	line "potentiel inné,"
	cont "ainsi que"

	para "les efforts four-"
	line "nis pour être plus"
	cont "fort."

	para "C'est parfait pour"
	line "mesurer la"
	cont "puissance!"

	para "Vas-y, essaie-la."
	line "C'est sans danger."

	para "Moi, je pars en"
	line "vacances!"
	done
else
	text "The #mon"
	line "Judge Machine…"

	para "It's finally done!"
	line "My dream has be-"
	cont "come reality!"

	para "What is it?"
	line "It's a machine for"

	para "judging the stats"
	line "of any #mon!"

	para "It uses the latest"
	line "AI technology to"

	para "evaluate a #-"
	line "mon's inherent"
	cont "potential, as well"

	para "as the effort it's"
	line "put into becoming"
	cont "stronger."

	para "It's the perfect"
	line "way to measure a"
	cont "#mon's power!"

	para "Go ahead and try"
	line "using it. It's"
	cont "perfectly safe."

	para "As for me, I'm ta-"
	line "king a vacation!"
	done
endc

JudgeMachineEngineerLeavesMovement:
	step_left
	step_left
	step_left
	step_left
	step_left
	step_end

GoldenrodPokecenter1FPokefanFText_Sunflora:
if DEF(_LOCALE_FR)
	text "Une fille que je"
	line "ne connais pas m'a"
	cont "envoyé son Heli-"
	cont "atronc."

	para "Echange pour un"
	line "#mon voulu."
	done
else
	text "Some girl I don't"
	line "know sent me her"
	cont "Sunflora."

	para "You should trade"
	line "for a #mon that"
	cont "you want."
	done
endc

GoldenrodPokecenter1FRockerText:
if DEF(_LOCALE_FR)
	text "On ne peut pas"
	line "encore utiliser"
	cont "toutes les"
	cont "machines."

	para "Mais c'est cool de"
	line "venir ici avant"
	cont "tout le monde."
	done
else
	text "The machines here"
	line "can't all be used"
	cont "yet."

	para "Still, it's nice"
	line "coming to a trendy"

	para "place before other"
	line "people."
	done
endc

GoldenrodPokecenter1FGrampsText:
if DEF(_LOCALE_FR)
	text "Rien que de voir"
	line "toutes ces nou-"
	cont "veautés ici…"

	para "Ca me rajeunit!"
	done
else
	text "Just seeing all"
	line "these new things"

	para "here makes me feel"
	line "younger!"
	done
endc
