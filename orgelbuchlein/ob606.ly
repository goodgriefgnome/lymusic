\version "2.12.0"

\include "obcommon.ly"
\paper {
  %annotate-spacing = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

\header {
  %dedication = ""
  title = "Von Himmel hoch, da kommʼ ich her."
  %subtitle = ""
  opus = "BWV 606"
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
  \key d \major
  \prelude
  s1*10
  \bar "|."
}

vA = \relative d'' { \prelude \voiceOne
  d2 cis4 r16 b cis d | cis4 a b cis | d2 \fermata
  d | d4 a~ a16 b a g fis4 | a g fis2\fermata |
  fis4~ fis16 fis g a b4~ b16 d cis b | a8. b16 cis4 d8 cis b4 | a2\fermata
  d | cis4 b a b8. a16 | g a g fis e4 d2\sfermata |
}

vB = \relative f' { \prelude \voiceTwo
  r16 fis gis a gis4 a4. g8~ | g16 b a g fis4~ fis16 a g fis e g fis e | d a b cis d cis d e
  fis cis d e fis e fis g | a b a g fis e fis g e4~ e16 cis d e | cis8 dis r16 e dis cis dis b' a g fis e d cis |
  b ais b cis d4~ d16 d e fis g4~ | g8 fis e a~ a16 gis8 fis16~ fis gis fis eis | fis cis d e fis e fis g
  a4~ a16 b a gis | a8. g16 fis d g fis e cis fis e d c b8~ | b c \tolh \voiceOne r16 b a g fis g fis e d4\fermata |
}

vC = \relative d' { \prelude
  d4~ d16 d cis b a cis d e fis8 e | e4~ e16 e d c b8. a16 g b a g | fis4
  r16 a b cis d r r8 r16 cis d e | fis g fis e d4~ d16 d cis b a8 b | r16 a g fis g8 a b4
  r16 g fis e | d fis gis ais b8 a g16 b cis d e fis e d | cis a d8 r16 cis b a gis8 a b cis~ | cis16 a b cis d cis d e
  fis g fis e d8 e~ | e16 cis fis e d b e d cis a d c b a g fis | \voiceTwo e8 d4 cis8 d16 b a g fis a d,8\fermata |
}

vP = \relative d { \prelude \beamquarter
  r8 d[ b e] a, a' d, e | a, cis d, d' g, b e, a | d,2
  r | r8 d'[ fis d] a' a, d b | fis' b, e e, b'2 |
  r8 b[ b' fis] g g, g' cis, | fis d a' fis b fis gis cis, | fis2
  r8 d[ b e] | a, a'4 g fis8[ g b,] | cis d g, a d,2\fermata |
}

RHmusic = { << \vA \\ \vB >> }
LHmusic = { \vC }
PDmusic = { \vP }
\include "obscore.ly"
