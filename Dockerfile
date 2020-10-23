FROM ubuntu:18.04

SHELL ["/bin/bash", "-c"]

RUN apt-get update && \
    apt-get -y install curl zip unzip && \
    rm -rf /var/lib/apt/lists/*

RUN curl -s "https://get.sdkman.io" | bash

RUN source /root/.sdkman/bin/sdkman-init.sh && \
    sdk i java 8.0.265.hs-adpt && \
    sdk i kotlin 1.4.10 && \
    sdk i kscript 2.9.3

ENV PATH=${PATH}:/root/.sdkman/candidates/java/current/bin:/root/.sdkman/candidates/kscript/current/bin:/root/.sdkman/candidates/kotlin/current/bin
