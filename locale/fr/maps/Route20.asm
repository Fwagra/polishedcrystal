SwimmerfNicoleSeenText:
	text "On est léger dans"
	line "l'eau…"
	done

SwimmerfNicoleBeatenText:
	text "Oh, non!"
	done

SwimmerfLoriSeenText:
	text "Quelle belle"
	line "collection de"

	para "BADGES. On se fait"
	line "un p'tit combat?"
	done

SwimmermCameronSeenText:
	text "Ca doit être"
	line "impossible de"

	para "nager jusqu'à"
	line "JOHTO."
	done

SwimmermCameronBeatenText:
	text "Aiyah!"
	done

CinnabarGymSignText:
	text "Tiens!"
	line "Une pancarte…"

	para "CHAMPION d'ARENE"
	line "de CRAMOIS'ILE:"
	cont "AUGUSTE"
	done

SeafoamIslandsSignText:
	text "ILES ECUME"
	done

GenericTrainerBird_keeperBert:
	generictrainer BIRD_KEEPER, BERT, EVENT_BEAT_BIRD_KEEPER_BERT, .SeenText, .BeatenText

	text "T'es vraiment"
	line "incroyable!"
	para "J'en ai la chair"
	line "de poule!"
	done

.SeenText:
	text "Enfin!"
	line "Un dresseur va"
	cont "me distraire,"
	cont "on dirait!"
	done

.BeatenText:
	text "J'ai perdu sur"
	line "toute la ligne!"
	done


GenericTrainerBird_keeperErnie:
	generictrainer BIRD_KEEPER, ERNIE, EVENT_BEAT_BIRD_KEEPER_ERNIE, .SeenText, .BeatenText

	text "T'es pas"
	line "quelqu'un"
	cont "d'ordinaire,"
	cont "toi!"
	done

.SeenText:
	text "Hé, hé!"
	line "Un p'tit combat"
	cont "contre moi,"
	cont "ça te dit?"
	done

.BeatenText:
	text "C'était"
	line "quelque chose…"
	done


GenericTrainerCamperPedro:
	generictrainer CAMPER, PEDRO, EVENT_BEAT_CAMPER_PEDRO, .SeenText, .BeatenText

	text "Si tu oublies ta"
	line "couverture,"
	para "blottis-toi contre"
	line "un #mon chaud!"
	done

.SeenText:
	text "T'as déjà fait"
	line "du camping avec"
	cont "#mon?"
	done

.BeatenText:
	text "Ouh là là!"
	done


GenericTrainerPicnickerAdrian:
	generictrainer PICNICKER, ADRIAN, EVENT_BEAT_PICNICKER_ADRIAN, .SeenText, .BeatenText

	text "J'ai perdu,"
	line "mais j'me suis"
	cont "bien amusé!"
	done

.SeenText:
	text "T'as un train"
	line "à prendre?"
	para "Fais donc une"
	line "pause combat!"
	done

.BeatenText:
	text "Ah, déjà?"
	done


GenericTrainerPicnickerCheyenne:
	generictrainer PICNICKER, CHEYENNE, EVENT_BEAT_PICNICKER_CHEYENNE, .SeenText, .BeatenText

	text "Pas trop grave"
	line "si je perds,"
	cont "mon #mon est"
	cont "toujours là!"
	done

.SeenText:
	text "Petite, je jouais"
	line "dans la maison."
	para "Là, j'adore"
	line "jouer dehors"
	cont "avec mon #mon!"
	done

.BeatenText:
	text "Mais!"
	done


GenericTrainerSwimmerfLeona:
	generictrainer SWIMMERF, LEONA, EVENT_BEAT_SWIMMERF_LEONA, .SeenText, .BeatenText

	text "Ce ne serait pas"
	line "le dernier #mon"
	para "à la mode que"
	line "tu as là?"
	done

.SeenText:
	text "J'ai mon plus"
	line "beau bikini"
	para "et mon plus beau"
	line "#mon!"
	done

.BeatenText:
	text "Ohhh!"
	done


GenericTrainerSwimmerfLori:
	generictrainer SWIMMERF, LORI, EVENT_BEAT_SWIMMERF_LORI, SwimmerfLoriSeenText, SwimmerfLoriBeatenText

	text "SURF n'est plus"
	line "la seule CS que"
	cont "tu utilises dans"
	cont "l'eau."
	done


GenericTrainerSwimmerfMayu:
	generictrainer SWIMMERF, MAYU, EVENT_BEAT_SWIMMERF_MAYU, .SeenText, .BeatenText

	text "J'essayais de voir"
	line "combien de temps"
	para "je peux retenir"
	line "mon souffle!"
	done

.SeenText:
	text "Mmph? Mmmph"
	line "mmmmphh?"
	para "Mmmmph"
	line "mmmmmppphh!"
	done

.BeatenText:
	text "Pwah!"
	done


GenericTrainerSwimmermCameron:
	generictrainer SWIMMERM, CAMERON, EVENT_BEAT_SWIMMERM_CAMERON, SwimmermCameronSeenText, SwimmermCameronBeatenText

	text "En plus de la mer,"
	line "je nage aussi"
	cont "dans les étangs"
	cont "et rivières."
	done


GenericTrainerSwimmermElmo:
	generictrainer SWIMMERM, ELMO, EVENT_BEAT_SWIMMERM_ELMO, .SeenText, .BeatenText

	text "Je devrais"
	line "retourner à la"
	cont "pêche…"
	done

.SeenText:
	text "Avant, j'étais"
	line "un Pêcheur."
	para "Comme j'aime"
	line "la natation,"
	para "je suis devenu"
	line "un Nageur."
	done

.BeatenText: ; text > text
	text "Gloup, gloup…"
	done


GenericTrainerSwimmermLuis:
	generictrainer SWIMMERM, SWIMMERM_LUIS, EVENT_BEAT_SWIMMERM_LUIS, .SeenText, .BeatenText

	text "C'est décidé!"
	para "La prochaine"
	line "fois, je mettrai"
	cont "mon maillot de"
	cont "fête!"
	done

.SeenText:
	text "J'ai mis mon"
	line "maillot du"
	cont "dimanche!"
	done

.BeatenText:
	text "Même avec un"
	line "super maillot,"
	cont "on ne gagne"
	cont "pas toujours!"
	done


SwimmerfLoriBeatenText:
	text "Non!"
	done
