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
    title = \markup {\fontsize #3 "Hands & Feet (Melodic)"}
    %copyright = \markup { \override #'( (font-name . "Linux Libertine O")) {"© 2025 Larry Beers"}}
  tagline = ""
}

\markup \vspace #2.5
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
          \bar ".|:"
          \tuplet 3/2 {bd8 hh sn}
          \tuplet 3/2 {bd sn hho}
          \tuplet 3/2 {hhp sn hho}
          \tuplet 3/2 {hhp hh sn}
          \bar ":|."          
        }
        >>
      }
      >>
      \layout {
        indent = 0  % Minimize left margin for embedded score
        line-width = 77\mm  % Set desired width here; adjust as needed
        ragged-right = ##f  % Allow stretching to fill the line-width
        \Voice
        \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
        (cons (* d 4) (* d 4))))
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
          \bar ".|:"
          \tuplet 3/2 {bd8 hh sn}
          \tuplet 3/2 {hhp sn hh}
          \tuplet 3/2 {bd sn hho}
          \tuplet 3/2 {hhp hh sn}
          \bar ":|."          
        }
        >>
      }
      >>
      \layout {
        indent = 0  % Minimize left margin for embedded score
        line-width = 77\mm  % Set desired width here; adjust as needed
        ragged-right = ##f  % Allow stretching to fill the line-width
        \Voice
        \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
        (cons (* d 4) (* d 4))))
      }
    }
  }
}

\markup \vspace #1.2

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
          \bar ".|:"
          \tuplet 3/2 {hh8 sn bd}
          \tuplet 3/2 {sn hh bd}
          \tuplet 3/2 {sn hho hhp}
          \tuplet 3/2 {hh sn hhp}
          \bar ":|."          
        }
        >>
      }
      >>
      \layout {
        indent = 0  % Minimize left margin for embedded score
        line-width = 77\mm  % Set desired width here; adjust as needed
        ragged-right = ##f  % Allow stretching to fill the line-width
        \Voice
        \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
        (cons (* d 4) (* d 4))))
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
          \bar ".|:"
          \tuplet 3/2 {hh 8 sn bd}
          \tuplet 3/2 {sn hho hhp}
          \tuplet 3/2 {sn hh bd}
          \tuplet 3/2 {hh sn bd}
          \bar ":|."          
        }
        >>
      }
      >>
      \layout {
        indent = 0  % Minimize left margin for embedded score
        line-width = 77\mm  % Set desired width here; adjust as needed
        ragged-right = ##f  % Allow stretching to fill the line-width
        \Voice
        \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
        (cons (* d 4) (* d 4))))
      }
    }
  }
}

\markup \vspace #1

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
          \bar ".|:"
          hh16 sn bd sn hho hhp hh sn bd sn hho hhp
          \tuplet 6/4 {hh16 sn bd sn hho hhp}
          \bar ":|."          
        }
        >>
      }
      >>
      \layout {
        indent = 0  % Minimize left margin for embedded score
        line-width = 77\mm  % Set desired width here; adjust as needed
        ragged-right = ##f  % Allow stretching to fill the line-width
        \Voice
        \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
        (cons (* d 4.5) (* d 4.5))))
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
          \bar ".|:"
          hh16 sn hhp sn hh bd hh sn hhp sn hh bd
          \tuplet 6/4 {hh16 sn bd sn hh bd}
          \bar ":|."          
        }
        >>
      }
      >>
      \layout {
        indent = 0  % Minimize left margin for embedded score
        line-width = 77\mm  % Set desired width here; adjust as needed
        ragged-right = ##f  % Allow stretching to fill the line-width
        \Voice
        \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
        (cons (* d 4.5) (* d 4.5))))
      }
    }
  }
}

\markup \vspace #1

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
          \bar ".|:"
          \tuplet 6/4 {hh16 sn bd sn hho hhp}
          \tuplet 6/4 {hh sn bd hh sn bd}
          \tuplet 6/4 {sn hho hhp hh sn bd}
          \tuplet 6/4 {sn hho hhp sn hho hhp}
          \bar ":|."          
        }
        >>
      }
      >>
      \layout {
        indent = 0  % Minimize left margin for embedded score
        line-width = 77\mm  % Set desired width here; adjust as needed
        ragged-right = ##f  % Allow stretching to fill the line-width
        \Voice
        \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
        (cons (* d 4.5) (* d 4.5))))
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
          \bar ".|:"
          \tuplet 6/4 {hh16 sn hhp sn hh bd}
          \tuplet 6/4 {hh sn hhp hh sn hhp}
          \tuplet 6/4 {sn hh bd hh sn hhp}
          \tuplet 3/2 {sn hh bd} sn8
          \bar ":|."          
        }
        >>
      }
      >>
      \layout {
        indent = 0  % Minimize left margin for embedded score
        line-width = 77\mm  % Set desired width here; adjust as needed
        ragged-right = ##f  % Allow stretching to fill the line-width
        \Voice
        \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
        (cons (* d 4.5) (* d 4.5))))
      }
    }
  }
}

\markup \vspace #1

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
          \bar ".|:"
          \tuplet 3/2 {hh8 bd sn}
          \tuplet 3/2 {sn bd hh}
          \tuplet 3/2 {sn hhp hh}
          \tuplet 3/2 {hho hhp sn}
          \bar ":|."          
        }
        >>
      }
      >>
      \layout {
        indent = 0  % Minimize left margin for embedded score
        line-width = 77\mm  % Set desired width here; adjust as needed
        ragged-right = ##f  % Allow stretching to fill the line-width
        \Voice
        \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
        (cons (* d 4) (* d 4))))
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
          \bar ".|:"
          \tuplet 3/2 {hh8 bd sn}
          \tuplet 3/2 {sn hhp hh}
          \tuplet 3/2 {sn bd hh}
          \tuplet 3/2 {hho hhp sn}
          \bar ":|."          
        }
        >>
      }
      >>
      \layout {
        indent = 0  % Minimize left margin for embedded score
        line-width = 77\mm  % Set desired width here; adjust as needed
        ragged-right = ##f  % Allow stretching to fill the line-width
        \Voice
        \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
        (cons (* d 4) (* d 4))))
      }
    }
  }
}

\markup \vspace #1.2

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
          \bar ".|:"
          \tuplet 3/2 {bd8 hhp hh}
          \tuplet 3/2 {bd hhp sn}
          \tuplet 3/2 {hhp bd sn}
          \tuplet 3/2 {hhp bd hh}
          \bar ":|."          
        }
        >>
      }
      >>
      \layout {
        indent = 2.8  % Minimize left margin for embedded score
        line-width = 77\mm  % Set desired width here; adjust as needed
        ragged-right = ##f  % Allow stretching to fill the line-width
        \Voice
        \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
        (cons (* d 4) (* d 4))))
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
          \bar ".|:"
          \tuplet 3/2 {bd8 hhp hho}
          \tuplet 3/2 {hhp bd sn}
          \tuplet 3/2 {bd hhp sn}
          \tuplet 3/2 {hhp bd hh}
          \bar ":|."          
        }
        >>
      }
      >>
      \layout {
        indent = 0  % Minimize left margin for embedded score
        line-width = 77\mm  % Set desired width here; adjust as needed
        ragged-right = ##f  % Allow stretching to fill the line-width
        \Voice
        \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
        (cons (* d 4) (* d 4))))
      }
    }
  }
}

\markup \vspace #1.2

\markup {
  \fill-line {
    \score {
      \new DrumStaff \with {
        drumStyleTable = #(alist->hash-table LBdrums)
        % Optional: Add label to the left
        instrumentName = \markup {\bold 13. }
      } <<
        \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          %\override Staff.Clef.stencil = ##f
          \omit Staff.TimeSignature
          \bar ".|:"
          bd8. hhp32 hh sn16 bd hh sn hho hhp hh sn bd sn hho hhp
          \bar ":|."          
        }
        >>
      }
      >>
      \layout {
        indent = 2.8  % Minimize left margin for embedded score
        line-width = 77\mm  % Set desired width here; adjust as needed
        ragged-right = ##f  % Allow stretching to fill the line-width
        \Voice
        \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
        (cons (* d 4.5) (* d 4.5))))
      }
    }
    \score {
      \new DrumStaff \with {
        drumStyleTable = #(alist->hash-table LBdrums)
        instrumentName = \markup { \bold 14. }
      } <<
        \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          %\override Staff.Clef.stencil = ##f
          \omit Staff.TimeSignature
          \bar ".|:"
          bd8. hhp32 hh sn16 hhp32 hh sn16 bd sn hho hhp bd sn4^>
          \bar ":|."          
        }
        >>
      }
      >>
      \layout {
        indent = 0  % Minimize left margin for embedded score
        line-width = 77\mm  % Set desired width here; adjust as needed
        ragged-right = ##f  % Allow stretching to fill the line-width
        \Voice
        \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
        (cons (* d 4.5) (* d 4.5))))
      }
    }
  }
}

\markup \vspace #1.2

\markup {
  \fill-line {
    \score {
      \new DrumStaff \with {
        drumStyleTable = #(alist->hash-table LBdrums)
        % Optional: Add label to the left
        instrumentName = \markup {\bold 15. }
      } <<
        \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          %\override Staff.Clef.stencil = ##f
          \omit Staff.TimeSignature
          \bar ".|:"
          bd16 hhp32 hh sn16 bd hhp32 hh sn16 bd bd sn hho hhp bd bd4
          \bar ":|."          
        }
        >>
      }
      >>
      \layout {
        indent = 2.8  % Minimize left margin for embedded score
        line-width = 77\mm  % Set desired width here; adjust as needed
        ragged-right = ##f  % Allow stretching to fill the line-width
        \Voice
        \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
        (cons (* d 4.5) (* d 4.5))))
      }
    }
    \score {
      \new DrumStaff \with {
        drumStyleTable = #(alist->hash-table LBdrums)
        instrumentName = \markup { \bold 16. }
      } <<
        \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          %\override Staff.Clef.stencil = ##f
          \omit Staff.TimeSignature
          \bar ".|:"
          hho16 hhp hh sn bd8 hho16 hhp hh sn bd8 sn16 bd8 bd16
          \bar ":|."          
        }
        >>
      }
      >>
      \layout {
        indent = 0  % Minimize left margin for embedded score
        line-width = 77\mm  % Set desired width here; adjust as needed
        ragged-right = ##f  % Allow stretching to fill the line-width
        \Voice
        \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
        (cons (* d 4.5) (* d 4.5))))
      }
    }
  }
}

\markup \vspace #1.2

\markup {
  \fill-line {
    \score {
      \new DrumStaff \with {
        drumStyleTable = #(alist->hash-table LBdrums)
        % Optional: Add label to the left
        instrumentName = \markup {\bold 17. }
      } <<
        \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          %\override Staff.Clef.stencil = ##f
          \omit Staff.TimeSignature
          \bar ".|:"
          hho16 hhp8 sn16 hho hhp8 sn16 hho hhp sn hho hhp sn bd8
          \bar ":|."          
        }
        >>
      }
      >>
      \layout {
        indent = 2.8  % Minimize left margin for embedded score
        line-width = 77\mm  % Set desired width here; adjust as needed
        ragged-right = ##f  % Allow stretching to fill the line-width
        \Voice
        \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
        (cons (* d 4.5) (* d 4.5))))
      }
    }
    \score {
      \new DrumStaff \with {
        drumStyleTable = #(alist->hash-table LBdrums)
        instrumentName = \markup { \bold 18. }
      } <<
        \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          %\override Staff.Clef.stencil = ##f
          \omit Staff.TimeSignature
          \bar ".|:"
          hhp16 hh sn hhp hh sn hhp hh sn bd hh sn bd8 sn^>
          \bar ":|."          
        }
        >>
      }
      >>
      \layout {
        indent = 0  % Minimize left margin for embedded score
        line-width = 77\mm  % Set desired width here; adjust as needed
        ragged-right = ##f  % Allow stretching to fill the line-width
        \Voice
        \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
        (cons (* d 4.5) (* d 4.5))))
      }
    }
  }
}

\markup \vspace #1.2

\markup {
  \fill-line {
    \score {
      \new DrumStaff \with {
        drumStyleTable = #(alist->hash-table LBdrums)
        % Optional: Add label to the left
        instrumentName = \markup {\bold 19. }
      } <<
        \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          %\override Staff.Clef.stencil = ##f
          \omit Staff.TimeSignature
          \bar ".|:"
          bd16 hhp32 hh sn16 bd hhp32 hh sn16 bd bd sn hho hhp bd sn4
          \bar ":|."          
        }
        >>
      }
      >>
      \layout {
        indent = 2.8  % Minimize left margin for embedded score
        line-width = 77\mm  % Set desired width here; adjust as needed
        ragged-right = ##f  % Allow stretching to fill the line-width
        \Voice
        \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
        (cons (* d 4.5) (* d 4.5))))
      }
    }
    \score {
      \new DrumStaff \with {
        drumStyleTable = #(alist->hash-table LBdrums)
        instrumentName = \markup { \bold 20. }
      } <<
        \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          %\override Staff.Clef.stencil = ##f
          \omit Staff.TimeSignature
          \bar ".|:"
          bd16 hh sn hhp hh sn bd hh sn hhp hh sn bd8 sn^>
          \bar ":|."          
        }
        >>
      }
      >>
      \layout {
        indent = 0  % Minimize left margin for embedded score
        line-width = 77\mm  % Set desired width here; adjust as needed
        ragged-right = ##f  % Allow stretching to fill the line-width
        \Voice
        \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
        (cons (* d 4.5) (* d 4.5))))
      }
    }
  }
}