Route26DayofWeekSiblingsHouse_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, ROUTE_26, 3
	warp_event  3,  7, ROUTE_26, 3

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  3, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, DayOfWeekSiblingsHousePokedexScript, -1

DayOfWeekSiblingsHousePokedexScript:
	opentext
	writetext DayOfWeekSiblingsHousePokedexText1
	yesorno
	iffalsefwd .End
	writetext DayOfWeekSiblingsHousePokedexText2
	yesorno
	iffalsefwd .End
	writetext DayOfWeekSiblingsHousePokedexText3
	waitbutton
.End:
	endtext

DayOfWeekSiblingsHousePokedexText1:
if DEF(_LOCALE_FR)
	text "Il y a quelque"
	line "chose d'écrit."

	para "Lire?"
	done
else
	text "There's something"
	line "written here."

	para "Read it?"
	done
endc

DayOfWeekSiblingsHousePokedexText2:
if DEF(_LOCALE_FR)
	text "A mes frères et"
	line "soeurs:"

	para "Nous devons aider"
	line "les dresseurs de"
	cont "#MON."

	para "Quand un dresseur"
	line "vient vous parler,"
	cont "donnez-lui un"
	cont "objet."

	para "Bisous,"
	line "LUCIE"

	para "Continuer à lire?"
	done
else
	text "To my brothers and"
	line "sisters:"

	para "We take pride in"
	line "serving #mon"
	cont "trainers."

	para "When trainers talk"
	line "to you, give them"
	cont "something useful."

	para "Love,"
	line "Monica"

	para "Keep reading?"
	done
endc

DayOfWeekSiblingsHousePokedexText3:
if DEF(_LOCALE_FR)
	text "Lundi, LUCIE"
	line "ROUTE 40"

	para "Mardi, MARIE"
	line "ROUTE 29"

	para "Mercredi, HOMER"
	line "LAC COLERE"

	para "Jeudi, JEROME"
	line "ROUTE 36"

	para "Vendredi, VANESSA"
	line "ROUTE 32"

	para "Samedi, SAMUEL"
	line "EBENELLE"

	para "Dimanche, DIMITRI"
	line "ROUTE 37"
	done
else
	text "Monday, Monica"
	line "Route 40"

	para "Tuesday, Tuscany"
	line "Route 29"

	para "Wednesday, Wesley"
	line "Lake of Rage"

	para "Thursday, Arthur"
	line "Route 36"

	para "Friday, Frieda"
	line "Route 32"

	para "Saturday, Santos"
	line "Blackthorn City"

	para "Sunday, Sunny"
	line "Route 37"
	done
endc
