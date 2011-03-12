\version "2.12.0"

\include "obcommon.ly"
\paper {
  %annotate-spacing = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

\header {
  %dedication = ""
  title = "In dulci jubilo."
  subtitle = "(Canone doppio allʼOttava a 2 Clav. e Pedale.)"
  opus = "BWV 608"
  composer = "Johann Sebastian Bach"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Organ"
  source = "Bach-Gesellschaft Orgelwerke"
  style = "Baroque"
  maintainer = "Li Jie Wong"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
}

prelude = {
  \time 3/2
  \set tupletSpannerDuration = #(ly:make-moment 1 2)
}

globals = {
  \accstyle
  \key a \major
  \prelude
  s1.*37
  \bar "|."
}

tupOn = { \override TupletNumber #'stencil = ##t }
tupOff = { \override TupletNumber #'stencil = ##f }


vA = \relative a' { \prelude \voiceOne
  \tupOff
  a2 a a | cis1 d2 | e1 fis2 | e1 r2 |
  a, a a | cis1 d2 | e1 fis2 | e1 r2 |
  e1 fis2 | e1 d2 | cis2. d4 cis b | a2 r r |
  a b b | cis b~ b | a1 b2 | cis1 r2 |
  e e fis | e1 d2 | cis2. d4 cis b | a2 r r |
  a b b | cis b~ b | a1 b2 | cis r r |
  fis,1 fis2 | gis1 gis2 | a2. b4 cis d | e1. |
  cis1 cis2 | b1 b2 | a2~ \times 4/3 { a8 b cis d e fis } |
  gis,2~ \times 4/3 { gis8 a b cis dis eis } | fis2 r r |
  \scaleDurations #'(4 . 3) { r8 a g fis g e d e cis } | d1.~ |
  \times 4/3 { d8 e d cis d b a b gis } | a1.\fermata |
}

vB = \relative a' { \prelude \voiceTwo
  \times 4/3 { r8 gis fis e fis d cis d b | \tupOff a b' a gis a fis e fis d | } a'4 a a a a a | \times 4/3 { cis8 e d cis d b a b gis |
  a gis fis e fis d cis d b | \tolh \voiceOne a \torh \voiceTwo b' a gis a fis e fis d | }
    a'4 a a a a a | \times 4/3 { cis8 e d cis d b a b gis | a cis b a b cis d cis d | cis e d cis d b a b gis |
    a gis fis e fis d } e4 eis | \times 4/3 { fis8 b a gis a fis e fis d | }
  cis4 cis \times 4/3 { d8 cis d e d e | a, e' a~ a b a gis fis gis | a b gis fis gis fis e fis d |} cis4 e a, a'2 gis4 |
  \times 4/3 { a8 e gis a b cis d cis d | cis e d cis d b a b gis | a gis fis e fis d } e4 eis | \times 4/3 { fis8 b a gis a fis e fis d |}
  cis4 cis \times 4/3 { d8 cis d e d e | a, e' a~ a b a gis fis gis | a b gis fis gis fis e fis d | cis d e fis e fis gis fis gis |
  \tupOn ais,4 ais8 b4 cis8 \tupOff d e cis | \tupOn d4 b8 \tupOff e fis d cis d b |} cis4 cis fis gis a b~ | \times 4/3 { \tupOn b4 a8 \tupOff gis a fis } e2~ |
  \times 4/3 { e8 cis' b a b gis fis gis e | \tupOn d4 b8 \tupOff e fis d cis d b |} e4 eis fis gis a2 | 
  d, cis gis' | fis \scaleDurations #'(4 . 3) { r8 a g fis g e |} fis4 r r g fis e | fis1.~ | fis4 fis e d cis b | cis1.
}

vC = \relative g { \prelude
  R1. | \times 4/3 { r8 gis fis e fis d cis d b | \tupOff a b' a gis a fis e fis d | } a'4 a a a a a |
  \times 4/3 { cis8 e d cis d b a b gis | \voiceTwo a \oneVoice gis fis e fis d cis d b | a b' a gis a fis e fis d | } a'4 a a a a a |
  \times 4/3 { cis8 e d cis d b a b gis | a cis b a b cis d cis d | a e' d cis d b a b gis | a gis fis e fis d } e4 eis |
  \times 4/3 { fis8 b a gis a fis e fis d |} cis4 cis \times 4/3 { d8 cis d e d e | a, e' a~ a b a gis fis gis | a b gis fis gis fis e fis d | }
  cis4 e a, a'2 gis4 | \times 4/3 { a8 e gis a b cis d cis d | a e' d cis d b a b gis | a gis fis e fis d } e4 eis |
  \times 4/3 { fis8 b a gis a fis e fis d |} cis4 cis \times 4/3 { d8 cis d e d e | a, e' a~ a b a gis fis gis | a b gis fis gis fis e fis dis |
  e fis e d e cis b cis a | e e' d cis d b a b gis | fis fis' e d e cis b cis a | gis gis' fis e fis d cis d b |}
  a2 e' a~ | \times 4/3 { a8 b a gis a fis } gis2~ | \times 4/3 { gis8 a gis fis gis eis } fis2~ | \times 4/3 { fis8 gis fis eis fis dis } eis4 cis |
    \times 4/3 { fis,8 a' g fis g e d e cis |} d1.~ | \times 4/3 { d8 e d cis d b a b gis |} a1.~ | a\fermata |
}

vP = \relative a { \prelude
  R1. | a2 a a | cis1 d2 | e1 fis2 | e1 r2 |
  a,2 a a | cis1 d2 | e1 fis2 | e1 r2 |
  e1 fis2 | e1 d2 | cis2. d4 cis b | a2 r r |
  a b b | cis1 b2 | a1 b2 | cis1 r2 |
  e e fis | e1 d2 | cis2. d4 cis b | a2 r r |
  a b b | cis1 b2 | a1 b2 | cis r r |
  R1. | fis,1 fis2 | gis1 gis2 | a2. b4 cis d | e1. |
  cis1 cis2 | b1 b2 | <<
    { \voiceTwo s1.*3 | r2 r4 fis e d | e1.\fermata | }
    \new Voice { \nvkey \voiceOne a1.~ | a~ | a~ | a~ | a | }
  >>
}

RHmusic = { << \vA \\ \vB >> }
LHmusic = { \vC }
PDmusic = { \vP }

\include "obscore.ly"
