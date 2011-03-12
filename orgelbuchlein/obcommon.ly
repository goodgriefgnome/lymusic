#(ly:set-option 'point-and-click #f)
#(set-default-paper-size "a4" 'landscape)
#(set-global-staff-size 16)

\paper {
  bookTitleMarkup = \markup {}
  scoreTitleMarkup = \markup {
    %\override #'(baseline-skip . 3.5)
    \combine
      \column {
        \huge \larger \bold
        \fill-line { \larger \fromproperty #'header:title }
        \fill-line { \large \smaller \bold \larger \fromproperty #'header:subtitle }
        \fill-line { \smaller \bold \fromproperty #'header:subsubtitle }
      }
      \column {
        \fill-line { \line{} \line{ \small \fromproperty #'header:composer } }
        \fill-line {
          \small \fromproperty #'header:piece
          \small \fromproperty #'header:opus
        }
      }
  }

  %annotate-spacing = ##t
  page-top-space = 0\mm
  left-margin = 15\mm
  line-width = #(- paper-width (* 2 left-margin))

  between-system-space = 1\cm
  between-system-padding = 2\mm
}

nvkey = { \applyContext #(lambda (x) (ly:context-set-property! x 'localKeySignature (ly:context-property (ly:context-parent x) 'localKeySignature))) }
ficta = { \once \set suggestAccidentals = ##t }
fictasub = { \ficta \once \override Staff.AccidentalSuggestion #'direction = #-1 }
fictasup = { \ficta \once \override Staff.AccidentalSuggestion #'direction = #1 }
torh = { \change Staff = "RH" }
tolh = { \change Staff = "LH" }
accstyle = {
  #(set-accidental-style 'modern-voice-cautionary)
  \override Staff.AccidentalCautionary #'font-size = #-2.5
}
beamquarter = {
  #(override-auto-beam-setting '(end * * 4 4) 1 4)
  #(override-auto-beam-setting '(end * * 4 4) 3 4)
  #(override-auto-beam-setting '(end * * 3 4) 1 4)
  #(override-auto-beam-setting '(end * * 3 4) 2 4)
  #(override-auto-beam-setting '(end * * 3 4) 3 4)
}
revertbeamquarter = {
  #(revert-auto-beam-setting '(end * * 4 4) 1 4)
  #(revert-auto-beam-setting '(end * * 4 4) 3 4)
  #(revert-auto-beam-setting '(end * * 3 4) 1 4)
  #(revert-auto-beam-setting '(end * * 3 4) 2 4)
  #(revert-auto-beam-setting '(end * * 3 4) 3 4)
}
revertbeamthirtytwo = {
  #(revert-auto-beam-setting '(end 1 32 4 4) 1 8)
  #(revert-auto-beam-setting '(end 1 32 4 4) 3 8)
  #(revert-auto-beam-setting '(end 1 32 4 4) 5 8)
  #(revert-auto-beam-setting '(end 1 32 4 4) 7 8)
}
sfermata =
  #(let ((m (make-music 'ArticulationEvent 'articulation-type "fermata")))
    (ly:music-set-property! m 'tweaks (acons 'font-size -3.5 (ly:music-property m 'tweaks)))
    m)
sprall =
  #(let ((m (make-music 'ArticulationEvent 'articulation-type "prall")))
    (ly:music-set-property! m 'tweaks (acons 'font-size -4.5 (ly:music-property m 'tweaks)))
    m)
sprallprall =
  #(let ((m (make-music 'ArticulationEvent 'articulation-type "prallprall")))
    (ly:music-set-property! m 'tweaks (acons 'font-size -4.5 (ly:music-property m 'tweaks)))
    m)
