\version "2.12.0"

\include "obcommon.ly"
\paper {
  %annotate-spacing = ##t
  ragged-bottom = ##f
  system-count = #8
  ragged-last-bottom = ##f
}

\header {
  %dedication = ""
  title = "Herr Gott, nun schleuss den Himmel auf."
  subtitle = "(a 2 Clav. e Pedale.)"
  opus = "BWV 617"
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
  \key a \minor
  \prelude
  s1*24
  \bar "|."
}

#(define ((time-sig num den) grob)
  (grob-interpret-markup grob
    (markup #:override '(baseline-skip . 0) #:number
      (#:line (
        #:vcenter (#:musicglyph "timesig.C44")
        (#:column (num den)))))))

vA = \relative c'' { \prelude \voiceOne
  r2 c | b4 c d e | f d e2\fermata |
  r4 e c b | a e' e( dis\trill) | e2 r |
  r c | b4 c d e | f d e2\fermata |
  r4 e c b | a e' e( dis\trill) | e1 |
  r2 c | d4 d b b\fermata |
  r b c d | d d r b | e c b c | a gis a2 |
  r e' | d4 d d c b2 c4 d8 e | f4 e e e | dis2\trill e~ | e4~ e8 dis e2\fermata |
}

vB = \relative e' { \prelude \voiceTwo
  r2 e | e4 e g g | a b c2 |
  r4 e, e e | a g fis2 | e r |
  r e | e4 e g g | a b c2 |
  r4 e, e e | a g fis2 e1 |
  r2 e | fis4 a g g |
  r g g fis | g b r d, | e e e e | fis e e r |
  r2 b'8 bes a g | f4 f e e | fis e e r | r e8 fis g4 fis | fis2
  << { e2~ | e4. a8 gis2 |} \new Voice { \beamquarter \nvkey \voiceThree b8\rest b~ b a | gis4. fis8 e2 |} >>
}

vC = \relative b' { \once \override Staff.TimeSignature #'stencil = #(time-sig "24" "16") \prelude \scaleDurations #'(2 . 3) {
  \clef "treble"
  r16 b a gis a e c f e d e c \clef "bass" a d c b c a e b' a gis a dis, |
  \clef "treble" gis a b c d e a, b c d e f b, c d e f g c, d e f g a |
  d, g f e f d b e d c d b \clef "bass" g d' c b c g e a g f g e |
  c d e f g a b c d e fis gis a, b c d e f g, a b c d e |
  f, g a b c d e f e d e c a d c b c a fis c' b a b fis |
  \clef "treble" gis a b c d e c d e fis gis a gis a b c d e f d b d gis, b |
  e, b' a gis a e c f e d e c \clef "bass" a d c b c a e b' a gis a dis, |
  \clef "treble" gis a b c d e a, b c d e f b, c d e f g c, d e f g a |
  d, g f e f d b e d c d b \clef "bass" g d' c b c g e a g f g e |
  c d e f g a b c d e fis gis a, b c d e f g, a b c d e |
  f, g a b c d e f e d e c a d c b c a fis c' b a b fis |
  gis e' d c d b e, d' c b c a e c' b a b gis e b' a gis a fis |
  dis a' gis fis gis d cis e a c, b gis' a,\noBeam \clef "treble" b'' a gis a e c f e d e c |
  \clef "bass" a d c b c a fis b a g a fis d a' g fis g d b e d c d b |
  g\noBeam \clef "treble" e''' d c d b g c b a b g e fis g a b c fis, g a b c d |
  b c b a b g d g f e f d b e d c d b g b d b f' d |
  b c d e fis gis a, b c d e f gis, a b c d e \clef "bass" a, b c gis a e |
  c fis a fis c' a d, gis b gis d' b \clef "treble" cis a' g f g e a, g' f e f d |
  a f' e d e cis a e' d cis d b gis d' cis b cis g fis a d f, e cis' |
  d e f g a b c, d e fis gis a b, c d e fis gis a, d c b c a |
  fis b a gis a fis gis a b c d e a, b' a gis a a, b a' g f g cis, |
  d gis b gis d' b c e, fis gis a b cis g e g cis, e ais, b cis d e fis |
  a, dis fis dis a' fis c' a fis a dis, fis \clef "bass" b, e d c d b e, d' c b c a |
  d, c' b a b d, cis b' a gis a c, b e gis e b' gis e' b gis b e,8\fermata |
} }

vP = \relative a { \once \override Staff.TimeSignature #'stencil = #(time-sig "12" "8") \prelude \scaleDurations #'(2 . 3) {
  a8 a, a'~ a a, a'~ a a, a'~ a a, a' | e gis e a a, a' g b g c c, c' | f, a f g g, g' c c, c'~ c c, c'~ |
  c c, c' gis b e, a a, a' e g e | f f, f' c e c fis fis, fis' b, dis b | e e, e'~ e e, e'~ e e, e' gis, gis' e |
  a a, a'~ a a, a'~ a a, a'~ a a, a' | e gis e a a, a' g b g c c, c' f, a f g g, g' c c, c'~ c c, c'~ |
  c c, c' gis b e, a a, a' e g e | f f, f' c e c fis fis, fis' b, dis b | e e, e'~ e e, e'~ e e, e'~ e e, e'~ |
  e e, e'~ e e, e' a a, a'~ a a, g' | fis a fis d' d, fis g g, g'~ g g, g'~ |
  g g, g' e g e a a, a' d, fis d | g g, g'~ g g, g'~ g g, g'~ g g, a' | gis b e, a a, a' e gis e a a, a' |
  dis, fis dis e e, e' a a, a'~ a a, a'~ | a a, a'~ a a, a'~ a a, a'~ a a, a' |
  b, d b a' a, a' gis b e, a a, a' | dis, fis dis e e, e' a a, a'~ a a, a'~ | a a, a'~ a a, a' ais ais, ais' fis ais fis |
  b b, b' a c fis, gis e gis c, e a, |} e'2 e,\fermata |
}

RHmusic = { << \vA \\ \vB >> }
LHmusic = { \vC }
PDmusic = { \vP }

\include "obscore.ly"
