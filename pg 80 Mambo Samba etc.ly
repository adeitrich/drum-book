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
	title = \markup {"Mambo"}
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
          \bar ".|:"
          hh4 hh hh8 hh4 hh8
          hh4 hh8 hh r hh4 hh8
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          \repeat unfold 2 {
          r4 ss8 bd r4 <bd \tweak stencil #circle tommh>
          }
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
      instrumentName = \markup {\bold 1a. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \bar ".|:"
          hh4 <hh ss>8 bd hh hh <bd \tweak stencil #circle tommh> hh
          hh4 <hh ss>8 bd r hh <bd \tweak stencil #circle tommh> hh
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          
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
\markup \halign #-7 \bold \fontsize #+4 "Samba"
\markup \vspace #1

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
          \bar ".|:"
          \repeat unfold 4 {cymr8^> cymr16 cymr}
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          \repeat unfold 4 {<bd hhp>8. bd16}
        }
        }>>
      }
    >>
      \layout {
        indent = 0  % Minimize left margin for embedded score
        line-width = 78\mm  % Set desired width here; adjust as needed
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
          \bar ".|:"
          \repeat unfold 4 {cymr8^> cymr16 cymr}
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          \repeat unfold 4 {bd8 hhp16 bd}
        }
        }>>
      }
    >>
      \layout {
        indent = 0
        line-width = 78\mm  % Set desired width here; adjust as needed
        ragged-right = ##f
      }
    }
  }
}

\markup \vspace #.8

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
          \bar ".|:"
          \repeat unfold 4 {cymr16 cymr cymr8^>}
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          \repeat unfold 4 {<bd hhp>8. bd16}
        }
        }>>
      }
    >>
      \layout {
        indent = 0  % Minimize left margin for embedded score
        line-width = 78\mm  % Set desired width here; adjust as needed
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
          \bar ".|:"
          \repeat unfold 4 {cymr16 cymr cymr8^>}
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          \repeat unfold 4 {bd8 hhp16 bd}
        }
        }>>
      }
    >>
      \layout {
        indent = 0
        line-width = 78\mm  % Set desired width here; adjust as needed
        ragged-right = ##f
      }
    }
  }
}

\markup \vspace #.8

\markup {
  \fill-line {
    \score {
      \new DrumStaff \with {
        drumStyleTable = #(alist->hash-table LBdrums)
        % Optional: Add label to the left
        instrumentName = \markup {\circle A }
      } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \bar ".|:"
          sn8 sn sn16 sn8 sn16 r16 sn8 sn16 r sn sn8
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          
        }
        }>>
      }
    >>
      \layout {
        indent = 0  % Minimize left margin for embedded score
        line-width = 78\mm  % Set desired width here; adjust as needed
        ragged-right = ##f  % Allow stretching to fill the line-width
      }
    }
    \score {
      \new DrumStaff \with {
        drumStyleTable = #(alist->hash-table LBdrums)
        instrumentName = \markup {\circle B }
      } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \bar ".|:"
          sn8 sn sn sn16 sn r sn8 sn16 r sn sn8
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          
        }
        }>>
      }
    >>
      \layout {
        indent = 0
        line-width = 78\mm  % Set desired width here; adjust as needed
        ragged-right = ##f
      }
    }
  }
}

\markup \vspace #2
\markup \halign #-9.5 \bold \fontsize #+4 "Zouk"
\markup \vspace #1

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 1. }
    } <<
        \drummode {
          \stemUp
          \time 2/4
          \voiceOne
          \bar ".|:"
          \repeat percent 3 {
            hh8^> hh16 hh^> r hh hh8^>
          }
          hh8 hh8^> hh16 hh hh8^>
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd4 bd8 sn
          s2 s2
          bd8. sn16 bd8 sn
        }
        }>>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 180\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
    }
  }
}

