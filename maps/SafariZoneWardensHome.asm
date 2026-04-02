SafariZoneWardensHome_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  2,  7, FUCHSIA_CITY, 5
	warp_event  3,  7, FUCHSIA_CITY, 5

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_JUMPSTD, picturebookshelf
	bg_event  7,  0, BGEVENT_JUMPTEXT, WardenPhotoText
	bg_event  9,  0, BGEVENT_JUMPTEXT, SafariZonePhotoText

	def_object_events
	object_event  2,  4, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, WardensGranddaughter, -1

WardensGranddaughter:
	faceplayer
	opentext
	checkevent EVENT_TALKED_TO_WARDENS_GRANDDAUGHTER
	iftruefwd .AlreadyMet
	writetext WardensGranddaughterText1
	waitbutton
	closetext
	setevent EVENT_TALKED_TO_WARDENS_GRANDDAUGHTER
	end
.AlreadyMet:
	jumpopenedtext WardensGranddaughterText2

WardensGranddaughterText1:
if DEF(_LOCALE_FR)
	text "Mon pépé est le"
	line "GARDIEN du PARC"
	cont "SAFARI."

	para "Enfin..."
	line "Il l'était."

	para "Il a décidé de"
	line "prendre des vacan-"

	para "ces et de voyager"
	line "tout seul."

	para "Il a démissionné"
	line "juste comme ça."
	done
else
	text "My grandpa is the"
	line "Safari Zone War-"
	cont "den."

	para "At least he was…"

	para "He decided to go"
	line "on a vacation and"

	para "took off overseas"
	line "all by himself."

	para "He quit running"
	line "Safari Zone just"
	cont "like that."
	done
endc

WardensGranddaughterText2:
if DEF(_LOCALE_FR)
	text "Les gens étaient"
	line "déçus d'apprendre"

	para "la fermeture du"
	line "PARC SAFARI mais"
	cont "pépé est si têtu."
	done
else
	text "Many people were"
	line "disappointed that"

	para "Safari Zone closed"
	line "down, but Grandpa"
	cont "is so stubborn…"
	done
endc

WardenPhotoText:
if DEF(_LOCALE_FR)
	text "C'est la photo"
	line "d'un vieil homme"

	para "entouré de"
	line "#MON."
	done
else
	text "It's a photo of a"
	line "grinning old man"

	para "who's surrounded"
	line "by #mon."
	done
endc

SafariZonePhotoText:
if DEF(_LOCALE_FR)
	text "C'est la photo"
	line "d'une grande plai-"

	para "ne verdoyante avec"
	line "des #MON rares"
	cont "tout partout."
	done
else
	text "It's a photo of a"
	line "huge grassy plain"

	para "with rare #mon"
	line "frolicking in it."
	done
endc
