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
	title = \markup {"North African and Middle Eastern (cont.)"}
  subtitle = \markup {\fontsize #-2 "Rhythms & Rudiments"}
	%copyright = \markup { \override #'( (font-name . "Linux Libertine O")) {"© 2025 Larry Beers"}}
  tagline = ""
}

\markup \vspace #2.5
\markup \bold "Masmoudi"

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
          \time 8/4
          \bar ".|:"
          hh8 8 16 16 8 8 8 8 8 16 16 8 8 8 16 16 8 8 8
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \voiceTwo
          bd4 4 4 sn8 8 bd4 sn8 8 4 8 8
        }
        }>>
      }
    >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 160\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
      \Voice
      \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
          (cons (* d 4.5) (* d 4.5))))
    }
  }
}

\markup \vspace #1
\markup \bold \fontsize #-1 "(variation)"

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
          \time 8/4
          \bar ".|:"
          s1 s1
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \voiceTwo
          bd4 4 sn8 8 4 bd4 sn8 8 4 8 8
        }
        }>>
      }
    >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 160\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
      \Voice
      \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
          (cons (* d 4.5) (* d 4.5))))
    }
  }
}

\markup \vspace #3
\markup \bold "Aqsak"

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
          \time 9/8
          \bar ".|:"
          hh4 4 4 4 8 hh4 4 4 4 8
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \voiceTwo
          sn8 8 bd4 4 sn8 bd4 sn8 8 bd4 4 sn8 bd4
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

\markup \vspace #3
\markup \bold "Sasai"

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
          \time 10/8
          \bar ".|:"
          \repeat unfold 2 {hh8[8 8] hh8[8] hh8[8] hh8[8 8]}
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \voiceTwo
          \repeat unfold 2 {bd4. sn4 bd8[ 8] sn4 8}
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

\markup \vspace #3
\markup \bold "Shaabi"

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
          hh4 8[ 8] 4 4 8[ 8:16] 4
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \voiceTwo
          sn8 4 8 bd4 sn8 4 8 bd4
        }
        }>>
      }
    >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 160\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
      \Voice
      \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
          (cons (* d 4.5) (* d 4.5))))
    }
  }
}
