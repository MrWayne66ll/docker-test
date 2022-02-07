FROM centos:latest
USER root

# 更新阿里云源
COPY "Centos-8.repo" /etc/yum.repos.d/
RUN mv /etc/yum.repos.d/Centos-8.repo /etc/yum.repos.d/Centos-Base.repo && \
	cp /etc/yum.repos.d/Centos-Base.repo /etc/yum.repos.d/CentOS-AppStream.repo && \ 
	dnf makecache

RUN yum -y install net-tools.x86_64