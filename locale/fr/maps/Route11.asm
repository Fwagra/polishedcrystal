YoungsterOwenSeenText:
	text "Y'a pas de triche"
	line "à #mon."

	para "Etre honnête, ça"
	line "c'est chouette!"
	done

YoungsterOwenBeatenText:
	text "Hein?"
	line "T'as grugé!"
	done

YoungsterJasonSeenText:
	text "Porter des shorts"
	line "dans l'herbe, ça"

	para "pique à donf... "
	line "Pas cool."
	done

YoungsterJasonBeatenText:
	text "Aïeuuuuuuu!"
	done

PsychicHermanBeatenText:
	text "…"
	done

PsychicFidelSeenText:
	text "Je vois tout..."

	para "Présent, futur..."
	line "Combat!"
	done

PsychicFidelBeatenText:
	text "Heu..."
	line "Je l'avais prévu!"
	done

Route11SignText:
	text "ROUTE 11"
	done

GenericTrainerEngineerBernie:
	generictrainer ENGINEER, BERNIE, EVENT_BEAT_ENGINEER_BERNIE, .SeenText, .BeatenText

	text "Fais passer le"
	line "mot: économiser"
	cont "l'énergie!"
	done

.SeenText:
	text "Attention!"
	line "Je pose des"
	cont "câbles!"
	done

.BeatenText:
	text "Quel choc!"
	done


GenericTrainerEngineerCamden:
	generictrainer ENGINEER, CAMDEN, EVENT_BEAT_ENGINEER_CAMDEN, .SeenText, .BeatenText

	text "Construire un pont"
	line "ou une équipe de"
	cont "#mon,"
	para "ça demande du"
	line "savoir-faire."
	done

.SeenText:
	text "J'ai étudié"
	line "à l'Université de"
	cont "CELADOPOLE!"
	done

.BeatenText:
	text "En panne!"
	done


GenericTrainerGuitaristfRitsuko:
	generictrainer GUITARISTF, RITSUKO, EVENT_BEAT_GUITARISTF_RITSUKO, .SeenText, .BeatenText

	text "♪ Rock'n, rock'n'"
	line "roll radio… ♪"
	done

.SeenText:
	text "Hey ho, let's go!"
	done

.BeatenText:
	text "Pas de succès"
	line "pour moi…"
	done


GenericTrainerGuitaristmRoger:
	generictrainer GUITARISTM, ROGER, EVENT_BEAT_GUITARISTM_ROGER, .SeenText, .BeatenText

	text "Ne cède pas"
	line "sans te battre!"
	done

.SeenText:
	text "Des inconnus"
	line "dans la rue,"
	para "deux regards"
	line "se croisent!"
	done

.BeatenText:
	text "Brille encore,"
	line "diamant fou!"
	done


GenericTrainerPsychicFidel:
	generictrainer PSYCHIC_T, FIDEL, EVENT_BEAT_PSYCHIC_FIDEL, PsychicFidelSeenText, PsychicFidelBeatenText

	text "La force vient"
	line "de la conviction…"
	para "Tu es fort car tu"
	line "crois en tes"
	cont "#mon."
	done


GenericTrainerPsychicHerman:
	generictrainer PSYCHIC_T, HERMAN, EVENT_BEAT_PSYCHIC_HERMAN, PsychicHermanSeenText, PsychicHermanBeatenText

	text "…"

	para "J'ai fermé les"
	line "yeux e perdu…"
	done

PsychicHermanSeenText: ; text > text

GenericTrainerPsychicUri:
	generictrainer PSYCHIC_T, URI, EVENT_BEAT_PSYCHIC_URI, .SeenText, .BeatenText

	text "PROF.CHEN ne veut"
	line "pas me donner de"
	cont "#dex. Pourquoi?"
	done

.SeenText:
	text "Un matin, un"
	line "garçon télépathe"
	cont "s'est réveillé"
	para "transformé en"
	line "KADABRA!"
	done

.BeatenText:
	text "Légende urbaine?"
	line "C'est quoi?"
	done


GenericTrainerYoungsterAlfie:
	generictrainer YOUNGSTER, ALFIE, EVENT_BEAT_YOUNGSTER_ALFIE, .SeenText, .BeatenText

	text "C'est plus marrant"
	line "quand c'est une"
	cont "compétition."
	done

.SeenText:
	text "Trois, deux, un,"
	line "GO!"
	done

.BeatenText:
	text "Jeu, set, match."
	done


GenericTrainerYoungsterJason:
	generictrainer YOUNGSTER, JASON, EVENT_BEAT_YOUNGSTER_JASON, YoungsterJasonSeenText, YoungsterJasonBeatenText

	text "Je vais capturer"
	line "plus de #mon"
	cont "dans l'herbe."
	done

