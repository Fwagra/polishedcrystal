CeladonGameCorner_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, CeladonGameCornerStairsScript

	def_warp_events
	warp_event 14, 13, CELADON_CITY, 6
	warp_event 15, 13, CELADON_CITY, 6
	warp_event 17,  0, ROCKET_HIDEOUT_B1F, 2

	def_coord_events

	def_bg_events
	bg_event  1,  6, BGEVENT_READ, MapCeladonGameCornerSignpost11Script
	bg_event  1,  7, BGEVENT_READ, MapCeladonGameCornerSignpost11Script
	bg_event  1,  8, BGEVENT_READ, MapCeladonGameCornerSignpost11Script
	bg_event  1,  9, BGEVENT_READ, MapCeladonGameCornerSignpost11Script
	bg_event  1, 10, BGEVENT_READ, MapCeladonGameCornerSignpost11Script
	bg_event  1, 11, BGEVENT_LEFT, MapCeladonGameCornerSignpost11Script
	bg_event  6,  6, BGEVENT_READ, MapCeladonGameCornerSignpost11Script
	bg_event  6,  7, BGEVENT_READ, MapCeladonGameCornerSignpost11Script
	bg_event  6,  8, BGEVENT_READ, MapCeladonGameCornerSignpost11Script
	bg_event  6,  9, BGEVENT_READ, MapCeladonGameCornerSignpost9Script
	bg_event  6, 10, BGEVENT_READ, MapCeladonGameCornerSignpost11Script
	bg_event  6, 11, BGEVENT_RIGHT, MapCeladonGameCornerSignpost11Script
	bg_event  7,  6, BGEVENT_READ, MapCeladonGameCornerSignpost35Script
	bg_event  7,  7, BGEVENT_READ, MapCeladonGameCornerSignpost35Script
	bg_event  7,  8, BGEVENT_READ, MapCeladonGameCornerSignpost35Script
	bg_event  7,  9, BGEVENT_READ, MapCeladonGameCornerSignpost35Script
	bg_event  7, 10, BGEVENT_READ, MapCeladonGameCornerSignpost16Script
	bg_event  7, 11, BGEVENT_LEFT, MapCeladonGameCornerSignpost35Script
	bg_event 12,  6, BGEVENT_READ, MapCeladonGameCornerSignpost35Script
	bg_event 12,  7, BGEVENT_READ, MapCeladonGameCornerSignpost35Script
	bg_event 12,  8, BGEVENT_READ, MapCeladonGameCornerSignpost35Script
	bg_event 12,  9, BGEVENT_READ, MapCeladonGameCornerSignpost35Script
	bg_event 12, 10, BGEVENT_READ, MapCeladonGameCornerSignpost35Script
	bg_event 12, 11, BGEVENT_RIGHT, MapCeladonGameCornerSignpost35Script
	bg_event 13,  6, BGEVENT_READ, MapCeladonGameCornerSignpost35Script
	bg_event 13,  7, BGEVENT_READ, MapCeladonGameCornerSignpost35Script
	bg_event 13,  8, BGEVENT_READ, MapCeladonGameCornerSignpost35Script
	bg_event 13,  9, BGEVENT_READ, MapCeladonGameCornerSignpost35Script
	bg_event 13, 10, BGEVENT_READ, MapCeladonGameCornerSignpost35Script
	bg_event 13, 11, BGEVENT_LEFT, MapCeladonGameCornerSignpost35Script
	bg_event 18,  6, BGEVENT_READ, MapCeladonGameCornerSignpost35Script
	bg_event 18,  7, BGEVENT_READ, MapCeladonGameCornerSignpost35Script
	bg_event 18,  8, BGEVENT_JUMPTEXT, CeladonGameCornerLighterText
	bg_event 18,  9, BGEVENT_READ, MapCeladonGameCornerSignpost35Script
	bg_event 18, 10, BGEVENT_READ, MapCeladonGameCornerSignpost35Script
	bg_event 18, 11, BGEVENT_RIGHT, MapCeladonGameCornerSignpost35Script
	bg_event  9,  0, BGEVENT_READ, CeladonGameCornerPosterScript

	def_object_events
	object_event  5,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumpstd, gamecornercoinvendor, -1
	object_event  3,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonGameCornerReceptionistText, -1
	object_event 14, 10, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerPokefanMScript, -1
	object_event 17,  7, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerTeacherScript, -1
	object_event 11,  7, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerFishingGuruScript, -1
	object_event  8, 10, SPRITE_FAT_GUY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, (1 << DAY) | (1 << NITE), PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerFisherScript, -1
	object_event 11,  3, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonGymGuyText, -1
	object_event  2,  8, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonGameCornerGrampsScript, -1
	object_event  9,  1, SPRITE_RICH_BOY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_TRAINER, 1, CeladonGameCornerRichBoyTobin, EVENT_CELADON_GAME_CORNER_RICH_BOY_TOBIN

	object_const_def
	const CELADONGAMECORNER_CLERK
	const CELADONGAMECORNER_RECEPTIONIST
	const CELADONGAMECORNER_POKEFAN_M
	const CELADONGAMECORNER_POKEFAN_F
	const CELADONGAMECORNER_FISHING_GURU
	const CELADONGAMECORNER_FAT_GUY
	const CELADONGAMECORNER_GYM_GUY
	const CELADONGAMECORNER_GRAMPS
	const CELADONGAMECORNER_TOBIN

CeladonGameCornerStairsScript:
	checkevent EVENT_PUSHED_GAME_CORNER_SWITCH
	iftruefwd .StairsOpen
	changeblock 16, 0, $03
.StairsOpen
	endcallback

CeladonGameCornerPokefanMScript:
	showtextfaceplayer CeladonGameCornerPokefanMText
	turnobject LAST_TALKED, LEFT
	end

CeladonGameCornerTeacherScript:
	showtextfaceplayer CeladonGameCornerTeacherText
	turnobject LAST_TALKED, RIGHT
	end

CeladonGameCornerFishingGuruScript:
	showtextfaceplayer CeladonGameCornerFishingGuruText
	turnobject LAST_TALKED, RIGHT
	end

CeladonGameCornerFisherScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_COINS_FROM_GAMBLER_AT_CELADON
	iftruefwd .FisherOffer
	writetext CeladonGameCornerFisherText1
	promptbutton
	checkkeyitem COIN_CASE
	iffalsefwd .NoCoinCase
	checkcoins MAX_COINS - 18
	ifequalfwd HAVE_MORE, .FullCoinCase
	writetext CeladonGameCornerReceived18CoinsText ; TODO load coins icon
	playsound SFX_ITEM
	waitsfx
	givecoins 18
	setevent EVENT_GOT_COINS_FROM_GAMBLER_AT_CELADON
.FisherOffer:
	writetext FisherOfferText
	yesorno
	iffalsefwd .GotCoins
	checkcoins 50
	ifequalfwd HAVE_LESS, .FisherNotEnough
	takecoins 50
	playsound SFX_TRANSACTION
	scall MapCeladonGameCornerSignpost16Script
	opentext
.GotCoins:
	writetext CeladonGameCornerFisherText2
	sjumpfwd .FisherEnd
.FisherNotEnough:
	writetext FisherNotEnoughText
.FisherEnd:
	waitbutton
	closetext
	turnobject LAST_TALKED, LEFT
	end

.NoCoinCase:
	writetext CeladonGameCornerFisherNoCoinCaseText
	waitbutton
	closetext
	turnobject LAST_TALKED, LEFT
	end

.FullCoinCase:
	writetext CeladonGameCornerFisherFullCoinCaseText
	waitbutton
	closetext
	turnobject LAST_TALKED, LEFT
	end

CeladonGameCornerGrampsScript:
	showtextfaceplayer CeladonGameCornerGrampsText
	turnobject LAST_TALKED, LEFT
	end

MapCeladonGameCornerSignpost35Script:
	random $6
	ifequalfwd $0, MapCeladonGameCornerSignpost16Script
	reanchormap
	setval $0
	special Special_SlotMachine
	endtext

MapCeladonGameCornerSignpost16Script:
	reanchormap
	setval $1
	special Special_SlotMachine
	endtext

MapCeladonGameCornerSignpost11Script:
	reanchormap
	special Special_CardFlip
	endtext

MapCeladonGameCornerSignpost9Script:
	opentext
	writetext CeladonGameCornerSodaCanText
	waitbutton
	special Special_CardFlip
	endtext

CeladonGameCornerRichBoyTobin:
	trainer RICH_BOY, TOBIN, EVENT_BEAT_RICH_BOY_TOBIN, .SeenText, .BeatenText, 0, .AfterScript

.Script:
	checkevent EVENT_BEAT_RICH_BOY_TOBIN
	iftruefwd .AfterScript
	jumpthistextfaceplayer

.SeenText:
if DEF(_LOCALE_FR)
	text "Tu fouilles ici"
	line "pour quoi faire?"

	para "Touche pas a la"
	line "Team Valor!"
	done
else
	text "What're you doing"
	line "snooping around"
	cont "here?"

	para "You better not be"
	line "messing with Team"
	cont "Valor!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Je ne l'ai pas"
	line "vu venir…"
	done
else
	text "I didn't see that"
	line "coming…"
	done
endc

.AfterScript
	showtext .AfterText
	readvar VAR_FACING
	ifequalfwd RIGHT, .player_facing_right
	ifequalfwd LEFT, .player_facing_left
; .player_facing_up
	applymovement CELADONGAMECORNER_TOBIN, .LeaveMovementPlayerUp
	sjumpfwd .done
.player_facing_left
	applymovement CELADONGAMECORNER_TOBIN, .LeaveMovementPlayerRight
	sjumpfwd .done
.player_facing_right
	applymovement CELADONGAMECORNER_TOBIN, .LeaveMovementPlayerLeft
.done
	playsound SFX_EXIT_BUILDING
	disappear CELADONGAMECORNER_TOBIN
	end

.AfterText
if DEF(_LOCALE_FR)
	text "Bon! Il n'y a"
	line "rien ici de toute"

	para "facon!"

	para "L'affiche? Ha!"
	line "C'est de la deco!"
	done
else
	text "Fine! There's"
	line "nothing here"
	cont "anyway!"

	para "The poster? Ha!"
	line "It's just decor!"
	done
endc

.LeaveMovementPlayerUp
	step_right
.LeaveMovementPlayerLeft
rept 5
	step_right
endr
	step_end

.LeaveMovementPlayerRight
	step_down
	step_right
	step_right
	step_up
rept 5
	step_right
endr
	step_end


CeladonGameCornerReceptionistText:
if DEF(_LOCALE_FR)
	text "Bienvenue!"

	para "Échange tes jetons"
	line "contre des prix"

	para "super a la"
	line "boutique voisine."
	done
else
	text "Welcome!"

	para "You may exchange"
	line "your coins for"

	para "fabulous prizes"
	line "next door."
	done
endc

CeladonGameCornerPokefanMText:
if DEF(_LOCALE_FR)
	text "Les machines a"
	line "sous sont toutes"

	para "tout dernier cri."
	done
else
	text "The slot machines"
	line "are all state of"
	cont "the art."
	done
endc

CeladonGameCornerTeacherText:
if DEF(_LOCALE_FR)
	text "C'est celle-la"
	line "que je veux."

	para "Elle m'a tout pris"
	line "hier, alors"

	para "aujourd'hui elle"
	line "doit payer!"
	done
else
	text "It's this machine"
	line "I want."

	para "It cleaned me out"
	line "yesterday, so it"

	para "should pay out"
	line "today."
	done
endc

CeladonGameCornerFishingGuruText:
if DEF(_LOCALE_FR)
	text "Je crois que ce"
	line "bandit manchot"
	cont "va payer…"

	para "Les cotes varient"
	line "entre machines."
	done
else
	text "I think this slot"
	line "machine will pay"
	cont "out…"

	para "The odds vary"
	line "among machines."
	done
endc

CeladonGameCornerFisherText1:
if DEF(_LOCALE_FR)
	text "Gahaha!"

	para "Les jetons"
	line "jaillissent!"

	para "Hein? Tu veux"
	line "jouer, gamin?"

	para "Je partage ma"
	line "chance avec toi!"
	done
else
	text "Gahahaha!"

	para "The coins just"
	line "keep popping out!"

	para "Hm? What, kid? You"
	line "want to play?"

	para "I'll share my luck"
	line "with you!"
	done
endc

CeladonGameCornerFisherText2:
if DEF(_LOCALE_FR)
	text "Gahaha!"

	para "Ca fait du bien"
	line "d'aider les gens!"
	done
else
	text "Gahahaha!"

	para "It makes me feel"
	line "good to do nice"

	para "things for other"
	line "people!"
	done
endc

CeladonGameCornerFisherNoCoinCaseText:
if DEF(_LOCALE_FR)
	text "Hein, t'as pas de"
	line "Boite Jetons."

	para "Comment je te"
	line "donne des jetons,"
	cont "gamin?"
	done
else
	text "Hey, you don't"
	line "have a Coin Case."

	para "How am I supposed"
	line "to give you any"
	cont "coins, kid?"
	done
endc

CeladonGameCornerFisherFullCoinCaseText:
if DEF(_LOCALE_FR)
	text "Ta Boite Jetons"
	line "est pleine, gamin."

	para "Tu dois etre en"
	line "pleine serie!"
	done
else
	text "Hey, your Coin"
	line "Case is full, kid."

	para "You must be riding"
	line "a winning streak"
	cont "too."
	done
endc

CeladonGameCornerReceived18CoinsText:
if DEF(_LOCALE_FR)
	text "<PLAYER> recoit"
	line "18 jetons!"
	done
else
	text "<PLAYER> received"
	line "18 Coins!"
	done
endc

FisherOfferText:
if DEF(_LOCALE_FR)
	text "Hein? Tu veux"
	line "encore jouer?"

	para "Je sais! Pour 50"
	line "jetons, tu joues."

	para "Ca te va?"
	done
else
	text "Hm? What, kid? You"
	line "still want to"
	cont "play?"

	para "I know! I'll let"
	line "you play for 50"
	cont "coins."

	para "How about it?"
	done
endc

FisherNotEnoughText:
if DEF(_LOCALE_FR)
	text "Ta Boite Jetons"
	line "est presque vide."

	para "Ta chance doit"
	line "s'essouffler."
	done
else
	text "Hey, your Coin"
	line "Case is almost"
	cont "empty, kid."

	para "Your luck must"
	line "be running dry."
	done
endc

CeladonGymGuyText:
if DEF(_LOCALE_FR)
	text "Hey! Futur"
	line "Champion!"

	para "Tu joues aux"
	line "machines aussi?"

	para "Je veux assez de"
	line "jetons pour un"

	para "prix #mon."

	para "Mais j'en ai pas"
	line "assez encore…"
	done
else
	text "Hey! Champ in"
	line "making!"

	para "Are you playing"
	line "the slots too?"

	para "I'm trying to get"
	line "enough coins for a"
	cont "prize #mon."

	para "But I don't have"
	line "enough coins yet…"
	done
endc

CeladonGameCornerGrampsText:
if DEF(_LOCALE_FR)
	text "Hmm… Les cotes"
	line "sont meilleures"

	para "pour la lignee"
	line "Pikachu, mais…"

	para "Que choisir?"
	done
else
	text "Hmmm… The odds are"
	line "surely better for"

	para "Pikachu's line,"
	line "but… What to do?"
	done
endc

CeladonGameCornerPosterScript:
	checkevent EVENT_PUSHED_GAME_CORNER_SWITCH
	iftruefwd .AlreadyPushed
	showtext .PushSwitchText
	playsound SFX_PUSH_BUTTON
	playsound SFX_ENTER_DOOR
	setevent EVENT_PUSHED_GAME_CORNER_SWITCH
	changeblock 16, 0, $4d
	end

.AlreadyPushed
	showtext .AlreadyPushedText
	end

.AlreadyPushedText
if DEF(_LOCALE_FR)
	text "L'interrupteur a"
	line "deja ete active."
	done
else
	text "The switch has"
	line "already been"
	cont "pushed."
	done
endc

.PushSwitchText
if DEF(_LOCALE_FR)
	text "Hey!"

	para "Un bouton derriere"
	line "l'affiche!?"

	para "On appuie!"
	done
else
	text "Hey!"

	para "A switch behind"
	line "the poster!?"
	cont "Let's push it!"
	done
endc

CeladonGameCornerLighterText:
if DEF(_LOCALE_FR)
	text "Il y a un"
	line "briquet ici."
	done
else
	text "There's a lighter"
	line "here."
	done
endc

CeladonGameCornerSodaCanText:
if DEF(_LOCALE_FR)
	text "Une canette de"
	line "soda…"

	para "Quelqu'un doit"
	line "revenir…"

	para "Hein? Elle est"
	line "vide!"
	done
else
	text "A can of soda…"

	para "Someone must be"
	line "coming back…"

	para "Huh? It's empty!"
	done
endc
