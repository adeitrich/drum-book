\version "2.24.4"

%\include "LB Include.ly"

#(define LBdrums '(
  (pedalhihat cross #f -5)
  (bassdrum default #f -3)
  (lowtom default #f -2)
  (lowmidtom default #f 0)
  (snare default #f 1)
  (himidtom default #f 2)
  (hihat cross #f 3)
  (ridecymbal cross #f 4)
  (crashcymbal cross #f 5)
  (crashcymbala cross #f 6)
  (sidestick cross #f 1)
  (openhihat cross open 3)
  (ridebell harmonic #f 4)
  
  (claves slash #f 4)))

circle =
\once \override NoteHead.stencil = #(lambda (grob)
    (let* ((note (ly:note-head::print grob))
           (combo-stencil (ly:stencil-add
               note
               (circle-stencil note 0.15 0.05))))
          (ly:make-stencil (ly:stencil-expr combo-stencil)
            (ly:stencil-extent note X)
            (ly:stencil-extent note Y))))

\markup {
  \score {
    \new DrumStaff \with {
      drumStyleTable = #(alist->hash-table LBdrums)
      % Optional: Add label to the left
      instrumentName = \markup {\bold 8. }
    } <<
      \new DrumVoice {
        \drummode {
          \stemUp
          \bar "[|:"
            \tuplet 3/2 {bd8 sn8:16 hh8:16} \tuplet 3/2 {sn8:16 hh8:16 bd}
            \tuplet 3/2 {sn^> hh8:16 sn8:16} \tuplet 3/2 {hh8:16 sn8:16 bd} |
            bd4^> \tuplet 3/2 {bd8 sn8:16 hh8:16} \tuplet 3/2 {sn8:16 hh8:16 bd} sn4^>
          \bar ":|]"
        }
      }
    >>
    \layout {
      indent = 0  % Minimize left margin for embedded score
      line-width = 180\mm  % Set desired width here; adjust as needed
      ragged-right = ##f  % Allow stretching to fill the line-width
    }
  }
}

\markup \vspace #.5

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
          \stemDown
          \voiceOne
          \bar "[|:"
            <bd sn>8 bd16 sn16
            \circle toml16 bd16 sn8
            bd16 sn \circle toml bd sn8 bd |
            sn8 bd16 sn16
            \circle toml16 bd16 sn8
            bd16 sn \circle toml bd sn4
          \bar ":|]"
        } 
        \new DrumVoice {
          \drummode {
            \voiceTwo
            \stemUp
            \override Flag.stencil = ##f
            \override Beam.stencil = ##f
            \once \override NoteHead.X-offset = 1.3
            \circle toml8
            \once \override NoteHead.X-offset = 1.3
            \circle toml
            s
            \circle toml
            \once \override NoteHead.X-offset = 1.3
            \circle toml8
            s
            \circle toml4 |
            \circle toml8
            \once \override NoteHead.X-offset = 1.3
            \circle toml
            s
            \circle toml
            \once \override NoteHead.X-offset = 1.3
            \circle toml8
            s
            \circle toml4
             }
        }>>
      } >>
    }
  }