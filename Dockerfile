FROM quay.io/spivegin/tlmbasedebian
RUN mkdir /opt/bin/
ADD files/bash/install.sh /opt/bin/install.sh
RUN apt-get update && apt-get install -y curl &&\
    chmod +x /opt/bin/install.sh &&\
    sh /opt/bin/install.sh &&\
    cp /root/.meteor/packages/meteor-tool/1.8.0_2/mt-os.linux.x86_64/scripts/admin/launch-meteor /bin/meteor &&\
    chmod +x /bin/meteor &&\
    apt-get autoclean && apt-get autoremove &&\
    rm -rf /tmp/* /var/lib/apt/lists/* /var/tmp/*