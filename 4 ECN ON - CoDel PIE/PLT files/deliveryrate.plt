set datafile separator ','
set terminal png font arial 8 size 1200,700
set output "Delivery Rate CoDel PIE ECN ON.png"
set key bottom
set title "Socket Statistics"
set xlabel "Time (Seconds)"
set ylabel "Delivery Rate (Mbps)"
set xrange [0:40]
set yrange [0:1000]
set grid
plot 'ss-codel-on.csv' every ::1 u 1:7 w l lw 3 title 'FQ-CoDel ECN ON', 'ss-pie-on.csv' every ::1 u 1:7 w l lw 3 title 'FQ-PIE ECN ON'