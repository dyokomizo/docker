FROM        ubuntu:trusty
MAINTAINER  Daniel Yokomizo <daniel.yokomizo@gmail.com>

RUN apt-get update \
 && apt-get install --yes \
            maven \
            nano \
            openjdk-6-doc \
            openjdk-6-jdk \
            openjdk-6-source \
            openjdk-7-doc \
            openjdk-7-jdk \
            openjdk-7-source \
            wget

COPY eclipse-java-mars-2-linux-gtk-x86_64.tar.gz.sha512 /opt/eclipse-java-mars-2-linux-gtk-x86_64.tar.gz.sha512

RUN wget --quiet --directory-prefix=/opt http://ftp.osuosl.org/pub/eclipse/technology/epp/downloads/release/mars/2/eclipse-java-mars-2-linux-gtk-x86_64.tar.gz \
 && sha512sum --check /opt/eclipse-java-mars-2-linux-gtk-x86_64.tar.gz.sha512 \
 && tar --directory /opt -xzf /opt/eclipse-java-mars-2-linux-gtk-x86_64.tar.gz \
 && rm /opt/eclipse-java-mars-2-linux-gtk-x86_64.tar.gz /opt/eclipse-java-mars-2-linux-gtk-x86_64.tar.gz.sha512

RUN /opt/eclipse/eclipse -application org.eclipse.equinox.p2.director -repository http://download.eclipse.org/releases/mars/ -repository http://infinitest.github.io -installIU org.infinitest.eclipse.feature.feature.group

CMD ["/opt/eclipse/eclipse"]
