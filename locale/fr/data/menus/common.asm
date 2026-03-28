MACRO LOCALE
	SECTION "\1", ROMX
	\1::
	if "\2" === "Untranslated"
		warn "Untranslated locale \1"
	elif "\2" !== "Translated"
		fail "invalid locale: \2"
	endc
ENDM

LOCALE MainMenuDataHeader, Translated
	menu_coords 0, 0, 16, 7
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 0 ; items
	dw MainMenuItems
	dw PlaceMenuStrings
	dw .Strings

.Strings:
	db "Continuer@"
	db "Nouveau jeu@"
	db "Nouveau jeu+@"
	db "Options@"
	db "Musiques@"
