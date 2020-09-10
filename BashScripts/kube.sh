#!/bin/bash
sudo apt-get update && sudo apt-get install -y apt-transport-https curl
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
cat <<EOF | sudo tee /etc/apt/sources.list.d/kubernetes.list
deb https://apt.kubernetes.io/ kubernetes-xenial main
EOF
sudo apt-get update
sudo apt install -y kubelet=1.16.0-00 kubeadm=1.16.0-00 kubectl=1.16.0-00 
# sudo apt install -y kubelet=1.16.0-00 kubeadm=1.16.0-00 kubectl=1.16.0-00 --allow-change-held-packages
sudo apt-mark hold kubelet kubeadm kubectl
