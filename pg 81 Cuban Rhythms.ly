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
	title = \markup {"Cuban Rhythms"}
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
          \bar ".|:"
          \repeat unfold 3 {<ss hh>8 hho}
          <ss hh> \tweak stencil #circle tommh |
          <ss hh>8 hho <ss hh> \tweak stencil #circle toml
          <\tweak stencil #circle toml ss> hho
          <ss hh> \tweak stencil #circle toml
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          \repeat unfold 2 {<hhp bd>4 hhp8 bd hhp4 <hhp bd>}
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
          \bar ".|:"
          cymr4^> <cymr ss>^> cymr8 cymr^>
          \tweak stencil #circle tommh
          <\tweak stencil #circle tommh cymr> |
          cymr4^> <cymr ss>8 cymr^> r cymr^>
          \tweak stencil #circle tommh
          <\tweak stencil #circle tommh cymr>
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          \repeat unfold 2 {<hhp bd>4 r8 bd hhp4 bd}
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
      instrumentName = \markup {\bold 3. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \bar ".|:"
          cymr4^> <cymr ss>^> cymr8 cymr^>
          \tweak stencil #circle tommh
          <\tweak stencil #circle tommh cymr> |
          cymr4^> cymr8 <cymr \tweak stencil #circle toml>^>
          \tweak stencil #circle toml cymr^>
          \tweak stencil #circle tommh
          <\tweak stencil #circle tommh cymr>
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          \repeat unfold 2 {<hhp bd>4 r8 bd hhp4 bd}
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
          \bar ".|:"
          cymr4^> <cymr ss>^> cymr8 cymr4^>
          <\tweak stencil #circle tommh cymr>8 |
          cymr4^> cymr8 <cymr \tweak stencil #circle toml>^> r
          cymr^>
          \tweak stencil #circle tommh
          <\tweak stencil #circle tommh cymr>
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          \repeat unfold 2 {<hhp bd>4 r8 bd hhp4 bd}
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
      instrumentName = \markup {\bold 5. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \bar ".|:"
          cymr4^> cymr8^> \tweak stencil #circle toml
          cymr8 cymr4^>
          <\tweak stencil #circle tommh cymr>8 |
          cymr4^> cymr8 <cymr \tweak stencil #circle toml>4^>
          cymr8^>
          \tweak stencil #circle tommh
          <\tweak stencil #circle tommh cymr>
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          \repeat unfold 2 {<hhp bd>4 r8 bd hhp4 bd}
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
      instrumentName = \markup {\bold 6. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \bar ".|:"
          cymr4^> <cymr ss>^> <cymr ss>8 cymr4^> cymr8 |
          <cymr ss>4 cymr8 <cymr ss>4^> cymr8^> ss cymr
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          \repeat unfold 2 {<hhp bd>4 r8 bd_> hhp4 bd}
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