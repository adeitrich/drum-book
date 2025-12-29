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
	title = \markup {"HH/SD Dark Sheet"}
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
          \override Staff.Clef.stencil = ##f
          \omit Staff.TimeSignature
          \bar ".|:"
          hho16 hhp r8 hho16 hhp r8 hho16 hhp hho hhp hho hhp r8 | r8 hho16 hhp r8 hho16 hhp r8 hho16 hhp hho16 hhp hho16 hhp
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
      \Voice
      \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
          (cons (* d 4.2) (* d 4.2))))
    }
  }
}

\markup \vspace #1

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
          \override Staff.Clef.stencil = ##f
          \omit Staff.TimeSignature
          \bar ".|:"
          <hho sn>16 hhp r8 <hho sn>16 hhp r8 <hho sn>16 hhp <hho sn> hhp <hho sn> hhp r8 | 
          r8 <hho sn>16 hhp r8 <hho sn>16 hhp r8 <hho sn>16 hhp <hho sn>16 hhp <hho sn>16 hhp
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
      \Voice
      \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
          (cons (* d 4.2) (* d 4.2))))
    }
  }
}

\markup \vspace #1

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
          \override Staff.Clef.stencil = ##f
          \omit Staff.TimeSignature
          \bar ".|:"
          sn16 hho hhp8 sn16 hho hhp8 sn16 hho hhp sn16 hho hhp sn16 hho |
          hhp8 sn16 hho hhp8 sn16 hho hhp16 sn hho hhp sn hho hhp8
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
      \Voice
      \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
          (cons (* d 4.2) (* d 4.2))))
    }
  }
}

\markup \vspace #1

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
          \override Staff.Clef.stencil = ##f
          \omit Staff.TimeSignature
          \bar ".|:"
          hho16 hhp hh sn hho16 hhp hh sn hho16 hhp hh sn hho hhp r8 |
          hho16 hhp hh sn hho hhp hho hhp hh sn hho hhp hho hhp sn8
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
      \Voice
      \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
          (cons (* d 4.2) (* d 4.2))))
    }
  }
}

\markup \vspace #1

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
          \override Staff.Clef.stencil = ##f
          \omit Staff.TimeSignature
          \bar ".|:"
          hho16 hhp hh sn hho hhp hho hhp hh sn hho hhp hho hhp hh sn |
          hho16 hhp hh sn hh8 hho16 hhp hh sn hh8 hho16 hhp hh sn
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
      \Voice
      \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
          (cons (* d 4.2) (* d 4.2))))
    }
  }
}

\markup \vspace #1

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
          \override Staff.Clef.stencil = ##f
          \omit Staff.TimeSignature
          \bar ".|:"
          sn16 hho hhp sn hho hhp sn hho hhp sn hho hhp sn hho hhp sn |
          hho hhp8 sn16 hho hhp8 sn16 hho hhp sn hho hhp sn hho hhp
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
      \Voice
      \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
          (cons (* d 4.2) (* d 4.2))))
    }
  }
}