\version "2.14.2"
\pointAndClickOff

\header {
  title = "Конь"
  subtitle = "в исполнении ансамбля «Averi Torvonen ja Nakkailevat kasakat»"
%  composer = "Säveltäjä"
%  poet = "Sanoittaja"
  tagline = ##f
}

globals = { \key d \minor \time 4/4 }

tenorI = \relative c {
  d8 e f e d4 c8 bes | a2.. r8 
  d8 c d e f4 f8 g   | a2~a8 r d, d 
  bes'4 a g r8 a~    | a8 g f e f r d e 
  f8 f f g a4 e8 f   | d2~d8 r d d 
  bes'4 a g r8 a~    | a8 g f e f r d e 
  f8 f f g a4 e8 f   | d1 

  d8 e f e d4 c8 bes | a2.. r8 
  d8 c d e f4 f8 g   | a2~a8 r d, d 
  bes'4 a g r8 a~    | a8 g f e f r d e 
  f8 f f g a4 e8 f   | d2~d8 r d d 
  bes'4 a g r8 a~    | a8 g f e f r d e 
  f8 f f g a4 e8 f   | d1 

  r2 r8 d' c bes | a1
  r2 r8 d d e | f4 c f2
  r4 d c2 | r8 c a g d'2
  r8 d d e a, a g a | d1
  r4 d c2 | r8 c a g d'2
  r8 d d e a, a g a | d1

  d8 e f e d4 c8 bes | a4( d e8 d f e)
  d8 c d e f4 f8 g   | a2~a8 r d, d 
  bes'4 a g r8 a~    | a8 g f e f r d e 
  f8 f f g a a e f   | d4( e f) d8 d 
  bes'4 a g r8 a~    | a8 g f e f r r4 
  d4.( e8) e4 e8 f   | d1 

  d,8 e f e d4 c8 bes | a2.. r8 
  d8 c d e f4 f8 g   | a2~a8 r d, d 
  d'4 c bes r8 c~    | c8 d a g f r d e 
  f8 f f g a4 e8 f   | d2~d8 r r4
  R1 | r2 r4 d8 e
  f8 f f g a4 a8 g   | d'1~

  d4 r4 r4 c,8 bes8 | a4 d e8 d f e
  d8 c d e f4 f8 g   | a2~a8 r d, d 
  d'4 d c r8 c~    | c8 c d c bes r bes bes 
  bes8 bes bes bes a4 a8 a | a4 d d d
  d4 d c4. c8~ | c8 c d c bes4\fermata d,8 e
  f8 f f g a4 a8 g | d'1 
}

tenorII = \relative c {
  R1 R1
  R1 R1
  R1 R1
  R1 | r2 r4 d8 d
  g4 f e r8 f~ | f8 e d a d r d c
  bes8 bes bes bes a4 a8 a | d1

  R1 R1
  R1 R1
  R1 R1
  R1 | r2 r4 d8 d
  g4 f e r8 f~ | f8 e d a d r r4
  R1 | d'4( c bes a8 g)

  d8 e f e d4 d8 d  | e4 f e8 g f e 
  d8 c d e f4 c8 g' | a2~a8 r d, d 
  bes'4 a g r8 a~   | a8 g f e f r d e 
  f4 f8 g a a e f   | d2~d8 r d d 
  bes'4 a g r8 a~   | a8 g f e f r d e 
  f4 f8 g a a e f   | d4 a' bes8 c16( bes) a8 g

  d8 e f e d4 c8 bes | a2.. r8 
  d8 c d e f4 f8 g   | a2~a8 r d, d 
  bes'4 a g r8 a~    | a8 g f e f r d e 
  f8 f f g a a e8 f  | d2~d8 r d d 
  bes'4 a g r8 a~    | a8 g f e f r d e 
  f8 f f g a a e8 f  | d1 

  d8 e f e d4 c8 bes | a2.. r8 
  d8 c d e f4 f8 g   | a2~a8 r d, d 
  bes'4 a g r8 a~    | a8 g f e f r d e 
  f8 f f g a4 e8 f   | d2~d8 r d d 
  bes'4 a g r8 a~    | a8 g f e f r d e 
  f8 f f g a4 e8 f   | d1 

  d8 e f e d4 c8 bes | a2.. r8 
  d8 c d e f4 f8 g   | a2~a8 r d, d 
  bes'4 a g r8 a~    | a8 g f e f r d e 
  f8 f f g a4 e8 f   | d2~d8 r d d
  bes'4 a g r8 a~    | a8 g f e f4\fermata d8 e 
  f8 f f g a4 e8 f   | d1 
}

bassI = \relative c, {
  R1 R1
  R1 R1
  R1 R1
  R1 R1
  R1 R1
  R1 | s1

  s1 s1 s1 s1
  s1 s1 s1 s1
  s1 s1 s1 s1

  s1 s1 s1 s1
  s1 s1 s1 s1
  s1 s1 s1 s1

  s1 s1 s1 s1
  s1 s1 s1 s1
  s1 s1 s1 s1

  s1 s1 s1 s1
  s1 s1 s1 s1
  s1 s1 s1 s1

  s1 s1 s1 s1
  s1 s1 s1 s1
  s1 s1 s1 s1
}

bassII = \relative c, {
  R1 R1
  R1 R1
  R1 R1
  R1 R1
  R1 R1
  R1 | s1

  s1 s1 s1 s1
  s1 s1 s1 s1
  s1 s1 s1 s1

  s1 s1 s1 s1
  s1 s1 s1 s1
  s1 s1 s1 s1

  s1 s1 s1 s1
  s1 s1 s1 s1
  s1 s1 s1 s1

  s1 s1 s1 s1
  s1 s1 s1 s1
  s1 s1 s1 s1

  s1 s1 s1 s1
  s1 s1 s1 s1
  s1 s1 s1 s1
}

verseOne = \lyricmode {
  Вый -- ду ночь -- ю в_по -- ле с_ко -- нём
  Ноч -- кой тём -- ной ти -- хо пой -- дём
}
chorusOne = \lyricmode {
  Мы пой -- дём с_ко -- нём по по -- лю вдво -- ём
  Мы пой -- дём с_ко -- нём по по -- лю вдво -- ём
}

verseTwo = \lyricmode {
  Ночь -- ю в_по -- ле звёзд бла -- го -- дать
  В_по -- ле ни -- ко -- го не ви -- дать
}
chorusTwo = \lyricmode {
  Толь -- ко мы с_ко -- нём по по -- лю и -- дём
  Толь -- ко мы с_ко -- нём по по -- лю и -- дём
}
chorusTwoTenorII = \lyricmode {
  Толь -- ко мы с_ко -- нём по по -- лю и -- дём
  o __
}

verseThreeTenorI = \lyricmode {
  Да на ко -- ня
  Да ты не -- си ме -- ня
  Да ой да мо -- е -- му да по -- лю по -- лю мо -- е -- му
  Да ой да мо -- е -- му да по -- лю по -- лю мо -- е -- му
}
verseThreeTenorII = \lyricmode {
  Ся -- ду я вер -- хом на ко -- ня да ой да ой да
  Ты не -- си по по -- лю ме -- ня
}
verseThree = \lyricmode {
  Ся -- ду я вер -- хом на ко -- ня
  Ты не -- си по по -- лю ме -- ня
}
chorusThree = \lyricmode {
  По бес -- край -- не -- му по -- лю мо -- е -- му
  По бес -- край -- не -- му по -- лю мо -- е -- му
}
chorusThreeTenorII = \lyricmode {
  По бес -- край -- не -- му по -- лю мо -- е -- му
  По бес -- край -- не -- му по -- лю мо -- е -- му да ой да ой да
}

verseFour = \lyricmode {
  Дай -- ка я ра -- зок по -- смот -- рю
  Где рож -- да -- ет по -- ле за -- рю
}
chorusFour = \lyricmode {
  Ай брус -- нич -- ный цвет, а -- лый да рас -- свет
  А -- ли есть то мес -- то а -- ли е -- го нет
}
chorusFourTenorI = \lyricmode {
  Ай брус -- нич -- ный цвет, а -- лый да рас -- свет
  Есть то а -- ли нет
}

verseFive = \lyricmode {
  По -- люш -- ко мо -- ё род -- ни -- ки
  Даль -- них де -- ре -- вень о -- гонь -- ки
}
chorusFive = \lyricmode {
  Зо -- ло -- та -- я рожь да куд -- ря -- вый лён
  Я влюб -- лён в_те -- бя, Рос -- си -- я, влюб -- лён
}
chorusFiveTenorI = \lyricmode {
  Я влюб -- лён в_те -- бя, Рос -- си -- я, влюб -- лён
}


verseSix = \lyricmode {
  Бу -- дет доб -- рым год хле -- бо -- роб
  Бы -- ло вся -- ко, вся -- ко прой -- дёт
}
verseSixTenorI = \lyricmode {
  Хле -- бо -- роб, да бу -- дет доб -- рым
  Бы -- ло вся -- ко, вся -- ко прой -- дёт
}
chorusSix = \lyricmode {
  Пой зла -- та -- я рожь, пой ку -- дря -- вый лён
  Пой о том как я в_Рос -- си -- ю влюб -- лён
}
chorusSixFinal = \lyricmode {
  Пой зла -- та -- я рожь, пой куд -- ря -- вый лён...
  Мы и -- дём с_ко -- нём по по -- лю вдво -- ём
}
chorusSixFinalTenorI = \lyricmode {
  Да пой зла -- та -- я рожь, пой куд -- ря -- вый лён...
  Мы и -- дём с_ко -- нём по по -- лю вдво -- ём
}


\score {
  \new ChoirStaff <<
    \new Staff << 
      \set Staff.instrumentName = "Тенор I"
      \set Staff.midiInstrument = "choir aahs"
      \new Voice = "Tenor I" { \clef "treble_8" \globals \tenorI \break }
      \new Lyrics \lyricsto "Tenor I" {
        \verseOne \chorusOne \chorusOne
        \verseTwo \chorusTwo \chorusTwo
        \verseThreeTenorI
        \verseFour \chorusFour \chorusFourTenorI
        \verseFive \chorusFive \chorusFiveTenorI
        \verseSixTenorI \chorusSix \chorusSixFinalTenorI
      }
    >>
    \new Staff << 
      \set Staff.instrumentName = "Тенор II"
      \set Staff.midiInstrument = "choir aahs"
      \new Voice = "Tenor II" { \clef "treble_8" \globals \tenorII \break }
      \new Lyrics \lyricsto "Tenor II" {
        \chorusOne
        \chorusTwoTenorII
        \verseThreeTenorII \chorusThree \chorusThreeTenorII
        \verseFour \chorusFour \chorusFour
        \verseFive \chorusFive \chorusFive
        \verseSix \chorusSix \chorusSixFinal
      }
    >>
    \new Staff << 
      \set Staff.instrumentName = "Бас I"
      \set Staff.midiInstrument = "choir aahs"
      \new Voice = "Bass I" { \clef "bass" \globals \bassI \break }
    >> 
    \new Staff << 
      \set Staff.instrumentName = "Бас II"
      \set Staff.midiInstrument = "choir aahs"
      \new Voice = "Bass II" { \clef "bass" \globals \bassII \break }
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

