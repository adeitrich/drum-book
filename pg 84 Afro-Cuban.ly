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
	title = \markup {"Afro-Cuban"}
  %subtitle = \markup {\fontsize #-2 "Left foot plays Quarters, 8ths, +'s, or the BD part."}
	%copyright = \markup { \override #'( (font-name . "Linux Libertine O")) {"© 2025 Larry Beers"}}
  tagline = ""
}

\markup \vspace #2.5
\markup \bold "*"

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
          \time 12/8
          \bar ".|:"
          hh8[ r hh] r8 hh[hh] r8 hh4 hh8[r hh]
          hh8[ r hh] r8 hh[hh] r8 hh4 hh8[r hh]
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd8[r ss] r4. r8 \tweak stencil #circle toml4 r4 bd8
          bd8[r ss] r4. r4. r8 ss4
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
          (cons (* d 4.5) (* d 4.5))))
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
          \time 12/8
          \bar ".|:"
          cymr8[ r cymr] r8 cymr[cymr] r8 cymr4 cymr cymr8
          cymr8[ r cymr] r8 cymr[cymr] r8 cymr4 cymr cymr8
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          hhp4. 4. 4. 4. 4. 4. 4. 4. 
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
          (cons (* d 4.5) (* d 4.5))))
    }
  }
}

\markup \vspace #1.5
\markup \bold "*"

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
          \time 12/8
          \bar ".|:"
          cymr8[ r cymr] r8 cymr[cymr] r8 cymr4 cymr cymr8
          cymr8[ r cymr] r8 cymr[cymr] r8 cymr4 cymr cymr8
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd4. r4. sn8 bd4 r4 bd8
          bd4. r4 \tweak stencil #circle tommh8
          r4. \tweak stencil #circle toml4 bd8
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
          (cons (* d 4.5) (* d 4.5))))
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
          %\omit Staff.TimeSignature
          \time 4/4
          \bar ".|:"
          \repeat percent 2 {
          \tuplet 3/2 {cymr8[ r cymr]}
          \tuplet 3/2 {r8 cymr[cymr]}
          \tuplet 3/2 {r8 cymr4}
          \tuplet 3/2 {cymr8[r cymr]} }
           \repeat percent 2 {
          \tuplet 3/2 {cymr8[ r cymr]}
          \tuplet 3/2 {r8 cymr[cymr]}
          \tuplet 3/2 {r8 cymr4}
          \tuplet 3/2 {cymr8[r cymr]} }
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          <bd hhp>4 hhp <sn hhp> hhp
          s1
          <bd>4 hhp <sn bd> hhp s1
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
          (cons (* d 4.5) (* d 4.5))))
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
          %\omit Staff.TimeSignature
          \time 6/8
          \bar ".|:"
          cymr8[cymr cymr16 <cymr sn>16] r16 cymr8[<cymr \tweak stencil #circle tommh> cymr16]
          cymr8[cymr cymr16 cymr] r16 cymr8[cymr cymr16]
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd8[hhp hhp] bd8[hhp hhp] 
          bd8[hhp hhp] <bd sn>[hhp16 \tweak stencil #circle toml hhp8]
        }
        }>>
      }
    >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 120\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
      \Voice
      \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
          (cons (* d 4.5) (* d 4.5))))
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
          %\omit Staff.TimeSignature
          \time 6/8

          cymr8[cymr cymr16 cymr] r16 cymr8[cymr cymr16]

        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd8[hhp hhp] bd8[hhp hhp] 

        }
        }>>
      }
    >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 90\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
      \Voice
      \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
          (cons (* d 4.5) (* d 4.5))))
    }
  }
}

\markup \vspace #2
\markup \bold "Afro-Cuban 3-2"
\markup \vspace #.2

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
          %\omit Staff.TimeSignature
          \time 12/8
          \bar ".|:"
          cymr4 cymr8 r8 cymr8[8] r8 cymr4 4 8
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          hhp4 8 r4 8 r8 4 4.

        }
        }>>
      }
    >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 90\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
      \Voice
      \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
          (cons (* d 4.5) (* d 4.5))))
    }
  }
}

\markup \vspace #2
\markup \bold "Mozambique"
\markup \vspace #.2

\markup {
  \score {
  \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
    } <<
    \new DrumVoice = "first"
    \once \override StaffGrouper.staff-staff-spacing.padding = #30
      {
        \drummode
        {
          \voiceOne
          \override Staff.Clef.stencil = ##f
          %\omit Staff.TimeSignature
          \time 4/4
          \bar ".|:"
          cymr8 8 16 8 16 r16 16 8 16 8 16
          \bar ":|."
        }
      }
    \new DrumVoice = "second"
      { 
        \drummode
        {
          \voiceTwo
          \override Beam.positions = #'(-1.3 . -1.3)
          sn8. 16 \override Rest.staff-position = #0 r8 8 8. 16 r8 8
        }
      }
    \new DrumVoice = "fourth"
      { 
        \drummode
        {
          \voiceFour
          %\stemDown
          \shiftOff
          hhp4 4 4 4
        }
      }
    >>
        \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 90\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
      \Voice
      \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
          (cons (* d 4.5) (* d 4.5))))
    }
}}