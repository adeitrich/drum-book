\version "2.24.4"
\include "LB Include.ly"

\header {
	title = \markup {"Auto-pilot (for feet)"}
  subtitle = "Stick Control pgs. 5-7"
	%copyright = \markup {"© 2025 Larry Beers"}
  tagline = ""
}

\markup \vspace #3

{
  \new DrumStaff \with { drumStyleTable = #(alist->hash-table LBdrums) }<<
    \mark \markup { \box "A" }
    \new DrumVoice
      {
      \drummode {
      \stemUp
      \override Voice.Stem.stencil = ##f
      cl4 cl cl cl | cl cl cl cl 
      \bar ":|."
      s1 | s1
      }
      }
    \new DrumVoice { 
      \drummode {
        \stemDown
        bd2 bd | bd bd
        }
     }
  >>
}

{
  \new DrumStaff \with { drumStyleTable = #(alist->hash-table LBdrums) }<<
    \mark \markup { \box "B" }
    \new DrumVoice
      {
      \drummode {
      \stemUp
      \override Voice.Stem.stencil = ##f
      cl4 cl cl cl | cl cl cl cl 
      \bar ":|."
      s1 | s1
      }
      }
    \new DrumVoice
      { 
      \drummode {
        \stemDown
        \circle hhp2 \circle hhp | \circle hhp \circle hhp
        }
      }
    >>
}

{
  \new DrumStaff \with { drumStyleTable = #(alist->hash-table LBdrums) }<<
    \mark \markup { \box "C" }
    \new DrumVoice
      {
      \drummode {
      \stemUp
      \override Voice.Stem.stencil = ##f
      cl4 cl cl cl | cl cl cl cl 
      \bar ":|."
      s1 | s1
      }
      }
    \new DrumVoice
      { 
      \drummode {
        \stemDown
        bd2 \circle hhp | bd \circle hhp
        }
      }
    >>
}

{
  \new DrumStaff \with { drumStyleTable = #(alist->hash-table LBdrums) }<<
    \mark \markup { \box "D" }
    \new DrumVoice
      {
      \drummode {
      \stemUp
      \override Voice.Stem.stencil = ##f
      cl4 cl cl cl | cl cl cl cl 
      \bar ":|."
      s1 | s1
      }
      }
    \new DrumVoice
      { 
      \drummode {
        \stemDown
        bd4 hhp bd hhp | bd hhp bd hhp
        }
      }
    >>
}

{
  \new DrumStaff \with { drumStyleTable = #(alist->hash-table LBdrums) }<<
    \new DrumVoice
      {
      \drummode {
      \stemUp
      \override Voice.Stem.stencil = ##f
      \mark \markup { \box "E" }
      \bar "[|:"
      cl4 cl cl cl | cl cl cl cl 
      \mark \markup { \box \concat { E \super 2 } }
      \bar ":|][|:"
      cl4 cl cl cl | cl cl cl cl
      \bar ":|]"
      }
      }
    \new DrumVoice
      { 
      \drummode {
        \stemDown
        bd4 hhp8 bd bd4 hhp8 bd | bd4 hhp8 bd bd4 hhp8 bd
        bd4 hhp8 bd bd4 hhp4 | bd4 hhp8 bd bd4 hhp4
        }
      }
    >>
}

{
  \new DrumStaff \with { drumStyleTable = #(alist->hash-table LBdrums) }<<
    \new DrumVoice
      {
      \drummode {
      \stemUp
      \override Voice.Stem.stencil = ##f
      \mark \markup { \box "F" }
      \bar "[|:"
      cl4 cl cl cl | cl cl cl cl 
      \mark \markup { \box \concat { F \super 2 } }
      \bar ":|][|:"
      cl4 cl cl cl | cl cl cl cl
      \bar ":|]"
      }
      }
    \new DrumVoice
      { 
      \drummode {
        \stemDown
        bd4. bd8 hhp4 bd | bd4. bd8 hhp4 bd
        bd4 hhp8 bd4. hhp4 | bd4 hhp8 bd4. hhp4
        }
      }
    \new DrumVoice
      { 
      \drummode {
        \override Voice.Stem.stencil = ##f
        \override NoteColumn.ignore-collision = ##t
        hhp4 s2. | hhp4 s2.
        s1 | s1
        }
      }
    >>
}

{
  \new DrumStaff \with { drumStyleTable = #(alist->hash-table LBdrums) }<<
    \new DrumVoice
      {
      \drummode {
      \stemUp
      \override Voice.Stem.stencil = ##f
      \mark \markup { \box "G" }
      \bar "[|:"
      cl4 cl cl cl | cl cl cl cl 
      \mark \markup { \box \concat { G \super 2 } }
      \bar ":|][|:"
      cl4 cl cl cl | cl cl cl cl
      \bar ":|]"
      }
      }
    \new DrumVoice
      { 
      \drummode {
        \stemDown
        bd4 hhp8 bd hhp4 bd | <bd hhp>4. <bd hhp>4. <bd hhp>4
        <bd hhp>4. <bd hhp>4. <bd hhp>4 | bd4 hhp8 bd hhp4 bd
        }
      }
    >>
}

{
  \new DrumStaff \with { drumStyleTable = #(alist->hash-table LBdrums) }<<
    \new DrumVoice
      {
      \drummode {
      \stemUp
      \override Voice.Stem.stencil = ##f
      \mark \markup { \box H }
      \bar "[|:"
      cl4 cl cl cl | cl cl cl cl 
      \mark \markup { \box \concat { H \super 2 } }
      \bar ":|][|:"
      cl4 cl cl cl | cl cl cl cl
      \bar ":|]"
      }
      }
    \new DrumVoice
      { 
      \drummode {
        \stemDown
        bd4 hhp8 bd bd hhp r bd | <bd hhp>4. <bd hhp>8 bd4 hhp
        <bd hhp>4. <bd hhp>8 bd4 hhp | bd4 hhp8 bd bd hhp r bd
        }
      }
    >>
}

{
  \new DrumStaff \with { drumStyleTable = #(alist->hash-table LBdrums) }<<
    \new DrumVoice
      {
      \drummode {
      \stemUp
      \override Voice.Stem.stencil = ##f
      \mark \markup { \box "I" }
      \bar "[|:"
      cl4 cl cl cl | cl cl cl cl 
      \mark \markup { \box "J" }
      \bar ":|][|:"
      cl4 cl cl cl | cl cl cl cl
      \bar ":|]"
      }
      }
    \new DrumVoice
      { 
      \drummode {
        \stemDown
        r4 hhp8 bd hhp4 bd | hhp4. <bd hhp>4. <bd hhp>4
        hhp4. <bd hhp>4. bd8 hhp | r4 hhp8 bd hhp4 bd
        }
      }
    >>
}