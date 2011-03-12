\version "2.12.0"

\include "obcommon.ly"
\paper {
  %annotate-spacing = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

\header {
  %dedication = ""
  title = "Jesu, meine Freude."
  %subtitle = ""
  opus = "BWV 610"
  composer = "Johann Sebastian Bach"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Organ"
  source = "Bach-Gesellschaft Orgelwerke"
  style = "Baroque"
  maintainer = "Li Jie Wong"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
}

prelude = { \time 4/4 \beamquarter }

globals = {
  \accstyle
  \key g \minor
  \tempo "Largo."
  \prelude
  \repeat volta 2 { s1*6 }
  s1*7
  \bar "|."
}

vA = \relative g' { \prelude \voiceOne
  \repeat volta 2 {
    g4 g f ees | d2 c\fermata |
    g'4 g a b | c2 b\fermata |
    c8. d16 ees4 d4. d8 | c1\sfermata |
  }
  g4 g aes g | f4. f8 ees2\fermata |
  g4 g a b | c bes a2 | g1\sfermata |
  g4 g f ees | d2 c\fermata |
}

vB = \relative ees' { \prelude \voiceTwo
  \repeat volta 2 {
    ees16 d ees8~ ees16 f ees d c8 d~ d c~ | c c4 b8 c8. g16 c b c d |
    ees d ees8~ ees16 f ees d c8 d16 ees f aes g f | f e f8~ f16 g f ees d ees d8~ d16 ees f d |
    g8 f ees16 g aes ees f ees f d g aes g f | e8 f16 g aes g aes e f g f8~ f16 f ees d |
  }
  ees d ees8~ ees16 f ees des c8 bes~ bes16 bes c g | aes g aes f bes c bes aes g f g8~ g16 bes c d |
  ees d ees8~ ees16 f ees d c8 d16 ees f aes g f | ees d ees8 d g4 g fis8 | g16 d ees c d b c a b a b c d b g b |
  c b c d ees d ees8~ ees d4 c8~ | c16 b c4 b8 c16 g aes8 g4\fermata |
}

vC = \relative c' { \prelude
  \repeat volta 2 {
    c16 b c8~ c16 b c g a8 g~ g16 g aes ees | f ees f d g aes g f ees d ees8~ ees16 f ees d |
    c b c g' c b c c, f8. g16 aes4~ | aes16 g aes bes c b c8 d8. c16 b c d b |
    ees d ees d~ d8 c4 c b8 | c4~ c8. bes16 aes bes aes8 g16 aes g f |
  }
  ees f g aes bes des c bes aes g f8~ f ees~ | ees ees4 d8 ees8. bes16 ees d ees f |
  ees f g8 c16 d c bes a g f8~ f4 | g16 fis g a bes a bes g c bes c a d ees d c | b8 c16 a b g a fis g8 d16 ees f ees f8~ |
  f16 d ees b c b c8 r16 f g d ees g aes fis | g d f ees f aes g f e8. f16~ f d e8\fermata |
}

vP = \relative c { \prelude
  \repeat volta 2 {
    r8 c16 d ees d ees8~ ees16 a, b g c b c8 | r16 g aes f g f g8 c,2 |
    r8 c'16 d ees d ees8~ ees16 c f ees d c d8 | c\noBeam f16 g aes g aes8~ aes16 d, f d g f g8 |
    r a16 b c b c8 r16 g aes f g f g8 | r16 g aes e f e f8 r16 e f b, c b c8
  }
  r ees16 f g f g8~ g16 c, d bes ees d ees8 | r16 bes c aes bes aes bes8 ees,2 |
  r8 c'16 d ees d ees8~ ees16 c f ees d c d8 | c\noBeam ees16 f g fis g8 r16 d ees c d c d8 | g,1 |
  c4 c,8\noBeam c'16 bes a8 b c16 b c8 | r16 g aes fis g f g8 c,2\fermata |
}

RHmusic = { << \vA \\ \vB >> }
LHmusic = { \vC }
PDmusic = { \vP }

\include "obscore.ly"
