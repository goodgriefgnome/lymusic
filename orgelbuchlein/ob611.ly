\version "2.12.0"

\include "obcommon.ly"
\paper {
  %annotate-spacing = ##t
  ragged-bottom = ##f
  system-count = #6
  ragged-last-bottom = ##f
}

\header {
  %dedication = ""
  title = "Christum wir sollen loben schon."
  subtitle = "Corale in Alto."
  opus = "BWV 611"
  composer = "Johann Sebastian Bach"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Organ"
  source = "Bach-Gesellschaft Orgelwerke"
  style = "Baroque"
  maintainer = "Li Jie Wong"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
}

prelude = { \time 4/4 \beamquarter \revertbeamthirtytwo}

globals = {
  \accstyle
  \key a \minor
  \tempo "Adagio."
  \prelude
  s1*15
  \bar "|."
}

vA = \relative a'' { \prelude \voiceOne
  r16 bes a g f e d cis d8 c16 bes a8 g16 a | bes f' e d cis d d\prall cis32 d e16 a, b cis d e f8~ | f e d16 c b a gis a a\prall gis32 a b4 |
  r16 c' b a g f e d c8. d16 e bes' a g | f e d e f d g8~ g16 c, f8~ f16 e f g | c,8 a'~ a16 e f g a g a b c4 |
  r16 g f e d4~ d16 b c d e8 a~ | a16 g f e d8. d16 e d c b c8 c'~ | c16 bes a g f e f g e d c d e f g a | 
  bes a g f e f f\prall e32 f g16 f e d cis8 a'~ | a16 bes a g f e d cis d bes a g f e d8 | r4 r16 a'' g f e4~ e16 f g a |
  bes8. a16 g f e d cis b a8~ a16 b gis a | b a gis a b c d e c b a b c d e f | gis, a32 b a8~ a16 b32 a gis b d16 c8. d32 c b16 e32 dis e8\fermata |
}

vB = \relative d' { \prelude \voiceTwo
  d4~ d8. e16 f4 f | g a2 d,4 | g f e2\fermata |
  g2 a8. b16 c4~ | c b8. bes16 a8. aes16 g4 | a8. b16 c4 c2\fermata |
  g2 g8 a16 b c4~ | c b8. bes16 a8. aes16 g4 | a8. bes16 c4 g8. f16 e4~ |
  e8. f16 g4 a2 | d,4.. e16 f4.. g16 | a8. bes16 c4~ c8. bes16 a4 |
  g8. f16 e8. f16 g4 f | e1~ | e |
}

vC = \relative d { \prelude
  r8 d8. e16 f g a bes a g f e d cis | d8 bes' a g16 f e d' cis b a g f e | d cis d e f g a b c8 b16 a gis b c d |
  e8 d16 c b8 e~ e16 d c b a8 a'~ | a16 g f e d8. d16 e d c b c4~ | c16 e, f g a b c d e c f8~ f16 e d c |
  b e d c b a g f e f' e d \clef "treble" c bes' a g | f e d e f d g8~ g16 c, f8~ f16 e32 d e8 | f8. g16 a8 c,~ c16 f e d c8 \clef "bass" g~ |
  g16 a bes8. a16[ bes8] a16 b cis d e cis d e | f,8. bes16 a g f e d cis d bes a g f e | \stemUp d \stemDown d'' c bes a4~ a16 bes c d e4~ |
  e16 d cis8~ cis8. d16 e d e cis d4~ | d16 c b a gis8 b~ b16 d c b a8. b16 | c8. d32 c b4~ b16 c32 b a8~ a16 gis32 fis gis8\fermata
}

vP = \relative d, { \prelude
  #(override-auto-beam-setting '(end 1 8 4 4) 5 16)
  #(override-auto-beam-setting '(end 1 8 4 4) 13 16)
  d2~ d8 d'8. c16 bes a | g8 g'8. f16 e d cis8 f8. e16 d c | b8 cis d4 e2 |
  e,8 e'8. d16 c b a8 a'8. g16 f e | d8 g8. f16 e d c8 c'8. bes16 a g | f8 f,8. g16 a b c8 c,4 d8 |
  e8 f8. g16 a b c8 a'8. g16 f e | d8 g8. f16 e d c8 c'8. bes16 a g | f8 f,8. g16 a b c8 c,8. d16 e f |
  g8 g'8. f16 e d cis8 a'8. g16 f e | d2 d,4.. e16 | f4.. g16 a8. bes16 c4~ |
  c8 e8. d16 cis b a8 d8. c16 b a |
  << { r8 d8. e16 fis gis a2 | e1 | } \\
     { gis,4 e r8 a8. b16 c d | r4 \stemUp e,2.\fermata | } >>
}

RHmusic = { << \vA \\ \vB >> }
LHmusic = { \vC }
PDmusic = { \vP }

\include "obscore.ly"
