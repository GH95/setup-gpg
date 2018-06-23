FROM ubuntu:16.04
RUN apt-get update
RUN apt-get install -y gnupg2

COPY setup-gpg.sh /var/tmp/setup-gpg.sh
COPY keygen /var/tmp/keygen
RUN ["chmod", "+x", "/var/tmp/setup-gpg.sh"]
RUN cd /var/tmp/ && ./setup-gpg.sh