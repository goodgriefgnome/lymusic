\version "2.12.0"

\include "obcommon.ly"
\paper {
  %annotate-spacing = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

\header {
  %dedication = ""
  title = ""
  %subtitle = ""
  opus = "BWV "
  composer = "Johann Sebastian Bach"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Organ"
  source = "Bach-Gesellschaft Orgelwerke"
  style = "Baroque"
  maintainer = "Li Jie Wong"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
}

prelude = { \time 3/2 }

globals = {
  \accstyle
  \key a \minor
  \prelude
  s1.*19
  \bar "|."
}

vA = \relative d' { \prelude
  d2 d d | a'1 b2 | c2. b4 a2 | g1\fermata a2 | b1 c2 | d1 a2 | c b1 | a\fermata
  a2 | c1 a2 | g e1 | f2 e d | c1\fermata c2 | f1 g2 | a1 g2 | f c'1 | a\sfermata g2 | f e1 | d2
  r4 a'8 b cis4 b8 cis | d1.\fermata |
}

vB = \relative d { \prelude \voiceOne \clef "alto"
  r4 d8 e f4 f8 g a4 d8 e | f4 f8 g a4 a8 g f4 g8 f | e4 e8 d c4 e2 e8 dis | e4 g8 f e4 e8 d c4 d8 c |
  b4 d g, g8 f e4 a~ | a gis8 fis gis2 a~ | a4 d8 e f4 d2 e8 f | e4 d8 e f4 e8 d e2~ | e4
  \clef "bass"
  r r a,8 b c4 c8 d | e4 c8 b c4 c8 d e4 e8 d | c1 bes2 | a4 f8 g a4 a8 b c bes a g |
  f4 a8 bes c4 \clef "alto" c8 d e4 d8 e | f4 f8 e d4 d8 c bes4 c8 bes | a4 a8 bes c4 c8 d e4 d8 e | f2~ f4 e8 f
  g4 f8 g | a4 g8 f g4 e a2~ | a4 b,8 cis d4 cis8 d e4 d8 e | fis1.\fermata |
}

vC = \relative d { \prelude \voiceTwo
  r2 r4 d8 e f4 f8 g | a4 d8 e f4 f8 e d4 e8 d | c4 c8 b a4 a8 g fis2 | e4 e'8 d c4 g2 fis4 |
  g4 g8 f e4 e8 d c4 d8 c | b4 b8 c d4 c8 d e4 d8 e | fis4 fis8 gis a4 b8 a gis2 | a4 b8 a gis4 a8 b
  e,4 a8 gis | a4 a,8 b c4 c8 d e2~ | e4 e8 f g4 a8 b c4 c8 b | a4 c,8 d e4 e8 f g4 f8 g a4 a,8 b c4
  c8 d e4 f8 e | d4 f8 g a4 g8 f c'2~ | c8 bes a g f2~ f4 e8 d | c4 c8 d e4 e8 f g4 f8 g | a4 a8 bes c4
  c8 d e4 d | cis d2 e8 d cis4 b8 cis | d4 d,8 e f4 e8 f g4 f8 g | a1. |
}

vP = \relative d, { \prelude
  R1. | d2 d d | a'1 b2 | c2. b4 a2 | g1\fermata a2 | b1 c2 | d1 b2 | c b c | a1\fermata
  a2 | c1 a2~ | a g e | f e4 d c2\fermata | r r c | f1 g2 | a1 g2 | f c'1 | a\fermata g2 | f1 e2 | d1.\fermata |
}

RHmusic = { \vA }
LHmusic = { << \vB \\ \vC >> }
PDmusic = { \vP }

\include "obscore.ly"
