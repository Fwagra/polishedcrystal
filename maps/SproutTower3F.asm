SproutTower3F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  8, 14, SPROUT_TOWER_2F, 4

	def_coord_events
	coord_event  9,  9, 0, SproutTower3FRivalScene

	def_bg_events
	bg_event  6,  1, BGEVENT_JUMPTEXT, SproutTower3FStatueText
	bg_event  9,  1, BGEVENT_JUMPTEXT, SproutTower3FStatueText
	bg_event  7,  0, BGEVENT_JUMPTEXT, SproutTower3FPaintingText
	bg_event  8,  0, BGEVENT_JUMPTEXT, SproutTower3FPaintingText
	bg_event  3, 15, BGEVENT_JUMPTEXT, SproutTower3FStatueText
	bg_event 12, 15, BGEVENT_JUMPTEXT, SproutTower3FStatueText

	def_object_events
	object_event  8,  4, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RIVAL_SPROUT_TOWER
	object_event  6, 13, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerSageJin, -1
	object_event  6,  8, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerSageTroy, -1
	object_event  9, 11, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerSageNeal, -1
	object_event  8,  2, SPRITE_ELDER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ElderLiScript, -1
	itemball_event  4, 14, POTION, 1, EVENT_SPROUT_TOWER_3F_POTION
	itemball_event 12,  1, ESCAPE_ROPE, 1, EVENT_SPROUT_TOWER_3F_ESCAPE_ROPE

	object_const_def
	const SPROUTTOWER3F_RIVAL

SproutTower3FRivalScene:
	turnobject PLAYER, UP
	showemote EMOTE_SHOCK, PLAYER, 15
	special Special_FadeOutMusic
	playsound SFX_TACKLE
	earthquake 79
	pause 15
	playsound SFX_TACKLE
	earthquake 79
	applymovement PLAYER, SproutTower3FPlayerApproachesRivalMovement
	applyonemovement SPROUTTOWER3F_RIVAL, step_up
	showtext SproutTowerElderLecturesRivalText
	showemote EMOTE_SHOCK, SPROUTTOWER3F_RIVAL, 15
	turnobject SPROUTTOWER3F_RIVAL, DOWN
	pause 15
	applymovement SPROUTTOWER3F_RIVAL, SproutTower3FRivalLeavesElderMovement
	playmusic MUSIC_RIVAL_ENCOUNTER
	showtext SproutTowerRivalOnlyCareAboutStrongText
	turnobject SPROUTTOWER3F_RIVAL, UP
	opentext
	writetext SproutTowerRivalUsedEscapeRopeText
	pause 15
	closetext
	playsound SFX_WARP_TO
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	disappear SPROUTTOWER3F_RIVAL
	waitsfx
	special Special_FadeInQuickly
	setscene $1
	special RestartMapMusic
	end

ElderLiScript:
	checkevent EVENT_GOT_TM70_FLASH
	iftrue_jumptextfaceplayer SageLiAfterBattleText
	faceplayer
	showtext SageLiSeenText
	winlosstext SageLiBeatenText, 0
	loadtrainer ELDER, LI
	startbattle
	reloadmapafterbattle
	opentext
	writetext SageLiTakeThisFlashText
	promptbutton
	verbosegivetmhm TM_FLASH
	setevent EVENT_GOT_TM70_FLASH
	setevent EVENT_BEAT_ELDER_LI
	jumpthisopenedtext

if DEF(_LOCALE_FR)
	text "Le FLASH illumine"
	line "même les endroits"
	cont "les plus sombres."

	para "Il est inutile"
	line "de l'apprendre à"

	para "tes #mon, sauf"
	line "si tu veux t'en"
	cont "servir en combat."

	para "Appuie sur A dans"
	line "le noir, et si un"

	para "de tes #mon le"
	line "peut, il le fera."
	done
else
	text "Flash illuminates"
	line "even the darkest"
	cont "of all places."

	para "You need not teach"
	line "it to your #mon"

	para "unless you wish"
	line "to use Flash in"
	cont "battle."

	para "Simply press A in"
	line "the darkness, and"

	para "if any of your"
	line "#mon can use"
	cont "Flash, they will."
	done
endc

GenericTrainerSageJin:
	generictrainer SAGE, JIN, EVENT_BEAT_SAGE_JIN, SageJinSeenText, SageJinBeatenText

if DEF(_LOCALE_FR)
	text "Quand un #mon"
	line "gagne en puissance"
	cont "son dresseur"
	cont "devient plus fort."

	para "Non, attends..."
	line "C'est le contraire"

	para "je crois..."
	line "Je sais plus."
	done
else
	text "As #mon grow"
	line "stronger, so does"
	cont "the trainer."

	para "No, wait. As the"
	line "trainer grows"

	para "stronger, so do"
	line "the #mon."
	done
endc

GenericTrainerSageTroy:
	generictrainer SAGE, TROY, EVENT_BEAT_SAGE_TROY, SageTroySeenText, SageTroyBeatenText

if DEF(_LOCALE_FR)
	text "L'ANCIEN n'est"
	line "plus très loin."
	done
else
	text "It is not far to"
	line "the Elder."
	done
endc

GenericTrainerSageNeal:
	generictrainer SAGE, NEAL, EVENT_BEAT_SAGE_NEAL, SageNealSeenText, SageNealBeatenText

if DEF(_LOCALE_FR)
	text "Que ta voie soit"
	line "douce et claire."
	done
else
	text "Let there be light"
	line "on your journey."
	done
endc

SproutTower3FPlayerApproachesRivalMovement:
	step_up
	step_up
	step_up
	step_up
	step_end

SproutTower3FRivalLeavesElderMovement:
	step_right
	step_down
	step_end

SproutTowerElderLecturesRivalText:
if DEF(_LOCALE_FR)
	text "ANCIEN: Tu es"
	line "sans conteste un"
	cont "bon dresseur."

	para "Comme promis,"
	line "voici ta CS."

	para "Un conseil toute-"
	line "fois: traite tes"

	para "#mon avec plus"
	line "de gentillesse."

	para "Tu es bien trop"
	line "âpre au combat."

	para "Les #mon ne"
	line "sont pas des"
	cont "engins de guerre."
	done
else
	text "Elder: You are in-"
	line "deed skilled as a"
	cont "trainer."

	para "As promised, here"
	line "is your TM."

	para "But let me say"
	line "this: You should"

	para "treat your"
	line "#mon better."

	para "The way you battle"
	line "is far too harsh."

	para "#mon are not"
	line "tools of war…"
	done
endc

SproutTowerRivalOnlyCareAboutStrongText:
if DEF(_LOCALE_FR)
	text "..."
	line "...Pfeuh!"

	para "On l'appelle"
	line "l'ANCIEN mais il"
	cont "est super nul!"

	para "Et il raconte"
	line "n'importe quoi..."

	para "Je ne me ferai"
	line "jamais battre par"

	para "un crétin qui"
	line "conseille d'être"

	para "gentil avec les"
	line "#mon."

	para "Seuls les #mon"
	line "puissants sont"
	cont "importants."

	para "Je me contrefiche"
	line "des #mon mi-"
	cont "gnons et faibles."
	done
else
	text "…"
	line "…Humph!"

	para "He claims to be"
	line "the Elder but"
	cont "he's weak."

	para "It stands to"
	line "reason."

	para "I'd never lose to"
	line "fools who babble"

	para "about being nice"
	line "to #mon."

	para "I only care about"
	line "strong #mon"
	cont "that can win."

	para "I really couldn't"
	line "care less about"
	cont "weak #mon."
	done
endc

SproutTowerRivalUsedEscapeRopeText:
if DEF(_LOCALE_FR)
	text "<RIVAL> utilise"
	line "une CORDE SORTIE!"
	done
else
	text "<RIVAL> used an"
	line "Escape Rope!"
	done
endc

SageLiSeenText:
if DEF(_LOCALE_FR)
	text "Bienvenue à toi,"
	line "mon poussin!"

	para "La TOUR CHETIFLOR"
	line "est un lieu"
	cont "d'entraînement."

	para "Humains et #mon"
	line "y renforcent leurs"

	para "liens pour des"
	line "lendemains qui"
	cont "chantent."

	para "Je serai ton"
	line "adversaire final."

	para "Permets-moi de"
	line "mettre à l'épreuve"

	para "ton amitié envers"
	line "tes #mon!"
	done
else
	text "So good of you to"
	line "come here!"

	para "Sprout Tower is a"
	line "place of training."

	para "People and #mon"
	line "test their bonds"

	para "to build a bright"
	line "future together."

	para "I am the final"
	line "test."

	para "Allow me to check"
	line "the ties between"

	para "your #mon and"
	line "you!"
	done
endc

SageLiBeatenText:
if DEF(_LOCALE_FR)
	text "Ah, excellent!"
	done
else
	text "Ah, excellent!"
	done
endc

SageLiTakeThisFlashText:
if DEF(_LOCALE_FR)
	text "Toi et tes #mon"
	line "méritez bien cette"
	cont "capacité."

	para "Prends donc cette"
	line "CS FLASH."
	done
else
	text "You and your #-"
	line "mon should have"

	para "no problem using"
	line "this move."

	para "Take this Flash"
	line "TM."
	done
endc

SageLiAfterBattleText:
if DEF(_LOCALE_FR)
	text "J'espère que tu"
	line "apprendras et"
	cont "grandiras en"

	para "chemin."
	done
else
	text "I hope you learn"
	line "and grow from your"
	cont "journey."
	done
endc

SageJinSeenText:
if DEF(_LOCALE_FR)
	text "Je m'entraîne pour"
	line "trouver la voie du"
	cont "#mon!"
	done
else
	text "I train to find"
	line "enlightenment in"
	cont "#mon!"
	done
endc

SageJinBeatenText:
if DEF(_LOCALE_FR)
	text "Mon entraînement"
	line "est insuffisant."
	done
else
	text "My training is"
	line "incomplete…"
	done
endc

SageTroySeenText:
if DEF(_LOCALE_FR)
	text "Montre-moi à quel"
	line "point tu fais"
	cont "confiance à tes"
	cont "#mon."
	done
else
	text "Let me see how"
	line "much you trust"
	cont "your #mon."
	done
endc

SageTroyBeatenText:
if DEF(_LOCALE_FR)
	text "Ta confiance est"
	line "totale! Bien!"
	done
else
	text "Yes, your trust is"
	line "real!"
	done
endc

SageNealSeenText:
if DEF(_LOCALE_FR)
	text "La CS de l'ANCIEN"
	line "éclaire même les"
	cont "sombres cavernes."
	done
else
	text "The Elder's TM"
	line "lights even pitch-"
	cont "black darkness."
	done
endc

SageNealBeatenText:
if DEF(_LOCALE_FR)
	text "J'en ai pris plein"
	line "la tête!"
	done
else
	text "It is my head that"
	line "is bright!"
	done
endc

SproutTower3FPaintingText:
if DEF(_LOCALE_FR)
	text "Une belle peinture"
	line "d'un majestueux"
	cont "CHETIFLOR."
	done
else
	text "It's a powerful"
	line "painting of a"
	cont "Bellsprout."
	done
endc

SproutTower3FStatueText:
if DEF(_LOCALE_FR)
	text "Une statue de"
	line "#mon..."

	para "Ca a l'air cher"
	line "et raffiné."
	done
else
	text "A #mon statue…"

	para "It looks very"
	line "distinguished."
	done
endc
