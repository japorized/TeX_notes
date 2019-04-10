set term png transparent truecolor
set output 'mobius-band1.png'
set pm3d depthorder hidden3d 1
set hidden3d
set style fill transparent solid 0.65
set palette rgb 9,9,3
unset colorbox
unset key
unset border
unset tics
unset xtics
unset ytic
unset ztic
unset border
set hidden
set isosamples 30,30
set view 40,40,1.5,1
set parametric
splot [0:2 * pi][-pi:pi] (1 + 0.5*v*cos(u/2))*cos(u), (1 + 0.5*v*cos(u/2))*sin(u), 0.5 * v * sin(u/2)
