#!/bin/bash

rm -rf /opt/redmine-4.0.5-6/apps/redmine/htdocs/config/database.yml
touch /opt/redmine-4.0.5-6/apps/redmine/htdocs/config/database.yml
echo -e 'production:\n  adapter: mysql2\n  database: bitnami_redmine\n  host: 52.231.89.136\n  username: kwan\n  password: gahowumifrag\n  encoding: utf8\n  socket: /opt/redmine-4.0.5-6/mysql/tmp/mysql.sock' > /opt/redmine-4.0.5-6/apps/redmine/htdocs/config/database.yml
