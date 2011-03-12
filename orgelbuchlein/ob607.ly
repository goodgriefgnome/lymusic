\version "2.12.0"

\include "obcommon.ly"
\paper {
  %annotate-spacing = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

\header {
  %dedication = ""
  title = "Vom Himmel kam der Engel Schaar."
  subtitle = "(a 2 Clav. e Pedale.)"
  opus = "BWV 607"
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
  s1.*18
  \bar "|."
}

vA = \relative g' { \prelude \voiceOne
  g2 | g1 g2 | a1 a2 | bes1 a2 | bes1\fermata
  bes2 | d1 f2 | d1 c2 | bes1 a2 | bes1\fermata
  bes2 | d1 d2 | c1 c2 | d bes a | g1\fermata
  g2 | d'1 d2 | c1 c2 | d1 c2 | bes a1 |
  \once \override Tie #'control-points = #'((1 . 0.5) (2 . 5) (31.5 . 4) (37.5 . 0.5))
  g1~ \shiftOn \override NoteColumn #'force-hshift = #-0.5
  g2~ | g1\fermata
}

vB = \relative g' { \prelude \voiceTwo
  r8 f16 \fictasub ees d4 | bes2. f'4 ees16 f ees d c4~ | c2 d4 g fis16 g fis e fis4 | g2. f4 ees16 f ees d c4 | d8\noBeam a'16 g f4
  d2. g4 | f g8. a16 bes4 c d r | r16 bes a g f4 g bes2 a4~ | a16 g f ees d4 ees f8 r r ees~ ees4 | d8\noBeam a'16 g f4
  d2. g4~ | g fis r16 bes a g f4~ f bes~ | bes2 a8 g16 f ees4~ ees2 | d2. ees4~ ees16 g fis ees d4~ | d c bes a bes r |
  r16 bes' a g f4~ f2. bes4~ | bes2 a4 r r f~ | f2 g~ g | R1. | \voiceThree \shiftOff c,8\rest f16 ees d4 ees2~ \tieUp ees~ | ees d
}

vBB = \relative b { \prelude \voiceTwo
  s2 s1.*16 | f2\rest f\rest
  %\override NoteColumn #'force-hshift = #0.3
  c'~ | c b
}

vC = \relative c' { \prelude
  r4 r16 c bes a | g8 f16 ees d c bes a g8 a16 bes c d ees f g4~ g16 bes a g | fis a g fis ees d c bes 
    a8 bes16 c d e fis g a4 d16 c bes a | g8 f16 ees d c bes a g a bes c d ees f d ees4~ ees16 bes' a g | f4
  r16 ees' d c bes8 a16 g f ees d c bes8 c16 d ees f g a | bes f g a bes c d ees f bes, c d \clef treble ees f g a
    bes f g a bes c d ees | \clef bass r4 r16 ees, d c bes g f ees d c bes a g bes c d ees f g a | bes4 r16 c bes a g a bes c
    d ees f d ees f ees d c bes a g | f4
  r16 ees' d c bes8 a16 g f ees d c bes8 c16 d ees f g a | bes g a bes c d e fis g4 r16 ees d c bes a g f ees d c bes |
    f' f, g a bes c d e f4 r16 d' c bes a bes a g fis \ficta ees d c | bes g a bes c d \ficta e fis g d e fis
    g a bes c fis,4~ fis16 c' bes a | bes g f ees d c bes a
  g8 a16 bes c d e fis g8 a16 bes c d e fis | g4 r16 ees d c bes8 a16 g f ees d c bes c d ees f g a bes |
    \clef treble f8 g16 a bes c d e f c d ees f g a bes a bes a g f ees d c |
    \clef bass bes8 a16 g f ees d c bes g a bes c d ees f \clef treble g8 a16 bes c d e fis |
    g a bes c d e fis g r f ees d c bes a g fis g fis e << { d4 | s } \\ { r16 c b a | b4 } >>
    \clef bass r16 c b a g c b a g f ees d c g' f ees d c b a g1\fermata
}

vP = \relative g { \prelude
  r2 | g4 f ees d c bes | a g fis e d d' | g f ees d c f | bes,1
  r2 | r4 g' f ees d c | bes a g f ees f | g f ees d c f | bes1
  r2 | g4 a bes c d ees | f g a bes c c, | g a bes c d d, | g1
  r2 | r4 a bes c d ees | f g a bes c a | bes a g f ees d |
    c bes c a d d, | g b c d ees f | g2 g,\fermata
}

RHmusic = { << \vA \\ \vB \\ \vBB >> }
LHmusic = { \vC }
PDmusic = { \vP }
\include "obscore.ly"
