PokefanmTrevorSeenText:
	text "Le savais-tu?"

	para "Les #mon sont"
	line "plus amicaux s'ils"

	para "sont entraînés"
	line "dans un endroit"
	cont "familier."
	done

PokefanmTrevorBeatenText:
	text "Où ai-je rencontré"
	line "ce PSYKOKWAK?"
	done

PokefanmCarterSeenText:
	text "J'ai eu du mal à"
	line "attraper mes #-"

	para "MON rares et super"
	line "jolis."
	done

PokefanmCarterBeatenText:
	text "Awaaah!"
	done

Bird_keeperRoySeenText:
	text "Je rêve de voler"
	line "avec mes amis les"
	cont "#mon oiseau."
	done

Bird_keeperRoyBeatenText:
	text "Je rêve, mais je"
	line "ne peux voler…"
	done

GenericTrainerBird_keeperJosh:
	generictrainer BIRD_KEEPER, BIRD_KEEPER_JOSH, EVENT_BEAT_BIRD_KEEPER_JOSH, .SeenText, .BeatenText

	text "Je devrais dire"
	line "que je suis"
	cont "poids lourd…"
	done

.SeenText:
	text "Je suis un"
	line "poids plume!"
	para "…Hein? C'est pas"
	line "assez costaud?"
	done

.BeatenText:
	text "Je me suis envolé…"
	done


GenericTrainerBird_keeperRoy:
	generictrainer BIRD_KEEPER, ROY, EVENT_BEAT_BIRD_KEEPER_ROY, Bird_keeperRoySeenText, Bird_keeperRoyBeatenText

	text "Tu as des #mon"
	line "qui ont appris la"
	para "CS VOL, non? Tu as"
	line "trop de chance."
	done


GenericTrainerPokefanmCarter:
	generictrainer POKEFANM, CARTER, EVENT_BEAT_POKEFANM_CARTER, PokefanmCarterSeenText, PokefanmCarterBeatenText

	text "CARAPUCE,"
	line "SALAMECHE et"
	cont "BULBIZARRE…"
	para "C'est bien"
	line "équilibré."
	done


GenericTrainerSchoolboyConnor:
	generictrainer SCHOOLBOY, SCHOOLBOY_CONNOR, EVENT_BEAT_SCHOOLBOY_CONNOR, .SeenText, .BeatenText

	text "Ne te presse pas,"
	line "avance pas à pas."
	para "Bon conseil!"
	done

.SeenText:
	text "J'ai hâte de"
	line "rentrer vider mon"
	cont "SAC!"
	done

.BeatenText:
	text "J'étais trop"
	line "pressé."
	done


GenericTrainerSchoolboyTorin:
	generictrainer SCHOOLBOY, TORIN, EVENT_BEAT_SCHOOLBOY_TORIN, .SeenText, .BeatenText

	text "D'accord! La"
	line "prochaine fois,"
	cont "sans erreur!"
	done

.SeenText:
	text "Applique tout de"
	line "suite ce que tu"
	cont "apprends!"
	done

.BeatenText:
	text "Je vois… je vois."
	done


GenericTrainerSchoolboyTravis:
	generictrainer SCHOOLBOY, TRAVIS, EVENT_BEAT_SCHOOLBOY_TRAVIS, .SeenText, .BeatenText

	text "Je devrais"
	line "réviser avec toi!"
	done

.SeenText:
	text "Tu révises après"
	line "les cours?"
	done

.BeatenText:
	text "T'es fortiche…"
	done


GenericTrainerTeacherClarice:
	generictrainer TEACHER_F, CLARICE, EVENT_BEAT_TEACHER_CLARICE, .SeenText, .BeatenText

	text "Ne te relâche pas"
	line "après ta victoire."
	para "En rentrant, fais"
	line "une révision!"
	done

.SeenText:
	text "Allez, c'est"
	line "parti pour un"
	cont "combat #mon!"
	done

.BeatenText:
	text "Voilà! Fin du"
	line "combat du jour."
	done

