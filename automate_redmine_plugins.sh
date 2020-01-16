#!/bin/bash

wget https://raw.githubusercontent.com/kwaneung/vmss-script/master/redmine_agile.zip
unzip redmine_agile.zip
mv redmine_agile /opt/redmine-4.0.5-6/apps/redmine/htdocs/plugins
cd /opt/redmine-4.0.5-6/apps/redmine/htdocs/plugins

perl -p -i -e '$.==9 and print "PATH=/opt/redmine-4.0.5-6/ruby/bin:$PATH:$HOME/bin"' ~/.bash_profile
source ~/.bash_profile
yum -y install gcc gcc-c++ httpd-devel
gem install redmine_crm
bundle install --no-deployment
rake redmine:plugins:migrate RAILS_ENV=production
