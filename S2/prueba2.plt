set terminal png font arial 14 size 800,600
set output "prueba2.png"

set title "Distribucion alumnos CC"

set key left top

#linecolor = lc rgb ""
#linewidth = lw

plot\
'distribucionCC.txt' u 1:3 w impulses lw 3 title "male", \
'' u 1:($4*-1) w impulses lw 7 title "female"