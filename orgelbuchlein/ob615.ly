\version "2.12.0"

\include "obcommon.ly"
\paper {
  %annotate-spacing = ##t
  ragged-bottom = ##f
  system-count = #11
  ragged-last-bottom = ##f
}

\header {
  %dedication = ""
  title = "In dir ist Freude."
  %subtitle = ""
  opus = "BWV 615"
  composer = "Johann Sebastian Bach"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Organ"
  source = "Bach-Gesellschaft Orgelwerke"
  style = "Baroque"
  maintainer = "Li Jie Wong"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
}

prelude = { \time 3/2 }

globals = {
  \accstyle
  \key g \major
  \prelude
  s1.*2
  \repeat unfold 2 { s1.*10 }
  \alternative { { s1.*7 } { s1. } }
  s1.*9
  \repeat unfold 2 { s1.*10 }
  \alternative { { s1.*2 } { s1.*2 } }
  \bar "|."
}

vA = \relative d'' { \prelude \voiceOne
  R1. | d2 d c |
  \repeat unfold 2 {
    b r8 g d' g r a, d fis | g d a c b d g, b a d fis, a |
    d2 d c | b8 g' fis e d c b d c b a c | b d, e fis g a b c d e fis d | g4 r  r2 r2 |
    d2 d c | b2. a4 g2 | d' d c | b8 d, e fis g a b c d e fis d |
  } \alternative {
    { g e d c d b a g a g fis e | fis2. a4 g a | b2. e,4 a2~ |
      a8 c b a g fis e fis g4 fis | e2~ e8 fis g a b c d e | fis, c' b a b a g a fis a g fis | d'2 d c | }
    { g'8 e d c d2 c | }
  }
  b2. a4 g8 a b c | d2 r8 g fis e fis2 | r8 f e d e d c b c2 | r8 c b a b4. b8 a4. a8 | g2 r r |
  r8 a b c r c d e d c b a | b2. a4 g8 fis g4 | r d'8 c b a g a b4 a | g4. d8 g2~ g8 fis g a |
  \repeat unfold 2 {
    b2 c d | e4. d8 c2 r | e4. e8 f2~ f8 a g f | e4 d c2 r |
    r8 e d c b c b c c4.\prallprall b16 c | d1 d2 | r8 d c b a b a b b4.\prallprall a16 b | c1 c2 |
    c2 c b | a1 a2 |
  } \alternative {
    { b c a | g4. d8 g2~ g8 fis g a | }
    { b2 c a | g1.\fermata | }
  }
}

vB = \relative d' { \prelude \voiceTwo
  R1.*2 |
  \repeat unfold 2 {
    \tolh\voiceOne d2 d c | b8 g' fis e d c b d c b a c | \torh\voiceTwo g' d g a b2 a | s1.*3 |
    r4 << { a4 b2 a | g2. fis4 d2 | c' b }
          { fis4 g2 d | d2. c4 b2 | fis' g } >> a | s1. |
  } \alternative {
    { \tolh\voiceOne b,2 b \torh\voiceTwo cis | d2. c4 b c | d8 f e d c2~ c8 d b c | \tolh\voiceOne b1 r8 b r a~ |
      a c b a g fis e fis g a b c | \torh\voiceTwo s1. | g'4 r r2 r | }
    { r2 r8 b a g a2 | }
  }
  g1.~ | g8 fis g a b2 r8 c b a | g2 r r8 b a g | fis2 r8 fis g4~ g8 e fis4 | g2 r
  r8 d e f | e2 <d~ a'>1 | << { d2 } \new Voice { \nvkey \voiceFour \once \override Rest #'X-offset = #-1.1 g8\rest a g fis } >> g4 fis d d |
  r4 a' g r r8 d r c~ | c a b4~ b2 r |
  \repeat unfold 2 {
    r8 a' g f r g f e r f e d | r b' c g e2 r | r8 g c4~ c8 e d c b2 | r8 g r f e2 r | R1. |
    r8 b' a g fis g fis g gis4.\sprallprall fis16 gis | a1 a2 | 
    r8 a g fis e fis e fis fis4.\prallprall e16 fis | d8 g fis e d e d e e4.\sprallprall d16 e | fis1 <fis c>2 |
  } \alternative {
    { << { d e4 c d c~ } \new Voice { \nvkey \voiceThree g'1 fis2 } >> | c8 a b4~ b2 r |}
    { << { d e4 c d c } \new Voice { \nvkey \voiceThree g'1 fis2 } >> | <d b>1. }
  }
}

vC = \relative d' { \prelude
  d2 d c | b8 d a c b d g, b a d fis, a |
  \repeat unfold 2 {
    \voiceTwo g8 d g a b2 a | g4 r r2 r | \oneVoice b2 r8 g d' g r a, d fis | g d,, e fis g a b c d e fis d |
    g fis g a b c d e fis g a fis | b4 r r2 r |
    r8 e, d c b a g a fis a g fis | g g, a b c d e fis g a b g | a fis g a b c d e fis g e fis | g4 r r2 r |
  } \alternative {
    { \voiceTwo R1. | \oneVoice r8 b, a g a fis e d e c b a | gis2 a8 b' a g fis e dis e | \voiceTwo dis2 e2. dis4 | e2 r r | \oneVoice
      d'2 d c | b8 d a c b d g, b a d fis, a | }
    { r2 r r8 fis' e d | }
  }
  r e d c b a g fis e fis g a |
    << { \voiceOne b a b c d2 c | b2. a4 g b | a2 r8 a b c d2 | d r8 b c d b2 | c2. b4 a2 | g }
         \new Voice { \nvkey \voiceTwo r2 r8 b a g r a g fis | g2 c,4 d e c | d e8 fis g2 a | r8 g a b g4 fis g2 | a2. g4 fis e | d2 } >>
    \oneVoice r8 d' r c b a b4 |
    << { \voiceOne r4 d~ d8 c b a g4 fis | g1 r2 | } \new Voice { \nvkey \voiceTwo r4 fis g2 d~ | d~ d8 g, a b c d e fis | } >>
  \repeat unfold 2 {
    \oneVoice g4 g, a a' b b, << { \voiceTwo c2 } \new Voice { \nvkey \voiceOne c' } >> \oneVoice r8 b c g e c e g |
    c4. bes8 a g f e d f e d | c e g b c4 c, r2 | R1.*2 | r8 f' e d c d c d d4.\prallprall c16 d |
    e8 c b a g a g a a4.\prallprall g16 a | b4 fis2 g c4~ |
    << { \voiceOne c1 } \new Voice { \nvkey \voiceTwo r8 d, fis a b c a g } >> \oneVoice fis8 e d c |
  } \alternative { 
    { b g b d g fis e d c b a \tieDown d~ \tieNeutral | << { \voiceTwo d2~ d8 g, a b c d e fis } \new Voice { \nvkey \voiceOne g1 r2 | } >> }
    { \oneVoice b,8 g b d g fis e d c b a \tieUp d~ | <d g,>1.\fermata }
  }
}

vP = \relative d { \prelude
  r4 d g b,8 c d c d4 | g, r r2 r |
  \repeat unfold 2 {
    r4 d' g b,8 c d c d4 | g, r r2 r | r4 d' g b,8 c d c d4 | g, r r2 r | 
    d''2 d c | b8 d a c b d g, b a d fis, a | g4 d g b,8 c d c d4 | g, r r2 r |
    r4 d' g b,8 c d c d4 | g, r r2 r |
  } \alternative {
    { R1.*3 | r4 b e g,8 a b a b4 | e,2 r r | r4 d' g b,8 c d c d4 | g,4 r r2 r | }
    { R1. }
  }
  R1. | r4 d' g b,8 c d c d4 | g,4 r r2 r | r d' c | b2. a4 g2 | g fis1 | g2 
  r4 d' g b,8 c | d c d4 g b,8 c d c d4 | g,1 r2 |
  \repeat unfold 2 {
    R1. | r4 g' c e,8 f g f g4 | c, r r2 r | r4 g' c e,8 f g f g4 | c,2
    r4 g' fis e | d2 r4 d c b | a2 r4 a' g f | e2 r4 e d c | b8 e d e b c b c c4.\prallprall b16 c | d4 a d fis,8 g a g a4 |
  } \alternative {
    { d,1. | g1 r2 | }
    { d1. | g1.\fermata }
  }
}

RHmusic = { << \vA \\ \vB >> }
LHmusic = { \vC }
PDmusic = { \vP }

\include "obscore.ly"
