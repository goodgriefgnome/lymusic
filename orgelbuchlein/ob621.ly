\version "2.12.0"

\include "obcommon.ly"
\paper {
  %annotate-spacing = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

\header {
  %dedication = ""
  title = "Da Jesus an dem Kreuze stund"
  %subtitle = ""
  opus = "BWV 621"
  composer = "Johann Sebastian Bach"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Organ"
  source = "Bach-Gesellschaft Orgelwerke"
  style = "Baroque"
  maintainer = "Li Jie Wong"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
}

prelude = { \time 4/4 \partial 2 }

globals = {
  \accstyle
  \key c \major
  \prelude
  s1*11
  \bar "|."
}

vA = \relative b' { \prelude \voiceOne
  b2 | c4 b a b8. c16 | d4 c b\fermata
  c | d8. c16 b4 c8. bes16 a4 | a8. g16 f4 e\fermata
  d | e8. fis16 g4 g g8. f16 | e4 fis g\fermata
  b | c b a g | a8. g16 f4 e\fermata
  d8. e16 | f4 g a a | g f e2~ | e\fermata
}

vB = \relative e' { \prelude \voiceTwo
  r8 e4 d8 | g8 a16 g f8 g16 f e8 d16 c b d g8~ | g f e a16 g f8 g16 f
  e8 a16 g | f g f e d4 c8 g' c, f | e4~ e8 d16 c bes8 c16 bes
  a8 bes16 a | g8 c~ c16 b c d e4 d | c~ c16 c b a g d' e fis
  g a fis gis | a8. g16 f8 g16 f e8 f16 e d8 cis16 d | e4 ~ e8 d16 c bes8 c16 bes
  a8 bes | c16 a d c bes g c bes a cis d e d e f e | d8 e16 d c8 d16 c b8 a16 gis a b c8 | b2 
}

vC = \relative e { \prelude
  r16 e g a b c d b | e c f e d b e d cis a8. g4 | a16 d, f g a b c a d b e d 
  c b a8~ | a4~ a16 a g f g c, d e f g a bes | e, a, b cis d e f d g e a g
  f d g f | e d c8 d16 g, a b c d e f g d g8~ | g16 g a b a8 d,~ d4~
  d8 d' | e16 c f e d b e d cis a d c bes a g f | e a, b cis d e f d g e a g
  fis d g8 | c,16 g' f e d f e d cis e f g a d, d' c | b g c bes a f bes a gis fis e8~ e8. a16~ | a a gis fis gis4\fermata
}

vP = \relative e { \prelude
  r8 e b b'~ | b a4 g f e8 | f d a a'4 g f16 e |
  f8 d g, f'4 e d8 | cis a d, d'4 c bes8~ |
  bes a b g c, c'4 b8~ | b a16 g a8 c~ c b16 a b8 b'~ |
  b a4 g f e16 d | cis8 a d, d'4 c bes8~ | 
  bes a4 g f16[ e f8 f'~] | f e4 d c16[ b c8 a] | e'4 e,\fermata
}

RHmusic = { << \vA \\ \vB >> }
LHmusic = { \vC }
PDmusic = { \vP }

\include "obscore.ly"
