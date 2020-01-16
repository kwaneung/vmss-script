#!/bin/bash

echo 'Wawip4@cacOB' | sudo -S su
sudo su

wget https://bitnami.com/redirect/to/818538/bitnami-redmine-4.0.5-6-linux-x64-installer.run

sudo -kS yum -y install wget perl-Data-Dumper

chmod 755 bitnami-redmine-4.0.5-6-linux-x64-installer.run

printf '1\ny\ny\ny\ny\n\n\n\n\n\n\n\nkwaneung\nkwaneung.kim@metanet.co.kr\nmsimamizi\n134652as\n134652as\n' | ./bitnami-redmine-4.0.5-6-linux-x64-installer.run

cp /opt/redmine-4.0.5-6/ctlscript.sh /etc/init.d/bitnami-redmine

perl -p -i -e '$.==2 and print "# chkconfig: 2345 80 30\n"' /etc/init.d/bitnami-redmine
perl -p -i -e '$.==3 and print "# description: BitNami Service\n"' /etc/init.d/bitnami-redmine
perl -p -i -e '$.==4 and print "# processname: bitnami-redmine\n"' /etc/init.d/bitnami-redmine
perl -p -i -e '$.==5 and print "# Source funtion library\n"' /etc/init.d/bitnami-redmine
perl -p -i -e '$.==6 and print "./etc/rc.d/init.d/functions\n"' /etc/init.d/bitnami-redmine

chkconfig --add bitnami-redmine
