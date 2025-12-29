\include "LB Include.ly"

\header {
	title = \markup {"PAGE TITLE"}
	%copyright = \markup { \override #'( (font-name . "Linux Libertine O")) {"© 2025 Larry Beers"}}
  tagline = ""
}

\markup \vspace #3

{
  \new DrumStaff \with { drumStyleTable = #(alist->hash-table LBdrums) }<<
    \set Staff.instrumentName = #"1)"
    \new DrumVoice
      {
      \drummode {
      \stemUp
      \repeat unfold 4 {hh8 hh8} | \repeat unfold 4 {hh8 hh8}
      \bar ":|."
      }
      }
    \new DrumVoice { 
      \drummode {
        \stemDown
        bd4 <bd sn>4 bd4 <bd sn>4 | bd4 <bd sn>4 bd4 <bd sn>4
        }
     }
  >>
}

{
  \new DrumStaff <<
    \set Staff.instrumentName = #"2)"
    \new DrumVoice
    \once \override StaffGrouper.staff-staff-spacing.padding = #30
      {
        \drummode
        {
          \stemUp
          \repeat unfold 4 {hh4} | \repeat unfold 4 {hh4}
          \bar ":|."
        }
      }
    \new DrumVoice
      { 
        \drummode
        {
          \stemDown
          bd4 <bd sn>4 bd4 <bd sn>4 | bd4 <bd sn>4 bd4 <bd sn>4
        }
      }
    >>
}

{
  \new DrumStaff <<
    \set Staff.instrumentName = #"3)"
    \new DrumVoice
    \once \override StaffGrouper.staff-staff-spacing.padding = #30
      {
        \drummode
        {
          \stemUp
          r8 hh4 hh4 hh4 hh8 | r8 hh4 hh4 hh4 hh8
          \bar ":|."
        }
      }
    \new DrumVoice
      { 
        \drummode
        {
          \stemDown
          bd4 <bd sn>4 bd4 <bd sn>4 | bd4 <bd sn>4 bd4 <bd sn>4
        }
      }
    >>
}

{
  \new DrumStaff <<
    \set Staff.instrumentName = #"4)"
    \new DrumVoice
    \once \override StaffGrouper.staff-staff-spacing.padding = #30
      {
        \drummode
        {
          \stemUp
          \repeat unfold 2 {hh16 hh hh hh sn hh hh hh} | \repeat unfold 2 {hh16 hh hh hh sn hh hh hh}
          \bar ":|."
        }
      }
    \new DrumVoice
      { 
        \drummode
        {
          \stemDown
          bd4 bd bd bd | bd4 bd bd bd
        }
      }
    >>
}

{
  \new DrumStaff <<
    \set Staff.instrumentName = #"5)"
    \new DrumVoice
    \once \override StaffGrouper.staff-staff-spacing.padding = #30
      {
        \drummode
        {
          \stemUp
          \repeat unfold 4 {hh8 hh16 hh} | \repeat unfold 4 {hh8 hh16 hh}
          \bar ":|."
        }
      }
    \new DrumVoice
      { 
        \drummode
        {
          \stemDown
          bd4 <bd sn>4 bd4 <bd sn>4 | bd4 <bd sn>4 bd4 <bd sn>4
        }
      }
    >>
}
{
  \new DrumStaff <<
    \set Staff.instrumentName = #"6)"
    \new DrumVoice
    \once \override StaffGrouper.staff-staff-spacing.padding = #30
      {
        \drummode
        {
          \stemUp
          \repeat unfold 4 {hh16 hh16 hh8} | \repeat unfold 4 {hh16 hh16 hh8}
          \bar ":|."
        }
      }
    \new DrumVoice
      { 
        \drummode
        {
          \stemDown
          bd4 <bd sn>4 bd4 <bd sn>4 | bd4 <bd sn>4 bd4 <bd sn>4
        }
      }
    >>
}