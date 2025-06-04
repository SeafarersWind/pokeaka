SSAnneB1FRooms_Script:
	call EnableAutoTextBoxDrawing
	ld hl, SSAnne10TrainerHeaders
	ld de, SSAnneB1FRooms_ScriptPointers
	ld a, [wSSAnneB1FRoomsCurScript]
	call ExecuteCurMapScriptInTable
	ld [wSSAnneB1FRoomsCurScript], a
	ret

SSAnneB1FRooms_ScriptPointers:
	def_script_pointers
	dw_const CheckFightingMapTrainers,              SCRIPT_SSANNEB1FROOMS_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_SSANNEB1FROOMS_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_SSANNEB1FROOMS_END_BATTLE

SSAnneB1FRooms_TextPointers:
	def_text_pointers
	dw_const SSAnneB1FRoomsSailor1Text,   TEXT_SSANNEB1FROOMS_SAILOR1
	dw_const SSAnneB1FRoomsSailor2Text,   TEXT_SSANNEB1FROOMS_SAILOR2
	dw_const SSAnneB1FRoomsSailor3Text,   TEXT_SSANNEB1FROOMS_SAILOR3
	dw_const SSAnneB1FRoomsSailor4Text,   TEXT_SSANNEB1FROOMS_SAILOR4
	dw_const SSAnneB1FRoomsSailor5Text,   TEXT_SSANNEB1FROOMS_SAILOR5
	dw_const SSAnneB1FRoomsFisherText,    TEXT_SSANNEB1FROOMS_FISHER
	dw_const SSAnneB1FRoomsSuperNerdText, TEXT_SSANNEB1FROOMS_SUPER_NERD
	dw_const SSAnneB1FRoomsMachokeText,   TEXT_SSANNEB1FROOMS_MACHOKE
	dw_const PickUpItemText,              TEXT_SSANNEB1FROOMS_ETHER
	dw_const PickUpItemText,              TEXT_SSANNEB1FROOMS_TM_REST
	dw_const PickUpItemText,              TEXT_SSANNEB1FROOMS_MAX_POTION

SSAnne10TrainerHeaders:
	def_trainers
SSAnne10TrainerHeader0:
	trainer EVENT_BEAT_SS_ANNE_10_TRAINER_0, 2, SSAnneB1FRoomsSailor1BattleText, SSAnneB1FRoomsSailor1EndBattleText, SSAnneB1FRoomsSailor1AfterBattleText
SSAnne10TrainerHeader1:
	trainer EVENT_BEAT_SS_ANNE_10_TRAINER_1, 3, SSAnneB1FRoomsSailor2BattleText, SSAnneB1FRoomsSailor2EndBattleText, SSAnneB1FRoomsSailor2AfterBattleText
SSAnne10TrainerHeader2:
	trainer EVENT_BEAT_SS_ANNE_10_TRAINER_2, 2, SSAnneB1FRoomsSailor3BattleText, SSAnneB1FRoomsSailor3EndBattleText, SSAnneB1FRoomsSailor3AfterBattleText
SSAnne10TrainerHeader3:
	trainer EVENT_BEAT_SS_ANNE_10_TRAINER_3, 2, SSAnneB1FRoomsSailor4BattleText, SSAnneB1FRoomsSailor4EndBattleText, SSAnneB1FRoomsSailor4AfterBattleText
SSAnne10TrainerHeader4:
	trainer EVENT_BEAT_SS_ANNE_10_TRAINER_4, 2, SSAnneB1FRoomsSailor5BattleText, SSAnneB1FRoomsSailor5EndBattleText, SSAnneB1FRoomsSailor5AfterBattleText
SSAnne10TrainerHeader5:
	trainer EVENT_BEAT_SS_ANNE_10_TRAINER_5, 3, SSAnneB1FRoomsFisherBattleText, SSAnneB1FRoomsFisherEndBattleText, SSAnneB1FRoomsFisherAfterBattleText
	db -1 ; end

SSAnneB1FRoomsSailor1Text:
	text_asm
	ld hl, SSAnne10TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

SSAnneB1FRoomsSailor1BattleText:
	text "ふなのりに"
	line "ケンカは　つきものだ　やるか！"
	done

SSAnneB1FRoomsSailor1EndBattleText:
	text "おし！"
	line "いい　しょうぶ　だった"
	prompt

SSAnneB1FRoomsSailor1AfterBattleText:
	text "ははは！"
	line "ぼうずも　ふなのりに　ならんか？"
	done

SSAnneB1FRoomsSailor2Text:
	text_asm
	ld hl, SSAnne10TrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

SSAnneB1FRoomsSailor2BattleText:
	text "そら　こい！"
	line "ふなのり　だましいに　かけて　かつ"
	done

SSAnneB1FRoomsSailor2EndBattleText:
	text "ふなのり　だましいも"
	line "おまえには　まけた！"
	prompt

SSAnneB1FRoomsSailor2AfterBattleText:
	text "クチバの　みなと　といえば"
	line "つりおやじは　げんき　かなー？"
	done

SSAnneB1FRoomsSailor3Text:
	text_asm
	ld hl, SSAnne10TrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

SSAnneB1FRoomsSailor3BattleText:
	text "ふなのり　だって"
	line "#　ぐらい　もってるぜ！"
	done

SSAnneB1FRoomsSailor3EndBattleText:
	text "なかなか"
	line "やるじゃねーか"
	prompt

SSAnneB1FRoomsSailor3AfterBattleText:
	text "おれたちの　#は"
	line "うみに　でた　ときに"
	cont "じぶんで　とった　もの　ばかり　だぜ"
	done

SSAnneB1FRoomsSailor4Text:
	text_asm
	ld hl, SSAnne10TrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

SSAnneB1FRoomsSailor4BattleText:
	text "こういう　げんきな　こども"
	line "おれは　すきだぜ！@"
	text_end

SSAnneB1FRoomsSailor4EndBattleText:
	text "ええい！"
	line "まけたぜ！"
	prompt

SSAnneB1FRoomsSailor4AfterBattleText:
	text "うみの　#は"
	line "ふかい　ところに　いるから"
	cont "つりざおで　つり　あげるんだ！"
	done

SSAnneB1FRoomsSailor5Text:
	text_asm
	ld hl, SSAnne10TrainerHeader4
	call TalkToTrainer
	jp TextScriptEnd

SSAnneB1FRoomsSailor5BattleText:
	text "うっしゃー！"
	line "まけたら　うみ　に　おとすぞー！"
	done

SSAnneB1FRoomsSailor5EndBattleText:
	text "くー　やられた！"
	prompt

SSAnneB1FRoomsSailor5AfterBattleText:
	text "うみに　でてると"
	line "たまーに　クラゲ　#が"
	cont "ながれて　くるぜ"
	done

SSAnneB1FRoomsFisherText:
	text_asm
	ld hl, SSAnne10TrainerHeader5
	call TalkToTrainer
	jp TextScriptEnd

SSAnneB1FRoomsFisherBattleText:
	text "うみのもの　とも　やまのもの　とも"
	line "わからない　しんいり　さん！"

	para "わたしが　もってるのは"
	line "うみのもの　ばかり　です！"
	done

SSAnneB1FRoomsFisherEndBattleText:
	text "ちっ！"
	line "つり　のがしたよ"
	prompt

SSAnneB1FRoomsFisherAfterBattleText:
	text "あなた　まかしたら　つりびとの"
	line "つきびとに　しようと　おもってた"
	done

SSAnneB1FRoomsSuperNerdText:
	text "おれの　あいぼう　ゴーりキーは"
	line "ごっつい　ちから　もち！"

	para "すごく　おもい　いわ　だって"
	line "かいりきで　うごかせるぜ！"
	done

SSAnneB1FRoomsMachokeText:
	text "ゴーりキー<BOLD_P>ごおー　ごごごー@"
	text_asm
	ld a, MACHOKE
	call PlayCry
	jp TextScriptEnd
