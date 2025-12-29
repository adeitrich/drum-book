\version "2.24.4"

\include "LB Include.ly"

\paper {
  % specific margins for this page.
  left-margin = 20\mm
  right-margin = 20\mm



  score-system-spacing =
    #'((basic-distance . 12)
       (minimum-distance . 3)
       (padding . 0.5))

  #(define fonts
    (set-global-fonts
     #:roman "Linux Libertine O"
     #:sans "Nimbus Sans, Nimbus Sans L"
     #:typewriter "DejaVu Sans Mono"
     ; unnecessary if the staff size is default
     #:factor (/ staff-height pt 20)
    )
  )
}

\header {
	title = \markup {"4 Piece Kit Fills"}
  %subtitle = \markup {"Part 2"}
	%copyright = \markup { \override #'( (font-name . "Linux Libertine O")) {"© 2025 Larry Beers"}}
  tagline = ""
}

\markup \vspace #1.6

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 1. }
    } <<
      \new DrumVoice {
        \drummode {
          \stemUp
          \bar "||"
          \tweak stencil #circle toml16
          bd bd sn r
          \tweak stencil #circle tommh
          \tweak stencil #circle toml bd
          \tweak stencil #circle toml bd bd
          \tweak stencil #circle toml
          sn8 sn16 hho
          \bar "||"
        }
      }
    >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 100\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
      \Voice
      \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
          (cons (* d 4.0) (* d 4.0))))
    }
  }
}

\markup \vspace #1.6

\markup {
  \score {
    \new DrumStaff \with {
      \override Beam.damping = #+inf.0
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 2. }
    } <<
      \new DrumVoice {
        \drummode {
          \stemUp
          \bar "||"
          \tweak stencil #circle tommh16
          sn:32 sn:32 sn16^>
          sn^> bd \tweak stencil #circle toml sn:32
          sn:32 sn^> sn^> bd
          sn sn hho8
          \bar "||"
        }
      }
    >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 100\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
      \Voice
      \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
          (cons (* d 4.0) (* d 4.0))))
    }
  }
}

\markup \vspace #1.6

\markup {
  \score {
    \new DrumStaff \with {
      \override Beam.damping = #+inf.0
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 3. }
    } <<
      \new DrumVoice {
        \drummode {
          \stemUp
          \bar "||"
          \tuplet 6/4 {
            \tweak stencil #circle toml16
            \tweak stencil #circle tommh bd
            \tweak stencil #circle tommh
            \tweak stencil #circle toml bd
          }
          \tuplet 6/4 {
            \tweak stencil #circle toml16
            \tweak stencil #circle tommh bd
            \tweak stencil #circle toml sn bd
          }
          \tuplet 6/4 {
            sn \tweak stencil #circle toml16 bd
            \tweak stencil #circle toml
            \tweak stencil #circle tommh bd
          }
          sn4
          \bar "||"
        }
      }
    >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 100\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
      \Voice
      \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
          (cons (* d 4.0) (* d 4.0))))
    }
  }
}

\markup \vspace #1.6

\markup {
  \score {
    \new DrumStaff \with {
      \override Beam.damping = #+inf.0
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 4. }
    } <<
      \new DrumVoice {
        \drummode {
          \stemUp
          \bar "||"
          sn8 \tweak stencil #circle tommh16
          \tweak stencil #circle toml16
          bd bd sn8
          \tweak stencil #circle toml16
          \tweak stencil #circle tommh bd bd
          sn hho sn sn
          \bar "||"
        }
      }
    >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 100\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
      \Voice
      \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
          (cons (* d 4.0) (* d 4.0))))
    }
  }
}

\markup \vspace #1.6

\markup {
  \score {
    \new DrumStaff \with {
      \override Beam.damping = #+inf.0
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 5. }
    } <<
      \new DrumVoice {
        \drummode {
          \stemUp
          \bar "||"
          \tuplet 6/4 {
            bd16 sn sn hh hh bd
          }
          \tuplet 6/4 {
            sn16 hh hh sn sn bd
          }
          bd16 hh sn bd
          sn sn hho8
          \bar "||"
        }
      }
    >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 100\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
      \Voice
      \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
          (cons (* d 4.0) (* d 4.0))))
    }
  }
}

\markup \vspace #1.6

\markup {
  \score {
    \new DrumStaff \with {
      \override Beam.damping = #+inf.0
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 6. }
    } <<
      \new DrumVoice {
        \drummode {
          \stemUp
          \bar "||"
          sn16 hho8 bd16
          \tuplet 3/2 {
            \tweak stencil #circle tommh16
            \tweak stencil #circle toml bd
          }
          bd16 sn
          \tuplet 3/2 {
            bd16 bd \tweak stencil #circle toml
          }
          \tweak stencil #circle tommh16 bd
          sn4^>
          \bar "||"
        }
      }
    >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 100\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
      \Voice
      \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
          (cons (* d 4.0) (* d 4.0))))
    }
  }
}

\markup \vspace #1.6

\markup {
  \score {
    \new DrumStaff \with {
      \override Beam.damping = #+inf.0
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 7. }
    } <<
      \new DrumVoice {
        \drummode {
          \stemUp
          \bar "||"
          \tweak stencil #circle toml16 bd bd
          \tweak stencil #circle tommh
          sn bd bd \tweak stencil #circle tommh
          \tweak stencil #circle toml bd bd
          \tweak stencil #circle tommh
          sn hho8 bd16
          \bar "||"
        }
      }
    >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 100\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
      \Voice
      \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
          (cons (* d 4.0) (* d 4.0))))
    }
  }
}

\markup \vspace #1.6

\markup {
  \score {
    \new DrumStaff \with {
      \override Beam.damping = #+inf.0
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 8. }
    } <<
      \new DrumVoice {
        \drummode {
          \stemUp
          \bar "||"
          sn8 \tuplet 3/2 {
            \tweak stencil #circle tommh16
            \tweak stencil #circle toml bd
          }
          bd8 sn
          \tuplet 3/2 {
            \tweak stencil #circle tommh16
            \tweak stencil #circle toml bd
          }
          bd8
          \acciaccatura sn8( sn16) sn hho8
          \bar "||"
        }
      }
    >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 100\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
      \Voice
      \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
          (cons (* d 4.0) (* d 4.0))))
    }
  }
}

\markup \vspace #1.6

\markup {
  \score {
    \new DrumStaff \with {
      \override Beam.damping = #+inf.0
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 9. }
    } <<
      \new DrumVoice {
        \drummode {
          \stemUp
          \bar "||"
          sn16 hho8 bd16
          sn16 hho8 bd16
          \tweak stencil #circle toml
          sn:32 sn:32 sn^>
          sn^> hho8 bd16
          \bar "||"
        }
      }
    >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 100\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
      \Voice
      \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
          (cons (* d 4.0) (* d 4.0))))
    }
  }
}

\markup \vspace #1.6

\markup {
  \score {
    \new DrumStaff \with {
      \override Beam.damping = #+inf.0
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 10. }
    } <<
      \new DrumVoice {
        \drummode {
          \stemUp
          \bar "||"
          \acciaccatura sn8( sn16) bd16 bd
          \tweak stencil #circle tommh
          \tweak stencil #circle toml bd
          \acciaccatura sn8( sn16) bd
          bd \tweak stencil #circle tommh
          \tweak stencil #circle toml bd
          \acciaccatura sn8( sn16) sn hho8
          \bar "||"
        }
      }
    >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 100\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
      \Voice
      \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
          (cons (* d 4.0) (* d 4.0))))
    }
  }
}

\markup \vspace #1.6

\markup {
  \score {
    \new DrumStaff \with {
      \override Beam.damping = #+inf.0
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 11. }
    } <<
      \new DrumVoice {
        \drummode {
          \stemUp
          \bar "||"
          \tweak stencil #circle tommh32 sn sn sn
          bd16
          \tweak stencil #circle tommh32 sn sn sn
          bd16
          \tweak stencil #circle tommh32 sn sn sn
          bd16
          \tweak stencil #circle tommh32 sn sn sn
          bd16
          \tweak stencil #circle toml4^>
          \bar "||"
        }
      }
    >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 100\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
      \Voice
      \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
          (cons (* d 4.0) (* d 4.0))))
    }
  }
}