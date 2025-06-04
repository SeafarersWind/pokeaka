PrintBenchGuyText:
	call EnableAutoTextBoxDrawing
	ld hl, BenchGuyTextPointers
	ld a, [wCurMap]
	ld b, a
.loop
	ld a, [hli]
	cp -1
	ret z
	cp b
	jr z, .match
	inc hl
	inc hl
	jr .loop
.match
	ld a, [hli]
	ld b, a
	ld a, [wSpritePlayerStateData1FacingDirection]
	cp b
	jr nz, .loop ; player isn't facing the bench guy
	ld a, [hl]
	jp PrintPredefTextID

INCLUDE "data/events/bench_guys.asm"

ViridianCityPokecenterBenchGuyText::
	text "#センターに　あずけると"
	line "つかれて　うごけない"
	cont "#も　げんきに　なるよ！"
	done

PewterCityPokecenterBenchGuyText::
	text "ほぁーひゃ<……>！"

	para "プりンの　うたごえを　きくと<……>"
	line "たいていの　#は　ねむくなる"

	para "<……>そして"
	line "ぼくも<……>ぐー<……>"
	done

CeruleanCityPokecenterBenchGuyText::
	text "マサキ　にいちゃん"
	line "#　いっぱい　もってるよ！"

	para "めずらしい　#も"
	line "あつめてるって"
	done

LavenderCityPokecenterBenchGuyText::
	text "カラカラの　しゅぞくは"
	line "ほねを　かぶってる　だろ？"

	para "あれが　たかく　うれるんだって"
	done

MtMoonPokecenterBenchGuyText::
	text "#を　たくさん　つかまえて"
	line "もちきれない　ときは"

	para "<PC>　つうしんで"
	line "あずけると　いいよ"
	done

RockTunnelPokecenterBenchGuyText::
	text "シオン　タウンで"
	line "ゆうれい　#が　でるって"
	cont "みんな　さわいでるよ"
	done

UnusedBenchGuyText1::
	text "ぼくも　#とり　したいなー"
	done

UnusedBenchGuyText2::
	text "はしゃぎすぎて　つかれちゃった<……>"
	done

UnusedBenchGuyText3::
	text "シルフのチーフが　サファりゾーンの"
	line "どこかに　かくれてるんだって！"
	done

VermilionCityPokecenterBenchGuyText::
	text "たしかに　レべルの　たかい"
	line "#は　つよい　けど<……>"

	para "#の　タイプに　よって"
	line "にがてな　あいてが　ある　みたい"

	para "ぜったいに　つよい　#は"
	line "なかなか　いない　みたいだ"
	done

CeladonCityPokecenterBenchGuyText::
	text "ぼくも　じてんしゃ　もってたら"
	line "サイクりング　ロード　いきたーい！"
	done

FuchsiaCityPokecenterBenchGuyText::
	text "にいちゃん"
	line "#　ずかん　つくってる　なら"
	cont "サファり　ゾーン　いくと　いいよ"

	para "めずらしい　#が"
	line "たくさん　はんしょく　してるって"
	done

CinnabarIslandPokecenterBenchGuyText::
	text "しんかキャンセル　した　あとも"
	line "#は　わざを　おぼえるよ"

	para "わざを　おぼえさせて　いってから"
	line "しんか　させるのも　コツさ"
	done

SaffronCityPokecenterBenchGuyText::
	text_asm
	CheckEvent EVENT_BEAT_SILPH_CO_GIOVANNI
	ld hl, SaffronCityPokecenterBenchGuyText2
	jr nz, .printText
	ld hl, SaffronCityPokecenterBenchGuyText1
.printText
	call PrintText
	jp TextScriptEnd

SaffronCityPokecenterBenchGuyText1:
	text "あーあ<……>"
	line "#　してんのうが　きて"
	cont "<ROCKET>を　やっつけて"
	cont "くれると　いいな"
	done

SaffronCityPokecenterBenchGuyText2:
	text "<ROCKET>　にげてったね！"
	line "これからは　そと　あるいても"
	cont "ちっとも　こわくない！"
	cont "よかったね！"
	done

CeladonCityHotelText::
	text "わーい！　りょこう　だぞー！"
	line "おねえちゃん　だいすき！"
	done
