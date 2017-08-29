FROM phocean/msf

MAINTAINER Phocean <jc@phocean.net>

# Base packages
RUN apt-get update && apt-get -y install \
  python-pip \
  && rm -rf /var/lib/apt/lists/*

# Get Metasploit
WORKDIR /opt
RUN git clone https://github.com/trustedsec/social-engineer-toolkit/ set/
WORKDIR set
RUN python setup.py install
#RUN sed -i 's/^\(METASPLOIT_PATH=\).*/\1\/opt\/msf/' /etc/setoolkit/set.config
ADD set.config /etc/setoolkit/

CMD /bin/bash
