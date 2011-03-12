\version "2.12.0"

\include "obcommon.ly"
\paper {
  %annotate-spacing = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

\header {
  %dedication = ""
  title = "Nun kommʼ der Heiden Heiland."
  %subtitle = ""
  opus = "BWV 599"
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
  \time 4/4
  \key a \minor 
  s1*10
  \bar "|."
}

vA = \relative a' { \prelude \voiceThree 
  a2 r16 a b fis g4 | c b8 a b2 | a\fermata
  a8. b16 c4 | d c d e | c2\fermata
  c4 d | e c d8 c b4 | a2\fermata
  a | r16 a b fis g4 c b8 a | b2
  \override NoteColumn #'force-hshift = #-1
  \once \override Tie #'control-points = #'((1.8 . 2.5) (5 . 4) (29 . 4) (34.3 . 0.5))
  a\fermata~ | a1
}

vB = \relative d' { \prelude \voiceTwo
  r16 d e8~ e dis~ dis4 r16 dis e8~ | e16 gis a dis, e4~ e16 e f8~ f16 d e b | c4 r16 d e b
  c8. d16 e4 | a16 d, g8~g f~ f16 a d,8 r16 g c bes~ | bes g a8~ a4~
  a~ a16 c b8~ | b16 b c gis a4~ a16 gis a8~ a16 fis gis8 | r16 d e8~ e4~
  e16 e f8~ f16 e f8 | r4 r16 dis e8~ e16 gis a dis, e8 a~ a16 gis a8~ a16 fis g8~ \voiceOne g16 f g8~ g16 e \tieDown f8~ |
  f16 e f8~ f16 g f8~ f16 d \tieUp e8~ e4\fermata
}

vBB = \relative d' { \prelude
  \voiceOne r8 r16 b c4~ c s | s1*3 | r8 r16 e f4~f s |
  s1*4 | r2 r4 r16 gis, a8\fermata
}

vC = \relative a { \prelude
  \voiceTwo r4 r16 gis a8~ a4 b8. b16 | \oneVoice a4 r16 b c fis, gis8 a~ a gis | r16 gis a dis, e b c gis
  a gis' a8~ a16 b c8~ | c b c16 g a8~ a16 c b8 c16 e g,8 | \voiceTwo r4 r16 bes c g
  a \oneVoice c f8~ f16 a d, f | e4~ e16 e f c b8 a e'8. d16 | \voiceOne c8. b16 c4~
  c16 cis d8~ d16 cis d8 | r4 r8 r16 b a4 r16 b c8 | d8. f16 b,8 e~ e16 \torh \voiceTwo d e8~ e16 cis d8~ |
  d16 cis d8~ d16 e d8~ d8. b16 cis4 }

vD = \relative a { \prelude
  s1*6 | \voiceTwo r4 r16 gis a8~
  a16 g f8~ f16 a d,8 | r2 r4 r8 r16 e | f4 g a2~ |
  a16 g a e f cis d gis, a2\fermata
}

vP = \relative a, { \prelude
  r4 r8 r16 a e'8. dis16 e4 | fis gis8 a e8. d16 e8 e, | a2
  r8 r16 a a'8. g16 | f8. g16 e8. f16 d8. g16 c,8. e16| f,2
  f'8. a16 d,8. g16 c,8. e16 f,8. a16 d,8. d'16 e8 e, | a4
  a'8. c16 f,8. a16 d,8. f16 | b,8. dis16 e,4 fis gis8 a |
  d,8 d' e8. g16 cis,8. e16 d8. f16 | \voiceTwo a,1\fermata
}

RHmusic = { << \vA \\ \vB >> }
LHmusic = { << \vBB \\ \vC \\ \vD >> }
PDmusic = { \vP }

\include "obscore.ly"
