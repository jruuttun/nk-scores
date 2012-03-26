\version "2.14.2"
\pointAndClickOff

\header {
  title = "Не для меня"
  subtitle = "в исполнении ансамбля «Averi Torvonen ja Nakkailevat kasakat»"
%  composer = "Säveltäjä"
%  poet = "Sanoittaja"
  tagline = ##f
}

globals = { \key e \minor \time 2/4 }

tenor = \relative c' {
  \partial 4
  b8\mp^\markup {\italic Rubagto }
  g16 fis16 | e4 r8 r16 e16 | b'8 ( a16 b16 c8) b16( a16) g4\fermata r8 % intro
  d\<^\markup {\italic "A tempo" } | g d' c b\! | a\> g b( a) | e4\! r8 % verse
  d'8\f|d4 g,4|e'8 e e e|d( c) b a g4( c8) c8|b8. b16 \times 2/3 {a8( g8) fis8}|e4.\< % chorus 
  d'8  | \mark \markup {\musicglyph #"scripts.coda"} d4\! d16( c16 b8)|e8 e e e|d( c) b a e'4( e16 d16) c8|b8. b16\sp \times 2/3 {a8( g8) fis8}|e2 % chorus
}

tenorEnding = \relative c' {
  \mark \markup {\musicglyph #"scripts.coda"} 
  d4\! d16( c16 b8)|e8 e e e|d( c) b a e'4( e16 d16) c8|b8. b16\sp \times 2/3 {a8( g8) fis8}|e2 \bar "|."
}

barytone = \relative c {
  \partial 4 r4
  R2*2 r4 r8 d | g b a g | fis\> e g( fis) | e4\! r8 % verse
  b'8\f|b4 g4|c8 c g a|b( a) g fis|g4( a8) a8|g8. g16 \times 2/3 {fis8( e8) dis8}|e4.\< % chorus
  b'8|b4\! g4|c8 c g a|b( a) g fis|g4( a8) a8|g8. g16\sp \times 2/3 {fis8( e8) dis8}|e2 % chorus
}

barytoneEnding = \relative c {
  b4\! g4|c8 c g a|b( a) g fis|g4( a8) a8|g8. g16\sp \times 2/3 {fis8( e8) dis8}|e2 
}

bass = 	\relative c {
  \partial 4 r4
  R2*2 r4 r8 d8|g,8 g a b|c a b4|e4 r4 % verse
  r8 g,8\f g g|c8 c c c|d2|e8 e8 a,8 a8|b8. b16 \times 2/3 {b4 b8}|e8 e8 e8 r8 % chorus
  r8 g,8 g g|c8 c c c|d2|e8 e8 a,8 a8|b8. b16\sp \times 2/3 {b4 b8}|e2 % chorus
}

bassEnding = \relative c {
  r8 g8 g g|c8 c c c|d2|e8 e8 a,8 a8|b8. b16\sp \times 2/3 {b4 b8}|e2 
}


introOne = \lyricmode { Не для ме -- ня при -- дёт __ вес -- на, }
verseOne = \lyricmode { Не для ме -- ня  Дон ра -- зо -- льёт -- ся. }
chorusOne = \lyricmode {
  И серд -- це ра -- дост -- но за -- бьё -- тся 
  С_вос -- тор -- гом чувств не для ме -- ня.
}

introTwo = \lyricmode { Не для ме -- ня цве -- тут __ са -- ды, }
verseTwo = \lyricmode { В_до -- ли -- не ро -- ща рас -- цве -- та -- ет. }
chorusTwo = \lyricmode { 
  Там со -- ло -- вей вес -- ну встре -- ча -- ет, 
  Но он по -- ёт не для ме -- ня.
}

introThree = \lyricmode { Не для ме -- ня те -- кут __ ру -- чьи, }
verseThree = \lyricmode { Бе -- гут ал -- маз -- ны -- ми ру -- чья -- ми. }
chorusThree = \lyricmode { 
  Там де -- ва с_чёр -- ны -- ми бро -- вя -- ми,
  О -- на рас -- тёт не для ме -- ня.
}

introFour = \lyricmode { Не для ме -- ня цер -- ков __ ный звон, }
verseFour = \lyricmode { За стол род -- ня вся со -- бер -- ёт -- ся, }
chorusFour = \lyricmode { 
  «Хрис -- тос Вос -- крес!» из уст по -- льёт -- ся
  В_пас -- халь -- ный день не для ме -- ня.
}

introFive = \lyricmode { А для ме -- ня ку -- сок свин -- ца }
verseFive = \lyricmode { Он в_те -- ло бе -- ло -- е во -- пьёт -- ся... }
chorusFive = \lyricmode {
  слё -- зы горь -- ки -- е про -- льют -- ся 
  Та -- ка -- я жизнь, брат, ждёт ме -- ня.
}

hoi = \lyricmode { Ой -- ой! }
skipit = \lyricmode { _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ }

\score {
  \new ChoirStaff <<
    \new Staff << 
      \set Staff.instrumentName = "Тенор"
      \set Staff.midiInstrument = "choir aahs"
      \new Voice = "Tenor" { \clef "treble_8" \globals \repeat volta 4 \tenor \break \tenorEnding }
      \new Lyrics \lyricsto "Tenor" {	\introOne \verseOne \chorusOne \chorusOne}
      \new Lyrics \lyricsto "Tenor" {	\introTwo \verseTwo \chorusTwo \chorusTwo}
      \new Lyrics \lyricsto "Tenor" {	\introThree \verseThree \chorusThree \chorusThree}
      \new Lyrics \lyricsto "Tenor" {	\introFour \verseFour \chorusFour \chorusFour}
      \new Lyrics \lyricsto "Tenor" {	\introFive \verseFive И \chorusFive И \skipit \chorusFive}
    >>
    \new Staff << 
      \set Staff.instrumentName = "Баритон"
      \set Staff.midiInstrument = "choir aahs"
      \new Voice = "Barytone" { \clef bass \globals \barytone \barytoneEnding}
    >>
    \new Staff << 
      \set Staff.instrumentName = "Бас"
      \set Staff.midiInstrument = "choir aahs"
      \new Voice = "Bass" { \clef bass \globals \bass \bassEnding}
      \new Lyrics \lyricsto "Bass" {  \verseOne \chorusOne \hoi \chorusOne }
      \new Lyrics \lyricsto "Bass" {  \verseTwo \chorusTwo \hoi \chorusTwo }
      \new Lyrics \lyricsto "Bass" {  \verseThree \chorusThree \hoi \chorusThree }
      \new Lyrics \lyricsto "Bass" {  \verseFour \chorusFour \hoi \chorusFour }
      \new Lyrics \lyricsto "Bass" {  \verseFive И \chorusFive \hoi \skipit _ И \chorusFive }
    >> 
  >>
  \midi {}
  \layout {}
} 

\paper {
  ragged-bottom = ##t
  markup-system-spacing #'padding = #5  % between title and staff group
  system-system-spacing #'padding = #5 % between staff groups
}

