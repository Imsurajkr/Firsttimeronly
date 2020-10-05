#!/bin/bash
#!/bin/sh
printf "\033[1;31mnew system software installation and configuration\033[0m\n";
a=$(echo -e " 1) Openssh-Server \n 2) Apache-Server \n 3) Mysql-server \n 4) php \n 5) PhpMyAdmin \n 6) Skype \n 7) Sublime \n 8) Google-Chrome \n 9) Filezilla \n 10) Anydesk \n 11) Freelancer \n 12) Up-Work \n 13) Timedoctor \n 14) Postman")
echo "$a"
printf "\033[1;31mEnter Your Choice:\033[0m\n"
while read num
do
case $num in
1)
printf "\033[1;31mOpenssh\033[0m\n"
apt-get update -y
apt-get install -y openssh-server
printf "\033[1;31mOpenssh is installed\033[0m\n"
echo "$a" 
;;
2)
printf "\033[1;31mApache-Server\033[0m\n"
apt-get install -y apache2
printf "\033[1;31mApache-Server is installed\033[0m\n"
echo "$a"
;;
3)
printf "\033[1;31mMysql-Server\033[0m\n"
apt-get install -y mysql-server
printf "\033[1;31mMysql-Server is installed\033[0m\n"
echo "$a"
;;
4)
printf "\033[1;31mphp\033[0m\n"
select php in php5.6 php7.0 php7.1 php7.2 
do
case $php in
php5.6)
printf "\033[1;31mphp5.6\033[0m\n"
apt-get install -y software-properties-common
add-apt-repository ppa:ondrej/php -y
apt-get update -y
apt-get install -y php5.6 libapache2-mod-php5.6 php5.6-curl php5.6-gmp php5.6-mbstring php5.6-phpdbg php5.6-sqlite3 php5.6-zip php5.6-bcmath php5.6-dba php5.6-imap php5.6-mcrypt php5.6-pspell php5.6-sybase php5.6-bz2 php5.6-dev php5.6-interbase php5.6-mysql php5.6-readline php5.6-tidy php5.6-cgi php5.6-enchant php5.6-intl php5.6-odbc php5.6-recode php5.6-xml php5.6-cli php5.6-fpm php5.6-json php5.6-opcache php5.6-snmp php5.6-xmlrpc php5.6-common php5.6-gd php5.6-ldap php5.6-pgsql php5.6-soap php5.6-xsl php5.6-mongo
sudo update-alternatives --set php /usr/bin/php5.6
a2dismod php7.0
a2dismod php7.1
a2dismod php7.2
a2enmod php5.6
service apache2 restart
printf "\033[1;31mphp5.6 is installed\033[0m\n" 
break
;;
  
php7.0)
printf "\033[1;31mphp7.0\033[0m\n"
apt-get install -y software-properties-common
add-apt-repository ppa:ondrej/php -y
apt-get update -y
apt-get install -y php7.0 libapache2-mod-php7.0 php7.0-curl php7.0-gmp php7.0-mbstring php7.0-phpdbg php7.0-sqlite3 php7.0-zip php7.0-bcmath php7.0-dba php7.0-imap php7.0-mcrypt php7.0-pspell php7.0-sybase php7.0-bz2 php7.0-dev php7.0-interbase php7.0-mysql php7.0-readline php7.0-tidy php7.0-cgi php7.0-enchant php7.0-intl php7.0-odbc php7.0-recode php7.0-xml php7.0-cli php7.0-fpm php7.0-json php7.0-opcache php7.0-snmp php7.0-xmlrpc php7.0-common php7.0-gd php7.0-ldap php7.0-pgsql php7.0-soap php7.0-xsl php7.0-mongo
sudo update-alternatives --set php /usr/bin/php7.0
a2dismod php5.6
a2dismod php7.1
a2dismod php7.2
a2enmod php7.0
service apache2 restart
printf "\033[1;31mphp7.0 is installed\033[0m\n" 
break
;;
php7.1)
printf "\033[1;31mphp7.1\033[0m\n"
apt-get install -y software-properties-common
add-apt-repository ppa:ondrej/php -y
apt-get update -y
apt-get install -y php7.1 libapache2-mod-php7.1 php7.1-curl php7.1-gmp php7.1-mbstring php7.1-phpdbg php7.1-sqlite3 php7.1-zip php7.1-bcmath php7.1-dba php7.1-imap php7.1-mcrypt php7.1-pspell php7.1-sybase php7.1-bz2 php7.1-dev php7.1-interbase php7.1-mysql php7.1-readline php7.1-tidy php7.1-cgi php7.1-enchant php7.1-intl php7.1-odbc php7.1-recode php7.1-xml php7.1-cli php7.1-fpm php7.1-json php7.1-opcache php7.1-snmp php7.1-xmlrpc php7.1-common php7.1-gd php7.1-ldap php7.1-pgsql php7.1-soap php7.1-xsl php7.1-mongo	
sudo update-alternatives --set php /usr/bin/php7.1
a2dismod php5.6
a2dismod php7.0
a2dismod php7.2
a2enmod php7.1
service apache2 restart
printf "\033[1;31mphp7.1 is installed\033[0m\n" 
break	
;;
php7.2)
printf "\033[1;31mphp7.2\033[0m\n"
apt-get install -y software-properties-common
add-apt-repository ppa:ondrej/php -y
apt-get update -y
apt-get install -y php7.2 libapache2-mod-php7.2 php7.2-curl php7.2-gmp php7.2-mbstring php7.2-phpdbg php7.2-sqlite3 php7.2-zip php7.2-bcmath php7.2-dba php7.2-imap php7.2-pspell php7.2-sybase php7.2-bz2 php7.2-dev php7.2-interbase php7.2-mysql php7.2-readline php7.2-tidy php7.2-cgi php7.2-enchant php7.2-intl php7.2-odbc php7.2-recode php7.2-xml php7.2-cli php7.2-fpm php7.2-json php7.2-opcache php7.2-snmp php7.2-xmlrpc php7.2-common php7.2-gd php7.2-ldap php7.2-pgsql php7.2-soap php7.2-xsl php7.2-mongo
sudo update-alternatives --set php /usr/bin/php7.2
a2dismod php5.6
a2dismod php7.1
a2dismod php7.0
a2enmod php7.2
service apache2 restart
printf "\033[1;31mphp7.2 is installed\033[0m\n" 
break
;; 
*)
break
;;
esac
done 
echo "$a"
;;
5)
printf "\033[1;31mPhpMyAdmin\033[0m\n"
apt-get install -y phpmyadmin
printf "\033[1;31mPhpMyAdmin is installed\033[0m\n"
echo "$a" 
;;
6)
printf "\033[1;31mSkype\033[0m\n"
wget https://repo.skype.com/latest/skypeforlinux-64.deb
dpkg -i skypeforlinux-64.deb
apt install -f
printf "\033[1;31mSkype is installed\033[0m\n"
echo "$a"
;;
7)
printf "\033[1;31mSublime\033[0m\n"
sudo add-apt-repository ppa:webupd8team/sublime-text-3 -y
sudo apt-get update
sudo apt-get install sublime-text-installer
printf "\033[1;31mSublime is installed\033[0m\n"
echo "$a"
;;
8)
printf "\033[1;31mGoogle-Chrome\033[0m\n"
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt-get update -y
sudo apt-get install google-chrome-stable -y
printf "\033[1;31mGoogle-Chrome is installed\033[0m\n"
echo "$a"
;;
9)
printf "\033[1;31mFilezilla\033[0m\n"
apt-get install -y filezilla
printf "\033[1;31mFilezilla is installed\033[0m\n"
echo "$a" 
;;
10)
printf "\033[1;31mAnyDesk\033[0m\n"
rm -rf anydesk*
wget https://download.anydesk.com/linux/anydesk_4.0.1-1_amd64.deb
dpkg -i anydesk_4.0.1-1_amd64.deb
apt-get install -f -y
printf "\033[1;31mAnyDesk is installed\033[0m\n"
echo "$a" 
;;
11)
printf "\033[1;31mFreelancer\033[0m\n"
rm -rf freelancer-desktop-app_ubuntu-amd64*
wget http://desktop-production.freelancer.com/latest/installers/freelancer-desktop-app_ubuntu-amd64.deb
dpkg -i freelancer-desktop-app_ubuntu-amd64.deb
apt-get install -f -y
printf "\033[1;31mFreelancer is installed\033[0m\n"
echo "$a" 
;;
12)
printf "\033[1;31mUp-Work\033[0m\n"
rm -rf upwork*
wget https://updates-desktopapp.upwork.com/binaries/v5_1_0_647_g0nxmj7uab8q069t/upwork_5.1.0.647_amd64.deb
dpkg -i upwork_5.1.0.647_amd64.deb
apt-get install -f -y
printf "\033[1;31mUp-Work is installed\033[0m\n"
echo "$a" 
;;
13)
printf "\033[1;31mTimeDoctor\033[0m\n"
rm -rf timedoctor*
wget https://updates.timedoctor.com/download/_production/tdlite/linux-ubuntu-16.04/timedoctorlite_2.3.49-14ubuntu16.04_amd64.deb
dpkg -i timedoctorlite_2.3.49-14ubuntu16.04_amd64.deb
apt-get install -f -y
printf "\033[1;31mTimeDoctor is installed\033[0m\n"
echo "$a" 
;;
14)
printf "\033[1;31mPostman\033[0m\n"
rm -rf postman*
cat > postman.sh <<'endmsg'
#!/bin/bash
cd /tmp || exit
echo "Downloading Postman ..."
wget -q https://dl.pstmn.io/download/latest/linux?arch=64 -O postman.tar.gz
tar -xzf postman.tar.gz
rm postman.tar.gz

echo "Installing to opt..."
if [ -d "/opt/Postman" ];then
sudo rm -rf /opt/Postman
fi
sudo mv Postman /opt/Postman

echo "Creating symbolic link..."
if [ -L "/usr/bin/postman" ];then
sudo rm -rf /usr/bin/postman
fi
sudo ln -s /opt/Postman/Postman /usr/bin/postman
endmsg
chmod +x postman.sh
sh postman.sh
postman
printf "\033[1;31mPostman is installed\033[0m\n"
echo "$a" 
;;

*)
exit
;;
esac
done

