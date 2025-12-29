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
	title = \markup {"Off the Grid"}
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
          \omit Staff.TimeSignature
          \bar ".|:"
          hh16 sn hh hh sn^> hh hh sn hh sn hh hh sn^> hh hh sn |
          hh sn sn hh sn^> hh hh sn hh sn hho8 sn4^>
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd8. 16 r4 r8 bd r4 | bd8. 16 r4 r8 bd r4
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
          \omit Staff.TimeSignature
          \bar ".|:"
          hh16 sn hh sn^> hh hh sn hh r sn hho8 sn16 hh hh sn |
          hh sn hh sn^> r hh sn hh hh sn hho8 sn hh16 sn
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd4 r8. bd16 r8 bd r4 | bd8 8 r4 r8 bd r4
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
          \omit Staff.TimeSignature
          \bar ".|:"
          hh16 sn hh sn^> hh sn hh hh sn^> hh hh sn r hh hh sn |
          hh sn hh sn hh sn hh hh sn^> hh sn hh sn hh hh sn
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd4 r8. bd16 s2 | bd8. 16 r8 bd r16 bd8 16 r4
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
          \omit Staff.TimeSignature
          \bar ".|:"
          hh8 hh sn16 hh8 sn16 hh sn hh hh sn hh hh sn |
          hh8 sn16 hho r sn hh hh sn hh hh sn hho8 sn
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd8. 16 r4 r8 bd r16 bd8. | r8. bd16 r8. bd16 r4 bd
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
          \omit Staff.TimeSignature
          \bar ".|:"
          hh16 sn sn hh sn^> hh hh sn r sn hho8 sn16^> hh hh sn |
          hh sn hh hh sn8^> hh16 sn^> r sn hho8 sn16^> hh hh sn
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd8. 16 r4 r8 bd r4 | bd8. 16 r bd8. r8 bd r4
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
          \omit Staff.TimeSignature
          \bar ".|:"
          r16 hh8 16 sn16^> hh hh sn r16 sn hh8 sn16^> hh8 sn16 |
          r16 hh sn8 sn16^> hh8 sn16 r hh sn8 sn16^> sn16^> hho8
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd4 r bd8. 16 r8 bd | bd8. 16 r8 bd bd8. 16 r4
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
