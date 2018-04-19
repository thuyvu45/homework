#!/bin/bash

# Function to check and install package
check_isntall_package() {
  pkg_name=$1
  echo "name: ${pkg_name}"

  sudo yum info $pkg_name | grep Installed > /dev/null
  rc=$?

  if [[ $rc -ne 0 ]]
  then
    if [[ "${pkg_name}" = "epel-release" ]]
    then
      sudo yum -y install /tmp/epel-release-latest-7.noarch.rpm
    else
      sudo yum -y install $pkg_name
    fi
  fi
}

LOGFILE=/tmp/setup.log.$$

echo "Starting setup ..." > LOGFILE 

# Setup envrionment if needed
echo "Setting up environment ..." >> LOGFILE 
pkg_list="gcc gcc-c++ python-devel epel-release python2-pip"

for pkg in $pkg_list
do
  check_isntall_package $pkg
done

# Install and deploy airflow  app
echo "Install and deploy app ..." >> LOGFILE 
sudo pip install "apache-airflow[postgres]"

# Run Healthcheck
echo "Healthcheck ..." >> LOGFILE 

# Run verification tests 
echo "Verification tests ..." >> LOGFILE 

echo "Done ..." > LOGFILE 
