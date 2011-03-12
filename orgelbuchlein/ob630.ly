\version "2.12.0"

\include "obcommon.ly"
\paper {
  %annotate-spacing = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

\header {
  %dedication = ""
  title = "Heut' triumphiret Gottes Sohn"
  %subtitle = ""
  opus = "BWV 630"
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
  \key f \major
  \prelude
  s2 s1.*26 s1
  \bar "|."
}

vA = \relative bes' { \prelude \voiceOne
  bes2 | bes1 c2 | d1 c2 | bes1 a2 | bes1\fermata bes2 | bes1 bes2 | c1 a2 | g fis1 | g\fermata
  a2 | bes1 c2 | d2. ees4 f2 | ees d c | d1\fermata d2 | d1 c2 | d1 c2 | d2. c4 bes2 | a1\fermata
  a2 | a1 bes2 | c1 a2 | g fis1 | g\fermata g2 | a1 bes2 | c1 d2 | d cis1 | d1.\fermata |
  d2 d d | d1.~ | d1\fermata
}

vB = \relative d' { \prelude \voiceTwo
  r8 d e fis | g2~ g8 f ees d c g' f ees | d2 r8 c d ees f g f ees | d4 ees8 f g2~ g8 g f ees | d1
  r8 d ees f | g aes g f ees f d ees f4 ees8 d | c4. d8 ees d c4~ c8 ees d c | bes4 ees~ ees8 ees d c d2~ | d8 d e fis g2~
  g8 fis g a | d,4 e8 fis g f ees d c g' f ees | d f g a bes2~ bes8 c bes aes | g f g a bes2. a4~ | a8 a g fis g2
  r8 ees d c~ | c c bes a bes c d bes g'4 f8 ees | d2 r8 c' bes a g a fis g | a g fis e d2~ d8 e d cis | d g fis e fis2~
  fis8 e fis g | a g fis e fis2~ fis4 g~ | g fis8 g a bes a g fis4.\prall fis8 | g4 ees~ ees8 ees d c d2 |
  r8 d e fis g4 d~ d8 d c bes | a c d ees f4 c d8 aes' g f | ees d c4 f8 g f ees d4 f | bes2~ bes8 bes a g a4. g8 | fis g fis e d bes' a g fis4. fis8 |
  g4. a8 g4. fis8 g a bes4~ | bes4. a8 bes4. a8 bes2 | a1
}

vC = \relative c' { \prelude
  r2 | r8 c bes a g4 bes2 a4 | bes8 f g a bes2 a | r8 bes c d ees4 d c2 | r8 c bes a bes f g a
  bes4 c8 d | ees c bes aes g aes bes4~ bes8 aes g4~ | g8 g a bes c bes a g fis2 | g4 c a2~ a8 c bes a | bes2
  r8 bes a g d' d, e fis | g fis g a bes2. a4 | bes2 r8 a bes c d ees d c | bes a bes c d4 g c,8 g' f ees | d2~
  d8 bes a g fis2 | g1~ g8 bes a4~ | a8 a g fis g2 r8 c d ees | a,1~ a8 g fis e | fis e d cis d a' b cis
  d cis d e | fis e d cis d ees d c bes a g bes | a g a bes c d ees4~ ees8 ees d c | bes2 a~ a8 c bes a | bes2
  r8 g a bes e,2 | f r8 bes a g f4 g~ | g4. bes8 a bes a g f4 d' | g1~ g8 g fis e | d bes a g fis g fis e d4.
  \clef "treble" c'8 | d4. c8 bes4. c8 d4 \voiceOne g~ | 
  << { g8 fis g4~ g8 fis g4~ g8 fis g4~ | g8 g fis e fis2\fermata }
     \new Voice { \voiceTwo \nvkey r2 r4 r8 cis d a bes g | d'1\fermata } >>
}

vP = \relative g { \prelude
  r2 | r r4 g ees f | bes,2 r4 bes f' d | g2~ g8 d ees c f4 f, | bes1 r2 |
  r r4 g' d ees | a,2 r4 a d bes | ees8 bes c a d2 d, | g1 r2 |
  r2 r4 g' ees f | bes,2 r4 g d' bes | g'2~ g8 d ees c f4 f, |bes1 r2 |
  r r4 bes' ees, f | bes,2 r4 bes ees c | fis2~ fis8 e fis d g4 g, | d'1 r2 |
  r r4 a' d, ees | a,2 r4 a d bes | ees8 bes c a d2 d, | g1 r2 |
  r r4 f' d ees | a,2 r4 f' bes8 a bes a | bes f g e a2 a, | d
  r4 d d'8 c d a | bes a bes fis g c, d a bes fis g cis | d1.~ | d2 d,\fermata
}

RHmusic = { << \vA \\ \vB >> }
LHmusic = { \vC }
PDmusic = { \vP }

\include "obscore.ly"
