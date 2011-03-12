\version "2.12.0"

\include "obcommon.ly"
\paper {
  %annotate-spacing = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

\header {
  %dedication = ""
  title = \markup { "Gott, durch dein Güte" { \normalsize "oder" } "Gottes Sohn ist kommen." }
  subtitle = "(In Canone allʼ Ottava, a 2 Clav. e Pedale.)"
  opus = "BWV 600"
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
  \key f \major
  s1.*26
  \bar "|."
}

vA = \relative f' { \prelude \voiceThree 
  f1 f4 g | a1 b2 | c1 d2 | c1\fermata r2 |
  d1 e2 | f1 c2 | a b\prall a4 b | c1 r2 |
  bes1 g2 | a1 bes2 | a1 g2 | f1 r2 |
  r2 e f | g1 a2 | g1 f2 | e d1 | c1 r2 |
  f1 f4 g | a1 b2 | c1 d2 | c1 r2 |
  f,1 g2 | a1 bes2 | a1 g2 | f1 e2 | f1.\fermata
}

vB = \relative d' { \prelude \voiceTwo
  r8 ees d c d ees d c bes d c bes | a g' f e d c d e f e f g | e bes' a g a bes a g f a g f | g a g f e g f e a g f g |
  a c bes a bes c bes a bes d c bes | a bes a g f a g f g bes a g | a a, b c d c d e f e f d | e bes' a g a bes a g f a g f |
  g a g f e d c d e f d e | f c d e f g f e f e f g | c, f ees d c ees d c d c d e | f e d e f g f e f e d c |
  b d c b c d c b a c b a | g a g f e\noBeam f' e d c g' f e | d e d c b d c b c b c d | e d c \fictasub b a c b! a b c a b | c bes a g a f g a bes g a bes |
  c ees d c d ees d c bes d c bes | a g' f e d c d e f e f g | e bes' a g a bes a g f a g f | g a g f e g f e a g f g |
  a g f e d c bes a bes f' e d | c g' f e f g f e d f e d | c f ees d c ees d c d c d e | f e d c d c bes a bes d c bes | a1.
}

vC = \relative f, { \prelude
  \oneVoice r4 f bes c d e | f g f e d g | c, f e f d g | e a g a f bes |
  fis d g f g c, | d d' c bes a g | f e d g f g | c, f e f d g |
  e d c bes a g | f e d c d e | f f' ees f bes, c | d, d' c d b c |
  d g, c a d b | e d c b a d | b e d e a, b | c e f d g g, | c e, f d g e |
  a f bes c d e | f g f e d g | c, f e f d g | e a g a f bes |
  a d c d g, c | f, e d c bes c | f, f' ees f bes, c d c bes g c c, | f1.
}

vP = \relative f { \prelude 
  r1. | 
  f1 f4 g | a1 b2 | c1 d2 | c2 r r |
  d1 e2 | f1 c2 | a1 b2 | c1 r2 |
  r2 bes g | a1 bes2 | a1 g2 | f2 r r |
  r2 e f | g1 a2 | g1 f2 | e d1 | c2 r r |
  f1 f4 g | a1 b2 | c1 d2 | c2 r r |
  f,1 g2 | a1 bes2 | a2 g1 | f1.
}

RHmusic = { <<
  { s1^\markup { \bold { Man. Princip. 8 F. } } }
  << \vA \\ \vB >>
>> }
LHmusic = { \vC }
PDmusic = { <<
  { s1. s1^\markup { \bold { Ped. Tromp. 8 F. } } }
  \vP
>> }

\include "obscore.ly"
