#!/bin/bash
rm -Rf /opt/steamcmd/
case "`lsb_release -is`" in
     Ubuntu)
             apt-get update; apt-get upgrade -y
             apt-get install lib32z1 lib32ncurses5 lib32bz2-1.0 lib32gcc1 proftpd screen wget git curl -y
             apt-get install ia32-libs -y
             cd /opt
             mkdir steamcmd && cd steamcmd/
             clear
             curl -sqL 'https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz' | tar zxvf -
             ./steamcmd.sh +quit
             mkdir /usr/getit
             cd /usr/getit
             wget https://gist.githubusercontent.com/systemroot/796288a279f898834b8bad4d02d7e924/raw/7152b8387f302272d2d3e2db2c61337b78425d9e/f1.sh
             wget https://gist.githubusercontent.com/systemroot/2b8a2df82abb845205cda2d44738727e/raw/c504ad06122d69ea9e01203701f41947e2790ab0/f2.sh
             wget https://gist.githubusercontent.com/systemroot/cb63951e279565303f0e5883fbde682e/raw/bf7e5342131deac21a486200fc9d5af5ec14b865/f3.sh
             wget https://gist.githubusercontent.com/systemroot/9bca09a6ee3afb08048d4e3aca3d516a/raw/72828ee458f571b13ccc93e8b6d4d57174384a64/f4.sh
             chmod +x *
             ./f1.sh
             ./f2.sh
             ./f3.sh
             ./f4.sh
             rm -Rf /usr/getit
             apt-get install apache2 -y
             apt-get install php5 -y
             apt-get install -y libapache2-mod-php5 php5-mysql php5-curl php5-gd php5-intl php-pear php5-imagick php5-imap php5-mcrypt php5-ming php5-ps
             apt-get install -y php5-pspell php5-recode php5-snmp php5-sqlite php5-tidy php5-xmlrpc php5-xsl
             service nginx stop
             service apache2 start
             service proftpd start
             mkdir -p /var/www/html/modules/servers/licensing/
             cd /var/www/html/modules/servers/licensing/
             wget https://raw.githubusercontent.com/ch0here/GameCP/master/remote.php
             chmod -R 777 /var/www/html/
             chmod -R 777 /var/www/html/modules
             chmod -R 777 /var/www/html/modules/servers
             chmod -R 777 /var/www/html/modules/servers/licensing
             chmod -R 777 /var/www/html/modules/servers/licensing/remote.php
             chmod +x ~/gcp.sh
             cd ~/
             ./gcp.sh
             echo "Done"
             rm -Rf ~/cl.sh
             rm -Rf ~/gcp.sh
     ;;
     CentOS)
             yum -y update
             yum -y upgrade
             yum -y install epel-release
             yum -y install glibc libstdc++ screen proftpd nano wget curl
             yum -y install glibc.i686 libgcc.x86_64
             service proftpd start
             cd /opt
             mkdir steamcmd
             cd steamcmd/
             curl -sqL 'https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz' | tar zxvf -
             clear
             ./steamcmd.sh +quit
             clear
             yum -y install httpd
             yum -y install php
             yum -y install php-gd php-ldap php-odbc php-pear php-xml php-xmlrpc php-mbstring php-snmp php-soap curl curl-devel
             clear
             systemctl start httpd.service
             systemctl enable httpd.service
             service httpd stop
             service httpd start
             mkdir -p /var/www/html/modules/servers/licensing/
             cd /var/www/html/modules/servers/licensing/
             wget https://raw.githubusercontent.com/ch0here/GameCP/master/remote.php
             chmod -R 777 /var/www/html/
             chmod -R 777 /var/www/html/modules
             chmod -R 777 /var/www/html/modules/servers
             chmod -R 777 /var/www/html/modules/servers/licensing
             chmod -R 777 /var/www/html/modules/servers/licensing/remote.php
             clear
             mkdir /usr/getit
             cd /usr/getit
             wget https://gist.githubusercontent.com/systemroot/796288a279f898834b8bad4d02d7e924/raw/7152b8387f302272d2d3e2db2c61337b78425d9e/f1.sh
             wget https://gist.githubusercontent.com/systemroot/2b8a2df82abb845205cda2d44738727e/raw/c504ad06122d69ea9e01203701f41947e2790ab0/f2.sh
             wget https://gist.githubusercontent.com/systemroot/cb63951e279565303f0e5883fbde682e/raw/bf7e5342131deac21a486200fc9d5af5ec14b865/f3.sh
             wget https://gist.githubusercontent.com/systemroot/9bca09a6ee3afb08048d4e3aca3d516a/raw/72828ee458f571b13ccc93e8b6d4d57174384a64/f4.sh
             chmod +x *
             ./f1.sh
             ./f2.sh
             ./f3.sh
             ./f4.sh
             rm -Rf /usr/getit
             service apache2 restart
             cd ~/
             chmod +x ~/gcp.sh
             ./gcp.sh
             echo "Done."
             rm -Rf ~/cl.sh
             rm -Rf ~/gcp.sh
     ;;
esac
