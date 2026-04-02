OlivineLighthouse4F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 13,  3, OLIVINE_LIGHTHOUSE_3F, 1
	warp_event  3,  5, OLIVINE_LIGHTHOUSE_5F, 2
	warp_event  9,  7, OLIVINE_LIGHTHOUSE_5F, 3
	warp_event  9,  5, OLIVINE_LIGHTHOUSE_3F, 3
	warp_event 16,  9, OLIVINE_LIGHTHOUSE_3F, 6
	warp_event 17,  9, OLIVINE_LIGHTHOUSE_3F, 7
	warp_event  8,  3, OLIVINE_LIGHTHOUSE_3F, 8
	warp_event  9,  3, OLIVINE_LIGHTHOUSE_3F, 9
	warp_event 16,  7, OLIVINE_LIGHTHOUSE_5F, 4
	warp_event 17,  7, OLIVINE_LIGHTHOUSE_5F, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  7, 14, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerSailorKent, -1
	object_event 11,  2, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 1, GenericTrainerLassConnie, EVENT_OLIVINE_LIGHTHOUSE_JASMINE

GenericTrainerLassConnie:
	generictrainer LASS, CONNIE, EVENT_BEAT_LASS_CONNIE, LassConnieSeenText, LassConnieBeatenText

if DEF(_LOCALE_FR)
	text "Chaque dresseur"
	line "est responsable de"
	cont "la santé de ses"
	cont "#MON."

	para "Je prie pour le"
	line "#MON, ainsi"

	para "JASMINE reviendra"
	line "à l'ARENE."
	done
else
	text "Right. Anybody"
	line "would be worried"

	para "if their own #-"
	line "mon were hurt."

	para "I'll pray for the"
	line "#mon here, so"

	para "Jasmine can come"
	line "back to the Gym."
	done
endc

TrainerSailorKent:
	trainer SAILOR, KENT, EVENT_BEAT_SAILOR_KENT, SailorKentSeenText, SailorKentBeatenText, 0, SailorKentScript

SailorKentScript:
	endifjustbattled
	checkevent EVENT_JASMINE_RETURNED_TO_GYM
	iftrue_jumptextfaceplayer SailorKentFinalText
	jumptextfaceplayer SailorKentAfterBattleText

SailorKentSeenText:
if DEF(_LOCALE_FR)
	text "JASMINE doit"
	line "s'inquiéter à pro-"
	cont "pos du #MON."

	para "Elle ne sourit"
	line "même plus."
	done
else
	text "Jasmine must be"
	line "worried sick about"
	cont "the #mon here."

	para "She won't even"
	line "smile these days."
	done
endc

SailorKentBeatenText:
if DEF(_LOCALE_FR)
	text "Moi non plus..."
	line "J'souris plus..."
	done
else
	text "I can't manage a"
	line "smile either…"
	done
endc

SailorKentAfterBattleText:
if DEF(_LOCALE_FR)
	text "Au fait, je crois"
	line "qu'il y a une bon-"

	para "ne PHARMACIE à"
	line "IRISIA."
	done
else
	text "Speaking of sick,"
	line "I've heard there's"

	para "a good Pharmacy in"
	line "Cianwood."
	done
endc

SailorKentFinalText:
	text "The #mon here"
	line "is well again."

	para "Cianwood Pharmacy"
	line "lived up to its"
	cont "reputation!"
	done

LassConnieSeenText:
if DEF(_LOCALE_FR)
	text "JASMINE est la"
	line "CHAMPIONNE de"
	cont "cette ville."

	para "Et moi j'suis plus"
	line "forte qu'elle."

	para "Et ça... Tu vas"
	line "le comprendre!"
	done
else
	text "Jasmine is this"
	line "city's Gym Leader."

	para "I mean to bring"
	line "her back with me."

	para "Nobody had better"
	line "get in my way!"
	done
endc

LassConnieBeatenText:
if DEF(_LOCALE_FR)
	text "Aaah! Mes #MON!"
	done
else
	text "Aaack! My #mon!"
	done
endc

