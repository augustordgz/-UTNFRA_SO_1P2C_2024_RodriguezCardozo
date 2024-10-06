cd UTNFRA_SO_1P2C_2024_RodriguezCardozo/RTA_ARCHIVOS_Examen_20241001
echo 'Mi IP Pública es: $ (curl -s ifconfig.me)' > Filtro_Avanzado.txt
echo 'Mi usuario es: $ (whoami)' >> Filtro_Avanzado.txt
echo 'El Hash de mi Usuario es: $ (sudo awk -F: -v user=$ (whoami) '' == user {print }'' /etc/shadow)' >> Filtro_Avanzado.txt
echo 'La URL de mi repositorio es: $ (git remote get-url origin)' >> Filtro_Avanzado.txt
Aclaración: Usé comillas simples y separé los $ de los () para que no se ejecuten los comandos así poder mostar como escribí cada uno de ellos
