PewterPokeCenter1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  5,  7, PEWTER_CITY, 4
	warp_event  6,  7, PEWTER_CITY, 4
	warp_event  0,  7, POKECENTER_2F, 1

	def_coord_events

	def_bg_events
	bg_event 10,  1, BGEVENT_READ, PokemonJournalBrockScript

	def_object_events
	pc_nurse_event  5, 1
	pokemon_event  2,  3, JIGGLYPUFF, SPRITEMOVEDATA_POKEMON, -1, PAL_NPC_PINK, PewterJigglypuffText, -1
	object_event  8,  2, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, trade, NPC_TRADE_CHRIS, -1
	object_event 11,  5, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, PewterPokeCenter1FTeacherText, -1
	object_event  3,  3, SPRITE_CHILD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, PewterPokeCenter1FChildText, -1

PokemonJournalBrockScript:
	setflag ENGINE_READ_BROCK_JOURNAL
	jumpthistext

if DEF(_LOCALE_FR)
	text "Journal #mon"

	para "Dossier special:"
	line "Pierre!"

	para "Pierre rit"
	line "rarement."

	para "Mais quand il"
	line "commence,"

	para "il ne peut"
	line "plus s'arreter."
	done
else
	text "#mon Journal"

	para "Special Feature:"
	line "Leader Brock!"

	para "Brock rarely"
	line "laughs, but is"

	para "said to be unable"
	line "to stop if he"
	cont "starts."
	done
endc

PewterJigglypuffText:
	text "Jigglypuff:"
	line "♪ Puu pupuu. ♪"
	done

PewterPokeCenter1FTeacherText:
if DEF(_LOCALE_FR)
	text "Et puis, tu sais,"
	line "l'Arène de"
	cont "Cramois'Ile,"

	para "eh bien elle"
	line "a disparu!"

	para "Moi aussi! J'en"
	line "reviens toujours"
	cont "pas!"

	para "… Quoi? J'suis"
	line "au téléphone,"
	cont "là!"

	para "Fiche-moi"
	line "la paix!"
	done
else
	text "…Yeah, and the"
	line "Gym in Cinnabar's"

	para "gone. I was really"
	line "amazed."

	para "…Yes? I'm on the"
	line "phone. Go away!"
	done
endc

PewterPokeCenter1FChildText:
if DEF(_LOCALE_FR)
	text "La plupart des"
	line "Pokémon"
	cont "s'endorment"

	para "en entendant"
	line "un RONDOUDOU"
	cont "chanter."

	para "Et il y a"
	line "certaines"
	cont "capacités"

	para "qu'un Pokémon"
	line "ne peut"
	cont "utiliser"

	para "qu'en dormant!"
	done
else
	text "Most #mon get"
	line "drowsy if they"

	para "hear a Jigglypuff"
	line "singing."

	para "There are several"
	line "moves that can be"

	para "used only while a"
	line "#mon is asleep."
	done
endc
