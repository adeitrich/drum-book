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
	title = \markup {"Hands + Feet (Harmonic)"}
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
      instrumentName = \markup {\bold 1. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \bar "[|:"
          \repeat percent 2 {
          cymr16 cymr8 cymr16 cymr8 cymr16 cymr
          r cymr cymr8 cymr cymr }
          \bar ":|]"
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          sn16 sn bd sn sn bd sn sn bd sn sn bd sn bd sn bd
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
      instrumentName = \markup {\bold 2. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \bar "[|:"
          \repeat percent 2 {
          cymr16 cymr8 cymr16 r cymr cymr8
          cymr cymr cymr16 cymr cymr8}
          \bar ":|]"
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          sn16 sn bd sn bd sn sn bd sn bd sn bd sn sn sn bd
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
      instrumentName = \markup {\bold 3. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \bar "[|:"
          \repeat percent 2 {
          cymr16 cymr cymr8 cymr
          cymr16 cymr cymr8 cymr
          cymr16 cymr cymr8 }
          \bar ":|]"
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          sn16 sn sn bd sn bd
          sn16 sn sn bd sn bd
          sn sn sn bd
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
      instrumentName = \markup {\bold 4. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \bar "[|:"
          \repeat percent 2 {
          cymr8 cymr16 cymr r cymr8 cymr16
          cymr8 cymr cymr16 cymr8. }
          \bar ":|]"
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          sn16 bd sn sn bd sn bd sn
          sn bd sn bd sn sn bd bd
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
      instrumentName = \markup {\bold 5. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \bar "[|:"
          \repeat percent 2 {
          cymr16 cymr cymr8 cymr16 cymr cymr8
          cymr16 cymr cymr8 cymr cymr }
          \bar ":|]"
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          sn16 sn sn bd sn16 sn sn bd sn16 sn sn bd
          sn bd sn bd
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
      instrumentName = \markup {\bold 6. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \bar "[|:"
          \repeat percent 2 {
          r16 cymr cymr8 cymr8. cymr16 cymr8 cymr cymr16 cymr cymr8
           }
          \bar ":|]"
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd16 sn sn bd sn bd bd sn sn bd sn bd sn sn sn bd
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