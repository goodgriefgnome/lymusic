\version "2.12.0"

\include "obcommon.ly"
\paper {
  %annotate-spacing = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

\header {
  %dedication = ""
  title = "Hilf Gott, dass mir's gelinge"
  %subtitle = ""
  opus = "BWV 624"
  composer = "Johann Sebastian Bach"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Organ"
  source = "Bach-Gesellschaft Orgelwerke"
  style = "Baroque"
  maintainer = "Li Jie Wong"
  copyright = "Creative Commons Attribution-ShareAlike 3.0"
}

prelude = { \time 4/4 \partial 4 }

globals = {
  \accstyle
  \key f \major
  \prelude
  s4 s1*15 s2..
  \bar "|."
}

vA = \relative g' { \prelude \voiceOne
  g4 | a4. g8 f4 d8 ees | f4 g2\fermata
  a4 | bes8 c d4 c bes | a g2\sfermata
  g4 | a4. g8 f4 d8 ees | f4 g2\fermata
  a4 | bes8 c d4 c4 bes | a g2\fermata
  g4 | a bes c a | bes g a f~\sfermata |
  f f bes a | bes c d~ d8 c | bes a16 g fis2\fermata
  a4 | bes8 c d4 c bes | a g~ g2~ | g2.\fermata
}

vB = \relative cis' { \prelude \voiceTwo
  r4 | r cis d4. c8 | bes4 g8 a b4 c | r d e8 fis g4 | f ees d c |
  r cis d4. c8 | bes4 g8 a b4 c | r d e8 fis g4 | f ees d c |
  r d e f | g e f d | ees c2 c4 | f e fis g~ | g a8. g16 fis8 e16 d cis8 r |
  r4 d e8 fis g4 | f ees d c~ | c4. b16 a b4\fermata
}

vC = \relative d' { \prelude
  #(override-auto-beam-setting '(end 1 24 4 4) 1 8)
  #(override-auto-beam-setting '(end 1 24 4 4) 2 8)
  #(override-auto-beam-setting '(end 1 24 4 4) 3 8)
  #(override-auto-beam-setting '(end 1 24 4 4) 4 8)
  #(override-auto-beam-setting '(end 1 24 4 4) 5 8)
  #(override-auto-beam-setting '(end 1 24 4 4) 6 8)
  #(override-auto-beam-setting '(end 1 24 4 4) 7 8)
  \scaleDurations #'(2 . 3) {
    \times 3/3 { r16 d c } bes a g | cis b a d c bes a g f e d e d a' g f e d fis e d g f ees | d bes' a g f ees d c bes ees d c f aes g f ees d
    ees g f ees d c | bes ees d c bes a g bes c d e fis g fis g a bes c \clef "treble" d c d ees d ees~ | ees d c d ees f g a b c d ees f g aes g aes f
    ees g f ees f d | cis b a d c bes a g f e d e d a' g f e d fis e d g f ees | \clef "bass" d bes a g f ees d c bes ees d c f aes g f ees d
    ees g f ees d c | bes ees d c bes a g bes c d e fis g fis g a bes c \clef "treble" d c d ees d ees~ | ees d c d ees f g a b c d ees f g aes g aes f
    ees d c bes a g | fis ees' d c bes a g f ees d c d g, a bes c bes c f, a g a bes c | d g, a bes c d e c d e f g c, d ees f g a bes a g f ees d |
    c ees d c d bes a bes c d ees f g a bes c d ees f g f ees d c | bes a g f ees d \clef "bass" c bes a g fis e 
      d fis g a bes c d c bes a bes g | c ees d c bes a \clef "treble" d e fis g a bes c ees d c d bes
    a bes c d ees c | bes a g fis g a d, e fis g a bes c bes a ees' d c
      g' f ees ees d c | c bes a a g f bes a g c b a d c b b a g g f ees c' bes aes | g f ees ees d c g' f ees d ees c d g d b c d }
  g,8\fermata 
}

vP = \relative g { \prelude
  r8 g~ | g f e a, d c bes4~ | bes8 c bes a g g'4 fis8 | g a bes4~ bes8 a g c | d d,4 c8 b g c bes | a f' e a d, c bes4~ | bes8 c bes a
  g g'4 fis8 | g a bes4~ bes8 a g c | d d,4 c8 b g c c'~ | c8 fis, g bes~ bes a d c | bes g c bes a f bes bes,~ |
  bes a16 g a8 f'~ f ees16 d ees8 c | d g, a bes c bes16 a bes8 ees~ | ees c'4 bes8 a g4 fis8 | g8 a bes4~ bes8 a g c | 
  d d,4 c8 b g ees'4~ | ees8 fis, g2\fermata
}

RHmusic = { << \vA \\ \vB >> }
LHmusic = { \vC }
PDmusic = { \vP }

\include "obscore.ly"
