#!/bin/bash

echo '---
# Default setup is given for MySQL with ruby1.9.
# Examples for PostgreSQL, SQLite3 and SQL Server can be found at the end.
# Line indentation must be 2 spaces (no tabs).
production:
  adapter: mysql2
  database: bitnami_redmine
  host: 52.231.89.136
  username: kwan
  password: gahowumifrag
  encoding: utf8
  socket: /opt/redmine-4.0.5-6/mysql/tmp/mysql.sock
development:
  adapter: mysql2
  database: redmine_development
  host: localhost
  username: root
  password: ""
  encoding: utf8
# Warning: The database defined as "test" will be erased and
# re-generated from your development database when you run "rake".
# Do not set this db to the same as development or production.
test:
  adapter: mysql2
  database: redmine_test
  host: localhost
  username: root
  password: ""
  encoding: utf8
# PostgreSQL configuration example
#production:
#  adapter: postgresql
#  database: redmine
#  host: localhost
#  username: postgres
#  password: "postgres"
# SQLite3 configuration example
#production:
#  adapter: sqlite3
#  database: db/redmine.sqlite3
# SQL Server configuration example
#production:
#  adapter: sqlserver
#  database: redmine
#  host: localhost
#  username: jenkins
#  password: jenkins
' > /opt/redmine-4.0.5-6/apps/redmine/htdocs/config/database.yml
