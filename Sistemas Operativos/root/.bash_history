clear
ls -l
clear
ls -l
less /var/spool/mail/root
clear
ls -l
clear
ls -l
less respaldo_scripts_20231108.tgz
ls
less confirmaciones.txt
clear
cd ..
cd Respaldos
ls
ls -l
less respaldo_scripts_20231108.tgz
clear
cd ..
cd Playbooks
ls
vi playbook_respaldo_scripts.yml
ansible-playbook playbook_respaldo_scripts.yml
crontab -e
clear
cd ..
ls
cd Respaldos
ls
ls -l
rm respaldo_scripts_20231108.tgz
ls
clear
cd ..
ls
clear
exit
clear
ls
cd Scripts
ls
./centro_de_computo.sh
clear
ls
less prueba.txt
clear
ls
ls -l
clear
ls -l
chmod 777 centro_de_computo.sh gestion_de_grupos.sh gestion_de_logs.sh gestion_de_usuarios.sh respaldo_scripts.sh
ls -l
clear
ls
nmtui
ip a s
systemctl restart network
ip a s
exit
w
clear
iptables -L
clear
ls
cd Scripts
ls
rm instalacion_mysql.sh
ls
ls -l
clear
yum install iptables-services iptables-devel iptables-utils
clear
iptables -F
iptables -X
iptables -L
iptables -t filter -I INPUT --proto tcp -p 22 --src 192.168.1.10 -j ACCEPT
iptables -t filter -I INPUT --proto tcp --dport 22 --src 192.168.1.10 -j ACCEPT
iptables -L
iptables -t filter -I INPUT --proto tcp --dport 22 --src 192.168.1.11 -j ACCEPT
iptables -t filter -I INPUT --proto tcp --dport 22 --src 192.168.1.12 -j ACCEPT
iptables -t filter -I INPUT --proto tcp --dport 22 --src 192.168.1.13 -j ACCEPT
iptables -L
iptables -F
iptables -X
iptables -L
clear
iptables -L
ip a s
exit
ip a s
ping www.google.com
cd ..
cd home
ls
cd oskcir
osckir
cd osckir
ls
vi /etc/skel
cd /etc/skel/
mkdir esqueleto-bash-logout
ll
cd esqueleto-bash-logout/
vi .bash_logout
vi /etc/bashrc 
vi .bash_logout
tail -1 /etc/.bashrc
tail -1 /etc/bashrc
tail -2 /etc/bashrc
clear
tail -2 /etc/bashrc
tail -2 /etc/bashrc >> /etc/skel/esqueleto-bash-logout/.bash_logout 
vi /etc/skel/esqueleto-bash-logout/.bash_logout 
exit
ls
less registrosES
cd Scripts
ls
vi gestion_de_usuarios.sh
./centro_de_computo.sh 
ll /home/prueba-skel/
cd /etc/skel/
ll
mv /etc/skel/esqueleto-bash-logout/.bash_logout /etc/skel/
rm /etc/skel/esqueleto-bash-logout/
rm -r /etc/skel/esqueleto-bash-logout/
clear
userdel prueba-skel
cd ..
ll
cd ..
ll
clear
cd /root/
ll
cd Scripts/
ll
./centro_de_computo.sh 
ll /home/prueba-skel/
ll
ls -la /home/prueba-skel/
cat /home/prueba-skel/.bash_logout 
cat /home/prueba-skel/esqueleto-bash-logout/.bash_logout 
mv /home/prueba-skel/esqueleto-bash-logout/.bash_logout /home/prueba-skel/
exit
passwd prueba-skel
clear
exit
cat /root/registrosES 
mv /home/prueba-skel/esqueleto-bash-logout/.bash_logout /root
ll /home/prueba-skel/esqueleto-bash-logout/
cp /home/prueba-skel/.bash_logout /root/
exit
ip a s
clear
ip a s
clear
clearr
clear
cl
clear
ip a s
ls
vi borrar-iptables-sh
clear
ls
cd Scripts
ls
ls -l
ll
clear
ll
ls -l
ll a
ll -a
clear
ll
l
ls
clear
ll
./centro_de_computo.sh
vi centro_de_computo.sh
./centro_de_computo.sh
cd ..
ll
cat registrosES
exit
w
clear
cd Respaldos/
ll
less mysql_backup_comprimido_20231113.tgz 
ll
crontab -e
clear
cd ..
cd Scripts/
ll
vi respaldo_mysql.sh 
./respaldo_mysql.sh 
cd ..
cd Respaldos/
ll
less mysql_backup_comprimido_20231115.tgz 
rm mysql_backup_comprimido_20231113.tgz 
ll
tar -xzf mysql_backup_comprimido_20231115.tgz 
ll
cd root
ll
cd Respaldos/
ll
cd ..
ll
cd ..
ll
rm mysql_backup_comprimido_20231115.tgz 
s
rm root/
rm -r root/
ll
clear
cat confirmaciones.txt 
clear
cd ..
cd Scripts/
ll
vi respaldo_mysql.sh 
./respaldo_mysql.sh 
cd ..
cd Respaldos/
ll
cat confirmaciones.txt 
less mysql_backup_comprimido_20231115.tgz 
cd ..
cd Scripts/
vi respaldo_mysql.sh 
./respaldo_mysql.sh 
cd ..
cd Respaldos/
ll
cat confirmaciones.txt 
ll
less mysql_backup_comprimido_20231115.tgz 
tar -czf mysql_backup_comprimido_20231115.tgz 
tar -czf mysql_backup_comprimido_20231115.tgz
ll
man tar
tar -xzf mysql_backup_comprimido_20231115.tgz
ll
rm mysql_backup_comprimido_20231115.tgz 
ll
cat mysql_backup_20231115.sql 
clear
ll
rm mysql_backup_20231115.sql 
ll
cd ..
cd Scripts/
ll
vi respaldo_mysql.sh 
./respaldo_mysql.sh 
ll
rm mysql_backup_20231115.sql 
vi respaldo_mysql.sh 
ll
cd ..
cd Respaldos/
ll
less mysql_backup_comprimido_20231115.tgz 
rm mysql_backup_comprimido_20231115.tgz 
ll
cat confirmaciones.txt 
clear
cd ..
cd Scripts/
ll
celar
clear
ll
vi gestion_de_usuarios.sh 
vi gdu.sh
chmod 777 gdu.sh 
./gdu.sh 
vi gdu.sh
./gdu.sh 
vi gdu.sh
./gdu.sh 
cd ..
cd home
ll
cd kilo
ll
clear
cd ..
cd root
cd Scripts/
cd ..
ll
cd root/
cd Scripts/
ll
chmod 777 borrar_iptables.sh 
ll
vi gdu.sh 
./gdu.sh 
ll
cd koko
ll
ls -la
vi .bash_logout 
less /home
cd ..
ll
vi gdu.sh 
./gd
./gdu.sh 
ll
less /home
clear
./gdu.sh 
vi gdu.sh 
./gdu.sh 
less /home/kaka
vi gdu.sh 
chage -l kilo
chage -l oaquino
./gdu.sh 
chage -l kilo
date
clear
vi gdu.sh 
./gdu.sh 
groups kilo
./gdu.sh 
vi gdu.sh 
./gdu.sh 
vi gdu.sh 
./gdu.sh 
vi gdu.sh 
./gdu.sh 
vi gdu.sh 
./gdu.sh 
./gestion_de_grupos.sh 
vi gdu.sh 
./gdu.sh 
group
groups
groups oaquino
vi gdu.sh 
./gdu.sh 
vi gdu.sh 
./gdu.sh 
groups ulises
cat /etc/group
clear
./gdu.sh 
groups ulises
cat /etc/group
vi gdu.sh 
clear
mv gestion_de_usuarios.sh jaja.sh
ll
mv gdu.sh gestion_de_usuarios.sh
ll
mv jaja.sh gdu.sh
clear
./centro_de_computo.sh 
ll
rm gdu.sh 
vi gestion_de_usuarios.sh 
vi gestion_de_logs.sh 
./centro_de_computo.sh 
vi centro_de_computo.sh 
vi gestion_de_logs.sh 
./centro_de_computo.sh 
jobs
vi gestion_de_logs.sh 
rm gestion_de_logs.sh.swp
vi gestion_de_logs.sh 
rm .gestion_de_logs.sh.swp
./centro_de_computo.sh 
vi gestion_de_logs.sh 
./gestion_de_logs.sh 
vi gestion_de_logs.sh 
./gestion_de_logs.sh 
vi gestion_de_logs.sh 
./gestion_de_logs.sh 
./centro_de_computo.sh 
vi gestion_de_grupos.sh 
./gestion_de_grupos.sh 
clear
exit
clear
ll
cd Scripts/
ll
vi gestion_de_usuarios.sh 
clear
ll
vi gestion_de_grupos.sh 
vi gestion_de_logs.sh 
ll
vi centro_de_computo.sh 
clear
ll
cd ..
cd Playbooks/
ll
vi respaldo_scripts.yaml 
vi respaldo_mysql.yaml
vi respaldo_scripts.yaml 
cd ..
cd Scripts/
ll
cd ..
cd Playbooks/
vi respaldo_mysql.yaml
ansible-playbook --syntax-check respaldo_mysql.yaml 
ansible-playbook respaldo_mysql.yaml 
crontab -e
ll
clear
cd ..
cd Respaldos/
lll
ll
clear
ll
clear
ll
cat confirmaciones.txt 
cd ..
cd Playbooks/
vi respaldo_mysql.yaml 
ansible-playbook respaldo_mysql.yaml 
clear
crontab -e
vi respaldo_mysql.yaml 
vi respaldo_scripts.yaml 
ansible-playbook respaldo_mysql.yaml 
ansible-playbook respaldo_scripts.yaml 
clear
crontab -e
cd ..
cd Scripts/
ll
cd ..
cd Respaldos/
ll
cat confirmaciones.txt 
clear
ll
less mysql_backup_comprimido_20231115.tgz 
less respaldo_scripts_20231115.tgz 
tar -xcf respaldo_scripts_20231115.tgz 
ll
tar -xzf respaldo_scripts_20231115.tgz 
ll
cd root
ll
:q!
cd ..
ll
rm -r root
ll
rm mysql_backup_comprimido_20231115.tgz 
rm respaldo_scripts_20231115.tgz 
ll
clear
cd ..
cd Scripts/
ll
celar
clear
cd ..
cd Scripts/
ll
vi respaldo_scripts.sh 
cd ..
cd Playbooks/
ll
vi respaldo_scripts.yaml 
ansible-playbook respaldo_scripts.yaml 
dc ..
cd ..
cd Respaldos/
clear
ll
less respaldo_scripts_20231115.tgz 
cat confirmaciones.txt 
clear
tar -xzf respaldo_scripts_20231115.tgz 
ll
rm respaldo_scripts_20231115.tgz 
ll
cd ..
cd Scripts/
vi respaldo_scripts.sh 
vi respaldo_mysql.sh 
vi respaldo_scripts.sh 
cd ..
cd Playbooks/
vi respaldo_mysql.yaml 
ansible-playbook respaldo_mysql.yaml 
crontab -e
crontab ll
crontab -e
vi respaldo_scripts.yaml 
ansible-playbook respaldo_scripts.yaml 
clear
ll
cd ..
cd Respaldos/
ll
cat confirmaciones.txt 
less respaldo_scripts_20231115.tgz 
clear
cd ..
cd Scripts/
vi respaldo_scripts.sh 
cd ..
cd Respaldos/
ll
rm respaldo_scripts_20231115.tgz 
clear
ll
celar
clear
ll
cat confirmaciones.txt 
less respaldo_scripts_20231115.tgz 
ll
cd ..
cd Scripts/
vi respaldo_s
vi respaldo_scripts.sh 
cd ..
cd Respaldos/
cat confirmaciones.txt 
less respaldo_scripts_20231115.tgz 
clear
..
cd ..
cd Scripts/
vi respaldo_scripts.sh 
cd ..
cd Respaldos/
ll
cat confirmaciones.txt 
clear
cat confirmaciones.txt 
ll
less respaldo_scripts_20231115.tgz 
celar
clear
cd ..
cd Scripts/
vi respaldo_scripts.sh 
clear
cd ..
cd Respaldos/
ll
cat confirmaciones.txt 
less respaldo_scripts_20231115.tgz 
tar -czf respaldo_scripts_20231115.tgz 
tar -xzf respaldo_scripts_20231115.tgz 
ll
cd ..
cd Scripts/
ll
vi respaldo_scripts.sh 
cd ..
cd Respaldos/
ll
rm -r root
s
clear
ll
cat confirmaciones.txt 
clear
rm respaldo_scripts_20231115.tgz 
clear
ll
cat confirmaciones.txt 
less respaldo_scripts_20231115.tgz 
crontab -e
ll
cat confirmaciones.txt 
clear
ll
less mysql_backup_comprimido_20231115.tgz 
tar -xzf respaldo_scripts_20231115.tgz 
ll
cd ..
cd Scripts/
vi respaldo_scripts.sh 
cd ..
cd Respaldos/
ll
rm borrar_iptables.sh 
rm centro_de_computo.sh 
rm gestion_de_grupos.sh 
rm gestion_de_usuarios.sh 
rm gestion_de_logs.sh 
rm gestion_de_servicios.sh 
ll
rm instalar_mysql.sh 
rm mensaje.sh 
rm prueba.txt 
rm respaldo_scripts
rm respaldo_scripts.sh 
ll
rm respaldo_mysql.sh 
ll
less respaldo_scripts_20231115.tgz 
tar -xzf respaldo_scripts_20231115.tgz 
ll
cd Scripts/
ll
cd ..
ññ
lll
clear
ll
crontab -e
tar -xzf mysql_backup_comprimido_20231115.tgz 
ll
rm mysql_backup_comprimido_20231115.tgz 
rm respaldo_scripts_20231115.tgz 
ll
cat confirmaciones.txt 
clear
ll
cd Scripts/
ll
vi respaldo_scripts.sh 
clear
cd ..
l
lll
ll
less mysql_backup_20231115.sql 
clear
ll
rm -r Scripts/
ll
rm mysql_backup_20231115.sql 
clear
ll
cd ..
cd Playbooks/
vi respaldo_scripts.yaml 
vi respaldo_mysql.yaml 
vi respaldo_scripts.yaml 
vi respaldo_mysql.yaml 
vi respaldo_scripts.yaml 
clear
cd ..
crontab -e
clear
cd Scripts/
ll
vi borrar_iptables.sh 
vi /etc/bashrc 
alias
ls
clear
alias
l
l.
ls -d
ls -d .
ls -d .*
clear
alias
su oaquino
clear
ll
clear
alias
bcp
BCP
clear
ps -A -o stat,ppid,pid,cmd | grep -e '^[Zz]'
sleep 60 &
ps -A -o stat,ppid,pid,cmd | grep -e '^[Zz]'
jobs
kill %1
jobs
clear
ps
clear
vi gestion_de_procesos.sh
exit
cd Respaldos/
ll
cat confirmaciones.txt 
clear
ps A
ps -A
ps
clear
ps -a
ps -d
ps -e
cd ..
cd Scripts/
ll
clear
vi gestion_de_procesos.sh 
chmod 777 gestion_de_procesos.sh 
ll
clear
ps -T
ps -r
w
clear
ps -x
ps -aux
ps -u
ps -a
ps -ua
w
clear
top
clear
ps aux
ps -aux
ps aux
ps -aux
ps -p 1340
ps -p 1066
clear
top a





kill -l


# Función para mostrar información de todos los procesos
show_all_processes() {     echo "Información de todos los procesos:";     ps aux; }
# Función para mostrar información detallada de un proceso por ID
show_process_details() {     read -p "Ingrese el ID del proceso: " process_id;     ps -p $process_id -o pid,ppid,user,%cpu,%mem,cmd; 
# Función para matar (terminar) un proceso por ID
kill_process() {     read -p "Ingrese el ID del proceso para terminar: " process_id;     kill -9 $process_id;     echo "Proceso terminado."


# Función para mostrar los procesos de un usuario específico
show_user_processes() {     read -p "Ingrese el nombre de usuario: " username;     ps -u $username; }

; clear
clear
ll
vi gestion_de_procesos.sh 
ll
ps aux
ps -p 1286 -o pid,ppid,user,%cpu,%mem,cmd
ps -p 1464 -o pid,ppid,user,%cpu,%mem,cmd
ps -p 1462 -o pid,ppid,user,%cpu,%mem,cmd
clear
ps -u root
clear
vi gestion_de_procesos.sh 
cleasr
clear
ll
vi centro_de_computo.sh 
cd ..
cd Playbooks/
vi pbfeli.yaml
cd ..
cd Playbooks/
ll
rm pbfeli.yaml 
ll
clear
cd ..
cd Scripts/
ll
vi gestion_de_servicios.sh 
exit
yum install iptables-services iptables-devel iptables-utils
cd Scripts/
ll
./borrar_iptables.sh 
iptables -L
clear
iptables -t filter -I INPUT --proto tcp -p 22 192.168.0.2 -j ACCEPT
iptables -t filter -I INPUT --proto tcp -p 22 --src 192.168.0.2 -j ACCEPT
iptables -t filter -I INPUT --proto tcp --dport 22 --src 192.168.0.2 -j ACCEPT
iptables -L
iptables -F
iptables -X
iptables -L
clear
iptables -t filter -I INPUT -m iprange --src-range 192.168.0.1-192.168.0.6 -j ACCEPT
iptables -L
iptables -F
iptables -X
iptables -t filter -I INPUT --proto tcp --dport 22 -m iprange --src-range 192.168.0.1-192.168.0.6 -j ACCEPT
iptables -L
iptables -t filter -A INPUT --proto tcp -p 22 -j REJECT
iptables -t filter -A INPUT --proto tcp --dport 22 -j REJECT
cd Scripts
ll
cd respaldo
ll
cd ..
rm -r respaldo
ll
mkdir Gestion
mv gestion_de_grupos.sh gestion_de_logs.sh gestion_de_procesos.sh gestion_de_respaldos.sh gestion_de_servicios.sh gestion_de_usuarios.sh Gestion
ll
les Gestion
less Gestion
vi centro_de_computo.sh 
./centro_de_computo.sh 
ll
mkdir Puesta_a_punto
mv borrar_iptables.sh instalar_mysql.sh Puesta_a_punto
ll
mkdir Backup
mv respaldo_mysql.sh respaldo_scripts.sh Backup
ll
rm prueba.txt 
ll
rm mensaje.sh 
ll
clear
ll
less Puesta_a_punto
clear
ll
cd Backup/
ll
vi respaldo_usuarios.sh
chmod 777 respaldo_usuarios.sh 
./respaldo_usuarios.sh 
ll
cd .
cd ..
ll
cd ..
ll
cd Respaldos/
ll
less respaldo_usuarios.tgz 
tar -xzf respaldo_usuarios.tgz 
ll
cd tmp/
ll
cat tmp.AtutBV7rMN 
cd ..
ll
rm -r respaldo.tgz 
rm -r respaldo_usuarios.tgz 
ll
cat confirmaciones.txt 
wq
clear
ll
rm -r tmp/
ll
passwd
cd ..
cd Scripts/
./centro_de_computo.sh 
cd ..
ll
cd root/
ll
cd Playbooks/
ll
vi respaldo_scripts.yaml 
vi respaldo_mysql.yaml 
vi respaldo_usuarios.yaml 
vi respaldo_mysql.yaml 
vi respaldo_usuarios.yaml 
vi respaldo_mysql.yaml 
vi respaldo_scripts.yaml 
vi respaldo_mysql.yaml 
vi respaldo_scripts.yaml 
cd ..
cd Scripts/
ll
cd ..
cd Playbooks/
vi respaldo_scripts.yaml 
vi respaldo_mysql.yaml 
vi respaldo_usuarios.yaml 
ansible-playbook --syntax-check respaldo_usuarios.yaml 
ansible-playbook --syntax-check respaldo_mysql.yaml 
ansible-playbook --syntax-check respaldo_scripts.yaml 
vi respaldo_mysql.yaml 
vi respaldo_scripts.yaml 
vi respaldo_usuarios.yaml 
ansible-playbook respaldo_mysql.yaml 
ansible-playbook respaldo_scripts.yaml 
ansible-playbook respaldo_usuarios.yaml 
crontab -e
cd ..
cd Respaldos/
ll
clear
ll
less respaldo_scripts_20231115.tgz 
less respaldo_usuarios.tgz 
clear
cd ..
cd Playbooks/
ll
vi respaldo_scripts.yaml 
vi respaldo_usuarios.yaml 
vi respaldo_mysql.yaml 
ansible-playbook respaldo_scripts.yaml 
ansible-playbook respaldo_usuarios.yaml 
ansible-playbook respaldo_mysql.yaml 
clear
cd ..
cd Respaldos/
ll
rm -r mysql_backup_comprimido_20231115.tgz 
rm -r respaldo_scripts_20231115.tgz 
rm -r respaldo_usuarios.tgz 
cd ..
iptables -t filter -I INPUT -m iprange --src-range 192.168.0.0-192.168.0.5
iptables -L
clear
iptables -F
iptables -X
iptables -L
clear
iptables -t filter -I INPUT -m iprange --src-range 192.168.0.0-192.168.0.5
iptables -t filter -I INPUT -m iprange --src-range 192.168.1.0-192.168.1.4
iptables -t filter -I INPUT -m iprange --src-range 192.168.3.0-192.168.3.4
iptables -L
iptables -F
iptables -X
clear
iptables -t filter -I INPUT -m iprange --src-range 192.168.0.0-192.168.0.5 -j ACCEPT
iptables -t filter -A INPUT -m iprange --src-range 192.168.1.0-192.168.1.4 -j ACCEPT
iptables -t filter -A INPUT -m iprange --src-range 192.168.2.0-192.168.2.4 -j ACCEPT
iptables -t filter -A INPUT -m iprange --src-range 192.168.3.0-192.168.3.4 -j ACCEPT
iptables -L
iptables -F
iptables -X
clear
iptables -L
clear
exit
iptables -L
clear
vi /etc/skel/
vi /etc/skel/.bash_logout 
useradd osckir
cd ..
cd home
cd osckir
ls -la
vi .bash_logout 
clear
cd ..
cd root
clear
ip a s
clear
crontab -e
clear
vi /var/mail/
less /var/mail/
clear
iptables -t filter -I INPUT --proto tcp --dport 22 -m iprange --src-range 192.168.5.0-192.168.5.3 -j ACCEPT
iptables -t filter -A INPUT --proto tcp --dport 22 -j REJECT
iptables -L
iptables -F
iptables -X
iptables -L
clear
crontab .e
crontab -e
clear
ip a s
clear
iptables -L
clear
ip a s
cd ..
cd etc
cd sysconfig/
ll
less iptables
cat iptables
clear
exit
