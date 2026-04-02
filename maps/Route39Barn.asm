Route39Barn_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  7, ROUTE_39, 1
	warp_event  4,  7, ROUTE_39, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  3, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, MILTANK, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, NO_FORM, MooMoo, -1
	object_event  2,  3, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route39BarnTwin1Script, -1
	object_event  4,  3, SPRITE_TWIN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route39BarnTwin2Script, -1

Route39BarnTwin1Script:
	faceplayer
	opentext
	checkevent EVENT_HEALED_MOOMOO
	iftruefwd .FeedingMooMoo
	writetext Text_MoomooIsSick
	waitbutton
	closetext
	turnobject LAST_TALKED, RIGHT
	end

.FeedingMooMoo:
	writetext Text_WereFeedingMoomoo
	waitbutton
	closetext
	turnobject LAST_TALKED, RIGHT
	end

Route39BarnTwin2Script:
	faceplayer
	opentext
	checkevent EVENT_HEALED_MOOMOO
	iftruefwd .FeedingMooMoo
	writetext Text_MoomooIsSick
	waitbutton
	closetext
	turnobject LAST_TALKED, LEFT
	end

.FeedingMooMoo:
	writetext Text_WereFeedingMoomoo
	waitbutton
	closetext
	turnobject LAST_TALKED, LEFT
	end

MooMoo:
	checkevent EVENT_HEALED_MOOMOO
	iftruefwd .HappyCow
	opentext
	writetext Text_WeakMoo
	setmonval MILTANK
	special PlaySlowCry
	promptbutton
	writetext Text_ItsCryIsWeak
	checkevent EVENT_TALKED_TO_FARMER_ABOUT_MOOMOO
	iftruefwd .GiveBerry
	waitendtext

.GiveBerry:
	promptbutton
	writetext Text_AskGiveBerry
	yesorno
	iffalse_jumpopenedtext Text_RefusedToGiveBerry
	checkitem ORAN_BERRY
	iffalsefwd .MaybeSitrusBerry
	takeitem ORAN_BERRY
	readmem wMooMooBerries
	addval 1
	writemem wMooMooBerries
	ifequalfwd 3, .ThreeOranBerries
	ifequalfwd 5, .FiveOranBerries
	ifequalfwd 7, .SevenOranBerries
	jumpopenedtext Text_GaveOranBerry

.MaybeSitrusBerry:
	checkitem SITRUS_BERRY
	iffalse_jumpopenedtext Text_NoBerries
	takeitem SITRUS_BERRY
	readmem wMooMooBerries
	addval 2
	writemem wMooMooBerries
	ifgreater 6, .SevenSitrusBerries
	ifgreater 4, .FiveSitrusBerries
	ifgreater 2, .ThreeSitrusBerries
	jumpopenedtext Text_GaveSitrusBerry

.ThreeOranBerries:
	writetext Text_GaveOranBerry
	promptbutton
	jumpopenedtext Text_LittleHealthier

.FiveOranBerries:
	writetext Text_GaveOranBerry
	promptbutton
	jumpopenedtext Text_QuiteHealthy

.SevenOranBerries:
	playmusic MUSIC_HEAL
	writetext Text_GaveOranBerry
	pause 60
	promptbutton
	special RestartMapMusic
	setevent EVENT_HEALED_MOOMOO
	jumpopenedtext Text_TotallyHealthy

.ThreeSitrusBerries:
	writetext Text_GaveSitrusBerry
	promptbutton
	jumpopenedtext Text_LittleHealthier

.FiveSitrusBerries:
	writetext Text_GaveSitrusBerry
	promptbutton
	jumpopenedtext Text_QuiteHealthy

.SevenSitrusBerries:
	playmusic MUSIC_HEAL
	writetext Text_GaveSitrusBerry
	pause 60
	promptbutton
	special RestartMapMusic
	setevent EVENT_HEALED_MOOMOO
	jumpopenedtext Text_TotallyHealthy

.HappyCow:
	showcrytext MoomooHappyMooText, MILTANK
	end

Text_MoomooIsSick:
if DEF(_LOCALE_FR)
	text "MEUMEU est malade."

	para "Elle a besoin de"
	line "beaucoup de BAIES."
	done
else
	text "Moomoo is sick…"

	para "She needs lots of"
	line "healthy Berries."
	done
endc

Text_WereFeedingMoomoo:
if DEF(_LOCALE_FR)
	text "On nourrit"
	line "MEUMEU!"
	done
else
	text "We're feeding"
	line "Moomoo!"
	done
endc

Text_WeakMoo:
if DEF(_LOCALE_FR)
	text "ECREMEUH: ...Meu."
	done
else
	text "Miltank: …Moo…"
	done
endc

Text_ItsCryIsWeak:
if DEF(_LOCALE_FR)
	text "Son cri est"
	line "très faible."
	done
else
	text "Its cry is weak…"
	done
endc

MoomooHappyMooText:
if DEF(_LOCALE_FR)
	text "ECREMEUH: MEU!"
	done
else
	text "Miltank: Mooo!"
	done
endc

Text_AskGiveBerry:
if DEF(_LOCALE_FR)
	text "Donner une BAIE à"
	line "ECREMEUH?"
	done
else
	text "Give an Oran or"
	line "Sitrus Berry to"
	cont "Miltank?"
	done
endc

Text_GaveOranBerry:
if DEF(_LOCALE_FR)
	text "<PLAYER> donne une"
	line "BAIE à ECREMEUH."
	done
else
	text "<PLAYER> gave an"
	line "Oran Berry to"
	cont "Miltank."
	done
endc

Text_GaveSitrusBerry:
if DEF(_LOCALE_FR)
	text "<PLAYER> donne une"
	line "BAIE à ECREMEUH."
	done
else
	text "<PLAYER> gave a"
	line "Sitrus Berry to"
	cont "Miltank."
	done
endc

Text_LittleHealthier:
if DEF(_LOCALE_FR)
	text "ECREMEUH se sent"
	line "un peu mieux!"
	done
else
	text "Miltank became a"
	line "little healthier!"
	done
endc

Text_QuiteHealthy:
if DEF(_LOCALE_FR)
	text "ECREMEUH se sent"
	line "mieux!"
	done
else
	text "Miltank became"
	line "quite healthy!"
	done
endc

Text_TotallyHealthy:
if DEF(_LOCALE_FR)
	text "ECREMEUH est en"
	line "pleine forme!"
	done
else
	text "Miltank became"
	line "totally healthy!"
	done
endc

Text_NoBerries:
if DEF(_LOCALE_FR)
	text "<PLAYER> n'a pas"
	line "de BAIES..."
	done
else
	text "<PLAYER> has no"
	line "Oran or Sitrus"
	cont "Berries…"
	done
endc

Text_RefusedToGiveBerry:
if DEF(_LOCALE_FR)
	text "<PLAYER> ne donne"
	line "pas de BAIE."

	para "ECREMEUH est"
	line "triste."
	done
else
	text "<PLAYER> wouldn't"
	line "give a Berry."

	para "Miltank looks sad."
	done
endc
