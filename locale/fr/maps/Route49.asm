Route49LadyText:
	text "Regardez l'herbe"
	line "et les arbres!"

	para "VALENCIA regorge"
	line "de flore unique."
	done

Route49YoungsterText:
	text "Ce paysage me"
	line "donne l'impression"

	para "d'etre un aventu-"
	line "rier au milieu"
	cont "de la jungle!"
	done

GenericTrainerSightseermHari:
	generictrainer SIGHTSEERM, HARI, EVENT_BEAT_SIGHTSEERM_HARI, .SeenText, .BeatenText

	text "Je voyage pour"
	line "rencontrer tous"

	para "les Prof.  #mon."

	para "Tu veux voir mes"
	line "photos?"
	done

.SeenText:
	text "Hé! Je suis venu"
	line "voir le Prof.Ivy!"
	done

.BeatenText:
	text "Quoi? Tu la"
	line "connais déjà?"
	done

GenericTrainerTamerJordan:
	generictrainer TAMER, JORDAN, EVENT_BEAT_TAMER_JORDAN, .SeenText, .BeatenText

	text "Comment tu as si"
	line "bien domptés tes"
	cont "#mon?"

	para "Ils sont forts,"
	line "mais calmes en"
	cont "meme temps."
	done

.SeenText:
	text "Attention! Les"
	line "#mon ici peuvent"
	cont "être sauvages!"
	done

.BeatenText:
	text "Wow! Les tiens"
	line "sont plus sauvages."
	done

GenericTrainerAromaLadyPeony:
	generictrainer AROMA_LADY, PEONY, EVENT_BEAT_AROMA_LADY_PEONY, .SeenText, .BeatenText

	text "Mon FLORGES adore"
	line "vivre sur cette"

	para "petite île"
	line "paisible."
	done

.SeenText:
	text "Tu veux voir"
	line "mon FLORGES?"
	done

.BeatenText:
	text "Oh… FLORGES"
	line "ne voulait pas"
	cont "se battre…"
	done

GenericTrainerGuitaristmGeddy:
	generictrainer GUITARISTM, GEDDY, EVENT_BEAT_GUITARISTM_GEDDY, .SeenText, .BeatenText

	text "Tu crois que je"
	line "joue d'une"
	cont "guitare? Non!"

	para "C'est une basse"
	line "a 6 cordes."
	done

.SeenText:
	text "J'aurais pu"
	line "mieux vivre ma"

	para "vie, j'imagine…"

	para "C'est pour ca"
	line "qu'on m'appelle…"

	para "L'homme qui"
	line "travaille!"
	done

.BeatenText:
	text "Bon combat!"
	line "J'en ferai"
	cont "peut-être une"
	cont "chanson."
	done

Route49SignText:
	text "ROUTE 49"
	line "ILE VALENCIA"
	done
