\version "2.14.2"
\pointAndClickOff

\header {
  title = "Mu isamaa, mu õnn ja rõõm"
  subtitle = "«Ahtori Torvonen ja Nakkailevat kasakat»"
  composer = "F. Pacius"
  poet = "J. V. Jannsen"
  tagline = ##f
}

globals = { \key c \major \time 3/4 }

tI = \relative c' {
  \partial 4.
  a8\accent^\f fis\accent g\accent | a4. d8 e8. a,16 | fis'2
  d4^\markup {\italic espress. } | b8. e16 d4 cis4 | d2
  a4 | e'8.^\fz d16 cis8( b) a^\markup {\italic dim. }( g) | fis8 b a4 
  a | e'8.^\fz d16 cis8( b) a^\markup {\italic dim. }( g) | fis8 b a4. 
  a8 | d8. a16 fis8 a d e | fis2
  d4 | b8. e16 d4 cis | d2
}
tII = \relative c' {
  \partial 4.
  a8 fis g | a4. a8 cis8. a16 | a2
  a4 | b8. b16 a4 a4 | a2
  a4 | a8. a16 a8( g) fis( e) | fis8 g fis4 
  a4 | a8. a16 a8( g) fis( e) | fis8 g fis4. 
  a8 | d8. a16 fis8 a d cis | d2
  a4 | b8. b16 a4 a | a2
}
bI = \relative c' {
  \partial 4.
  a8 fis g | a4. fis8 a8. a16 | a2
  a4 | g8. g16 fis4 a4 | fis2
  a4 | g8._\fz fis16 e8( g) fis_\markup {\italic dim. }( e) | d8 g fis4 
  a4 | g8._\fz fis16 e8( g) fis_\markup {\italic dim. }( e) | d8 g fis4. 
  a8 | d8. a16 fis8 a d a | a2
  fis4 | g8. g16 fis4 g | fis2
}
bII = \relative c' {
  \partial 4.
  a8\accent\f fis\accent g\accent | a4. d,8 a8. a16 | d2
  fis4_\markup {\italic espress. } | g8. g,16 a4 a4 | d2
  a'4 | a,8. a16 a4 a | d8 d d4 
  a'4 | a,8. a16 a4 a | d8 d d4. 
  r8 | r4 r4 r8 a\ff | d8. a16 fis8 a d fis
  | g8. g,16 a4 a | d2
}

txtI = \lyricmode {
  Mu i -- sa -- maa, mu õnn ja rõõm,
  kui kau -- nis o -- led sa!
  Ei lei -- a mi -- na ii -- al teal
  see suu -- re, lai -- a il -- ma peal,
  mis mul nii ar -- mas o -- leks ka,
  kui sa, mu i -- sa -- maa!
}
txtII = \lyricmode {
  Sa o -- led mind ju sün -- ni -- tand
  ja ü -- les kas -- va -- tand;
  sind tä -- nan mi -- na a -- la -- ti
  ja jään sull' truu -- iks sur -- ma -- ni,
  mul kõi -- ge arm -- sam o -- led sa,
  mu kal -- lis i -- sa -- maa!
}
txtIII = \lyricmode {
  Su ü -- le Ju -- mal val -- va -- ku,
  mu ar -- mas i -- sa -- maa!
  Ta ol -- gu si -- nu kait -- se -- ja
  ja võt -- ku roh -- kest õn -- nis -- ta,
  mis ii -- al et -- te võ -- tad sa,
  mu kal -- lis i -- sa -- maa!
}

skips = \lyricmode {
  _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _
}

bIIendingI = \lyricmode {
  mis mul nii ar -- mas o -- leks
}
bIIendingII = \lyricmode {
  mul kõi -- ge arm -- sam o -- led
}
bIIendingIII = \lyricmode {
    mis ii -- al et -- te võ -- tad 
}

\score {
  \new ChoirStaff <<
    \new Staff << 
      \set Staff.instrumentName = "T1,T2"
      \new Voice = "tI" { \clef "treble_8" \globals \voiceOne \transpose d c \tI \bar "|." }
      \new Voice = "tII" { \clef "treble_8" \globals \voiceTwo \transpose d c \tII }
      \new Lyrics \lyricsto "tI" { \txtI }
      \new Lyrics \lyricsto "tI" { \txtII }
      \new Lyrics \lyricsto "tI" { \txtIII }
    >>
    \new Staff << 
      \set Staff.instrumentName = "B1,B2"
      \new Voice = "bI" { \clef bass \globals  \voiceOne \transpose d c \bI \bar "|." }
      \new Voice = "bII" { \clef bass \globals \voiceTwo \transpose d c \bII }
      \new Lyrics \lyricsto "bII" { \skips \bIIendingI }
      \new Lyrics \lyricsto "bII" { \skips \bIIendingII }
      \new Lyrics \lyricsto "bII" { \skips \bIIendingIII }
    >>
  >>
  \layout {}
} 

\paper {
  ragged-bottom = ##t
  markup-system-spacing #'padding = #5  % between title and staff group
  system-system-spacing #'padding = #5 % between staff groups
}

