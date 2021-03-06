#!/bin/bash


#############################
##Install Packages from APT##
#############################

sudo apt install screen \
	mysql-client \
	chrome-gnome-shell \
	gnome-tweak-tool \
	snapd \
	vim \
	openvpn \
	jq \
        git \
	python3-pip \
	vagrant \
       	virtualbox \
	nfs-kernel-server \ 
        terminator \
	zsh \
	ubuntu-restricted-extras \
	-y

###################
##Install spotify##
###################

sudo snap install spotify 

###############################
##Install Insync/google drive##
###############################

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ACCAF35C
sudo echo deb http://apt.insynchq.com/ubuntu bionic non-free contrib >> /etc/apt/sources.list.d/insync.list
sudo apt-get update
sudo apt-get install insync

###################
##Install Dropbox##
###################

cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
~/.dropbox-dist/dropboxd &

###################
##Install keepass##
###################

sudo add-apt-repository ppa:jtaylor/keepass
sudo apt-get update
sudo apt-get install keepass2

###############
##Install VLC##
###############

sudo snap install vlc 

##################
##Install Chrome##
##################

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install libindicator7  libappindicator1 -y

#################
##Install boto3##
#################

sudo pip3 install boto3

##################
##Install awscli##
##################

sudo pip3 install awscli

###################
##Install ansible##
###################

sudo apt-get install software-properties-common
sudo apt-add-repository ppa:ansible/ansible
sudo apt-get update
sudo apt-get install ansible

##############################
##Install Visual Studio Code##
##############################

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get update
sudo apt-get install code

#################
##Install slack##
#################

sudo snap install slack --classic

#######
##PIA##
#######

curl -O https://installers.privateinternetaccess.com/download/pia-v79-installer-linux.tar.gz
tar-xf pia-v79-installer-linux.tar.gz
./pia-v79-installer-linux.sh

#####################
##pycharm-community##
#####################

sudo snap install pycharm-community --classic 

##########
##Packer##
##########

curl -O https://releases.hashicorp.com/packer/1.2.3/packer_1.2.3_linux_amd64.zip
unzip packer_1.2.3_linux_amd64.zip
sudo mkdir /opt/packer/
sudo mv packer /opt/packer/

#############
##Terraform##
#############

curl -O https://releases.hashicorp.com/terraform/0.11.7/terraform_0.11.7_linux_amd64.zip
unzip terraform_0.11.7_linux_amd64.zip
sudo mkdir /opt/terraform/
sudo mv terraform /opt/terraform/

#####################
##Install oh my zsh##
#####################

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
