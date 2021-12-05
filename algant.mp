outputtemplate := "%j.mps";

beginfig(1)

  u = 2cm;

  fill (-u,-u) -- (u,-u) -- (u,u) -- (-u,u) -- cycle withcolor (0.51, 0.67, 0.78);
  fill fullcircle xscaled (2*u) yscaled (3/4*u) shifted (0*u,u) withcolor (0.51, 0.67, 0.78);
  fill fullcircle xscaled (2*u) yscaled (3/4*u) shifted (0*u,-u) withcolor (0.51, 0.67, 0.78);

  fill fullcircle scaled (2*u) withcolor (0.78, 0.51, 0.51);

  pickup pencircle scaled 1.5bp;

  draw fullcircle scaled (2*u);
  draw fullcircle xscaled (2*u) yscaled (3/4*u) shifted (0*u,u);
  draw (-u,+u) -- (-u,-u);
  draw (+u,+u) -- (+u,-u);
  draw halfcircle xscaled (2*u) yscaled (3/4*u) shifted (0*u,-u) dashed dashpattern(on 10bp off 10bp);
  draw halfcircle xscaled (2*u) yscaled (3/4*u) rotated 180 shifted (0*u,-u);

  draw halfcircle xscaled (2*u) yscaled (3/4*u) dashed dashpattern(on 10bp off 10bp);
  draw halfcircle xscaled (2*u) yscaled (3/4*u) rotated 180;

  draw btex \bf ALGANT etex scaled 0.22cm shifted (u+0.5cm,0.1*u);
  draw btex \bf Erasmus Mundus etex scaled 0.123cm shifted (u+0.6cm,-0.7*u);



  draw btex \bf 2 etex scaled 0.075cm shifted (-0.46cm, -1.8*u) withcolor (0.78, 0.51, 0.51);
  draw btex \bf : etex scaled 0.075cm shifted (-0.01cm, -1.8*u) withcolor (0.5, 0.5, 0.5);
  draw btex \bf 3 etex scaled 0.075cm shifted (+0.25cm, -1.8*u) withcolor (0.51, 0.67, 0.78);

endfig;
end
