FROM registry.access.redhat.com/ubi9:9.1.0-1646.1669627755

#
# UTF-8 by default
#
ARG ZULU_REPO_VER=1.0.0-1
RUN rpm --import http://repos.azulsystems.com/RPM-GPG-KEY-azulsystems ;\
    cd /tmp ;\
    curl -sLO https://cdn.azul.com/zulu/bin/zulu-repo-${ZULU_REPO_VER}.noarch.rpm ;\
    dnf install -y zulu-repo-${ZULU_REPO_VER}.noarch.rpm 'dnf-command(versionlock)' tzdata langpacks-en glibc-langpack-en;\
    rm ./zulu-repo-${ZULU_REPO_VER}.noarch.rpm

ENV LANG='en_US.UTF-8' LANGUAGE='en_US:en' LC_ALL='en_US.UTF-8'
