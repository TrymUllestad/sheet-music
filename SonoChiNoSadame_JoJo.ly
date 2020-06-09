\header {
  title = "Sono Chi No Sadame"
  composer = "Kohei Tanaka"
  arranger = "Kow Otani"
}

lead = {
  \relative{
    \key bes \major
    \time 4/4
    
    c''4
  
  }
}

rythm = {
  \relative{
    \key bes \major
    \clef "bass"

    c4
  }
}

\score {
\new PianoStaff<<
  \new Staff {
    \new Voice{
      \lead
    }
  }

  \new Staff{
    \new Voice{
      \rythm
    }
  }
>>
}
\layout {}
\midi {}