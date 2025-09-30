sudo swapoff -a
sudo fallocate -l 2G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile


/swapfile none swap sw 0 0         # do the entry in the /etc/fstab file for the permanent mount.
