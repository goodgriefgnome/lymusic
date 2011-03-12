\version "2.12.0"

\include "obcommon.ly"
\paper {
  %annotate-spacing = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

\header {
  %dedication = ""
  title = "Christ lag in Todesbanden"
  %subtitle = ""
  opus = "BWV 625"
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
  \key a \minor
  \prelude
  s4
  \repeat volta 2 { s1*3 } \alternative { { s1 } { s1 } }
  \bar "||"
  s1*7 s2.
  \bar "|."
}

vA = \relative a' { \prelude \voiceOne \beamquarter
  a4 |
  \repeat volta 2 {
    gis a8 b  c4 d | c b a\fermata
    a | f g a g8 f |
  } \alternative {
    { e2 d4 a' | }
    { e2 d | }
  }
  d8 e f4 g d8 e | f4 g a\fermata
  a | d16 e cis d cis4\prall d e16 f d e | c4 b a\fermata
  a | c a8 bes c4 g | f e d2 | a'4 g f e | d2.\fermata
}

vB = \relative f' { \prelude \voiceTwo \beamquarter
  f4 |
  \repeat volta 2 {
    e4 e16 fis gis8 a16 b g a f8 e~ | e16 f e f d e d e cis d e f
    d e d c | d8 a d c~ c cis d16 e c d |
  } \alternative {
    { bes8 g a16 bes g a f4 f' | }
    { bes,8 g a16 bes g a f a g bes a4 | }
  }
  a16 b cis8 d4~ d16 e c d bes d8 cis16 | d8 a d c~ c16 d bes c
  a bes g a | f8 a' a4 a g8 f | e a~ a gis a16 bes g a f g f g |
  e4 f8 g~ g f~ f e~ | e16 e d8~ d16 d cis8 r16 a' g a f g e f | d4~ d8 r16 g, c8 r16 f, bes8 a16 g | fis8 bes a16 bes g bes a4\fermata
}

vC = \relative d' { \prelude \beamquarter
  d16 e c d |
  \repeat volta 2 { 
    b4 c8 d e e d16 c b c | a8 a4 gis8 a16 bes g a f g e f |
    d8 f~ f16 g e g f g e f d4 |
  } \alternative {
    { e16 f d e cis d b cis d4 d'16 e c d | }
    { e,16 f d e cis d b cis d8 e f4 | }
  }
  f16 g e f d8 a' g4~ g16 f e f | d8 f~ f16 g e g f4
  f8 e | d f' e4 d16 e c d b4~ | b16 c a8 e'16 f d e cis8 a d16 e d e | 
  c4~ c16 d bes c a bes a bes c4~ | c8 r16 f, bes8 r16 e, f8 bes16 c a bes g a | f4~ f16 f e8~ e16 e d8~ d16 d cis8 |
  d16 a' g a fis g e g fis4\fermata
}

vP = \relative d { \prelude
  r8 d |
  \repeat volta 2 {
    e16 f d e c d b c a8 a'4 gis8 | a c, d e a,4
    r8 a | d16 e c d bes8 c f, a bes16 c a bes |
  } \alternative {
    { g8 e a4 d, r8 d' | }
    { g,8 e a4 d,2 | }
  }
  d'4~ d16 e c d bes c a bes g4 | d'16 e c d bes8 c f,4 r |
  r8 d' a'16 bes g a f8 fis g gis | a c,16 d e8 e, a4
  r8 d | a'16 bes g a f4~ f8 f, c'16 d bes c | a8 bes g a d,4 d'~ | d16 e c d bes8 c a bes g a | d,2.\fermata
}

RHmusic = { << \vA \\ \vB >> }
LHmusic = { \vC }
PDmusic = { \vP }

\include "obscore.ly"
