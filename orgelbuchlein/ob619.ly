\version "2.12.0"

\include "obcommon.ly"
\paper {
  %annotate-spacing = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

\header {
  %dedication = ""
  title = "Christe, du Lamm Gottes."
  subtitle = "in Canone alla Duodecima a 2 Clav. e Pedale."
  opus = "BWV 619"
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
  \key d \minor
  \prelude
  s1.*16
  \bar "|."
}

vA = \relative c'' { \prelude \voiceOne
  \override MultiMeasureRest #'staff-position = #6 R1.*4 | c1 d2 | e1 e2 | f1. | e1 r2 |
  e1 d2 | e1 f2 | g1 f2 | e1 r2 |
  e d c | e1. | d~ | d |
}

vB = \relative f'' { \prelude \voiceTwo
  r4 f e d c bes | a d c bes a g | f2 c'1~ | c4 f e d c bes |
  a e f g a2 | r4 f g a bes2 | r4 a b cis d2 | r4
  a' g f e d | c1 gis2 | r4 a b cis d2 | e cis d | cis4
  e, f g a b | c2 b a | b4 d g,2 c~ | c4 c b a g fis | g1. |
}

vC = \relative f' { \prelude \voiceOne
  R1. | r4 f e d c bes | a d c bes a g | f r r2 r | r4
  c' d e f2 | r4 d e f g2 | cis, d4 e f g | a2 r r |
  r4 a g f e d | c2 e d | r4 cis d e f g | a2 r r |
  r4 b, c d e fis | g f e d c2 | g'4 e d c b a | b1. |
}

vD = \relative f { \prelude \voiceTwo
  R1.*3 | f1 g2 | a1 a2 | bes1. | a1 r2 |
  a1 g2 | a1 b2 | c1 bes2 | a1 r2 |
  a2 g f | a1. | g~ | g~ | g |
}

vP = \relative f, { \prelude
  f1.~ | f~ | f4 f' e d c bes | a d c bes a g | 
  f bes' a g f d | g, c' bes a g e | a, a' g f e d | cis2 d bes | a1 r2 |
  r4 a' g f e d | cis a g f e d | a'1 r2 | R1. |
  r4 b c d e fis | g1. | g, |
}

RHmusic = { << \vA \\ \vB >> }
LHmusic = { << \vC \\ \vD >> }
PDmusic = { \vP }
\include "obscore.ly"
