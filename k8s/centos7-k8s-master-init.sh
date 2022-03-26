#!/bin/bash

# 文档：https://learnku.com/docs/go-micro-build/1.0/kubernetes-1804-cluster-installation-tutorial-based-on-centos7/8877
# K8s 集群搭建（视频资源：https://www.bilibili.com/video/BV1GT4y1A756/?p=5&spm_id_from=pageDriver）
# 平台规划：1）单 master 集群；2）多 master 集群
# 部署方式：1）kubeadm；2）二进制包

# master 节点组件：apiserver、controller、manager 等会在这个过程中进行拉取
# 这一步会拉取相关的 Docker Image
kubeadm init \
	--apiserver-advertise-address=192.168.1.14 \
	--image-repository registry.aliyuncs.com/google_containers \
	--kubernetes-version v1.18.0 \
	--service-cidr=10.96.0.0/12 \
	--pod-network-cidr=10.244.0.0/16

# 以上初始化执行成功之后会有友好提示如下：
#Your Kubernetes control-plane has initialized successfully!
#
#To start using your cluster, you need to run the following as a regular user:
#
#  mkdir -p $HOME/.kube
#  sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
#  sudo chown $(id -u):$(id -g) $HOME/.kube/config
#
#You should now deploy a pod network to the cluster.
#Run "kubectl apply -f [podnetwork].yaml" with one of the options listed at:
#  https://kubernetes.io/docs/concepts/cluster-administration/addons/
#
#Then you can join any number of worker nodes by running the following on each as root:
#
#kubeadm join 192.168.1.14:6443 --token 9jv30t.qwrwj57oe3tqz20j \
#    --discovery-token-ca-cert-hash sha256:f86b0f4693feed11ff945dfe64e5c7f4fde2c8508d36e0137c4e977a19c6524e

# 因此根据提示执行：
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config

# 查看相应的 nodes
kubectl get nodes

# 在 node 节点上分别执行 join 即可：
#kubeadm join 192.168.1.14:6443 --token 9jv30t.qwrwj57oe3tqz20j \
#    --discovery-token-ca-cert-hash sha256:f86b0f4693feed11ff945dfe64e5c7f4fde2c8508d36e0137c4e977a19c6524e



