\version "2.12.0"

\include "obcommon.ly"
\paper {
  %annotate-spacing = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

\header {
  %dedication = ""
  title = \markup { "Herr Christ, der einʼge Gottes-Sohn"  { \normalsize "oder" } "Herr Gott, nun sei gepreiset." }
  %subtitle = ""
  opus = "BWV 601"
  composer = "Johann Sebastian Bach"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Organ"
  source = "Bach-Gesellschaft Orgelwerke"
  style = "Baroque"
  maintainer = "Li Jie Wong"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
}

prelude = { \time 4/4 \partial 4 \beamquarter }

globals = {
  \accstyle
  \key a \major
  \prelude
  s4
  \repeat volta 2 {
    s1*3
  } \alternative {
    { s1 }
    { s1 }
  }
  \repeat volta 2 {
    s1*5
  } \alternative {
    { s1 }
    { s1 }
  }
  \bar "|."
}

vA = \relative a' { \prelude \voiceOne
  a4 | 
  \repeat volta 2 {
    a8. b16 cis4 b a | gis gis fis\fermata 
    cis' | d8. cis16 b4 cis b |
  } \alternative {
    { a2~ a4 a | }
    { a2~ a4 a8. b16 | }
  }
  \repeat volta 2 {
    cis4 cis d d | e2 b4\fermata
    e4 | cis cis b a | gis2 fis4\fermata
    cis'4 | d8. cis16 b4 cis b |
  } \alternative {
    { a2~ a4 a8. b16 | }
    { a1 | }
  }
}

vB = \relative a { \prelude \voiceTwo
  r16 a cis a |
  \repeat volta 2 {
    d4 e8. fis16 gis fis gis8~ gis16 gis fis8~ | fis16 fis eis fis eis8. eis16 fis eis fis gis
    a4 ~ | a16 a b a gis fis e d cis8 e fis16 d e b |
  } \alternative {
    { cis8 d16 b cis e fis gis a4 r16 a, cis a | }
    { cis8 d16 b cis e fis gis a4 r | }
  }
  \repeat volta 2 {
    r16 e gis e a4~ a16 fis a fis b4~ | b16 gis b gis cis8 a~ a16 gis a fis
    gis8 b~ | b16 gis e gis a fis dis fis~ fis eis cis eis fis8 fis~ | fis8. fis16 eis dis cis b a cis fis gis
    a4~ | a16 a b a gis fis e8~ e8. e16 fis d e b |
  } \alternative {
    { cis8 d16 b cis e fis gis a fis e d cis4 | }
    { cis8 d16 b cis e fis gis a fis e d cis4 | }
  }
}

vC = \relative d { \prelude
  r4 |
  \repeat volta 2 {
    r16 d fis d a'4 r16 b e d cis8. cis16 | d gis, b gis cis b cis gis a gis a eis 
    fis cis' fis e | d cis b8~ b b~ b a~ a gis |
  } \alternative {
    { a16 e fis d e cis d b cis a cis e a, r r8 | }
    { a'16 e fis d e cis d b cis a cis e a e cis e | }
  }
  \repeat volta 2 {
    a,16 cis e cis fis a cis a b d, fis d gis b d b | cis e, gis e a cis e cis fis e fis dis
    b8 e~ | e16 d cis b a4~ a8 gis a16 cis fis e | d cis b a gis fis eis8 fis16 cis a cis
    fis,\noBeam cis'' fis e | d cis b cis d8. d16 cis b a8~ a gis |
  } \alternative {
    { a16 e fis d e cis d b cis a cis e a e cis e }
    { a16 e fis d e cis d b cis a cis e a4 }
  }
}

vP = \relative a, { \prelude
  r4 |
  \repeat volta 2 {
    r4 r16 a cis a e'8 e, r16 fis' a fis | b8 b, r16 cis eis cis fis8 fis,
    r16 fis' a fis | b8 b, r16 e gis e a a, cis a d b e e, |
  } \alternative {
    { a2~ a4 r | }
    { a2~ a4 r | }
  }
  \repeat volta 2 {
    r4 r16 fis' a fis b8 b, r16 gis' b gis | cis8 cis, r16 a cis a dis8 dis,
    r16 e' gis e | a8 a, r16 dis fis dis gis cis, eis cis fis fis a fis | b8 b, r16 cis eis cis fis8 fis,
    r16 fis' a fis | b8 b, r16 e gis e a a, cis a d b e e, |
  } \alternative {
    { a2~ a4 r | }
    { a1 | }
  }
}

RHmusic = { << \vA \\ \vB >> }
LHmusic = { \vC }
PDmusic = { \vP }
\include "obscore.ly"
