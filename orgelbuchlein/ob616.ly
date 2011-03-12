\version "2.12.0"

\include "obcommon.ly"
\paper {
  %annotate-spacing = ##t
  ragged-bottom = ##f
  system-count = #6
  ragged-last-bottom = ##f
}

\header {
  %dedication = ""
  title = "Mit Friedʼ und Freudʼ ich fahrʼ dahin"
  %subtitle = ""
  opus = "BWV 616"
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
  \key a \minor
  \prelude
  s1*15
  \bar "|."
}

vA = \relative d' { \prelude \voiceOne
  d2 a'4 a | g d' c b | a2\fermata
  c | a16 b32 c b16 c32 d c4 b8 a b4 | a2\fermata
  b | c4 b c8. bes16 a4 | g f g8. f16 e4 | d2\fermata
  a'4. g8 | f8 e d4 c2\fermata |
  a'4~ g16 bes32 a g16 f32 e f4 c'16 d32 c bes16 a32 g | a4~ a16 bes32 c d16 e32 f g,4 g | a2\fermata
  g | f4 d8.\prallprall c32 d c4 f | e8 d e4 d2~ | d~ d4~ d16 d32 cis d8\fermata |
}

vB = \relative d' { \prelude \voiceTwo
  d2~ d16 e32 f e16 f32 g f4~ | f16 e32 d e16 d32 c d8 e~ e16 fis32 gis a16 b32 c f,8 b, | e d~ d16 c32 b c8
  r2 | r4 a'16 g32 f g16 f32 e f8 dis r16 b32 c d16 e32 f | cis8 d e16 f32 g fis16 g32 a
  g16 \fictasub fis!32 e \fictasub dis!16 e32 \fictasub fis! e8 d | c8 a'~ a16 g32 f g8~ g e~ e16 f32 g f16 g32 a | 
    d,8 e~ e16 d32 cis d8~ d16 cis32 d e16 f32 g cis,8 c~ | c16 b32 a bes16 a32 g a4
  e'8 d~ d16 e32 f e16 f32 g | b,16 c32 d c16 d32 e r c b a gis8 a16 b32 c b16 c32 d c16 d32 e d16 e32 f |
  e2~ e16 d32 c d16 c32 b c8 e | a16 g32 f g16 f32 e f4~ f8. e32 d c16 \tolh\voiceOne bes32 a g16 f32 e | f16 \torh\voiceTwo a b cis32 d cis16 d32 e d16 e32 f
  b,8. cis32 d e16 f32 g f16 g32 e | f4 r r a,16 b32 cis b16 cis32 d | cis8 d~ d16 cis32 b cis8
  d16 \tolh\voiceOne c32 bes c16 bes32 a bes16 a32 g a16 g32 fis | 
  << { g2~ g16 fis32 e fis8~ fis4 | }
     \new Voice { \nvkey \torh \voiceTwo r4 bes a8. a32 g a4 | } >>
}

vC = \relative d { \prelude
  d16 e32 f e16 f32 g f16 g32 a g16 a32 bes a4~ a16 b32 c d16 e32 f | b,8 c4 b a g8~ | g16 f32 e f16 e32 d e8~ e16 fis32 gis
  a16 b32 c b16 c32 d c16 d32 e d16 e32 f | e4~ e8~ e16 d32 c d16 c32 b c16 b32 a gis4 | r16 a32 g f16 e32 d cis16 d32 e dis16 e32 fis
  e16 \fictasup fis!32 g \fictasup fis!16 g32 a g4~ | g16 a32 b c16 d32 e f8~ f16 e32 d e16 d32 c bes16 a32 g a8 r | 
    d,16 e32 f g16 a32 bes a8~ a16 g32 f bes8 g a4~ | a16 d, g8~ g16 f32 e f16 e32 d
  cis16 d32 e f16 g32 a b16 cis32 d cis16 d32 e | gis,16 a32 b a16 b32 c r8 r32 f, e d e4 a,16 b32 c b16 c32 d |
  c16 d32 e d16 e32 f e8 a~ a4~ a8 c~ | c cis a4 d16 c32 bes a16 g32 f \voiceTwo e4~ | e16 d32 cis d16 e32 f \oneVoice e16 f32 g f16 g32 a
  d,16 e32 f g16 a32 bes cis,4\trill | d r a16 b32 c b16 c32 d cis16 d32 e d16 e32 f |
    g8 f e8. f32 g \voiceTwo a8 d,~ d16 c32 bes c16 bes32 a | bes16 g32 a b16 cis32 d cis16 a32 b cis16 d32 e d2\fermata |
}

vP = \relative d { \prelude
  r4 d16 f e g f8 cis d b | e4 fis16 a gis b a8 f d16 f e g | cis,8 d a4
  r a16 c b d | c8 gis a a' d, fis e e, | a2
  r4 g'16 e f d | e8 a d, g c,4 cis16 e d f | b,8[ cis d bes] g e' a16 fis g e | fis8 g d4
  r f16 d e cis | d b c a b8 e, a4 r |
  a16 c b d c8 cis d4 a'16 f g e | f d e cis d8 c bes g c c, | f2~
  f8[ f' e a,] | d16 f e g f a g bes a4 a, | bes16 g a f g e a8 fis4 g | d1\fermata |
}

RHmusic = { << \vA \\ \vB >> }
LHmusic = { \vC }
PDmusic = { \vP }

\include "obscore.ly"
