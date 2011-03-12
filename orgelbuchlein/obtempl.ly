\version "2.12.0"

\include "obcommon.ly"
\paper {
  %annotate-spacing = ##t
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

\header {
  %dedication = ""
  title = ""
  %subtitle = ""
  opus = "BWV "
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
  \key f \major
  \prelude
  s4 s1*9
  \bar "|."
}

vA = \relative a' { \prelude \voiceOne
}

vB = \relative a { \prelude \voiceTwo
}

vC = \relative d { \prelude
}

vP = \relative a, { \prelude
}

RHmusic = { << \vA \\ \vB >> }
LHmusic = { \vC }
PDmusic = { \vP }

\include "obscore.ly"
