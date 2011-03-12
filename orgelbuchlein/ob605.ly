\version "2.12.0"

\include "obcommon.ly"
\paper {
  %annotate-spacing = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

\header {
  %dedication = ""
  title = "Der Tag, der ist so freudenreich."
  subtitle = "a 2 Clav. e Pedale."
  opus = "BWV 605"
  composer = "Johann Sebastian Bach"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Organ"
  source = "Bach-Gesellschaft Orgelwerke"
  style = "Baroque"
  maintainer = "Li Jie Wong"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
}

prelude = { \time 4/4 \revertbeamthirtytwo}

globals = {
  \accstyle
  \key g \major
  \prelude
  \repeat volta 2 { s1 * 5 }
  s1*14
  \bar "|."
}

vA = \relative g' { \prelude \oneVoice
  \repeat volta 2 {
    g2 g4 g | a b c8 b a4 g2\fermata
    b a4 g8. f16 e4 fis | g a g2 |
  }
  g2 d'4 d | e d8. c16 b4 cis | d2\fermata
  d | d4 d e d8 c | b4 a g2\fermata |
  g e4 fis | g e d e | d2\fermata
  g4 g |a b c a | g2\fermata
  a4 g8. f16 | e4 fis g e | d2\fermata
  f | e4 c8. d16 e4 fis | g a g2\fermata
}

vB = \relative c' { \prelude \voiceOne
  \repeat volta 2 {
    r16 d32 c d8~ d16 c d8 r16 e32 d e8 r16 e d8 | r16 fis32 e fis8 r16 fis g8 r16 g32 fis g8~ g16 g fis8 | r16 d32 c d8~ d16 d c8
    r16 c32 b c8 r16 d e8 | r16 d32 c d8 r16 c b8 r16 c32 b c8 r16 b c8 | r16 b32 a b8 e d16 c b32 c d16 c32 d e16 d g32 fis g16 d |
  }
  r8 d r16 b d8 r16 g32 fis g8~ g16 d g8 | r16 g32 fis g8 r16 g fis8 r16 d32 cis d8 r16 a g8 | d16 fis32 e fis16 d a'8 d16 e
  r16 fis32 e fis8 r16 g a8 | r16 b32 a b8 r16 a b8 r16 a32 g a8 r16 g a8 | r16 g32 fis g8~ g16 g fis8 r16 d32 c d8 r16 b d8 |
  r16 d32 c d8 r16 a b8 r16 a32 g a8 r16 a b8 | r16 b32 a b8 r16 b cis8 r16 a32 g a8 b a16 g | fis a32 g a16 fis r fis a8
  r16 d32 c d8~ d16 g, c8 | r16 c32 b c8 r16 b e8 r16 e32 d e8~ e16 e d c | r16 b32 a b8 r16 d cis8
  r16 d32 cis d8 r16 c b8 | r16 c32 b c8~ c16 b c8 r16 d32 cis d8~ d16 d cis8 | r16 a32 g a8 r16 b cis8
  r16 d32 cis d8 r16 b d8 | r16 c32 b c8 r16 g c8 r16 c32 b c8~ c16 b c8 | r16 b32 a b8 e d16 c b c32 b c8~ c16 c b8\fermata
}

vC = \relative c' { \prelude \voiceTwo
  \repeat volta 2 {
    b8. a16 b8. a16 b8. b16 c8. g16 | c8. c16 b8. b16 a8. b16 c8. c16 | b8. f16 e8. fis16
    g8. fis16 g8. g16 | fis8. fis16 g4 g8. g16 a8. a16 | g8. g16~ g g fis8 g a b4 | 
  }
  b16 d32 c d16 b g8. a16 b8. d16 b8. b16 | c8. b16 a4~ a8. g16 fis8. e16 | d4 r16 fis8 g16
  a8. a16 b8. c16 | d8. d16 g8. f16 e8. e16 fis8. e16 | d8. d16 e8 d16 c b8. a16 g8. a16 |
  b8. a16 g8. fis16 g8. g16 fis8. fis16 | e8. b16 e8. g16 fis8. d16~ d d cis8 | d4 d8. e16
  f8. f16 e8. d16 | e8. fis16 g8. g16 a8. g16 fis4 | g8. fis16 e8. e16
  f8. e16 d8 g | g8. g16 a8. a16 b8. b16 a8. g16 | fis8. f16 g8. g16
  a8. a16 g8. b16 | g8. g16 e8. f16 g8. g16 a8. a16 | d,8. g16~ g g fis8 f8. e16 d4\fermata
}

vP = \relative g, { \prelude
  \repeat volta 2 {
    r8 g g' fis e d c b | a4 e'8 d c4 d | g,2
    g8 a b c | d b e d c b a d | g, e' c d g,2 |
  }
  g2 g'8 f e d | c4 d g, a | d,2
  d'8 c b a | g f e d c4 d | g8 b c d g,2 |
  g'8 fis e d cis4 dis | e8 e, g a b fis g a | d,2
  b'8 g c b | a4 e'8 d c a d d, | g2
  d'8 c b g | c b a d g, e a4 | d,2~
  d8 d' b g | c d e d c b a d | b g c, d g2\fermata
}

RHmusic = { \vA }
LHmusic = { <<
  { \clef bass s1*7 s2 \clef treble s1*2 \clef bass }
  { << \vB \\ \vC >> }
>> }
PDmusic = { \vP }
\include "obscore.ly"
