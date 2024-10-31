FROM docker.io/ubuntu:24.04
RUN apt-get update && apt-get -y install git g++ make && apt-get clean
COPY build.sh /
ENTRYPOINT ["/build.sh"]
