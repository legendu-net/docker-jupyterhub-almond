FROM dclong/jupyterhub-jdk

RUN curl -L -o /usr/local/bin/coursier https://git.io/coursier-cli \
    && chmod +x /usr/local/bin/coursier

RUN /usr/local/bin/coursier launch almond:0.10.0 --scala 2.12.10 -- --install --global
