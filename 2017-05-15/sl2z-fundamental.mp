outputtemplate := "%j.mps";

verbatimtex
%&latex
\documentclass{article}
\usepackage{amsmath,amssymb}
\usepackage[sc]{mathpazo}
\usepackage[T1]{fontenc}
\begin{document}
etex

beginfig(1)
  u = 1.5cm;

  fill (-1/2*u, 3*u) -- (-1/2*u, sqrt(3)/2*u) .. (0,1*u) .. (1/2*u, sqrt(3)/2*u) -- (1/2*u, 3*u) -- cycle withcolor 0.8*white;

  drawarrow (-7/2*u,0) -- (7/2*u, 0);
  drawarrow (0,-1/2*u) -- (0, (3+1/4)*u);

  label.rt (btex ${\rm Re} z$ etex, (7/2*u,0));
  label.top (btex ${\rm Im} z$ etex, (0,(3+1/4)*u));

  for i = -2 thru 2:
    draw halfcircle scaled 2u shifted (i*u,0) withcolor 0.4*white;
    draw ((-1/2+i)*u, 0) -- ((-1/2+i)*u,3*u) withcolor 0.4*white;
    draw ((+1/2+i)*u, 0) -- ((+1/2+i)*u,3*u) withcolor 0.4*white;
  endfor;

  draw subpath (0,2) of (fullcircle scaled 2u shifted (-3*u,0)) withcolor 0.4*white;
  draw subpath (2,4) of (fullcircle scaled 2u shifted (+3*u,0)) withcolor 0.4*white;

  for i = -3 thru 2:
    draw halfcircle scaled (2/3*u) shifted ((1/3+i)*u,0) withcolor 0.4*white;
    draw halfcircle scaled (2/3*u) shifted ((2/3+i)*u,0) withcolor 0.4*white;
  endfor;

  drawdot (1/2*u, sqrt(3)/2*u) withpen pencircle scaled 2.5bp;
  drawdot (-1/2*u, sqrt(3)/2*u) withpen pencircle scaled 2.5bp;
  drawdot (0, u) withpen pencircle scaled 2.5bp;

endfig;

verbatimtex
\end{document}
etex
end

