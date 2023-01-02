FROM docker.io/almalinux:9.1-minimal

RUN microdnf update -y 

# ENTRYPOINT [ "/entrypoint.sh" ]