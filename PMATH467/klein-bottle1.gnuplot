# color definitions
set term png transparent truecolor
set output 'klein-bottle1.png'
set style line 1 lc rgb '#157545' lt 1 lw 1 # --- green

set tmargin at screen 0.99
set bmargin at screen 0.01
set lmargin at screen 0
set rmargin at screen 0.9
set pm3d depthorder hidden3d 1
set hidden3d
set style fill transparent solid 0.65
set palette rgb 9,9,3
unset colorbox
unset key
unset border
unset tics
set ticslevel 0
set view 60,210,1.5,1
set isosamples 19,44
set xrange[-8:10]
set yrange[-8:8]
set urange[0:2*pi]
set vrange[0:4*pi]
set parametric
x(u,v)= v<2*pi ? (2.5-1.5*cos(v))*cos(u) : \
        v<3*pi ? -2+(2+cos(u))*cos(v)    : \
                 -2+2*cos(v)-cos(u)
y(u,v)= v<2*pi ? (2.5-1.5*cos(v))*sin(u) : \
                sin(u)
z(u,v)= v<pi   ? -2.5*sin(v)             : \
        v<2*pi ? 3*v-3*pi                : \
        v<3*pi ? (2+cos(u))*sin(v)+3*pi  : \
                 -3*v+12*pi
splot x(u,v),y(u,v),-z(u,v) w pm3d
