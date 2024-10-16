FROM docker.io/redhat/ubi9
RUN dnf -y install git gcc-c++ make && dnf clean all
RUN git clone https://github.com/GrapheneOS/hardened_malloc.git /hardened_malloc
COPY build.sh /
ENTRYPOINT ["/build.sh"]
