#
# Salt Stack Salt Master Container
#

FROM centos:6
MAINTAINER richard moe <me@richard.moe>

# Update System
RUN rpm -ivh https://repo.saltstack.com/yum/redhat/salt-repo-latest-2.el6.noarch.rpm

# Dependencies
RUN yum install -y salt-minion 

# Volumes

VOLUME ['/etc/salt/minion.d', ]

# Add Run File

ADD run.sh /usr/local/bin/run.sh
RUN chmod +x /usr/local/bin/run.sh

# Run Command

CMD "/usr/local/bin/run.sh"
