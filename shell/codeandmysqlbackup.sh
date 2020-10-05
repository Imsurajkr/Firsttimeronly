#/bin/bash
date=`date +%F`

mkdir -p /opt/www/backup/$date 
cd /opt/www/backup/$date

tar -cvzf beautyful.tar.gz --exclude=/opt/www/html/*.sql.gz --exclude=/opt/www/html/*.tar.gz --exclude=/opt/www/html/*.sql --exclude=/opt/www/html/pub/media --exclude=/opt/www/html/var --exclude=/opt/www/html/theme_files --exclude=/opt/www/html/*.zip /opt/www/html

tar -cvzf stores.tar.gz --exclude=/opt/www/stores/*.sql.gz --exclude=/opt/www/stores/*.tar.gz --exclude=/opt/www/stores/*.sql --exclude=/opt/www/stores/pub/media --exclude=/opt/www/stores/var --exclude=/opt/www/stores/theme_files --exclude=/opt/www/stores/*.zip /opt/www/stores

mysql -e 'show databases'|grep -v information_schema|grep -v Database > dblist
while read db
do
mysqldump $db|gzip -v > $db.sql.gz
done < ./dblist

find /opt/www/backup/ -maxdepth 1 -mtime +1 -exec rm -rf {} \;

