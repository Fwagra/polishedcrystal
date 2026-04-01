ViridianSchoolHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  9, VIRIDIAN_CITY, 8
	warp_event  3,  9, VIRIDIAN_CITY, 8

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_JUMPTEXT, ViridianSchoolHouseBlackboardText
	bg_event  6,  1, BGEVENT_READ, PokemonJournalKiyoScript
	bg_event  7,  1, BGEVENT_READ, PokemonJournalKiyoScript

	def_object_events
	object_event  4,  1, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, ViridianSchoolHouseTeacherText, -1
	object_event  3,  3, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptext, ViridianSchoolHouseNotesText, -1
	object_event  3,  4, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, ViridianSchoolHouseLass1Text, -1
	object_event  5,  4, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, ViridianSchoolHouseYoungsterScript, -1
	object_event  2,  6, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, ViridianSchoolHouseLass2Text, -1
	object_event  3,  6, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ViridianSchoolHouseGameBoyKidScript, -1

ViridianSchoolHouseTeacherText:
if DEF(_LOCALE_FR)
	text "Je sais, c'est"
	line "beaucoup, mais"

	para "écoute bien!"
	done
else
	text "I know this is a"
	line "lot of material,"

	para "but please pay"
	line "attention!"
	done
endc

ViridianSchoolHouseNotesText:
if DEF(_LOCALE_FR)
	text "La page est cou-"
	line "verte de gribou-"
	cont "illis."
	para "Un labyrinthe,"
	line "des fleurs,"
	cont "la lettre S…"
	done
else
	text "The page is cover-"
	line "ed in doodles."
	para "A maze, flowers,"
	line "the letter S…"
	done
endc

ViridianSchoolHouseLass1Text:
if DEF(_LOCALE_FR)
	text "Attends!"
	line "Je croyais"
	line "que toutes les"

	para "attaques Feu"
	line "étaient spé.?"
	done
else
	text "Wait! I thought"
	line "that, like, all"

	para "Fire-type moves"
	line "were special?"
	done
endc

ViridianSchoolHouseYoungsterScript:
	checkevent EVENT_GOT_WEAK_POLICY_FROM_VIRIDIAN
	iftrue_jumptextfaceplayer .Text2
	faceplayer
	opentext
	writetext .Text1
	promptbutton
	verbosegiveitem WEAK_POLICY
	iffalse_endtext
	setevent EVENT_GOT_WEAK_POLICY_FROM_VIRIDIAN
	jumpthisopenedtext

.Text2:
if DEF(_LOCALE_FR)
	text "Ce qui ne K.O."
	line "pas un #mon"
	cont "le rend plus fort."

	para "C'est l'effet"
	line "du Weak Policy."
	done
else
	text "“What doesn't KO"
	line "a #mon makes"
	cont "it stronger.”"

	para "That's the effect"
	line "of a Weak Policy."
	done
endc

.Text1:
if DEF(_LOCALE_FR)
	text "La prof m'a donné"
	line "des copies en"

	para "rab. Tiens,"
	line "prends-en une."
	done
else
	text "The teacher gave"
	line "me extra copies of"

	para "these. Here,"
	line "take one."
	done
endc

ViridianSchoolHouseGameBoyKidScript:
	showtextfaceplayer ViridianSchoolHouseGameBoyKidText
	turnobject LAST_TALKED, DOWN
	end

ViridianSchoolHouseGameBoyKidText:
if DEF(_LOCALE_FR)
	text "Je prends"
	line "des notes"
	line "sur mon tel!"

	para "Je me détends pas!"
	line "Vraiment!"
	done
else
	text "I'm taking notes"
	line "on my phone!"

	para "I'm not goofing"
	line "off! Really!"
	done
endc

ViridianSchoolHouseLass2Text:
if DEF(_LOCALE_FR)
	text "Je suis à la"
	line "place du héros!"

	para "Pourquoi ma vie"
	line "est si ennuyeuse?"
	done
else
	text "I'm in the pro-"
	line "tagonist's seat!"

	para "So why is my life"
	line "so boring?"
	done
endc

ViridianSchoolHouseBlackboardText:
if DEF(_LOCALE_FR)
	text "Les attaques phy-"
	line "siques utilisent"
	cont "Attq et Défense."

	para "Les attaques spé-"
	line "ciales utilisent"
	cont "Atq.Spé et Déf.Spé"

	para "Les attaques"
	line "Statut"
	line "ne font pas de"
	cont "dégâts directs."
	done
else
	text "Physical moves use"
	line "the Attack and"
	cont "Defense stats."

	para "Special moves use"
	line "the Sp.Atk and"
	cont "Sp.Def stats."

	para "Status moves do"
	line "not cause damage"
	cont "directly."
	done
endc

PokemonJournalKiyoScript:
	setflag ENGINE_READ_KIYO_JOURNAL
	jumpthistext

if DEF(_LOCALE_FR)
	text "Journal #mon"

	para "Dossier spécial:"
	line "Roi Karaté Kiyo!"

	para "On dit que Kiyo"
	line "a étudié auprès"

	para "de Chuck, à"
	line "Irisia."

	para "On raconte qu'il"
	line "s'entraîne"

	para "encore quelque"
	line "part à Johto."
	done
else
	text "#mon Journal"

	para "Special Feature:"
	line "Karate King Kiyo!"

	para "Kiyo is said to"
	line "have studied under"

	para "Chuck of Cianwood"
	line "City. He is"

	para "rumored to still"
	line "be training some-"
	cont "where in Johto."
	done
endc
