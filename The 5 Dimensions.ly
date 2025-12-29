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
	title = \markup {"The 5 Dimensions"}
  %subtitle = \markup {"Part 1"}
	%copyright = \markup { \override #'( (font-name . "Linux Libertine O")) {"© 2025 Larry Beers"}}
  tagline = ""
}

\markup \vspace #3
\markup \halign #-1.5 \bold \fontsize #-1 "Introducing the Housing game. Repeat each Dimension 4x."
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
          \stemUp
          \voiceOne
          \override Staff.Clef.stencil = ##f
          \omit Staff.TimeSignature
          \bar ".|:"
          \repeat percent 2 {\repeat percent 2 {sn8_"R" 8_"L" 8_"R" 8_"R" 8_"L" 8_"R" 8_"L" 8_"L"}}
          \bar ":..:"
          \repeat percent 2 {\repeat percent 2 {sn8 8^\markup {\fontsize #-2 "(same sticking)"} 8 8 8 8 8 8}}
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          s1^\markup {\box \halign #1.5 "1st"} s1 s1 s1
          bd2^\markup {\box \halign #0.8 "2nd"} 2 s1 s1 s1
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
          \stemUp
          \voiceOne
          \override Staff.Clef.stencil = ##f
          \omit Staff.TimeSignature
          
          \bar ".|:"
          \repeat percent 2 {\repeat percent 2 {sn8 8 8 8 8 8 8 8}}
          \bar ":..:"
          \repeat percent 2 {\repeat percent 2 {sn8 8 8 8 8 8 8 8}}
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          hhp2^\markup {\box \halign #1.5 "3rd"} 2 s1 s1 s1
          bd2^\markup {\box \halign #0.8 "4th"} hhp s1 s1 s1
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
          \stemUp
          \voiceOne
          \override Staff.Clef.stencil = ##f
          \omit Staff.TimeSignature
          
          \bar ".|:"
          \repeat percent 2 {\repeat percent 2 {sn8 8 8 8
          \tweak stencil #circle tommh
          \tweak stencil #circle toml
          \tweak stencil #circle tommh
          \tweak stencil #circle tommh
          }}
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd2^\markup {\box \halign #1.5 "5th"} hhp2 s1 s1 s1
          
        }
        }>>
      }
      >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 93\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
    }
  }
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
          \stemUp
          \voiceOne
          \override Staff.Clef.stencil = ##f
          \omit Staff.TimeSignature
          
          \bar ".|:"
          \repeat percent 2 {sn8_"R" 8_"L" 8_"L" 8_"R" 8_"L" 8_"L" 8_"L" 8_"R"
          8_"L" 8_"R" 8_"R" 8_"L" 8_"R" 8_"R" 8_"R" 8_"L"
          }
          \bar ":..:"
          \repeat percent 2 {sn8 8^\markup {\fontsize #-2 "(same sticking)"} 8 8 8 8 8 8
          8 8 8 8 8 8 8 8 }
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          s1^\markup {\box \halign #1.5 "1st"} s1 s1 s1
          bd2^\markup {\box \halign #0.8 "2nd"} 2 s1 s1 s1
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
          \stemUp
          \voiceOne
          \override Staff.Clef.stencil = ##f
          \omit Staff.TimeSignature
          
          \bar ".|:"
          \repeat percent 2 {\repeat percent 2 {sn8 8 8 8 8 8 8 8}}
          \bar ":..:"
          \repeat percent 2 {\repeat percent 2 {sn8 8 8 8 8 8 8 8}}
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          hhp2^\markup {\box \halign #1.5 "3rd"} 2 s1 s1 s1
          bd2^\markup {\box \halign #0.8 "4th"} hhp s1 s1 s1
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
          \stemUp
          \voiceOne
          \override Staff.Clef.stencil = ##f
          \omit Staff.TimeSignature
          
          \bar ".|:"
          \repeat percent 2 {
          \tweak stencil #circle toml8
          \tweak stencil #circle tommh
          \tweak stencil #circle tommh
          \tweak stencil #circle toml
          sn8 8 8 \tweak stencil #circle toml

          \tweak stencil #circle tommh
          \tweak stencil #circle toml
          \tweak stencil #circle toml
          \tweak stencil #circle tommh
          sn8 8 8 \tweak stencil #circle tommh
          }
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd2^\markup {\box \halign #1.5 "5th"} hhp2 bd hhp s1 s1
          
        }
        }>>
      }
      >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 93\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
    }
  }
}

\markup \vspace #1
\markup \halign #-1.8 \bold \fontsize #-1 "* You can take liberties w/the Housing game"
\markup \vspace #1