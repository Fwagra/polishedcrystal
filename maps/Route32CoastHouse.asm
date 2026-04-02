Route32CoastHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, ROUTE_32_COAST, 2
	warp_event  3,  7, ROUTE_32_COAST, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  2, SPRITE_BAKER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, GourmetManiacScript, -1

GourmetManiacScript:
	faceplayer
	opentext
	writetext .GreetingText
	promptbutton
	special Special_ChooseItem
	iffalse_jumpopenedtext .NoItemText
	special GetGourmetManiacPrice
	iffalse_jumpopenedtext .WrongItemText
	special ItemManiac_SelectQuantity
	iffalse_jumpopenedtext .NoItemText
	special MultiplyMoneyByQuantity
	writetext .OfferText
	special PlaceMoneyTopRight
	yesorno
	iffalse_jumpopenedtext .NoItemText
	special TakeItemFromMemWithQuantity
	waitsfx
	playsound SFX_TRANSACTION
	special Give_hMoneyTemp
	special PlaceMoneyTopRight
	jumpthisopenedtext

if DEF(_LOCALE_FR)
	text "Merci! Thank you!"

	para "Avec ça, je peux"
	line "créer quelque"
	cont "chose de superbe."
	done
else
	text "Merci! Thank you!"

	para "With this, I can"
	line "create something"
	cont "superb."
	done
endc

.GreetingText:
if DEF(_LOCALE_FR)
	text "Salut! Je suis"
	line "un pâtissier"
	cont "gourmet!"

	para "Je fais des plats"
	line "merveilleux avec"
	cont "les meilleurs"
	cont "ingrédients!"

	para "Tu as des"
	line "ingrédients"
	cont "à me vendre?"
	done
else
	text "Hi there! I am"
	line "a gourmet Baker!"

	para "I cook wonderful"
	line "dishes with only"
	cont "the finest of"
	cont "ingredients!"

	para "Do you have any"
	line "ingredients to"
	cont "sell me?"
	done
endc

.OfferText:
if DEF(_LOCALE_FR)
	text "Oh, ça sent bon!"

	para "Tu acceptes"
	line "¥"
	text_decimal hMoneyTemp, 3, 7
	text "?"
	done
else
	text "Oh, it smells so"
	line "good!"

	para "Would you accept"
	line "¥"
	text_decimal hMoneyTemp, 3, 7
	text " for it?"
	done
endc

.WrongItemText:
if DEF(_LOCALE_FR)
	text "Hmmm..."
	line "C'est pas vraiment"
	cont "ce que je cherche."
	done
else
	text "Hmmm… This is not"
	line "quite what I'm"
	cont "looking for."
	done
endc

.NoItemText:
if DEF(_LOCALE_FR)
	text "Oh..."
	line "C'est pas grave."
	done
else
	text "Aww… Well,"
	line "that's OK."
	done
endc
