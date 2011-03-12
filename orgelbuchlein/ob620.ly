\version "2.12.0"

\include "obcommon.ly"
\paper {
  %annotate-spacing = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

\header {
  %dedication = ""
  title = "Christus, der uns selig macht"
  %subtitle = ""
  opus = "BWV 620"
  composer = "Johann Sebastian Bach"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Organ"
  source = "Bach-Gesellschaft Orgelwerke"
  style = "Baroque"
  maintainer = "Li Jie Wong"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
}

prelude = { \time 4/4 }

globals = {
  \accstyle
  \key a \minor
  \prelude
  s1*25
  \bar "|."
}

vA = \relative e'' { \prelude \voiceOne
  e4 e e e | d c b r | r2 r4 a~ | a gis a4. b16 c | d2 c | b4 r r
  a~ | a b c8. b16 a4 | a8. g16 f4 e r | r d2 cis4 | d e8 fis g2 | f e4 r |
  a a a g f2 e | d4 r g a | b c d2~ | d4 e d c | b r r a~ | a b c8. b16 a4 | a8. g16 f4 e2 | r4
  d2 cis4 | d e8 fis g4 a~ | a g2 f4 | e2 r8 a4 gis16 a | b8 e,16 fis gis8 a b c d e | dis d cis c b2\fermata |
}

vB = \relative a' { \prelude \voiceTwo
  r8 a4 gis16 a b8 e,16 fis gis a gis a | b8 e,4 dis16 e fis a gis b a g fis e |
  dis4. e16 fis b,8 e4 d8 | cis c b16 c d8~ d16 c8 b16 c a f' e | d b e8~ e16 d c b a8 e'4 d16 e |
  f8 b,16 c d c d e fis a gis b a g f e | d e f d gis,4 a8 e'~ e c16 d | e8 a, r d~ d c r16 e d c |
  b d cis e d8 a bes a gis g | fis f e ees d4 r8 e'~ | e d16 cis d4~ d8 cis16 d e d cis b |
  a8 d4 cis16 d e8 a,16 b c8 cis~ | cis b16 cis d4~ d8 cis4 b16 cis | d8 a16 b cis 8 d e4 fis~ |
  fis8 g4 fis8 g d' cis c | b16 a g8~ g16 e a g fis8 f e ees | d8 e16 d cis8 c b e4 dis16 e |
  fis8 b,16 c d c d e a, gis a b c b a b | c8 cis d4~ d8 c r c | b16 d cis e d8 a bes a gis g |
  fis f e ees d g4 f16 e | f4 r8 c' b bes a b | cis a16 b c8 cis d2~ | d8 c d e16 fis gis8 a gis g | fis f e dis e2 |
}

vC = \relative a { \prelude
  r4 r8 a4 gis16 a b8 e,16 fis | gis a fis gis a4 r8 e4 dis16 e | fis a g b a4~ a8 g fis f |
  e dis e4. e4 d16 e | f8 b,16 c d8 e fis16 a gis b a4~ | a8 gis4 fis16 gis a8 e4 d16 e |
  f8 b,16 c d c d e a,4~ a16 b a b | c8 cis d b'~ b16 gis a b c8 e, | d e a,16 d e f g8 f e4 |
  r8 d cis c b bes a4 | r8 a'4 g16 a bes8 e, cis d16 e | f a g f e d e d cis b cis d e4~ |
  e8 a4 bes16 a g8 a16 bes e, f g e | a g f8~ f16 e d8~ d c~ c b16 c | d8\noBeam d'16 c b8 a b4. a16 g |
  fis8 b16 c b8 bes a a4 gis16 a | b8 e,16 fis gis e a8~ a gis a b16 c | dis,8 a' gis g fis f e g |
  f e d b'~ b16 gis a b c8 e, | d e a,16 d e f g8 f e4 | r8 d cis c b bes a4 |
  r8 d4 cis16 d e8 a,16 b cis8 d | e f16 g a4~ a8 b16 c b8 a | gis a b c d c b4~ | b8 a16 gis a4~ a8 gis16 fis gis4\fermata |
}

vP = \relative e { \prelude
  r2 e4 e | e e d c | b2 r | r a~ | a4 gis a4. b16 c | d2 c | b4 r r a~ | a b c8. b16 a4 | a8. g16 f4 e r |
  d2. cis4 | d e8 f g2 | f e4 r | a a a g | f2 e | d4 r g a | b c d2~ | d4 e d c | b r r
  a~ | a b c8. b16 a4 | a8. g16 f4 e r d2. cis4 | d4 e8 fis g4 a~ | a g f2 | e1~ | e | 
}

RHmusic = { << \vA \\ \vB >> }
LHmusic = { \vC }
PDmusic = { \vP }

\include "obscore.ly"
