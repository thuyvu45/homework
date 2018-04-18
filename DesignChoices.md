# Requirements

1. Web application in python code
2. Web server
3. Postgrest Database
4. Redis Server

# Design Choices

1. Two EC2 Linux servers - for redundancy
2. OS version 7.3
3. Python installation - pip
4. Tools for deployment - shell
5. Build tools - gradle
6. Application - apache-airflow

# Design Implement
1. automation directory will have all the scripts
2. deploy.sh script will transfer the necessary software over
3. setup.sh script will be executed on the target host server to run the installation and configuration of the app
4. test.sh script will be executed to run series of sanity tests to make sure that environment is ok