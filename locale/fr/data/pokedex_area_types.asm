; Libellés de type de zone (écran Aire du Pokédex)
Pokedex_AreaTypeLists:
	list_start
	setcharmap no_ngrams
	li "Matin"
	li "Jour"
	li "Nuit"
	li "Surf"
	li "Canne"
	li "Super Canne"
	li "Méga Canne"
	li "Coup Boule"
if DEF(FAITHFUL)
	li "Éclate-Roc"
else
	li "Casse-Brique"
endc
	li "Concours"
	li "Itinérant"
	setcharmap default
	assert_list_length NUM_DEXAREAS
