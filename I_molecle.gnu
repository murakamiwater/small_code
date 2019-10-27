  set terminal pngcairo size 550,300 enhanced font 'Verdana,12'
  set encoding iso_8859_1
  set output "I_mole.png"
  set ylabel "E/k_BT{/Symbol c}"
  set xlabel "Nagg"
  set key at 120,0.12
  set xtics scale 1
  set xrange [0:160]
  set yrange [0 : 0.12]
  set title "Energy Distribution"

	plot  'I_V.dat' u 1:7 w l t "Sphere", 'I_V.dat' u 3:8 w l t "Prorate", 'I_V.dat' u 5:9 w l t "Obrate"
