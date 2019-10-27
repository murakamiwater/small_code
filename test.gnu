  set terminal pngcairo size 550,300 enhanced font 'Verdana,12'
  set encoding iso_8859_1
  set output "test.png"
  set ylabel "E (kJ/mol)"
!  set ylabel "E/k_BT{/Symbol c}"
  set xlabel "Nagg"
  set key at 30,4
  set xtics scale 1
  set xrange [0:80]
  set yrange [0 : *]
  set title "Energy Distribution"

  e=20.25
plot 'test.dat' u 1:($2*e) w l t "Prolate, cyl",\
'test.dat' u 3:($4*e) w l t "Oblate, cyl",\
'test.dat' u 5:($6*e) w l t "Oblate, plt"
