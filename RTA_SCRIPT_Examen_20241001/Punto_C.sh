groupadd p1c2_2024_gAlumno
groupadd p1c2_2024_gProfesores
useradd -m -s /bin/bash -c Alumno 1 -G p1c2_2024_gAlumno p1c2_2024_A1
useradd -m -s /bin/bash -c Alumno 2 -G p1c2_2024_gAlumno p1c2_2024_A2
useradd -m -s /bin/bash -c Alumno 3 -G p1c2_2024_gAlumno p1c2_2024_A3
useradd -m -s /bin/bash -c Profesor 1 -G p1c2_2024_gProfesores p1c2_2024_P1
grep p1c2_2024_A1 /etc/shadow | awk -F ':' '{print }'
grep p1c2_2024_A2 /etc/shadow | awk -F ':' '{print }'
grep p1c2_2024_A3 /etc/shadow | awk -F ':' '{print }'
chown p1c2_2024_A1 /Examenes-UTN/alumno_1
chmod 750 /Examenes-UTN/alumno_1
chown p1c2_2024_A2 /Examenes-UTN/alumno_2
chmod 760 /Examenes-UTN/alumno_2
chown p1c2_2024_A3 /Examenes-UTN/alumno_3
chmod 700 /Examenes-UTN/alumno_3
chown p1c2_2024_P1 /Examenes-UTN/profesores
chmod 775 /Examenes-UTN/profesores
