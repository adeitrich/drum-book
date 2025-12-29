\version "2.24.4"

\include "LB Include.ly"

\paper {
  left-margin = 20\mm
  right-margin = 20\mm

  bookTitleMarkup = \markup {
    \fill-line { \fromproperty #'header:title }
  }

  score-system-spacing =
    #'((basic-distance . 15)
       (minimum-distance . 3)
       (padding . 0.5))

  #(define fonts
    (set-global-fonts
     #:roman "Linux Libertine O"
     #:sans "Nimbus Sans, Nimbus Sans L"
     #:typewriter "DejaVu Sans Mono"
     ; unnecessary if the staff size is default
     #:factor (/ staff-height pt 20)
    ))
}

\header {
    %title = \markup {\fontsize #3 "Fragments for Titles"}
    %copyright = \markup { \override #'( (font-name . "Linux Libertine O")) {"© 2025 Larry Beers"}}
  tagline = ""
}

\markup \vspace #4

\markup {
  \fill-line {
    \score {
      \new DrumStaff \with {
        drumStyleTable = #(alist->hash-table LBdrums)
        
      } <<
        \new DrumVoice {
          \drummode {
            \stemUp
            \stopStaff
            \omit Staff.TimeSignature
            \override Staff.Clef.color = #white
            \override Staff.Clef.layer = #-1
            sn16[16 8 8]
          }
        }
      >>
      \layout {
        indent = 0
        line-width = 60\mm  % Set desired width here; adjust as needed
        ragged-right = ##f
      }
    }
  }
}