Route11_Script:
	call EnableAutoTextBoxDrawing
	ld hl, Route11TrainerHeaders
	ld de, Route11_ScriptPointers
	ld a, [wRoute11CurScript]
	call ExecuteCurMapScriptInTable
	ld [wRoute11CurScript], a
	ret

Route11_ScriptPointers:
	def_script_pointers
	dw_const CheckFightingMapTrainers,              SCRIPT_ROUTE11_DEFAULT
	dw_const DisplayEnemyTrainerTextAndStartBattle, SCRIPT_ROUTE11_START_BATTLE
	dw_const EndTrainerBattle,                      SCRIPT_ROUTE11_END_BATTLE

Route11_TextPointers:
	def_text_pointers
	dw_const Route11Gambler1Text,         TEXT_ROUTE11_GAMBLER1
	dw_const Route11Gambler2Text,         TEXT_ROUTE11_GAMBLER2
	dw_const Route11Youngster1Text,       TEXT_ROUTE11_YOUNGSTER1
	dw_const Route11SuperNerd1Text,       TEXT_ROUTE11_SUPER_NERD1
	dw_const Route11Youngster2Text,       TEXT_ROUTE11_YOUNGSTER2
	dw_const Route11Gambler3Text,         TEXT_ROUTE11_GAMBLER3
	dw_const Route11Gambler4Text,         TEXT_ROUTE11_GAMBLER4
	dw_const Route11Youngster3Text,       TEXT_ROUTE11_YOUNGSTER3
	dw_const Route11SuperNerd2Text,       TEXT_ROUTE11_SUPER_NERD2
	dw_const Route11Youngster4Text,       TEXT_ROUTE11_YOUNGSTER4
	dw_const Route11DiglettsCaveSignText, TEXT_ROUTE11_DIGLETTSCAVE_SIGN

Route11TrainerHeaders:
	def_trainers
Route11TrainerHeader0:
	trainer EVENT_BEAT_ROUTE_11_TRAINER_0, 3, Route11Gambler1BattleText, Route11Gambler1EndBattleText, Route11Gambler1AfterBattleText
Route11TrainerHeader1:
	trainer EVENT_BEAT_ROUTE_11_TRAINER_1, 2, Route11Gambler2BattleText, Route11Gambler2EndBattleText, Route11Gambler2AfterBattleText
Route11TrainerHeader2:
	trainer EVENT_BEAT_ROUTE_11_TRAINER_2, 3, Route11Youngster1BattleText, Route11Youngster1EndBattleText, Route11Youngster1AfterBattleText
Route11TrainerHeader3:
	trainer EVENT_BEAT_ROUTE_11_TRAINER_3, 3, Route11SuperNerd1BattleText, Route11SuperNerd1EndBattleText, Route11SuperNerd1AfterBattleText
Route11TrainerHeader4:
	trainer EVENT_BEAT_ROUTE_11_TRAINER_4, 4, Route11Youngster2BattleText, Route11Youngster2EndBattleText, Route11Youngster2AfterBattleText
Route11TrainerHeader5:
	trainer EVENT_BEAT_ROUTE_11_TRAINER_5, 3, Route11Gambler3BattleText, Route11Gambler3EndBattleText, Route11Gambler3AfterBattleText
Route11TrainerHeader6:
	trainer EVENT_BEAT_ROUTE_11_TRAINER_6, 3, Route11Gambler4BattleText, Route11Gambler4EndBattleText, Route11Gambler4AfterBattleText
Route11TrainerHeader7:
	trainer EVENT_BEAT_ROUTE_11_TRAINER_7, 4, Route11Youngster3BattleText, Route11Youngster3EndBattleText, Route11Youngster3AfterBattleText
Route11TrainerHeader8:
	trainer EVENT_BEAT_ROUTE_11_TRAINER_8, 3, Route11SuperNerd2BattleText, Route11SuperNerd2EndBattleText, Route11SuperNerd2AfterBattleText
Route11TrainerHeader9:
	trainer EVENT_BEAT_ROUTE_11_TRAINER_9, 4, Route11Youngster4BattleText, Route11Youngster4EndBattleText, Route11Youngster4AfterBattleText
	db -1 ; end

Route11Gambler1Text:
	text_asm
	ld hl, Route11TrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

Route11Gambler1BattleText:
	text "かつか　まけるか　しょうぶ！"
	done

Route11Gambler1EndBattleText:
	text "ちッ！"
	line "きょうは　ついて　ない"
	prompt

Route11Gambler1AfterBattleText:
	text "#は　じんせい　だ！"
	line "じんせいは　ギャンブル　だ！"
	done

Route11Gambler2Text:
	text_asm
	ld hl, Route11TrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

Route11Gambler2BattleText:
	text "しょうぶ　ごとが　すきでよ！"
	line "だから　あいては　えらばねえ！"
	done

Route11Gambler2EndBattleText:
	text "くそッ！"
	line "かてると　ふんだ　が　だめか！"
	prompt

Route11Gambler2AfterBattleText:
	text "まけを　こわがって　たら"
	line "#は　できねえ　もんな！"
	done

Route11Youngster1Text:
	text_asm
	ld hl, Route11TrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

Route11Youngster1BattleText:
	text "#に　ずるは　なし　だよ！"
	line "せいせい　どうどう　やろう！"
	done

Route11Youngster1EndBattleText:
	text "ありゃ？"
	line "こんな　はずじゃ<……>"
	prompt

Route11Youngster1AfterBattleText:
	text "せいせい　どうどう　やった！"
	line "こうかいは　しないよ！"
	done

Route11SuperNerd1Text:
	text_asm
	ld hl, Route11TrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

Route11SuperNerd1BattleText:
	text "こんちは！"
	line "おたくの　でんき　あんぜん　ですか？"
	done

Route11SuperNerd1EndBattleText:
	text "おじさんを"
	line "まかす　なんて　すごいな！"
	prompt

Route11SuperNerd1AfterBattleText:
	text "ひとこと　いい　わすれてた！"
	line "でんきは　たいせつに！"
	done

Route11Youngster2Text:
	text_asm
	ld hl, Route11TrainerHeader4
	call TalkToTrainer
	jp TextScriptEnd

Route11Youngster2BattleText:
	text "ぼくは　#　<TRAINER>に"
	line "なった　ばかり　だ！"
	cont "でも　かつ　じしん　あるよ！"
	done

Route11Youngster2EndBattleText:
	text "まける　なんて<……>　まだ"
	line "#　そだって　ないのか　なあ"
	prompt

Route11Youngster2AfterBattleText:
	text "なんだよー"
	line "おまえなんか　あっちいけよー！"
	done

Route11Gambler3Text:
	text_asm
	ld hl, Route11TrainerHeader5
	call TalkToTrainer
	jp TextScriptEnd

Route11Gambler3BattleText:
	text "ははーは！　わたしは"
	line "いままで　まけた　ことが　ないぞ！"
	done

Route11Gambler3EndBattleText:
	text "はッ！"
	line "はじめて　まけたーッ！"
	prompt

Route11Gambler3AfterBattleText:
	text "しょうぶは　ときの　うん　だ！"
	line "そう　おもわないと　おちこむよ"
	done

Route11Gambler4Text:
	text_asm
	ld hl, Route11TrainerHeader6
	call TalkToTrainer
	jp TextScriptEnd

Route11Gambler4BattleText:
	text "わたしは"
	line "いままで　かった　ことが　ない<……>"
	done

Route11Gambler4EndBattleText:
	text "<……>　がく！"
	line "やっぱり　まけた！"
	prompt

Route11Gambler4AfterBattleText:
	text "しょうぶは　ときの　うん　だ<……>"
	line "そう　おもわないと　おちこむよ"
	done

Route11Youngster3Text:
	text_asm
	ld hl, Route11TrainerHeader7
	call TalkToTrainer
	jp TextScriptEnd

Route11Youngster3BattleText:
	text "ぼくは　クラスで　いちばん　つよい！"
	line "まいあさ　れんしゅうも　してるんだ！"
	done

Route11Youngster3EndBattleText:
	text "あちゃー！　<……>　もっと"
	line "つよい　#　でなきゃ　だめだ！"
	prompt

Route11Youngster3AfterBattleText:
	text "たまに　やまから　おりてくる"
	line "ふとった　#<……>"

	para "あれ　つかまえたら"
	line "つよいんじゃ　ないかな？"
	done

Route11SuperNerd2Text:
	text_asm
	ld hl, Route11TrainerHeader8
	call TalkToTrainer
	jp TextScriptEnd

Route11SuperNerd2BattleText:
	text "オッース！"
	line "でんきの　けしわすれ　して　ないか"
	done

Route11SuperNerd2EndBattleText:
	text "まいった！"
	line "さいきんの　こどもは　つよい！"
	prompt

Route11SuperNerd2AfterBattleText:
	text "さてと<……>"
	line "でんきこうじに　いかなくちゃ"
	done

Route11Youngster4Text:
	text_asm
	ld hl, Route11TrainerHeader9
	call TalkToTrainer
	jp TextScriptEnd

Route11Youngster4BattleText:
	text "だいじに　そだてた　#！"
	line "そろそろ　たたかわせて　みよう！"
	done

Route11Youngster4EndBattleText:
	text "バイバイ<……>！"
	line "ありがとう　さようなら！"
	prompt

Route11Youngster4AfterBattleText:
	text "ちえッ<……>！"
	line "もっと　つよいの　さがして　こよう"
	done

Route11DiglettsCaveSignText:
	text "ディグダの　あな"
	done
