\include "LB Include.ly"

\header {
	title = \markup { "$ + Cheese" }
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
      \repeat unfold 4 {hh8 hh8} | \repeat unfold 4 {hh8 hh8} | \repeat unfold 4 {hh8 hh8} | \repeat unfold 4 {hh8 hh8}
      \bar ":|."
      }
      }
    \new DrumVoice { 
      \drummode {
        \stemDown
        bd4 sn bd sn | bd4 sn8. bd16 bd4 sn | bd4 sn8. sn16 bd4 sn | bd4 sn bd8. bd16 sn4
        }
     }
  >>
}

{
  \new DrumStaff <<
    \set Staff.instrumentName = #"2)"
    \new DrumVoice = "first"
    \once \override StaffGrouper.staff-staff-spacing.padding = #30
      {
        \drummode
        {
          \stemUp
          \voiceOne
          \repeat unfold 4 {hh8 hh8} | \repeat unfold 4 {hh8 hh8} | \repeat unfold 4 {hh8 hh8} | \repeat unfold 4 {hh8 hh8}
          \bar ":|."
        }
      }
    \new DrumVoice = "second"
      { 
        \drummode
        {
          \stemDown
          \voiceTwo
          bd4 <bd sn> bd <bd sn> | bd4 <bd sn>4 bd8. bd16 <bd sn>4 | bd4 bd bd <bd sn>4 | bd4 <bd sn> bd8. sn16 bd4
        }
      }
    \new DrumVoice = "third"
      { 
        \drummode
        {
          \voiceThree
          \stemDown
          s1 | s1 | s4
          \override Beam.positions = #'(-.8 . -.8)
          \once \override NoteHead.X-offset = #0.7
          \once \override Stem.X-offset = #0.76
          sn8. sn16 s4 s4
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
          \repeat unfold 4 {hh8 hh8} | \repeat unfold 4 {hh8 hh8} | \repeat unfold 4 {hh8 hh8} | \repeat unfold 4 {hh8 hh8}
          \bar ":|."
        }
      }
    \new DrumVoice
      { 
        \drummode
        {
          \stemDown
          bd4 sn bd8 bd sn4 | bd4 sn8. bd16 bd8 bd sn4 | bd8. bd16 sn4 bd8 bd sn8. bd16 | bd4 sn8 bd16 sn bd8 bd sn4
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
          \repeat unfold 4 {hh8 hh8} | \repeat unfold 4 {hh8 hh8} | \repeat unfold 4 {hh8 hh8} | \repeat unfold 4 {hh8 hh8}
          \bar ":|."
        }
      }
    \new DrumVoice
      { 
        \drummode
        {
          \stemDown
          bd4 sn8 bd bd4 sn | bd8. bd16 sn8 bd bd4 sn | bd4 sn16bd bd8 bd4 sn8. bd16 | bd4 sn8 bd16 sn bd8. bd16 sn4
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
          \repeat unfold 4 {hh8 hh8} | \repeat unfold 4 {hh8 hh8} | \repeat unfold 4 {hh8 hh8} | \repeat unfold 4 {hh8 hh8}
          \bar ":|."
        }
      }
    \new DrumVoice
      { 
        \drummode
        {
          \stemDown
          bd4 sn8 bd4. sn8. bd16 | bd4 sn8 bd4. sn8. sn16 | bd4 sn16 bd bd8 r4 sn4 | bd8. bd16 sn8 bd4. sn4
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
          \repeat unfold 4 {hh8 hh8} | \repeat unfold 4 {hh8 hh8} | \repeat unfold 4 {hh8 hh8} | \repeat unfold 4 {hh8 hh8}
          \bar ":|."
        }
      }
    \new DrumVoice
      { 
        \drummode
        {
          \stemDown
          bd4 sn8 bd4 bd8 sn4 | bd8. bd16 sn8 bd4 bd8 sn8. sn16 | bd4 sn16 bd16 bd8 r16 bd16 bd8 sn4 | bd8. bd16 sn8 bd16sn r sn bd8 sn4
        }
      }
    >>
}
{
  \new DrumStaff <<
    \set Staff.instrumentName = #"7)"
    \new DrumVoice
    \once \override StaffGrouper.staff-staff-spacing.padding = #30
      {
        \drummode
        {
          \stemUp
          \repeat unfold 4 {hh8 hh8} | \repeat unfold 4 {hh8 hh8} | \repeat unfold 4 {hh8 hh8} | \repeat unfold 4 {hh8 hh8}
          \bar ":|."
        }
      }
    \new DrumVoice
      { 
        \drummode
        {
          \stemDown
          bd4 sn4. bd8 sn4 | bd8. bd16 sn4. bd8 sn8. sn16 | bd8. bd16 sn4 r16 bd16 bd8 sn8. bd16 | bd4 sn4 r16sn16 bd8 sn4
        }
      }
    >>
}
{
  \new DrumStaff <<
    \set Staff.instrumentName = #"8)"
    \new DrumVoice
    \once \override StaffGrouper.staff-staff-spacing.padding = #30
      {
        \drummode
        {
          \stemUp
          \repeat unfold 4 {hh8 hh8} | \repeat unfold 4 {hh8 hh8} | \repeat unfold 4 {hh8 hh8} | \repeat unfold 4 {hh8 hh8}
          \bar ":|."
        }
      }
    \new DrumVoice
      { 
        \drummode
        {
          \stemDown
          bd4 sn bd8 bd sn bd | bd4 sn 8. sn16 bd8 bd sn bd | bd8. bd16 sn4 bd8 bd sn bd16 sn | bd8. bd16 sn8. bd16 bd8 bd sn bd
        }
      }
    >>
}
{
  \new DrumStaff <<
    \set Staff.instrumentName = #"9)"
    \new DrumVoice
    \once \override StaffGrouper.staff-staff-spacing.padding = #30
      {
        \drummode
        {
          \stemUp
          \repeat unfold 4 {hh8 hh8} | \repeat unfold 4 {hh8 hh8} | \repeat unfold 4 {hh8 hh8} | \repeat unfold 4 {hh8 hh8}
          \bar ":|."
        }
      }
    \new DrumVoice
      { 
        \drummode
        {
          \stemDown
          bd8 bd sn bd r bd sn4 | bd8 bd sn bd r16 sn bd8 sn8. sn16 | bd8 bd sn bd16 sn r8 bd sn16 bd8 sn16 | bd8 bd sn bd16 sn r16 sn bd8 sn4
        }
      }
    >>
}