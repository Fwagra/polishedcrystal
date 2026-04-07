ShamoutiCoast_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 22, 15, FIRE_ISLAND, 1
	warp_event 54, 11, ICE_ISLAND, 1
	warp_event 84, 13, LIGHTNING_ISLAND, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  9, SPRITE_ARTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerArtistRin, -1
	object_event 12,  5, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerSwimmerfMarina, -1
	object_event 34,  9, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerFisherDallas, -1
	object_event 39, 13, SPRITE_LADY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerSightseerfPilar, -1
	object_event 66,  4, SPRITE_SIGHTSEER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerSightseersCyandvi1, -1
	object_event 67,  4, SPRITE_LADY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerSightseersCyandvi2, -1
	object_event 71, 16, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerSwimmermAshe, -1
	object_event  6, -3, SPRITE_LADY, SPRITEMOVEDATA_STANDING_DOWN, 0, 2, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
	itemball_event  6, 11, STAR_PIECE, 1, EVENT_SHAMOUTI_COAST_STAR_PIECE

GenericTrainerArtistRin:
	generictrainer ARTIST, RIN, EVENT_BEAT_ARTIST_RIN, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Les îles dégagent"
	line "une étrange"
	cont "puissance."

	para "Je veux capter ça"
	line "dans mon tableau."
	done
else
	text "There's a strange"
	line "sense of power"
	cont "from the islands."

	para "I want to capture"
	line "that in my paint-"
	cont "ing."
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Je peins les trois"
	line "îles!"

	para "Ne cache pas la"
	line "vue!"
	done
else
	text "I'm painting the"
	line "three islands!"

	para "Please don't block"
	line "my view!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Je peux pas"
	line "peindre et me"
	cont "battre à la fois."
	done
else
	text "I can't paint and"
	line "battle at the same"
	cont "time."
	done
endc

GenericTrainerSwimmerfMarina:
	generictrainer SWIMMERF, MARINA, EVENT_BEAT_SWIMMERF_MARINA, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Si j'étais échouée"
	line "sur une île,"

	para "j'emmènerais…"

	para "mes #MON, bien"
	line "sûr!"
	done
else
	text "If I were stran-"
	line "ded on a desert"
	cont "island, I'd take…"

	para "my #mon, of"
	line "course!"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Si tu étais échoué"
	line "sur une île,"

	para "tu prendrais quoi,"
	line "trois choses?"
	done
else
	text "If you were stran-"
	line "ded on a desert"
	cont "island, what three"

	para "things would you"
	line "bring?"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Emportée sans"
	line "rame!"
	done
else
	text "Washed away with-"
	line "out a paddle!"
	done
endc

GenericTrainerFisherDallas:
	generictrainer FISHER, DALLAS, EVENT_BEAT_FISHER_DALLAS, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Où que je pêche,"
	line "je ramène des"

	para "Capsules."

	para "Ca me rend dingue!"
	done
else
	text "No matter where I"
	line "fish, I just keep"

	para "reeling in Bottle"
	line "Caps."

	para "It's driving me"
	line "nuts!"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Gah! Encore une!"
	done
else
	text "Gah! Not another"
	line "one!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Hein? Oh, toi"
	line "ça va."
	done
else
	text "Huh? Oh, not you--"
	line "you're fine."
	done
endc

GenericTrainerSightseerfPilar:
	generictrainer SIGHTSEERF, PILAR, EVENT_BEAT_SIGHTSEERF_PILAR, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Qu'ils sont forts,"
	line "tes #MON!"

	para "Tu as dû beaucoup"
	line "voyager pour être"
	cont "si expérimenté."
	done
else
	text "¡Qué fuertes son"
	line "tus #mon!"

	para "Debes de haber"
	line "viajado un montón"

	para "para tener tanta"
	line "experiencia."
	done
endc

.SeenText:
	text "¡Hola! He venido"
	line "hasta acá desde"
	cont "muy lejos."

	para "¿Qué tal si"
	line "combatimos?"
	done

.BeatenText:
	text "Pensé que duraría"
	line "más…"
	done

GenericTrainerSightseersCyandvi1:
	generictrainer SIGHTSEERS, CYANDVI1, EVENT_BEAT_SIGHTSEERS_CY_AND_VI, .SeenText, .BeatenText

; text > text
	text "Cy: On voyage pour"
	line "se retrouver."
	done

.SeenText: ; text > text
	text "Cy: Le monde est"
	line "vaste, hein?"
	done

.BeatenText: ; text > text
	text "Cy: Oups…"
	done

GenericTrainerSightseersCyandvi2:
	generictrainer SIGHTSEERS, CYANDVI2, EVENT_BEAT_SIGHTSEERS_CY_AND_VI, .SeenText, .BeatenText

; text > text
	text "Vi: Et quelle mer!"
	done

.SeenText: ; text > text
	text "Vi: Combattons!"
	done

.BeatenText: ; text > text
	text "Vi: Dommage!"
	done

GenericTrainerSwimmermAshe:
	generictrainer SWIMMERM, ASHE, EVENT_BEAT_SWIMMERM_ASHE, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Je savais pas"
	line "nager avant."

	para "Maintenant je nage"
	line "tellement que"

	para "j'oublie ce que je"
	line "faisais avant."
	cont "Haha!"
	done
else
	text "I couldn't swim at"
	line "all a while ago."

	para "Now I do it so"
	line "much it's hard to"

	para "remember what I"
	line "did before. Haha!"
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Nager? Moi?"
	line "Ouais, j'adore."
	done
else
	text "Swimming? Me?"
	line "Yeah, I dig it."
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "J'ai cette impres-"
	line "sion de couler…"
	done
else
	text "I have that sink-"
	line "ing feeling…"
	done
endc

