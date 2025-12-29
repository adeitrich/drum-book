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
      instrumentName = \markup {\bold 19. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \bar "[|:"
          \repeat percent 2 {
          \tuplet 6/4 {cymr8 cymr 8. cymr16}
          s8 \tuplet 3/2 {cymr8 cymr16}
          \tuplet 3/2 {r8 cymr16} r8
          \tuplet 3/2 {cymr16 cymr8} r8
          }
          \bar ":|]"
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          \tuplet 6/4 {
            bd16 sn_\markup { \center-column {\vspace #2 L }} 
            bd <sn hhp>_\markup { \center-column {\vspace #2 L }} 
            sn_\markup { \center-column {\vspace #2 L }} bd
          }
          \tuplet 6/4{
            sn16^>_\markup { \center-column {\vspace #2 L }}
            sn_\markup { \center-column {\vspace #2 R }}
            sn_\markup { \center-column {\vspace #2 L }}
            <bd hhp> sn_\markup { \center-column {\vspace #2 L }}
            bd
          }
          \tuplet 6/4 {
            sn_\markup { \center-column {\vspace #2 L }}
            sn_\markup { \center-column {\vspace #2 L }}
            bd <sn hhp>_\markup { \center-column {\vspace #2 L }}
            sn_\markup { \center-column {\vspace #2 R }}
            sn_\markup { \center-column {\vspace #2 L }}
          }
          \tuplet 6/4 {
            bd bd sn^>_\markup { \center-column {\vspace #2 L }}
            <sn hhp>_\markup { \center-column {\vspace #2 R }}
            sn_\markup { \center-column {\vspace #2 L }}
            sn_\markup { \center-column {\vspace #2 L }}
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
      instrumentName = \markup {\bold 20. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \bar "[|:"
          \repeat percent 2 {
          \tuplet 6/4 {cymr8. r8 cymr16} cymr 4 
          \tuplet 6/4 {r8 cymr16 cymr r8} r8
          \tuplet 3/2 {r8 cymr16}
          }
          \bar ":|]"
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          \tuplet 6/4 {
            bd16 sn_\markup { \center-column {\vspace #2 L }}
            \tweak stencil #circle tomml_\markup { \center-column {\vspace #2 R }}
            <sn hhp>_\markup { \center-column {\vspace #2 L }}
            sn_\markup { \center-column {\vspace #2 L }}
            bd
          }
          \tuplet 6/4 {
            bd16 sn_\markup { \center-column {\vspace #2 L }}
            \tweak stencil #circle tomml_\markup { \center-column {\vspace #2 R }}
            sn_\markup { \center-column {\vspace #2 L }}
            sn_\markup { \center-column {\vspace #2 L }}
            <\tweak stencil #circle tomml bd hhp>_\markup { \center-column {\vspace #2 R }}
          }
          \tuplet 6/4 {
            sn_\markup { \center-column {\vspace #2 L }}
            sn_\markup { \center-column {\vspace #2 L }}
            bd bd sn_\markup { \center-column {\vspace #2 L }}
            \tweak stencil #circle tomml_\markup { \center-column {\vspace #2 R }}
          }
          \tuplet 6/4 {
            sn_\markup { \center-column {\vspace #2 L }}
            sn_\markup { \center-column {\vspace #2 L }}
            <\tweak stencil #circle tomml bd hhp>_\markup { \center-column {\vspace #2 R }}
            sn_\markup { \center-column {\vspace #2 L }}
            sn_\markup { \center-column {\vspace #2 L }}
            bd
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
      instrumentName = \markup {\bold 21. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \bar "[|:"
          \repeat percent 2 {
          cymr8. cymr16 cymr4 r16 cymr cymr8 r8. cymr16
          }
          \bar ":|]"
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd16 sn_\markup { \center-column {\vspace #2 L }}
          <sn hhp>_\markup { \center-column {\vspace #2 L }}
          bd bd sn_\markup { \center-column {\vspace #2 L }}
          sn_\markup { \center-column {\vspace #2 L }}
          <\tweak stencil #circle tomml hhp>^>_\markup { \center-column {\vspace #2 R }}
          sn_\markup { \center-column {\vspace #2 L }}
          bd bd sn_\markup { \center-column {\vspace #2 L }}
          sn_\markup { \center-column {\vspace #2 L }}
          <\tweak stencil #circle tomml hhp>^>_\markup { \center-column {\vspace #2 R }}
          sn_\markup { \center-column {\vspace #2 L }}
          bd
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

\markup \vspace #1.8

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 22. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \bar "[|:"
          \repeat percent 2 {
          r8. cymr16 r8. cymr16 r16 cymr8. r16 cymr8.
          }
          \bar ":|]"
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          sn16_\markup { \center-column {\vspace #2 L }}
          <\tweak stencil #circle tomml hhp>^>_\markup { \center-column {\vspace #2 R }}
          sn_\markup { \center-column {\vspace #2 L }} bd
          <sn hhp>_\markup { \center-column {\vspace #2 L }}
          sn_\markup { \center-column {\vspace #2 R }}
          sn_\markup { \center-column {\vspace #2 L }} bd
          sn_\markup { \center-column {\vspace #2 L }}
          bd <sn hhp>_\markup { \center-column {\vspace #2 L }}
          sn_\markup { \center-column {\vspace #2 R }}
          sn_\markup { \center-column {\vspace #2 L }}
          bd <sn hhp>_\markup { \center-column {\vspace #2 L }}
          sn_\markup { \center-column {\vspace #2 L }}
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
      instrumentName = \markup {\bold 23. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \bar "[|:"
          \repeat percent 2 {
          <cymr sn>16 <cymr sn> <cymr sn>16 hhp
          <cymr sn>16 <cymr sn> <cymr sn>16 bd
          \tuplet 6/4 {
            r8 hhp16 sn cymr hhp
          }
          \tuplet 6/4 {
            cymr16 sn bd sn cymr hhp
          }
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

\markup \vspace #1.8

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 24. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \bar "[|:"
          \repeat percent 2 {
          <cymr sn>16 <cymr sn> <cymr sn>16 bd
          <cymr sn>16 <cymr sn> <cymr sn>16 bd^>
          \tuplet 6/4 {
            r8 hhp16 sn cymr bd
          }
          \tuplet 6/4 {
            cymr16 sn hhp sn cymr bd
          }
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