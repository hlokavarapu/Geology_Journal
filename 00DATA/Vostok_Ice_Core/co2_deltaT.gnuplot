set terminal png enhanced
set output "VOSTOK_ppmv_CO2_vs_deltaT.png"
set title "Vostok Ice Core Data for 420,000 Years"
set key top left
#set xrange[*:*] reverse

set xlabel "ppmv CO_2"
set ylabel "{/Symbol \260} C"

set ytics
set tics out
set autoscale y

set style line 1 lt 2 lc rgb "red" lw 1 pt 7 ps 1
set style line 2 lt 2 lc rgb "black" lw 2 pt 9 ps 1

#f(x) = m*x + b
g(x) = c*x*x + b*x + a

#fit f(x) 'interpolated_CO2_deltaT.txt' using 2:3 via m,b
fit g(x) 'interpolated_CO2_deltaT.txt' using 2:3 via a,b,c

plot 'interpolated_CO2_deltaT.txt' using 2:3 ls 1 w points notitle, \
g(x) ls 2 title 'g(x) = 3.51e-4*x^2 - 8.12e-2*x - 4.89'
#f(x) ls 2 title 'f(x) = 8.07e-2*x - 23.29'
