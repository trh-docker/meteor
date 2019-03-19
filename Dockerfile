FROM quay.io/spivegin/tlmbasedebian
RUN mkdir /opt/bin/
ADD files/bash/install.sh /opt/bin/install.sh
RUN apt-get update && apt-get install -y curl &&\
    chmod +x /opt/bin/install.sh &&\
    sh /opt/bin/install.sh &&\
    apt-get autoclean && apt-get autoremove &&\
    rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*