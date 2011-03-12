\version "2.12.0"

\include "obcommon.ly"
\paper {
  %annotate-spacing = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

\header {
  %dedication = ""
  title = "O Lamm Gottes, unschuldig"
  %subtitle = ""
  opus = "BWV 618"
  composer = "Johann Sebastian Bach"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Organ"
  source = "Bach-Gesellschaft Orgelwerke"
  style = "Baroque"
  maintainer = "Li Jie Wong"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
}

prelude = { \time 4/4 \beamquarter \revertbeamthirtytwo }

globals = {
  \accstyle
  \key f \major
  \prelude
  s1
  \repeat volta 2 { s1*6 }
  \alternative { { s1 } { s1 } }
  s1*12
  \bar "|."
}

vA = \relative c'' { \prelude \voiceOne
  c2\mordent~ c8\noBeam f16( e) e( d) d(c) |
  \repeat volta 2 {
    c16( d32 ees) d16 c c( bes) bes( a) a( bes32 c) bes16( a) a( g) g a32 f |
    e8\noBeam e'16( f) f( g) g( a) d, 8 g~ g16 g a bes |
    e,( f32 g) f16( e) e d d c c d32 ees d16 c c bes bes a |
    a bes32 c bes g a16 e8.\trill f16 f4 r |
    r8 e'16( d) d( c) c( b) b( c32 d) c16 b b( a) a( g) |
    c( d32 e f g a16) g( f) f( e) e g32 f g16. a32 d,8. c16 |
  } \alternative {
    { c2\mordent~ c8\noBeam f16( e) e( d) d( c) | }
    { c1~ | }
  }
  c8 b16 c c d d e e8\noBeam bes16 a a g g f |
  f g32 a g16 f f( e) e( f) e8\noBeam g16( a) a b b c |
  c b32 a b16 c c( d) d( e) e( d32 c) d16( e) e( fis) fis( g) |
  g8\noBeam ees16 d d( c) c( bes) bes c32 d c16 bes bes a a g |
  ees' d d e e f f g g f32 e d16 e e d d cis |

  cis8 bes16 a a( g) g( f) f8 bes16( c32 d) c16 bes bes a |
  a32 c d e f g a16 g16( f) f( e) e( f32 g) f16( e) e( d) d( c) |

  c( d32 e) d16( c) b( c) c( d) d8\noBeam e,16( fis) fis( g) g( a) |
  a8 d d4\mordent~ d16 e32 f e16 d cis( d) d( e) |
  e( f32 g) f16 e d( c) c( b) c2~ |
  c16 bes32 a g16( a) a( bes) bes( a) a( g32 f) g16( a) a( bes) bes8~ |
  bes16 c32( d c16 bes) bes a a g a2\fermata |
}

vB = \relative c' { \prelude \voiceTwo
  R1 |
  \repeat volta 2 {
    r2 c | c4 c g' g | a2 g | r4 g c, d | e f8 e d2 | c4 r r2 |
  } \alternative { { R1 | } { R1 | } }
  e2 e4 e | d8. c16 b4 c8 b a4 | g2 r |
  g' g4 g | a g2 f4 | e2 r |
  a g~ | g4 f8 e d2~ | d4 e8 fis g2~ | g4 f e2~ | e8 g f e d2 | c1 |
}

vC = \relative f { \prelude
  r8 f16( e) e( d) d( c) c( d32 ees) d16( c) c( bes) bes( a) |
  \repeat volta 2 {
    a( bes32 c) bes16( a) a( g) g( f) f8 e' f g |
    a16 bes32 c bes16 a a( g) g( f) bes c32 d c16 bes bes a a g |
    c8\noBeam a16 g g( f) f( e) e( f32 g) f16 e e( d) d( e) |
    f8\noBeam d16( c) c( bes) bes( a) a( bes32 c) bes16( a) a( g) g( f) |
    c'8 c, d e f e f g |
    a\noBeam f'16( e) e( d) d( c) c8 f g g, |
  } \alternative {
    { c8\noBeam f16( e) e( d) d( c) c( d32 ees) d16( c) c( bes) bes( a) }
    { c8\noBeam c,16( d) d( e) e( f) f( e32 d) e16( f) f( g) g( a) | }
  }
  a g32 f g16 a a b b c c4^\markup { "TODO" } cis8.\prallprall b32 cis |
  d16 e e f gis,8.\prallprall fis32 gis a8 e'16 f f( g32 a) g16( f) |
  e( f32 g) f16( e) e( d) d( c) c8 b c d |
  ees8 c16( bes) bes( a) a( g) g8 bes ees e | f fis g e cis a d gis, | a\noBeam
  a16 b b( cis) cis( d) d( c32 bes) c16 d d( e) e( f) | f8 g a b c\noBeam
  a16( g) g f f e | e f32 g f16 e d( c) c( b) b( c32 d) c16( bes) a( g) g( fis) |
  fis( g a32 bes c16) bes( a) a( g) g d' g f e( d) d( cis) | cis( b32 a) b16( cis) d8 d, a'16( g32 f) g16( a) a( bes) bes( c) |
  c8 e16( d) d( cis) cis( d) d e32 f ees16 d d( c) c( bes) | f'2 f,\fermata |
}

vP = \relative f { \prelude
  R1 |
  \repeat volta 2 {
    f2 f4 f | c' c d2 | c r4
    c | f, g a bes8 a | g2 f4 r | R1
  } \alternative { { R1 } { r2 a } }
  a4 a g8. f16 e4 | f8 e d4 c2 |
  r c' | c4 c d c~ | c bes a2 |
  r d | c2. bes8 a | g2. a8 bes | c2. bes4 | a2~ a8 c bes a | g2 f~ | f1\fermata |
}

RHmusic = { << \vA \\ \vB >> }
LHmusic = { \vC }
PDmusic = { \vP }

\include "obscore.ly"
