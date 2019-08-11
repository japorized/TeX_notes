# needs argument for value of n
# e.g. run with gnuplot -e "n = 2" graphofDn.gnuplot
set terminal svg size 800,600 enhanced font "P052,12"
set output 'graphofD' . n . '.svg'

set style line 1 \
    linecolor rgb '#34A9D1' \
    linetype 1 linewidth 2 \
    pointtype 7 pointsize 1.5

unset title
set xzeroaxis linecolor rgb '#70C3FF'
set yzeroaxis linecolor rgb '#70C3FF'

plot [-2*pi:2*pi] sum [i = -n : n] cos(i * x) + sin (i * x) notitle ls 1
