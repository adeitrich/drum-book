\version "2.24.4"

\include "LB Include.ly"

\paper {
  left-margin = 20\mm
  right-margin = 20\mm



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
	title = \markup {"(4 pc. Kit) Dbl. Paradiddle ex - Cont."}
  %subtitle = \markup {\fontsize #-2 ""}
	%copyright = \markup { \override #'( (font-name . "Linux Libertine O")) {"© 2025 Larry Beers"}}
  tagline = ""
}

\markup \vspace #1.6

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      %instrumentName = \markup {\bold 7. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \time 6/8
          \repeat percent 2 {
          \repeat percent 2 {
          cymr16^>^\markup { \center-column {\vspace #-1.5 R }} 
          cymr^\markup { \center-column {\vspace #-1.5 L }}
          cymr^\markup { \center-column {\vspace #-1.5 R }}
          cymr^\markup { \center-column {\vspace #-1.5 L }}
          cymr^\markup { \center-column {\vspace #-1.5 R }}
          cymr^\markup { \center-column {\vspace #-1.5 R }}
          cymr16^>^\markup { \center-column {\vspace #-1.5 L }}
          sn^\markup { \center-column {\vspace #-1.5 R }}
          cymr^\markup { \center-column {\vspace #-1.5 L }}
          cymr^\markup { \center-column {\vspace #-1.5 R }}
          cymr^\markup { \center-column {\vspace #-1.5 L }}
          cymr^\markup { \center-column {\vspace #-1.5 L }}
          }}
          \repeat percent 2 {
          \repeat percent 2 {
          cymr16^> \repeat unfold 5 {cymr}
          cymr^> sn cymr sn cymr cymr }}
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd4. hhp
          s2.^\markup { \center-column {\vspace #-1 \italic \fontsize #-1 (sim.)}} s2. s2.
          bd4. hhp
          s2. s2. s2.
        }
        }>>
      }
    >>
    \layout {
      indent = -8\mm  % Minimize left margin for embedded score
      line-width = 180\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
    }
  }
}

\markup \vspace #0.2

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      %instrumentName = \markup {\bold 7. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \time 6/8
          \repeat percent 2 {
          \repeat percent 2 {
          hh16^> \repeat unfold 5 {sn}
          sn16^> \repeat unfold 5 {sn} }}
          \repeat percent 2 {
          \repeat percent 2 {
          hh16^> sn hh \repeat unfold 3 {sn}
          sn16^> \repeat unfold 5 {sn} }}
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd4. hhp
          s2. s2. s2.
          bd4. hhp
          s2. s2. s2.
        }
        }>>
      }
    >>
    \layout {
      indent = -8\mm  % Minimize left margin for embedded score
      line-width = 180\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
    }
  }
}

\markup \vspace #0.2

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      %instrumentName = \markup {\bold 7. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \time 6/8
          \repeat percent 2 {
          \repeat percent 2 {
            hh16 sn hh sn hh hho
            \repeat unfold 6 {sn}
          }}
          \repeat percent 2 {
          \repeat percent 2 {
            hh16 sn hh sn hh hho
            sn hh \repeat unfold 4 {sn}
          }}
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd4. hhp
          s2. s2. s2.
          bd4. hhp
          s2. s2. s2.
        }
        }>>
      }
    >>
    \layout {
      indent = -8\mm  % Minimize left margin for embedded score
      line-width = 180\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
    }
  }
}

\markup \vspace #0.2

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      %instrumentName = \markup {\bold 7. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \time 6/8

          \repeat percent 2 {
          \repeat percent 2 {
            hh16 sn hh sn hh hho
            sn hh sn hh \repeat unfold 2 {sn}
          }}

          \repeat percent 2 {
          \repeat percent 2 {
            hh hh hh hh hh hho
            \repeat unfold 6 {sn} 
          }}
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd4. hhp
          s2. s2. s2.
          bd4. hhp
          s2. s2. s2.
        }
        }>>
      }
    >>
    \layout {
      indent = -8\mm  % Minimize left margin for embedded score
      line-width = 180\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
    }
  }
}

\markup \vspace #0.5

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      %instrumentName = \markup {\bold 7. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \time 6/8
          \repeat percent 2 {
          \repeat percent 2 {
            hh16 hh hh hh hh hho
            hh sn hh hh hh hh 
          }}

          \repeat percent 2 {
          \repeat percent 2 {
            hh hh hh hh hh hho
            hh sn hh sn hh hh 
          }}
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd4. hhp
          s2. s2. s2.
          bd4. hhp
          s2. s2. s2.
        }
        }>>
      }
    >>
    \layout {
      indent = -8\mm  % Minimize left margin for embedded score
      line-width = 180\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
    }
  }
}