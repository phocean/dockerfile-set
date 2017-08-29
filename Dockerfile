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
RUN pip install -r requirements.txt
RUN python setup.py install
ADD set.config /etc/setoolkit/

CMD /bin/bash
