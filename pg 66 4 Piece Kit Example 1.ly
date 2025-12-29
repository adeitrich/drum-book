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
	title = \markup {"4 Piece Kit Example"}
  subtitle = \markup {"Part 1"}
	%copyright = \markup { \override #'( (font-name . "Linux Libertine O")) {"© 2025 Larry Beers"}}
  tagline = ""
}

\markup \vspace #3

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 1. }
    } <<
      \new DrumVoice {
        \drummode {
          \stemUp
          \bar "[|:"
          \repeat percent 2 {
            sn16_"R"^> \tweak stencil #circle tommh_"L" \tweak stencil #circle toml_"R" bd
            sn_"L"^> bd sn^>_"R" \tweak stencil #circle tommh_"L"
            \tweak stencil #circle toml_"R" bd sn^>_"L" bd
            sn^>_"R" \tweak stencil #circle tommh_"L" \tweak stencil #circle toml_"R" bd
            }
          \bar ":|]"
        }
      }
    >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 180\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
    }
  }
}

\markup \vspace #1.5

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 2. }
    } <<
      \new DrumVoice {
        \drummode {
          \stemUp
          \bar "[|:"
          \repeat percent 2 {
            \repeat unfold 2 {sn16_"R"^> bd sn16_"R"^> \tweak stencil #circle tommh
            \tweak stencil #circle toml bd sn16_"L"^> bd}
            }
          \bar ":|]"
        }
      }
    >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 180\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
    }
  }
}

\markup \vspace #1.5

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 3. }
    } <<
      \new DrumVoice {
        \drummode {
          \stemUp
          \bar "[|:"
            sn4_"L" \tuplet 3/2 {sn8_"R" \tweak stencil #circle tommh \tweak stencil #circle toml} bd4 sn_"L"
            \tuplet 3/2 {sn8_"R" \tweak stencil #circle tommh \tweak stencil #circle toml} bd4 sn_"L" bd
          \bar ":|]"
        }
      }
    >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 180\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
    }
  }
}

\markup \vspace #1.5

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 4. }
    } <<
      \new DrumVoice {
        \drummode {
          \stemUp
          \bar "[|:"
          \repeat percent 2 {
            \tuplet 3/2 {sn8_"R" \tweak stencil #circle tommh_"L" \tweak stencil #circle toml_"R"}
            \tuplet 3/2 {bd8 r sn_"R"}
            \tuplet 3/2 {\tweak stencil #circle tommh8_"L" \tweak stencil #circle toml_"R" bd} sn4_"L"
          }
          \bar ":|]"
        }
      }
    >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 180\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
    }
  }
}

\markup \vspace #1.5

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 5. }
    } <<
      \new DrumVoice {
        \drummode {
          \stemUp
          \bar "[|:"
            \tuplet 3/2 {sn8 sn bd} \tuplet 3/2 {\tweak stencil #circle tommh8 \tweak stencil #circle tommh bd}
            \tuplet 3/2 {\tweak stencil #circle toml8 \tweak stencil #circle toml bd} \tuplet 3/2 {sn8 sn bd} |
            \tuplet 3/2 {\tweak stencil #circle tommh8 \tweak stencil #circle tommh bd}
            \tuplet 3/2 {\tweak stencil #circle toml8 \tweak stencil #circle toml bd} sn4^> r
          \bar ":|]"
        }
      }
    >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 180\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
    }
  }
}

\markup \vspace #1.5

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 6. }
    } <<
      \new DrumVoice {
        \drummode {
          \stemUp
          \bar "[|:"
            \tuplet 3/2 {sn8^> \tweak stencil #circle tommh bd} \tuplet 3/2 {\tweak stencil #circle toml8 \tweak stencil #circle tommh bd}
            \tuplet 3/2 {\tweak stencil #circle toml8 \tweak stencil #circle tommh bd} \tuplet 3/2 {sn8^> \tweak stencil #circle tommh bd} |
            \tuplet 3/2 {\tweak stencil #circle toml8 \tweak stencil #circle tommh bd} 
            \tuplet 3/2 {\tweak stencil #circle toml8 \tweak stencil #circle tommh bd} sn4^> r
          \bar ":|]"
        }
      }
    >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 180\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
    }
  }
}

\markup \vspace #2.2

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 7. }
    } <<
      \new DrumVoice {
        \drummode {
          \stemUp
          \bar "[|:"
          \repeat percent 2 {
            sn16_"R" hh_"L" bd \tweak stencil #circle toml_"R"
            hh_"L" bd sn_"R" hh_"L"
            bd \tweak stencil #circle toml_"R" hh_"L" bd
            sn_"R" sn _"L" \tweak stencil #circle tommh8_"R"
          }
          \bar ":|]"
        }
      }
    >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 180\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
    }
  }
}

\markup \vspace #1.5

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 8. }
    } <<
      \new DrumVoice {
        \drummode {
          \stemUp
          \bar "[|:"
            \tuplet 3/2 {sn8 hh bd} \tuplet 3/2 {\tweak stencil #circle toml hh bd}
            \tuplet 3/2 {\tweak stencil #circle toml hh bd} \tuplet 3/2 {sn8 hh bd} |
            \tuplet 3/2 {\tweak stencil #circle toml hh bd} \tuplet 3/2 {\tweak stencil #circle toml hh bd}
            sn4 hho |
          \bar ":|]"
        }
      }
      \new DrumVoice {
        \drummode {
          \stemDown

            hhp4 s2. | s1

        }
      }
    >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 180\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
    }
  }
}