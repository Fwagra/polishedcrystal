Route38EcruteakGateOfficerText:
	text "Tu viens d'où?"

	para "BOURG GEON?"

	para "Le PROF.ORME"
	line "y vit, non?"

	para "Tu viens de loin,"
	line "dis donc."
	done

ProfOaksAide2HiText:
	text "Bonjour! Je suis"
	line "l'assistant du"
	cont "Prof. CHEN."
	para "Si tu as attrapé"
	line "30 espèces de"
	cont "#mon,"
	para "je dois te donner"
	line "un objet."
	para "Alors, <PLAYER>,"
	line "tu en as attrapé"
	para "au moins 30"
	line "différents?"
	done

ProfOaksAide2UhOhText:
	text "Voyons…"
	line "Oh-oh! Tu n'en as"
	para "attrapé que "
	text_decimal wTempDexOwn, 2, 3
	text " espèces"
	line "de #mon."
	para "Reviens me voir"
	line "quand tu en auras"
	cont "30."
	done

ProfOaksAide2HereYouGoText:
	text "Voyons…"
	line "Super! Tu en as"
	para "attrapé "
	text_decimal wTempDexOwn, 2, 3
	text " espèces"
	line "de #mon."
	para "Félicitations!"
	line "Tiens!"
	done

ProfOaksAide2NoRoomText:
	text "Oh! Ton SAC est"
	line "plein."
	done

ProfOaksAide2ExplainText:
	text "Ce Cordon Lien"
	line "donne à certains"
	para "#mon un 'lien'"
	line "qui peut les"
	para "aider à évoluer."
	para "Sers-t'en pour"
	line "compléter le #-"
	cont "DEX!"
	done
