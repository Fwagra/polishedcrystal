OlivineGoodRodHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, OLIVINE_CITY, 5
	warp_event  3,  7, OLIVINE_CITY, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, GoodRodGuru, -1

GoodRodGuru:
	faceplayer
	opentext
	checkevent EVENT_GOT_GOOD_ROD
	iftrue_jumpopenedtext HaveGoodRodText
	writetext OfferGoodRodText
	yesorno
	iffalse_jumpopenedtext DontWantGoodRodText
	writetext GiveGoodRodText
	promptbutton
	verbosegivekeyitem GOOD_ROD
	writetext GaveGoodRodText
	waitbutton
	closetext
	setevent EVENT_GOT_GOOD_ROD
	end

OfferGoodRodText:
if DEF(_LOCALE_FR)
	text "OLIVILLE est sur"
	line "la mer!"

	para "Et si c'est sur la"
	line "mer... C'est"
	cont "qu'on peut pêcher!"

	para "Ca fait 30 ans que"
	line "je pêche ici mon"
	cont "bouchon."

	para "La pêche c'est mon"
	line "hobby, même que"
	cont "des fois et bah ça"
	cont "mord... Et hop une"
	cont "chaussure trouée!"
	cont "Tu veux essayer?"
	done
else
	text "Olivine is on the"
	line "sea!"

	para "And if it's on the"
	line "sea, there are"
	cont "bound to be fish!"

	para "I've fished here"
	line "for 30 years."

	para "Would you like to"
	line "face the sea and"
	cont "fish?"
	done
endc

GiveGoodRodText:
if DEF(_LOCALE_FR)
	text "Ah, hahah!"
	line "Et voici une"
	cont "nouvelle recrue"
	cont "dans ce hobby"
	cont "formidable!"
	done
else
	text "Ah, hahah!"
	line "We have ourselves"
	cont "a new angler!"
	done
endc

GaveGoodRodText:
if DEF(_LOCALE_FR)
	text "On ne trouve pas"
	line "seulement des"

	para "poissons en mer."
	line "Ils sont malins et"
	cont "vont partout où il"
	cont "y a de l'eau!"
	done
else
	text "Fish aren't found"
	line "in the sea alone."

	para "They go wherever"
	line "there is water."
	done
endc

DontWantGoodRodText:
if DEF(_LOCALE_FR)
	text "Kkkoii? T'aimes"
	line "pas la pêche!?"
	cont "C'est pas bien!"
	done
else
	text "Whaaat? You don't"
	line "like to fish?!"
	cont "Incomprehensible!"
	done
endc

HaveGoodRodText:
if DEF(_LOCALE_FR)
	text "Comment vont les"
	line "affaires..."
	cont "Ca roule?"
	done
else
	text "How are things?"
	line "Land the big one?"
	done
endc
