set terminal png enhanced
set output "VOSTOK_T_CO2.png"
set title "Vostok Ice Core Data for 420,000 Years"
set key on
set xrange[*:*] reverse
set xlabel "age Ka"
set ylabel "{/Symbol \260} C"
set y2label "ppmv CO_2"

set ytics nomirror
set y2tics
set tics out
set autoscale y
set autoscale y2

set style line 1 lt 2 lc rgb "red" lw 1 pt 7 ps 1
set style line 2 lt 2 lc rgb "green" lw 1 pt 9 ps 1

plot 'deutnat.txt' using ($2/1000):4 axes x1y1 ls 1 w lines title "{/Symbol d}T", \
'co2nat.txt' using ($1/1000):2 axes x1y2 ls 2 w lines title "CO_2"
