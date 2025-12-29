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
	title = \markup {"Bossa Novas - Cont."}
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
          \bar ".|:"
          cymr8 cymr <ss cymr> cymr cymr <ss cymr> cymr <cymr \tweak stencil #circle tommh>^>
          cymr cymr cymr <ss cymr> cymr cymr <cymr \tweak stencil #circle toml>
          <cymr \tweak stencil #circle toml>
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          \repeat unfold 4 {bd4 hhp8 bd}
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
          \bar ".|:"
          \repeat unfold 8 {<cymr ss>8 cymr}
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd4 hhp8 bd bd hhp r bd
          <bd hhp>4. <bd hhp>8 bd4 hhp8 bd
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
      instrumentName = \markup {\bold 9. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \bar ".|:"
          <cymr ss>8 cymr cymr <cymr ss>8 cymr cymr <cymr ss>8 cymr cymr cymr
          <cymr ss>8 cymr cymr <cymr ss>8 cymr cymr
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd4 hhp8 bd bd hhp r bd
          <bd hhp>4. <bd hhp>8 bd4 <hhp bd>4
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
          \bar ".|:"
          cymr8 cymr <cymr ss> cymr cymr cymr cymr <cymr \tweak stencil #circle tommh>^>
          cymr cymr cymr <cymr ss> cymr cymr <cymr \tweak stencil #circle toml>^> cymr
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd4 hhp8 bd bd hhp r bd
          <bd hhp>4. <bd hhp>8 bd4 hhp8 bd
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
      instrumentName = \markup {\bold 11. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \bar ".|:"
          <ss cymr>4 cymr8 <ss cymr>4 cymr8 ss cymr
          cymr4 <ss cymr> cymr8 <ss cymr>4 cymr8
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          \repeat unfold 4 {bd4 hhp8 bd}
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
      instrumentName = \markup {\bold 12. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \bar ".|:"
          <ss cymr>4 cymr8 <ss cymr>4 cymr8 ss cymr
          cymr4 <ss cymr> cymr8 <ss cymr>4 cymr8
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd4 hhp8 bd bd hhp r bd
          <bd hhp>4 r8 <bd hhp> bd4 hhp8 bd
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