set datafile separator ','
set terminal png font arial 8 size 1200,700
set output "Dev RTT PIE ECN ON OFF.png"
set title "Socket Statistics"
set xlabel "Time (Seconds)"
set ylabel "DevRTT (ms)"
set xrange [0:40]
set yrange [0:1]
set grid
plot 'ss_off.csv' every ::1 u 1:4 w l lw 3 title 'FQ-PIE ECN OFF', 'ss_on.csv' every ::1 u 1:4 w l lw 3 title 'FQ-PIE ECN ON'