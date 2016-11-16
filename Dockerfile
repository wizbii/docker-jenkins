FROM jenkins
COPY plugins.txt /usr/share/jenkins/ref/
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/ref/plugins.txt

USER root
RUN groupadd -g 999 docker \
    && adduser jenkins docker
USER jenkins
