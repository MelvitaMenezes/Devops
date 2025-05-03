minikube requirements:

t2.medium
ubuntu
Pre-requisits: docker is must:

https://docs.docker.com/engine/install/ubuntu/
sudo apt-get update -y
sudo apt-get install curl apt-transport-https wget
sudo apt-get install virtualbox virtualbox-ext-pack
beacuse minikube designed to run on local systems

sudo apt-get install conntrack
wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
cp minikube-linux-amd64 /usr/local/bin/minikube
chmod 755 /usr/local/bin/minikube
mini
minikube version
Now:-install kubectl in ubuntu

https://kubernetes.io/docs/tasks/tools/install-kubectl-linux/
from :-Install using native package management use commands

1)Update the apt package index and install packages needed to use the Kubernetes apt repository:

sudo apt-get update
sudo apt-get install -y ca-certificates curl	
2)If you use Debian 9 (stretch) or earlier you would also need to install apt-transport-https:

sudo apt-get install -y apt-transport-https
3)Download the Google Cloud public signing key:

sudo curl -fsSLo /usr/share/keyrings/kubernetes-archive-keyring.gpg https://packages.cloud.google.com/apt/doc/apt-key.gpg
4)Add the Kubernetes apt repository:

echo "deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
5)Update apt package index with the new repository and install kubectl:

sudo apt-get update
sudo apt-get install -y kubectl
6)check version

kubectl version -o json
7)How to Start minikube

minikube start
minikube delete
change ubuntu permision to docker also since we cannot assign to docker group to root use ubuntu user and exit from root
 sudo usermod -aG docker $USER && newgrp docker
minikube start --driver=docker
kubectl get node
minikube status
*minikube stop (Not Required)

kubectl cluster-info
minikube ip
minikube ssh
docker ps
To test the cluster
Create a sample deployment and expose it on port 8080:

kubectl create deployment hello-minikube --image=kicbase/echo-server:1.0
kubectl expose deployment hello-minikube --type=NodePort --port=8080
It may take a moment, but your deployment will soon show up when you run:
kubectl get services hello-minikube
getting the url of deployment
minikube service hello-minikube --url
Alternatively, use kubectl to forward the port:
kubectl port-forward service/hello-minikube 7080:8080
