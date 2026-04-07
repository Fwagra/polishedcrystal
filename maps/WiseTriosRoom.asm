WiseTriosRoom_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, WiseTriosRoomCallback

	def_warp_events
	warp_event  7,  4, BELLCHIME_TRAIL, 1
	warp_event  7,  5, BELLCHIME_TRAIL, 2
	warp_event  1,  4, ECRUTEAK_HOUSE, 5

	def_coord_events
	coord_event  7,  4, 0, WiseTriosRoom_CannotEnterTinTowerScript

	def_bg_events

	def_object_events
	object_event  6,  2, SPRITE_ELDER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, WiseTriosRoomSage1Text, EVENT_WISE_TRIOS_ROOM_WISE_TRIO_1
	object_event  6,  7, SPRITE_ELDER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, WiseTriosRoomSage2Text, EVENT_WISE_TRIOS_ROOM_WISE_TRIO_1
	object_event  7,  5, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, WiseTriosRoomSage3Text, EVENT_WISE_TRIOS_ROOM_WISE_TRIO_1
	object_event  4,  2, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerElderGaku, EVENT_WISE_TRIOS_ROOM_WISE_TRIO_2
	object_event  4,  6, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerElderMasa, EVENT_WISE_TRIOS_ROOM_WISE_TRIO_2
	object_event  6,  4, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerElderKoji, EVENT_WISE_TRIOS_ROOM_WISE_TRIO_2

	object_const_def
	const WISETRIOSROOM_ELDER1
	const WISETRIOSROOM_ELDER2
	const WISETRIOSROOM_ELDER3
	const WISETRIOSROOM_ELDER4
	const WISETRIOSROOM_ELDER5
	const WISETRIOSROOM_ELDER6

WiseTriosRoomCallback:
	checkevent EVENT_FOUGHT_SUICUNE
	iftruefwd .NoWiseTrio
	checkevent EVENT_KOJI_ALLOWS_YOU_PASSAGE_TO_TIN_TOWER
	iftruefwd .WiseTrio2
	checkkeyitem CLEAR_BELL
	iftruefwd .WiseTrio2
	clearevent EVENT_WISE_TRIOS_ROOM_WISE_TRIO_1
	setevent EVENT_WISE_TRIOS_ROOM_WISE_TRIO_2
	endcallback

.WiseTrio2:
	setevent EVENT_WISE_TRIOS_ROOM_WISE_TRIO_1
	clearevent EVENT_WISE_TRIOS_ROOM_WISE_TRIO_2
	endcallback

.NoWiseTrio:
	setevent EVENT_WISE_TRIOS_ROOM_WISE_TRIO_1
	setevent EVENT_WISE_TRIOS_ROOM_WISE_TRIO_2
	endcallback

WiseTriosRoom_CannotEnterTinTowerScript:
	turnobject WISETRIOSROOM_ELDER3, UP
	turnobject PLAYER, DOWN
	showemote EMOTE_SHOCK, WISETRIOSROOM_ELDER3, 20
	follow PLAYER, WISETRIOSROOM_ELDER3
	applymovement PLAYER, WiseTriosRoomSageBlocksPlayerMovement
	stopfollow
	turnobject PLAYER, RIGHT
	showtext WiseTriosRoomSage3BlocksExitText
	applymovement WISETRIOSROOM_ELDER3, WiseTriosRoomSageReturnsMovement
	turnobject WISETRIOSROOM_ELDER3, LEFT
	end

TrainerElderGaku:
	trainer ELDER, GAKU, EVENT_BEAT_ELDER_GAKU, ElderGakuSeenText, ElderGakuBeatenText, 0, ElderGakuScript

ElderGakuScript:
	jumptext SageGakuAfterBattleText

TrainerElderMasa:
	trainer ELDER, MASA, EVENT_BEAT_ELDER_MASA, ElderMasaSeenText, ElderMasaBeatenText, 0, ElderMasaScript

ElderMasaScript:
	jumptext SageMasaAfterBattleText

TrainerElderKoji:
	trainer ELDER, KOJI, EVENT_BEAT_ELDER_KOJI, ElderKojiSeenText, ElderKojiBeatenText, 0, ElderKojiScript

ElderKojiScript:
	checkevent EVENT_KOJI_ALLOWS_YOU_PASSAGE_TO_TIN_TOWER
	iftrue_jumptext SageKojiAfterBattleFinalText
	pause 10
	showemote EMOTE_SHOCK, WISETRIOSROOM_ELDER6, 20
	opentext
	writetext SageKojiAfterBattleQuestionText
	promptbutton
	writetext SageKojiAfterBattleSpeechText
	waitbutton
	closetext
	applymovement WISETRIOSROOM_ELDER6, WiseTriosRoomSageAllowsPassageMovement
	turnobject WISETRIOSROOM_ELDER6, UP
	setevent EVENT_KOJI_ALLOWS_YOU_PASSAGE_TO_TIN_TOWER
	setscene $1
	end

WiseTriosRoomSageBlocksPlayerMovement:
	step_left
	step_left
	step_end

WiseTriosRoomSageReturnsMovement:
	step_right
	step_down
	step_end

WiseTriosRoomSageAllowsPassageMovement:
	step_right
	step_down
	step_end

WiseTriosRoomSage1Text:
if DEF(_LOCALE_FR)
	text "Dingue… SUICUNE,"
	line "ENTEI et RAIKOU se"
	line "sont réveillés… La"
	line "légende est- elle"
	line "vraie?"
	done
else
	text "Astounding…"

	para "Suicune, Entei and"
	line "Raikou have arisen"
	cont "from their sleep…"

	para "Is the legend"
	line "coming true?"
	done
endc

WiseTriosRoomSage2Text:
if DEF(_LOCALE_FR)
	text "On s'entraîne à la"
	line "TOUR CENDREE mais"
	line "on n'a jamais vu"
	line "de trou s'ouvrir"
	line "jusqu'à présent."
	line "Quelqu'un doit en"
	line "être le"
	line "responsable."
	done
else
	text "We train at the"
	line "Burned Tower, but"

	para "we've never heard"
	line "of a hole opening"

	para "up there before."
	line "It must have been"

	para "deliberately made"
	line "by someone."
	done
endc

WiseTriosRoomSage3BlocksExitText:
if DEF(_LOCALE_FR)
	text "La TOUR FERRAILLE"
	line "est accessible aux"
	line "porteurs du BADGE"
	line "de ROSALIA."
	line "Toutefois, depuis"
	line "le réveil de"
	line "SUICUNE, RAIKOU et"
	line "d'ENTEI, je ne"
	line "peux pas vous"
	line "laisser entrer!"
	done
else
	text "Bell Tower may be"
	line "entered by those"

	para "bearing Ecruteak's"
	line "Gym Badge."

	para "However, now that"
	line "Suicune, Raikou"

	para "and Entei have"
	line "arisen, I ask you"

	para "to refrain from"
	line "entering!"
	done
endc

WiseTriosRoomSage3Text:
if DEF(_LOCALE_FR)
	text "Nous, le TRIO des"
	line "SAGES, sommes les"
	line "gardiens des #-"
	line "MON légendaires."
	done
else
	text "We, the Wise Trio,"
	line "are the protectors"

	para "of the legendary"
	line "#mon."
	done
endc

ElderGakuSeenText:
if DEF(_LOCALE_FR)
	text "La légende dit que"
	line "la venue d'un"
	line "dresseur pouvant"
	line "toucher l'âme des"
	line "#MON, un #MON"
	line "viendra mettre ce"
	line "dresseur à"
	line "l'épreuve dans la"
	line "TOUR FERRAILLE. La"
	line "légende s'est"
	line "réalisée! Le #MON"
	line "légendaire SUICUNE"
	line "est arrivé! Nous,"
	line "le TRIO des SAGES,"
	line "te mettons au défi"
	line "d'entrer!"
	done
else
	text "Legend has it that"
	line "upon the emergence"

	para "of a trainer who"
	line "has the ability to"

	para "touch the souls of"
	line "#mon, a #mon"

	para "will come forth to"
	line "put that trainer"

	para "to test at the"
	line "Bell Tower."

	para "The legend has"
	line "come true!"

	para "The legendary"
	line "#mon Suicune"
	cont "has arrived!"

	para "We, the Wise Trio,"
	line "shall test your"

	para "worthiness to go"
	line "inside!"
	done
endc

ElderGakuBeatenText:
if DEF(_LOCALE_FR)
	text "Trop de puissance!"
	done
else
	text "Stronger than we"
	line "thought? Perhaps…"
	done
endc

SageGakuAfterBattleText:
if DEF(_LOCALE_FR)
	text "Tu prétends donc"
	line "avoir vu SUICUNE,"
	line "ENTEI et RAIKOU"
	line "endormis?"
	line "Incroyable! La"
	line "légende dit bien"
	line "qu'on ne peut pas"
	line "les voir dormir…"
	done
else
	text "Ah, so it is you"
	line "who claim to have"

	para "seen Suicune,"
	line "Entei and Raikou"
	cont "while they slept?"

	para "Unbelievable!"

	para "Legend has it that"
	line "they can't be seen"
	cont "while they sleep…"
	done
endc

ElderMasaSeenText:
if DEF(_LOCALE_FR)
	text "Doit-on te faire"
	line "confiance? Je dois"
	line "te mettre à"
	line "l'épreuve."
	done
else
	text "Can you be trusted"
	line "with the truth?"

	para "I must ascertain"
	line "your worthiness."
	done
endc

ElderMasaBeatenText:
if DEF(_LOCALE_FR)
	text "…Je dirai la"
	line "vérité…"
	done
else
	text "…I will tell you"
	line "the truth…"
	done
endc

SageMasaAfterBattleText:
if DEF(_LOCALE_FR)
	text "Il y a longtemps,"
	line "il y avait deux"
	line "tours ici. La TOUR"
	line "de CUIVRE, qui"
	line "pouvait éveil- ler"
	line "les #MON, et la"
	line "TOUR FER- RAILLE,"
	line "où les #MON se"
	line "reposaient. La vue"
	line "depuis le sommet"
	line "des TOURS devait"
	line "être magnifique."
	line "En ce temps-là, un"
	line "immense #MON"
	line "argenté avait fait"
	line "son nid en haut de"
	line "la TOUR de CUIVRE."
	line "Toutefois… Il y a"
	line "150 ans, un éclair"
	line "frappa l'une des"
	line "TOURS. Elle prit"
	line "feu et brûla"
	line "pendant trois"
	line "jours. Et puis une"
	line "pluie violente eut"
	line "raison du brasier."
	line "Voici comment la"
	line "TOUR CENDREE est"
	line "née."
	done
else
	text "In the past, there"
	line "were two nine-tier"
	cont "towers here."

if DEF(FAITHFUL)
	para "The Brass Tower,"
else
	para "The Gong Tower,"
endc
	line "which was said to"

	para "waken #mon, and"
	line "the Bell Tower,"

	para "where #mon were"
	line "said to rest."

	para "The view from the"
	line "tops of the towers"

	para "must have been"
	line "magnificent."

	para "At the time, an"
	line "immense, silver-"

	para "colored #mon"
	line "was said to make"

	para "its roost atop the"
if DEF(FAITHFUL)
	line "Brass Tower."
else
	line "Gong Tower."
endc

	para "However…"

	para "About 150 years"
	line "ago, a lightning"

	para "bolt struck one of"
	line "the towers."

	para "It was engulfed in"
	line "flames that raged"
	cont "for three days."

	para "A sudden downpour"
	line "finally put out"
	cont "the blaze."

	para "And that is how"
	line "the Burned Tower"
	cont "came to be."
	done
endc

ElderKojiSeenText:
if DEF(_LOCALE_FR)
	text "Montre-moi ta"
	line "force!"
	done
else
	text "Let me see your"
	line "power!"
	done
endc

ElderKojiBeatenText:
if DEF(_LOCALE_FR)
	text "Trop de puissance!"
	line "Pourquoi?"
	done
else
	text "Too strong!"
	line "Why?"
	done
endc

SageKojiAfterBattleQuestionText:
if DEF(_LOCALE_FR)
	text "Toi… Es-tu là pour"
	line "les #MON"
	line "légendaires?"
	done
else
	text "You… Are you the"
	line "trainer who is"

	para "awaited by the"
	line "legendary #mon?"
	done
endc

SageKojiAfterBattleSpeechText:
if DEF(_LOCALE_FR)
	text "Je vois… Nous, le"
	line "TRIO des SAGES,"
	line "avons le devoir de"
	line "protéger les #MON"
	line "légen- daires."
	line "Nous ne laissons"
	line "passer que ceux au"
	line "coeur pur. Entre"
	line "et découvre la"
	line "TOUR FERRAILLE."
	line "SUICUNE te mettra"
	line "à l'épreuve."
	done
else
	text "I see…"

	para "We, the Wise Trio,"
	line "have been given"

	para "the responsibility"
	line "of protecting the"

	para "legendary #mon."
	line "We are to allow"

	para "passage only to"
	line "those people who"

	para "possess the power"
	line "and soul of truth."

	para "Please, do go on"
	line "and enter the"
	cont "Bell Tower ahead."

	para "Suicune will put"
	line "you to the test."
	done
endc

SageKojiAfterBattleFinalText:
if DEF(_LOCALE_FR)
	text "Va. SUICUNE te"
	line "mettra à"
	line "l'épreuve."
	done
else
	text "Please, do go on."

	para "Suicune will put"
	line "you to the test."
	done
endc
