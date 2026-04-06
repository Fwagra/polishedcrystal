MountMortarB1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  3, MOUNT_MORTAR_1F_INSIDE, 5
	warp_event 19, 29, MOUNT_MORTAR_1F_OUTSIDE, 7

	def_coord_events

	def_bg_events
	bg_event  4,  6, BGEVENT_ITEM + MAX_REVIVE, EVENT_MOUNT_MORTAR_B1F_HIDDEN_MAX_REVIVE

	def_object_events
	object_event 11, 31, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, MountMortarB1FHikerScript, -1
	object_event 16,  4, SPRITE_BLACK_BELT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, MountMortarB1FKiyoScript, -1
	strengthboulder_event  9, 10
	itemball_event 29, 12, HYPER_POTION, 1, EVENT_MOUNT_MORTAR_B1F_HYPER_POTION
	itemball_event  4, 16, CARBOS, 1, EVENT_MOUNT_MORTAR_B1F_CARBOS
	itemball_event 34, 24, PROTECTOR, 1, EVENT_MOUNT_MORTAR_B1F_PROTECTOR
	itemball_event 32,  3, MAX_ETHER, 1, EVENT_MOUNT_MORTAR_B1F_MAX_ETHER
	itemball_event 21, 26, PP_UP, 1, EVENT_MOUNT_MORTAR_B1F_PP_UP

MountMortarB1FHikerScript:
	faceplayer
	opentext
	checkevent EVENT_LISTENED_TO_DEFENSE_CURL_INTRO
	iftruefwd MountMortarB1FTutorDefenseCurlScript
	writetext MountMortarB1FHikerText
	waitbutton
	setevent EVENT_LISTENED_TO_DEFENSE_CURL_INTRO
MountMortarB1FTutorDefenseCurlScript:
	writetext Text_MountMortarB1FTutorDefenseCurl
	waitbutton
	checkitem SILVER_LEAF
	iffalsefwd .NoSilverLeaf
	writetext Text_MountMortarB1FTutorQuestion
	yesorno
	iffalsefwd .TutorRefused
	setval DEFENSE_CURL
	writetext ClearText
	special Special_MoveTutor
	ifequalfwd $0, .TeachMove
.TutorRefused
	jumpopenedtext Text_MountMortarB1FTutorRefused

.NoSilverLeaf
	jumpopenedtext Text_MountMortarB1FTutorNoSilverLeaf

.TeachMove
	takeitem SILVER_LEAF
	jumpopenedtext Text_MountMortarB1FTutorTaught

MountMortarB1FKiyoScript:
	checkevent EVENT_GOT_TYROGUE_FROM_KIYO
	iftrue_jumptextfaceplayer MountMortarB1FKiyoGotTyrogueText
	faceplayer
	checkevent EVENT_BEAT_KIYO
	iftruefwd .BeatKiyo
	showtext MountMortarB1FKiyoIntroText
	winlosstext MountMortarB1FKiyoWinText, 0
	loadtrainer KARATE_KING, KIYO
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_KIYO
.BeatKiyo:
	opentext
	writetext MountMortarB1FTyrogueRewardText
	promptbutton
	waitsfx
	givepoke TYROGUE, PLAIN_FORM, 10, NO_ITEM, PREMIER_BALL
	iffalse_jumpopenedtext MountMortarB1FKiyoFullPartyAndBoxText
	setevent EVENT_GOT_TYROGUE_FROM_KIYO
	jumpthisopenedtext

MountMortarB1FKiyoGotTyrogueText:
if DEF(_LOCALE_FR)
	text "DEBUGANT est du"
	line "type COMBAT."

	para "Il évolue en un"
	line "puissant #mon."

	para "Alors fais comme"
	line "moi…"
	cont "Entraîne-toi!"

	para "Adieu!"
	done
else
	text "Tyrogue is a"
	line "Fighting-type."

	para "It evolves into a"
	line "tougher #mon."

	para "Keep up the hard"
	line "work. I'll keep"
	cont "training too."

	para "Farewell!"
	done
endc

MountMortarB1FHikerText:
if DEF(_LOCALE_FR)
	text "Mon #mon a usé"
if DEF(FAITHFUL)
	line "Éclate-Roc sur un"
	line "rocher, sans rien"
	cont "casser."
else
	line "Casse-Brique sur"
	line "un rocher, sans"
	cont "rien à casser."
endc

	para "C'était un"
	line "Racaillou qui"
	cont "usait Boul'Armure!"
	done
else
	text "My #mon used"
if DEF(FAITHFUL)
	line "Rock Smash on a"
else
	line "Brick Break on a"
endc

	para "boulder, but it"
	line "was undamaged."

	para "It turned out to"
	line "be a Geodude that"
	cont "used Defense Curl!"
	done
endc

Text_MountMortarB1FTutorDefenseCurl:
if DEF(_LOCALE_FR)
	text "Je peux apprendre"
	line "Boul'Armure à ton"

	para "#mon contre une"
	line "Feuille Arg."
	done
else
	text "I can teach your"
	line "#mon to use"

	para "Defense Curl for"
	line "one Silver Leaf."
	done
endc

Text_MountMortarB1FTutorNoSilverLeaf:
if DEF(_LOCALE_FR)
	text "Zut, tu n'as pas"
	line "de Feuille Arg."
	done
else
	text "Shucks, you don't"
	line "have a Silver"
	cont "Leaf."
	done
endc

Text_MountMortarB1FTutorQuestion:
if DEF(_LOCALE_FR)
	text "Je lui apprends"
	line "Boul'Armure?"
	done
else
	text "Should I teach"
	line "your #mon"
	cont "Defense Curl?"
	done
endc

Text_MountMortarB1FTutorRefused:
if DEF(_LOCALE_FR)
	text "Je reste là si"
	line "tu changes d'avis."
	done
else
	text "I'll be right here"
	line "waiting."
	done
endc

Text_MountMortarB1FTutorTaught:
if DEF(_LOCALE_FR)
	text "Voilà! Ton #mon"
	line "connaît"
	cont "Boul'Armure!"
	done
else
	text "There! Now your"
	line "#mon can use"
	cont "Defense Curl!"
	done
endc

MountMortarB1FKiyoIntroText:
if DEF(_LOCALE_FR)
	text "Hé!"

	para "Je suis le ROI du"
	line "KARATE!"

	para "Je m'entraîne seul"
	line "dans le noir!"

	para "Toi! Moi!"
	line "Combat!"

	para "Yaaaaaah!"
	done
else
	text "Hey!"

	para "I am the Karate"
	line "King!"

	para "I train alone here"
	line "in the dark!"

	para "You!"
	line "Battle with me!"

	para "Hwaaarggh!"
	done
endc

MountMortarB1FKiyoWinText:
if DEF(_LOCALE_FR)
	text "Waaaarggh!"
	line "Perdu!"
	done
else
	text "Waaaarggh!"
	line "I'm beaten!"
	done
endc

MountMortarB1FTyrogueRewardText:
if DEF(_LOCALE_FR)
	text "J'suis…mauvais."

	para "Mon entraînement"
	line "n'est pas encore"

	para "suffisant."
	line "Mais j'admets ma"

	para "défaite."
	line "En gage de récom-"

	para "pense, je vais te"
	line "donner un #mon"

	para "de combat rare."
	done
else
	text "I… I'm crushed…"

	para "My training is"
	line "still not enough…"

	para "But a loss is a"
	line "loss. I admit it."

	para "As proof that you"
	line "defeated me, I'll"

	para "give you a rare"
	line "fighting #mon."
	done
endc

MountMortarB1FKiyoFullPartyAndBoxText:
if DEF(_LOCALE_FR)
	text "Pas de place dans"
	line "ton équipe!"
	done
else
	text "You have no room"
	line "in your party"
	line "or Box!"
	done
endc
