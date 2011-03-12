\version "2.12.0"

\include "obcommon.ly"
\paper {
  %annotate-spacing = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

\header {
  %dedication = ""
  title = "Helft mir Gottes Güte preisen."
  %subtitle = ""
  opus = "BWV 613"
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
  \key b \minor
  \prelude
  s2 s1*15 s2.
  \bar "|."
}

vA = \relative b' { \prelude \voiceOne
  b2 | b4 cis d e | cis4. d8 e4\fermata fis8 e | d cis b4 cis cis | b2.\sfermata
  b4 | b cis d e | cis4. d8 e4\sfermata fis8 e | d cis b4 cis cis b2\sfermata
  fis' | e4 d cis b | cis2.\sfermata cis4 | d e fis fis e4. d8 cis4\sfermata
  cis | d e fis fis | e4. d8 cis4\sfermata fis8 e | d cis b4 cis cis | b2.\fermata
}

vB = \relative fis' { \prelude \voiceTwo
  s2 | r8 fis fis gis a gis16 fis e \tolh\voiceOne d cis b | a8 \torh\voiceTwo e' a4~ a16 cis e d
  cis b ais gis | fis b8 ais16 b fis8 eis16 fis gis a g fis e dis e | dis b cis dis e fis g8 fis16 g fis8~ fis r |
  r16 fis e fis g8 gis a g16 fis e \tolh\voiceOne d cis b | a8 \torh\voiceTwo e' a4~ a16 cis e d
  cis b ais gis | fis8 e~ e16 d e fis g8 e~ e16 g fis e | d4 r
  r8 fis fis gis | ais16 d cis b ais gis fis eis fis gis ais e d fis8 eis16 | fis8 r r4
  r16 e fis g fis e \tolh\voiceOne d cis | b8 \torh\voiceTwo fis' g gis a ais b4~ | b8 cis4 b8~ b16 b a g
  fis e \tolh\voiceOne d cis | b8 \torh\voiceTwo fis' g gis a ais b4~ | b8 cis4 b8~ b16 b a g
  fis8 ais | b r r16 d, e fis g fis e d cis g' fis e | dis e fis8~ fis16 b, e8~ e[ dis]\fermata 
}

vC = \relative b { \prelude
  r8 b b cis | d cis16 b a gis fis eis \voiceTwo fis8 b gis e | a gis16 fis \oneVoice e d cis b a8 r r4 |
  r8 fis' fis gis a16 b cis b a g fis g | fis8 r r r16 e'~ e8. e16 d cis b ais | b4~ b16 b cis b a fis b a \voiceTwo b8 r |
  r16 a gis fis \oneVoice e d cis b a8 r r4 | r16 b'8 ais16 b4~ b16 d cis b ais4 | r8 b b cis d e16 d cis b ais gis | fis8 r
  r4 r8 fis fis gis | ais16 b cis b ais gis fis eis fis8 r r4 |
  \voiceTwo r16 a g fis \oneVoice e d' cis b cis a cis8 d dis | e16 d cis b a gis fis e e'8 r \voiceTwo r4 |
  r16 a, g fis \oneVoice e d' cis b cis a cis8 d dis | e16 d cis b a gis fis e e'8 r
  r16 e d cis | b ais gis ais b4~ b ais8 a~ | a g16 fis g8. e16 fis4\fermata
}

vP = \relative a, { \prelude
  r2 | R1 | r8 a a b cis b ais fis | b cis d b fis'\noBeam
  fis, fis g | a a' g e b'\noBeam b, b cis | d dis e eis fis g gis a | a\noBeam
  a, a b cis b ais fis | b cis d b e cis fis fis, | b4 r r2 |
  r8 fis' fis gis ais fis b b, | fis'\noBeam fis, fis gis ais cis ais fis | b r
  r e~ e d16 cis b a gis fis | gis8 e fis gis a cis ais fis | b r
  r e~ e d16 cis b a gis fis | gis8 e fis gis a cis ais fis | b fis' g d e cis fis fis, | b2.\fermata 
}

RHmusic = { << \vA \\ \vB >> }
LHmusic = { \vC }
PDmusic = { \vP }

\include "obscore.ly"
