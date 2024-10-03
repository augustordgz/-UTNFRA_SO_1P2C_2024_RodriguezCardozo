sudo groupadd p1c2_2024_gAlumno
sudo groupadd p1c2_2024_gProfesores
sudo useradd -m -s /bin/bash -c Alumno 1 -G p1c2_2024_gAlumno p1c2_2024_A1
sudo useradd -m -s /bin/bash -c Alumno 2 -G p1c2_2024_gAlumno p1c2_2024_A2
sudo useradd -m -s /bin/bash -c Alumno 3 -G p1c2_2024_gAlumno p1c2_2024_A3
sudo useradd -m -s /bin/bash -c Profesor 1 -G p1c2_2024_gProfesores p1c2_2024_P1
grep p1c2_2024_A1 /etc/shadow | awk -F ':' '{print }'
grep p1c2_2024_A2 /etc/shadow | awk -F ':' '{print }'
grep p1c2_2024_A3 /etc/shadow | awk -F ':' '{print }'
sudo chown p1c2_2024_A1 /Examenes-UTN/alumno_1
sudo chmod 750 /Examenes-UTN/alumno_1
sudo chown p1c2_2024_A2 /Examenes-UTN/alumno_2
sudo chmod 760 /Examenes-UTN/alumno_2
sudo chown p1c2_2024_A3 /Examenes-UTN/alumno_3
sudo chmod 700 /Examenes-UTN/alumno_3
sudo chown p1c2_2024_P1 /Examenes-UTN/profesores
sudo chmod 775 /Examenes-UTN/profesores
sudo -su -c whoami > /Examenes-UTN/alumno_1/validar.txt p1c2_2024_A1
sudo -su -c whoami > /Examenes-UTN/alumno_2/validar.txt p1c2_2024_A2
sudo -su -c whoami > /Examenes-UTN/alumno_3/validar.txt p1c2_2024_A3
sudo -su -c whoami > /Examenes-UTN/profesores/validar.txt p1c2_2024_P1
