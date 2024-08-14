sudo yum update –y
sudo wget -O /etc/yum.repos.d/jenkins.repo \https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key
sudo yum upgrade
sudo dnf install java-17-amazon-corretto -y
sudo yum install jenkins -y
yum install docker -y
sudo systemctl enable jenkins
sudo systemctl start jenkins
systemctl restart jenkins.service
sudo usermod -aG docker jenkins
systemctl restart jenkins.service
systemctl start docker.service
systemctl enable docker.service
systemctl restart docker.service
yum install git -y
git init
cd /var/lib/jenkins/workspace/node-js-to-do/
sudo yum install nodejs -y
npm install
~                                                                                                                                                                                                          
~                   
