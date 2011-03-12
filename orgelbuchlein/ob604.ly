\version "2.12.0"

\include "obcommon.ly"
\paper {
  %annotate-spacing = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

\header {
  %dedication = ""
  title = "Gelobet seist du, Jesu Christ."
  subtitle = "a 2 Clav. e Pedale."
  opus = "BWV 604"
  composer = "Johann Sebastian Bach"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Organ"
  source = "Bach-Gesellschaft Orgelwerke"
  style = "Baroque"
  maintainer = "Li Jie Wong"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
}

prelude = { \time 4/4 \partial 2 }

globals = {
  \accstyle
  \key c \major
  \prelude
  s2 s1*10 s2
  \bar "|."
}

vA = \relative g' { \prelude \oneVoice
  g2 | g4~ g16 a f g a4 g8. a16 | b8 c d4 c4.\sfermata c16 d |
  b8.\prall c16 d4 e d8. c16 | b4 a g\sfermata
  g | c b8. c16 d4 a | g8 fis e4 d\sfermata
  d | a' a a b | c8 b a4 g8. a16 b4 | a2\fermata
  g4 g | g g g2~ | g\fermata
}

vB = \relative b { \prelude \voiceOne
  b8. c16 d4 | e~ e16 e d8 c8. d16 r e fis8 | g8. a16 r a b8 r16 g8. r16 g8. |
  g4~ g8. f16 e8. g16~ g g fis8 | g4~ g16 g fis8 r16 d8 f16
  e4~ | e16 e fis8 g4~ g16 fis g8~ g fis | d4~ d16 d cis8 d16 a g8
  fis8. g16 | a8. b16 cis8 e r16 d c8 b d | e4~ e8 d16 c~ c b c8 d4~ | d16 d8.~ d4
  d8. d16 c8. b16 | c2~ c8 c~ c16 b a8 | b2\fermata
}

vC = \relative g { \prelude \voiceTwo
  r16 g a8 b4 | b c8. bes16 r a b8 c4 | r16 d e8 f8. f16~ f8 e16 d e4 |
  d4~ d16 c b8~ b16 g c e a,4 | g8 b e[ d16 c]~ c8 b
  c g | a8. dis16 e g, a8 b8. c16 d4 | d8. c16 b8 a16 g fis8. e16
  r d e8 | r16 fis g8 r16 a8 g16 fis8. fis16 g4~ | g~ g16 g fis8 g8. fis16 g4~ | g8 fis16 e fis4
  r16 g f8 r16 e d8 | e2~ e16 e8 e16 d8. c16 | d2
}

vP = \relative g { \prelude \oneVoice
  r4 r16 g g, f' | e e e, d' c4 f,8 f' e c | g' fis g g, c2 |
  r16 g g' a, b8 g c a d d, | r16 e e' b c a d8 g,4
  r16 c c, b' | a8 a' e4 d r16 d d, c' | b b' b, a' g8 a d,4
  d, | d' a8 cis d4 r16 g g, f' | e e e, d' c8 d e4 r16 b g' c, | d4
  r16 d d, c' b4 c8 g | r16 c, c' d, e e' e, fis g2~ | g\fermata 
}

RHmusic = { \vA }
LHmusic = { <<
  { \clef treble s2 s1*5 \clef bass }
  { << \vB \\ \vC >> }
>> }

PDmusic = { \vP }
\include "obscore.ly"
