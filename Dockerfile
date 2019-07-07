FROM phocean/msf

MAINTAINER Phocean <jc@phocean.net>

WORKDIR /opt

RUN apt-get update && apt-get -y install \
  python-pip git \
  && rm -rf /var/lib/apt/lists/* \
  && git clone https://github.com/trustedsec/social-engineer-toolkit/ set/ \
  && cd set \
  && pip install -r requirements.txt

CMD /bin/bash
