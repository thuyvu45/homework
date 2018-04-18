#!/bin/bash
LOGFILE=/tmp/setup.log.$$

echo "Starting setup ..." > LOGFILE 

# Setup envrionment if needed
echo "Setting up environment ..." >> LOGFILE 

# Install and deploy airflow  app
echo "Install and deploy app ..." >> LOGFILE 

# Run Healthcheck
echo "Healthcheck ..." >> LOGFILE 

# Run verification tests 
echo "Verification tests ..." >> LOGFILE 

echo "Done ..." > LOGFILE 
