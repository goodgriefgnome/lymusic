\version "2.12.0"

\include "obcommon.ly"
\paper {
  %annotate-spacing = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

\header {
  %dedication = ""
  title = "Das alte Jahr vergangen ist."
  subtitle = "a 2 Clav. e Pedale."
  opus = "BWV 614"
  composer = "Johann Sebastian Bach"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Organ"
  source = "Bach-Gesellschaft Orgelwerke"
  style = "Baroque"
  maintainer = "Li Jie Wong"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
}

prelude = { \time 4/4 \partial 4 \revertbeamthirtytwo }

globals = {
  \accstyle
  \key a \minor
  \prelude
  s4 s1*11 s2.
  \bar "|."
}

vA = \relative a' { \prelude
  a4 | a g16 f e f e4\trill a8.\mordent bes16 | \appoggiatura a16 g4~ g32 bes a g f16 g32 e f8\fermata~
  f32 e d e f e f g f a g bes64 a | a4~ a16 g f32 e f16 e4\trill a8. bes16 | g4~ g32 bes a g f16 g32 e f4\fermata
  a | bes8 b c cis d8. e16 a,8 c16 b | c8 d16( f32 e) c8(\prall b16)\prall a a4\fermata
  b8. c32 d | c4 b16\prall a bes8 a4~ a16 c bes a | g8. f16 e32 bes' a g f g e16 f4\fermata
  g8 f16( a32 g) | g4\mordent a~ a16 a g f e bes' a g | fis e d e f4\upmordent e\fermata
  b'8. c32 d | c4 b16\prall a b8 a4 e8 fis16 a32 gis | a16( gis) c(b) e dis fis a, a8([ gis)]\trill
}

vB = \relative a { \prelude \voiceOne
  r4 | r8 a bes b c cis d4 | cis8 d16 e32 f e8 a, a4 r |
  r8 a bes b c cis d cis | d4 e~ e8d16 cis d4~ | d8 e16 f e8 a gis g fis f | e f e d cis c b4 |
  a b8 cis d16 e d e f4~ | f16 f e d c bes a8~ a cis d4~ | d16 d c bes a e' d c b c d8 c16 d e8 | d c bes b c cis d dis |
  e16 c f8~ f e~ e d e4 | dis8 e16( dis) g fis a dis, e4\fermata
}

vC = \relative a { \prelude \voiceTwo
  r4 | r2 r4 r8 a | bes b c cis d4 r | r2 r8 a16 g fis8 f | e d a'4~ a8 d,16 e
  f8 fis | g gis a16 g' f e d c b bes a8 d | c16 b a8~ a gis a a gis g~ |
  g fis f e a4. a8 | bes b c cis d4 r8 d, | ees e f fis g4. e8 | a4 d, a' r |
  r8 a gis g fis f g a | b2 b4\fermata
}

vP = \relative a { \prelude
  r4 | r2 r8 a16[ g fis8 f] | \beamquarter e d a' a, d d, r4 \revertbeamquarter |
  r2 r4 r8 a' | bes b c cis d d, r4 | r r8 a' b cis d gis, | \beamquarter a d e e, a4 r \revertbeamquarter |
  r8 a gis g fis f e d | g e a4 d,8\noBeam a' bes b | c c, r4
  r8 b' c cis | d fis, g gis a4 r | r2 r8 d cis c b2 e,4\fermata
}

RHmusic = { \vA }
LHmusic = { <<
  { \clef "bass" s4 | s1*11 | \clef "treble" }
  << \vB \\ \vC >>
>> }
PDmusic = { \vP }

\include "obscore.ly"
