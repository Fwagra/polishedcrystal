SwimmerfNikkiSeenText:
	text "Si je gagne, tu me"
	line "passes de la"
	cont "crème!"
	done

SwimmerfNikkiBeatenText:
	text "Les coups de"
	line "soleil c'est mal."
	done

SwimmermSethSeenText:
	text "Haahahahahhaa!"
	line "C'est la fête!"
	done

SwimmermSethBeatenText:
	text "Glug…"
	done

FisherArnoldSeenText:
	text "La pêche c'est"
	line "long. COMBAT!"
	done

FisherArnoldBeatenText:
	text "Tout perdu…"
	done

GenericTrainerBird_keeperEaston:
	generictrainer BIRD_KEEPER, EASTON, EVENT_BEAT_BIRD_KEEPER_EASTON, .SeenText, .BeatenText

	text "Les Ornithologues"
	line "utilisent des"
	cont "#mon Oiseaux."
	para "Mais peut-être"
	line "c'est l'inverse!"
	done

.SeenText:
	text "Les Ornithologues"
	line "connaissent les"
	cont "#mon oiseau!"
	done

.BeatenText:
	text "Pas tant que ça"
	line "finalement…"
	done


GenericTrainerBird_keeperKinsley:
	generictrainer BIRD_KEEPER, KINSLEY, EVENT_BEAT_BIRD_KEEPER_KINSLEY, .SeenText, .BeatenText

	text "Bah, on peut bien"
	line "s'entraîner à"
	cont "battre des bras,"
	cont "non?"
	done

.SeenText:
	text "En vivant entouré"
	line "de #mon"
	cont "oiseau, on croit"
	para "qu'on volera"
	line "comme eux!"
	done

.BeatenText:
	text "Je suis resté"
	line "cloué au sol…"
	done


GenericTrainerFisherArnold:
	generictrainer FISHER, ARNOLD, EVENT_BEAT_FISHER_ARNOLD, FisherArnoldSeenText, FisherArnoldBeatenText

	text "Je devrais"
	line "retourner à la"
	cont "pêche…"
	done


GenericTrainerFisherGideon:
	generictrainer FISHER, GIDEON, EVENT_BEAT_FISHER_GIDEON, .SeenText, .BeatenText

	text "Pourquoi tu as"
	line "décidé de devenir"
	cont "Dresseur?"
	done

.SeenText:
	text "Devient-on Pêcheur"
	line "parce qu'on est"
	para "patient? Ou"
	line "patient parce"
	para "qu'on pêche?"
	line "Telle est la"
	cont "question?"
	done

.BeatenText:
	text "Hum…"
	done


GenericTrainerFisherLiam:
	generictrainer FISHER, LIAM, EVENT_BEAT_FISHER_LIAM, .SeenText, .BeatenText

	text "Tu aurais pu"
	line "attendre que j'aie"
	para "remonté ma"
	line "touche!"
	done

.SeenText:
	text "Ah! J'ai une"
	line "touche!"
	para "…Quoi?"
	line "Un combat?"
	para "Pourquoi pas!"
	done

.BeatenText:
	text "Souviens-toi:"
	line "il ne faut pas"
	para "chasser deux"
	line "#mon à la fois!"
	done


GenericTrainerFisherMurphy:
	generictrainer FISHER, MURPHY, EVENT_BEAT_FISHER_MURPHY, .SeenText, .BeatenText

	text "Le #mon que"
	line "j'allais"
	para "attraper était"
	line "énorme, j'te jure!"
	done

.SeenText:
	text "On veut"
	line "attraper un"
	para "#mon et on"
	line "pêche un"
	cont "Dresseur!"
	done

.BeatenText:
	text "Ma ligne s'est"
	line "cassée!"
	done


GenericTrainerSwimmerfChelan:
	generictrainer SWIMMERF, CHELAN, EVENT_BEAT_SWIMMERF_CHELAN, .SeenText, .BeatenText

	text "Avec un bikini"
	line "chauffant, on"
	para "prend un choc"
	line "en nageant!"
	done

.SeenText:
	text "J'adore les"
	line "bikinis!"
	para "J'aimerais un"
	line "bikini chauffant"
	para "pour l'hiver!"
	done

.BeatenText:
	text "Naaaan!"
	done


GenericTrainerSwimmerfKendra:
	generictrainer SWIMMERF, KENDRA, EVENT_BEAT_SWIMMERF_KENDRA, .SeenText, .BeatenText

	text "Ils font des"
	line "maillots"
	para "pour les #mon?"
	done

.SeenText:
	text "Bonjour toi!"
	line "Tu veux pas un"
	line "maillot?"
	done

.BeatenText:
	text "J'ai perdu…"
	done


GenericTrainerSwimmermDuane:
	generictrainer SWIMMERM, DUANE, EVENT_BEAT_SWIMMERM_DUANE, .SeenText, .BeatenText

	text "Il faut que je"
	line "travaille"
	para "mon endurance"
	line "pour gagner!"
	done

.SeenText:
	text "La natation"
	line "fait travailler"
	para "tout le corps."
	line "C'est l'idéal"
	para "pour se muscler!"
	done

.BeatenText:
	text "Mes #mon et"
	line "moi, on n'a plus"
	cont "de force!"
	done


GenericTrainerSwimmermEsteban:
	generictrainer SWIMMERM, ESTEBAN, EVENT_BEAT_SWIMMERM_ESTEBAN, .SeenText, .BeatenText

	text "La ressemblance"
	line "était telle qu'on"
	cont "l'avait surnommé"
	cont "M. TETARTE!"
	done

.SeenText:
	text "Mon prof de"
	line "natation avait"
	para "la tête d'un"
	line "TETARTE!"
	done

.BeatenText:
	text "Pardon"
	line "professeur!"
	done


GenericTrainerSwimmermSeth:
	generictrainer SWIMMERM, SETH, EVENT_BEAT_SWIMMERM_SETH, SwimmermSethSeenText, SwimmermSethBeatenText

	text "Il y avait un"
	line "type arrogant"
	para "près du volcan"
	line "de CRAMOIS'ILE."
	done
