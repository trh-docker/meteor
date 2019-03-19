FROM quay.io/spivegin/tlmbasedebian
RUN mkdir /opt/bin/
ADD files/bash/install.sh /opt/bin/install.sh
RUN chmod +x /opt/bin/install.sh &&\
    sh /opt/bin/install.sh