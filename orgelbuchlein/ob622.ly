\version "2.12.0"

\include "obcommon.ly"
\paper {
  %annotate-spacing = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

\header {
  %dedication = ""
  title = "O Mensch, bewein' dein' Sunde gross"
  %subtitle = ""
  opus = "BWV 622"
  composer = "Johann Sebastian Bach"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Organ"
  source = "Bach-Gesellschaft Orgelwerke"
  style = "Baroque"
  maintainer = "Li Jie Wong"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
}

prelude = { \time 4/4 \partial 4 \beamquarter \revertbeamthirtytwo }

globals = {
  \accstyle
  \key ees \major
  \prelude
  \tempo "Adagio assai"
  s4 s1*23
  \mark \markup { \bold "adagissimo" }
  s1
  \bar "|."
}

tt = #(define-music-function (parser location mm) (ly:music?) #{ \scaleDurations #'(2 . 3) $mm #})
fallend = #(define-music-function (parser location mm) (ly:music?) #{
  \once \override NoteHead #'stencil = #(lambda (grob) (grob-interpret-markup grob (markup #:raise 0.2 #:large #:musicglyph "scripts.lcomma")))
  \once \override Stem #'stencil = ##f
  \once \override Stem #'length = #0
  \grace $mm #})

vA = \relative ees' { \prelude
  ees4 | ees8.\mordent \tt {f32 ees f} f8.\trill ees32 f g16 aes g f32 ees ees8 g16 f | g8. \tt{a32 g a} a8.\trill g32 a bes4\fermata
  bes8 des16 c | aes4\trill g f16 g32 aes g16 f ees f32 d ees16. f32 | g16 aes32 f g16. a32 a8.\trill bes16 bes4\fermata
  c16 ees des c32\prall bes | bes8. \tt{aes32 g aes} aes8.\prallprall g32 aes \fallend aes^( g4) aes16 g32 f g16.\mordent aes32 |
    \fallend g^( f16.) g32 aes bes c bes \fallend aes^( g8)( f16)\trill ees32 f ees4\sfermata
  ees | ees r16 f\noBeam aes32 g16\prall aes32 g8.\prall f16 ees d ees g32 f | g f ees d ees f g a a8.\prall bes16 bes4\sfermata
  bes | aes16 c bes\prall aes g aes32 bes aes16\prall g f aes g aes32 f ees bes c d ees d ees f | g d ees f g f g a a8.\sprallprall g32 a bes4\fermata
  c16. d32 ees d ees f | bes,8.\mordent c16 bes8( aes16)\prall g32 aes g4 r16 g aes c32 bes | c16 d d ees aes,8 g16\prall f32 ees ees4\fermata
  ees'\mordent | ees16 d c ees32 d ees8. f16 d8.\prall c32 bes bes8. c32 des | c4~ c16 d32 c b c b c g4~\fermata
  g32 g a b c16 ees32 d | ees8. f32 g \fallend f^( ees8.)\prallprall d32 ees ees16 d c\prall bes bes4~ | bes16 g'32 a, bes16.\mordent ees32 d8( c16)\prall bes bes4\fermata
  g32 aes g aes aes16\prallprall g32 aes | bes8. c32 des c4 bes8.\mordent c32 aes g16 des' c bes | bes8~ bes32 aes g aes aes8.\prallprall g32 aes aes16 g8.\prall\fermata
  f4 | g a bes~ bes16 des c bes | aes g32 c bes16 aes g8.\prall f16 f4\fermata
  bes | c16 d d ees ees d d f f32 d bes d ees g f ees d4~\prall | d16 bes' a32( bes a bes) d,8\prall c16 bes bes4\fermata
  ees, | f g aes g8 ges | f16 fes d ees ees16. aes32 g16 f32 ees ees4\fermata
}

vB = \relative bes { \prelude \voiceOne \clef "alto"
  bes8 c16 des | c4~ c16 d b c d4 c | bes8 c16 d ees4~ ees8 d16 c des4 | c8 ees16 d ees4~ ees8 d ees4 | bes ees~ ees8 d16 e f4~ |
  f8 bes, ees f~ f ees16 d ees4~ | ees4. d8 ees16 bes c8 r16 bes c d |
  ees4~ ees8 d ees4 r | r16 bes c d ees g f ees d4
  r16 f ees des | c8 d ees16 g, aes bes c8 bes~ bes16 bes c d | ees4~ ees16 ees d c bes r r8 r4 |
  r16 f' ees des c bes c d ees4 r16 ees f g | aes aes aes bes r ees,8 d16 ees d ees f g f aes g |
  g4~ g16 bes a g f4~ f16 f g aes | g4~ g16 g f ees d b c d ees d ees f |
  g f ees d r g a8 bes fis g4~ | g f8 ees~ \voiceTwo ees16 ees d c bes4~ |
  bes16 bes aes g aes4~ aes16 aes g f g8 aes16 bes | c4.\glissando \voiceOne d8~ d16 des c bes aes8 bes16 c |
  des8 c16 d ees8 d16 ees f8 e16 f g f g e | f4~ f16 ees8.~ ees16 ees d c d8 ees16 f |
  g aes aes bes bes aes aes8 g8. a16 bes4~ | bes~ bes8 a bes4
  r16 bes, c des | c8 d16 ees d8 ees16 f ees8 bes~ bes ces~ | ces4 bes8. aes16 g4\fermata

}

vC = \relative g { \prelude \voiceTwo
  g4 | aes2 g | g4~ g8 f16 ees f4 g | aes bes2 bes8 aes | g f ees f g f16 g aes4~ |
  aes8 g4 f8 bes4 aes8 bes | c8 bes16 aes bes8 aes g8. aes16 g4 |
  r16 g aes bes c8 bes~ bes16 c bes aes g f ees d | ees4 r
  r16 c' bes aes g4 | r16 aes g f ees4~ ees16 ees d c bes8 r | r16 aes' g f ees g f ees d\noBeam
  des' c bes aes bes aes g | f8 g aes f r16 g aes bes c8. des16 | ees f f g r c, bes aes g f g aes bes4~ |
  bes16 g a bes c4~ c16 c bes a bes4~ | bes16 bes aes g aes ees' d c b g a b c4~ | c
  c8. c16 bes8 c d16 c d bes | c8 bes~ bes16 bes8 a16 \voiceThree bes8 f'~ f16  f ees d |
    ees4~ ees16 ees d c f8 ees16 d ees8 f~ | f16 e f e \voiceTwo f8 f,~ f e f16 g aes8 |
  g16 aes bes8 a16 bes c8 bes16 c des8 c4~ | c16 aes g f g8 a16 bes c4
  r16 bes c d | ees f f g g f f d d8 c r16 d ees f | g8 f16 e f8 ees d16 f, g aes bes4 |
  aes16 bes c8 bes16 c d8 c16 aes g f ees d ees8 | aes4 g16 ees d8 ees4
}

vP = \relative ees { \prelude \revertbeamquarter
  ees4 | aes8 g f4 b, c8 d | ees d c4 bes ees | f g8 bes16 aes bes8 aes g f | ees d c4 bes f'8 ees |
  d ees c d ees d c bes | aes f bes4 ees, ees'8 d | c bes aes bes ees, f g f | ees d c f bes4 r |
  r c8 bes aes bes g f | ees d c f bes4 f'8 ees | d ees f bes, ees d c bes | aes g f bes ees,4 ees'8 d |
  c bes a f bes c d bes | ees e f4 f,8 f' ees d | c d ees f g a bes g | e c f f, bes4 ees8 f | g ees c f d bes ees des |
  c f, f'16 e f b, c4 des8 d | ees e f fis g f e c | f d ees c a4 aes8 aes' | g f16 ees f8 bes, ees d16 c g'8 f |
  e c f f, bes aes ges g | aes a bes b c d ees ces | aes f bes4 ees,\fermata
}

RHmusic = { \vA }
LHmusic = { << \vB \\ \vC >> }
PDmusic = { \vP }

\include "obscore.ly"
