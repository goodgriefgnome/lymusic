\version "2.12.0"

\include "obcommon.ly"
\paper {
  %annotate-spacing = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

\header {
  %dedication = ""
  title = "Erstanden ist der heilige Christ"
  %subtitle = ""
  opus = "BWV 628"
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
  \key d \major
  \prelude
  s2 s1.*15 s1 s8
  \bar "|."
}

vA = \relative d'' { \prelude \voiceOne
  d2 | d1 d2 | cis2~ cis4 d e2 | d cis b | a1\fermata
  a2 | b2. cis4 d2 | cis1 b2 | a1 g2 | fis1\fermata
  e2 | fis1 g2 | a1 g2 | fis1 e2 | d1\fermata
  d2 | e2. fis4 g2 | fis1 e2 | d b cis | d1 r8 
}

vB = \relative a { \prelude \voiceTwo
  r8 a b cis | d4 e fis g a b | cis b a2 r8 cis, d e | fis e fis gis a2. gis4 | r8 fis e d cis4 e~ e8 e d c |
  b4 d g2 fis4 a~ | a e a2. gis4~ | gis8 g fis e dis e dis cis b4 e~ | e2 dis r8 d cis b |
  cis4 d e8 ais, b cis d2 | cis4 b cis d e2~ | e4 a, d cis8 b cis2~ | cis8 cis b ais b fis g a b2~ |
  b8 gis a b cis4 d e2~ | e8 a, b cis d4 d2 cis8 b | a4 \tolh \voiceOne a2 d,4 g8 b a g | fis g fis e d2 r8
}

vC = \relative a, { \prelude
  r2 | r8 a b cis d cis d e fis e fis gis | a e fis gis a gis a b cis2~ | cis4 b r8 a b cis d cis d e cis d cis b a b a g fis2 |
  r8 a g fis e g fis e d e fis gis | a gis a b cis b cis dis eis fis eis dis | cis4 c b b, e8 fis g a | b ais b cis dis cis b a gis4 g |
  r8 fis e d cis e d cis b cis d e | fis e fis g a g a b cis a b cis | d\noBeam cis, d e fis e fis gis ais fis gis ais | b4 fis
  b,8 d e fis g a g fis | e4 fis8 gis a fis e d cis e d cis | d fis g a b cis b a g b a g |
    \voiceTwo fis d e fis g a g fis e g fis e | d b a g fis g fis e d\fermata
}

vP = \relative d { \prelude
  r2 | r r r4 d | a'2 r r4 a, | d2 r r4 e, | a1 r4 d | g2 r r4 d | a'2 r r4 cis, | fis2 r r4 e, | b'1 r4
  e | ais,2 r r4 b | fis2 r r4 a | d,2 r r4 fis' | b,1 r4 g | cis2 r r4 a | d2 r r4 cis | fis,2 r r4 a | d,1 r8
}

RHmusic = { << \vA \\ \vB >> }
LHmusic = { \vC }
PDmusic = { \vP }

\include "obscore.ly"
