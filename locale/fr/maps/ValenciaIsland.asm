ValenciaIslandCooltrainermText:
	text "Deux Dresseurs"
	line "très forts vivent"
	cont "dans cette maison."

	para "C'est une mère et"
	line "sa fille…"
	cont "Ou peut-être son"
	cont "fils?"

	para "Enfin bref, ils"
	line "sont en vacances."
	done

ValenciaIslandSignText:
	text "Ile Valencia"

	para "Oranges amères et"
	line "brise sucrée"
	done

ValenciaIslandGoneFishingSignText:
	text "Parti pêcher"

	para "(En vacances"
	line "à Alola!)"
	done

ValenciaIslandLockedDoorText:
	text "C'est verrouillé…"
	done

IvysLabSignText:
	text "Lab. du PROF. IVY"
	line "№2 de Valencia"
	done

IvysHouseSignText:
	text "Maison du"
	line "PROF. IVY"
	done

ValenciaIslandYoungsterScript:
	readvar VAR_PLAYERGENDER
	iftrue_jumptextfaceplayer .Text2
	jumpthistextfaceplayer

	text "Prof.Ivy est"
	line "super canon,"
	cont "tu trouves pas?"
	done

.Text2:
	text "T'es mignonne,"
	line "mais Prof.Ivy est"
	cont "super canon!"
	done
