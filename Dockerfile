FROM centos:centos7

RUN  yum install epel-release -y \
    && yum install bc jq pwgen python-pip python-devel gcc git -y \ 
    && yum install https://centos7.iuscommunity.org/ius-release.rpm -y \
    && yum install python36u -y \
    && yum install openssl  -y \
    && yum install sshpass -y \
    && ln -s /usr/bin/python3.6 /usr/bin/python3

RUN pip install \
    netaddr==0.7.19 \
    pycrypto==2.6.1 \
    ansible==2.5.2 \
    httpie==0.9.9 \
    git+git://github.com/apache/libcloud.git@v2.3.0 \
    google-api-python-client==1.6.5 \
    google-auth==1.4.1 \
    google-auth-httplib2==0.0.3 \
    ipaddress==1.0.18 \
    httplib2==0.10.3 \
    ansible-modules-hashivault==3.9.4
