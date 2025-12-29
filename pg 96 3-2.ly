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
	title = \markup {"3-2"}
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
          \time 5/8
          \bar ".|:"
          hh8[8 16 16] r16 hh8[16] | hh8[8 16 16] r16 hh8[16]
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd4. sn4 | bd4 8 sn8.[bd16]
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
          \time 5/8
          \bar ".|:"
          hh8[8 16 16] r16 hh8[16] | hh8[8 16 16] r16 hh8[16]
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd4 8 sn8[bd] | bd4 8 sn16[bd8.]
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
          \time 5/8
          \bar ".|:"
          hh8[8 16 16] r16 hh8[16] | hh8[8 16 16] r16 hh8[16]
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd4 r16 bd sn8.[16] | bd4 r16 bd sn8[bd8]
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
          \time 5/8
          \bar ".|:"
          hh8[8 16 16] r16 hh8[16] | hh8[8 16 16] r16 hh8[16]
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd4 16[16] sn8.[bd16] | bd4 16[16] sn8[8] 
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
          \time 5/8
          \bar ".|:"
          hh8[8 16 16] r16 hh8[16] | hh8[8 16 16] r16 hh8[16]
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd8.[8.] sn8[bd8] | bd8.[sn8 bd16] sn16[bd8.]
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
          \time 5/8
          \bar ".|:"
          hh8[8 16 16] r16 hh8[16] | hh8[8 16 16] r16 hh8[16]
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd4. r16 sn8[bd16] | bd4 r16 sn r8 sn
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