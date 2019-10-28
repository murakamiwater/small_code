  set terminal pngcairo size 550,300 enhanced font 'Verdana,12'
  set encoding iso_8859_1
  set output "F_V.png"
  set ylabel "E[kj/mol]"
  set xlabel "Nagg"
  set key at 50,150
  set xtics scale 1
  set xrange [0:120]
  set yrange [0 : 200]
  set title "Energy Distribution(oblate, R_C=2.5)"
e=20.25
plot 'F_V.dat' u 1:2 w l t "Sphere",\
'F_V.dat' u 3:4 w l t "Prorate"
