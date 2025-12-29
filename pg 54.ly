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
	title = \markup {"p.54"}
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
          %\omit Staff.TimeSignature
          \time 6/8
          \bar ".|:"
          hho8 hhp hh hho8 hhp hh hho8 hhp hh hh hho hhp hh hh hho hhp hh hh hho hhp hho hhp hho hhp
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
          %\omit Staff.TimeSignature
          \time 2/4
          \bar ".|:"
          hhp8 hho16 hhp r16 hho hhp8 hho16 hhp8 hho16 hhp8 hho hhp16 hho8 hhp16 hho8 hhp16 hho r16 hhp16 hho8 hhp16 hho8.
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
          %\omit Staff.TimeSignature
          \time 2/4
          \bar ".|:"
          \repeat percent 2 {hh16 hh hho8 hh16 hh hho8}
          \repeat percent 2 {hh16 hh hho hhp hh16 hh hho hhp}
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          hhp4 hhp4 s2 s2 s2
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
          %\omit Staff.TimeSignature
          \time 2/4
          \bar ".|:"
          \repeat percent 2 {hho8 hh16 hh hho8 hh16 hh }
          \repeat percent 2 {hho16 hhp hh hh hho16 hhp hh hh}
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          r8 hhp8 r8 hhp8 s2 s2 s2
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
          %\omit Staff.TimeSignature
          \time 2/4
          \bar ".|:"
          \repeat percent 2 {hh16 hho8 hh16 hh16 hho8 hh16}
          \repeat percent 2 {hh16 hho hhp hh hh16 hho hhp hh}
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          r8. hhp16 r8. hhp16 s2 s2 s2
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
          %\omit Staff.TimeSignature
          \time 2/4
          \bar ".|:"
          hho16 hhp hh hho16 hhp hh hho16 hhp hh hho16 hhp hh hho hhp hho hhp
          hh hho16 hhp hh hho16 hhp hh hho16 hhp hh hho16 hhp hh hho16 hhp8
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
      instrumentName = \markup {\bold 7. }
    } <<
        \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \override Staff.Clef.stencil = ##f
          %\omit Staff.TimeSignature
          \time 2/4
          \bar ".|:"
          hh8 hho <hh sn> hh hh8 hho <hh sn> hh hh8 hho <hh sn> hho hh8 hho <hh sn> hh
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd4 hhp r8 bd8 hhp4 r8 bd8 hhp bd hhp bd hhp4
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
      instrumentName = \markup {\bold 8. }
    } <<
        \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \override Staff.Clef.stencil = ##f
          %\omit Staff.TimeSignature
          \time 2/4
          \bar ".|:"
          hh16 hh hho8 <hh sn> hh hh8 hh <hh sn> hho hh8 hh <hh sn> hho hh8 hho <hh sn> hh
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd4 hhp8 bd bd4 r4 <bd hhp>4 r4 bd8 bd hhp4
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
      instrumentName = \markup {\bold 9. }
    } <<
        \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \override Staff.Clef.stencil = ##f
          %\omit Staff.TimeSignature
          \time 2/4
          \bar ".|:"
          hh8 hho <hh sn> hh hh8 hho <hh sn> hh hh8 hho <hh sn> hho hh8 hho <hh sn> hh
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd4 hhp bd hhp bd hhp <bd hhp> hhp
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

