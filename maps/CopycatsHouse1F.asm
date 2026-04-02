CopycatsHouse1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, SAFFRON_CITY, 8
	warp_event  3,  7, SAFFRON_CITY, 8
	warp_event  3,  0, COPYCATS_HOUSE_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, CopycatsHouse1FPokefanMText, -1
	object_event  5,  4, SPRITE_MATRON, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CopycatsHouse1FPokefanFScript, -1
	pokemon_event  4,  5, BLISSEY, SPRITEMOVEDATA_POKEMON, -1, PAL_NPC_PINK, CopycatsHouse1FBlisseyText, -1

CopycatsHouse1FPokefanMText:
if DEF(_LOCALE_FR)
	text "Ma fille aime imi-"
	line "ter les gens."

	para "On l'appelle la"
	line "COPIEUSE."
	done
else
	text "My daughter likes"
	line "to mimic people."

	para "Her mimicry has"
	line "earned her the"

	para "nickname Copycat"
	line "around here."
	done
endc

CopycatsHouse1FPokefanFScript:
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftrue_jumptextfaceplayer .Text2
	jumpthistextfaceplayer

if DEF(_LOCALE_FR)
	text "Ma fille est très"
	line "égocentrique..."

	para "Elle n'a pas beau-"
	line "coup d'amis."
	done
else
	text "My daughter is so"
	line "self-centered…"

	para "She only has a few"
	line "friends."
	done
endc

.Text2:
if DEF(_LOCALE_FR)
	text "Elle a perdu la"
	line "# POUPEE qu'un"

	para "garçon lui a don-"
	line "née il y a 3 ans."

	para "Et depuis, elle"
	line "imite encore mieux"
	cont "qu'avant..."
	done
else
	text "She recently lost"
	line "the # Doll that"

	para "a boy gave her"
	line "three years ago."

	para "Ever since then,"
	line "she's gotten even"
	cont "better at mimicry…"
	done
endc

CopycatsHouse1FBlisseyText:
if DEF(_LOCALE_FR)
	text "LEUPHORIE: Rriii!"
	done
else
	text "Blissey: Bliisii!"
	done
endc
