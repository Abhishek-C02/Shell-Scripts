
#!/bin/bash

##########################
#                        #
# Author: Abhishek.C     #
# Date: 22-07-2024       #
#                        #
##########################

#Install AWS-CLI on Ubuntu

#set -x #Debug mode
#set -e
#set -o

os=`cat /etc/os-release | grep -i "PRETTY" | awk -F "=" '{print $2}'` #Check OS Version

echo -e "\n\nInstalling aws-cli on $os" 
echo -e "----------------------------------------\n"

# Download zip file to /opt directory with filename as "awscliv2.zip"

cd /opt 
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

#Uncompress the file using "unzip" command
unzip awscliv2.zip

#Run the installation script
./aws/install
echo -e "\nInstallation has been completed...!!!\n"

awscli_ver=`aws --version | cut -b 1-15`
echo -e "\nVersion is $awscli_ver\n"




