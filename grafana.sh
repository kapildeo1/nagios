#!/bin/bash

# Update package lists and install required dependencies
if [[ $(command -v yum) ]]; then
  # For Ubuntu/Debian
  sudo yum update
  sudo yum install -y software-properties-common
  sudo yum "deb https://packages.grafana.com/oss/deb stable main"
  sudo yum update
  sudo apt-get install -y grafana
  exit 1
fi

# Start and enable Grafana service
sudo systemctl start grafana-server
sudo systemctl enable grafana-server
systemctl status grafana-server                                                                                                                                                                                               
