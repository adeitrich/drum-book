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
	title = \markup {"SD/BD/HH Examples"}
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
      instrumentName = \markup {\bold 1. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \bar "[|:"
          sn8^> sn16^> sn sn sn^> sn sn sn:32 sn:32 sn sn sn8 sn8:32( sn8)
          sn16^> sn sn sn^> sn sn sn4.^> sn8:32
          \bar ":|]"
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          \repeat unfold 8 {bd8 hhp8}
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
      instrumentName = \markup {\bold 2. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \bar "[|:"
          sn16^> sn:32 sn:32 sn^>
          sn16^> sn:32 sn:32 sn^>
          sn^> sn sn^> sn sn^> sn^> sn sn^> |
          sn^> sn sn^> sn sn^> sn^> sn sn^>
          sn^> sn sn^> sn^> sn sn^> sn sn^>
          \bar ":|]"
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          <bd hhp>8 hhp16 bd <bd hhp>8 hhp16 bd
          <bd hhp>8 <bd hhp>8 <bd hhp>16 bd hhp bd |
          <bd hhp>8 <bd hhp>8 <bd hhp>16 bd hhp bd
          <bd hhp>8 <bd hhp>16 bd hhp bd hhp bd
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
      instrumentName = \markup {\bold 3. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \bar "[|:"
          \tuplet 6/4{
            sn16^> sn sn sn sn sn^>
          }
          \tuplet 6/4{
            sn16^> sn sn sn sn sn^>
          }
          \tuplet 6/4{
            sn16 sn sn^> sn sn sn^>
          }
          \tuplet 6/4{
            sn16^> sn sn sn sn sn
          } |
          \tuplet 6/4{
            sn16^> sn sn sn^> sn sn
          }
          \tuplet 6/4{
            sn16^> sn sn^> sn sn sn^>
          }
          \tuplet 6/4{
            sn16^> sn sn sn^> sn sn^>
          }
          \tuplet 6/4{
            sn16 sn sn^> sn sn sn^>
          }
          \bar ":|]"
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          <bd hhp>8
          \tuplet 3/2 {
            r8 bd16
          }
          <bd hhp>8
          \tuplet 3/2 {
            r8 bd16
          }
          \tuplet 6/4 {
            hhp8 bd16 r8 bd16
          }
          <bd hhp>4 |
          <bd hhp>8 bd
          \tuplet 6/4 {
            <bd hhp>8 bd16 r8 bd16
          }
          <bd hhp>8
          \tuplet 3/2 {
            bd8 bd16
          }
          \tuplet 6/4 {
            hhp8 bd16 r8 bd16
          }
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
      instrumentName = \markup {\bold 4. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \bar "[|:"
          <sn bd>16^> sn:32 sn:32 <sn bd>^> sn:32 sn:32 <sn bd>^> sn:32
          <sn bd>^> sn:32 sn:32 <sn bd>^> <sn bd>^> sn:32 sn:32 <sn bd>^> |
          <sn bd>^> sn:32 <sn bd>^> sn:32 <sn bd>^> <sn bd>^> sn:32 <sn bd>^>
          sn:32 <sn bd>^> sn:32 <sn bd>^> <sn bd>^> sn:32 <sn bd>^> sn:32
          \bar ":|]"
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          \repeat unfold 8 {hhp4}
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
      instrumentName = \markup {\bold 5. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \bar "[|:"
          sn16^> sn sn sn sn sn sn sn^> \repeat unfold 8 {sn}
          sn sn bd bd sn bd sn sn bd bd sn bd sn sn bd bd
          \bar ":|]"
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          hhp8. bd16 hhp4 hhp8 bd <bd hhp>4
          hhp4 hhp hhp hhp
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
      instrumentName = \markup {\bold 6. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \bar "[|:"
          \repeat unfold 2 {sn16 sn bd bd} sn sn sn sn 
          \repeat unfold 3 {bd bd sn sn}
          \repeat unfold 2 {sn sn bd bd}
          \bar ":|]"
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          \repeat unfold 8 {hhp4}
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