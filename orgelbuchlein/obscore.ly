\header {
  footer = "Mutopia-2006/04/07-725"
    tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small
      \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. }
      \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2006. \hspace #0.5 Reference: \footer } } 
      \line { \teeny \line { Licensed under the Creative Commons Attribution-ShareAlike 2.5 License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by-sa/2.5" http://creativecommons.org/licenses/by-sa/2.5 } } } }
}

\score { <<
  \new PianoStaff \with { \override VerticalAlignment #'forced-distance = #8 } <<
    \new Staff = "RH" <<
      \clef "treble"
      \globals
      \RHmusic
    >>
    \new Staff = "LH" <<
      \clef "bass"
      \globals
      \LHmusic
    >>
  >>
  \new Staff = "PD" <<
    \clef "bass"
    \globals
    \PDmusic
  >>
>> }

\score {
  \unfoldRepeats { <<
    \new Staff = "RH" <<
      \set Staff.midiInstrument = "reed organ"
      \RHmusic
    >>
    \new Staff = "LH" <<
      \set Staff.midiInstrument = "reed organ"
      \LHmusic
    >>
    \new Staff = "PD" <<
      \set Staff.midiInstrument = "reed organ"
      \PDmusic
    >>
  >> }
  \midi {}
}

