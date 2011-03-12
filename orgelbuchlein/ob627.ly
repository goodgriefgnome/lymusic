\version "2.12.0"

\include "obcommon.ly"
\paper {
  %annotate-spacing = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

\header {
  %dedication = ""
  title = "Christ ist erstanden"
  %subtitle = ""
  opus = "BWV 627"
  composer = "Johann Sebastian Bach"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Organ"
  source = "Bach-Gesellschaft Orgelwerke"
  style = "Baroque"
  maintainer = "Li Jie Wong"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
}

prelude = { \time 4/4 \partial 2 \revertbeamthirtytwo }

globals = {
  \accstyle
  \key a \minor
  \prelude
  \override Score.RehearsalMark #'self-alignment-X = #LEFT
  \mark "Vers 1"
  s2 s1*18 \bar "||"
  \mark "Vers 2"
  s1*20 \bar "||"
  \mark "Vers 3"
  s1*23 \bar "|."
  \override Score.RehearsalMark #'self-alignment-X = #CENTER
  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \mark \markup { \musicglyph #"scripts.ufermata" }
  \override Score.RehearsalMark #'self-alignment-Y = #DOWN
  \mark \markup { \musicglyph #"scripts.dfermata" }
}

vA = \relative a' { \prelude \voiceOne
  a2 | gis a | c d | a\fermata a | f g | a f | e f | d\fermata
  f | g e | d c | f g | a\fermata a | f g | a f | e d | g1 | f2 d | d1~ | d | \break

  a'2 a | gis a | c d | a\fermata a | f g | a f | e f | d1\fermata |
  g2 g | d c | f g | a\fermata g | a g | f g | a f | e d | g1 | f2 d | d1~ | d\fermata | \break
  
  a'2 g | f g | a c | a1\fermata | c2. bes4 | a2 c | a g | f1\fermata |
  a2 g | f e | d4~ d16 d e fis g fis e fis g fis g a | d,2\fermata
  g | g e | d c | f g | a\fermata a | f g | a f | e f | g1 | f2 d | d1~ | d \mark "A" |
}

vB = \relative f' { \prelude \beamquarter \voiceTwo
  r8 f16 e f4~ | f8 e16 d e4 r8 e4 d16 e | c8\noBeam a'16 gis a4 r8 a4 g16 a | f4. e16 f 
  e4. d16 e | d8 a16 g a4 d8 c16 bes c4~ | c8 c16 bes c8 cis d d16 cis d4~ | d8 cis16 b cis4 r8 d16 cis d4 | r8 a16 g a4
  d8 d4 c16 d | bes8 bes16 a bes4 r8 c16 bes c4~ | c8 bes16 a bes4~ bes8 a16 g a4~ | a8 d16 c d4~ d8 c16 bes c4~ | c8 c4 bes16 c
  a8 c16 b c8 cis | d8 a16 g a4 d8 c16 bes c4~ | c8 c16 bes c8 cis d d16 cis d4~ | d8 cis16 b cis4 r8 a16 g a4 |
    r8 bes16 a bes4 a8 e'16 d e4~ | e8 d16 cis d4 r8 c16 bes c4 | r8 bes16 a bes8 d16 c d8 g16 fis g4~ | g8 g4 fis16 e fis2\fermata |

  r2 r8 d16[ c d8 a] | b4~ b16 c b c a8[ e' fis gis] | a4~ a16 bes g a f8 d16[ cis d8 g] | f f~ f16 g f g
  e8 cis~ cis16 d b cis | d8[ a bes c] d e16 f e4\prall | f~ f16 g e f d8 d16 cis d e c d | b d cis d32 e cis8. d16 d4. cis8 |
  r8 d16[ c d8 fis,] bes4~ bes16 c a bes | g8[ b c d] e16 f d e c e d c~ | c8 b16 a bes4~ bes8 a16 g a bes g a |
    f8 d'16[ cis d8 a] d g, c16 d bes c | a8 d16[ c d8 a]
  bes8 d c16 d bes c | a c b cis d4~ d16 e d e cis4 | r8 d16[ cis d8 a] d g, c16 d bes c | a8 c16 b c8 cis d16 e cis e d4~ |
    d8 d cis16 d b cis d8 bes16[ a bes8 fis] | bes4~ bes16 d cis d e d cis b a4~ | a~ a16 bes g a
      fis8 g16 fis g8 a | bes d16[ c d8 a] bes4~ bes16 c bes c | a1 | 

  r4 r16 f' g f e4~ e16 e f e | d8 c16 bes a4 d16 f e d c4 | r16 c d e f4~ f16 a g f e g f e | f c d e f4 r16 c d e f4~ |
  f16 c d e f4~ f16 f e d c4~ | c16 c d e f4~ f16 a g f e c d e | f g f e d4~ d16 f e d c4~ | c16 d c d bes2~ bes16 bes a g |
  f c' d e f4~ f~ f16 e32 d e8~ | e16 e d cis d4~ d ~ d16 c32 b c8~ | c16 c bes a bes4~ bes16 a g a bes8 a | g4 r r2 |
  r16 b c d e f e d c8 g c4~ | c16 c bes a bes4~ bes16 bes a g a4~ | a16 a g a bes c a bes g8 d' c8. bes16 | a4
  r16 c d e f e f g f4~ f2~ f16 f e d e4 | r16 f e d c8 cis d4~ d16 d c d | bes4~ bes16 a g a f a b cis d4~ | d16 f e d cis8 b a4
  r16 cis b cis | a4 c~ c8 bes c4~ c16 c bes a bes4~ bes8 bes16 a bes8 bes~ | bes16 bes c bes a2. |
}

vC = \relative d' { \prelude \beamquarter
  r8 d4 c16 d b2 r8 a16 gis a4 | r8 c16 b c4 r8 a16 gis a4 | r8 d16 cis d4~
  d8 cis16 b cis4 | d8 f,16 e f4~ f8 e16 d e4 | f8 a16 g a4~ a8 bes16 a bes4~ | bes8 a16 g a4~ a8 a4 g16 a | f8 f16 e f4~
  f8 f16 e f4~ | f8 e4 d16 e c8 e a4~ | a8 d, g4~ g8 c, f4~ | f8 f16 e f4~ f8 e16 d e4 | r8 f16 e f4
  r8 f4 e16 f | d8 f16 e f4~ f8 e16 d e4 | f8 a16 g a4~ a8 bes16 a bes4~ | bes8 e, a4~ a8 f4 e16 f |
    d8 g4 f16 g e8 a4 g16 a | d,8 f16 e f4 r8 fis16 e fis4 | r8 g16 fis g8 bes16 a bes8 bes16 a bes4~ | bes8 a16 g a4~ a2 |

  \oneVoice \revertbeamquarter
  r8 a16[ g a8 e] f4~ f16 g f g | e8 e'4 d8 e a,16[gis a8 d,] | e e f g a a b cis | d d ~ d16 e d e
  cis8 a16[ g a8 e] | f4~ f16 g e f d8 bes'16 a bes c bes c | a8 c d e a,4. a8 | g8 a16 bes a4~ a~ a16 bes g a | f8 fis g a d,4~ d16 e f8 |
  e g16 f g a b8 c b16 a g4~ | g8 g16[ fis g8 d] g c, f16 g e f | d8 e f4~ f8 e16 d e f d e | f4 f~
  f16 g f g e f d e | f4~ f16 g f g e4~ e16 f e f | d e d e f4~ f8 e16 d e f d e | f8 a16 g a4~ a~ a16 f e d |
    a'8 bes a16 bes g a f g e f d4~ | d16 f e f g8 f e a16[ g a8 e] | d f16[ e f8 cis] d e16 d e8 fis | g4 r8 g16 fis g4~ g16 a g a | fis1 |

  r16 a b cis d4~ d16 d cis b cis4 | d16 bes a g f4~ f16 a g f e4 | f~ f16 e f g a c bes a g bes a g | f4 r16 c d e f4 r16 e f g |
  a4~ a16 a bes a g4~ g16 g a g | f4~ f16 e f g a c bes a g bes a g | f c d e f4~ f16 a g f e8 ees~ | ees16 f ees f d4~ d16 d c bes c4~ |
  c r16 a' bes c d c bes a g8. g16 | c8 a r16 f g a bes a g f e8. e16 | a8 fis g4 c,2~ | c16 c bes a bes a bes c
  d f e d c b c d | e8 g c4 r16 d, e f g f g a | d, d e fis g4~ g16 c, d e f4~ | f2~ f16 e d e e8. d32 e | f16 c d e f e f g
  a g a bes c4~ | c16 a g f bes8 a g a16 bes c4~ | c16 c, d e f8 g a16 g f e d4~ | d16 f e d cis4 d16 cis d e f4~ |
    f16 d e f g8 f e4 r16 e d e | f4 f~ f8 g a4~ | a16 d, e fis g4~ g8 g16 fis g8 g~ | g4~ g16 g fis e
    << { \voiceOne fis2 } \new Voice { \nvkey \voiceTwo r16 e d cis d4 } >> |
}

vP = \relative e { \prelude
  r2 | r8 e4 d16 e c8 c4 b16 c | a8 a'4 g16 a f8 f4 e16 f | d2 r |
  r8 d4 c16 d bes8 c4 bes16 c | f,8 f'4 e16 f d8 bes4 a16 bes | g8 a4 g16 a d,2 |
  r8 d'4 c16 d bes8 bes4 a16 bes | g4 r r8 a4 g16 a f8 g4 f16 g e8 f4 e16 f | d8 d'4 c16 d bes8 c4 bes16 c | f,2 r |
  r8 d'4 c16 d bes8 c4 bes16 c | f,8 f'4 e16 f d8 bes4 a16 bes | g8 a4 g16 a f8 d'4 c16 d | b8 e4 d16 e cis2 |
  r8 d4 c16 d bes8 bes4 a16 bes | g2 r8 g'4 fis16 g | d2 d, |

  R1 | r8 e'16[ d e8 b] c4~ c16 d b c | a8 a'16[ g a8 e] f4~ f16 g e f | d8 f16[ e f8 d]
  a'4 a, | r8 d16[ c d8 a] bes g c c, | f f'16[ e f8 cis] d e f d | g e a a, d, d'16[ cis d8 a] | bes4~ bes16 c a bes
  g8 g'16[ f g8 d] | e4~ e16 f d e c8 d e f | g4~ g16 a f g e8 f16[ e f8 c] | d4~ d16 e c d bes8 c16 bes c8 c, | f4 r r2 |
  r8 f'16[ e f8 b,] r e16[ d e8 a,] | d4~ d16 e c d bes8 c16 bes c8 c, | f f'~ f16 g e f d8 e f g | a g16 e a8 a, bes4~ bes16 c a bes |
  g8 e'16 d e8 b cis4~ cis16 d b cis | d,8 d'16[ cis d8 a] bes4~ bes16 c a bes | g2 r8 g'16[ fis g8 g,] | d'1\fermata |

  R1 | r4 r16 d c d bes4 r16 c bes c | f,8 e d4 a'8 bes c4 | f,2~ f8 e d4 | 
  a'8 g f4 c'8 d e4 | f8 e d4 a8 bes c4 | f,4 r16 d' c d bes4 r16 c bes c | a4 r16 bes a bes f2 |
  f'8 e d c bes g c bes | a f bes a g e a g | fis d g fis e d e fis | g fis g a
  bes g a b | c b c d e d e f | g4 r16 g f g e4 r16 f e f | d4 r16 d c d bes4 r16 c bes c | f,2.
  r16 f' e f | d4 r16 d c d bes4 r16 c bes c | f,4 r16 f' e f d8 c bes a | g e a4 d, r16 d' c d |
    b4 r16 e d e cis e d e a,8 a' | d,16 f e f a, c bes c bes d c d fis, a g a | g4 r16 d' c d bes d c d g, bes a bes | d,1 |
}

RHmusic = { << \vA \\ \vB >> }
LHmusic = { \new Voice { \vC } }
PDmusic = { \vP }

\include "obscore.ly"
