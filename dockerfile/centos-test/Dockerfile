FROM centos:centos8
USER root

# 更新阿里云源
COPY "Centos-8.repo" /etc/yum.repos.d/
COPY "Centos-8-appstream.repo" /etc/yum.repos.d/
RUN rm -f /etc/yum.repos.d/CentOS-* && \
	mv /etc/yum.repos.d/Centos-8.repo /etc/yum.repos.d/Centos-Base.repo && \
	mv /etc/yum.repos.d/Centos-8-appstream.repo /etc/yum.repos.d/CentOS-AppStream.repo && \
	yum clean all && yum makecache

# 安装常用软件
RUN yum -y install net-tools.x86_64 && \
	yum -y install wget && \
	yum -y install telnet* && \
	yum -y install mysql mysql-server && \
	yum -y install vim && \
	yum -y install git && \
	echo 'alias ll="ls -alhF"' >> ~/.bashrc