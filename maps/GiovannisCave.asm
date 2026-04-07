GiovannisCave_MapScriptHeader:
	def_scene_scripts
	scene_script GiovannisCaveTrigger0
	scene_script GiovannisCaveTrigger1

	def_callbacks

	def_warp_events
	warp_event 15,  7, TOHJO_FALLS, 3

	def_coord_events

	def_bg_events
	bg_event 15,  2, BGEVENT_READ, GiovannisCaveRadioScript
	bg_event 12,  6, BGEVENT_ITEM + BERSERK_GENE, EVENT_GIOVANNIS_CAVE_HIDDEN_BERSERK_GENE

	def_object_events
	object_event 15,  6, SPRITE_CELEBI, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_GIOVANNIS_CAVE_CELEBI
	object_event 14,  5, SPRITE_LYRA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_GIOVANNIS_CAVE_LYRA
	object_event 15,  3, SPRITE_GIOVANNI, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_GIOVANNIS_CAVE_GIOVANNI
	smashrock_event 13, 6
	smashrock_event 16, 2

	object_const_def
	const GIOVANNISCAVE_CELEBI
	const GIOVANNISCAVE_LYRA
	const GIOVANNISCAVE_GIOVANNI

GiovannisCaveTrigger1:
	sdefer GiovannisCaveCelebiEventScript
GiovannisCaveTrigger0:
	end

GiovannisCaveCelebiEventScript:
	pause 30
	turnobject PLAYER, UP
	turnobject GIOVANNISCAVE_LYRA, UP
	showemote EMOTE_SHOCK, GIOVANNISCAVE_GIOVANNI, 15
	turnobject GIOVANNISCAVE_GIOVANNI, DOWN
	showtext GiovannisCaveGiovanniIntroText
	applyonemovement GIOVANNISCAVE_GIOVANNI, slow_step_down
	showtext GiovannisCaveGiovanniMemoriesText
	turnobject GIOVANNISCAVE_LYRA, RIGHT
	showtext GiovannisCaveLyraQuestionsText
	showemote EMOTE_SHOCK, GIOVANNISCAVE_LYRA, 15
	showtext GiovannisCaveLyraRecognizesGiovanniText
	playmusic MUSIC_ROCKET_OVERTURE
	turnobject GIOVANNISCAVE_LYRA, UP
	turnobject GIOVANNISCAVE_GIOVANNI, UP
	showtext GiovannisCaveBroadcastText
	turnobject GIOVANNISCAVE_GIOVANNI, DOWN
	showtext GiovannisCaveGiovanniIMustGoText
	setmapscene GIOVANNIS_CAVE, $0
	clearevent EVENT_TIME_TRAVELING
	winlosstext GiovannisCaveGiovanniBeatenText, 0
	setlasttalked GIOVANNISCAVE_GIOVANNI
	loadtrainer GIOVANNI, GIOVANNI2
	startbattle
	reloadmapafterbattle
	setevent EVENT_TIME_TRAVELING
	applymovement GIOVANNISCAVE_GIOVANNI, GiovannisCave_GiovanniStepsBackMovementData
	showtext GiovannisCaveGiovanniAfterText
	applymovement GIOVANNISCAVE_GIOVANNI, GiovannisCave_GiovanniLeavesMovementData
	playsound SFX_ENTER_DOOR
	disappear GIOVANNISCAVE_GIOVANNI
	waitsfx
	turnobject PLAYER, DOWN
	turnobject GIOVANNISCAVE_LYRA, DOWN
	showtext GiovannisCaveBroadcastAfterText
	applyonemovement GIOVANNISCAVE_LYRA, slow_step_down
	showtext GiovannisCaveLyraFeelsSorryText
	playsound SFX_GAME_FREAK_LOGO_GS
	special FadeOutPalettes
	special LoadMapPalettes
	pause 30
	special FadeInPalettes_EnableDynNoApply
	waitsfx
	showemote EMOTE_SHOCK, PLAYER, 15
	applymovement PLAYER, GiovannisCave_PlayerStepsAsideMovementData
	applymovement GIOVANNISCAVE_LYRA, GiovannisCave_LyraLooksAroundMovementData
	showtext GiovannisCaveLyraWantsToLeaveText
	playsound SFX_PROTECT
	applymovement GIOVANNISCAVE_CELEBI, GiovannisCave_CelebiFloatsMovementData
	waitsfx
	playsound SFX_GAME_FREAK_LOGO_GS
	special FadeOutPalettes
	pause 30
	waitsfx
	disappear GIOVANNISCAVE_CELEBI
	disappear GIOVANNISCAVE_LYRA
	warp CINNABAR_LAB, 30, 16
	end

GiovannisCaveRadioScript:
	checkevent EVENT_TIME_TRAVEL_FINISHED
	iftruefwd .AfterTimeTravel
	jumptext GiovannisCaveRadioText
.AfterTimeTravel
	jumptext GiovannisCaveRadioAfterTimeTravelText

GiovannisCaveRadioText:
if DEF(_LOCALE_FR)
	text "Il y a une radio"
	line "qui ne marche"
	cont "plus…"
	done
else
	text "There is a radio"
	line "that no longer"
	cont "works…"
	done
endc

GiovannisCaveRadioAfterTimeTravelText:
if DEF(_LOCALE_FR)
	text "Tu ne peux pas"
	line "allumer la radio."

	para "Giovanni l'a"
	line "laissée là…"
	done
else
	text "You cannot turn on"
	line "the radio."

	para "Giovanni must have"
	line "left it here…"
	done
endc

GiovannisCave_GiovanniStepsBackMovementData:
	turn_head_down
	fix_facing
	slow_step_up
	remove_fixed_facing
	slow_step_right
	step_end

GiovannisCave_GiovanniLeavesMovementData:
	step_down
	step_down
	step_down
	step_down
	step_left
	turn_head_down
	step_end

GiovannisCave_PlayerStepsAsideMovementData:
	turn_head_left
	fix_facing
	slow_step_right
	remove_fixed_facing
	step_end

GiovannisCave_LyraLooksAroundMovementData:
	turn_head_left
	step_sleep_8
	step_sleep_8
	step_sleep_8
	turn_head_right
	step_end

GiovannisCave_CelebiFloatsMovementData:
	turn_head_down
	fix_facing
	slow_step_up
	slow_step_up
	slow_step_up
	remove_fixed_facing
	step_end

GiovannisCaveGiovanniIntroText:
if DEF(_LOCALE_FR)
	text "…"

	para "Je ne sais pas"
	line "pourquoi tu es"
	cont "venu ici,"

	para "mais je te pré-"
	line "viens: ce n'est"
	cont "pas un endroit"
	cont "pour des gosses"
	cont "comme toi."

	para "Lyra: Hein? C'est"
	line "le type qu'on a"

	para "vu se disputer"
	line "avec ce garçon!"
	done
else
	text "…"

	para "I don't know why"
	line "you came here,"

	para "but I have to warn"
	line "you that this is"
	cont "no place for kids"
	cont "like you."

	para "Lyra: Huh? That's"
	line "the guy we just"

	para "saw arguing with"
	line "that boy!"
	done
endc

GiovannisCaveGiovanniMemoriesText:
if DEF(_LOCALE_FR)
	text "Tu as un certain"
	line "air…"

	para "Je me souviens"
	line "de toi!"

	para "Ce gosse, il y a"
	line "trois ans,"
	cont "sabottait nos"
	cont "plans, mais…"

	para "c'est toi qui as"
	line "tout gâché depuis"
	cont "le début!"

	para "…"

	para "Je vais à"
	line "Doublonville pour"

	para "répondre à l'appel"
	line "et rejoindre mon"
	cont "équipe."

	para "Tu vas encore"
	line "me barrer la"
	cont "route?"
	done
else
	text "You have a certain"
	line "look…"

	para "I remember you!"

	para "That kid three"
	line "years ago kept"
	cont "ruining our plans,"

	para "but you caused all"
	line "our problems in"
	cont "the first place!"

	para "…"

	para "I'm on my way to"
	line "Goldenrod City to"

	para "answer the call"
	line "and join my team."

	para "Are you going to"
	line "get in my way"
	cont "again?"
	done
endc

GiovannisCaveLyraQuestionsText:
if DEF(_LOCALE_FR)
	text "Lyra: Il y a"
	line "trois ans…?"
	cont "Doublonville…?"
	done
else
	text "Lyra: Three years"
	line "ago…? Goldenrod"
	cont "City…?"
	done
endc

GiovannisCaveLyraRecognizesGiovanniText:
if DEF(_LOCALE_FR)
	text "C'est lui que la"
	line "Team Rocket"
	cont "voulait joindre!"

	para "Leur chef,"
	line "Giovanni!"

	para "<PLAYER>, quand"
	line "l'as-tu rencontré"
	cont "avant…?"
	done
else
	text "This is who Team"
	line "Rocket was trying"
	cont "to reach!"

	para "Their boss,"
	line "Giovanni!"

	para "<PLAYER>, when did"
	line "you meet Giovanni"
	cont "before…?"
	done
endc

GiovannisCaveBroadcastText:
if DEF(_LOCALE_FR)
	text "“… Hem, nous"
	line "sommes"
	line "la Team Rocket!"
	cont "Après trois ans"
	cont "de préparatifs,"
	cont "nous renaissons"
	cont "de nos cendres!"
	cont "Giovanni! Tu"
	cont "entends? On l'a"
	cont "fait! Où est"
	cont "notre chef?"
	cont "Tu écoutes?”"

	para "Lyra: La Team"
	line "Rocket a pris la"
	cont "Tour Radio…"

	para "Tu es là-bas, et"
	line "pourtant tu es"
	cont "ici…"
	done
else
	text "“… …Ahem, we are"
	line "Team Rocket!"
	cont "After three years"
	cont "of preparation, we"
	cont "have risen again"
	cont "from the ashes!"
	cont "Giovanni! Can you"
	cont "hear? We did it!"
	cont "Where is our boss?"
	cont "Is he listening?”"

	para "Lyra: Team Rocket"
	line "has occupied the"

	para "Radio Tower right"
	line "now…"

	para "You're there, but"
	line "you're also here…"
	done
endc

GiovannisCaveGiovanniIMustGoText:
if DEF(_LOCALE_FR)
	text "Giovanni: Mes"
	line "anciens associés"
	cont "ont besoin de moi…"

	para "Nous ne répéterons"
	line "pas l'échec"
	cont "d'il y a"
	cont "trois ans!"

	para "La Team Rocket va"
	line "renaître!"

	para "Lyra: Hah!"
	line "<PLAYER> t'a déjà"
	cont "arrêté!"
	cont "…T'arrêtera."

	para "T'aura arrêté…?"

	para "…Le voyage dans le"
	line "temps, c'est"
	cont "confusant!"

	para "Giovanni: Assez"
	line "bavardé! Dégage!"
	done
else
	text "Giovanni: My old"
	line "associates need"
	cont "me…"

	para "We will not repeat"
	line "the failure of"
	cont "three years ago!"

	para "Team Rocket will"
	line "be born again!"

	para "Lyra: Hah!"
	line "<PLAYER> already"
	cont "stopped you!"
	cont "…Will stop you."

	para "Will have stopped"
	line "you…?"

	para "…Traveling through"
	line "time is confusing!"

	para "Giovanni: Enough"
	line "chatter! Get out"
	cont "of my way!"
	done
endc

GiovannisCaveGiovanniBeatenText:
if DEF(_LOCALE_FR)
	text "Mais… qu'es-tu…?"
	done
else
	text "What in the world"
	line "are you?"
	done
endc

GiovannisCaveGiovanniAfterText:
if DEF(_LOCALE_FR)
	text "Giovanni: Comment"
	line "est-ce possible…?"

	para "Ces trois années"
	line "n'auraient servi"
	cont "à rien…?"

	para "Comment un gosse"
	line "comme toi peut"

	para "détruire mon rêve"
	line "encore une fois?"
	done
else
	text "Giovanni: How is"
	line "this possible…?"

	para "The past three"
	line "years have been"
	cont "a waste…?"

	para "How can a kid like"
	line "you manage to"

	para "destroy my dream"
	line "once again?"
	done
endc

GiovannisCaveBroadcastAfterText:
if DEF(_LOCALE_FR)
	text "“… Hé! Où est"
	line "passé Giovanni?"
	cont "Est-ce qu'il"
	cont "écoute notre"
	cont "message…?”"
	done
else
	text "“… …Hey! Where has"
	line "Giovanni gone?"
	cont "I wonder if he is"
	cont "listening to our"
	cont "broadcast… …”"
	done
endc

GiovannisCaveLyraFeelsSorryText:
if DEF(_LOCALE_FR)
	text "Lyra: Ils"
	line "appellent"
	line "leur chef."

	para "Ca me fait de la"
	line "peine qu'ils ne"
	cont "sachent pas qu'il"
	cont "ne viendra pas."

	para "Mais là, <PLAYER>,"
	line "tu dois les"
	cont "battre!"
	done
else
	text "Lyra: They keep"
	line "calling for their"
	cont "boss."

	para "I feel sorry they"
	line "don't know he's not"
	cont "coming."

	para "But right now,"
	line "<PLAYER>, you must"
	cont "be defeating them!"
	done
endc

GiovannisCaveLyraWantsToLeaveText:
if DEF(_LOCALE_FR)
	text "Lyra: Pas encore…!"
	line "J'en ai marre!"

	para "Laisse-nous"
	line "retourner à notre"
	cont "époque!"
	done
else
	text "Lyra: Not again…!"
	line "I've had enough!"

	para "Please let us go"
	line "back to our time!"
	done
endc
