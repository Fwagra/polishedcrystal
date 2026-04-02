ElmsHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  7,  4, NEW_BARK_TOWN, 5
	warp_event  7,  5, NEW_BARK_TOWN, 5

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_JUMPTEXT, ElmsHouseFridgeText
	bg_event  6,  1, BGEVENT_JUMPTEXT, ElmsHousePCText
	bg_event  7,  1, BGEVENT_JUMPSTD, difficultbookshelf

	def_object_events
	object_event  1,  5, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_UP_DOWN, 1, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, ElmsWifeText, -1
	object_event  4,  5, SPRITE_CHILD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, ElmsSonText, -1

ElmsWifeText:
if DEF(_LOCALE_FR)
	text "Salut <PLAYER>!"
	line "Mon mari est tout"

	para "le temps occupé."
	line "J'espère qu'il va"

	para "bien."
	line "Quand il fait de"

	para "la recherche sur"
	line "les #mon, il"

	para "oublie même de"
	line "manger."
else
	text "Hi, <PLAYER>! My"
	line "husband's always"

	para "so busy--I hope"
	line "he's OK."

	para "When he's caught"
	line "up in his #mon"

	para "research, he even"
	line "forgets to eat."
endc
	done

ElmsSonText:
if DEF(_LOCALE_FR)
	text "Quand je serai"
	line "grand, j'aiderai"
	cont "mon papa!"

	para "Je serai un sacre"
	line "professeur #-"
	cont "mon super fort!"
else
	text "When I grow up,"
	line "I'm going to help"
	cont "my dad!"

	para "I'm going to be a"
	line "great #mon"
	cont "professor!"
endc
	done

ElmsHouseFridgeText:
if DEF(_LOCALE_FR)
	text "Il y a de la"
	line "nourriture. C'est"

	para "surement pour les"
	line "#mon."
else
	text "There's some food"
	line "here. This must be"
	cont "for #mon."
endc
	done

ElmsHousePCText:
if DEF(_LOCALE_FR)
	text "Les #mon…"
	line "D'ou viennent-"

	para "ils?"
	line "Ou vont-ils?"

	para "Nul n'a jamais vu"
	line "la naissance"

	para "d'un #mon!"
	line "Je veux tout"

	para "savoir! Je dedie"
	line "ma vie a leur"

	para "etude!"
	line "…"

	para "C'est une note du"
	line "Prof. Orme."
else
	text "#mon. Where do"
	line "they come from?"

	para "Where are they"
	line "going?"

	para "Why has no one"
	line "ever witnessed a"
	cont "#mon's birth?"

	para "I want to know! I"
	line "will dedicate my"

	para "life to the study"
	line "of #mon!"

	para "…"

	para "It's a part of"
	line "Prof.Elm's re-"
	cont "search papers."
endc
	done
