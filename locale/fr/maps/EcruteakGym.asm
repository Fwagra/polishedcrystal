GenericTrainerSageJeffrey:
	generictrainer SAGE, JEFFREY, EVENT_BEAT_SAGE_JEFFREY, SageJeffreySeenText, SageJeffreyBeatenText

	text "D'où viennent les"
	line "#mon?"
	done

GenericTrainerSagePing:
	generictrainer SAGE, PING, EVENT_BEAT_SAGE_PING, SagePingSeenText, SagePingBeatenText

	text "Que des #mon"
	line "Spectre."

	para "Aucune attaque"
	line "Normal ne les"
	cont "touche!"
	done

GenericTrainerMediumMartha:
	generictrainer MEDIUM, MARTHA, EVENT_BEAT_MEDIUM_MARTHA, MediumMarthaSeenText, MediumMarthaBeatenText

	text "Qui veut gagner"
	line "gagne!"
	done

GenericTrainerMediumGrace:
	generictrainer MEDIUM, GRACE, EVENT_BEAT_MEDIUM_GRACE, MediumGraceSeenText, MediumGraceBeatenText

	text "Bon. Je vais te"
	line "dire le secret…"

	para "du sol invisible."

	para "Le chemin est la,"
	line "sous tes yeux!"
	done

EcruteakGymGuyScript:
	checkevent EVENT_BEAT_MORTY
	iftrue_jumptextfaceplayer EcruteakGymGuyWinText
	jumptextfaceplayer EcruteakGymGuyText

EcruteakGymStatue:
	gettrainername MORTY, 1, STRING_BUFFER_4
	checkflag ENGINE_FOGBADGE
	iftruefwd .Beaten
	jumpstd gymstatue1
.Beaten:
	readvar VAR_BADGES
	ifgreater 11, .LyraToo
	jumpstd gymstatue2
.LyraToo
	jumpstd gymstatue3

EcruteakGymPlayerSlowStepDownMovement:
	fix_facing
	slow_step_down
	remove_fixed_facing
	step_end

MortyIntroText:
	text "Mortimer:"
	line "Bienvenue."

	para "Ici à Rosalia,"
	line "les #mon sont"
	cont "vénérés"

	para "depuis des temps"
	line "immémoriaux."

	para "Il est dit qu'un"
	line "#mon légendaire"

	para "apparaîtra face"
	line "à un Dresseur"
	cont "d'exception."

	para "Je crois à ce"
	line "recit, et dans"
	cont "ce but,"

	para "je m'entraîne"
	line "ici depuis ma"
	cont "naissance."

	para "C'est ainsi que"
	line "je peux voir"
	cont "ce"

	para "que les autres"
	line "ne voient pas."

	para "Je sais qui"
	line "pourra faire"
	cont "venir"

	para "le #mon de la"
	line "legende..."

	para "C'est moi,"
	line "je suis l'élu!"

	para "Et toi, tu vas"
	line "m'aider à"
	cont "m'améliorer"

	para "ici et"
	line "maintenant!"
	done

MortyWinLossText:
	text "Mortimer: Je"
	line "n'aurais jamais"
	cont "du"

	para "perdre pourtant..."

	para "Toi... toi... tu"
	line "as quelque chose"
	cont "qui..."

	para "Tout est clair."
	line "Reçois ce Badge"
	cont "de mes mains."
	done

MortyText_FogBadgeSpeech:
	text "Mortimer: Grâce"
	line "à ce Badge Brume,"

	para "tu pourras te"
	line "faire obéir de"
	cont "tous les"

	para "#mon que tu"
	line "auras"
	line "reçus jusqu'au"

	para "niveau <LV>50."

	para "Ce n'est pas"
	line "tout."

	para "Il t'est possible"
	line "d'utiliser Surf"

	para "à tout moment."

	para "Enfin..."
	line "Ceci est"
	cont "également"

	para "pour toi."
	done

MortyText_ShadowBallSpeech:
	text "Mortimer: Cette"
	line "Capsule contient"

	para "la capacité"
	line "Ball'Ombre."

	para "Cette dernière"
	line "ne fait pas"
	cont "que"

	para "causer des dégâts,"
	line "elle reduit"
	cont "aussi"

	para "la Defense"
	line "Spéciale."

	para "Utilise-la comme"
	line "bon te semble."
	done

MortyFightDoneText:
	text "Mortimer: Ainsi..."

	para "Les femmes en"
	line "kimono parlaient"
	cont "de toi"

	para "en fin de"
	line "compte..."

	para "Oh! Non! Rien!"
	line "Je me parlais"
	cont "à"

	para "moi-même..."

	para "Avec une force"
	line "pareille, tu"
	cont "pourras"

	para "traverser les"
	line "océans sans"
	cont "encombre."

	para "Pars vers"
	line "l'ouest,"

	para "puis dirige-toi"
	line "vers le sud,"

	para "et tu arriveras"
	line "à Oliville."

	para "Va maintenant,"
	line "poursuis ton"
	cont "chemin..."
	done

SageJeffreySeenText:
	text "J'ai vécu avec"
	line "mes #mon."

	para "Printemps, été,"
	line "automne, hiver…"

	para "Puis printemps."
	line "Depuis longtemps."
	done

SageJeffreyBeatenText:
	text "J'ai connu"
	line "victoire et"
	cont "défaite."
	done

SagePingSeenText:
	text "Peux-tu blesser"
	line "nos #mon?"
	done

SagePingBeatenText:
	text "Ah! Bravo!"
	done

MediumMarthaSeenText:
	text "Je vais gagner!"
	done

MediumMarthaBeatenText:
	text "J'ai… perdu!"
	done

MediumGraceSeenText:
	text "Perdu sur le sol"
	line "invisible?"

	para "Bats-moi et tu"
	line "auras un indice!"
	done

MediumGraceBeatenText:
	text "Qu-quoi?"
	done

EcruteakGymGuyText:
	text "Salut! Futur"
	line "Maître!"

	para "Dans cette Arène,"
	line "on maitrise les"
	cont "#mon Spectre!"

	para "Fantomes,"
	line "illusions..."

	para "Insensibles a la"
	line "force brute!"
	done

EcruteakGymGuyWinText:
	text "Waouh, <PLAYER>!"
	line "Bien joué!"

	para "J'avais tellement"
	line "peur que"
	cont "j'etais"

	para "planqué dans"
	line "un coin!"
	done

EcruteakGymClosedText:
	text "Qu'est-ce que tu"
	line "veux au Champion?"

	para "Mortimer est"
	line "parti faire"
	cont "une balade"

	para "à la Tour"
	line "Cendrée."

	para "Désolé mais"
	line "tu dois partir."

	para "Hohoho!"
	done

