  set terminal pngcairo size 550,300 enhanced font 'Verdana,12'
  set encoding iso_8859_1
  set output "I_V_0.65.png"
  set ylabel "E[kJ/mol]"
  set xlabel "Nagg"
  set key at 30,100
  set xtics scale 1
  set xrange [0:160]
  set yrange [40 : 450]
  set title "Energy Distribution"
e=20.25
plot'I_V_0.65.dat' u 1:(e*$2) w l t "Sphere",\
'I_V_0.65.dat' u 3:(e*$4) w l t "Prorate",\
'I_V_0.65.dat' u 5:(e*$6) w l t "Obrate"
