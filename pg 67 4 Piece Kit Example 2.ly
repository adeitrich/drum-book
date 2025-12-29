\version "2.24.4"

\include "LB Include.ly"

#(define circle (lambda (grob)
    (let* ((note (ly:note-head::print grob))
           (combo-stencil (ly:stencil-add
               note
               (circle-stencil note 0.12 0.12))))
          (ly:make-stencil (ly:stencil-expr combo-stencil)
            (ly:stencil-extent note X)
            (ly:stencil-extent note Y)))) )

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
  subtitle = \markup {"Part 2"}
	%copyright = \markup { \override #'( (font-name . "Linux Libertine O")) {"© 2025 Larry Beers"}}
  tagline = ""
}

\markup \vspace #1.6

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
          \repeat percent 3 {
            sn16_"R" \tweak stencil #circle tommh_"L" \tweak stencil #circle toml_"R" bd sn8^>_"L"
            sn16_"R" \tweak stencil #circle tommh_"L" \tweak stencil #circle toml_"R" bd sn8^>_"L"
            sn16_"R" \tweak stencil #circle tommh_"L" \tweak stencil #circle toml_"R" bd
            }
            sn4^>_"L" r sn16_"R" \tweak stencil #circle tommh_"L" \tweak stencil #circle toml_"R" bd sn4^>_"L"
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

\markup \vspace #.5

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
            sn16_"R" \tweak stencil #circle tommh_"L" \tweak stencil #circle toml_"R" bd
            sn16_"R" \tweak stencil #circle tommh_"L" \tweak stencil #circle toml_"R" bd
            bd16 sn_"R" \tweak stencil #circle tommh_"L" \tweak stencil #circle toml_"R"
            bd16 sn_"R" \tweak stencil #circle tommh_"L" bd
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

\markup \vspace #.5

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
            sn8^>_"L" \tuplet 3/2 {sn16_"R" \tweak stencil #circle tommh_"L" \tweak stencil #circle toml_"R"} bd8
            sn8^>_"L" \tuplet 3/2 {sn16_"R" \tweak stencil #circle tommh_"L" \tweak stencil #circle toml_"R"} bd8
            \acciaccatura sn8_\markup {\abs-fontsize #8 "R"} ( sn8^>_"L") bd |
            \tuplet 3/2 {sn16_"R" \tweak stencil #circle tommh_"L" \tweak stencil #circle toml_"R"} bd8
            \tuplet 3/2 {sn16_"R" \tweak stencil #circle tommh_"L" \tweak stencil #circle toml_"R"} bd8
            sn8^>_"L" \tuplet 3/2 {sn16_"R" \tweak stencil #circle tommh_"L" \tweak stencil #circle toml_"R"} bd4
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

\markup \vspace #.5

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
            sn16^>_"R" \tweak stencil #circle tommh_"L" sn16^>_"R" \tweak stencil #circle tommh_"L"
            bd bd sn16^>_"R" \tweak stencil #circle tommh_"L" sn16^>_"R" \tweak stencil #circle tommh_"L"
            bd bd sn_"R" \tweak stencil #circle tommh_"L" \tweak stencil #circle toml_"R" bd
            sn_"R" \tweak stencil #circle tommh_"L" bd bd
            sn16^>_"R" \tweak stencil #circle tommh_"L" sn16^>_"R" \tweak stencil #circle tommh_"L"
            bd bd sn16^>_"R" \tweak stencil #circle tommh_"L"
            bd \tweak stencil #circle toml_"R" sn_"L" \tweak stencil #circle tommh_"R"
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

\markup \vspace #.5

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
            sn8^>_"R" \tuplet 3/2 {\tweak stencil #circle tommh16_"L" \tweak stencil #circle toml_"R" bd} bd8
            sn8^>_"R" \tuplet 3/2 {\tweak stencil #circle tommh16_"L" \tweak stencil #circle toml_"R" bd} bd8
            \tuplet 3/2 {\tweak stencil #circle tommh16_"L" \tweak stencil #circle toml_"R" bd} bd8 |
            \tuplet 3/2 {bd16 bd \tweak stencil #circle toml_"R"} \tweak stencil #circle tommh8_"L"
            \tuplet 3/2 {bd16 bd \tweak stencil #circle toml_"R"} \tweak stencil #circle tommh8_"L"
            \tuplet 3/2 {bd16 bd \tweak stencil #circle toml_"R"} \tweak stencil #circle tommh16_"L" bd sn4^>_"R"
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

\markup \vspace #.5

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
            \partial 2 \tuplet 3/2 {r4 \tweak stencil #circle toml8_"R"} \tuplet 3/2 {bd8 bd \tweak stencil #circle tommh_"L"} |
          \bar "[|:"
            \tweak stencil #circle toml8_"R" bd4 sn8_"L" \tuplet 3/2 {r4 \tweak stencil #circle toml8_"R"}
            \tuplet 3/2 {bd8 bd \tweak stencil #circle tommh_"L"} |
            \tweak stencil #circle toml8_"R" bd4 \tweak stencil #circle tommh8_"L" \tuplet 3/2 {r4 \tweak stencil #circle toml8_"R"}
            \tuplet 3/2 {bd8 bd \tweak stencil #circle tommh_"L"}
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

\markup \vspace #.5

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
          \partial 4 r8 \tuplet 3/2 {bd16 bd \tweak stencil #circle toml}
          \bar "[|:"
          \repeat percent 2 {
            sn16_"L" bd \tweak stencil #circle tommh_"R" sn_"L"
            bd \tweak stencil #circle toml_"R" sn_"L" bd
            \tweak stencil #circle tommh_"R" bd \tweak stencil #circle tommh_"R" sn_"L"
            bd \tweak stencil #circle toml_"R" \tuplet 3/2 {bd16 bd \tweak stencil #circle toml_"R"}
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

\markup \vspace #.4

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
            \tuplet 3/2 {bd8 sn8:16 hh8:16} \tuplet 3/2 {sn8:16 hh8:16 bd}
            \tuplet 3/2 {sn^> hh8:16 sn8:16} \tuplet 3/2 {hh8:16 sn8:16 bd} |
            bd4^> \tuplet 3/2 {bd8 sn8:16 hh8:16} \tuplet 3/2 {sn8:16 hh8:16 bd} sn4^>
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

\markup \vspace #.5

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 9. }
    } <<
      \new DrumVoice {
        \drummode {
          \stemUp
          \bar "[|:"
            \tuplet 3/2 {bd8^> sn8:16 hh8:16} \tuplet 3/2 {sn8:16 hh8:16 sn8:16}
            \tuplet 3/2 {hh8:16 sn8:16 hh8:16} \tuplet 3/2 {sn8:16 hh8:16 bd} |
            \tuplet 3/2 {sn8^> hh8:16 sn8:16} \tuplet 3/2 {hh8:16 sn8:16 hh8:16}
            \tuplet 3/2 {sn8:16 hh8:16 sn8:16} \tuplet 3/2 {hh8:16 sn8:16 bd}
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

\markup \vspace #.5

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 10. }
    } <<
      \new DrumVoice {
        \drummode {
          \stemUp
          \bar "[|:"
            sn16^>_"R" hh_"L" \tweak stencil #circle tommh^>_"R" hh_"L"
            hh_"L" sn^>_"R" hh_"L" \tweak stencil #circle toml^>_"R"
            hh_"L" bd sn^>_"R" hh_"L"
            hh_"L" \tweak stencil #circle tommh^>_"R" hh_"L" hh_"L" |
            sn^>_"R" hh_"L" bd \tweak stencil #circle tomml^>_"R"
            hh_"L" bd sn^>_"R" hh_"L"
            bd \tweak stencil #circle toml^>_"R" hh_"L" bd
            \tuplet 3/2 {sn16_"R" \tweak stencil #circle tommh_"L" \tweak stencil #circle toml_"R"} bd8 
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

\markup \vspace #.5

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 11. }
    } <<
      \new DrumVoice {
        \drummode {
          \stemUp
          \bar "[|:"
            \tuplet 3/2 {bd16 bd \tweak stencil #circle toml} sn8
            \tuplet 3/2 {sn16 \tweak stencil #circle toml bd} bd8
            \tuplet 3/2 {bd16 bd \tweak stencil #circle toml} \tweak stencil #circle tommh8 
            \tuplet 3/2 {\tweak stencil #circle tommh16 \tweak stencil #circle toml bd} bd8 |
            sn8 \tuplet 3/2 {bd16 bd \tweak stencil #circle toml}
            \tweak stencil #circle tommh8 \tuplet 3/2 {\tweak stencil #circle tommh16 \tweak stencil #circle toml bd}
            bd8 \tuplet 3/2 {bd16 bd \tweak stencil #circle toml} sn4^>
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

\markup \vspace #.5

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 12. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemDown
          \voiceOne
          \bar "[|:"
            <bd \tweak stencil #circle toml sn>8
            <bd \tweak stencil #circle toml>16 sn16
            \tweak stencil #circle toml16 bd16
            <sn \tweak stencil #circle toml>8
            <bd \tweak stencil #circle toml>16 sn \tweak stencil #circle toml bd
            <sn \tweak stencil #circle toml>8 bd |
            <bd \tweak stencil #circle toml sn>8
            <bd \tweak stencil #circle toml>16 sn16
            \tweak stencil #circle toml16 bd16
            <sn \tweak stencil #circle toml>8
            <bd \tweak stencil #circle toml>16 sn
            \tweak stencil #circle toml bd
            <sn \tweak stencil #circle toml>4
          \bar ":|]"
        } 
        >>
      } >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 180\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
    }
  }
}