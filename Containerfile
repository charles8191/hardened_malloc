FROM quay.io/rockylinux/rockylinux:9
RUN dnf -y install git gcc-c++ make && dnf clean all
COPY build.sh /
ENTRYPOINT ["/build.sh"]
