FROM dclong/jupyterhub-jdk

RUN curl -L -o /usr/local/bin/coursier https://git.io/coursier-cli \
    && chmod +x /usr/local/bin/coursier

RUN /usr/local/bin/coursier launch almond -- --install
