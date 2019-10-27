  set terminal pngcairo size 550,300 enhanced font 'Verdana,12'
  set encoding iso_8859_1
  set output "mu_V.png"
  set ylabel "E/N_{agg}k_BT{/Symbol c}"
  set xlabel "N_{agg}"
  set key at 30,0.08
  set xtics scale 1
  set xrange [0:80]
  set yrange [0 : 0.1]
  set title "Energy Distribution"

	plot  'I_V.dat' u 1:7 w l t "Sphere", 'I_V.dat' u 3:8 w l t "Prorate", 'I_V.dat' u 5:9 w l t "Obrate"
