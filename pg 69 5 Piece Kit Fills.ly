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
	title = \markup {"5 Piece Kit Fills"}
  %subtitle = \markup {"Part 2"}
	%copyright = \markup { \override #'( (font-name . "Linux Libertine O")) {"© 2025 Larry Beers"}}
  tagline = ""
}

\markup \vspace #1

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
          \bar "||"
          hh8 hh16 hh hh8 hh hh16 hh8 hh16 r hh hh8 |
          \tweak stencil #circle toml16 bd bd <sn hho>
          r sn hh bd
          \tweak stencil #circle toml16 bd bd <sn hho>
          r8 hho
          \bar "||"
        }
      \new DrumVoice {
        \drummode {
        \stemDown
        \voiceTwo
        bd8. bd16 sn8. sn16 r8 sn16 bd sn8. sn16 }
      } >>
      }
    >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 180\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
      \Voice
      \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
          (cons (* d 4.0) (* d 4.0))))
    }
  }
}

\markup \vspace #1

\markup {
  \score {
    \new DrumStaff \with {
      \override Beam.damping = #+inf.0
      \hide Clef
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 2. }
    } <<
      \new DrumVoice {
        \drummode {
          \stemUp
          \omit Staff.TimeSignature
          \bar "||"
          \tweak stencil #circle toml16 bd bd <sn hho>
          r <sn hho>8
          \tweak stencil #circle toml16 bd bd <sn hho>
          r <sn hho>8 bd
          \bar "||"
        }
      }
    >>
    \layout {
      %left-margin = 200\mm
      %indent = 80  % Minimize left margin for embedded score
      line-width = 180\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
      \Voice
      \override Beam.positions = #(lambda (grob)
        (let ((d (ly:grob-property grob 'direction)))
          (cons (* d 4.0) (* d 4.0))))
    }
  }
}

\markup \vspace #1

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
          
            \tweak stencil #circle tommh16 sn16:32 sn16:32 sn16^>
            sn16^> bd \tweak stencil #circle tomml sn16:32
            sn16:32 sn16^> sn16^> bd
            \tweak stencil #circle toml16 sn16:32\< sn16:32 sn16:32\!
          
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

\markup \vspace #1

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
         sn8 \tuplet 3/2 {
          \tweak stencil #circle tommh16
          \tweak stencil #circle tomml16
          \tweak stencil #circle toml16
         }
         bd8 sn16 hho16
         r16 \tweak stencil #circle tomml hho bd
         \acciaccatura sn16 sn16 sn16 hho8
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

\markup \vspace #1

\markup {
  \score {
    \new DrumStaff \with {
      \override Beam.damping = #+inf.0
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 5. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \voiceOne
          \override Staff.Clef.stencil = ##f
          \bar "||"
          cymc4. cymc4. cymc4
          \bar "||"
        }
        \new DrumVoice {
        \drummode {
          \voiceTwo
          sn8 \tweak stencil #circle tommh16
          \tweak stencil #circle tomml16
          \tweak stencil #circle toml16 bd16 sn8
          \tweak stencil #circle tommh16
          \tweak stencil #circle tomml16
          \tweak stencil #circle toml16 bd16 sn8 sn16 16
        }
        }>>
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

\markup \vspace #1

\markup {
  \score {
    \new DrumStaff \with {
      \override Beam.damping = #+inf.0
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 6. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \voiceOne
          \override Staff.Clef.stencil = ##f
          \bar "||"
          sn16^> sn sn^> sn sn^> sn^> sn sn^> sn sn^> sn sn^> sn^> sn^> sn8^>
          \bar "||"
        }
        \new DrumVoice {
        \drummode {
          \voiceTwo
          bd8 8 16 8 16 r16 bd8 16 8 8
        }
        }>>
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

\markup \vspace #1

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
          \stemDown
          \bar "||"
          bd16 16
          \tweak stencil #circle tommh16 hho16
          bd16 16
          \tweak stencil #circle tomml16 hho16
          r16 bd16 bd \tweak stencil #circle toml16
          sn16 16 16 16
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

\markup \vspace #1

\markup {
  \score {
    \new DrumStaff \with {
      \override Beam.damping = #+inf.0
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 8. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \voiceOne
          \override Staff.Clef.stencil = ##f
          \bar "||"
          cymc16 \tweak stencil #circle tommh8
          cymc16 \tweak stencil #circle tommh8
          cymc16 \tweak stencil #circle tommh16 r16
          cymc16 \tweak stencil #circle tommh8
          s4
          \bar "||"
        }
        \new DrumVoice {
        \drummode {
          \voiceTwo
          sn16 bd <sn bd>
          sn16 bd <sn bd>
          sn16 bd <sn bd>
          sn16 bd <sn bd>
          \tweak stencil #circle tomml16 \tweak stencil #circle tomml16
          \tweak stencil #circle toml16 \tweak stencil #circle toml16
        }
        }>>
      }
    >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 100\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
      
    }
  }
}

\markup \vspace #1

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
          \stemDown
          \bar "||"
          \tweak stencil #circle toml16 bd bd \tweak stencil #circle tomml
          sn16 bd bd \tweak stencil #circle tommh
          \tweak stencil #circle tomml16 bd bd <hho sn>
          r16 <hho sn>8.
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

\markup \vspace #1

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
          \tuplet 6/4 {
            sn8 bd16 
            \tweak stencil #circle tomml16
            \tweak stencil #circle tommh16
            \tweak stencil #circle toml16}
          \tuplet 6/4 {
            bd8 sn16 
            \tweak stencil #circle tomml16
            \tweak stencil #circle tommh16
            \tweak stencil #circle toml16}
          \tuplet 6/4 {
            bd sn16 
            \tweak stencil #circle tomml16
            \tweak stencil #circle tommh16
            \tweak stencil #circle toml16
            bd}
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

\markup \vspace #1

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
          \tweak stencil #circle tomml16
          sn16:32 sn16:32
          \tweak stencil #circle tommh16
          sn16:32 \tweak stencil #circle tommh16
          \tweak stencil #circle toml16
          sn16:32
          sn16:32 \tweak stencil #circle tommh16
          \tweak stencil #circle tomml16 bd
          sn16 sn16 hho8
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