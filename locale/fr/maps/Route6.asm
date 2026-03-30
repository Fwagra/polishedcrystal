PokefanmRexSeenText:
	text "Mon PHANPY est le"
	line "plus beau du"
	cont "monde."
	done

PokefanmRexBeatenText:
	text "Mon PHANPY!"
	done

PokefanmAllanSeenText:
	text "Mon TEDDIURSA est"
	line "le plus beau du"
	cont "monde."
	done

PokefanmAllanBeatenText:
	text "Mon TEDDIURSA!"
	done

TwinsDayanddani1SeenText:
	text "Day: Tu vas nous"
	line "battre?"
	done

TwinsDayanddani1BeatenText:
	text "Day: Ouinnn!"
	done

TwinsDayanddani2SeenText:
	text "Dani: On va te"
	line "laminer!"
	done

TwinsDayanddani2BeatenText:
	text "Dani: Oooooh!"
	done

Route6PokefanMText:
	text "La route sera"
	line "fermée tant que le"

	para "problème à la"
	line "CENTRALE ne sera"
	cont "pas résolu."
	done

Route6UndergroundPathSignText:
	text "SOUTERRAIN"

	para "AZURIA -"
	line "CARMIN SUR MER"
	done

Route6AdvancedTipsSignText:
	text "Astuces !"
	para "Certains objets"
	line "semblent nuire au"
	para "porteur, comme la"
	line "BALLE FER ou le"
	para "MOUCH. CHOIX."
	para "Mais TOURMAGIK"
	line "permet d'échanger"
	para "son objet avec"
	line "l'adversaire!"
	done

GenericTrainerGuitaristfWanda:
	generictrainer GUITARISTF, WANDA, EVENT_BEAT_GUITARISTF_WANDA, .SeenText, .BeatenText

	text "Passe ton chemin…"
	done

.SeenText:
	text "Tu ferais mieux"
	line "de t'enfuir!"
	done

.BeatenText:
	text "Le combat est"
	line "perdu, pas gagné…"
	done


GenericTrainerPokefanmAllan:
	generictrainer POKEFANM, ALLAN, EVENT_BEAT_POKEFANM_ALLAN, PokefanmAllanSeenText, PokefanmAllanBeatenText

	text "Mon TEDDIURSA est"
	line "trop mimi!"

	para "Tu trouves pas?"
	done


GenericTrainerTwinsDayanddani1:
	generictrainer TWINS, DAYANDDANI1, EVENT_BEAT_TWINS_DAY_AND_DANI, TwinsDayanddani1SeenText, TwinsDayanddani1BeatenText

	text "Day: Tu nous as"
	line "battus…"
	done


GenericTrainerTwinsDayanddani2:
	generictrainer TWINS, DAYANDDANI2, EVENT_BEAT_TWINS_DAY_AND_DANI, TwinsDayanddani2SeenText, TwinsDayanddani2BeatenText

	text "Dani: On s'est"
	line "fait éjecter."
	done


GenericTrainerYoungsterChaz:
	generictrainer YOUNGSTER, CHAZ, EVENT_BEAT_YOUNGSTER_CHAZ, .SeenText, .BeatenText

	text "Moi et ma grande"
	line "bouche…"
	done

.SeenText:
	text "Un dresseur fort?"
	para "Non, juste de la"
	line "racaille ici!"
	done

.BeatenText:
	text "La racaille,"
	line "c'est moi…"
	done


OfficerfJennyScript:
	checktime 1 << NITE
	iffalse_jumptextfaceplayer .DaytimeText
	checkevent EVENT_BEAT_OFFICERF_JENNY
	iftrue_jumptextfaceplayer .AfterText
	faceplayer
	opentext
	special SaveMusic
	playmusic MUSIC_OFFICER_ENCOUNTER
	writetext .SeenText
	waitbutton
	closetext
	winlosstext .BeatenText, 0
	loadtrainer OFFICERF, JENNY
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_OFFICERF_JENNY
	endtext

.DaytimeText:
	text "Nous les Officiers"
	line "maintenons l'ordre"
	cont "et la paix."
	done

.SeenText:
	text "Je ne te connais"
	line "pas."

	para "La Brigade"
	line "Carapuce, attaque!"
	done

.BeatenText:
	text "Brigade Carapuce,"
	line "en retraite…"
	done

.AfterText:
	text "Désolée de t'avoir"
	line "dérangé."

	para "Je suis nerveuse"
	line "la nuit."
	done
