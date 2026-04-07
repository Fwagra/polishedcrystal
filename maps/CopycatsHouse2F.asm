CopycatsHouse2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, CopycatsHouse2FCallback

	def_warp_events
	warp_event  3,  0, COPYCATS_HOUSE_1F, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  3, SPRITE_COPYCAT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_TEAL, OBJECTTYPE_SCRIPT, 0, Copycat1Script, EVENT_COPYCAT_1
	object_event  4,  3, SPRITE_COPYCAT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_TEAL, OBJECTTYPE_SCRIPT, 0, Copycat2Script, EVENT_COPYCAT_2
	object_event  4,  3, SPRITE_COPYCAT, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_TEAL, OBJECTTYPE_SCRIPT, 0, Copycat3Script, EVENT_COPYCAT_3
	object_event  6,  4, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, DODRIO, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, NO_FORM, CopycatsDodrioScript, -1
	object_event  6,  1, SPRITE_MON_ICON, SPRITEMOVEDATA_STILL, 0, CLEFAIRY, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, NO_FORM, CopycatsHouse2FDollScript, EVENT_COPYCATS_HOUSE_2F_DOLL
	object_event  2,  1, SPRITE_MON_ICON, SPRITEMOVEDATA_STILL, 0, GENGAR, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, NO_FORM, CopycatsHouse2FDollScript, -1
	object_event  7,  1, SPRITE_MON_ICON, SPRITEMOVEDATA_STILL, 0, MURKROW, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, NO_FORM, CopycatsHouse2FDollScript, -1
	pokemon_event  0,  4, DITTO, SPRITEMOVEDATA_POKEMON, -1, PAL_NPC_PURPLE, CopycatsHouse2FDittoText, -1

	object_const_def
	const COPYCATSHOUSE2F_COPYCAT1
	const COPYCATSHOUSE2F_COPYCAT2
	const COPYCATSHOUSE2F_COPYCAT3

CopycatsHouse2FCallback:
	disappear COPYCATSHOUSE2F_COPYCAT1
	disappear COPYCATSHOUSE2F_COPYCAT2
	disappear COPYCATSHOUSE2F_COPYCAT3
	variablesprite SPRITE_COPYCAT, SPRITE_LASS
	readvar VAR_PLAYERGENDER
	ifequalfwd $1, .Female
	ifequalfwd $2, .Enby
; Male
	appear COPYCATSHOUSE2F_COPYCAT1
	endcallback
.Female:
	appear COPYCATSHOUSE2F_COPYCAT2
	endcallback
.Enby:
	appear COPYCATSHOUSE2F_COPYCAT3
	endcallback

Copycat1Script:
	faceplayer
	checkevent EVENT_GOT_PASS_FROM_COPYCAT
	iftruefwd .GotPass
	checkevent EVENT_RETURNED_LOST_ITEM_TO_COPYCAT
	iftrue CopycatReturnedLostItemScript
	checkkeyitem LOST_ITEM
	iftrue CopycatFoundLostItemScript
	applymovement COPYCATSHOUSE2F_COPYCAT1, CopycatSpinMovement
	faceplayer
	loadmem wObject1Palette, 0
	variablesprite SPRITE_COPYCAT, SPRITE_CHRIS
	special RefreshSprites
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftruefwd .ReturnedMachinePart
	showtext CopycatGreeting1Text
	applymovement COPYCATSHOUSE2F_COPYCAT1, CopycatSpinMovement
	sjump CopycatRetortScript

.ReturnedMachinePart:
	showtext CopycatLostDoll1Text
	applymovement COPYCATSHOUSE2F_COPYCAT1, CopycatSpinMovement
	sjump CopycatWorriedScript

.GotPass:
	applymovement COPYCATSHOUSE2F_COPYCAT1, CopycatSpinMovement
	faceplayer
	loadmem wObject1Palette, 0
	variablesprite SPRITE_COPYCAT, SPRITE_CHRIS
	special RefreshSprites
	showtext CopycatThanks1Text
	applymovement COPYCATSHOUSE2F_COPYCAT1, CopycatSpinMovement
	sjump CopycatFinalScript

CopycatGreeting1Text:
if DEF(_LOCALE_FR)
	text "<PLAYER>: Salut!"
	line "Tu aimes les #MON?"
	line "<PLAYER>: Non."
	line "Toi. Tu les aimes?"
	line "<PLAYER>: Hein? Tu"
	line "m'cherches?"
	done
else
	text "<PLAYER>: Hi! Do"
	line "you like #mon?"

	para "<PLAYER>: Uh, no, I"
	line "just asked you."

	para "<PLAYER>: Huh?"
	line "You're strange!"
	done
endc

CopycatLostDoll1Text:
if DEF(_LOCALE_FR)
	text "<PLAYER>: Salut!"
	line "On dit que tu as"
	line "perdu ta # POUPEE"
	line "préférée."
	line "<PLAYER>: Si je la"
	line "trouve, tu me don-"
	line "nes un PASSE?"
	line "<PLAYER>: J'vais"
	line "aller la chercher."
	line "Tu l'as perdue en"
	line "allant à CARMIN"
	line "SUR MER?"
	done
else
	text "<PLAYER>: Hi!"
	line "I heard that you"

	para "lost your favorite"
	line "# Doll."

	para "<PLAYER>: If I find"
	line "it, you'll give me"
	cont "a rail pass?"

	para "<PLAYER>: I'll go"
	line "find it for you."

	para "You think you lost"
	line "it when you went"
	cont "to Vermilion City?"
	done
endc

CopycatThanks1Text:
if DEF(_LOCALE_FR)
	text "<PLAYER>: Salut!"
	line "Merci pour le"
	line "PASSE! <PLAYER>:"
	line "Pardon? <PLAYER>:"
	line "Tu vas t'arrêter"
	line "de répé- ter c'que"
	line "je dis!"
	done
else
	text "<PLAYER>: Hi!"
	line "Thanks a lot for"
	cont "the rail pass!"

	para "<PLAYER>: Pardon?"

	para "<PLAYER>: Is it"
	line "that fun to mimic"
	cont "my every move?"
	done
endc

Copycat2Script:
	faceplayer
	checkevent EVENT_GOT_PASS_FROM_COPYCAT
	iftruefwd .GotPass
	checkevent EVENT_RETURNED_LOST_ITEM_TO_COPYCAT
	iftrue CopycatReturnedLostItemScript
	checkkeyitem LOST_ITEM
	iftrue CopycatFoundLostItemScript
	applymovement COPYCATSHOUSE2F_COPYCAT2, CopycatSpinMovement
	faceplayer
	loadmem wObject1Palette, 0
	variablesprite SPRITE_COPYCAT, SPRITE_KRIS
	special RefreshSprites
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftruefwd .ReturnedMachinePart
	showtext CopycatGreeting2Text
	applymovement COPYCATSHOUSE2F_COPYCAT2, CopycatSpinMovement
	sjump CopycatRetortScript

.ReturnedMachinePart:
	showtext CopycatLostDoll2Text
	applymovement COPYCATSHOUSE2F_COPYCAT2, CopycatSpinMovement
	sjump CopycatWorriedScript

.GotPass:
	applymovement COPYCATSHOUSE2F_COPYCAT2, CopycatSpinMovement
	faceplayer
	loadmem wObject1Palette, 0
	variablesprite SPRITE_COPYCAT, SPRITE_KRIS
	special RefreshSprites
	showtext CopycatThanks2Text
	applymovement COPYCATSHOUSE2F_COPYCAT2, CopycatSpinMovement
	sjump CopycatFinalScript

CopycatGreeting2Text:
if DEF(_LOCALE_FR)
	text "<PLAYER>: Salut!"
	line "Tu aimes les #MON,"
	line "non? <PLAYER>:"
	line "Non, pas moi. Toi."
	line "<PLAYER>: Quoi?"
	line "T'es bizarre!"
	done
else
	text "<PLAYER>: Hi. You"
	line "must like #mon."

	para "<PLAYER>: No, not"
	line "me. I asked you."

	para "<PLAYER>: Pardon?"
	line "You're weird!"
	done
endc

CopycatLostDoll2Text:
if DEF(_LOCALE_FR)
	text "<PLAYER>: Salut!"
	line "On dit que tu as"
	line "perdu ta # POUPEE"
	line "préférée."
	line "<PLAYER>: Si je la"
	line "trouve, tu me"
	line "donnes un PASSE?"
	line "<PLAYER>: Je vais"
	line "la chercher. Tu"
	line "l'as perdue en"
	line "allant à CARMIN"
	line "SUR MER?"
	done
else
	text "<PLAYER>: Hi. Did"
	line "you really lose"
	cont "your # Doll?"

	para "<PLAYER>: You'll"
	line "really give me a"

	para "rail pass if I"
	line "find it for you?"

	para "<PLAYER>: Sure,"
	line "I'll look for it!"

	para "You think you lost"
	line "it when you were"
	cont "in Vermilion?"
	done
endc

CopycatThanks2Text:
if DEF(_LOCALE_FR)
	text "<PLAYER>: Merci"
	line "pour le PASSE!"
	line "<PLAYER>: …Quoi?"
	line "<PLAYER>: T'en as"
	line "jamais marre de"
	line "répéter tout ce"
	line "que je dis?"
	done
else
	text "<PLAYER>: Thank you"
	line "for the rail pass!"

	para "<PLAYER>: …Pardon?"

	para "<PLAYER>: Is it"
	line "really that fun to"

	para "copy what I say"
	line "and do?"
	done
endc

Copycat3Script:
	faceplayer
	checkevent EVENT_GOT_PASS_FROM_COPYCAT
	iftruefwd .GotPass
	checkevent EVENT_RETURNED_LOST_ITEM_TO_COPYCAT
	iftrue CopycatReturnedLostItemScript
	checkkeyitem LOST_ITEM
	iftruefwd CopycatFoundLostItemScript
	applymovement COPYCATSHOUSE2F_COPYCAT3, CopycatSpinMovement
	faceplayer
	loadmem wObject1Palette, 0
	variablesprite SPRITE_COPYCAT, SPRITE_CRYS
	special RefreshSprites
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftruefwd .ReturnedMachinePart
	showtext CopycatGreeting2Text
	applymovement COPYCATSHOUSE2F_COPYCAT3, CopycatSpinMovement
	sjumpfwd CopycatRetortScript

.ReturnedMachinePart:
	showtext CopycatLostDoll2Text
	applymovement COPYCATSHOUSE2F_COPYCAT3, CopycatSpinMovement
	sjumpfwd CopycatWorriedScript

.GotPass:
	applymovement COPYCATSHOUSE2F_COPYCAT3, CopycatSpinMovement
	faceplayer
	loadmem wObject1Palette, 0
	variablesprite SPRITE_COPYCAT, SPRITE_CRYS
	special RefreshSprites
	showtext CopycatThanks2Text
	applymovement COPYCATSHOUSE2F_COPYCAT3, CopycatSpinMovement
	sjump CopycatFinalScript

CopycatRetortScript:
	faceplayer
	loadmem wObject1Palette, 1
	variablesprite SPRITE_COPYCAT, SPRITE_LASS
	special RefreshSprites
	jumpthistext

if DEF(_LOCALE_FR)
	text "COPIEUSE: Hmm?"
	line "Arrêter de copier?"
	line "Mais… C'est toute"
	line "ma vie!"
	done
else
	text "Copycat: Hmm?"
	line "Quit mimicking?"

	para "But that's my"
	line "favorite hobby!"
	done
endc

CopycatWorriedScript:
	faceplayer
	loadmem wObject1Palette, 1
	variablesprite SPRITE_COPYCAT, SPRITE_LASS
	special RefreshSprites
	setevent EVENT_MET_COPYCAT_FOUND_OUT_ABOUT_LOST_ITEM
	jumpthistext

if DEF(_LOCALE_FR)
	text "COPIEUSE: Pardon?"
	line "Tu ne veux pas que"
	line "je te dise comment"
	line "faire? Mais j'ai"
	line "si peur! Et si"
	line "quelqu'un la"
	line "trouve?"
	done
else
	text "Copycat: Pardon?"

	para "I shouldn't decide"
	line "what you should"
	cont "do?"

	para "But I'm really"
	line "worried… What if"
	cont "someone finds it?"
	done
endc

CopycatFoundLostItemScript:
	opentext
	writetext .FoundDollText
	promptbutton
	takekeyitem LOST_ITEM
	setevent EVENT_RETURNED_LOST_ITEM_TO_COPYCAT
	clearevent EVENT_COPYCATS_HOUSE_2F_DOLL
	sjumpfwd CopycatGivePassScript

.FoundDollText:
if DEF(_LOCALE_FR)
	text "COPIEUSE: Hé!"
	line "C'est ma # POUPEE"
	line "MELOFEE! Elle est"
	line "un peu déchirée"
	line "près de jambe!"
	line "C'est la mienne!"
	done
else
	text "Copycat: Yay!"
	line "That's my Clefairy"
	cont "# Doll!"

	para "See the tear where"
	line "the right leg is"

	para "sewn on? That's"
	line "proof!"
	done
endc

CopycatReturnedLostItemScript:
	opentext
CopycatGivePassScript:
	writetext .GivePassText
	promptbutton
	verbosegivekeyitem PASS
	iffalse_endtext
	setevent EVENT_GOT_PASS_FROM_COPYCAT
	jumpthisopenedtext

if DEF(_LOCALE_FR)
	text "COPIEUSE: C'est le"
	line "PASSE pour le"
	line "TRAIN MAGNET. On"
	line "me l'a donné quand"
	line "ils ont tout cassé"
	line "ma maison pour"
	line "construire la"
	line "STATION."
	done
else
	text "Copycat: That's"
	line "the pass for the"
	cont "Magnet Train."

	para "The rail company"
	line "man gave me that"

	para "when they tore"
	line "down our old house"
	cont "for the station."
	done
endc

.GivePassText:
if DEF(_LOCALE_FR)
	text "OK. Voilà le PASSE"
	line "du TRAIN comme"
	line "promis!"
	done
else
	text "OK. Here's the"
	line "Magnet Train Pass"
	cont "like I promised!"
	done
endc

CopycatFinalScript:
	faceplayer
	loadmem wObject1Palette, 1
	variablesprite SPRITE_COPYCAT, SPRITE_LASS
	special RefreshSprites
	jumpthistext

if DEF(_LOCALE_FR)
	text "COPIEUSE: Copier"
	line "c'est mortel!"
	done
else
	text "Copycat: You bet!"
	line "It's a scream!"
	done
endc

CopycatSpinMovement:
rept 2
	turn_head_down
	turn_head_left
	turn_head_up
	turn_head_right
endr
	turn_head_down
	step_end

CopycatsDodrioScript:
	opentext
	writetext .Text1
	cry DODRIO
	promptbutton
	jumpthisopenedtext

if DEF(_LOCALE_FR)
	text "MON BEAU MIROIR,"
	line "QUI EST LA PLUS"
	line "BELLE DE TOUTES?"
	line "HEIN? C'EST QUI?"
	done
else
	text "Mirror, mirror on"
	line "the wall, who's"

	para "the fairest one of"
	line "all?"
	done
endc

.Text1:
if DEF(_LOCALE_FR)
	text "DODRIO: Driii!"
	done
else
	text "Dodrio: Gii giii!"
	done
endc

CopycatsHouse2FDollScript:
	jumpthistext

if DEF(_LOCALE_FR)
	text "C'est un #MON"
	line "super rare! Hein?"
	line "Une poupée…"
	done
else
	text "This is a rare"
	line "#mon! Huh?"

	para "It's only a doll…"
	done
endc

CopycatsHouse2FDittoText:
	text "Ditto: Dii…"
	done
