\version "2.12.0"

\include "obcommon.ly"
\paper {
  %annotate-spacing = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

\header {
  %dedication = ""
  title = "Lobt Gott, ihr Christen, allzugleich."
  %subtitle = ""
  opus = "BWV 609"
  composer = "Johann Sebastian Bach"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Organ"
  source = "Bach-Gesellschaft Orgelwerke"
  style = "Baroque"
  maintainer = "Li Jie Wong"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
}

prelude = { \time 4/4 \partial 4 }

globals = {
  \accstyle
  \key g \major
  \prelude
  s4 s1*9 s2.
  \bar "|."
}

vA = \relative g' { \prelude \voiceOne
  g4 | d' d d d | e d8 c b4\fermata
  a | b8 cis d4 e e | d2.\fermata
  d4 | d d d b16 c b c | d4~ d16 d c b a4\fermata
  d | c b a a | g8 a b c d4\fermata
  d | c b a a | g2.\sfermata
}

vB = \relative g' { \prelude \voiceTwo
  g16 b a g | a8 b c16 fis, g a g8 a b16 c b a | g8 g a16 g fis e d fis e d
  cis e d cis | b8 e d16 e fis8 e16 fis g8~ g16 b a g | fis g fis e d e fis g a c b a 
  g8 fis | g16 b a g fis g e fis d fis g a b8 fis | g16 c b a g b a g fis g fis e 
  d8 fis | e16 g fis e d e c d e8 cis d dis | e16 g fis e d b' a g fis d' c b
  a c b a | g8 a~ a16 a g f e f d e c e d c | b c b a g b a c b4\fermata
}

vC = \relative b { \prelude
  b16 d c b | a b g a fis a b c d e c d b g a b | c d b c a4~ a16 a g fis
  e8 a~ | a16 g8 g16 a8. a16 b8. b16 cis8. cis16 | d b a g fis g fis e d fis g a
  b c a b | g d' c b a8 g a16 c b a g e' d c | b d e fis g8 r r16 e d c
  b c a b | g8 a b g~ g16 b a g fis g e fis | \clef "treble" g e' d c b g' fis e d b' a g
  fis e d c | \clef "bass" b c a b g4~ g4. fis8 | g16 e d c b d c e d4\fermata
}

vP = \relative g { \prelude
  g4 | fis8 e d c b a g f | e e' fis d g4. fis8 |
  \beamquarter
  g e fis d g e a a, | d,4. e8
  \revertbeamquarter
  fis d g a | b c d e fis d g a | b a b c d4 r8 d,, |
  e fis g b c[ a] d b | e fis g a b c d d, | e fis g b, c a d4 | g,2.\fermata
}

RHmusic = { << \vA \\ \vB >> }
LHmusic = { \vC }
PDmusic = { \vP }

\include "obscore.ly"
