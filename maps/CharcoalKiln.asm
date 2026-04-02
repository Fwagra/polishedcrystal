CharcoalKiln_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  3,  7, AZALEA_TOWN, 2
	warp_event  4,  7, AZALEA_TOWN, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  4, SPRITE_BLACK_BELT, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, CharcoalKilnBoss, EVENT_CHARCOAL_KILN_BOSS
	object_event  4,  3, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_WANDER, 1, 1, -1, 0, OBJECTTYPE_SCRIPT, 0, CharcoalKilnApprentice, EVENT_CHARCOAL_KILN_APPRENTICE
	object_event  8,  6, SPRITE_FARFETCH_D, SPRITEMOVEDATA_WANDER, 2, 2, -1, 0, OBJECTTYPE_SCRIPT, 0, CharcoalKilnFarfetchdScript, EVENT_CHARCOAL_KILN_FARFETCH_D

CharcoalKilnBoss:
	checkevent EVENT_GOT_HM01_CUT
	iftrue_jumptextfaceplayer .Text3
	checkevent EVENT_CLEARED_SLOWPOKE_WELL
	iftrue_jumptextfaceplayer .Text2
	jumpthistextfaceplayer

if DEF(_LOCALE_FR)
	text "Tous les RAMOLOSS"
	line "ont disparu"
	cont "de la ville."

	para "On risque d'avoir"
	line "des ennuis avec"

	para "le protecteur de"
	line "la forêt…"

	para "C'est peut-être un"
	line "mauvais présage."

	para "On devrait rester"
	line "chez soi."
else
	text "All the Slowpoke"
	line "have disappeared"
	cont "from the town."

	para "The forest's pro-"
	line "tector may be"
	cont "angry with us…"

	para "It may be a bad"
	line "omen. We should"
	cont "stay in."
endc
	done

.Text2:
if DEF(_LOCALE_FR)
	text "Les RAMOLOSS sont"
	line "de retour…"

	para "Mais mon APPRENTI"
	line "n'est pas revenu"

	para "du BOIS AUX"
	line "CHENES."

	para "Où est donc ce"
	line "dresseur de"
	cont "troisième zone?"
else
	text "The Slowpoke have"
	line "returned…"

	para "But my Apprentice"
	line "hasn't come back"
	cont "from Ilex Forest."

	para "Where in the world"
	line "is that lazy guy?"
endc
	done

.Text3:
if DEF(_LOCALE_FR)
	text "Tu as chassé la"
	line "TEAM ROCKET et tu"

	para "as visité le BOIS"
	line "AUX CHENES en"
	cont "solitaire?"

	para "Pas mal!"
	line "J'aime ça. Viens"

	para "donc t'entraîner"
	line "avec nous."
else
	text "You chased off"
	line "Team Rocket and"

	para "went to Ilex"
	line "Forest alone?"

	para "That takes guts!"
	line "I like that. Come"
	cont "train with us."
endc
	done

CharcoalKilnApprentice:
	checkevent EVENT_GOT_CHARCOAL_IN_CHARCOAL_KILN
	iftrue_jumptextfaceplayer .Text3
	checkevent EVENT_GOT_HM01_CUT
	iffalse_jumptextfaceplayer .Text1
	faceplayer
	opentext
	writetext .Text2
	promptbutton
	verbosegiveitem CHARCOAL
	iffalse_endtext
	setevent EVENT_GOT_CHARCOAL_IN_CHARCOAL_KILN
	endtext

.Text1:
if DEF(_LOCALE_FR)
	text "Où sont passés"
	line "les RAMOLOSS?"

	para "Sont-ils dehors en"
	line "train de traîner?"
else
	text "Where have all the"
	line "Slowpoke gone?"

	para "Are they out play-"
	line "ing somewhere?"
endc
	done

.Text2:
if DEF(_LOCALE_FR)
	text "Pardonne-moi, j'ai"
	line "oublié de te re-"

	para "mercier."

	para "J'ai produit ce"
	line "CHARBON."

	para "Les #mon de feu"
	line "seront contents"

	para "d'en tenir un."
else
	text "I'm sorry--I for-"
	line "got to thank you."

	para "This is Charcoal"
	line "that I made."

	para "Fire-type #mon"
	line "would be happy to"
	cont "hold that."
endc
	done

.Text3:
if DEF(_LOCALE_FR)
	text "Les RAMOLOSS sont"
	line "de retour et tu as"

	para "même retrouvé"
	line "CANARTICHO."

	para "T'es trop cool!"
else
	text "The Slowpoke came"
	line "back, and you even"
	cont "found Farfetch'd."

	para "You're the cool-"
	line "est, man!"
endc
	done

CharcoalKilnFarfetchdScript:
	faceplayer
	showcrytext .Text, FARFETCH_D
	end

.Text:
if DEF(_LOCALE_FR)
	text "CANARTICHO: Ticho!"
else
	text "Farfetch'd: Kwaa!"
endc
	done
