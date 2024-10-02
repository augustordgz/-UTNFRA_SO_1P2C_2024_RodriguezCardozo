Disco de 10gb /dev/sdc
Disco de 2gb /dev/sdd
sudo fdisk -l
hacemos las 10 particiones iguales en el disco de 10gb, 3 primarias, la 4ta extendida y 7 particiones más logicas
nos queda 3 particiones principales de 1gb cada una, la extendida de 7gb así podemos agregar otras 7 particiones lógicas de 1gb cada una y nos quedan 10 particiones iguales.
formateamos todas las particiones
sudo mkfs -t ext4 /dev/sdc1
sudo mkfs -t ext4 /dev/sdc2
sudo mkfs -t ext4 /dev/sdc3
sudo mkfs -t ext4 /dev/sdc5
sudo mkfs -t ext4 /dev/sdc6
sudo mkfs -t ext4 /dev/sdc7
sudo mkfs -t ext4 /dev/sdc8
sudo mkfs -t ext4 /dev/sdc9
sudo mkfs -t ext4 /dev/sdc10
sudo mkfs -t ext4 /dev/sdc11
montamos las particiones de forma persistente, una en cada carpeta del punto A
 echo /dev/sdc1 /Examenes-UTN/alumno_1/parcial_1 ext4 defaults 0 0 | sudotee -a /etc/fstab
 echo /dev/sdc2 /Examenes-UTN/alumno_1/parcial_2 ext4 defaults 0 0 | sudotee -a /etc/fstab
 echo /dev/sdc3 /Examenes-UTN/alumno_1/parcial_3 ext4 defaults 0 0 | sudotee -a /etc/fstab
 echo /dev/sdc5 /Examenes-UTN/alumno_2/parcial_1 ext4 defaults 0 0 | sudotee -a /etc/fstab
 echo /dev/sdc6 /Examenes-UTN/alumno_2/parcial_2 ext4 defaults 0 0 | sudotee -a /etc/fstab
 echo /dev/sdc7 /Examenes-UTN/alumno_2/parcial_3 ext4 defaults 0 0 | sudotee -a /etc/fstab
 echo /dev/sdc8 /Examenes-UTN/alumno_3/parcial_1 ext4 defaults 0 0 | sudotee -a /etc/fstab
 echo /dev/sdc9 /Examenes-UTN/alumno_3/parcial_2 ext4 defaults 0 0 | sudotee -a /etc/fstab
 echo /dev/sdc10 /Examenes-UTN/alumno_3/parcial_3 ext4 defaults 0 0 | sudotee -a /etc/fstab
 echo /dev/sdc11 /Examenes-UTN/profesores ext4 defaults 0 0 | sudotee -a /etc/fstab
