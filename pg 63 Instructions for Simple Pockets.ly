\version "2.24.4"

\include "LB Include.ly"

\paper {
  % specific margins for this page, in order to right justify the notation.
  left-margin = 80\mm
  right-margin = 20\mm

  % attempt to re-center the title after above.
  bookTitleMarkup = \markup {
  \hspace #-17
  \fill-line { \fromproperty #'header:title }
  }

  score-system-spacing =
    #'((basic-distance . 11.5)
       (minimum-distance . 3)
       (padding . 0.5))

  #(define fonts
    (set-global-fonts
     #:roman "Linux Libertine O"
     #:sans "Nimbus Sans, Nimbus Sans L"
     #:typewriter "DejaVu Sans Mono"
     ; unnecessary if the staff size is default
     #:factor (/ staff-height pt 20)
    )
  )
}

\header {
	title = \markup {\fontsize #3 "Instructions for Simple Pockets"}
	%copyright = \markup { \override #'( (font-name . "Linux Libertine O")) {"© 2025 Larry Beers"}}
  tagline = ""
}

\markup \vspace #3

{
  \new DrumStaff \with { 
    instrumentName = \markup { "Step 1 : Ride plays 8" \super "th" "notes    " }
    drumStyleTable = #(alist->hash-table LBdrums) }<<
    \new DrumVoice
      {
      \drummode {
      \stemUp
      cymr8 cymr cymr cymr cymr cymr cymr cymr
      \bar "||"
      }
      }
  >>
}

{
  \new DrumStaff \with { 
    instrumentName = \markup { "Step 2 : Ride plays quarters    " }
    drumStyleTable = #(alist->hash-table LBdrums) }<<
    \new DrumVoice
      {
      \drummode {
      \stemUp
      cymr4 cymr cymr cymr
      \bar "||"
      }
      }
  >>
}

{
  \new DrumStaff \with { 
    instrumentName = \markup { "Step 3 : Ride plays +'s    " }
    drumStyleTable = #(alist->hash-table LBdrums) }<<
    \new DrumVoice
      {
      \drummode {
      \stemUp
      r8 cymr r cymr r cymr r cymr
      \bar "||"
      }
      }
  >>
}

{
  \new DrumStaff \with { 
    instrumentName = \markup { "Step 4 : Ride plays 16th's    " }
    drumStyleTable = #(alist->hash-table LBdrums) }<<
    \new DrumVoice
      {
      \drummode {
      \stemUp
      \repeat unfold 4 {cymr16 cymr cymr cymr}
      \bar "||"
      }
      }
  >>
}

{
  \new DrumStaff \with { 
    instrumentName = \markup { "Step 5 : Ride plays -->    " }
    drumStyleTable = #(alist->hash-table LBdrums) }<<
    \new DrumVoice
      {
      \drummode {
      \stemUp
      \repeat unfold 4 {cymr8^> cymr16 cymr16}
      \bar "||"
      }
      }
  >>
}

{
  \new DrumStaff \with { 
    instrumentName = \markup { "Step 6 : Ride plays -->    " }
    drumStyleTable = #(alist->hash-table LBdrums) }<<
    \new DrumVoice
      {
      \drummode {
      \stemUp
      \repeat unfold 4 {cymr16 cymr16 cymr8^>}
      \bar "||"
      }
      }
  >>
}

{
  \new DrumStaff \with { 
    instrumentName = \markup { "Step" \circle a " : HH (w/foot) plays -->    " }
    drumStyleTable = #(alist->hash-table LBdrums) }<<
    \new DrumVoice
      {
      \drummode {
      \stemDown
      r4 hhp r hhp
      \bar "||"
      }
      }
  >>
}

{
  \new DrumStaff \with { 
    instrumentName = \markup { "Step" \circle b " : HH (w/foot) plays -->    " }
    drumStyleTable = #(alist->hash-table LBdrums) }<<
    \new DrumVoice
      {
      \drummode {
      \stemDown
      hhp4 hhp hhp hhp
      \bar "||"
      }
      }
  >>
}

{
  \new DrumStaff \with { 
    instrumentName = \markup { "Step" \circle c " : HH (w/foot) plays -->    " }
    drumStyleTable = #(alist->hash-table LBdrums) }<<
    \new DrumVoice
      {
      \drummode {
      \stemDown
      \repeat unfold 4 {hhp8 hhp}
      \bar "||"
      }
      }
  >>
}

{
  \new DrumStaff \with { 
    instrumentName = \markup { "Step" \circle d " : HH (w/foot) plays -->    " }
    drumStyleTable = #(alist->hash-table LBdrums) }<<
    \new DrumVoice
      {
      \drummode {
      \stemDown
      \repeat unfold 4 {r8 hhp}
      \bar "||"
      }
      }
  >>
}

{
  \new DrumStaff \with { 
    instrumentName = \markup { "Step" \circle e " : HH (w/foot) plays -->    " }
    drumStyleTable = #(alist->hash-table LBdrums) }<<
    \new DrumVoice
      {
      \drummode {
      \stemDown
      r8 hhp r16 hhp8. hhp hhp16 r8 hhp
      \bar "||"
      }
      }
  >>
}