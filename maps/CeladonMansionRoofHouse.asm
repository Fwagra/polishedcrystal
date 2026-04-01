CeladonMansionRoofHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, CELADON_MANSION_ROOF, 3
	warp_event  3,  7, CELADON_MANSION_ROOF, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  2, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_DOWN, 2, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonMansionRoofHousePharmacistScript, -1

CeladonMansionRoofHousePharmacistScript:
	checkevent EVENT_GOT_TM03_CURSE
	iftrue_jumptextfaceplayer .CurseText
	faceplayer
	opentext
	writetext .IntroText
	promptbutton
	checktime 1 << NITE
	iffalse_jumpopenedtext .NotNiteText
	writetext .StoryText
	promptbutton
	verbosegivetmhm TM_CURSE
	setevent EVENT_GOT_TM03_CURSE
	jumpthisopenedtext

.CurseText:
if DEF(_LOCALE_FR)
	text "La CT03 est"
	line "Malédiction."

	para "Une attaque"
	line "terrifiante qui"

	para "érode lentement"
	line "les PV de la"

	cont "cible."
	done
else
	text "TM03 is Curse."

	para "It's a terrifying"
	line "move that slowly"

	para "whittles down the"
	line "victim's HP."
	done
endc

.IntroText:
if DEF(_LOCALE_FR)
	text "Laisse-moi te"
	line "raconter une"

	para "histoire qui fait"
	line "froid dans le dos…"
	done
else
	text "Let me recount a"
	line "terrifying tale…"
	done
endc

.NotNiteText:
if DEF(_LOCALE_FR)
	text "Apres tout, c'est"
	line "moins flippant"

	para "tant qu'il fait"
	line "jour dehors."

	para "Reviens apres le"
	line "coucher du soleil,"
	cont "OK?"
	done
else
	text "Then again, it's"
	line "not as scary while"

	para "it's still light"
	line "outside."

	para "Come back after"
	line "sunset, OK?"
	done
endc

.StoryText:
if DEF(_LOCALE_FR)
	text "Il etait une fois"
	line "un petit garcon"

	para "qui avait recu un"
	line "nouveau Velo…"

	para "Il voulait l'essa-"
	line "yer tout de suite…"

	para "Il s'amusait tant"
	line "qu'il n'avait pas"

	para "vu le soleil se"
	line "coucher…"

	para "En rentrant dans"
	line "le noir complet,"

	para "le Velo ralentit"
	line "tout seul!"

	para "Les pedales"
	line "se sont alourdies!"

	para "Quand il a arrete"
	line "de pedaler, le"

	para "Velo a glisse en"
	line "arriere!"

	para "Comme si le Velo"
	line "etait maudit et"

	para "voulait le tirer"
	line "vers le neant!"

	para "…"

	para "…"

	para "CRIIIII!"

	para "En fait il etait"
	line "en montee sur la"

	para "Route Cyclable!"

	para "…"
	line "Badam, badam!"

	para "Pour toute cette"
	line "attention, prends"

	para "cette CT03!"
	done
else
	text "Once upon a time,"
	line "there was a little"

	para "boy who was given"
	line "a new Bicycle…"

	para "He wanted to try"
	line "it right away…"

	para "He was having so"
	line "much fun that he"

	para "didn't notice the"
	line "sun had set…"

	para "While riding home"
	line "in the pitch-black"

	para "night, the bike"
	line "suddenly slowed!"

	para "The pedals became"
	line "heavy!"

	para "When he stopped"
	line "pedaling, the bike"

	para "began slipping"
	line "backwards!"

	para "It was as if the"
	line "bike were cursed"

	para "and trying to drag"
	line "him into oblivion!"

	para "…"

	para "…"

	para "SHRIEEEEK!"

	para "The boy had been"
	line "riding uphill on"
	cont "Cycling Road!"

	para "…"
	line "Ba-dum ba-dum!"

	para "For listening so"
	line "patiently, you may"
	cont "take this--TM03!"
	done
endc
