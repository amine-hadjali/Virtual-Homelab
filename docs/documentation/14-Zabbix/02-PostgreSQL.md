# PostgreSQL Database Configuration and Zabbix Server Initialization
#### Before starting the Zabbix server, a dedicated PostgreSQL database and user account were created.  
#### The PostgreSQL interactive shell was opened using the PostgreSQL administrative account:  
    sudo -u postgres psql

#### A dedicated database user for Zabbix was created:
    CREATE USER zabbix WITH PASSWORD 'Password123';
#### A database named zabbix was then created and assigned to the newly created user:
    CREATE DATABASE zabbix OWNER zabbix;
#### The following naming convention was used:
    User:           zabbix
    Database:       zabbix
    Owner:          zabbix
Although these names are not mandatory, they follow the standard convention used in the official Zabbix documentation and simplify administration and troubleshooting.
#### The created objects were verified using:
    \du
    \l
#### The PostgreSQL console was then exited:
    \q
#### Importing the Zabbix Database Schema
The Zabbix SQL scripts package provides the database schema required by the server.
#### The available files were verified:
    ls /usr/share/zabbix-sql-scripts/postgresql/
#### The database schema was imported into the zabbix database:
    zcat /usr/share/zabbix-sql-scripts/postgresql/server.sql.gz | \
    sudo -u zabbix psql zabbix
This operation created all the necessary tables, indexes, and default data required by the Zabbix server.
### Configuring Zabbix Server
#### The Zabbix server configuration file was edited:
    sudo nano /etc/zabbix/zabbix_server.conf
#### We add the database password after:
    DBPassword=
#### The following database parameters were used:
    DBHost=localhost
    DBName=zabbix
    DBUser=zabbix
###Starting the Zabbix Server
#### The Zabbix server service was started:
    sudo systemctl restart zabbix-server
#### The service was enabled to start automatically during system boot:
    sudo systemctl enable zabbix-server
#### The server status was verified:
    systemctl status zabbix-server
#### The expected result was:
    Active: active (running)