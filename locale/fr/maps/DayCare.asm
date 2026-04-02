if DEF(_LOCALE_FR)

DayCareLyraHelloText:
	text "CELESTA: Mamie!"

	para "Je te présente"
	line "mon ami."

	para "Voici <PLAYER>!"
	done

DayCareGrandmaISeeTable:
	dw .Male
	dw .Female
	dw .Enby

.Male:
	jumpthisopenedtext

	text "Mamie: Ah ah."

	para "Alors c'est ton"
	line "copain…"

	para "Je vois. Hmm."
	done

.Female:
	jumpthisopenedtext

	text "Mamie: Ah ah."

	para "Alors c'est ta"
	line "copine…"

	para "Je vois. Hmm."
	done

.Enby:
	jumpthisopenedtext

	text "Mamie: Ah ah."

	para "C'est un ami tres"
	line "proche…"

	para "Je vois. Hmm."
	done

DayCareLyraProtestTable:
	dw .Male
	dw .Female
	dw .Enby

.Male:
	jumpthistext

	text "CELESTA: Quoi?"
	line "Mamie…!"

	para "Dis donc, tu"
	line "racontes quoi?"

	para "Il habite juste"
	line "à côté…"

	para "Mamie: Hahaha."
	line "Je sais, je sais."

	para "Tu peux compter"
	line "sur lui, hein?"

	para "Hein, <PLAYER>?"
	line "Reviens quand tu"
	cont "veux!"
	done

.Female:
	jumpthistext

	text "CELESTA: Quoi?"
	line "Mamie…!"

	para "Dis donc, tu"
	line "racontes quoi?"

	para "Elle habite juste"
	line "à côté…"

	para "Mamie: Hahaha."
	line "Je sais, je sais."

	para "Tu peux compter"
	line "sur elle, hein?"

	para "Hein, <PLAYER>?"
	line "Reviens quand tu"
	cont "veux!"
	done

.Enby:
	jumpthistext

	text "CELESTA: Quoi?"
	line "Mamie…!"

	para "Dis donc, tu"
	line "racontes quoi?"

	para "On habite tout"
	line "près d'ici…"

	para "Mamie: Hahaha."
	line "Je sais, je sais."

	para "Je compte sur"
	line "ton talent, hein?"

	para "Hein, <PLAYER>?"
	line "Reviens quand tu"
	cont "veux!"
	done

DayCareLyraGoodbyeText:
	text "CELESTA: Bon, je"
	line "dois y aller…"

	para "Salut!"
	done

DayCareLyraForgotText:
	text "CELESTA: Ah!"
	line "J'allais oublier!"

	para "Tiens, mon numéro"
	line "#gear!"
	done

GotLyrasNumberText:
	text "<PLAYER> obtient"
	line "le numéro de"
	cont "CELESTA!"
	done

DayCareLyraHasInfoText:
	text "Appelle-moi quand"
	line "tu veux!"

	para "Mamie et Papy"
	line "m'ont appris"

	para "plein de choses"
	line "sur les #mon."

	para "Je veux te les"
	line "partager!"
	done

DayCareLyraEmbarassedText:
	text "CELESTA: Mamie!"

	para "Ne dis rien."

	para "On échange nos"
	line "numéros, c'est"

	para "normal entre"
	line "dresseurs."
	done

Text_GrampsLookingForYou:
	text "Papy te cherche."
	done

DayCareManText_GiveOddEgg:
	text "Je suis le TYPE"
	line "de la PENSION."

	para "Tu connais les"
	line "OEUFS?"

	para "J'élevais des"
	line "#mon avec ma"
	cont "femme..."

	para "Et puis on a"
	line "trouvé un Oeuf!"

	para "C'est pas trop"
	line "dingue, ça?"

	para "Bon. Tu le veux"
	line "cet Oeuf?"
	cont "Tu peux le garder!"
	done

DayCareText_GotOddEgg:
	text "<PLAYER> reçoit"
	line "l'Oeuf Bizarre!"
	done

DayCareText_DescribeOddEgg:
	text "J'ai trouvé ça"
	line "en m'occupant du"

	para "#mon de"
	line "quelqu'un."

	para "Mais le dresseur"
	line "ne veut pas de"
	cont "l'Oeuf..."
	done

DayCareLadyText_GiveLyrasEgg:
	text "Bonjour, mon"
	line "petit."

	para "CELESTA m'a dit"
	line "que cet Oeuf"

	para "était pour toi."
	line "Tiens!"
	done

DayCareLadyText_DescribeLyrasEgg:
	text "Il sort de son"
	line "premier #mon."

	para "Elle doit avoir"
	line "confiance en toi"
	cont "comme dresseur."
	done

DayCareText_PartyAndBoxFull:
	text "Tu n'as plus de"
	line "place."
	done

endc
