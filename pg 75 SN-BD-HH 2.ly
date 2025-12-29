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
	title = \markup {"SD/BD/HH Examples - Cont."}
  %subtitle = \markup {\fontsize #-2 "Left foot plays Quarters, 8ths, +'s, or the BD part."}
	%copyright = \markup { \override #'( (font-name . "Linux Libertine O")) {"© 2025 Larry Beers"}}
  tagline = ""
}

\markup \vspace #3

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
          \bar "[|:"
          \tuplet 6/4 {
            sn16 sn sn sn bd bd
          }
          \tuplet 6/4 {
            sn16 sn sn sn bd bd
          }
          \tuplet 6/4 {
            sn16 sn bd bd sn sn
          }
          \tuplet 6/4 {
            \once \override Beam.positions = #(lambda (grob)
            (let ((d (ly:grob-property grob 'direction)))
            (cons (* d 4.5) (* d 4.5))))
            bd bd sn sn bd bd
          }
          \tuplet 6/4 {
            sn16 sn sn sn bd bd
          }
          \tuplet 6/4 {
            sn16 sn bd bd sn sn
          }
          \tuplet 6/4 {
            sn16 sn bd bd sn sn
          }
          \tuplet 6/4 {
            bd bd sn sn bd bd
          }
          \bar ":|]"
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          \repeat unfold 8 {hhp4}
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

\markup \vspace #2.0

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
          \bar "[|:"
          \repeat unfold 2 {cymc16 sn:32 sn:32 cymc}
          sn:32 sn:32 cymc sn:32 sn:32 cymc sn:32 sn:32 |
          cymc16 sn:32 sn:32 cymc sn^> sn:32 sn:32 sn^>
          sn:32 sn:32 hho sn:32 sn:32 sn^> sn:32 sn:32
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          
        } }>>
      }
    >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 180\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width

    }
  }
}

\markup \vspace #2.0

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
          \bar "[|:"
          \repeat unfold 4 {
          \tuplet 3/2 {
            <sn \tweak stencil #circle toml>8
            \tweak stencil #circle toml sn
          }
          }
          \repeat unfold 4 {
            <sn \tweak stencil #circle toml>16
            \tweak stencil #circle toml sn
          }
          <sn \tweak stencil #circle toml>16
          \tweak stencil #circle toml hho8
          \bar ":|]"
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          \repeat unfold 4 {
            \tuplet 3/2 {
            r8 bd bd
          }}
          r16 bd bd8 bd16 bd8 bd16 bd8 bd16 bd r bd8.
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

\markup \vspace #2.0

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 10. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \time 3/4
          \bar "[|:"
          \tuplet 3/2 {
            bd8 sn:16 hh:16
          }
          \tuplet 3/2 {
            sn:16 hh:16 sn:16
          }
          \tuplet 3/2 {
            hh:16 sn:16 bd
          }
          \tuplet 3/2 {
            sn^> hh:16 sn:16
          }
          \tuplet 3/2 {
            hh:16 sn:16 hh:16
          }
          \tuplet 3/2 {
            sn:16 hh:16 bd
          }
          \bar ":|]"
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          
        } }>>
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

\markup \vspace #2.0

\markup {
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
          \bar "[|:"
          hh32 hh sn sn bd8 hh32 hh sn sn bd8
          hh32 hh sn sn bd16 hh32 hh sn sn bd16 hh32 hh sn sn
          s2 hh32 hh sn sn bd16 sn sn4^>
          \bar ":|]"
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          s1 bd4 r s2
        } }>>
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

\markup \vspace #2.0

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 12. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \bar "[|:"
          \repeat unfold 2 {
           sn16_\markup { \center-column {\vspace #1.1 L R }} 
           <hho bd>_\markup { \center-column {\vspace #1.1 R L }} hhp 
           sn_\markup { \center-column {\vspace #1.1 R L }}
          }
          sn_\markup { \center-column {\vspace #1.1 L R }}
          sn_\markup { \center-column {\vspace #1.1 R L }}
          sn_\markup { \center-column {\vspace #1.1 L R }}
          <bd hho>_\markup { \center-column {\vspace #1.1 R L }}
          \repeat unfold 2 {<sn hhp> <bd hho>_\markup { \center-column {\vspace #1.1 R L }}}
          sn_\markup { \center-column {\vspace #1.1 L R }}
          sn_\markup { \center-column {\vspace #1.1 R L }}
          sn_\markup { \center-column {\vspace #1.1 L R }}
          <hho bd>_\markup { \center-column {\vspace #1.1 R L }}
          <sn hhp>_\markup { \center-column {\vspace #1.1 L R }}
          sn_\markup { \center-column {\vspace #1.1 R L }}
          sn_\markup { \center-column {\vspace #1.1 L R }}
          <hho bd>_\markup { \center-column {\vspace #1.1 R L }}
          \repeat unfold 2 {<sn hhp> <bd hho>_\markup { \center-column {\vspace #1.1 R L }}}
          <sn hhp>4^>_\markup { \center-column {\vspace #1.1 L R }}
          \bar ":|]"
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          
        } }>>
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