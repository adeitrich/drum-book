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
	title = \markup {"Tennis Shoes in the Dryer"}
	%copyright = \markup { \override #'( (font-name . "Linux Libertine O")) {"© 2025 Larry Beers"}}
  tagline = ""
}

\markup \vspace #3

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold \box 1a }
    } <<
      \new DrumVoice {
        \drummode {
          \stemUp
          \bar "[|:"
          \repeat unfold 3 {\tuplet 3/2 {bd8 \tweak stencil #circle tommh \tweak stencil #circle toml}} bd4
          \bar ":|]"
        }
      }
    >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 100\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
    }
  }
}

\markup \vspace #.8

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup { b }
    } <<
      \new DrumVoice {
        \drummode {
          \stemUp
          \bar "[|:"
          \repeat unfold 3 {\tuplet 3/2 {bd8 \tweak stencil #circle toml \tweak stencil #circle tommh}} bd4
          \bar ":|]"
        }
      }
    >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 100\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
    }
  }
}

\markup \vspace #.8

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup { c }
    } <<
      \new DrumVoice {
        \drummode {
          \stemUp
          \bar "[|:"
          \tuplet 3/2 {bd8 \tweak stencil #circle toml \tweak stencil #circle tommh}
          \tuplet 3/2 {bd8 \tweak stencil #circle tommh \tweak stencil #circle toml}
          \tuplet 3/2 {bd8 \tweak stencil #circle toml \tweak stencil #circle tommh}
          \tuplet 3/2 {bd8 \tweak stencil #circle toml \tweak stencil #circle tommh}
          \tuplet 3/2 {bd8 \tweak stencil #circle tommh \tweak stencil #circle toml}
          \tuplet 3/2 {bd8 \tweak stencil #circle toml \tweak stencil #circle tommh}
          \tuplet 3/2 {bd8 \tweak stencil #circle tommh \tweak stencil #circle toml}
          \tuplet 3/2 {bd8 \tweak stencil #circle tommh \tweak stencil #circle toml}
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

\markup \vspace #.8

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold \box 2a }
    } <<
      \new DrumVoice {
        \drummode {
          \stemUp
          \bar "[|:"
          \repeat unfold 3 {\tuplet 3/2 {\tweak stencil #circle tommh8 \tweak stencil #circle toml bd}} bd4
          \bar ":|]"
        }
      }
    >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 100\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
    }
  }
}

\markup \vspace #.8

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup { b }
    } <<
      \new DrumVoice {
        \drummode {
          \stemUp
          \bar "[|:"
          \repeat unfold 3 {\tuplet 3/2 {\tweak stencil #circle toml8 \tweak stencil #circle tommh bd}} bd4
          \bar ":|]"
        }
      }
    >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 100\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
    }
  }
}

\markup \vspace #.8

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup { c }
    } <<
      \new DrumVoice {
        \drummode {
          \stemUp
          \bar "[|:"
          \tuplet 3/2 {\tweak stencil #circle toml8 \tweak stencil #circle tommh bd}
          \tuplet 3/2 {\tweak stencil #circle tommh8 \tweak stencil #circle toml bd}
          \tuplet 3/2 {\tweak stencil #circle toml8 \tweak stencil #circle tommh bd}
          \tuplet 3/2 {\tweak stencil #circle toml8 \tweak stencil #circle tommh bd}
          \tuplet 3/2 {\tweak stencil #circle tommh8 \tweak stencil #circle toml bd}
          \tuplet 3/2 {\tweak stencil #circle toml8 \tweak stencil #circle tommh bd}
          \tuplet 3/2 {\tweak stencil #circle tommh8 \tweak stencil #circle toml bd}
          \tuplet 3/2 {\tweak stencil #circle tommh8 \tweak stencil #circle toml bd}
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

\markup \vspace #.8

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold \box 3a }
    } <<
      \new DrumVoice {
        \drummode {
          \stemUp
          \bar "[|:"
          \repeat unfold 3 {\tuplet 3/2 {\tweak stencil #circle tommh8 bd \tweak stencil #circle toml}} \tweak stencil #circle tommh4
          \bar ":|]"
        }
      }
    >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 100\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
    }
  }
}

\markup \vspace #.8

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup { b }
    } <<
      \new DrumVoice {
        \drummode {
          \stemUp
          \bar "[|:"
          \repeat unfold 3 {\tuplet 3/2 {\tweak stencil #circle toml8 bd \tweak stencil #circle tommh}} \tweak stencil #circle toml4
          \bar ":|]"
        }
      }
    >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 100\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
    }
  }
}

\markup \vspace #.8

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup { c }
    } <<
      \new DrumVoice {
        \drummode {
          \stemUp
          \bar "[|:"
          \tuplet 3/2 {\tweak stencil #circle toml8 bd \tweak stencil #circle toml}
          \tuplet 3/2 {\tweak stencil #circle tommh8 bd \tweak stencil #circle tommh}
          \tuplet 3/2 {\tweak stencil #circle toml8 bd \tweak stencil #circle tommh}
          \tuplet 3/2 {\tweak stencil #circle toml8 bd \tweak stencil #circle toml}
          \tuplet 3/2 {\tweak stencil #circle tommh8 bd \tweak stencil #circle tommh}
          \tuplet 3/2 {\tweak stencil #circle toml8 bd \tweak stencil #circle toml}
          \tuplet 3/2 {\tweak stencil #circle tommh8 bd \tweak stencil #circle toml}
          \tuplet 3/2 {\tweak stencil #circle tommh8 bd \tweak stencil #circle tommh}
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

\markup \vspace #.8

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup { \bold \box 4 }
    } <<
      \new DrumVoice {
        \drummode {
          \time 2/4
          \stemUp
          \bar "[|:"
          \repeat percent 2 {\repeat unfold 2 {\tuplet 3/2 {bd sn \tweak stencil #circle tommh}}}
          \repeat percent 2 {\repeat unfold 2 {\tuplet 3/2 {bd \tweak stencil #circle tommh \tweak stencil #circle toml}}}
          \repeat percent 2 {\repeat unfold 2 {\tuplet 3/2 {bd sn \tweak stencil #circle toml}}}
          bd8. bd16 \acciaccatura sn8( sn16) sn16 hho8
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