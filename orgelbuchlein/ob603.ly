\version "2.12.0"

\include "obcommon.ly"
\paper {
  %annotate-spacing = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

\header {
  %dedication = ""
  title = "Puer natus in Bethlehem."
  %subtitle = ""
  opus = "BWV 603"
  composer = "Johann Sebastian Bach"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Organ"
  source = "Bach-Gesellschaft Orgelwerke"
  style = "Baroque"
  maintainer = "Li Jie Wong"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
}

prelude = { \time 3/2 \partial 2 }

globals = {
  \accstyle
  \key d \minor
  \prelude
  s2 s1.*16
  \bar "|."
}

vA = \relative g' { \prelude \voiceOne
  g2 | g1 g2 | a1 a2 | bes a g | f1.\sfermata |
  bes1 c2 | bes1 a2 | bes1\sfermata
  bes2 | bes1 bes2 | a1 g2 | g1 fis2 | g1\sfermata
  g2 | fis1 g2 | a1 a2 | bes1 a2 | g1 fis2 | g1.\fermata
}

vB = \relative g' { \prelude \voiceTwo
  g8 f g f | ees2~ ees8 d ees d ees d ees f | d4. e8 fis e fis e fis g e fis | g4 g2 f4 ees8 d ees d | c2
  r8 f, a c f ees f ees | f ees f ees d ees c d ees2 | r8 d f aes g f g f ees d ees c | d2~ d8 c d c
  d c ees d | c4. d8 e f e g fis g fis g | a4. g8 fis e fis d g2 | d8 c d c bes4 ees~ ees8 ees d c | bes \tolh \voiceOne d, g bes \torh \voiceTwo d c d c
  bes a bes g | a \tolh \voiceOne ees a c \torh \voiceTwo ees d ees d c bes c bes | a \tolh \voiceOne d, fis a \torh \voiceTwo d c d c d c d c |
  bes \tolh \voiceOne g bes d \torh \voiceTwo g f g f ees d e fis | g f g f ees d ees4 d2 | d1.
}

vC = \relative bes { \prelude \oneVoice
  bes4 b | c8\noBeam c, e g c bes c bes c bes c bes a d, fis a d c d c d c d c | bes d, g bes d c d c bes a bes g | a\noBeam f, a c f ees f ees
  f2~ | f8 bes, d f bes a bes a bes a bes a | bes2~ bes8 g bes d c bes c a | f\noBeam bes, d f bes a bes a
  bes a bes a | g c, e g c bes c bes c bes a g | d' d, fis a d c d c d c d c | bes a bes a g fis g a d, c' bes a | \voiceTwo g4 r \oneVoice
  r8 a, bes c d c d bes | \voiceTwo c4 r \oneVoice r8 bes c d ees d ees d | \voiceTwo ees8 r r4 \oneVoice r8 a, d e fis e fis d | \voiceTwo g4 r \oneVoice
  r8 c, ees g c bes c d | bes g bes d c bes c bes c bes c a | b\noBeam g, b d
  << { g2\fermata ~ g } \\ { g8 d g a b2\fermata } >>
}

vP = \relative g { \prelude
  r4 g | c, c'2 bes4 a g | fis d'2 c4 bes a | g2 d ees | ees,4
  f'2 ees4 d c | d bes'2 a4 g fis | g d ees c f f, | bes
  bes'2 a4 g f | e c'2 bes4 a g | fis d'2 c4 bes a | g d ees c d d, | g
  bes2 a4 g f | ees c'2 bes4 a g | fis d'2 c4 bes a | g ees'2 d4 c d | ees bes c a d d, | g1.\fermata
}

RHmusic = { << \vA \\ \vB >> }
LHmusic = { \vC }
PDmusic = { \vP }
\include "obscore.ly"
