ShamoutiHotel1FReceptionistText:
	text "Bienvenue à"
	line "l'Hôtel Shamouti."

	para "Je crains que nos"
	line "chambres soient"
	cont "complètes, mais"

	para "viens donc au"
	line "Restaurant Oasis,"
	cont "notre adresse de"
	cont "luxe."
	done

ShamoutiHotel1FCooltrainermText:
	text "Alors <TRENDY>,"
	line "c'est la nouvelle"
	cont "tendance?"

	para "Trop la classe!"
	done

ShamoutiHotel1FLadyText:
	text "Tu as déjà trouvé"
	line "une Capsule Argt"
	cont "en pêchant?"

	para "A Alola, d'où je"
	line "viens, il y a un"
	para "homme qui peut"
	line "'surentraîner' tes"
	cont "#mon…"

	para "Et révéler tout"
	line "leur potentiel…"
	para "contre une seule"
	line "Capsule Argt."
	done

ShamoutiHotel1FYoungsterText:
	text "J'ai entendu dire"
	line "que <TRENDY>,"
	cont "c'est la mode!"
	done

ShamoutiHotelRestaurantSignText:
	text "Restaurant Oasis"
	done

ShamoutiHotel1FArtistScript:
	faceplayer
	opentext
	checkflag ENGINE_CHANGED_TRENDY_PHRASE
	iftruefwd .SetTrendyPhraseToday
	writetext .Text1
	yesorno
	iftruefwd .Yes
	writetext .Text2
	promptbutton
	special SpecialTrendyPhrase
	setflag ENGINE_CHANGED_TRENDY_PHRASE
	jumpopenedtext .Text3

.SetTrendyPhraseToday
	jumpopenedtext .Text4

.Yes
	jumpopenedtext .Text5

.Text1:
	text "Partout où tu vas,"
	line "<TRENDY>"

	para "est la chose la"
	line "plus cool du"
	cont "moment! Pas vrai?"
	done

.Text2:
	text "Quoi?! <TRENDY>"
	line "n'est pas la chose"
	cont "la plus cool?"

	para "Alors c'est quoi"
	line "la chose la plus"
	cont "cool du moment?"
	done

.Text3:
	text "Ah, oui! J'ai"
	line "compris!"

	para "<TRENDY> est"
	line "la meilleure chose"
	cont "qui soit!"
	done

.Text4:
	text "<TRENDY>, c'est"
	line "la tendance du"
	cont "moment!"
	done

.Text5:
	text "Tu le sais!"
	line "Je n'en ai jamais"
	cont "assez de"
	cont "<TRENDY>!"
	done
