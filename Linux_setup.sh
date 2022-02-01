#!/bin/sh
echo "Welcome to Linux Installation Guide" 
echo "Sidero Limited"
echo "Developed by Ankush Thakur"
DIR="$HOME/Downloads"
mkdir tool
cd tool
#cd /home/zhantak/Downloads/tool
echo "Installing Intellj"
wget https://download-cdn.jetbrains.com/idea/ideaIC-2021.2.3.tar.gz
tar xvf ideaIC-2021.2.3.tar.gz
rm -r ideaIC-2021.2.3.tar.gz

echo "Installing Maven"
sudo yum install maven

echo "Installing Docker"
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install docker-ce
sudo systemctl enable docker.service
sudo systemctl start docker.service
sudo curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo docker version
sudo docker run hello-world
sudo docker ps

echo "Installing MS_Teams"
wget https://packages.microsoft.com/yumrepos/ms-teams/teams-1.3.00.25560-1.x86_64.rpm
sudo rpm -i teams-1.3.00.25560-1.x86_64.rpm
systemctl start atd.service

echo "Installing Google Chrome"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
sudo yum localinstall --assumeyes google-chrome-stable_current_x86_64.rpm

echo "Installing Outlook"
wget https://github.com/julian-alarcon/prospect-mail/releases/download/v0.3.0/Prospect-Mail-0.3.0.AppImage
chmod a+x Prospect-Mail-0.3.0.AppImage
./Prospect-Mail-0.3.0.AppImage

echo "Installing Minikube"
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

echo "Installing Visual Studio Code"
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo nano /etc/yum.repos.d/vscode.repo
#Paste the following content into the file and Remove "#":
#[code]
#name=Visual Studio Code
#baseurl=https://packages.microsoft.com/yumrepos/vscode
#enabled=1
#gpgcheck=1
#gpgkey=https://packages.microsoft.com/keys/microsoft.asc
sudo yum install code








