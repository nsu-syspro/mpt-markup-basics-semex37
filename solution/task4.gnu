set terminal pngcairo enhanced size 1000,500 font "Verdana,10"

set xdata time
set timefmt "%Y-%m-%d"

set format x "%Y-%m-%d"
set xrange ["2013-01-01":"2024-01-01"]
set yrange [30:130]

set key top right
set style line 1 lc rgb "purple" lw 1.5

plot "data/task4-data.txt" using 1:2 axes x1y1 with lines ls 1 title "USD/RUB"
