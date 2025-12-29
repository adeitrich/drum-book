\version "2.24.4"
#(set-global-staff-size 21)

#(define LBdrums '(
  (pedalhihat cross #f -5)
  (bassdrum default #f -3)
  (acousticbassdrum default #f -5)
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

%circle =
%\once \override NoteHead.stencil = #(lambda (grob)
%    (let* ((note (ly:note-head::print grob))
%           (combo-stencil (ly:stencil-add
%               note
%               (circle-stencil note 0.15 0.05))))
%          (ly:make-stencil (ly:stencil-expr combo-stencil)
%            (ly:stencil-extent note X)
%            (ly:stencil-extent note Y))))

#(define circle (lambda (grob)
    (let* ((note (ly:note-head::print grob))
           (combo-stencil (ly:stencil-add
               note
               (circle-stencil note 0.12 0.12))))
          (ly:make-stencil (ly:stencil-expr combo-stencil)
            (ly:stencil-extent note X)
            (ly:stencil-extent note Y)))) )

\layout {
  indent = 0.75\cm
  %ragged-last = ##f
  \context {
    \Score
    \omit BarNumber
  }
}