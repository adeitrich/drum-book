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
	title = \markup {"five eight"}
  %subtitle = \markup {"Part 1"}
	%copyright = \markup { \override #'( (font-name . "Linux Libertine O")) {"© 2025 Larry Beers"}}
  tagline = ""
}

\markup \vspace #2

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold "1." }
    } <<
        \new DrumVoice {
        <<
        \drummode {
          \voiceOne
          \override Staff.Clef.stencil = ##f
          \time 5/8
          \bar ".|:"
          \repeat unfold 2 {hh8[ 8] hh8[ 8 8]}
          \repeat unfold 2 {hh8[ 8 8] hh8[ 8]}
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd8[ 16 16] sn8[ bd16 16 8] bd16[sn bd8] sn16[bd bd8 sn]
          bd8[ sn16 bd bd8] sn8[bd16 sn] bd16[sn bd8 sn16 bd] bd16[sn bd8]
        }
        }>>
      }
      >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 180\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
    }
  }
}

\markup \vspace #0.8

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold "2." }
    } <<
        \new DrumVoice {
        <<
        \drummode {
          \voiceOne
          \override Staff.Clef.stencil = ##f
          \time 5/8
          \bar ".|:"
          \repeat unfold 2 {hh8[ 8] hh8[ 8 8]}
          \repeat unfold 2 {hh8[ 8 8] hh8[ 8]}
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          r16 sn16[bd bd] r16 sn16[bd bd sn8] bd16[sn8 bd16] sn16[bd8 16 sn8]
          bd16[sn8 bd16 sn8] r16 sn16[bd bd] sn16[bd8 sn16 bd8] sn16[bd8 sn16]
        }
        }>>
      }
      >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 180\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
    }
  }
}

\markup \vspace #0.8

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold "3." }
    } <<
        \new DrumVoice {
        <<
        \drummode {
          \voiceOne
          \override Staff.Clef.stencil = ##f
          \time 5/8
          \bar ".|:"
          \repeat unfold 2 {hh8[ 8] hh8[ 8 8]}
          hh8[ 8 8] hh8[ 8] hh8[ 8 8] hh8[ hho]
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd8.[16] sn8.[8.] bd16[sn8.] sn8.[bd]
          bd8.[sn16 bd8] sn16[bd8.] bd8.[8.] sn16[bd8.]
        }
        }>>
      }
      >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 180\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
    }
  }
}

\markup \vspace #0.8

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold "4." }
    } <<
        \new DrumVoice {
        <<
        \drummode {
          \voiceOne
          \override Staff.Clef.stencil = ##f
          \time 5/8
          \bar ".|:"
          \repeat unfold 2 {hh8[ 8] hh8[ 8 8]}
          hh8[ 8 8] hh8[ 8] hh8[ 8 8] hh8[ hho]
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          r8 bd16[16] sn4 bd16 sn r16 bd16[8] sn8.[16 bd8]
          bd4 16[16] sn4 r16 sn16[bd8] bd16[16] sn4
        }
        }>>
      }
      >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 180\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
    }
  }
}

\markup \vspace #0.8

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold "5." }
    } <<
        \new DrumVoice {
        <<
        \drummode {
          \voiceOne
          \override Staff.Clef.stencil = ##f
          \time 5/8
          \bar ".|:"
          \repeat unfold 2 {hh8[ 8] hh8[ 8 8]}
          hh8[ 8 8] hh8[ 8] hh8[ 8 8] hh8[ hho]
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          r16 bd8[16] sn8.[bd8 sn16] r16 bd8. sn8.[bd8 16]
          r16 sn8.[bd8] r16 sn8. r16 bd8[16 sn8] r16 sn8.
        }
        }>>
      }
      >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 180\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
    }
  }
}

\markup \vspace #0.8

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold "6." }
    } <<
        \new DrumVoice {
        <<
        \drummode {
          \voiceOne
          \override Staff.Clef.stencil = ##f
          \time 5/8
          \bar ".|:"
          \repeat unfold 2 {hh8[ 8] hh8[ 8 8]}
          \repeat unfold 2 {hh8[ 8 8] hh8[ 8]}
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          r8. bd16 sn4 r16 bd16 bd8.[sn16] r16 bd8[16 sn8]
          bd8.[8.] sn8[bd] r16 bd8[8 16] sn8.[16]
        }
        }>>
      }
      >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 180\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
    }
  }
}

\markup \vspace #0.8

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold "7." }
    } <<
        \new DrumVoice {
        <<
        \drummode {
          \voiceOne
          \override Staff.Clef.stencil = ##f
          \time 5/8
          \bar ".|:"
          \repeat unfold 2 {hh8[ 8] hh8[ 8 8]}
          \repeat unfold 2 {hh8[ 8 8] hh8[ 8]}
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd16[sn bd bd] sn16[bd8 sn8 bd16] r16 sn8[bd16] sn8.[8.]
          bd16[sn sn bd sn8] bd16[16 sn8] bd16[sn8 bd16 sn8] sn16[bd8 sn16]
        }
        }>>
      }
      >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 180\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
    }
  }
}

\markup \vspace #0.8

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold "8." }
    } <<
        \new DrumVoice {
        <<
        \drummode {
          \voiceOne
          \override Staff.Clef.stencil = ##f
          \time 5/8
          \bar ".|:"
          \repeat unfold 2 {hh8[ 8] hh8[ 8 8]}
          hh8[ 8 8] hh8[ 8] hh8[ 8 8] hh8[ hho]
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd16[sn sn bd] sn16[bd bd sn8 16] r16 bd8[16] sn16[bd8 8 16]
          sn16[bd8 8 16] sn8[bd16 sn] bd16[sn8 bd bd16] sn16[bd8.]
        }
        }>>
      }
      >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 180\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
    }
  }
}

\markup \vspace #0.8

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold "9." }
    } <<
        \new DrumVoice {
        <<
        \drummode {
          \voiceOne
          \override Staff.Clef.stencil = ##f
          \time 5/8
          \bar ".|:"
          \repeat unfold 2 {hh8[ 8] hh8[ 8 8]}
          \repeat unfold 2 {hh8[ 8 8] hh8[ 8]}
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd16[16 sn16 16] r16 bd16[bd sn sn8] bd16[8 16] r16 sn16[bd bd sn8]
          sn8.[bd8 16] sn16[bd8 sn16] bd16[sn bd bd] r8 sn16[16 bd8]
        }
        }>>
      }
      >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 180\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
    }
  }
}

\markup \vspace #0.8

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold "10." }
    } <<
        \new DrumVoice {
        <<
        \drummode {
          \voiceOne
          \override Staff.Clef.stencil = ##f
          \time 5/8
          \bar ".|:"
          \repeat unfold 2 {hh8[ 8] hh8[ 8 8]}
          hh8[ 8 8] hh8[ 8] hh8[ 8 8] hh8[ hho]
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd8.[sn16] r16 bd8[sn8.] bd16[sn8 16] r16 bd8[sn16 bd8]
          bd8[sn16 bd8 16] sn8[bd16 sn] r16 bd8[16 8] sn16[bd8.]
        }
        }>>
      }
      >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 180\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
    }
  }
}

\markup \vspace #0.8

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold "11." }
    } <<
        \new DrumVoice {
        <<
        \drummode {
          \voiceOne
          \override Staff.Clef.stencil = ##f
          \time 5/8
          \bar ".|:"
          \repeat unfold 2 {hh8[ 8] hh8[ 8 8]}
          hh8[ 8 8] hh8[ 8] hh8[ 8 8] hh8[ hho]
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd16[sn sn bd] r16 sn16[sn bd sn bd] bd8[16 16] r16 sn8[bd16 sn8]
          bd16[sn8 bd bd16] sn16[bd8 16] bd16[sn8 16 16 bd16] sn4
        }
        }>>
      }
      >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 180\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
    }
  }
}