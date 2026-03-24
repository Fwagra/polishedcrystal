; If you change the item names, also update PluralTable (see data/text/plural_table.asm)

	; use rawchars so VWF will work in the PC
	setcharmap no_ngrams

ItemNames::
	list_start
	li "Parc Ball"

	li "Poké Ball"
	li "Super Ball"
	li "Hyper Ball"
	li "Master Ball"

	li "Safari Ball"

	li "Niveau Ball"
	li "Appât Ball"
	li "Lune Ball"
	li "Copain Ball"
	li "Speed Ball"
	li "Masse Ball"
	li "Love Ball"

	li "Bis Ball"
	li "Chrono Ball"
	li "Faiblo Ball"
	li "Filet Ball"
	li "Scuba Ball"
	li "Luxe Ball"
	li "Soin Ball"
	li "Rapide Ball"
	li "Sombre Ball"
	li "Rêve Ball"

	li "Honor Ball"
	li "Mémoire Ball"

	li "Potion"
	li "Super Potion"
	li "Hyper Potion"
	li "Potion Max"

	li "Antidote"
	li "Anti-Brûle"
	li "Anti-Para"
	li "Réveil"
	li "Antigel"
	li "Total Soin"
	li "Guérison"

	li "Rappel"
	li "Rappel Max"

	li "Huile"
	li "Huile Max"
	li "Élixir"
	li "Élixir Max"

	li "PV Plus"
	li "Protéine"
	li "Fer"
	li "Carbone"
	li "Calcium"
	li "Zinc"
	li "Super Bonbon"
	li "PP Plus"
	li "PP Max"

	li "Eau Fraîche"
	li "Soda Cool"
	li "Limonade"
	li "Lait Meumeu"
if DEF(FAITHFUL)
	li "Bonbon Rage"
else
	li "Gâteau Rage"
endc
	li "Croustirocs"

	li "Poudre Énerg"
	li "Racinénergie"
	li "Poudre Soin"
	li "Herbe Rappel"

	li "Cendresacrée"

	li "Baie Ceriz"
	li "Baie Maron"
	li "Baie Pêcha"
	li "Baie Fraive"
	li "Baie Willia"
	li "Baie Mepo"
	li "Baie Oran"
	li "Baie Kika"
	li "Baie Prine"
	li "Baie Sitrus"

	li "Baie Figuy"

	li "Baie Grena"
	li "Baie Alga"
	li "Baie Qualot"
	li "Baie Lonme"
	li "Baie Résin"
	li "Baie Tamato"

	li "Baie Lichii"
	li "Baie Lingan"
	li "Baie Sailak"
	li "Baie Pitaye"
	li "Baie Abriko"
	li "Baie Lansat"
	li "Baie Frista"

	li "Baie Enigma"

	li "Baie Chérim"

	li "Baie Jaboca"
	li "Baie Pommo"

	li "Baie Éka"
	li "Baie Rangma"

	li "Jus de Baie"

	li "Repousse"
	li "Super Repous"
	li "Repousse Max"

	li "Corde Sortie"
	li "Poké Poupée"

	li "Engrais"

if DEF(FAITHFUL)
	li "Miel"
else
	li "Miel"
endc

	li "Attaque +"
	li "Défense +"
	li "Vitesse +"
	li "Atq. Spé. +"
	li "Déf. Spé. +"
	li "Précision +"
	li "Muscle +"
if DEF(FAITHFUL)
	li "Garde-Stats"
else
	li "Garde-Stats"
endc

	li "Caps. Talent"
	li "Patch Talent"

	li "Pierre Plant"
	li "Pierre Feu"
	li "Pierre Eau"
	li "Pierre Foudr"
	li "Pierre Glace"
	li "Pierre Lune"
	li "Pierre Solei"
	li "Pierre Nuit"
	li "Pierre Éclat"
	li "Pierre Stase"

	li "Multi Exp"

	li "Mouc. Soie"
	li "Ceint. Noire"
	li "Bec Pointu"
	li "Pic Venin"
	li "Sable Doux"
	li "Pierre Dure"
	li "Poudre Arg."
	li "Rune Sort"
	li "Peau Métal"
	li "Charbon"
	li "Eau Mystique"
	li "Grain Miracl"
	li "Aimant"
	li "Cuillertordu"
	li "Glacéternel"
	li "Croc Dragon"
	li "Lunet.Noires"
	li "Ruban Rose"

	li "ADN Berserk"
	li "Poudreclaire"
	li "Vive Griffe"
	li "Roche Royale"
	li "Pièce Rune"
	li "Rune Purif."
	li "Boule Fumée"
	li "Bandeau"
	li "Œuf Chance"
	li "Restes"

	li "Grelot Zen"
	li "Grelot Coque"

	li "Band. Muscle"
	li "Lunet. Sages"
	li "Ceinture Pro"
	li "Lumargile"
	li "Orbe Vie"
	li "Ceint. Force"
	li "Métronome"
	li "Balle Fer"
	li "Ralentiqueue"
	li "Nœud Destin"
	li "Accro Griffe"
	li "Carapace Mue"
	li "Grosseracine"

	li "Évoluroc"
	li "Casque Brut"
	li "Ballon"
	li "Carton Rouge"
	li "B. Étreinte"
	li "Bouton Fuite"

	li "Vulné-Assur."
	li "VesteCombat"
	li "Lunet.Filtre"

	li "Pare-Effet"

	li "Spray Gorge"
	li "Sac Fuite"
	li "GrosseBottes"
	li "Assur. Echec"
	li "Chariot Dist"

	li "TalismanSain"
	li "Feuille Copi"
	li "Gant de Boxe"
	li "Cape Obscure"
	li "Dé Pipé"

	li "Ballelumière"
	li "Poireau"
	li "Masse Os"
	li "Poing Chance"
	li "Poudre Métal"
	li "Poudre Vite"
	li "Armure"

	li "Lentilscope"
	li "Loupe"
	li "Lentil. Zoom"

	li "Herbe Mental"
	li "Herbe Pouv."
	li "Herbeblanche"

	li "Roche Humide"
	li "Roche Chaude"
	li "Roche Lisse"
	li "Roche Glace"

	li "Band. Choix"
	li "Mouch. Choix"
	li "Lunet. Choix"

	li "Orbe Flamme"
	li "Orbe Toxique"
	li "Boue Noire"

	li "Brac. Macho"
	li "Poids Pouv."
	li "Poign. Pouv."
	li "Ceint. Pouv."
	li "Lent. Pouv."
	li "Band. Pouv."
	li "Chaîne Pouv."

	li "Écailledraco"
	li "Améliorator"
	li "CD Douteux"
	li "Protecteur"
	li "Électriseur"
	li "Magmariseur"
	li "Croc Rasoir"
	li "Grif. Rasoir"
	li "Pierre Ovale"
	li "BibelotBizar"
	li "Fil-liaison"

	li "Feuille Arg."
	li "Feuille d'Or"
	li "Aromate"
	li "Capsule Argt"

	li "Pépite"
	li "Maxi Pépite"
	li "Petit Champi"
	li "Gros Champi"
	li "Champi Suave"
	li "Perle"
	li "Grande Perle"
	li "Perle Triple"
	li "Pouss.Étoile"
	li "Morc. Étoile"
	li "Morc. Brique"
	li "Os Rare"
	li "Queueramolos"

	li "Nautile"
	li "Fossile Dôme"
	li "Vieil Ambre"

	li "Letr Fleur"
	li "Letr Surf"
	li "Letrbleuciel"
	li "Letrportrait"
	li "Letrcharm."
	li "Letr Évoli"
	li "Letr Morph"
	li "Letrcielbleu"
	li "Letr Musique"
	li "Letr Mirage"
	assert_list_length NUM_ITEMS + 1

	setcharmap default
