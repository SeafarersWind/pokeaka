UndergroundPathRoute7_Script:
	ld a, ROUTE_7
	ld [wLastMap], a
	jp EnableAutoTextBoxDrawing

UndergroundPathRoute7_TextPointers:
	def_text_pointers
	dw_const UndergroundPathRoute7MiddleAgedManText, TEXT_UNDERGROUNDPATHROUTE7_MIDDLE_AGED_MAN

UndergroundPathRoute7MiddleAgedManText:
	text "この　ところ"
	line "タマムシ　シティの　ほう　でも"
	cont "いねむり　#が"
	cont "あらわれる　そうだよ"
	done
