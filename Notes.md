1. EC2 instance created with "phiSecGroup". The group is tied to "myKey" access; myKey.pem file is saved under project root directory
2. I chose the latest version of RHEL (7.5) as OS for the instance.
3. The airflow app needs pip install and pip required "extra" packages.  I've downloaded and copy the RPM "epel-release-latest-7.noarch.rpm" to the E2C instance.
4.  yum install the RPM package
5.  yum install the "python-pip" package
6. deploy.sh &lt;path to pem key file> &lt;hostname> &lt;EC2 user>
>  ./deploy.sh ../myKey.pem ec2-54-171-181-0 ec2-user

7. cleanup.sh is used to cleanup the test environment to prepare for the next run
