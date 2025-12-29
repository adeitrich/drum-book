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
	title = \markup {"#22"}
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
      instrumentName = \markup {\bold "" }
    } <<
        \new DrumVoice {
        <<
        \drummode {
          \voiceOne
          \override Staff.Clef.stencil = ##f
          \time 6/8
          \bar ".|:"
          \repeat percent 2 {\repeat unfold 2 {hh8[ 8 8]}}
          \repeat percent 2 {\repeat unfold 2 {hh8[ 8 8]}}
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          r8 bd4 8 sn bd s2. r16 bd8 16 sn bd r16 bd8 16 sn bd
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
      instrumentName = \markup {\bold "" }
    } <<
        \new DrumVoice {
        <<
        \drummode {
          \voiceOne
          \override Staff.Clef.stencil = ##f
          \time 6/8
          \bar ".|:"
          \repeat percent 2 {\repeat unfold 2 {hh8[ 8 8]}}
          \repeat percent 2 {\repeat unfold 2 {hh8[ 8 8]}}
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          r16 sn8 bd16 sn bd r16 sn8 bd16 16 sn s2. r16 bd8 16 16 sn r16 sn8 bd16 sn sn
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

\markup \vspace #2
\markup \halign #-2.5 \bold \fontsize #+4 "#23"
\markup \vspace #1

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold "" }
    } <<
        \new DrumVoice {
        <<
        \drummode {
          \voiceOne
          \override Staff.Clef.stencil = ##f
          \time 6/8
          \bar ".|:"
          \repeat percent 2 {\repeat unfold 2 {hh8[ 8 8]}}
          \repeat percent 2 {\repeat unfold 2 {hh8[ 8 8]}}
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          r8 sn8 bd4 4 s2. r16 sn16 bd8 8 r16 sn16 bd8 8
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
      instrumentName = \markup {\bold "" }
    } <<
        \new DrumVoice {
        <<
        \drummode {
          \voiceOne
          \override Staff.Clef.stencil = ##f
          \time 6/8
          \bar ".|:"
          \repeat percent 2 {\repeat unfold 2 {hh8[ 8 8]}}
          \repeat percent 2 {\repeat unfold 2 {hh8[ 8 8]}}
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          r16 bd16 8 sn r16 sn16 8 bd s2. r16 bd16 sn8 bd r16 sn16 bd8 sn
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

\markup \vspace #2
\markup \halign #-2.5 \bold \fontsize #+4 "#24"
\markup \vspace #1

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold "" }
    } <<
        \new DrumVoice {
        <<
        \drummode {
          \voiceOne
          \override Staff.Clef.stencil = ##f
          \time 6/8
          \bar ".|:"
          \repeat percent 2 {\repeat unfold 2 {hh8[ 8 8]}}
          \repeat percent 2 {\repeat unfold 2 {hh8[ 8 8]}}
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          r8 bd8 4 sn8 bd s2. r16 bd16 8 sn16 bd r16 bd16 8 sn16 bd
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
      instrumentName = \markup {\bold "" }
    } <<
        \new DrumVoice {
        <<
        \drummode {
          \voiceOne
          \override Staff.Clef.stencil = ##f
          \time 6/8
          \bar ".|:"
          \repeat percent 2 {\repeat unfold 2 {hh8[ 8 8]}}
          \repeat percent 2 {\repeat unfold 2 {hh8[ 8 8]}}
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          r16 bd16 sn8 bd16 16 r16 sn16 bd8 sn16 16 s2. r16 bd16 8 sn16 16 r16 sn16 8 bd16 16
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
      instrumentName = \markup {\bold "" }
    } <<
        \new DrumVoice {
        <<
        \drummode {
          \voiceOne
          \override Staff.Clef.stencil = ##f
          \time 6/8
          \bar ".|:"
          \repeat percent 2 {\repeat unfold 2 {hh8[ 8 8]}}
          \repeat percent 2 {\repeat unfold 2 {hh8[ 8 8]}}
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          r16 sn8 bd16 16 sn r16 bd16 8 sn s2. r16 bd16 8 sn16 16 r16 sn8 bd16 sn sn
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