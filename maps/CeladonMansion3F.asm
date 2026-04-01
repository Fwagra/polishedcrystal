CeladonMansion3F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  0,  0, CELADON_MANSION_ROOF, 1
	warp_event  1,  0, CELADON_MANSION_2F, 2
	warp_event  6,  0, CELADON_MANSION_2F, 3
	warp_event  7,  0, CELADON_MANSION_ROOF, 2

	def_coord_events

	def_bg_events
	bg_event  5,  8, BGEVENT_UP, MapCeladonMansion3FSignpost0Script
	bg_event  4,  3, BGEVENT_UP, MapCeladonMansion3FSignpost1Script
	bg_event  1,  6, BGEVENT_UP, MapCeladonMansion3FSignpost2Script
	bg_event  1,  3, BGEVENT_UP, MapCeladonMansion3FSignpost3Script

	def_object_events
	object_event  3,  6, SPRITE_COOL_DUDE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GameFreakGameDesignerScript, -1
	object_event  3,  4, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GameFreakGraphicArtistScript, -1
	object_event  0,  7, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, GameFreakProgrammerText, -1
	object_event  0,  4, SPRITE_FAT_GUY, SPRITEMOVEDATA_STANDING_UP, 0, 2, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, GameFreakCharacterDesignerText, -1

GameFreakGameDesignerScript:
	checkevent EVENT_DECO_POSTER_4
	iftrue_jumptextfaceplayer GameFreakDesignerGaveDiplomaText
	faceplayer
	opentext
	writetext GameFreakGameDesignerText
	setval16 NUM_POKEMON
	special CountCaught
	iftruefwd .CompletedPokedex
	waitendtext

.CompletedPokedex:
	promptbutton
	writetext GameFreakGameDesignerCompletedPokedexText
	playsound SFX_DEX_FANFARE_230_PLUS
	waitsfx
	writetext GameFreakGameDesignerPauseForDiplomaText
	waitbutton
	writetext GameFreakGameDesignerGiveDiplomaText
	setevent EVENT_DECO_POSTER_4
	playsound SFX_KEY_ITEM
	waitsfx
	promptbutton
	callasm Diploma
	writetext GameFreakGameDesignerDiplomaSentText
	waitbutton
	setevent EVENT_ENABLE_DIPLOMA_PRINTING
	jumpopenedtext GameFreakGameDesignerAfterDiplomaText

GameFreakGraphicArtistScript:
	faceplayer
	opentext
	checkevent EVENT_ENABLE_DIPLOMA_PRINTING
	iftruefwd .CanPrintDiploma
	writetext GameFreakGraphicArtistText
	waitendtext

.CanPrintDiploma:
	writetext GameFreakGraphicArtistPrintDiplomaText
	yesorno
	iffalsefwd .Refused
	special PrintDiploma
	closetext
	end

.Refused:
	writetext GameFreakGraphicArtistRefusedText
	waitendtext

MapCeladonMansion3FSignpost0Script:
	jumptext CeladonMansion3FDevRoomSignText

MapCeladonMansion3FSignpost1Script:
	jumptext CeladonMansion3FDrawingText

MapCeladonMansion3FSignpost2Script:
	jumptext CeladonMansion3FGameProgramText

MapCeladonMansion3FSignpost3Script:
	jumptext CeladonMansion3FReferenceMaterialText

GameFreakGameDesignerText:
if DEF(_LOCALE_FR)
	text "Vraiment?"

	para "Je suis le Game"
	line "Designer!"

	para "Remplir le #dex"
	line "est dur, mais"

	para "ne lache pas!"
	done
else
	text "Is that right?"

	para "I'm the Game"
	line "Designer!"

	para "Filling up your"
	line "#dex is tough,"
	cont "but don't give up!"
	done
endc

GameFreakGameDesignerCompletedPokedexText:
if DEF(_LOCALE_FR)
	text "Ouah! Bravo!"
	line "Tu as fini le"

	para "#dex!"
	done
else
	text "Wow! Excellent!"
	line "You completed your"
	cont "#dex!"

	para "Congratulations!"
	done
endc

GameFreakGameDesignerPauseForDiplomaText:
if DEF(_LOCALE_FR)
	text "Pour ta reussite…"
	line "tiens!"

	para "Un Diplome tout"
	line "neuf!"
	done
else
	text "To recognize your"
	line "achievement…"
	cont "here you go!"

	para "A crisp new"
	line "Diploma!"
	done
endc

GameFreakGameDesignerGiveDiplomaText:
if DEF(_LOCALE_FR)
	text "<PLAYER> recoit un"
	line "Diplome!"
	done
else
	text "<PLAYER> received"
	line "Diploma!"
	done
endc

GameFreakGameDesignerDiplomaSentText:
if DEF(_LOCALE_FR)
	text "Diplome"
	line "envoye chez toi."
	done
else
	text "Diploma"
	line "was sent home."
	done
endc

GameFreakGameDesignerAfterDiplomaText:
if DEF(_LOCALE_FR)
	text "Le graphiste peut"
	line "imprimer ton"

	para "Diplome. Va le"
	line "montrer!"
	done
else
	text "The Graphic Artist"
	line "will print out a"
	cont "Diploma for you."

	para "You should go show"
	line "that off!"
	done
endc

GameFreakDesignerGaveDiplomaText:
if DEF(_LOCALE_FR)
	text "Bravo pour le"
	line "#dex complet!"

	para "Expose ce"
	line "Diplome!"
	done
else
	text "Congratulations"
	line "for completing"
	cont "your #dex!"

	para "You should show"
	line "off that Diploma!"
	done
endc

GameFreakGraphicArtistText:
if DEF(_LOCALE_FR)
	text "Je suis le"
	line "Graphiste."

	para "Je t'ai dessine!"
	done
else
	text "I'm the Graphic"
	line "Artist."

	para "I drew you!"
	done
endc

GameFreakGraphicArtistPrintDiplomaText:
if DEF(_LOCALE_FR)
	text "Je suis le"
	line "Graphiste."

	para "Oh, #dex fini?"
	line "J'imprime ton"

	para "Diplome?"
	done
else
	text "I'm the Graphic"
	line "Arist."

	para "Oh, you completed"
	line "your #dex?"

	para "Want me to print"
	line "out your Diploma?"
	done
endc

GameFreakGraphicArtistRefusedText:
if DEF(_LOCALE_FR)
	text "Dis-moi si tu veux"
	line "imprimer le"

	para "Diplome."
	done
else
	text "Give me a shout if"
	line "you want your"
	cont "Diploma printed."
	done
endc

GameFreakProgrammerText:
if DEF(_LOCALE_FR)
	text "Moi? Le"
	line "Programmeur."

	para "Passe par le Hub"
	line "Echange Merveille!"
	done
else
	text "Who, me? I'm the"
	line "Programmer."

	para "Use the Wonder"
	line "Trade Hub!"
	done
endc

GameFreakCharacterDesignerText:
if DEF(_LOCALE_FR)
	text "Lyra est pas"
	line "mignonne?"

	para "Jasmine aussi."
	line "Je les adore!"
	done
else
	text "Isn't Lyra"
	line "adorable?"

	para "Jasmine's pretty"
	line "too."

	para "Oh, I love them!"
	done
endc

CeladonMansion3FDevRoomSignText:
if DEF(_LOCALE_FR)
	text "Game Freak"
	line "Salle de dev"
	done
else
	text "Game Freak"
	line "Development Room"
	done
endc

CeladonMansion3FDrawingText:
if DEF(_LOCALE_FR)
	text "Un dessin detaille"
	line "d'une jolie fille."
	done
else
	text "It's a detailed"
	line "drawing of a"
	cont "pretty girl."
	done
endc

CeladonMansion3FGameProgramText:
if DEF(_LOCALE_FR)
	text "Le programme du"
	line "jeu. Touche pas,"

	para "tu risques un"
	line "bug!"
	done
else
	text "It's the game"
	line "program. Messing"

	para "with it could put"
	line "a bug in the game!"
	done
endc

CeladonMansion3FReferenceMaterialText:
if DEF(_LOCALE_FR)
	text "Plein de docs de"
	line "ref. Il y a meme"

	para "une # Doll."
	done
else
	text "It's crammed with"
	line "reference materi-"
	cont "als. There's even"
	cont "a # Doll."
	done
endc
