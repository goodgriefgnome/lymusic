\version "2.12.0"

\include "obcommon.ly"
\paper {
  %annotate-spacing = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

\header {
  %dedication = ""
  title = "Lob sei dem allmächtigen Gott."
  %subtitle = ""
  opus = "BWV 602"
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
  \key f \major
  \prelude
  s4 | s1*8 s2.
  \bar "|."
}

vA = \relative f' { \prelude \beamquarter \voiceOne
  f4 | a b c c | d b c\fermata
  c | d bes c bes | a g a\fermata
  c | bes a bes g | a g f\fermata
  f | a bes c bes | a g a2\fermata~ | a2.
}

vB = \relative c' { \prelude \beamquarter \voiceTwo
  r4 | r16 c f g32 e d16 e d e c e a bes32 g f4~ | f16 g f g32 e d8 f~ f16 f e f32 d
  e16 f ees f | d f bes c32 a g16 a32 f e16 f32 d c8 a' d, g | r16 c, f g32 e d16 e32 d c16 d32 bes a8 c
  r16 c f g32 ees | d16 bes c ees32 d ees16 f ees f d c bes d32 c d16 e d e | cis b cis e32 d e4 f16 d c d32 bes
  a8 d | e16 f e f d e d e c8 f~ f e | f d~ d16 e32 d cis16 e32 d e4. e8 | f g \oneVoice a16 d cis e32 d e4\fermata
}

vC = \relative c' { \prelude \beamquarter \oneVoice
  r16 bes a bes32 g | f16 a d e32 c g'8 g,~ g16 g c d32 bes a4~ | a16 bes a bes32 g f16 g f g a8 g16 a32 f
  g8 a~ | a16 a g a32 f g4~ g8 f4 e8 | f4. e8 r16 c f a32 g
  a4~ | a16 g a c32 bes c16 d c d g, d g bes32 a bes16 c bes c | a g a cis32 b cis16 d b cis d bes a bes32 g
  f8 bes | e,8 a4 g f8 g4 | c,16 f g bes32 a bes4 a8 b cis4 | d8 e f16 g32 f e16 f32 d cis4\fermata
}

vP = \relative f, { \prelude \oneVoice
  r8 f | f'4~ f16 g f g e4~ e16 f e f | d4~ d16 e d e c4~
  c16 d c d | bes4~ bes16 c bes c a bes a bes g a g a | f8 a bes c f,4.
  d'8 | g4~ g16 a g a f4~ f16 g f g | e4~ e16 f e f d4~
  d16 e d e | c d c d bes c bes c a bes a bes g a g a | f8 f' e d cis16 d b cis a bes g a | f g e f d8 d' a4\fermata
}

RHmusic = { << \vA \\ \vB >> }
LHmusic = { \vC }
PDmusic = { \vP }
\include "obscore.ly"
