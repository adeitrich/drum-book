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
    title = \markup {\fontsize #3 "$ Pockets"}
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
        instrumentName = \markup {\bold 1. }
      } <<
        \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          %\override Staff.Clef.stencil = ##f
          \omit Staff.TimeSignature
          
          hh8^\markup {\halign #2 \fontsize #-1 Str8} \repeat unfold 7 {hh8}
          
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          \repeat unfold 2 {bd4 sn}
        }
        }>>
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
        instrumentName = \markup { \bold 2. }
      } <<
        \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          %\override Staff.Clef.stencil = ##f
          \omit Staff.TimeSignature

          hh8^\markup {\halign #1 \fontsize #-1 "4 on Fl."} \repeat unfold 7 {hh8}
          
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          \repeat unfold 2 {bd4 <bd sn>}
        }
        }>>
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
        instrumentName = \markup {\bold 3. }
      } <<
        \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          %\override Staff.Clef.stencil = ##f
          \omit Staff.TimeSignature
          
          hh8^\markup {\halign #3 \fontsize #-1 RU} \repeat unfold 7 {hh8}
          
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd8 bd sn4 bd8 bd sn4
        }
        }>>
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
        instrumentName = \markup { \bold 4. }
      } <<
        \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          %\override Staff.Clef.stencil = ##f
          \omit Staff.TimeSignature

          hh8^\markup {\halign #2 \fontsize #-1 Rock} \repeat unfold 7 {hh8}
          
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd4 sn bd8 bd sn4
        }
        }>>
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
        instrumentName = \markup {\bold 5. }
      } <<
        \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          %\override Staff.Clef.stencil = ##f
          \omit Staff.TimeSignature
          
          hh8^\markup {\halign #2 \fontsize #-1 Pop} \repeat unfold 7 {hh8}
          
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd4 sn8 bd bd4 sn
        }
        }>>
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
        instrumentName = \markup { \bold 6. }
      } <<
        \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          %\override Staff.Clef.stencil = ##f
          \omit Staff.TimeSignature

          hh8^\markup {\halign #1 \fontsize #-1 "Pop +"} \repeat unfold 7 {hh8}
          
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd4 sn8 bd bd4 sn8 bd
        }
        }>>
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
        instrumentName = \markup {\bold 7. }
      } <<
        \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          %\override Staff.Clef.stencil = ##f
          \omit Staff.TimeSignature
          
          hh8^\markup {\halign #3 \fontsize #-1 Ch} \repeat unfold 7 {hh8}
          
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd4 sn8 bd4. sn4
        }
        }>>
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
        instrumentName = \markup { \bold 8. }
      } <<
        \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          %\override Staff.Clef.stencil = ##f
          \omit Staff.TimeSignature

          hh8^\markup {\halign #2 \fontsize #-1 "Ch +"} \repeat unfold 7 {hh8}
          
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd4 sn8 bd4 bd8 sn4
        }
        }>>
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
        instrumentName = \markup {\bold 9. }
      } <<
        \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          %\override Staff.Clef.stencil = ##f
          \omit Staff.TimeSignature
          
          hh8^\markup {\halign #1 \fontsize #-1 "Ch++"} \repeat unfold 7 {hh8}
          
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd4 sn8 bd4 bd8 sn bd
        }
        }>>
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
        instrumentName = \markup { \bold 10. }
      } <<
        \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          %\override Staff.Clef.stencil = ##f
          \omit Staff.TimeSignature

          hh8^\markup {\halign #1 \fontsize #-1 "Rev. Ch"} \repeat unfold 7 {hh8}
          
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd4 sn4. bd8 sn4
        }
        }>>
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
        instrumentName = \markup {\bold 11. }
      } <<
        \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          %\override Staff.Clef.stencil = ##f
          \omit Staff.TimeSignature
          
          hh8^\markup {\halign #1 \fontsize #-1 "Rev.Ch+"} \repeat unfold 7 {hh8}
          
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd4 sn4. bd8 sn bd
        }
        }>>
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
        instrumentName = \markup { \bold 12. }
      } <<
        \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          %\override Staff.Clef.stencil = ##f
          \omit Staff.TimeSignature

          hh8^\markup {\halign #1 \fontsize #-1 "Ringo"} \repeat unfold 7 {hh8}
          
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd4 sn4 bd8 bd sn bd
        }
        }>>
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