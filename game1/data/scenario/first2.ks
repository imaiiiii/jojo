;一番最初に呼び出されるファイル

[title name="ティラノスクリプト解説"]

[stop_keyconfig]

;チュートリアル用スクリプトファイル

[wait time=200]
[link storage=odatoyo.ks target=*start]【１】odatoyo[endlink][r]
[link target=*start]【２】選択肢　その２[r]

[s]
*start

ここまで横書きで表示されています。[l][r]
縦書きに変更します[l][cm]
[position vertical=true]
ここは縦書きで表示されていますね？[l][r]
横書きに戻します[l][cm]
[position vertical=false]
[cm]
横書きで表示されていますね？[l][cm]

メッセージウィンドウの高さを変更します[l][cm]
[position height=160 top=430]

[cm] メッセージウィンドウが下に表示されましたね？[cm]

[position layer=message0 width=800 height=300 top=380 left=70 ]
[position layer=message0 page=fore frame="frame.png" margint="65" marginl="50" marginr="70" marginb="60"]
[cm]
メッセージウィンドウが下に表示されましたね？[r][l]
ここにメッセージが表示されています。[r][l]
ここにメッセージが表示されています。[r][l][cm]

*start2

;背景画像の切り替え実行
[bg storage=room.jpg time=3000]

背景が切り替わりました

*start3
;１人目のキャラクター登場
[chara_new name="akane" storage="/chara/akane/normal.png" jname="あかね"]
[chara_show name="akane"]

あかねが登場しました！[l][r]

;２人目のキャラクター登場
[chara_new name="haruko" storage="haruko1.png" jname="はるこ"]
[chara_show name="haruko"]

はるこが登場しました！[l][r]
あかねの表情を登録
[chara_face name="akane" face="angry" storage="/chara/akane/angry.png"]

表情を変更します[p]
;akaneの表情の変更
[chara_mod name="akane" face="angry"]

表情を元に戻します[p]
;akaneの表情を元に戻す
[chara_mod name="akane" face="default"]

あかねが退場します[p]
;akaneを退場
[chara_hide name="akane" ]

アカネが再登場します[p]
[chara_show name="akane"]

;キャラ名表示領域登録
[ptext name="chara_name_area" layer=message0 width="200" color=white x=110 y=380 size=26]
[chara_config ptext="chara_name_area"]

#akane
あかねです[cm]

選択肢を表示します[l][r][r]

[link target=*select1]【１】選択肢　その１[endlink][r]
[link target=*select2]【２】選択肢　その２[endlink][r]

[s]

*select1
[cm]
「選択肢１」がクリックされました[l]
@jump target=*common2

*select2
[cm]
「選択肢２」がクリックされました[l]
@jump target=*common2


*common2
[cm]

共通ルートです[l]

[link storage=scene1.ks target=*select1]【１】選択肢　その１[endlink][r]
[link storage=scene2.ks target=*select2]【２】選択肢　その２[endlink][r]

[s]

*common
[cm]
別ファイルから戻って来ました
