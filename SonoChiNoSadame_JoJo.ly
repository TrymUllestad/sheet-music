\header {
  title = "Sono Chi No Sadame"
  composer = "Kohei Tanaka"
  arranger = "Kow Otani"
}

lead = {
  \relative{
    \key bes \major
    \time 4/4
    
    % Intro
    <g' bes d>16 <g bes d>8 <g bes d>16 <g bes d>8 <g bes d> <des' f>4 <b ees> |
    <g bes d>16 <g bes d>8 <g bes d>16 <g bes d>8 <g bes d> r <a ees'>4. |
    <bes bes'>1 |
    d,8. g16~ g8 bes a2 |
    f8 f f16 e d8 f8 f f16 e d8 |
    <bes' bes'> <g g'> r4 r2 |
    }

    % Enter cowboy man
    \relative {

    bes'8 g r d f g bes a |
    g4 d8 f bes a g f |
    <ees g>1 |
    r2 r4 a8 bes |
    a g r d f g bes a |
    g4 d8 f d' c bes a |
    bes1 |
  
  }
  \addlyrics{
    So -- ra! Ko -- bo -- re -- o -- chi -- ta fu -- ta -- tsu no ho -- shi ga
    Hi -- ka -- ri to ya -- mi no mi -- na -- mo sui -- ko -- ma -- re -- te -- yu -- ku 
  }
}

rythm = {
  \relative{
    \key bes \major
    \clef "bass"

    % Intro
    g16 g8 g16 g8 g ees4 d |
    g16 g8 g16 g8 g r <d d,>4. |
    <bes bes'>8 <g g'> r <g g'> <f f'> <g g'> r <g g'> |
    <bes bes'> <g g'> <des' des'> <c c'>~ <c c'> <bes bes'> <f f'> <fis fis'> |
    <g g'> <a a'> <bes bes'> <g g'> g' <g g,> <f f,> <fis fis,> |
    <bes bes,>8 <g g,> r4 <d d,>8 <d d,> r4 |

    % Enter cowboy man
    g,8 g, g' g, d' g g,16 d' g g, |
    g'4 g,8 d' f g d g, |
    g4 g g' g,8 d' |
    g,4 g8 d' f g d g, |
    g' g, g' g, d' g g,16 d' g g, |
    g'4 g,8 d' f g d g, |
    ees'4 ees8 bes' ees ees, ees bes'
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

\layout {
  \context{
    \Score 
    \override SpacingSpanner #'common-shortest-duration = #(ly:make-moment 1 12)
  }
}
\midi {}

}