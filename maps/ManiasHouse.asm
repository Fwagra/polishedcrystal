ManiasHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, CIANWOOD_CITY, 1
	warp_event  3,  7, CIANWOOD_CITY, 1

	def_coord_events

	def_bg_events
	bg_event  5,  1, BGEVENT_JUMPSTD, radio2
	bg_event  7,  1, BGEVENT_JUMPSTD, picturebookshelf

	def_object_events
	object_event  2,  4, SPRITE_ROCKER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ManiaScript, -1

ManiaScript:
	faceplayer
	opentext
	checkevent EVENT_MANIA_TOOK_SHUCKIE_OR_LET_YOU_KEEP_HIM
	iftruefwd .default_postevent
	checkevent EVENT_GOT_SHUCKIE
	iftruefwd .alreadyhaveshuckie
	writetext ManiaText_AskLookAfterShuckie
	yesorno
	iffalsefwd .refusetotakeshuckie
	givepoke SHUCKLE, MALE | PLAIN_FORM, 25, BERRY_JUICE, NET_BALL, POISON_JAB, ShuckieName, ShuckieOTName, KIRK_SHUCKIE_ID
	iffalse_jumpopenedtext ManiaText_PartyAndBoxFull
	writetext ManiaText_TakeCareOfShuckie
	promptbutton
	waitsfx
	writetext ManiaText_GotShuckie
	playsound SFX_KEY_ITEM
	waitsfx
	ifequalfwd 1, .shuckieinparty
	special Special_CurBoxFullCheck
	iffalsefwd .BoxNotFull
	farwritetext _CurBoxFullText
.BoxNotFull
	special GetCurBoxName
	writetext ManiaText_ShuckieSentToPC
	promptbutton
.shuckieinparty
	closetext
	setevent EVENT_GOT_SHUCKIE
	setflag ENGINE_GOT_SHUCKIE_TODAY
	end

.alreadyhaveshuckie
	checkflag ENGINE_GOT_SHUCKIE_TODAY
	iffalsefwd .returnshuckie
	jumpopenedtext ManiaText_TakeCareOfShuckie

.refusetotakeshuckie
	jumpopenedtext ManiaText_IfHeComesBack

.returnshuckie
	writetext ManiaText_CanIHaveMyMonBack
	yesorno
	iffalsefwd .refused
	special ReturnShuckie
	ifequalfwd $0, .wrong
	ifequalfwd $1, .refused
	ifequalfwd $3, .superhappy
	ifequalfwd $4, .default_postevent
	writetext ManiaText_ThankYou
	waitbutton
	closetext
	setevent EVENT_MANIA_TOOK_SHUCKIE_OR_LET_YOU_KEEP_HIM
	end

.wrong
	jumpopenedtext ManiaText_ShuckieNotThere

.superhappy
	writetext ManiaText_ShuckieLikesYou
	waitbutton
	closetext
	setevent EVENT_MANIA_TOOK_SHUCKIE_OR_LET_YOU_KEEP_HIM
	end

.refused
	jumpopenedtext ManiaText_SameAsBeingRobbed

.nothingleft
	jumpopenedtext ManiaText_ShuckieIsYourLastMon

.default_postevent
	jumpopenedtext ManiaText_HappinessSpeech

ShuckieName:
	rawchar "Shuckie@"

ShuckieOTName:
	rawchar "Kirk@"

ManiaText_AskLookAfterShuckie:
if DEF(_LOCALE_FR)
	text "Je suis choqué!"

	para "Un garnement de"
	line "ton âge avec"

	para "l'oeil mauvais"
	line "et des cheveux"
	cont "longs, s'est in-"
	cont "filtré chez moi."

	para "Il m'a fait grand-"
	line "peur et chapardé"
	cont "mon #mon"
	cont "adoré!"

	para "Il m'en reste un"
	line "mais que faire"
	cont "s'il revient?"

	para "Tu as l'air"
	line "fort. Peux-tu"

	para "t'occuper de"
	line "mon #mon"
	cont "un petit moment?"
	done
else
	text "I, I'm in shock!"

	para "A guy about your"
	line "age with piercing"

	para "eyes and long hair"
	line "came in."

	para "He scared me into"
	line "giving him my"
	cont "prized #mon!"

	para "I still have one"
	line "left, but what if"
	cont "he comes back?"

	para "You look strong."
	line "Could you look"

	para "after my #mon"
	line "for a while?"
	done
endc

ManiaText_TakeCareOfShuckie:
if DEF(_LOCALE_FR)
	text "Oh, bien le merci!"

	para "Prends-en bien"
	line "soin, pitié!"
	done
else
	text "Oh, thank you!"

	para "Take good care of"
	line "it, please!"
	done
endc

ManiaText_GotShuckie:
if DEF(_LOCALE_FR)
	text "<PLAYER> reçoit un"
	line "#mon."
	done
else
	text "<PLAYER> got a"
	line "#mon."
	done
endc

ManiaText_ShuckieSentToPC:
if DEF(_LOCALE_FR)
	text "Le #mon a été"
	line "envoyé dans"
	text_ram wStringBuffer1
	text "."
	done
else
	text "The #mon was"
	line "sent to "
	text_ram wStringBuffer1
	text "."
	done
endc

ManiaText_PartyAndBoxFull:
if DEF(_LOCALE_FR)
	text "Ton équipe et"
	line "tes Boîtes"
	cont "sont pleines."
	done
else
	text "Your #mon party"
	line "and Box are full."
	done
endc

ManiaText_IfHeComesBack:
if DEF(_LOCALE_FR)
	text "Oh, non... Que"
	line "vais-je faire"
	cont "s'il revient?"
	done
else
	text "Oh, no… What'll"
	line "I do if he comes"
	cont "back?"
	done
endc

ManiaText_CanIHaveMyMonBack:
if DEF(_LOCALE_FR)
	text "Salut! Comment va"
	line "mon #mon?"

	para "Je pense être en"
	line "sécurité main-"
	cont "tenant, serait-il"
	cont "possible de le"
	cont "récupérer?"
	done
else
	text "Hi! How's my #-"
	line "mon?"

	para "I think I'm safe"
	line "now, so may I have"
	cont "it back?"
	done
endc

ManiaText_ThankYou:
if DEF(_LOCALE_FR)
	text "Merci mon petit!"
	done
else
	text "Thank you!"
	done
endc

ManiaText_ShuckieNotThere:
if DEF(_LOCALE_FR)
	text "Hé, tu n'as pas"
	line "mon #mon avec"
	cont "toi."
	done
else
	text "Hey, you don't"
	line "have my #mon"
	cont "with you."
	done
endc

ManiaText_ShuckieLikesYou:
if DEF(_LOCALE_FR)
	text "Mon #mon a"
	line "l'air de t'appré-"
	cont "cier."

	para "Très bien! Tu"
	line "peux le garder."

	para "Mais promets-moi"
	line "d'être sympa avec"
	cont "lui!"
	done
else
	text "My #mon has"
	line "come to like you."

	para "All right, you"
	line "should keep it."

	para "But promise to"
	line "be good to it!"
	done
endc

ManiaText_SameAsBeingRobbed:
if DEF(_LOCALE_FR)
	text "Oh, non de non..."
	line "C'est la même"
	cont "chose que de se"
	cont "faire voler."
	done
else
	text "Oh, no, no… That's"
	line "the same as being"
	cont "robbed."
	done
endc

ManiaText_HappinessSpeech:
if DEF(_LOCALE_FR)
	text "Pour les #mon,"
	line "c'est le bonheur"

	para "d'être avec un"
	line "gentil dresseur."
	done
else
	text "For #mon, hap-"
	line "piness is being"

	para "with a person who"
	line "treats them well."
	done
endc

ManiaText_ShuckieIsYourLastMon:
if DEF(_LOCALE_FR)
	text "Si je reprends mon"
	line "#mon, avec quoi"

	para "vas-tu pouvoir"
	line "combattre?"
	done
else
	text "If I take my #-"
	line "mon back, what are"

	para "you going to use"
	line "in battle?"
	done
endc
