FROM dclong/jupyterhub-jdk

ARG SCALA_VERSION=2.12.8 
ARG ALMOND_VERSION=0.9.1

RUN curl -L -o /usr/local/bin/coursier https://git.io/coursier-cli \
    && chmod +x /usr/local/bin/coursier

RUN /usr/local/bin/coursier bootstrap \
        -r jitpack \
        -i user \
        -I user:sh.almond:scala-kernel-api_$SCALA_VERSION:$ALMOND_VERSION \
        -o /usr/local/bin/almond \
        sh.almond:scala-kernel_$SCALA_VERSION:$ALMOND_VERSION \
    && /usr/local/bin/almond --install --global
