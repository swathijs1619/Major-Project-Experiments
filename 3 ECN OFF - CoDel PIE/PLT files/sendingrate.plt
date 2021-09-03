set datafile separator ','
set terminal png font arial 8 size 1200,700
set output "Sending Rate CoDel PIE ECN OFF.png"
set key bottom
set title "Netperf"
set xlabel "Time (Seconds)"
set ylabel "Sending Rate (Mbps)"
set xrange [0:40]
set yrange [0:1050]
set grid
plot 'netperf_fqcodel.csv' every ::1 u 1:2 w l lw 3 title 'FQ-CoDel ECN OFF', 'netperf_fqpie.csv' every ::1 u 1:2 w l lw 3 title 'FQ-PIE ECN OFF'