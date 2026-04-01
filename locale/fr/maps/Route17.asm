BikerReillySeenText:
	text "Hé, toi! Tu viens"
	line "de JOHTO, hein?"
	done

BikerReillyBeatenText:
	text "Ouah, tu assures!"
	done

BikerJoelSeenText:
	text "Oh! Elle est cool"
	line "ta BICYCLETTE!"
	done

BikerJoelBeatenText:
	text "Par contre, toi…"
	line "T'es pas cool."
	done

BikerGlennSeenText:
	text "Hé! Ca te dit un"
	line "chtit combat?"
	done

BikerGlennBeatenText:
	text "Ayaah! Toi t'es"
	line "pas naze!"
	done

BikerDaleSeenText:
	text "Tu vas perdre!"
	line "Je le sens!"
	done

BikerDaleBeatenText:
	text "Mon flair était"
	line "un peu faux…"
	done

BikerJacobSeenText:
	text "Ma bécane me"
	line "ruine!"
	para "Il me faut"
	line "un boulot!"
	done

BikerJacobBeatenText:
	text "Argh. J'ai raté!"
	done

BikerAidenSeenText:
	text "Vroum vroum!"
	line "Bribribribri!"
	para "Tu kiffes mon"
	line "bruit de moteur?"
	done

BikerAidenBeatenText:
	text "Hnnff… hnnff…"
	line "Je suis à plat…"
	done

BikerDanSeenText:
	text "Parara parapara"
	line "para-parara!"
	para "Mon klaxon"
	line "sonne bien, non?"
	done

BikerDanBeatenText:
	text "Paaraaraaaaa…"
	done

BikerTeddySeenText:
	text "Hé, ta BICYCLETTE"
	line "est cool!"
	done

BikerTeddyBeatenText:
	text "Bien joué."
	done

RoughneckBrianSeenText:
	text "Hé! Qui t'a dit"
	line "de rouler ici?"
	done

RoughneckBrianBeatenText:
	text "Crash!"
	done

RoughneckTheronSeenText:
	text "Je vais te"
	line "durcir. Viens"
	cont "avec moi."
	done

RoughneckTheronBeatenText:
	text "J'ai perdu!"
	line "J'ai perdu!"
	done

RoughneckMarkeySeenText:
	text "Hé hé hé!"
	line "T'es sur mon"
	cont "chemin!"
	para "BOUGE!"
	done

RoughneckMarkeyBeatenText:
	text "OK, merci!"
	done

Route17Notice1Text:
	text "ASTUCE"
	para "Attention aux"
	line "objets au sol!"
	done

Route17TrainerTips1Text:
	text "ASTUCE"
	para "Chaque #mon"
	line "est unique."
	para "Deux #mon de"
	line "même espece et"
	cont "niveau peuvent"
	para "être différents"
	line "en apparence,"
	cont "comportement"
	cont "et croissance."
	done

Route17TrainerTips2Text:
	text "ASTUCE"
	para "Ouvre le menu"
	line "START pour te"
	cont "figer sur une"
	cont "pente."
	done

Route17Notice2Text:
	text "Conseil d'ami."
	para "Ne lâche pas la"
	line "partie: lance des"
	cont "#ball!"
	done

GenericTrainerBikerAiden:
	generictrainer BIKER, AIDEN, EVENT_BEAT_BIKER_AIDEN, BikerAidenSeenText, BikerAidenBeatenText

	text "Gaon gaooon!"
	line "Bouaribaribari…!"

	para "Voila, mon bruit"
	line "de moteur a"
	cont "évolué!"
	done


GenericTrainerBikerDale:
	generictrainer BIKER, DALE, EVENT_BEAT_BIKER_DALE, BikerDaleSeenText, BikerDaleBeatenText

	text "Tu es trop cool!"
	line "Tu fais tout"
	cont "à fond!"
	done


GenericTrainerBikerDan:
	generictrainer BIKER, DAN, EVENT_BEAT_BIKER_DAN, BikerDanSeenText, BikerDanBeatenText

	text "J'adore cette"
	line "mélodie mélanco-"
	cont "lique."

	para "Elle me va"
	line "tellement bien…"
	done


GenericTrainerBikerGlenn:
	generictrainer BIKER, GLENN, EVENT_BEAT_BIKER_GLENN, BikerGlennSeenText, BikerGlennBeatenText

	text "Sans les mains,"
	line "c'est trop classe"
	cont "sur la PISTE"
	cont "CYCLABLE!"
	done


GenericTrainerBikerJacob:
	generictrainer BIKER, JACOB, EVENT_BEAT_BIKER_JACOB, BikerJacobSeenText, BikerJacobBeatenText

	text "Becane? Je"
	line "parlais de ma"
	cont "BICYCLETTE!"
	done


GenericTrainerBikerJoel:
	generictrainer BIKER, JOEL, EVENT_BEAT_BIKER_JOEL, BikerJoelSeenText, BikerJoelBeatenText

	text "J'ai l'air cool,"
	line "mais je suis"
	cont "faible… pas si"
	cont "cool."

	para "Je dois"
	line "m'entrainer…"
	done


GenericTrainerBikerTeddy:
	generictrainer BIKER, TEDDY, EVENT_BEAT_BIKER_TEDDY, BikerTeddySeenText, BikerTeddyBeatenText

	text "J'adore aussi ton"
	line "style au combat!"

	cont "Je suis fan!"
	done


GenericTrainerRoughneckBrian:
	generictrainer ROUGHNECK, BRIAN, EVENT_BEAT_ROUGHNECK_BRIAN, RoughneckBrianSeenText, RoughneckBrianBeatenText

	text "A plus tard!"
	line "Reviens quand tu"
	cont "veux!"
	done


GenericTrainerRoughneckMarkey:
	generictrainer ROUGHNECK, MARKEY, EVENT_BEAT_ROUGHNECK_MARKEY, RoughneckMarkeySeenText, RoughneckMarkeyBeatenText

	text "OK!"

	para "Ton cri de combat"
	line "était génial!"
	done


GenericTrainerRoughneckTheron:
	generictrainer ROUGHNECK, THERON, EVENT_BEAT_ROUGHNECK_THERON, RoughneckTheronSeenText, RoughneckTheronBeatenText

	text "Tu veux rejoindre"
	line "mon équipe?"

	para "Tu veux"
	line "essayer?"
	done
