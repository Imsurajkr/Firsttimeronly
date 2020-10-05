#!/bin/bash


printf "\033[0;32mApache Server\033[0m\n";
apache=$(service apache2 status | grep Active)
echo -e "$apache\n";
sleep 2

printf "\033[0;32mPhp 5.6 FPM\033[0m\n";
fpm1=$(service php5.6-fpm status | grep Active)
echo -e "$fpm1\n";
sleep 2

printf "\033[0;32mPhp 7.0 FPM\033[0m\n";
fpm2=$(service php7.0-fpm status | grep Active)
echo -e "$fpm2\n";
sleep 2

printf "\033[0;32mPhp 7.1 FPM\033[0m\n";
fpm3=$(service php7.1-fpm status | grep Active)
echo -e "$fpm3\n";
sleep 2

printf "\033[0;32mPhp 7.2 FPM\033[0m\n";
fpm4=$(service php7.1-fpm status | grep Active)
echo -e "$fpm4\n";
sleep 2

printf "\033[0;32mMysql Server\033[0m\n";
mysql=$(service mysql status | grep Active)
echo -e "$mysql\n";
sleep 3

printf "\033[0;32mPostfix\033[0m\n";
postfix=$(service postfix status | grep Active)
echo -e "$postfix\n";
sleep 3

printf "\033[0;32mDaily Web Backup php56\033[0m\n";
cd /opt/autobackup/daily_backup/web_backup/php56
du -sch *
sleep 3

printf "\033[0;32mDaily Web Backup php70\033[0m\n";
cd /opt/autobackup/daily_backup/web_backup/php70
du -sch *
sleep 3

printf "\033[0;32mDaily Web Backup php71\033[0m\n";
cd /opt/autobackup/daily_backup/web_backup/php71
du -sch *
sleep 3

printf "\033[0;32mDaily Web Backup php72\033[0m\n";
cd /opt/autobackup/daily_backup/web_backup/php72
du -sch *
sleep 3

echo -e "$daily_web\n";
printf "\033[0;32mDaily Mysql Backup\033[0m\n";
cd /opt/autobackup/daily_backup/mysql_backup
du -sch *
sleep 4

printf "\033[0;32m Auto-Archieve Web Backup php56\033[0m\n";
cd /opt/autobackup/autoarchive/web_auto_archive/php56
ls -la
sleep 3

printf "\033[0;32m Auto-Archieve Web Backup php70\033[0m\n";
cd /opt/autobackup/autoarchive/web_auto_archive/php70
ls -la
sleep 3

printf "\033[0;32m Auto-Archieve Web Backup php71\033[0m\n";
cd /opt/autobackup/autoarchive/web_auto_archive/php71
ls -la
sleep 3

printf "\033[0;32m Auto-Archieve Web Backup php72\033[0m\n";
cd /opt/autobackup/autoarchive/web_auto_archive/php72
ls -la
sleep 3

printf "\033[0;32m Auto-Archieve Mysql Backup\033[0m\n";
cd /opt/autobackup/autoarchive/mysql_auto_archive
ls -la
sleep 4

printf "\033[0;32m Partitions\033[0m\n";
dh=$(df -Th)
echo -e "$dh\n";
