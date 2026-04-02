GoldenrodBikeShop_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, GOLDENROD_CITY, 2
	warp_event  3,  7, GOLDENROD_CITY, 2

	def_coord_events

	def_bg_events
	bg_event  1,  2, BGEVENT_JUMPTEXT, GoldenrodBikeShopBicycleText
	bg_event  0,  3, BGEVENT_JUMPTEXT, GoldenrodBikeShopBicycleText
	bg_event  1,  3, BGEVENT_JUMPTEXT, GoldenrodBikeShopBicycleText
	bg_event  0,  5, BGEVENT_JUMPTEXT, GoldenrodBikeShopBicycleText
	bg_event  1,  5, BGEVENT_JUMPTEXT, GoldenrodBikeShopBicycleText
	bg_event  0,  6, BGEVENT_JUMPTEXT, GoldenrodBikeShopBicycleText
	bg_event  1,  6, BGEVENT_JUMPTEXT, GoldenrodBikeShopBicycleText
	bg_event  6,  6, BGEVENT_JUMPTEXT, GoldenrodBikeShopBicycleText
	bg_event  7,  6, BGEVENT_JUMPTEXT, GoldenrodBikeShopBicycleText
	bg_event  3,  0, BGEVENT_JUMPTEXT, GoldenrodBikeShopJustReleasedCompactBikeText

	def_object_events
	object_event  7,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodBikeShopClerkScript, -1

GoldenrodBikeShopClerkScript:
	checkevent EVENT_GOT_BICYCLE
	iftrue_jumptextfaceplayer GoldenrodBikeShopClerkFirstRateBikesText
	faceplayer
	opentext
	writetext GoldenrodBikeShopClerkIntroText
	yesorno
	iffalse_jumpopenedtext GoldenrodBikeShopClerkRefusedText
	writetext GoldenrodBikeShopClerkAgreedText
	promptbutton
	waitsfx
	verbosegivekeyitem BICYCLE
	setflag ENGINE_BIKE_SHOP_CALL_ENABLED
	setevent EVENT_GOT_BICYCLE
	jumpthisopenedtext

GoldenrodBikeShopClerkFirstRateBikesText:
if DEF(_LOCALE_FR)
	text "Mes BICYCLETTES"
	line "sont trop bien!"

	para "Tu peux en faire"
	line "partout."
	done
else
	text "My Bicycles are"
	line "first-rate! You"

	para "can ride them"
	line "anywhere."
	done
endc

GoldenrodBikeShopClerkIntroText:
if DEF(_LOCALE_FR)
	text "...(soupir)..."
	line "J'ai déménagé ici"

	para "mais je n'arrive"
	line "pas à vendre mes"
	cont "BICYCLETTES."
	cont "Pourquoi?"

	para "Pourrais-tu faire"
	line "de la BICYCLETTE"
	cont "et me faire de la"
	cont "pub?"
	done
else
	text "…sigh… I opened"
	line "a branch here,"

	para "but I can't sell"
	line "my Bicycles."
	cont "Why is that?"

	para "Could you ride a"
	line "Bicycle and adver-"
	cont "tise for me?"
	done
endc

GoldenrodBikeShopClerkAgreedText:
if DEF(_LOCALE_FR)
	text "Vraiment? Génial!"

	para "Donne-moi ton nom"
	line "et ton numéro de"

	para "téléphone et je te"
	line "prêterai une"
	cont "BICYCLETTE."
	done
else
	text "Really? Great!"

	para "Give me your name"
	line "and phone number,"

	para "and I'll loan you"
	line "a Bicycle."
	done
endc

GoldenrodBikeShopClerkRefusedText:
if DEF(_LOCALE_FR)
	text "...(soupir)..."
	line "Ah, que dire de"
	cont "plus..."
	done
else
	text "…sigh… Oh, for"
	line "the kindness of"
	cont "people…"
	done
endc

GoldenrodBikeShopBicycleText:
if DEF(_LOCALE_FR)
	text "C'est une sacrée"
	line "jolie BICYCLETTE!"
	done
else
	text "It's a shiny new"
	line "Bicycle!"
	done
endc

GoldenrodBikeShopJustReleasedCompactBikeText:
if DEF(_LOCALE_FR)
	text "Tout chô tout bô!"

	para "BICYCLETTES de"
	line "poche de premier"
	cont "choix!"
	done
else
	text "Just released!"

	para "First-rate compact"
	line "Bicycles!"
	done
endc
