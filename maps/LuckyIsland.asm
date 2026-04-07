LuckyIsland_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, Script_ChangeLuckyIslandMap

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
	object_event 27, 18, SPRITE_BALL_CUT_TREE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_POKE_BALL, OBJECTTYPE_SCRIPT, 0, LuckyIslandLuckyEgg, EVENT_LUCKY_ISLAND_LUCKY_EGG
	object_event 29,  6, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerFisherHall, EVENT_LUCKY_ISLAND_CIVILIANS
	object_event 21, 16, SPRITE_BAKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerBakerMargaret, EVENT_LUCKY_ISLAND_CIVILIANS
	object_event 32, 23, SPRITE_BAKER, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerBakerOlga, EVENT_LUCKY_ISLAND_CIVILIANS
	object_event 20, 21, SPRITE_ARTIST, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerArtistReina, EVENT_LUCKY_ISLAND_CIVILIANS
	object_event 36, 16, SPRITE_ARTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 4, GenericTrainerArtistAlina, EVENT_LUCKY_ISLAND_CIVILIANS
	object_event 23, 11, SPRITE_SIGHTSEER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerSightseersLiandsu1, EVENT_LUCKY_ISLAND_CIVILIANS
	object_event 23, 12, SPRITE_LADY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerSightseersLiandsu2, EVENT_LUCKY_ISLAND_CIVILIANS
	fruittree_event 25, 16, FRUITTREE_LUCKY_ISLAND, JABOCA_BERRY, PAL_NPC_YELLOW, MORN, EVENT_LUCKY_ISLAND_CIVILIANS
	fruittree_event 25, 16, FRUITTREE_LUCKY_ISLAND, ROWAP_BERRY, PAL_NPC_TEAL, DAY, EVENT_LUCKY_ISLAND_CIVILIANS
	fruittree_event 25, 16, FRUITTREE_LUCKY_ISLAND, KEE_BERRY, PAL_NPC_PINK, EVE, EVENT_LUCKY_ISLAND_CIVILIANS
	fruittree_event 25, 16, FRUITTREE_LUCKY_ISLAND, MARANGABERRY, PAL_NPC_BROWN, NITE, EVENT_LUCKY_ISLAND_CIVILIANS

	object_const_def
	const LUCKYISLAND_POKE_BALL

Script_ChangeLuckyIslandMap:
	special CheckIfTrendyPhraseIsLucky
	iftruefwd .show
	changemapblocks LuckyIslandHidden_BlockData
	setevent EVENT_LUCKY_ISLAND_CIVILIANS
.hide_poke_ball
	setevent EVENT_LUCKY_ISLAND_LUCKY_EGG
	endcallback

.show
	changemapblocks LuckyIsland_BlockData
	clearevent EVENT_LUCKY_ISLAND_CIVILIANS
	checkevent EVENT_GOT_LUCKY_EGG_FROM_LUCKY_ISLAND
	iftrue .hide_poke_ball
	clearevent EVENT_LUCKY_ISLAND_LUCKY_EGG
	endcallback

GenericTrainerFisherHall:
	generictrainer FISHER, HALL, EVENT_BEAT_FISHER_HALL, .SeenText, .BeatenText

	text "T'as aucun humour."
	done

.SeenText:
	text "DOPEFISH vit!"
	done

.BeatenText:
	text "Nage, nage, faim!"
	line "Nage, nage, faim!"
	done

GenericTrainerBakerMargaret:
	generictrainer BAKER, MARGARET, EVENT_BEAT_BAKER_MARGARET, .SeenText, .BeatenText

	text "Je suis crevée."
	done

.SeenText:
	text "Un OEUF qui roule,"
	line "c'est un roulé?"
	done

.BeatenText:
	text "C'est moi le"
	line "roulé…"
	done

GenericTrainerBakerOlga:
	generictrainer BAKER, OLGA, EVENT_BEAT_BAKER_OLGA, .SeenText, .BeatenText

	text "Pour être en"
	line "forme:"

	para "un bon p'tit dej."
	done

.SeenText:
	text "Hé, toi!"
	line "Tu prends un bon"
	cont "p'tit dej?"
	done

.BeatenText:
	text "Wow! On dirait"
	line "que oui."
	done

GenericTrainerArtistReina:
	generictrainer ARTIST, REINA, EVENT_BEAT_ARTIST_REINA, .SeenText, .BeatenText

	text "Je cache ça avec"
	line "un p'tit arbre."
	done

.SeenText:
	text "Ce pré sera un"
	line "super tableau!"
	done

.BeatenText:
	text "Mon pinceau a"
	line "glissé!"
	done

GenericTrainerArtistAlina:
	generictrainer ARTIST, ALINA, EVENT_BEAT_ARTIST_ALINA, .SeenText, .BeatenText

	text "Pourquoi cette île"
	line "apparaît?"
	done

.SeenText:
	text "Cette île est rare."

	para "J'ai eu de la"
	line "chance!"
	done

.BeatenText:
	text "Plus de chance…"
	done

GenericTrainerSightseersLiandsu1:
	generictrainer SIGHTSEERS, LIANDSU1, EVENT_BEAT_SIGHTSEERS_LI_AND_SU, .SeenText, .BeatenText

	text "Li: On se dispute"
	line "sans arrêt."
	done

.SeenText:
	text "Li: Qui est né"
	line "en premier?"

	para "#MON ou OEUF?"
	done

.BeatenText:
if DEF(_LOCALE_FR)
	text "Li: Je dis que"
	line "c'est le #MON!"
	done
else
	text "Li: I say it's the"
	line "#mon!"
	done
endc

GenericTrainerSightseersLiandsu2:
	generictrainer SIGHTSEERS, LIANDSU2, EVENT_BEAT_SIGHTSEERS_LI_AND_SU, .SeenText, .BeatenText

	text "Su: Des #MON"
	line "sans OEUF?"
	done

.SeenText:
	text "Su: Qui est né"
	line "en premier?"

	para "#MON ou OEUF?"
	done

.BeatenText:
	text "Su: L'OEUF,"
	line "d'abord!"
	done

LuckyIslandLuckyEgg:
	giveitem LUCKY_EGG
	iffalsefwd .NoRoom
	disappear LUCKYISLAND_POKE_BALL
	setevent EVENT_GOT_LUCKY_EGG_FROM_LUCKY_ISLAND
	opentext
	writetext .Text
	special ShowItemIcon
	playsound SFX_ITEM
	pause 60
	itemnotify
	endtext

.NoRoom:
	opentext
	writetext .Text
	waitbutton
	pocketisfull
	endtext

.Text:
	text "<PLAYER> trouve"
	line "OEUF CHANCE!"
	done
