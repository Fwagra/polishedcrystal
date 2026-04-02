CeladonUniversityLibrary2F_MapScriptHeader:
	def_scene_scripts

	def_callbacks

	def_warp_events
	warp_event  7,  0, CELADON_UNIVERSITY_LIBRARY_1F, 3

	def_coord_events

	def_bg_events
	bg_event  4,  0, BGEVENT_JUMPTEXT, CeladonUniversityLibrary1FSignpost1Text
	bg_event 10,  0, BGEVENT_JUMPTEXT, CeladonUniversityLibrary1FSignpost2Text
	bg_event  0,  3, BGEVENT_JUMPTEXT, CeladonUniversityLibrary2FBookshelf1Text
	bg_event  1,  3, BGEVENT_JUMPTEXT, CeladonUniversityLibrary2FBookshelf2Text
	bg_event  2,  3, BGEVENT_JUMPTEXT, CeladonUniversityLibrary2FBookshelf3Text
	bg_event  3,  3, BGEVENT_JUMPTEXT, CeladonUniversityLibrary2FBookshelf4Text
	bg_event  4,  3, BGEVENT_JUMPTEXT, CeladonUniversityLibrary2FBookshelf5Text
	bg_event  5,  3, BGEVENT_JUMPTEXT, CeladonUniversityLibrary2FBookshelf6Text
	bg_event  8,  3, BGEVENT_JUMPTEXT, CeladonUniversityLibrary2FBookshelf7Text
	bg_event  9,  3, BGEVENT_JUMPTEXT, CeladonUniversityLibrary2FBookshelf8Text
	bg_event 10,  3, BGEVENT_JUMPTEXT, CeladonUniversityLibrary2FBookshelf9Text
	bg_event 11,  3, BGEVENT_JUMPTEXT, CeladonUniversityLibrary2FBookshelf10Text
	bg_event 12,  3, BGEVENT_JUMPTEXT, CeladonUniversityLibrary2FBookshelf11Text
	bg_event 13,  3, BGEVENT_JUMPTEXT, CeladonUniversityLibrary2FBookshelf12Text
	bg_event  6,  7, BGEVENT_JUMPTEXT, CeladonUniversityLibrary2FBookshelf13Text
	bg_event  7,  7, BGEVENT_JUMPTEXT, CeladonUniversityLibrary2FBookshelf14Text
	bg_event  8,  7, BGEVENT_JUMPTEXT, CeladonUniversityLibrary2FBookshelf15Text
	bg_event  9,  7, BGEVENT_JUMPTEXT, CeladonUniversityLibrary2FBookshelf16Text
	bg_event 10,  7, BGEVENT_JUMPTEXT, CeladonUniversityLibrary2FBookshelf17Text
	bg_event 11,  7, BGEVENT_JUMPTEXT, CeladonUniversityLibrary2FBookshelf18Text
	bg_event 12,  7, BGEVENT_JUMPTEXT, CeladonUniversityLibrary2FBookshelf19Text
	bg_event 13,  7, BGEVENT_JUMPTEXT, CeladonUniversityLibrary2FBookshelf20Text
	bg_event  1,  6, BGEVENT_RIGHT, CeladonUniversityLibrary2FComputer1
	bg_event  3,  6, BGEVENT_RIGHT, CeladonUniversityLibrary2FComputer2
	bg_event  1,  8, BGEVENT_RIGHT, CeladonUniversityLibrary2FComputer3
	bg_event  3,  8, BGEVENT_RIGHT, CeladonUniversityLibrary2FComputer1
	bg_event  1, 10, BGEVENT_RIGHT, CeladonUniversityLibrary2FComputer1
	bg_event  3, 10, BGEVENT_RIGHT, CeladonUniversityLibrary2FComputer4

	def_object_events
	object_event  3,  4, SPRITE_COSPLAYER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityLibrary2FCosplayerText, -1
	object_event 11,  5, SPRITE_CUTE_GIRL, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 1, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityLibrary2FLassText, -1
	object_event  0,  9, SPRITE_ARTIST, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonUniversityLibrary2FArtistScript, -1
	object_event  2, 11, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityLibrary2FSuper_nerdText, -1
	object_event  8, 11, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, PAL_NPC_GREEN, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityLibrary2FCooltrainerfText, -1
	object_event 11, 10, SPRITE_SCHOOLBOY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, 0, OBJECTTYPE_COMMAND, jumptextfaceplayer, CeladonUniversityLibrary2FYoungsterText, -1
	itemball_event  0,  1, TIMER_BALL, 1, EVENT_CELADON_UNIVERSITY_LIBRARY_2F_TIMER_BALL

CeladonUniversityLibrary2FCosplayerText:
if DEF(_LOCALE_FR)
	text "J'adore la ville!"

	para "Je peux sortir en"
	line "cosplay sans qu'on"

	para "subisse de"
	line "regards."
	done
else
	text "It's great being"
	line "in the city!"

	para "I can wear my cos-"
	line "tume in public and"

	para "people don't bat"
	line "an eye!"
	done
endc

CeladonUniversityLibrary2FLassText:
if DEF(_LOCALE_FR)
	text "Ne juge pas un"
	line "livre à sa couver-"

	para "ture."
	line "Parfois la plus"

	para "terne cache une"
	line "belle histoire."
	done
else
	text "Never judge a book"
	line "by its cover."

	para "Sometimes even the"
	line "dullest exterior"

	para "can hide the best"
	line "stories."
	done
endc

CeladonUniversityLibrary2FArtistScript:
	showtext .Text1
	showtextfaceplayer .Text2
	turnobject LAST_TALKED, RIGHT
	end

.Text1:
if DEF(_LOCALE_FR)
	text "Jasmine fixait le"
	line "regard d'Erika…"
	done
else
	text "“Jasmine gazed"
	line "into Erika's deep"
	cont "brown eyes…”"
	done
endc

.Text2:
if DEF(_LOCALE_FR)
	text "Hein? Dégage!"

	para "Lire par-dessus"
	line "l'épaule, c'est"

	para "lourd!"
	done
else
	text "Huh? Go away!"

	para "It's rude to read"
	line "over someone's"
	cont "shoulder!"
	done
endc

CeladonUniversityLibrary2FSuper_nerdText:
if DEF(_LOCALE_FR)
	text "La commande réseau"
	line "affiche un message"

	para "sur chaque écran!"
	line "Que poster…"

	para "Pizza gratuite au"
	line "bureau Westwood!"

	para "Hi hi hi."
	done
else
	text "The “net send”"
	line "command will show"

	para "a message on"
	line "everyone else's"
	cont "computer screen!"

	para "Hmm, what to send…"

	para "“Free pizza in"
	line "Prof.Westwood's"
	cont "office!”"

	para "Hehehe."
	done
endc

CeladonUniversityLibrary2FCooltrainerfText:
if DEF(_LOCALE_FR)
	text "C'est MON livre."
	line "Et je vais le"

	para "LIRE!"
	done
else
	text "This is my book."
	line "And I'm going to"
	cont "READ IT!"
	done
endc

CeladonUniversityLibrary2FYoungsterText:
if DEF(_LOCALE_FR)
	text "Je lis sur un"
	line "#mon légendaire"

	para "qui déformerait"
	line "l'espace."

	para "Ca fait peur…"
	done
else
	text "I'm reading about a"
	line "legendary #mon"

	para "with the power to"
	line "distort space."

	para "It's pretty scary…"
	done
endc

CeladonUniversityLibrary2FBookshelf1Text:
if DEF(_LOCALE_FR)
	text "Alphabet ancien"
	line "grave sur des"

	para "#mon."
	line "Un de chaque,"

	para "et un voeu"
	line "s'exauce."
	done
else
	text "It's a book con-"
	line "taining #mon"

	para "of an ancient"
	line "alphabet."

	para "With one of each"
	line "kind, they can"
	cont "grant wishes."
	done
endc

CeladonUniversityLibrary2FBookshelf2Text:
if DEF(_LOCALE_FR)
	text "Livre en miettes."
	line "Titre efface,"

	para "mais une photo"
	line "d'un #mon en"

	para "grosse armure."
	done
else
	text "This book is"
	line "falling apart."

	para "The title is no"
	line "longer readable,"

	para "but there's a pic-"
	line "ture of a #mon"

	para "wearing heavy"
	line "armor."
	done
endc

CeladonUniversityLibrary2FBookshelf3Text:
if DEF(_LOCALE_FR)
	text "Cadenas géant sur"
	line "la couverture."

	para "On touche pas."
	done
else
	text "It's a book with a"
	line "giant padlock on"
	cont "the cover."

	para "Better leave it"
	line "alone."
	done
endc

CeladonUniversityLibrary2FBookshelf4Text:
if DEF(_LOCALE_FR)
	text "Livre en langue"
	line "étrangère!"

	para "On le repose…"
	done
else
	text "This book's written"
	line "in a foreign"
	cont "language!"

	para "Better put it"
	line "back…"
	done
endc

CeladonUniversityLibrary2FBookshelf5Text:
if DEF(_LOCALE_FR)
	text "Derrière les"
	line "livres…"

	para "Rien du tout."
	done
else
	text "Behind these"
	line "books…"

	para "Nope. There's"
	line "nothing here."
	done
endc

CeladonUniversityLibrary2FBookshelf6Text:
if DEF(_LOCALE_FR)
	text "#mon et formes"
	line "regionales."

	para "Un Raichu bizarre"
	line "sur la photo…"
	done
else
	text "It's a book about"
	line "#mon that have"

	para "regional diff-"
	line "erences."

	para "There's a picture"
	line "of a Raichu that"
	cont "looks a little"
	cont "strange…"
	done
endc

CeladonUniversityLibrary2FBookshelf7Text:
if DEF(_LOCALE_FR)
	text "Concours #mon."
	line "Un grand bâtiment"

	para "en couverture."
	done
else
	text "It's a book about"
	line "#mon Contests."

	para "An impressive-"
	line "looking building"

	para "is pictured on"
	line "the cover."
	done
endc

CeladonUniversityLibrary2FBookshelf8Text:
if DEF(_LOCALE_FR)
	text "Un gamin sur un"
	line "#mon sur la"

	para "couverture."
	line "Titre: How To"

	para "Train Your"
	line "Dragonite."
	done
else
	text "A boy is shown"
	line "riding a #mon"

	para "on the cover"
	line "of this book."

	para "“How to Train Your"
	line "Dragonite” is"
	cont "written in bold."
	done
endc

CeladonUniversityLibrary2FBookshelf9Text:
if DEF(_LOCALE_FR)
	text "Monde peuple"
	line "uniquement de"

	para "#mon!"
	line "Pikachu in #Park,"

	para "dit la couverture."
	done
else
	text "It's a book de-"
	line "picting a world"

	para "inhabited entirely"
	line "by #mon!"

	para "“Pikachu's Adven-"
	line "tures in #Park”"

	para "is written on the"
	line "cover."
	done
endc

CeladonUniversityLibrary2FBookshelf10Text:
if DEF(_LOCALE_FR)
	text "Une île de robots"
	line "#mon géants."

	para "#mon Robotics,"
	line "par Anne Droid…"
	done
else
	text "It's a book about"
	line "an island of giant"
	cont "#mon robots."

	para "“#mon Robotics”"
	line "by Anne Droid…"
	done
endc

CeladonUniversityLibrary2FBookshelf11Text:
if DEF(_LOCALE_FR)
	text "Pardon et Oublié,"
	line "par Saul Goode."

	para "Photo d'un type"
	line "tout sourire."
	done
else
	text "“Forgive and"
	line "Forget” by Saul"
	cont "Goode."

	para "There's a picture"
	line "of a man with a"
	cont "big grin."
	done
endc

CeladonUniversityLibrary2FBookshelf12Text:
if DEF(_LOCALE_FR)
	text "Apesanteur, par"
	line "Andy Gravity."

	para "Tout léger!"
	done
else
	text "“Weightlessness”"
	line "by Andy Gravity."
	cont "Sounds flighty!"
	done
endc

CeladonUniversityLibrary2FBookshelf13Text:
if DEF(_LOCALE_FR)
	text "Traité de bio"
	line "#mon."

	para "Un pavé!"
	done
else
	text "It's a book"
	line "explaining the"

	para "biology of"
	line "#mon."

	para "It's enormous!"
	done
endc

CeladonUniversityLibrary2FBookshelf14Text:
if DEF(_LOCALE_FR)
	text "Toiles d'araignée"
	line "partout."

	para "Personne ne lit ca"
	line "depuis longtemps."
	done
else
	text "This book is"
	line "covered in"
	cont "cobwebs."

	para "Guess it hasn't"
	line "been read in a"
	cont "while."
	done
endc

CeladonUniversityLibrary2FBookshelf15Text:
if DEF(_LOCALE_FR)
	text "Un #mon de"
	line "terreur."

	para "Titre: Absofusion"

	para "et le Trio du Tao."
	done
else
	text "It's a book de-"
	line "picting a fearsome"
	cont "#mon."

	para "“Absofusion and"
	line "the Tao Trio” is"

	para "written in big"
	line "letters."
	done
endc

CeladonUniversityLibrary2FBookshelf16Text:
if DEF(_LOCALE_FR)
	text "Ancient #mopolis:"
	line "histoire des"

	para "#mon disparus."
	line "Intéressant!"
	done
else
	text "“Ancient #-"
	line "mopolis: A History"

	para "of Extinct"
	line "#mon”"

	para "Sounds"
	line "interesting!"
	done
endc

CeladonUniversityLibrary2FBookshelf17Text:
if DEF(_LOCALE_FR)
	text "Typecasting: le"
	line "mystere de"

	para "Simularbre."
	done
else
	text "It's a book titled"
	line "“Typecasting: The"

	para "Mystery of"
	line "Sudowoodo”."
	done
endc

CeladonUniversityLibrary2FBookshelf18Text:
if DEF(_LOCALE_FR)
	text "Un arbre ancien"
	line "gardé par trois"

	para "titans."
	line "Presque magique."
	done
else
	text "It's a book about"
	line "an ancient tree"

	para "guarded by three"
	line "titans."

	para "It looks almost"
	line "magical."
	done
endc

CeladonUniversityLibrary2FBookshelf19Text:
if DEF(_LOCALE_FR)
	text "Trace originale du"
	line "Train Magnetique!"

	para "Arrêt prévu à"
	line "Ecruteak."
	done
else
	text "It's a copy of the"
	line "original route for"
	cont "the Magnet Train!"

	para "It shows a planned"
	line "stop-off station"
	cont "in Ecruteak City."
	done
endc

CeladonUniversityLibrary2FBookshelf20Text:
if DEF(_LOCALE_FR)
	text "Livres rouges,"
	line "bleus, jaunes,"

	para "verts… Toutes les"
	line "couleurs!"
	done
else
	text "Red books,"
	line "blue books,"
	cont "yellow books,"
	cont "green books…"

	para "Books of every"
	line "color!"
	done
endc

CeladonUniversityLibrary2FComputer1:
	jumpthistext

if DEF(_LOCALE_FR)
	text "Écran de connexion"
	line "avec un Magicarpe"

	para "en fond."
	done
else
	text "There's a login"
	line "screen with a"

	para "background image"
	line "of a Magikarp."
	done
endc

CeladonUniversityLibrary2FComputer2:
	jumpthistext

if DEF(_LOCALE_FR)
	text "Session pas"
	line "fermée!"
	done
else
	text "Someone forgot to"
	line "log out!"
	done
endc

CeladonUniversityLibrary2FComputer3:
	jumpthistext

if DEF(_LOCALE_FR)
	text "Un texte plein"
	line "de fautes d'ortho."
	done
else
	text "There's a story"
	line "full of grammar"
	cont "and spelling"
	cont "errors."
	done
endc

CeladonUniversityLibrary2FComputer4:
	jumpthistext

if DEF(_LOCALE_FR)
	text "Page web: devenir"
	line "un l33t h4x0r."
	done
else
	text "There's a web page"
	line "about how to be a"
	cont "“l33t h4x0r”."
	done
endc
