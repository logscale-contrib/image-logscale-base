FROM docker.io/almalinux:9.0-minimal

RUN microdnf update -y 

# ENTRYPOINT [ "/entrypoint.sh" ]