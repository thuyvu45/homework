1. EC2 instance created with "phiSecGroup". The group is tied to "myKey" access; myKey.pem file is saved under project root directory
2. I chose the latest version of RHEL (7.5) as OS for the instance.
3. The airflow app needs pip install and pip required "extra" packages.  I've downloaded and copy the RPM "epel-release-latest-7.noarch.rpm" to the E2C instance.
4.  yum install the RPM package
5.  yum install the "python-pip" package
