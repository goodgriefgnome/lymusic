\version "2.12.0"

\include "obcommon.ly"
\paper {
  %annotate-spacing = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

\header {
  %dedication = ""
  title = "Wir Christenleutʼ."
  %subtitle = ""
  opus = "BWV 612"
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
  \key f \major
  \prelude
  s1*16
  \bar "|."
}

vA = \relative g' { \prelude \voiceOne
  g2 bes4 a | g2\fermata g | bes4 a g\fermata r |
  d'2 c4 bes | a2\fermata a | bes4 bes c c | d d c bes | a2 g\fermata |
  d' c4 bes | a\fermata d c bes | a2\fermata
  a | bes4 bes c c | d d c bes | a1 | g~ | g\fermata |
}

vB = \relative g' { \prelude \voiceTwo r2 \scaleDurations #'(2 . 3) {
  r8 g16 f ees d ees8 f16 ees d c | bes8 d16 c bes a bes8 c16 bes a g
  c8 b16 c d8~ d c16 d ees8 | d8 g16 f ees d ees8 f16 ees d c bes8\noBeam bes'16 a g f g8 a16 g f ees |
  d8. c'16 bes a bes8 f bes~ bes a16 g f ees f8 g16 f ees d | cis8 cis16 d e8~ e d16 e f8
  e8 g16 f e d e8 f16 e d cis | d8 fis16 g a8 d,8 ees16 d c bes g'8 bes16 a g f g8 a16 g f ees | d8 f a~ a g4~
    g8 a16 g f ees f8 g16 f ees d | ees8 g16 f ees d ees8 f16 ees d c b8 b16 c d8~ d g, c~ |
  c \tolh\voiceOne d16 c bes a bes8 c16 bes a g a8 \torh\voiceTwo a'16 g a8~ a g16 fis g8~ | g fis16 e fis8
  g16 a bes a g f ees8 f16 ees d c d8 ees16 d c bes | c16 bes a bes c d
  ees f ees d c bes c ees g f ees d ees8 f16 ees d c | bes8 r r r ees16 d \tolh\voiceOne c bes a8 \torh\voiceTwo r r r f'16 ees \tolh\voiceOne d c |
    bes8 \torh\voiceTwo r r r g'16 f ees d ees4 d8 g16 f ees d c bes | e4.~ e16 g fis e d cis d8 g16 f ees d ees8 f16 ees d c |
    b8 d16 c b a b8 c16 b a g c8 ees16 d c b c8 g c | } b1 |
}

vC = \relative g { \prelude \scaleDurations #'(2 . 3) {
  r8 g16 f ees d ees8 f16 ees d c g'4.~ g4 fis8 | g r r r4.
  r8 g16 f ees d ees8 f16 ees d c | g'4.~ g4 fis8 g4 bes8~ bes4 a8 |
  r bes16 a g f g8 a16 g f ees f8 a4~ a8 g4~ | g8 a16 g f e f8 g16 f e d 
  cis8 d16 e f8 g e a~ | a bes16 a g fis g8 bes4~ bes4.~ bes4 a8 | bes8 d16 c bes a bes8 c16 bes a g a4.~ a4 g8 |
    g4.~ g4 fis8 g8 g16 f ees d ees8 f16 ees d c |
  \voiceTwo g'2.~ g8 f16 ees d c \oneVoice d8 ees16 d c bes | c8 d16 c bes a
  bes8 g bes'~ bes a16 g a8~ a g16 fis g8~ | g4.~ g8 g16 fis g8~ g4.~ g8 a16 g fis8 |
  g\noBeam bes16 a g fis \voiceTwo g4.~ g8 c16 bes a g a4.~ | a8 d16 c bes a \oneVoice bes4.~ bes8 bes16 a g fis g4.~ |
    g8 bes16 a g fis g4.~ g~ g4 fis8 | g b fis g d f ees g16 f ees d ees8 f16 ees d c | } d1\fermata |
}

vP = \relative ees { \prelude r2 \scaleDurations #'(2 . 3) {
  r8 ees bes c a d | g, bes fis g d f ees ees' b c c, r | r ees' bes c a d g, g' d ees c f |
  bes,4. r r8 f' c d bes ees | a,2. r2 s4 |
  r8 d a bes g ees'~ ees g d ees c f | bes, bes' f g e a a, f' c d bes ees | c ees bes c a d g,2. |
  R1.*2 | r2 s4 r8 ees' bes c a d | g, d' a bes g ees' a, ees' bes d a f' | bes, f' c d bes g'
    c, g' d ees c g' | cis, g' d e cis g' d ees bes c a d | g,1.~ } g1\fermata |
}

RHmusic = { << \vA \\ \vB >> }
LHmusic = { \vC }
PDmusic = { \vP }

\include "obscore.ly"
