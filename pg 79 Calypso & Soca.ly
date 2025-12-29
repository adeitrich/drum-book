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
	title = \markup {"Calypso"}
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
          \time 2/4
          \bar ".|:"
          hh16 hh hho hh hh hh hho hh
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd8. bd16 r4
        }
        }>>
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
      instrumentName = \markup {\bold 2. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \time 2/4
          \bar ".|:"
          hh16 hh hho hh hh hh hho hh
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd8. bd16 r8 sn
        }
        }>>
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
      instrumentName = \markup {\bold 3. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \bar ".|:"
          hh16 hh hho hh hh hh sn^> hh
          hh16 hh hho hh hh sn sn^> hh |
          hh16 hh hho hh hh hh sn^> hh
          hh16 hh hho hh sn^> hh sn^> hh
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd8. bd16 r4 bd8. bd16 r4
          bd8. bd16 r4 bd8 bd r4
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

\markup \vspace #.8

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 4. }
    } <<
        \drummode {
          \stemUp
          \voiceOne
          \bar ".|:"
          \repeat unfold 4 {hh16 hh hho8}
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd8. bd16 r8 sn bd8. bd16 r8 sn16 sn
        }
        }>>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 100\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
    }
  }
}

\markup \vspace #1.5
\markup \halign #-10 \bold \fontsize #+4 "Soca"

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 1. }
    } <<
        \drummode {
          \stemUp
          \voiceOne
          \bar ".|:"
          \repeat unfold 4 {hh8 hho8}
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd8. sn16 bd8 sn bd8. sn16 bd8 sn16 sn
        }
        }>>
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
      instrumentName = \markup {\bold 1a. }
    } <<
        \drummode {
          \stemUp
          \voiceOne
          \bar ".|:"
          \repeat unfold 4 {cymr16 cymr rb8}
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd8. sn16 bd8 sn bd8. sn16 bd8 sn16 sn
        }
        }>>
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
      instrumentName = \markup {\bold 2. }
    } <<
        \drummode {
          \stemUp
          \voiceOne
          \bar ".|:"
          \repeat unfold 4 {hh8 hho8}
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd8. sn16 bd8 sn bd16 sn8 sn 16 bd8 sn
        }
        }>>
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
      instrumentName = \markup {\bold 2a. }
    } <<
        \drummode {
          \stemUp
          \voiceOne
          \bar ".|:"
          \repeat unfold 4 {cymr16 cymr rb8}
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd8. sn16 bd8 sn bd16 sn8 sn 16 bd8 sn
        }
        }>>
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
      instrumentName = \markup {\bold 3. }
    } <<
        \drummode {
          \stemUp
          \voiceOne
          \bar ".|:"
          \repeat unfold 4 {hh16 hh hho8}
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          <bd sn>8. sn16 bd8 sn <bd sn>8. sn16 bd8 sn16 sn
        }
        }>>
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
      instrumentName = \markup {\bold 3. }
    } <<
        \drummode {
          \stemUp
          \voiceOne
          \bar ".|:"
          \repeat unfold 4 {hh16 hh hho8}
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          sn8. sn16 bd8 bd r16 sn8 sn16 bd8 bd
        }
        }>>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 100\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
    }
  }
}

