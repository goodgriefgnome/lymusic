\version "2.12.0"

\include "obcommon.ly"
\paper {
  %annotate-spacing = ##t
  ragged-bottom = ##f
  system-count = #5
  ragged-last-bottom = ##t
  between-system-padding = 1.5\cm
}

\header {
  %dedication = ""
  title = "Ich rufʼ zu dir, Herr Jesu Christ."
  subtitle = "a 2 Clav. e Pedale."
  opus = "BWV 639"
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
  \key c \minor
  \prelude
  s4
  \repeat volta 2 { s1 * 3 }
  \alternative { { s1 } { s1 s4 } }
  s4*3 | s1*8 | s4*3
  \bar "|."
}

vA = \relative c'' { \prelude \oneVoice
  c4 |
  \repeat volta 2 {
    aes4 bes aes8. g16 f8. g16 | aes16 bes aes bes bes8.\sprallprall aes32 bes c4\fermata
    c8. des16 | ees4 \appoggiatura des16 c8. bes16 aes4 bes8 c |
  } \alternative {
    { des4~ des16 ees32 f des16\prall c c4\sfermata c | }
    { des4~ des16 ees32 f des16\prall c c4\sfermata ees | f }
  }
  ees8 des32\prall c des16 c8 bes aes bes | c4 bes aes\fermata
  c | c c bes aes | g2 f\sfermata | aes4 g f2 | ees2.\sfermata
  ees4 | aes aes bes bes | c2.\sfermata
  des4 | c bes aes f8. g16 | aes4 g f\fermata
}

vB = \relative a { \prelude \clef "treble"
  aes16( c f e) |
  \repeat volta 2 {
    f( c aes f) g( bes des c) f,( aes c bes) aes f aes c | f e f aes g f e f e( c g bes)
    aes( c f aes) | g( ees aes g) aes ees f ges f(des f aes) g( des c ges') |
  } \alternative {
    { f( bes, des f) bes( aes g aes) g c, e bes aes( c f e) | }
    { f( bes, des f) bes( aes g aes) g( bes, aes f') g,( des' aes c) | aes c bes des }
  }
  bes( des aes' g) aes( ees des g) c,( f aes g) | aes( ees aes, ges') f( aes, g des') c( aes c ees)
  g( c, bes g') | a,( c f g) a( f ees a) des, g aes g c, f g f | des( f g f) e(bes des c) aes( c f e) f( c aes f) |
  bes( f' g f) bes,( ees f ees) c ees f ees d g, b d | g, c ees des g,( bes des c) \clef "bass" ees, aes c bes
  des bes ees, des' | f, aes des c f, aes c bes f aes bes aes g bes des c | \clef "treble" aes c ees aes ees bes' c bes a ees ges a,
  bes g' aes, f' | \clef "bass" g, e' f ees f, des' ees des ees, c' des c \clef "treble" bes f' g f | d f g f e des bes g a c f8
}

vP = \relative f, { \prelude
  f8 f |
  \beamquarter
  \repeat volta 2 {
    f' f f e f f f ees | des des des des
    c c f f | c' c c c c c bes a |
  } \alternative {
    { bes aes g f e c f, f | }
    { bes' aes g f e f c c | des des }
  }
  ees ees aes ees f des | ees c des ees aes, aes
  e e | f f f' f f e f des | bes g c c
  \revertbeamquarter
  des des des des | d d ees ees a, a b b | c c bes bes aes aes g g | f f ees ees d d ees ees | aes aes ges ges f f bes bes |
  \beamquarter
  bes aes aes g g f des' des | b b c c f,4
}

RHmusic = { \vA }
LHmusic = { \vB }
PDmusic = { \vP }

\include "obscore.ly"
