set datafile separator ','
set terminal png font arial 8 size 1200,700
set output "RTT(ss) PIE ECN ON OFF.png"
set key bottom
set title "Socket Statistics"
set xlabel "Time (Seconds)"
set ylabel "RTT (ms)"
set xrange [0:40]
set yrange [0:28]
set grid
plot 'ss_off.csv' every ::1 u 1:3 w l lw 3 title 'FQ-PIE ECN OFF', 'ss_on.csv' every ::1 u 1:3 w l lw 3 title 'FQ-PIE ECN ON'