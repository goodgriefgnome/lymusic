\version "2.12.0"

\include "obcommon.ly"
\paper {
  %annotate-spacing = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

\header {
  %dedication = ""
  title = "Jesus Christus, unser Heiland"
  %subtitle = ""
  opus = "BWV 626"
  composer = "Johann Sebastian Bach"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Organ"
  source = "Bach-Gesellschaft Orgelwerke"
  style = "Baroque"
  maintainer = "Li Jie Wong"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
}

prelude = { \time 12/8 }

globals = {
  \accstyle
  \key a \minor
  \prelude
  s1.*9
  \bar "|."
}

vA = \relative a' { \prelude \voiceOne
  a4. a g a | b a g fis | e\fermata g a b | a gis a\fermata
  d | a8.*4/3 b16*2 c4. b a | b\fermata a a a | b a g fis | e\fermata
  g a b | a gis a2*3/2\fermata |
}

vB = \relative d' { \prelude \voiceTwo
  s1. | r8 d g~ g fis e dis b e~ e4 dis8 | e4. e~ e8 c f~ f e d | c4. b a8 c f~ 
  f e d | c4 e8~e a g f b, e~ e e dis | e4.
  cis d d | r8 d g~ g fis e dis b e~ e4 dis8 | e4. e d~ d8 e f | e c f~ f e d cis a d~ d4 cis8\fermata |
}

vC = \relative b { \prelude
  r2*3/2 r8 b e~ e d c | b4. c b8 g c~ c b a | g4. c~ c8 a d~ d c b | c c, f~ f e d c e a~ a g f |
  e4 b'8 a4.~ a4 gis8 a gis a~ | a fis gis g fis\prall e f4. fis | g4 e8 c'4. b8 g c~ c b a | g e bes'~ bes a g
  fis4 a8 gis4. | a4 d8~ d c b a g f e a, a'\fermata |
}

vP = \relative a, { \prelude
  r8 a c~ c b a e'4. fis | g a b4 a8 b4 b,8 | e e, e'~ e d c f4 d8 g4 gis8 | a4 d,8 e4 e,8 a4.
  b | c8 a g'~ g f e d4 e8 f4 fis8 | e4. a, r8 d, c'~ c b a | g4. a b4 a8 b4. | e,
  c'~ c8 a f'~ f e d | c4 d8 e4 e,8 a2*3/2\fermata |
}

RHmusic = { << \vA \\ \vB >> }
LHmusic = { \vC }
PDmusic = { \vP }

\include "obscore.ly"
