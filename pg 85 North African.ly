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
	title = \markup {"North African and Middle Eastern"}
  subtitle = \markup {\fontsize #-2 "Rhythms & Rudiments"}
	%copyright = \markup { \override #'( (font-name . "Linux Libertine O")) {"© 2025 Larry Beers"}}
  tagline = ""
}

\markup \vspace #2.5
\markup \bold "Wahda"

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
          \time 4/4
          \bar ".|:"
          hh4 8 8 r8 8 r8 8 4 8 4 8 4
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \voiceTwo
          bd4. sn8 r4 sn4 bd4. sn8 r4 sn4
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
\markup \bold "Maksaum"

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
          \time 4/4
          \bar ".|:"
          hh4 8 4 8 4 4 8 4 8 4
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \voiceTwo
          bd8 sn4 8 bd4 sn bd8 sn4 8 bd4 sn
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
\markup \bold "Baladi"

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
          \time 4/4
          \bar ".|:"
          hh4 8 4 8 4 4 8 4 8 4
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \voiceTwo
          bd8 4 sn8 bd4 sn bd8 4 sn8 bd4 sn
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
\markup \bold "Malfouf"

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
          \time 4/4
          \bar ".|:"
          hh8 8 16 16 r8 8 16 16 r16 16 8
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \voiceTwo
          bd8. sn16 r8 sn bd8. sn16 r8 sn
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

\markup \vspace #3
\markup \bold "Darej"

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
          \time 6/4
          \bar ".|:"
          hh4 4 8 8 4 4 hho4
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \voiceTwo
          bd4 sn8 8 4 bd4 sn r4
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

\markup \vspace #3
\markup \bold "Nawakht"

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
          \time 7/4
          \bar ".|:"
          hh4 4 8 8 4 4 4 8 8
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \voiceTwo
          bd4 sn sn bd sn8 8 4 r4
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