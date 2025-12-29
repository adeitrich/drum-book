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
      instrumentName = \markup {\bold 7. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \bar "[|:"
          \repeat percent 2 {
          cymr16 cymr cymr8 \repeat unfold 3 {cymr16} cymr16^>
          s8 cymr16 cymr cymr cymr8.^> }
          \bar ":|]"
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          sn16 sn sn hhp sn16 sn sn bd sn^> hhp sn sn sn bd sn hhp
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
      instrumentName = \markup {\bold 8. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \bar "[|:"
          \repeat percent 2 {
          cymr8. cymr16 cymr8. cymr16 r cymr cymr8 r16 cymr8 cymr16
          }
          \bar ":|]"
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd16 sn sn bd bd sn sn bd sn bd bd sn sn bd sn bd
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
      instrumentName = \markup {\bold 9. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \bar "[|:"
          \repeat percent 2 {
          cymr8. cymr16 cymr8. cymr16 r cymr cymr8 r16 cymr8 cymr16
          }
          \bar ":|]"
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd16 sn <sn hhp> bd bd sn sn hhp sn bd bd sn sn hhp sn bd
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
      instrumentName = \markup {\bold 10. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \bar "[|:"
          \repeat percent 2 {
          cymr16 cymr 16 cymr8 cymr16 cymr 16 cymr8 cymr16 cymr 16 cymr cymr^> s8 cymr
          }
          \bar ":|]"
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          sn16 sn sn hhp sn16 sn sn hhp sn16 sn sn bd sn^> hhp sn hhp 
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
      instrumentName = \markup {\bold 11. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \bar "[|:"
          \repeat percent 2 {
          cymr8 cymr cymr16 cymr cymr cymr^> r cymr8 cymr16 r cymr cymr8
          }
          \bar ":|]"
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          sn16 hhp sn hhp sn sn sn bd sn bd sn bd sn bd bd hhp
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
}\markup \vspace #1.8

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
          \repeat percent 2 {
          cymr8. cymr16 r cymr cymr8 r16 cymr8 cymr16 r cymr8 cymr16
           }
          \bar ":|]"
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd16 sn sn hhp sn bd bd sn sn hhp sn bd sn hhp sn bd
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