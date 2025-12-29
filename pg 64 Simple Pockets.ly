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
    title = \markup {\fontsize #3 "Simple Pockets (aka $)"}
    %copyright = \markup { \override #'( (font-name . "Linux Libertine O")) {"© 2025 Larry Beers"}}
  tagline = ""
}

\markup \vspace #4

\markup {
  \fill-line {
    \score {
      \new DrumStaff \with {
        drumStyleTable = #(alist->hash-table LBdrums)
        % Optional: Add label to the left
        instrumentName = \markup {\circle 1 }
      } <<
        \new DrumVoice {
          \drummode {
            \stemDown
            \bar ".|:"
            bd4 sn bd sn
            \bar ":|."
          }
        }
      >>
      \layout {
        indent = 0  % Minimize left margin for embedded score
        line-width = 72\mm  % Set desired width here; adjust as needed
        ragged-right = ##f  % Allow stretching to fill the line-width
      }
    }
    \score {
      \new DrumStaff \with {
        drumStyleTable = #(alist->hash-table LBdrums)
        instrumentName = \markup { \circle 2 }
      } <<
        \new DrumVoice {
          \drummode {
            \stemDown
            \bar ".|:"
            bd4 <bd sn> bd <bd sn>
            \bar ":|."
          }
        }
      >>
      \layout {
        indent = 0
        line-width = 72\mm  % Set desired width here; adjust as needed
        ragged-right = ##f
      }
    }
  }
}

\markup \vspace #2

\markup {
  \fill-line {
    \score {
      \new DrumStaff \with {
        drumStyleTable = #(alist->hash-table LBdrums)
        % Optional: Add label to the left
        instrumentName = \markup {\circle 3 }
      } <<
        \new DrumVoice {
          \drummode {
            \stemDown
            \bar ".|:"
            bd8 bd sn4 bd8 bd sn4
            \bar ":|."
          }
        }
      >>
      \layout {
        indent = 0  % Minimize left margin for embedded score
        line-width = 72\mm  % Set desired width here; adjust as needed
        ragged-right = ##f  % Allow stretching to fill the line-width
      }
    }
    \score {
      \new DrumStaff \with {
        drumStyleTable = #(alist->hash-table LBdrums)
        instrumentName = \markup { \circle 4 }
      } <<
        \new DrumVoice {
          \drummode {
            \stemDown
            \bar ".|:"
            bd4 sn bd8 bd sn4
            \bar ":|."
          }
        }
      >>
      \layout {
        indent = 0
        line-width = 72\mm  % Set desired width here; adjust as needed
        ragged-right = ##f
      }
    }
  }
}

\markup \vspace #2

\markup {
  \fill-line {
    \score {
      \new DrumStaff \with {
        drumStyleTable = #(alist->hash-table LBdrums)
        % Optional: Add label to the left
        instrumentName = \markup {\circle 5 }
      } <<
        \new DrumVoice {
          \drummode {
            \stemDown
            \bar ".|:"
            bd4 sn8 bd bd4 sn8 bd
            \bar ":|."
          }
        }
      >>
      \layout {
        indent = 0  % Minimize left margin for embedded score
        line-width = 72\mm  % Set desired width here; adjust as needed
        ragged-right = ##f  % Allow stretching to fill the line-width
      }
    }
    \score {
      \new DrumStaff \with {
        drumStyleTable = #(alist->hash-table LBdrums)
        instrumentName = \markup { \circle 6 }
      } <<
        \new DrumVoice {
          \drummode {
            \stemDown
            \bar ".|:"
            bd4 sn8 bd bd4 sn
            \bar ":|."
          }
        }
      >>
      \layout {
        indent = 0
        line-width = 72\mm  % Set desired width here; adjust as needed
        ragged-right = ##f
      }
    }
  }
}

\markup \vspace #2

\markup {
  \fill-line {
    \score {
      \new DrumStaff \with {
        drumStyleTable = #(alist->hash-table LBdrums)
        % Optional: Add label to the left
        instrumentName = \markup {\circle 7 }
      } <<
        \new DrumVoice {
          \drummode {
            \stemDown
            \bar ".|:"
            bd4 sn8 bd r4 sn
            \bar ":|."
          }
        }
      >>
      \layout {
        indent = 0  % Minimize left margin for embedded score
        line-width = 72\mm  % Set desired width here; adjust as needed
        ragged-right = ##f  % Allow stretching to fill the line-width
      }
    }
    \score {
      \new DrumStaff \with {
        drumStyleTable = #(alist->hash-table LBdrums)
        instrumentName = \markup { \circle 8 }
      } <<
        \new DrumVoice {
          \drummode {
            \stemDown
            \bar ".|:"
            bd4 sn4. bd8 sn4
            \bar ":|."
          }
        }
      >>
      \layout {
        indent = 0
        line-width = 72\mm  % Set desired width here; adjust as needed
        ragged-right = ##f
      }
    }
  }
}

\markup \vspace #2

\markup {
  \fill-line {
    \score {
      \new DrumStaff \with {
        drumStyleTable = #(alist->hash-table LBdrums)
        % Optional: Add label to the left
        instrumentName = \markup {\circle 9 }
      } <<
        \new DrumVoice {
          \drummode {
            \stemDown
            \bar ".|:"
            bd4 sn8 bd4 bd8 sn4
            \bar ":|."
          }
        }
      >>
      \layout {
        indent = 0  % Minimize left margin for embedded score
        line-width = 72\mm  % Set desired width here; adjust as needed
        ragged-right = ##f  % Allow stretching to fill the line-width
      }
    }
    \score {
      \new DrumStaff \with {
        drumStyleTable = #(alist->hash-table LBdrums)
        instrumentName = \markup { \circle 10 }
      } <<
        \new DrumVoice {
          \drummode {
            \stemDown
            \bar ".|:"
            bd4 sn8 bd4 bd8 sn bd
            \bar ":|."
          }
        }
      >>
      \layout {
        indent = 0
        line-width = 72\mm  % Set desired width here; adjust as needed
        ragged-right = ##f
      }
    }
  }
}

\markup \vspace #2

\markup {
  \fill-line {
    \score {
      \new DrumStaff \with {
        drumStyleTable = #(alist->hash-table LBdrums)
        % Optional: Add label to the left
        instrumentName = \markup {\circle 11 }
      } <<
        \new DrumVoice {
          \drummode {
            \stemDown
            \bar ".|:"
            bd8 bd sn bd r bd sn4
            \bar ":|."
          }
        }
      >>
      \layout {
        indent = 0  % Minimize left margin for embedded score
        line-width = 72\mm  % Set desired width here; adjust as needed
        ragged-right = ##f  % Allow stretching to fill the line-width
      }
    }
    \score {
      \new DrumStaff \with {
        drumStyleTable = #(alist->hash-table LBdrums)
        instrumentName = \markup { \circle 12 }
      } <<
        \new DrumVoice {
          \drummode {
            \stemDown
            \bar ".|:"
            bd4 sn bd8 bd sn bd
            \bar ":|."
          }
        }
      >>
      \layout {
        indent = 0
        line-width = 72\mm  % Set desired width here; adjust as needed
        ragged-right = ##f
      }
    }
  }
}