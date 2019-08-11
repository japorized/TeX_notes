set terminal svg size 800,600 enhanced font "P052,12"
set output 'graphofD2.svg'
unset title
set xzeroaxis
set yzeroaxis

set style line 1 \
    linecolor rgb '#0060ad' \
    linetype 1 linewidth 2 \
    pointtype 7 pointsize 1.5

plot [-2*pi:2*pi] sum [n = -2 : 2] cos(n * x) + sin (n * x) notitle
