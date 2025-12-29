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
	title = \markup {"2-3-2-2"}
  %subtitle = \markup {"Part 1"}
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
        <<
        \drummode {
          \stemUp
          \voiceOne
          %\override Staff.Clef.stencil = ##f
          \time 9/8
          \bar ".|:"
          hh8[ 8] hh8[ 8 8] hh8[ 8] hh8[ 8]| hh8[ 8] hh8[ 8 8] hh8[ 8] hh8[ 8]
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd4 sn8[16 bd sn sn] bd4 sn16[bd8 16] | bd8[8] sn16[bd sn sn bd8] bd16[sn bd bd] sn4
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

\markup \vspace #1.5

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 2. }
    } <<
        \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          %\override Staff.Clef.stencil = ##f
          \time 9/8
          \bar ".|:"
          hh8[ 8] hh8[ 8 8] hh8[ 8 8 hho8] | hh8[ 8] hh8[ 8 8] hh8[ 8 8 8]
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd8[8] sn16[bd bd8 8] bd8.[16] sn4 | bd16[sn8 bd16] sn16[bd8 16 8] bd16[sn bd bd] sn4
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

\markup \vspace #1.5

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 3. }
    } <<
        \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          %\override Staff.Clef.stencil = ##f
          \time 9/8
          \bar ".|:"
          \repeat unfold 2 {hh8[ 8] hh8[ 8 8] hh8[ 8 8 8]}
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd16[sn bd8] sn16[bd sn8 bd16 sn] bd8[16 16] sn8[bd] | bd16[8 16] sn16[bd8 sn16 bd sn] bd8[16 16] sn8.[16]
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

\markup \vspace #1.5

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 4. }
    } <<
        \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          %\override Staff.Clef.stencil = ##f
          \time 9/8
          \bar ".|:"
          hh8[ 8] hh8[ 8 8] hh8[ 8 8 8] | hh8[ 8] hh8[ 8 8] hh8[ 8 8 hho]
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd8.[16] sn8[bd16 sn8 bd16] bd8[8] sn16[bd8 16] | bd16[sn8 bd16] sn16[bd sn sn8 bd16] bd16[sn8 bd16] sn4
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
\markup \vspace #1.5

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 5. }
    } <<
        \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          %\override Staff.Clef.stencil = ##f
          \time 9/8
          \bar ".|:"
          hh8[ 8] hh8[ 8 8] hh8[ 8] hh8[ 8]| hh8[ 8] hh8[ 8 8] hh8[ 8] hh8[ 8]
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd8[16 16] r16 sn[bd bd sn8] bd16[sn bd8] sn16[bd8 16] | bd8.[sn16] r16 bd16[sn bd sn sn] bd8.[16] r8 sn
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
\markup \vspace #1.5

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 6. }
    } <<
        \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          %\override Staff.Clef.stencil = ##f
          \time 9/8
          \bar ".|:"
          hh8[ 8] hh8[ 8 8] hh8[ 8 8 8] | hh8[ 8] hh8[ 8 8] hh8[ 8 8 hho]
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd8.[16] sn8.[bd16 8] bd8.[16] sn8[bd] | bd8.[16] sn8.[bd16 16 sn] bd16[sn8 bd16] sn16[bd8.]
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

\markup \vspace #1.5

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 7. }
    } <<
        \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          %\override Staff.Clef.stencil = ##f
          \time 9/8
          \bar ".|:"
          hh8[ 8] hh8[ 8 8] hh8[ 8] hh8[ 8]| hh8[ 8] hh8[ 8 8] hh8[ 8] hh8[ hho8]
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd8[8] sn8[bd8. sn16] bd8[16 16] sn8[bd16 sn] | bd16[sn8 bd16] sn16[bd16 8. sn16] bd16[sn8 bd16] sn4
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

\markup \vspace #1.5

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 8. }
    } <<
        \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          %\override Staff.Clef.stencil = ##f
          \time 9/8
          \bar ".|:"
          \repeat unfold 2 {hh8[ 8] hh8[ 8 8] hh8[ 8 8 8]}
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd16[8.] sn16[bd8. 8] bd8.[16] sn16[bd8.] | bd16[sn8 bd16] sn16[bd8. sn16 16] bd8.[16] sn8[bd]
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

\markup \vspace #1.5

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 9. }
    } <<
        \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          %\override Staff.Clef.stencil = ##f
          \time 9/8
          \bar ".|:"
          hh8[ 8] hh8[ 8 8] hh8[ 8] hh8[ hho8]| hh8[ 8] hh8[ 8 8] hh8[ 8] hh8[ hho8]
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd8[16 16] sn8[bd16 8.] bd16[sn bd bd] sn16[bd8.] | bd8[bd] sn16[bd sn sn8.] bd16[sn sn bd] sn4
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
