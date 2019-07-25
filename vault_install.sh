#! bin/bash

apt-get install unzip -y

# Creating required folder structure for hashicorp installation
mkdir /etc/vault/
mkdir /opt/vault-data
mkdir -p /logs/vault

#Download vault and required configuration file from Github and Unzip vault file
wget https://releases.hashicorp.com/vault/1.1.3/vault_1.1.3_linux_amd64.zip

unzip vault_1.1.3_linux_amd64.zip

wget https://raw.githubusercontent.com/ameyerande/Hashicorp/master/config.json
wget https://raw.githubusercontent.com/ameyerande/Hashicorp/master/vault.service

# Copying configuration file to various vault directories

cp vault /usr/bin
cp config.json /etc/vault
cp vault.service /etc/systemd/system

systemctl start vault
