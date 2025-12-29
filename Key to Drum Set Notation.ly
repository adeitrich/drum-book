\include "LB Include.ly"

\header {
	title = \markup {"Key to Drum Set Notation"}
	%copyright = \markup { \override #'( (font-name . "Linux Libertine O")) {"© 2025 Larry Beers"}}
  tagline = ""
}

\markup \vspace #3

{
  \new DrumStaff \with { drumStyleTable = #(alist->hash-table LBdrums) }<<
    \set Staff.instrumentName = #""
    \new DrumVoice
      {
      \drummode {
      \once \omit Staff.TimeSignature
      \stemDown
      hhp4^\markup {\fontsize #-1 "Hi-Hat w/Foot"} s2.

      bd4^\markup {\fontsize #-1 "Bass Drum"} s2.

      \tweak stencil #circle toml4^\markup {\fontsize #-1 "Low Tom"} s2.

      \tweak stencil #circle tomml4^\markup {\fontsize #-1 "Mid Tom"} s2.

      \break
      \once \override
            Score.NonMusicalPaperColumn
                 .line-break-system-details = #'((Y-offset . 28))

      sn4^\markup {\fontsize #-1 "Snare Drum"} s2.

      ss4^\markup {\fontsize #-1 "Side Stick"} s2.

      \tweak stencil #circle tommh4^\markup {\fontsize #-1 "Hi Tom"} s2.

      hh4^\markup {\fontsize #-1 "Hi-Hat w/Stick"} s2.

      \stemUp

      hho4^\markup {\fontsize #-1 \halign #-1.4 "Open Hi-Hat"} s2.

      \break
      \once \override
            Score.NonMusicalPaperColumn
                 .line-break-system-details = #'((Y-offset . 44))

      cymr4^\markup {\fontsize #-1 \halign #-1.4 "Ride Cymbal"} s2.

      rb4^\markup {\fontsize #-1 \halign #-1.2 "Bell of Ride Cymbal"} s2.

      cymc4^\markup {\fontsize #-1 \halign #-1.4"Crash Cymbal"} s2.

      cymca4^\markup {\fontsize #-1 \halign #-1.4 "2nd Crash Cym"} s2.

      }
      }
  >>
}