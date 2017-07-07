#!/bin/bash
cd /usr/local/gcp/installs/
yum -y install wget
wget http://hldsbest.esy.es/dzpub.zip
yum -y install unzip
unzip dzpub.zip
rm -rf dzpub.zip
cd /usr/local/gcp/installs/cs
chmod +x hlds_run
cd
   echo "Powered by: ch0"
	 echo "Done. Bye!"
