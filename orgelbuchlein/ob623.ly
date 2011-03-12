\version "2.12.0"

\include "obcommon.ly"
\paper {
  %annotate-spacing = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

\header {
  %dedication = ""
  title = "Wir danken dir, Herr Jesu Christ"
  %subtitle = ""
  opus = "BWV 623"
  composer = "Johann Sebastian Bach"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Organ"
  source = "Bach-Gesellschaft Orgelwerke"
  style = "Baroque"
  maintainer = "Li Jie Wong"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
}

prelude = { \time 3/4 \beamquarter }

globals = {
  \accstyle
  \key g \major
  \prelude
  s2.*18
  \bar "|."
}

vA = \relative g' { \prelude \voiceOne
  g4 g g | e4. fis8 g4 | a8 b16 c b8 a a4\prallprall | g2.\sfermata |
  b4 b b | e2 d4 | d cis2 | d2.\sfermata |
  b4 b b8 c16 d | c2 b4 | a2 gis4 | a2.\sfermata |
  b4 b b | a2 g4 | g fis2 | g2.~ | g~ | g\fermata |
}

vB = \relative d' { \prelude \voiceTwo
  d4 r8 d16 c d4~ | d8 c16 d e8 d16 c b8 c16 d | e4 d2~ | d8 e16 d e8 g16 fis g8 b16 a~ |
  a8 g16 fis g4. d8 | g2 fis8 b16 a | b8 a g a16 b a g fis e | fis e d cis d8 e fis16 a g fis |
  g8 d e a16 g fis4 | g4. f16 e d8 e16 f | e4. d16 c b8 c16 d | c4. e16 dis e8 fis |
  g4 r8 d16 c d8 e | f4.\prall e16 fis g fis e d | e d c b c8 d16 e d8 c | b d16 c d8 e f4~ | f8 e16 d c d c b c d e8~ | e d16 c d2\fermata |
}

vC = \relative b { \prelude
  b2 r8 g16 fis | g8 e a4 g~ | g4. fis16 e fis8 g16 a | b8 c16 b c8 g e'4 |
  d r8 d16 c d8 b16 a | b4. d16 cis d8 g16 fis | g8 fis e4 r | r8 a,16 g a8 c16 b c8 b16 a |
  g8 b e4. dis8 | e8 g,16 f g8 a b c16 d | c b a gis a8 b e,4~ | e8 a16 gis a8 b c b16 a |
  e'8 e,16 d e8 fis g c16 b | c8 a d c b4 | a4. b16 c b8 a | g8 b16 a b8 c d16 c b a | g a g f e8 g16 fis g8 c~ | c4~ c8 b16 a b4\fermata |
}

vP = \relative g { \prelude
  r8 g16[ fis g8 a b b,] | r8 c16[ b c8 d e e,] | c4 d8 d'16[ c d8 e | f g,] r8 e'16[ d e8 fis |
  g g,] r4 r | r8 g'16[ fis g8 a b b,] | r e16[ d e8 fis g a,] | r fis'16[ e fis8 g a d,] |
  r g16[ fis g8 a b b,] | r e16[ d e8 f g g,] | r c16[ b c8 d e e,] | a4 r r |
  r r8 b16 a b8 c | d c16 b c8[ d e b] | c a d, d'16[ c d8 e | f g,] r a16[ g a8 b | c c,] r e'16[ d] e8 g16 fis | g4 g,2\fermata |
}

RHmusic = { << \vA \\ \vB >> }
LHmusic = { \vC }
PDmusic = { \vP }

\include "obscore.ly"
