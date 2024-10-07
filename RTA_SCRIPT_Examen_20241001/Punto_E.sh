cd UTNFRA_SO_1P2C_2024_RodriguezCardozo/RTA_ARCHIVOS_Examen_20241001
cat /proc/meminfo
grep "MemTotal" /proc/meminfo > Filtro_Basico.txt
sudo dmidecode -t chassis
sudo dmidecode -t chassis | grep "Chassis" >> Filtro_Basico.txt
sudo dmidecode -t chassis | grep "Manufacturer" >> Filtro_Basico.txt
