#!/bin/bash
wget https://dl.grafana.com/enterprise/release/grafana-enterprise-11.2.0.linux-amd64.tar.gz
tar -xf grafana-enterprise*.tar.gz

wget gpg.key https://rpm.grafana.com/gpg.key | sudo rpm --import gpg.key

echo "[grafana]
name=grafana
baseurl=https://rpm.grafana.com
repo_gpgcheck=1
enabled=1
gpgcheck=1
gpgkey=https://rpm.grafana.com/gpg.key
sslverify=1
sslcacert=/etc/pki/tls/certs/ca-bundle.crt" > /etc/yum.repos.d/grafana.repo
# only manual task
# cd grafana*
# ./bin/grafana-server --config=conf/defaults.ini --homepath=$(pwd) --packaging=enterprise &

# sudo yum install grafana 
# sudo systemctl start grafana-server.service 
# sudo systemctl enable grafana-server.service 
# systemctl restart grafana-server.service
