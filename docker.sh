sudo yum install -y epel-release
sudo yum install -y vim git
# install docker
sudo yum remove docker \
docker-client \
docker-client-latest \
docker-common \
docker-latest \
docker-latest-logrotate \
docker-logrotate \
docker-selinux \
docker-engine-selinux \
docker-engine
sudo yum install -y yum-utils \
device-mapper-persistent-data \
lvm2
sudo yum-config-manager \
--add-repo \
https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install -y docker-ce
# vagrant user add docker group
sudo gpasswd -a vagrant docker
# docker running
sudo systemctl enable docker
sudo systemctl start docker
# Downloading nginx docker image and runnig docker nginx container exposing port 80 on server
sudo docker pull nginx
# sudo docker run --name docker-nginx -p 80:80 nginx