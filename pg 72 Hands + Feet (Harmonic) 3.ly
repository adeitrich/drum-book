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
	title = \markup {"Hands + Feet (Harmonic) - Cont."}
  subtitle = \markup {\fontsize #-2 "Left foot plays Quarters, 8ths, +'s, or the BD part."}
	%copyright = \markup { \override #'( (font-name . "Linux Libertine O")) {"© 2025 Larry Beers"}}
  tagline = ""
}

\markup \vspace #3

\markup {
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
          \bar "[|:"
          \repeat percent 2 {
          cymr8. cymr16 r cymr8 cymr16 r cymr cymr8 r16 cymr8 cymr16
          }
          \bar ":|]"
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd16 sn sn hhp sn bd sn hhp sn bd bd sn sn hhp sn bd
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

\markup \vspace #1.8

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 14. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \bar "[|:"
          \repeat percent 2 {
          \tuplet 6/4 {cymr8. r8 cymr16} \tuplet 6/4 {r8 cymr16 cymr r8}
          \tuplet 6/4 {r8 cymr8. cymr16} \tuplet 6/4 {cymr8. r8 cymr16}
          }
          \bar ":|]"
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          \tuplet 6/4 {bd16 sn_\markup { \center-column {\vspace #2 L }} sn_"R"
          <sn hhp>_\markup { \center-column {\vspace #2 L }}
          sn_\markup { \center-column {\vspace #2 L }}
          bd}
          \tuplet 6/4 {
            sn16_\markup { \center-column {\vspace #2 L }}
            sn16_\markup { \center-column {\vspace #2 L }}
            bd bd
            sn_\markup { \center-column {\vspace #2 L }}
            sn_\markup { \center-column {\vspace #2 R }}
          }
          \tuplet 6/4 {
            <sn hhp>16_\markup { \center-column {\vspace #2 L }}
            sn_\markup { \center-column {\vspace #2 L }}
            bd sn_\markup { \center-column {\vspace #2 L }}
            sn_\markup { \center-column {\vspace #2 L }} bd
          }
          \tuplet 6/4 {
            bd16 sn_\markup { \center-column {\vspace #2 L }}
            sn_\markup { \center-column {\vspace #2 R }}
            <sn hhp>_\markup { \center-column {\vspace #2 L }}
            sn_\markup { \center-column {\vspace #2 L }} bd
          }
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

\markup \vspace #1.8

\markup {
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
          \bar "[|:"
          \repeat percent 2 {
          \tuplet 6/4 {cymr8 cymr8. cymr16} \tuplet 6/4 {r8 cymr16 cymr8 cymr16}
          \tuplet 6/4 {r8 cymr8. cymr16} \tuplet 6/4 {cymr8 cymr8. cymr16}
          }
          \bar ":|]"
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          \tuplet 6/4 {bd16 sn8 <sn hhp>16 sn bd}
          \tuplet 6/4 {sn16 sn bd bd sn8}
          \tuplet 6/4 {<sn hhp>16 sn bd sn sn bd}
          \tuplet 6/4 {bd16 sn8 <sn hhp>16 sn bd}
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

\markup \vspace #1.8

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 16. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \bar "[|:"
          \repeat percent 2 {
          \tuplet 6/4 {cymr8 cymr8. cymr16} \tuplet 6/4 {r8 cymr16 cymr8 cymr16}
          \tuplet 6/4 {r8 cymr4 } \tuplet 6/4 {r8 cymr8. cymr16}
          }
          \bar ":|]"
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          \tuplet 6/4 {
            bd16 sn8_\markup { \center-column {\vspace #2 L }}
            <sn hhp>16_\markup { \center-column {\vspace #2 L }}
            sn_\markup { \center-column {\vspace #2 L }} bd}
          \tuplet 6/4 {
            sn16_\markup { \center-column {\vspace #2 L }}
            sn_\markup { \center-column {\vspace #2 L }} bd bd 
            sn8_\markup { \center-column {\vspace #2 L }}}
          \tuplet 6/4 {
            <sn hhp>16_\markup { \center-column {\vspace #2 L }} 
            sn_\markup { \center-column {\vspace #2 L }} 
            bd sn_\markup { \center-column {\vspace #2 L }} 
            sn_\markup { \center-column {\vspace #2 L }} 
            <\tweak stencil #circle tomml hhp>^>_\markup { \center-column {\vspace #2 R }}}
          \tuplet 6/4 {
            sn16_\markup { \center-column {\vspace #2 L }} 
            sn_\markup { \center-column {\vspace #2 L }} bd 
            sn_\markup { \center-column {\vspace #2 L }} 
            sn_\markup { \center-column {\vspace #2 L }} bd}
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

\markup \vspace #1.8

\markup {
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
          \bar "[|:"
          \repeat percent 2 {
          \grace s8
          \tuplet 6/4 { r16 cymr8^> r8 cymr16} \tuplet 6/4 {r8 cymr16 cymr r8}
          \tuplet 6/4 {r16 cymr8 r8 cymr16} \tuplet 6/4 {r16 cymr8 cymr cymr16}
          }
          \bar ":|]"
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          \acciaccatura sn8_\markup { \center-column {\vspace #2 \fontsize #-3 R }}(
          \tuplet 6/4 {
            sn16_\markup { \center-column {\vspace #2 L }}) 
            bd sn_\markup { \center-column {\vspace #2 L }} 
            \tweak stencil #circle tomml_\markup { \center-column {\vspace #2 R }} 
            sn_\markup { \center-column {\vspace #2 L }} bd
            }
          \tuplet 6/4 {
            sn16_\markup { \center-column {\vspace #2 L }}
            sn_\markup { \center-column {\vspace #2 L }} bd bd 
            sn_\markup { \center-column {\vspace #2 L }}
            \tweak stencil #circle tomml_\markup { \center-column {\vspace #2 R }}
            }
          \tuplet 6/4 {
            sn16_\markup { \center-column {\vspace #2 L }} bd
            sn16_\markup { \center-column {\vspace #2 L }}
            \tweak stencil #circle tomml_\markup { \center-column {\vspace #2 R }}
            \tweak stencil #circle tomml_\markup { \center-column {\vspace #2 R }} bd
            }
          \tuplet 6/4 {
            sn16_\markup { \center-column {\vspace #2 R }} bd8 bd bd16
            }
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

\markup \vspace #1.8

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 18. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \bar "[|:"
          
            bd16 <sn cymr> <sn cymr> hhp
            <sn cymr> <sn cymr> <sn cymr> <bd cymr>
            r hhp <sn cymr> <sn cymr>
            <sn cymr> <bd cymr>8 <sn cymr>16 |
            hhp <sn cymr> <sn cymr> bd
            <sn cymr> <sn cymr> <sn cymr> <hhp cymr>
            r bd <sn cymr> <sn cymr>
            <sn cymr> <hhp cymr>8 <sn cymr>16
          
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