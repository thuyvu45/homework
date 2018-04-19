#!/bin/bash

LOGFILE=/tmp/cleanup.log.$$

echo "Starting cleanup ..." > LOGFILE 

# UnInstall airflow app
echo "UnInstall airflow app ..." >> LOGFILE 
/usr/bin/yes | sudo pip uninstall "apache-airflow[postgres,redis]"

# Cleanup all installed packages
pkg_list="gcc gcc-c++ python-devel epel-release python2-pip"

for pkg in $pkg_list
do
  sudo yum -y remove $pkg 
done

echo "Done ..." > LOGFILE 
