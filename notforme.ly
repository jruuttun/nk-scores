\version "2.12.3"

\header {
  title = "Не для меня"
  subtitle = "As perfomed by 'Averi Torvonen ja Nakkailevat kasakat'"
%  composer = "Säveltäjä"
%  poet = "Sanoittaja"
  tagline = ##f
}

globals = { \key e \minor \time 2/4 \clef bass }

tenor = \relative c'{
  \partial 4
  b8\mp^\markup {\italic Rubato }
  g16 fis16 | e4 r8 r16 e16 | b'8 ( a16 b16 c8) b16( a16) g4\fermata r8 % intro
  d\<^\markup {\italic "A tempo" } | g d' c b\! | a\> g b( a) | e4\! r8 % verse
  d'8\f|d4 g,4|e'8 e e e|d( c) b a g4( c8) c8|b8. b16 \times 2/3 {a8( g8) fis8}|e4.\< % chorus 
  d'8  |d4\! d16( c16 b8)|e8 e e e|d( c) b a e'4( e16 d16) c8|b8. b16\sp \times 2/3 {a8( g8) fis8}|e2 % chorus
}

barytone = \relative c {
  \partial 4 r4
  R2*2 r4 r8 d | g b a g | fis\> e g( fis) | e4\! r8 % verse
  b'8\f|b4 g4|c8 c g a|b( a) g fis|g4( a8) a8|g8. g16 \times 2/3 {fis8( e8) dis8}|e4.\< % chorus
  b'8|b4\! g4|c8 c g a|b( a) g fis|g4( a8) a8|g8. g16\sp \times 2/3 {fis8( e8) dis8}|e2 % chorus
}

bass = 	\relative c {
  \partial 4 r4
  R2*2 r4 r8 d8|g,8 g a b|c a b4|e4 r4 % verse
  r8 g,8\f g g|c8 c c c|d2|e8 e8 a,8 a8|b8. b16 \times 2/3 {b4 b8}|e4. r8 % chorus
  r8 g,8 g g|c8 c c c|d2|e8 e8 a,8 a8|b8. b16\sp \times 2/3 {b4 b8}|e2 % chorus
}

introOne = \lyricmode { Не для ме -- ня при -- дёт __ вес -- на, }
verseOne = \lyricmode { не для ме -- ня  Дон ра -- зо -- льёт -- ся. }
chorusOne = \lyricmode {
  и серд -- це ра -- дост -- но за -- бьё -- тся 
  с_вос -- тор -- гом чувств не для ме -- ня.
}

introTwo = \lyricmode { Не для ме -- ня цве -- тут __ са -- ды, }
verseTwo = \lyricmode { В дол -- ине ро -- ща рас -- цве -- та -- ет. }
chorusTwo = \lyricmode { 
  Там со -- ло -- вей вес -- ну встре -- ча -- ет, 
  Но он по -- ёт не для ме -- ня.
}

introThree = \lyricmode { Не для ме -- ня те -- кут __ ру -- чьи, }
verseThree = \lyricmode { Бе -- гут ал -- ма -- зны -- ми ру -- чья -- ми. }
chorusThree = \lyricmode { 
  Там де -- ва с_чёр -- ны -- ми бро -- вя -- ми,
  О -- на рас -- тёт не для ме -- ня.
}

introFour = \lyricmode { Не для ме -- ня цер -- ков __ ный звон, }
verseFour = \lyricmode { За стол род -- ня вся со -- бер -- ёт -- ся, }
chorusFour = \lyricmode { 
  «Хрис -- тос Вос -- крес!» из уст по -- льёт -- ся
  В_пас -- хал -- ьный день не для ме -- ня.
}

introFive = \lyricmode { А для ме-- ня ку -- сок свин -- ца }
verseFive = \lyricmode { Он в_те -- ло бе -- ло -- е во -- пьёт -- ся... }
chorusFive = \lyricmode {
  И слё -- зы горь -- ки -- е про -- льют -- ся 
  Та -- ка -- я жизнь, брат, ждёт ме -- ня.
}


\score {
  \new ChoirStaff <<
    \new Staff << 
      \set Staff.instrumentName = #"Тенор"
      \new Voice = "Tenori" { \globals \repeat volta 5 \tenor }
      \new Lyrics \lyricsto "Tenori" {	\introOne \verseOne \chorusOne \chorusOne}
      \new Lyrics \lyricsto "Tenori" {	\introTwo \verseTwo \chorusTwo \chorusTwo}
      \new Lyrics \lyricsto "Tenori" {	\introThree \verseThree \chorusThree \chorusThree}
      \new Lyrics \lyricsto "Tenori" {	\introFour \verseFour \chorusFour \chorusFour}
      \new Lyrics \lyricsto "Tenori" {	\introFive \verseFive \chorusFive \chorusFive}
    >>
    \new Staff << 
      \set Staff.instrumentName = #"Баритон"
      \new Voice = "Baritoni" { \globals \barytone }
    >>
    \new Staff << 
      \set Staff.instrumentName = #"Бас"
      \new Voice = "Basso" { \globals \bass }
      \new Lyrics \lyricsto "Basso" {  \verseOne \chorusOne \chorusOne }
      \new Lyrics \lyricsto "Basso" {  \verseTwo \chorusTwo \chorusTwo }
      \new Lyrics \lyricsto "Basso" {  \verseThree \chorusThree \chorusThree }
      \new Lyrics \lyricsto "Basso" {  \verseFour \chorusFour \chorusFour }
      \new Lyrics \lyricsto "Basso" {  \verseFive \chorusFive \chorusFive }
    >> 
  >>
}