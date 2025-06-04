Route17_Script:
	call EnableAutoTextBoxDrawing
	ld hl, Route17TrainerHeaders
	ld de, Route17_ScriptPointers
	ld a, [wRoute17CurScript]
	call ExecuteCurMapScriptInTable
	ld [wRoute17CurScript], a
	ret

Route17_ScriptPointers:
	def_script_pointers
	dw_const CheckFightingMapTrainers,              SCRIPT_ROUTE17_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_ROUTE17_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_ROUTE17_END_BATTLE

Route17_TextPointers:
	def_text_pointers
	dw_const Route17Biker1Text,              TEXT_ROUTE17_BIKER1
	dw_const Route17Biker2Text,              TEXT_ROUTE17_BIKER2
	dw_const Route17Biker3Text,              TEXT_ROUTE17_BIKER3
	dw_const Route17Biker4Text,              TEXT_ROUTE17_BIKER4
	dw_const Route17Biker5Text,              TEXT_ROUTE17_BIKER5
	dw_const Route17Biker6Text,              TEXT_ROUTE17_BIKER6
	dw_const Route17Biker7Text,              TEXT_ROUTE17_BIKER7
	dw_const Route17Biker8Text,              TEXT_ROUTE17_BIKER8
	dw_const Route17Biker9Text,              TEXT_ROUTE17_BIKER9
	dw_const Route17Biker10Text,             TEXT_ROUTE17_BIKER10
	dw_const Route17NoticeSign1Text,         TEXT_ROUTE17_NOTICE_SIGN1
	dw_const Route17TrainerTips1Text,        TEXT_ROUTE17_TRAINER_TIPS1
	dw_const Route17TrainerTips2Text,        TEXT_ROUTE17_TRAINER_TIPS2
	dw_const Route17SignText,                TEXT_ROUTE17_SIGN
	dw_const Route17NoticeSign2Text,         TEXT_ROUTE17_NOTICE_SIGN2
	dw_const Route17CyclingRoadEndsSignText, TEXT_ROUTE17_CYCLING_ROAD_ENDS_SIGN

Route17TrainerHeaders:
	def_trainers
Route17TrainerHeader0:
	trainer EVENT_BEAT_ROUTE_17_TRAINER_0, 3, Route17Biker1BattleText, Route17Biker1EndBattleText, Route17Biker1AfterBattleText
Route17TrainerHeader1:
	trainer EVENT_BEAT_ROUTE_17_TRAINER_1, 4, Route17Biker2BattleText, Route17Biker2EndBattleText, Route17Biker2AfterBattleText
Route17TrainerHeader2:
	trainer EVENT_BEAT_ROUTE_17_TRAINER_2, 4, Route17Biker3BattleText, Route17Biker3EndBattleText, Route17Biker3AfterBattleText
Route17TrainerHeader3:
	trainer EVENT_BEAT_ROUTE_17_TRAINER_3, 4, Route17Biker4BattleText, Route17Biker4EndBattleText, Route17Biker4AfterBattleText
Route17TrainerHeader4:
	trainer EVENT_BEAT_ROUTE_17_TRAINER_4, 3, Route17Biker5BattleText, Route17Biker5EndBattleText, Route17Biker5AfterBattleText
Route17TrainerHeader5:
	trainer EVENT_BEAT_ROUTE_17_TRAINER_5, 2, Route17Biker6BattleText, Route17Biker6EndBattleText, Route17Biker6AfterBattleText
Route17TrainerHeader6:
	trainer EVENT_BEAT_ROUTE_17_TRAINER_6, 4, Route17Biker7BattleText, Route17Biker7EndBattleText, Route17Biker7AfterBattleText
Route17TrainerHeader7:
	trainer EVENT_BEAT_ROUTE_17_TRAINER_7, 2, Route17Biker8BattleText, Route17Biker8EndBattleText, Route17Biker8AfterBattleText
Route17TrainerHeader8:
	trainer EVENT_BEAT_ROUTE_17_TRAINER_8, 3, Route17Biker9BattleText, Route17Biker9EndBattleText, Route17Biker9AfterBattleText
Route17TrainerHeader9:
	trainer EVENT_BEAT_ROUTE_17_TRAINER_9, 4, Route17Biker10BattleText, Route17Biker10EndBattleText, Route17Biker10AfterBattleText
	db -1 ; end

Route17Biker1Text:
	text_asm
	ld hl, Route17TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

Route17Biker1BattleText:
	text "こども　あいてに　たたかっても"
	line "しょうきんは　たまらねえ！"
	done

Route17Biker1EndBattleText:
	text "もえつきたぜ"
	prompt

Route17Biker1AfterBattleText:
	text "サイクりング　ロードは"
	line "おとしものが　おおい！"
	cont "ひろって　うれば　もうかるぜえ"
	done

Route17Biker2Text:
	text_asm
	ld hl, Route17TrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

Route17Biker2BattleText:
	text "たいりょく　には"
	line "じしん　あるぜえ<……>　こいよ！"
	done

Route17Biker2EndBattleText:
	text "ぼよよーん！"
	prompt

Route17Biker2AfterBattleText:
	text "ついでに"
	line "おなかでも　さわって　みるか"
	done

Route17Biker3Text:
	text_asm
	ld hl, Route17TrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

Route17Biker3BattleText:
	text "セキチク　シティに　いくのか？"
	done

Route17Biker3EndBattleText:
	text "あひょー！"
	prompt

Route17Biker3AfterBattleText:
	text "くだりざか　いっきに　おりると"
	line "きもち　いいぜ！"
	done

Route17Biker4Text:
	text_asm
	ld hl, Route17TrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

Route17Biker4BattleText:
	text "おれたち　ぼうそう　ぞく！"
	line "なく　こも　だまらせるぜ！"
	done

Route17Biker4EndBattleText:
	text "がまん　ならねえ"
	prompt

Route17Biker4AfterBattleText:
	text "なかなか<……>"
	line "どきょう　ある　じゃねえか"
	done

Route17Biker5Text:
	text_asm
	ld hl, Route17TrainerHeader4
	call TalkToTrainer
	jp TextScriptEnd

Route17Biker5BattleText:
	text "うりゃあ！"
	line "ビりりダマに　しびれろ！"
	done

Route17Biker5EndBattleText:
	text "ぐおッ<……>！"
	prompt

Route17Biker5AfterBattleText:
	text "この　ビりりダマは"
	line "むじん　はつでんしょで　とったぜ"
	done

Route17Biker6Text:
	text_asm
	ld hl, Route17TrainerHeader5
	call TalkToTrainer
	jp TextScriptEnd

Route17Biker6BattleText:
	text "おれの　#　レべル　あげても"
	line "なかなか　しんか　しないぜえ！"
	done

Route17Biker6EndBattleText:
	text "この　やろ！"
	prompt

Route17Biker6AfterBattleText:
	text "そういえば　#に　よって"
	line "いしを　かざすと"
	cont "しんか　するかも　しれないぜえ"
	done

Route17Biker7Text:
	text_asm
	ld hl, Route17TrainerHeader6
	call TalkToTrainer
	jp TextScriptEnd

Route17Biker7BattleText:
	text "ひとあせ　かいて　やせるかあ！"
	done

Route17Biker7EndBattleText:
	text "だあ！"
	line "あつい　たたかい　だぜえ"
	prompt

Route17Biker7AfterBattleText:
	text "あせ　かいて"
	line "すこし　やせた　きが　するぜえ"
	done

Route17Biker8Text:
	text_asm
	ld hl, Route17TrainerHeader7
	call TalkToTrainer
	jp TextScriptEnd

Route17Biker8BattleText:
	text "つっぱる　ことが"
	line "おとこの　くんしょうだぜえ！"
	done

Route17Biker8EndBattleText:
	text "がーッ！"
	prompt

Route17Biker8AfterBattleText:
	text "おとこ　だったら"
	line "しんじる　みちを　いけえ！"
	done

Route17Biker9Text:
	text_asm
	ld hl, Route17TrainerHeader8
	call TalkToTrainer
	jp TextScriptEnd

Route17Biker9BattleText:
	text "いかす　じてんしゃだな！"
	line "のりごこちは　どうだ？"
	done

Route17Biker9EndBattleText:
	text "くそう！"
	prompt

Route17Biker9AfterBattleText:
	text "さかみちでの　ハンドル　さばき"
	line "むずかしい　だろ！"
	done

Route17Biker10Text:
	text_asm
	ld hl, Route17TrainerHeader9
	call TalkToTrainer
	jp TextScriptEnd

Route17Biker10BattleText:
	text "<……>　だりいよ<……>　ねみいよ"
	line "めんどくせえ<……>！"
	done

Route17Biker10EndBattleText:
	text "おわったか"
	prompt

Route17Biker10AfterBattleText:
	text "もう　バックレて　ねてえよ"
	done

Route17NoticeSign1Text:
	text "チラシが　はってある！"

	para "<……>　どうぐ　なげすて　ちゅうい！"
	done

Route17TrainerTips1Text:
	text "<……>　おとくな　けいじばん！"

	para "おなじ　#　おなじ　レべルでも"
	line "とるたびに　パラメータが　すこし"
	cont "ちがってて<……>　そだつと"
	cont "ちがいが　おおきく　なる！"
	done

Route17TrainerTips2Text:
	text "<……>　おとくな　けいじばん！"

	para "ボタンを　おしてれば"
	line "さかみちでも　じてんしゃの"
	cont "タイヤが　すべらない！"
	done

Route17SignText:
	text "ここは　１７ばん　どうろ"
	line "タマムシ　<……>　セキチク"
	done

Route17NoticeSign2Text:
	text "チラシが　はってある！"

	para "ゲームを　なげるな！"
	line "モンスターボールを　なげろ！"
	done

Route17CyclingRoadEndsSignText:
	text "サイクりング　ロード"
	line "<……>　さかみちは　ここまで！"
	done
