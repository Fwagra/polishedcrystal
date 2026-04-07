WarmBeach_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event 15, 13, WARM_BEACH_SHACK, 1
	warp_event  8,  5, SHAMOUTI_TUNNEL, 2
	warp_event  3,  8, WARM_BEACH_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event 17, 14, BGEVENT_JUMPTEXT, WarmBeachShackSignText
	bg_event 18, 20, BGEVENT_JUMPTEXT, WarmBeachShrineText
	bg_event 19, 20, BGEVENT_JUMPTEXT, WarmBeachShrineText
	bg_event  7, 20, BGEVENT_ITEM + PEARL, EVENT_WARM_BEACH_HIDDEN_PEARL

	def_object_events
	object_event 11,  8, SPRITE_SIGHTSEER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 3, GenericTrainerSightseermGareth, -1
	object_event  4, 12, SPRITE_AROMA_LADY, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerAromaLadyHolly, -1
	object_event 11, 14, SPRITE_COOL_DUDE, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 2, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, WarmBeachCooltrainermText, -1
	object_event 22, 20, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_WALK_UP_DOWN, 2, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, WarmBeachCooltrainerfText, -1
	object_event 17, 21, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, SLOWKING, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, PLAIN_FORM, WarmBeachSlowkingScript, -1
	object_event 11, 20, SPRITE_PICNICKER, SPRITEMOVEDATA_WANDER, 1, 1, -1, 0, OBJECTTYPE_SCRIPT, 0, WarmBeachLassScript, -1
	object_event  6, 23, SPRITE_LADY, SPRITEMOVEDATA_STANDING_DOWN, 0, 2, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, WarmBeachLadyText, -1

GenericTrainerSightseermGareth:
	generictrainer SIGHTSEERM, GARETH, EVENT_BEAT_SIGHTSEERM_GARETH, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "Même hors combat,"
	line "ces objets font"

	para "de bons souvenirs."
	done
else
	text "Even outside of"
	line "battle, these"

	para "items make memor-"
	line "able souvenirs."
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Je viens d'acheter"
	line "des objets utiles"

	para "au marché!"
	done
else
	text "I just picked up"
	line "some useful items"

	para "from the outdoor"
	line "market!"
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "Mes objets n'ont"
	line "pas suffi…"
	done
else
	text "My items weren't"
	line "enough…"
	done
endc

GenericTrainerAromaLadyHolly:
	generictrainer AROMA_LADY, HOLLY, EVENT_BEAT_AROMA_LADY_HOLLY, .SeenText, .BeatenText

if DEF(_LOCALE_FR)
	text "L'odorat est vital"
	line "dans la nature."
	done
else
	text "The sense of smell"
	line "is vital to living"
	cont "in nature."
	done
endc

.SeenText:
if DEF(_LOCALE_FR)
	text "Je ne fais qu'un"
	line "avec les parfums"
	cont "de la nature."
	done
else
	text "I am at one with"
	line "the aromas of"
	cont "nature."
	done
endc

.BeatenText:
if DEF(_LOCALE_FR)
	text "La défaite a sa"
	line "propre odeur…"
	done
else
	text "Defeat has its"
	line "own scent…"
	done
endc

WarmBeachCooltrainermText:
if DEF(_LOCALE_FR)
	text "Y a un #MON"
	line "qui parle ici!"

	para "J'y croirais pas"
	line "sans l'avoir vu!"
	done
else
	text "There's a #mon"
	line "here that talks!"

	para "I would never be-"
	line "lieve it if I"

	para "hadn't seen it for"
	line "myself!"
	done
endc

WarmBeachCooltrainerfText:
if DEF(_LOCALE_FR)
	text "J'ai été choisie"
	line "comme prêtresse"
	cont "cette année,"

	para "alors je dois"
	line "jouer la mélodie"
	cont "de l'Elu."

	para "Je suis nerveuse,"
	line "alors je viens"
	cont "m'entraîner ici."
	done
else
	text "I've been selected"
	line "as the festival"
	cont "maiden this year,"

	para "so I have to play"
	line "the melody of the"
	cont "Chosen One."

	para "I'm pretty nervous,"
	line "so I came here to"
	cont "practice."
	done
endc

WarmBeachSlowkingScript:
	jumpthistext

if DEF(_LOCALE_FR)
	text "Un pantalon…"
	line "me serait utile…"
	done
else
	text "I could use"
	line "pants…"
	done
endc

WarmBeachLassScript:
	faceplayer
	opentext
	checkflag ENGINE_SEASHORE_SHELL_BELL
	iftrue_jumpopenedtext .Text3
	writetext .Text1
	special PlaceMoneyTopRight
	yesorno
	iffalse_jumpopenedtext .Text4
	checkmoney YOUR_MONEY, 4000
	ifequalfwd HAVE_LESS, .NotEnoughMoney
	giveitem SHELL_BELL
	iffalse_jumpopenedtext .Text6
	setflag ENGINE_SEASHORE_SHELL_BELL
	waitsfx
	playsound SFX_TRANSACTION
	takemoney YOUR_MONEY, 4000
	special PlaceMoneyTopRight
	jumpthisopenedtext

if DEF(_LOCALE_FR)
	text "Une CLOCHE COQUE,"
	line "juste pour toi!"
	done
else
	text "One Shell Bell,"
	line "just for you!"
	done
endc

.NotEnoughMoney:
	jumpthisopenedtext

if DEF(_LOCALE_FR)
	text "Vous n'avez pas"
	line "assez de sous."
	done
else
	text "You don't have"
	line "enough money…"
	done
endc

.Text1:
if DEF(_LOCALE_FR)
	text "Je ramasse des"
	line "coquillages sur"
	cont "la plage et"

	para "j'en fais des"
	line "CLOCHES COQUE."

	para "On dit que leur"
	line "son guérit."

	para "C'est 4000¥."
	line "Tu en veux une?"
	done
else
	text "I collect shells"
	line "off the beach and"

	para "turn them into"
	line "Shell Bells."

	para "People say their"
	line "chime is healing."

	para "They're ¥4000"
	line "each. Want one?"
	done
endc

.Text3:
if DEF(_LOCALE_FR)
	text "J'ai fait qu'une"
	line "CLOCHE COQUE"
	cont "aujourd'hui…"
	done
else
	text "I only made one"
	line "Shell Bell today…"
	done
endc

.Text4:
if DEF(_LOCALE_FR)
	text "Toi, t'es un p'tit"
	line "jeune chez les"
	line "dresseurs, pas"
	line "vrai? Ca se voit!"
	line "C'est bon! Tout le"
	line "monde a des"
	line "défauts! Si tu"
	line "veux, je peux"
	line "t'apprendre deux,"
	line "trois petits trucs"
	line "sympas!"
	done
else
	text "That's OK!"
	done
endc

.Text6:
if DEF(_LOCALE_FR)
	text "Tu n'as plus de"
	line "place…"
	done
else
	text "You don't have"
	line "enough room…"
	done
endc

WarmBeachLadyText:
if DEF(_LOCALE_FR)
	text "Les îles là-bas"
	line "s'appellent les"

	para "temples du Feu,"
	line "de la Glace et"
	cont "de la Foudre."

	para "C'est écrit"
	line "sur ce dépliant,"

	para "mais à quoi"
	line "servent-elles?"
	done
else
	text "Those islands"
	line "across the water"

	para "are known as the"
	line "temples of Fire,"

	para "Ice, and Light-"
	line "ning."

	para "That's what this"
	line "brochure says,"

	para "but what are they"
	line "for?"
	done
endc

WarmBeachShackSignText:
if DEF(_LOCALE_FR)
	text "Cabane de plage"
	done
else
	text "Beach Shack"
	done
endc

WarmBeachShrineText:
if DEF(_LOCALE_FR)
	text "Un sanctuaire"
	line "dédié au"

	para "Gardien des"
	line "Mers."
	done
else
	text "It's a shrine"
	line "dedicated to the"

	para "Guardian of the"
	line "Seas."
	done
endc
