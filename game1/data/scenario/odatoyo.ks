*start
[stop_keyconfig]

[bg storage=room.jpg ]

[position layer=message0 width=800 height=300 top=380 left=70 ]
[position layer=message0 page=fore frame="frame.png" margint="65" marginl="50" marginr="70" marginb="60"]
[cm]

織田信長はどっちでしょう？
[locate x=20 y=100]
[button graphic="oda.png" target=*oda]



[locate x=300 y=100]
[button graphic="toyo.png" target=*toyo]

[s]
*oda
;効果音を再生します
[playse storage="maru.ogg"]
正解です！[l]
@jump target=*common

*toyo
[cm]
[playse storage="batu.ogg"]
間違いです[l]
@jump target=*common

*common
[cm]
共通ルート[l]
