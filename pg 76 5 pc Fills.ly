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
	title = \markup {"5 Piece Fills"}
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
          sn16 sn bd bd
          \tweak stencil #circle tommh
          \tweak stencil #circle tommh bd bd
          \repeat unfold 4 {\tweak stencil #circle tomml}
          bd bd sn sn |
          bd bd \tweak stencil #circle tommh \tweak stencil #circle tommh
          bd bd \tweak stencil #circle tomml \tweak stencil #circle tomml
          bd bd \repeat unfold 6 {\tweak stencil #circle toml}
          \bar ":|."
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          
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
          bd16 \repeat unfold 2 {<\tweak stencil #circle tommh \tweak stencil #circle tomml>} bd
          \slashedGrace sn8_~ sn8. <\tweak stencil #circle tommh \tweak stencil #circle tomml>16
          bd16 \repeat unfold 2 {<\tweak stencil #circle tommh \tweak stencil #circle tomml>} bd
          \slashedGrace sn8_~ sn16
          \slashedGrace \tweak stencil #circle tommh8_~ \tweak stencil #circle tommh8
          <\tweak stencil #circle tommh \tweak stencil #circle tomml>16 |
          bd16 \repeat unfold 2 {<\tweak stencil #circle tommh \tweak stencil #circle tomml>} bd
          \tuplet 3/2 {
            \repeat unfold 3 {\slashedGrace sn8_~ sn8}
          }
          bd8 bd16 bd \slashedGrace sn8_~ sn16 sn16 hho8
          \bar ":|."
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
      instrumentName = \markup {\bold 3. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \bar "[|:"

          sn16^> sn:32 sn:32 \tweak stencil #circle tommh^>
          \tweak stencil #circle tomml^> sn:32 sn:32 sn^>
          sn:32 sn^> sn:32 \tweak stencil #circle tommh^>
          \tweak stencil #circle toml^> sn:32 sn:32 sn^> |
          \tweak stencil #circle tomml^> sn:32 sn:32 sn^>
          sn16^> sn:32 sn:32 \tweak stencil #circle tommh^>
          sn \tweak stencil #circle tommh8 \tweak stencil #circle tomml16
          r16 \tweak stencil #circle toml \tweak stencil #circle toml8
          \bar ":|]"
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          bd4 r8. bd16 r bd8. r bd16
          s1
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
          \tuplet 3/2 {
            bd16 bd \tweak stencil #circle toml
          }
          sn16 sn sn8
          \tuplet 3/2 {
            bd16 bd \tweak stencil #circle toml
          }
          \tweak stencil #circle tomml16
          \tweak stencil #circle tomml
          \tweak stencil #circle tomml8
          \tweak stencil #circle tomml16
          \tweak stencil #circle tommh
          \tweak stencil #circle toml8 |
          \tuplet 6/4 {
            \tweak stencil #circle tommh32
            \tweak stencil #circle tomml32
            bd8 bd bd16
          } sn8^>
           \tuplet 3/2 {
            \tweak stencil #circle tommh32
            \tweak stencil #circle tomml32
            bd8
          } 
          \tuplet 3/2 {
            bd8 bd16
          }
            sn8^>
          r4
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
      instrumentName = \markup {\bold 5. }
    } <<
      \new DrumVoice {
        <<
        \drummode {
          \stemUp
          \voiceOne
          \bar "[|:"
          \tuplet 3/2 {
           sn8^>_\markup { \center-column {\vspace #2 R }}
           sn:16_\markup { \center-column {\vspace #2 \fontsize #-2 LL }}
           hho_\markup { \center-column {\vspace #2 R }}
          }
          \tuplet 3/2 {
            sn:16_\markup { \center-column {\vspace #2 \fontsize #-2 LL }}
            sn:16_\markup { \center-column {\vspace #2 \fontsize #-2 RR }}
            hho_\markup { \center-column {\vspace #2 L }}
          }
          \tuplet 3/2 {
            sn:16_\markup { \center-column {\vspace #2 \fontsize #-2 RR }}
            sn:16_\markup { \center-column {\vspace #2 \fontsize #-2 LL }}
            hho_\markup { \center-column {\vspace #2 R }}
          }
          sn4^>_\markup { \center-column {\vspace #2 L }} |
          \tuplet 3/2 {
            hho8_\markup { \center-column {\vspace #2 R }}
            sn:16_\markup { \center-column {\vspace #2 \fontsize #-2 LL }}
            hho_\markup { \center-column {\vspace #2 R }}
          }
          \tuplet 3/2 {
            sn:16_\markup { \center-column {\vspace #2 \fontsize #-2 LL }}
            sn:16_\markup { \center-column {\vspace #2 \fontsize #-2 RR }}
            hho_\markup { \center-column {\vspace #2 L }}
          }
          \tuplet 3/2 {
            sn:16_\markup { \center-column {\vspace #2 \fontsize #-2 RR }}
            sn:16_\markup { \center-column {\vspace #2 \fontsize #-2 LL }}
            hho_\markup { \center-column {\vspace #2 R }}
          }
          sn4^>_\markup { \center-column {\vspace #2 L }}
          \bar ":|]"
        }
        \new DrumVoice {
        \drummode {
          \stemDown
          \voiceTwo
          \repeat unfold 3 {\tuplet 3/2 {r4 bd8}} r4
          \tuplet 3/2 {bd4 bd8} \repeat unfold 2 {\tuplet 3/2 {r4 bd8}} r4
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