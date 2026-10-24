#!/usr/bin/env bash

chars='
あ  a
い  i
う  u
え  e
お  o
か  ka
き  ki
く  ku
け  ke
こ  ko
さ  sa
し  shi
す  su
せ  se
そ  so
た  ta
ち  chi
つ  tsu
て  te
と  to
な  na
に  ni
ぬ  nu
ね  ne
の  no
は  ha
ひ  hi
ふ  fu
へ  he
ほ  ho
ま  ma
み  mi
む  mu
め  me
も  mo
や  ya
ゆ  yu
よ  yo
ら  ra
り  ri
る  ru
れ  re
ろ  ro
わ  wa
を  wo
ん  n
が  ga
ぎ  gi
ぐ  gu
げ  ge
ご  go
ざ  za
じ  ji
ず  zu
ぜ  ze
ぞ  zo
だ  da
ぢ  di
づ  du
で  de
ど  do
ば  ba
び  bi
ぶ  bu
べ  be
ぼ  bo
ぱ  pa
ぴ  pi
ぷ  pu
ぺ  pe
ぽ  po
ぁ  small a
ぃ  small i
ぅ  small u
ぇ  small e
ぉ  small o
ゃ  small ya
ゅ  small yu
ょ  small yo
っ  small tsu
ゎ  small wa
'

selected=$(printf '%s\n' "$chars" |
    sed '/^$/d' |
    rofi -dmenu -i -p "Hiragana")

[ -z "$selected" ] && exit 0

character="${selected%% *}"
printf '%s' "$character" | wl-copy
