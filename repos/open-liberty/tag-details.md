<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `open-liberty`

-	[`open-liberty:javaee7`](#open-libertyjavaee7)
-	[`open-liberty:javaee7-java8-ibm`](#open-libertyjavaee7-java8-ibm)
-	[`open-liberty:javaee7-java8-ibmsfj`](#open-libertyjavaee7-java8-ibmsfj)
-	[`open-liberty:kernel`](#open-libertykernel)
-	[`open-liberty:kernel-java8-ibm`](#open-libertykernel-java8-ibm)
-	[`open-liberty:kernel-java8-ibmsfj`](#open-libertykernel-java8-ibmsfj)
-	[`open-liberty:latest`](#open-libertylatest)
-	[`open-liberty:microProfile1`](#open-libertymicroprofile1)
-	[`open-liberty:microProfile1-java8-ibm`](#open-libertymicroprofile1-java8-ibm)
-	[`open-liberty:microProfile1-java8-ibmsfj`](#open-libertymicroprofile1-java8-ibmsfj)
-	[`open-liberty:webProfile7`](#open-libertywebprofile7)
-	[`open-liberty:webProfile7-java8-ibm`](#open-libertywebprofile7-java8-ibm)
-	[`open-liberty:webProfile7-java8-ibmsfj`](#open-libertywebprofile7-java8-ibmsfj)

## `open-liberty:javaee7`

```console
$ docker pull open-liberty@sha256:fdb5abd2a1664ca8e662fad5f130faf7771957449036a510aefd87240edb54ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:javaee7` - linux; amd64

```console
$ docker pull open-liberty@sha256:73ff72e4356df6bdf8ca338688c2df9278bb1e0777102e6c186e6b0ffd55d90a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.7 MB (283671889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02d5abcd89d24dd03c6eb8071102abf60eb309d02cdaa488094c2106ec2d1f3b`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sun, 29 Apr 2018 07:43:01 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sun, 29 Apr 2018 07:43:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 18:22:13 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Fri, 01 Jun 2018 18:22:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 01 Jun 2018 18:22:50 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 01 Jun 2018 18:50:14 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 01 Jun 2018 18:50:19 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 18:50:19 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Fri, 01 Jun 2018 18:50:24 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Fri, 01 Jun 2018 18:50:24 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Fri, 01 Jun 2018 18:50:25 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 01 Jun 2018 18:50:29 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 01 Jun 2018 18:50:29 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Fri, 01 Jun 2018 18:50:29 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 01 Jun 2018 18:50:30 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 01 Jun 2018 18:50:30 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 01 Jun 2018 18:51:35 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 01 Jun 2018 18:51:36 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Fri, 01 Jun 2018 18:51:50 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c13c1ab66c392353042573099bbd925177bfddaf89f99604b48a903ab8f9472`  
		Last Modified: Sun, 29 Apr 2018 08:35:43 GMT  
		Size: 3.0 MB (3020278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34dc89a9f462a0f7cfdb948ecb72d59174dbb7669b3b61db4003103029ad1993`  
		Last Modified: Fri, 01 Jun 2018 18:27:08 GMT  
		Size: 127.2 MB (127179695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d778201757a4d09bb74cf69d6d347fc968a2e0e4fa585e4cb5dec89f5f92cca8`  
		Last Modified: Fri, 01 Jun 2018 18:53:07 GMT  
		Size: 421.9 KB (421937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da46ff93376a43b4dcf9522036587056ebb96caabe3fbf2ee65d0405e5a42117`  
		Last Modified: Fri, 01 Jun 2018 18:53:11 GMT  
		Size: 95.9 MB (95913289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4fa68c9786658817064aa51022fa9b8154aae47786f769a8e6938ef677ab3f7`  
		Last Modified: Fri, 01 Jun 2018 18:53:02 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:664adb311932bd1666e73b33458087e84703c64be06ef80a7f83af74ba5c3a0c`  
		Last Modified: Fri, 01 Jun 2018 18:53:02 GMT  
		Size: 874.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6255043185cfd6e0baaf2d85fd14776e6f978f93c59255e70021ada530d501`  
		Last Modified: Fri, 01 Jun 2018 18:53:08 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8e6e3c39975d05889d9fbfb3775c84ecd509991fb9f5ab07a023579fdc5fca`  
		Last Modified: Fri, 01 Jun 2018 18:54:31 GMT  
		Size: 890.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e85c9134df6a96b73a6edfcc1bdf974ff036562e2a288305f22d67422d80ee`  
		Last Modified: Fri, 01 Jun 2018 18:54:33 GMT  
		Size: 14.1 MB (14104762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee7` - linux; 386

```console
$ docker pull open-liberty@sha256:e911dc064a49217e0b46a39b1c99366cde562c39876a0eb24527cc05f090ef39
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.7 MB (272743374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb610923adfce38dcbab17728b2cd66183ade6366eb2aab180c36e019e909395`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 11:18:27 GMT
ADD file:cb3b7975c121b206774b4d6cfbb5652a43b594624dab6ad15b712a2cbbdf612e in / 
# Sat, 28 Apr 2018 11:18:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:18:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:18:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:18:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:18:30 GMT
CMD ["/bin/bash"]
# Sat, 02 Jun 2018 10:38:38 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 02 Jun 2018 10:39:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 10:39:11 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Sat, 02 Jun 2018 10:43:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 02 Jun 2018 10:43:32 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 02 Jun 2018 11:23:35 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 02 Jun 2018 11:23:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 11:23:44 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 02 Jun 2018 11:23:59 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 02 Jun 2018 11:23:59 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 02 Jun 2018 11:24:00 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 02 Jun 2018 11:24:01 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 02 Jun 2018 11:24:01 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 02 Jun 2018 11:24:01 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 02 Jun 2018 11:24:02 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 02 Jun 2018 11:24:02 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 02 Jun 2018 11:24:29 GMT
ENV KEYSTORE_REQUIRED=true
# Sat, 02 Jun 2018 11:24:30 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Sat, 02 Jun 2018 11:24:51 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:3a1e79864dec4c6e37d3df52e348cf3121a5297fd763099a70ecd188d1cf63ee`  
		Last Modified: Mon, 23 Apr 2018 14:55:46 GMT  
		Size: 43.3 MB (43335726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8398adf991e61b1dbb7c296dff6ee41be912937c6be5230cef40b61b3be6f2`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3020085dcaa4b1ace3a5f4045ab2d8ce6d1a99613542a2680281e2aa4868199`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20dd50be32433bdaa587603bd1431be277c4aa000d50693929ea48c1a1ff9a8`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1027efc898bf4c1ef51f97f0c11f11ba4056c4bd387b60fb429ca018c29922`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9faa12872a22a86ea5cba3c3d4d750f7e90fb942565b5b7985aaaa4e3a7ad10`  
		Last Modified: Sat, 02 Jun 2018 10:52:51 GMT  
		Size: 2.9 MB (2875875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea1bd6f834edd9fd8153d5288e7033ea0a3681180becd1b08d142f1b7c4ba8b`  
		Last Modified: Sat, 02 Jun 2018 10:53:15 GMT  
		Size: 115.5 MB (115505331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d79a03f5eb4cda6437d923b087f659d080ea7c15bf469981d4e3d5e84725f5a`  
		Last Modified: Sat, 02 Jun 2018 11:25:26 GMT  
		Size: 420.8 KB (420757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd731469b69dc9534c8c5709119c91d3f146139fdb74a15c36bb2c0ae0b91219`  
		Last Modified: Sat, 02 Jun 2018 11:25:46 GMT  
		Size: 95.9 MB (95913289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88f30aaaee96f89ac9cbd70b5157bd6235ee37bea8cf6e8b99caadf81d3f5a0`  
		Last Modified: Sat, 02 Jun 2018 11:25:26 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba7005e2172802cbab5fcc69527d639cfd4a5177e80519f8abbf26dfbc8531`  
		Last Modified: Sat, 02 Jun 2018 11:25:26 GMT  
		Size: 861.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f4b4a08cb9562557d823ba3062e71c009ae8bd45dea70ed945e2779490fe56`  
		Last Modified: Sat, 02 Jun 2018 11:25:26 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48bb30927e43ac0265bf3bc765913255010e0da6ab631e66d919f7ed55a0efe`  
		Last Modified: Sat, 02 Jun 2018 11:26:27 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8239c554f8e6d33d6876eb86fa1a94dc018f7eb6e48bab68555c85cb796cb42b`  
		Last Modified: Sat, 02 Jun 2018 11:26:34 GMT  
		Size: 14.7 MB (14687368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee7` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:0c4c9c1cec2dcd043dc5edbcc10f9231f214ef3bb5cc35383ea61b9853279bfc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.5 MB (299521121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afc6a34d02d7c6000a8d7e1402eb5271be7b1973299390570d0748701e8706fa`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 08:35:46 GMT
ADD file:f04df47ce064505cf6035a445440244ebf513ffda3a1d933137ac1b3f9dcb10a in / 
# Sat, 28 Apr 2018 08:35:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 08:35:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 08:35:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 08:35:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 08:35:53 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 13:24:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 13:24:31 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 08:16:46 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Sat, 02 Jun 2018 08:18:43 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 02 Jun 2018 08:18:43 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 02 Jun 2018 08:50:02 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 02 Jun 2018 08:50:33 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 08:50:33 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 02 Jun 2018 08:50:45 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 02 Jun 2018 08:50:45 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 02 Jun 2018 08:50:47 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 02 Jun 2018 08:51:02 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 02 Jun 2018 08:51:04 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 02 Jun 2018 08:51:05 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 02 Jun 2018 08:51:08 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 02 Jun 2018 08:51:11 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 02 Jun 2018 08:52:19 GMT
ENV KEYSTORE_REQUIRED=true
# Sat, 02 Jun 2018 08:52:24 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Sat, 02 Jun 2018 08:52:52 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:6f5c5c810ea52a4d0eeed419954773e58454a391359660fbba515e1c200b2a53`  
		Last Modified: Sat, 28 Apr 2018 08:38:20 GMT  
		Size: 45.4 MB (45430904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0edf6521d4cc2b1d8a566d3712701b63c23cd071e5b0a6482f88aeaf1faab07`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479e23b9e48d0ddeb8b1d9b907d4786c018218b02e8ef8127a81d762c903ffc9`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 647.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebe5b7d4eb56fba71a14936f09f1c0e9a292fd12187abd76a8635e91d563510`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75acd081ba1e9819d284f8c0e4616261fcf1dd2c40070256f2b98edefe60bc0f`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142a2f61f934e958e4d3b3a6704704c9bf75df9db3881a88c5933019f4d1cd40`  
		Last Modified: Sat, 28 Apr 2018 13:31:26 GMT  
		Size: 2.9 MB (2880013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b0a9b39b61813ab030ad26e486e56536e17f3c06353affdcf7b7d06a87fdda`  
		Last Modified: Sat, 02 Jun 2018 08:23:47 GMT  
		Size: 140.6 MB (140647083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd75ed53d3efba6156f1aa70c4d9b0f3e55b0cb44b6a30fd4f8c21565643abb0`  
		Last Modified: Sat, 02 Jun 2018 08:53:48 GMT  
		Size: 453.1 KB (453075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa27fe0d0ca4558f1f8074cf2b060b6d12f6de9aaf957cb2bfd63fd8dbd4e50`  
		Last Modified: Sat, 02 Jun 2018 08:53:59 GMT  
		Size: 95.9 MB (95913189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41f90e894f20e33e644c4975981b62029bb1084c8fa230e574e244718f07c1a`  
		Last Modified: Sat, 02 Jun 2018 08:53:47 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9458de1e74742c9231368600fdb1032458aeec8ef1a938393685a70c0e0a8301`  
		Last Modified: Sat, 02 Jun 2018 08:53:47 GMT  
		Size: 910.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc922430cf252d85f9f2de13ed6e524a670099db8df420f7ceeef3267f9b1d60`  
		Last Modified: Sat, 02 Jun 2018 08:53:47 GMT  
		Size: 552.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fd46621ad65479321165ee7d42a1fd33832b71d4400e36d518356052314254`  
		Last Modified: Sat, 02 Jun 2018 08:54:47 GMT  
		Size: 889.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00240e0fbb2cd7161efa91e1e74d6984e825cd48d530954564ed00332f21137`  
		Last Modified: Sat, 02 Jun 2018 08:54:51 GMT  
		Size: 14.2 MB (14191646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee7` - linux; s390x

```console
$ docker pull open-liberty@sha256:870569dd2dbe89a47657245ebf19f666e901b503b136993bc97bfeb7d9ccd925
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.2 MB (282180275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f79595f5639575753bed38b9c1e85d5bd02b756f8044492e7a53177ad4bb190a`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 11:55:01 GMT
ADD file:1774b01ad0a92d5a1d2c3d55727311071fa588988963911322975950764a84a3 in / 
# Sat, 28 Apr 2018 11:55:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:55:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:55:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:55:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:55:04 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 15:27:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 15:27:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 11:41:32 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Sat, 02 Jun 2018 11:42:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 02 Jun 2018 11:42:13 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 02 Jun 2018 12:03:55 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 02 Jun 2018 12:04:01 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 12:04:01 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 02 Jun 2018 12:04:05 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 02 Jun 2018 12:04:06 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 02 Jun 2018 12:04:06 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 02 Jun 2018 12:04:07 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 02 Jun 2018 12:04:08 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 02 Jun 2018 12:04:08 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 02 Jun 2018 12:04:08 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 02 Jun 2018 12:04:08 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 02 Jun 2018 12:04:38 GMT
ENV KEYSTORE_REQUIRED=true
# Sat, 02 Jun 2018 12:04:39 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Sat, 02 Jun 2018 12:04:53 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:b1ebf925223c7651aa354d836106d6139b7610117af232eea6d23f9b81d972f8`  
		Last Modified: Mon, 23 Apr 2018 14:58:28 GMT  
		Size: 42.1 MB (42092399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8a07f0c9220007a0689fbea3da6b75314fc322bd887be53e5e734cb4f1800c`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1c359f5ed9198ccfe76eb8f1d8d8c2b32b74a12e582b90ea0433d4d8845261`  
		Last Modified: Sat, 28 Apr 2018 11:56:28 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35fcc66064c28ab927565627c616fe1986f1004944d173a1a1d0e95cdfde30a`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d624275f8e7d43c3c19936ca324e75493d45620982df73e9ef0578f9f1c75256`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2241255ff61810ada96838743b69433494aa9876c3b5723fb84d36406a76d7ed`  
		Last Modified: Sat, 28 Apr 2018 15:29:54 GMT  
		Size: 2.8 MB (2764794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773ddb3fb041154cebe7788dcd968a12330a3c0563663093341f274b61bd6d60`  
		Last Modified: Sat, 02 Jun 2018 11:44:26 GMT  
		Size: 126.6 MB (126612495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b74a8e73c54e3f372e72aaab67b0d92c40e2cd299ae2118dfb9d78e57873ac`  
		Last Modified: Sat, 02 Jun 2018 12:05:42 GMT  
		Size: 427.6 KB (427594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3fc5c1dbb97c7ec6878f6204211e580b12b7d1b0499d7c15096f0b32ad8540`  
		Last Modified: Sat, 02 Jun 2018 12:05:49 GMT  
		Size: 95.9 MB (95913289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3c6dc35e422747e4ced52c6d335918a4af09fd32029ca09614d6d368168cbc`  
		Last Modified: Sat, 02 Jun 2018 12:05:41 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c4248985341f29943469f53a1838c586c18d28b888a9ba6e923e980ef9354fc`  
		Last Modified: Sat, 02 Jun 2018 12:05:42 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3894ae44edd834e6f1a77eca8d98d3169212f47ccc5f015ba2a2e5b16fbf4a0`  
		Last Modified: Sat, 02 Jun 2018 12:05:42 GMT  
		Size: 523.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba9392ecdfde14288fc99407f211eeac1f678fa1d3dd77c957c443412b3cd0b`  
		Last Modified: Sat, 02 Jun 2018 12:06:29 GMT  
		Size: 887.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab1da2622eccc48e1e5395b7bd01a11f11466c1cc6dac725d49bdf7db0d351a`  
		Last Modified: Sat, 02 Jun 2018 12:06:32 GMT  
		Size: 14.4 MB (14364649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:javaee7-java8-ibm`

```console
$ docker pull open-liberty@sha256:fdb5abd2a1664ca8e662fad5f130faf7771957449036a510aefd87240edb54ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:javaee7-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:73ff72e4356df6bdf8ca338688c2df9278bb1e0777102e6c186e6b0ffd55d90a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.7 MB (283671889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02d5abcd89d24dd03c6eb8071102abf60eb309d02cdaa488094c2106ec2d1f3b`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sun, 29 Apr 2018 07:43:01 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sun, 29 Apr 2018 07:43:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 18:22:13 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Fri, 01 Jun 2018 18:22:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 01 Jun 2018 18:22:50 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 01 Jun 2018 18:50:14 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 01 Jun 2018 18:50:19 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 18:50:19 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Fri, 01 Jun 2018 18:50:24 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Fri, 01 Jun 2018 18:50:24 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Fri, 01 Jun 2018 18:50:25 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 01 Jun 2018 18:50:29 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 01 Jun 2018 18:50:29 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Fri, 01 Jun 2018 18:50:29 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 01 Jun 2018 18:50:30 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 01 Jun 2018 18:50:30 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 01 Jun 2018 18:51:35 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 01 Jun 2018 18:51:36 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Fri, 01 Jun 2018 18:51:50 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c13c1ab66c392353042573099bbd925177bfddaf89f99604b48a903ab8f9472`  
		Last Modified: Sun, 29 Apr 2018 08:35:43 GMT  
		Size: 3.0 MB (3020278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34dc89a9f462a0f7cfdb948ecb72d59174dbb7669b3b61db4003103029ad1993`  
		Last Modified: Fri, 01 Jun 2018 18:27:08 GMT  
		Size: 127.2 MB (127179695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d778201757a4d09bb74cf69d6d347fc968a2e0e4fa585e4cb5dec89f5f92cca8`  
		Last Modified: Fri, 01 Jun 2018 18:53:07 GMT  
		Size: 421.9 KB (421937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da46ff93376a43b4dcf9522036587056ebb96caabe3fbf2ee65d0405e5a42117`  
		Last Modified: Fri, 01 Jun 2018 18:53:11 GMT  
		Size: 95.9 MB (95913289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4fa68c9786658817064aa51022fa9b8154aae47786f769a8e6938ef677ab3f7`  
		Last Modified: Fri, 01 Jun 2018 18:53:02 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:664adb311932bd1666e73b33458087e84703c64be06ef80a7f83af74ba5c3a0c`  
		Last Modified: Fri, 01 Jun 2018 18:53:02 GMT  
		Size: 874.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6255043185cfd6e0baaf2d85fd14776e6f978f93c59255e70021ada530d501`  
		Last Modified: Fri, 01 Jun 2018 18:53:08 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8e6e3c39975d05889d9fbfb3775c84ecd509991fb9f5ab07a023579fdc5fca`  
		Last Modified: Fri, 01 Jun 2018 18:54:31 GMT  
		Size: 890.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e85c9134df6a96b73a6edfcc1bdf974ff036562e2a288305f22d67422d80ee`  
		Last Modified: Fri, 01 Jun 2018 18:54:33 GMT  
		Size: 14.1 MB (14104762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee7-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:e911dc064a49217e0b46a39b1c99366cde562c39876a0eb24527cc05f090ef39
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.7 MB (272743374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb610923adfce38dcbab17728b2cd66183ade6366eb2aab180c36e019e909395`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 11:18:27 GMT
ADD file:cb3b7975c121b206774b4d6cfbb5652a43b594624dab6ad15b712a2cbbdf612e in / 
# Sat, 28 Apr 2018 11:18:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:18:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:18:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:18:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:18:30 GMT
CMD ["/bin/bash"]
# Sat, 02 Jun 2018 10:38:38 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 02 Jun 2018 10:39:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 10:39:11 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Sat, 02 Jun 2018 10:43:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 02 Jun 2018 10:43:32 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 02 Jun 2018 11:23:35 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 02 Jun 2018 11:23:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 11:23:44 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 02 Jun 2018 11:23:59 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 02 Jun 2018 11:23:59 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 02 Jun 2018 11:24:00 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 02 Jun 2018 11:24:01 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 02 Jun 2018 11:24:01 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 02 Jun 2018 11:24:01 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 02 Jun 2018 11:24:02 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 02 Jun 2018 11:24:02 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 02 Jun 2018 11:24:29 GMT
ENV KEYSTORE_REQUIRED=true
# Sat, 02 Jun 2018 11:24:30 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Sat, 02 Jun 2018 11:24:51 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:3a1e79864dec4c6e37d3df52e348cf3121a5297fd763099a70ecd188d1cf63ee`  
		Last Modified: Mon, 23 Apr 2018 14:55:46 GMT  
		Size: 43.3 MB (43335726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8398adf991e61b1dbb7c296dff6ee41be912937c6be5230cef40b61b3be6f2`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3020085dcaa4b1ace3a5f4045ab2d8ce6d1a99613542a2680281e2aa4868199`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20dd50be32433bdaa587603bd1431be277c4aa000d50693929ea48c1a1ff9a8`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1027efc898bf4c1ef51f97f0c11f11ba4056c4bd387b60fb429ca018c29922`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9faa12872a22a86ea5cba3c3d4d750f7e90fb942565b5b7985aaaa4e3a7ad10`  
		Last Modified: Sat, 02 Jun 2018 10:52:51 GMT  
		Size: 2.9 MB (2875875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea1bd6f834edd9fd8153d5288e7033ea0a3681180becd1b08d142f1b7c4ba8b`  
		Last Modified: Sat, 02 Jun 2018 10:53:15 GMT  
		Size: 115.5 MB (115505331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d79a03f5eb4cda6437d923b087f659d080ea7c15bf469981d4e3d5e84725f5a`  
		Last Modified: Sat, 02 Jun 2018 11:25:26 GMT  
		Size: 420.8 KB (420757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd731469b69dc9534c8c5709119c91d3f146139fdb74a15c36bb2c0ae0b91219`  
		Last Modified: Sat, 02 Jun 2018 11:25:46 GMT  
		Size: 95.9 MB (95913289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88f30aaaee96f89ac9cbd70b5157bd6235ee37bea8cf6e8b99caadf81d3f5a0`  
		Last Modified: Sat, 02 Jun 2018 11:25:26 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba7005e2172802cbab5fcc69527d639cfd4a5177e80519f8abbf26dfbc8531`  
		Last Modified: Sat, 02 Jun 2018 11:25:26 GMT  
		Size: 861.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f4b4a08cb9562557d823ba3062e71c009ae8bd45dea70ed945e2779490fe56`  
		Last Modified: Sat, 02 Jun 2018 11:25:26 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48bb30927e43ac0265bf3bc765913255010e0da6ab631e66d919f7ed55a0efe`  
		Last Modified: Sat, 02 Jun 2018 11:26:27 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8239c554f8e6d33d6876eb86fa1a94dc018f7eb6e48bab68555c85cb796cb42b`  
		Last Modified: Sat, 02 Jun 2018 11:26:34 GMT  
		Size: 14.7 MB (14687368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee7-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:0c4c9c1cec2dcd043dc5edbcc10f9231f214ef3bb5cc35383ea61b9853279bfc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.5 MB (299521121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afc6a34d02d7c6000a8d7e1402eb5271be7b1973299390570d0748701e8706fa`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 08:35:46 GMT
ADD file:f04df47ce064505cf6035a445440244ebf513ffda3a1d933137ac1b3f9dcb10a in / 
# Sat, 28 Apr 2018 08:35:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 08:35:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 08:35:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 08:35:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 08:35:53 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 13:24:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 13:24:31 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 08:16:46 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Sat, 02 Jun 2018 08:18:43 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 02 Jun 2018 08:18:43 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 02 Jun 2018 08:50:02 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 02 Jun 2018 08:50:33 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 08:50:33 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 02 Jun 2018 08:50:45 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 02 Jun 2018 08:50:45 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 02 Jun 2018 08:50:47 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 02 Jun 2018 08:51:02 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 02 Jun 2018 08:51:04 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 02 Jun 2018 08:51:05 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 02 Jun 2018 08:51:08 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 02 Jun 2018 08:51:11 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 02 Jun 2018 08:52:19 GMT
ENV KEYSTORE_REQUIRED=true
# Sat, 02 Jun 2018 08:52:24 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Sat, 02 Jun 2018 08:52:52 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:6f5c5c810ea52a4d0eeed419954773e58454a391359660fbba515e1c200b2a53`  
		Last Modified: Sat, 28 Apr 2018 08:38:20 GMT  
		Size: 45.4 MB (45430904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0edf6521d4cc2b1d8a566d3712701b63c23cd071e5b0a6482f88aeaf1faab07`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479e23b9e48d0ddeb8b1d9b907d4786c018218b02e8ef8127a81d762c903ffc9`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 647.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebe5b7d4eb56fba71a14936f09f1c0e9a292fd12187abd76a8635e91d563510`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75acd081ba1e9819d284f8c0e4616261fcf1dd2c40070256f2b98edefe60bc0f`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142a2f61f934e958e4d3b3a6704704c9bf75df9db3881a88c5933019f4d1cd40`  
		Last Modified: Sat, 28 Apr 2018 13:31:26 GMT  
		Size: 2.9 MB (2880013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b0a9b39b61813ab030ad26e486e56536e17f3c06353affdcf7b7d06a87fdda`  
		Last Modified: Sat, 02 Jun 2018 08:23:47 GMT  
		Size: 140.6 MB (140647083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd75ed53d3efba6156f1aa70c4d9b0f3e55b0cb44b6a30fd4f8c21565643abb0`  
		Last Modified: Sat, 02 Jun 2018 08:53:48 GMT  
		Size: 453.1 KB (453075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa27fe0d0ca4558f1f8074cf2b060b6d12f6de9aaf957cb2bfd63fd8dbd4e50`  
		Last Modified: Sat, 02 Jun 2018 08:53:59 GMT  
		Size: 95.9 MB (95913189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41f90e894f20e33e644c4975981b62029bb1084c8fa230e574e244718f07c1a`  
		Last Modified: Sat, 02 Jun 2018 08:53:47 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9458de1e74742c9231368600fdb1032458aeec8ef1a938393685a70c0e0a8301`  
		Last Modified: Sat, 02 Jun 2018 08:53:47 GMT  
		Size: 910.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc922430cf252d85f9f2de13ed6e524a670099db8df420f7ceeef3267f9b1d60`  
		Last Modified: Sat, 02 Jun 2018 08:53:47 GMT  
		Size: 552.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fd46621ad65479321165ee7d42a1fd33832b71d4400e36d518356052314254`  
		Last Modified: Sat, 02 Jun 2018 08:54:47 GMT  
		Size: 889.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00240e0fbb2cd7161efa91e1e74d6984e825cd48d530954564ed00332f21137`  
		Last Modified: Sat, 02 Jun 2018 08:54:51 GMT  
		Size: 14.2 MB (14191646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee7-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:870569dd2dbe89a47657245ebf19f666e901b503b136993bc97bfeb7d9ccd925
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.2 MB (282180275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f79595f5639575753bed38b9c1e85d5bd02b756f8044492e7a53177ad4bb190a`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 11:55:01 GMT
ADD file:1774b01ad0a92d5a1d2c3d55727311071fa588988963911322975950764a84a3 in / 
# Sat, 28 Apr 2018 11:55:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:55:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:55:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:55:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:55:04 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 15:27:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 15:27:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 11:41:32 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Sat, 02 Jun 2018 11:42:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 02 Jun 2018 11:42:13 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 02 Jun 2018 12:03:55 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 02 Jun 2018 12:04:01 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 12:04:01 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 02 Jun 2018 12:04:05 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 02 Jun 2018 12:04:06 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 02 Jun 2018 12:04:06 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 02 Jun 2018 12:04:07 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 02 Jun 2018 12:04:08 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 02 Jun 2018 12:04:08 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 02 Jun 2018 12:04:08 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 02 Jun 2018 12:04:08 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 02 Jun 2018 12:04:38 GMT
ENV KEYSTORE_REQUIRED=true
# Sat, 02 Jun 2018 12:04:39 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Sat, 02 Jun 2018 12:04:53 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:b1ebf925223c7651aa354d836106d6139b7610117af232eea6d23f9b81d972f8`  
		Last Modified: Mon, 23 Apr 2018 14:58:28 GMT  
		Size: 42.1 MB (42092399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8a07f0c9220007a0689fbea3da6b75314fc322bd887be53e5e734cb4f1800c`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1c359f5ed9198ccfe76eb8f1d8d8c2b32b74a12e582b90ea0433d4d8845261`  
		Last Modified: Sat, 28 Apr 2018 11:56:28 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35fcc66064c28ab927565627c616fe1986f1004944d173a1a1d0e95cdfde30a`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d624275f8e7d43c3c19936ca324e75493d45620982df73e9ef0578f9f1c75256`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2241255ff61810ada96838743b69433494aa9876c3b5723fb84d36406a76d7ed`  
		Last Modified: Sat, 28 Apr 2018 15:29:54 GMT  
		Size: 2.8 MB (2764794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773ddb3fb041154cebe7788dcd968a12330a3c0563663093341f274b61bd6d60`  
		Last Modified: Sat, 02 Jun 2018 11:44:26 GMT  
		Size: 126.6 MB (126612495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b74a8e73c54e3f372e72aaab67b0d92c40e2cd299ae2118dfb9d78e57873ac`  
		Last Modified: Sat, 02 Jun 2018 12:05:42 GMT  
		Size: 427.6 KB (427594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3fc5c1dbb97c7ec6878f6204211e580b12b7d1b0499d7c15096f0b32ad8540`  
		Last Modified: Sat, 02 Jun 2018 12:05:49 GMT  
		Size: 95.9 MB (95913289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3c6dc35e422747e4ced52c6d335918a4af09fd32029ca09614d6d368168cbc`  
		Last Modified: Sat, 02 Jun 2018 12:05:41 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c4248985341f29943469f53a1838c586c18d28b888a9ba6e923e980ef9354fc`  
		Last Modified: Sat, 02 Jun 2018 12:05:42 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3894ae44edd834e6f1a77eca8d98d3169212f47ccc5f015ba2a2e5b16fbf4a0`  
		Last Modified: Sat, 02 Jun 2018 12:05:42 GMT  
		Size: 523.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba9392ecdfde14288fc99407f211eeac1f678fa1d3dd77c957c443412b3cd0b`  
		Last Modified: Sat, 02 Jun 2018 12:06:29 GMT  
		Size: 887.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab1da2622eccc48e1e5395b7bd01a11f11466c1cc6dac725d49bdf7db0d351a`  
		Last Modified: Sat, 02 Jun 2018 12:06:32 GMT  
		Size: 14.4 MB (14364649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:javaee7-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:b93924d75532104cccd512e0e14c6595076c297e7ae7bdd74badec87e47921cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:javaee7-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:0b455b82a1df1941f0ab2b41514750b587e884984106624b306eab2512130a08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.0 MB (177965791 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aefa989ff8d71731eaf250447a97a4a5c0e8f833693a2a7a2c2899ff8ded8ba7`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 02:29:54 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 10 Jan 2018 02:30:08 GMT
RUN apk --update add --no-cache ca-certificates curl openssl binutils xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && curl -Ls https://www.archlinux.org/packages/core/x86_64/gcc-libs/download > /tmp/gcc-libs.tar.xz     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del curl binutils     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Fri, 01 Jun 2018 18:22:59 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Fri, 01 Jun 2018 18:24:48 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='15c2e6303aa5750a9e56e0ac1b3e6f246c3fd1c3c32d7613360ec85537e88ec3';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='debc39440f0a0dd8952f69a7b8e47ec433eeef88c78892cde473cfc36b64ed5e';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='fa040275e7fa1afeb47c4ef60a4cf81a6bdbe590459841f3f89cdfd5cc8c50db';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='31ff95bcfed915e3d5818933e18bb50ef124924dafc767c4e27ee4acdfb1aacd';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='953df3c2ab64588fcf517bcb391549e06fa402bcaa09e3554ae163ca6a080d7c';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 01 Jun 2018 18:24:48 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 01 Jun 2018 18:50:39 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Fri, 01 Jun 2018 18:50:44 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && mkdir /opt/ol    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Fri, 01 Jun 2018 18:50:44 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Fri, 01 Jun 2018 18:50:44 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs
# Fri, 01 Jun 2018 18:50:48 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 01 Jun 2018 18:50:49 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Fri, 01 Jun 2018 18:50:49 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 01 Jun 2018 18:50:49 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 01 Jun 2018 18:50:49 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 01 Jun 2018 18:52:00 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 01 Jun 2018 18:52:01 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Fri, 01 Jun 2018 18:52:15 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:271fbb147f08aa2a2cb149146ee4895d4c6a2568c9a847acd9f9e1c526994fba`  
		Last Modified: Wed, 10 Jan 2018 02:56:39 GMT  
		Size: 4.5 MB (4530053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c914b75c868499df4f7994b288bca37a45c22202aed76216a96ef9b89c8cece`  
		Last Modified: Fri, 01 Jun 2018 18:28:56 GMT  
		Size: 61.9 MB (61924921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61942c94bae43fb3ddeee187e0f744f9b5a6c300629ef0e578134275f2919da6`  
		Last Modified: Fri, 01 Jun 2018 18:53:39 GMT  
		Size: 95.9 MB (95913249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f2b7707940102cec14578aed4c729d210ad5801969b33b69e57a7cd6dff6df`  
		Last Modified: Fri, 01 Jun 2018 18:53:32 GMT  
		Size: 271.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630bace40fdfb7c6efbbaaa72c703f88884a12fc0417ed65162ced4f60e776c3`  
		Last Modified: Fri, 01 Jun 2018 18:53:33 GMT  
		Size: 762.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4dc1c5c81166676b4b03d2e4abdfb3b978085da7065731aec4fbf252f985dd`  
		Last Modified: Fri, 01 Jun 2018 18:53:33 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2cf55f2e09d1c84d9647fe52f4c204f65cd1a15bed5cb02d14151e145907c72`  
		Last Modified: Fri, 01 Jun 2018 18:55:05 GMT  
		Size: 885.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:238284f6fa3d7986244ad638ee0ddc8742d558ef49e77892bb595d3485a514cb`  
		Last Modified: Fri, 01 Jun 2018 18:55:08 GMT  
		Size: 13.6 MB (13603378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:kernel`

```console
$ docker pull open-liberty@sha256:d677e5fb2955e91262b535f5c0174dbce056cdd4ac9f3901b38e794f3417ac08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:kernel` - linux; amd64

```console
$ docker pull open-liberty@sha256:eb0563ea851064b1fd11518c399cca1da222e00c60f75d2144de6a2608eff12f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.6 MB (269566237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b28788142229ec84214409713c5de11ea251c79189e4df4fe088d5a1d1b15e8`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sun, 29 Apr 2018 07:43:01 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sun, 29 Apr 2018 07:43:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 18:22:13 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Fri, 01 Jun 2018 18:22:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 01 Jun 2018 18:22:50 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 01 Jun 2018 18:50:14 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 01 Jun 2018 18:50:19 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 18:50:19 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Fri, 01 Jun 2018 18:50:24 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Fri, 01 Jun 2018 18:50:24 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Fri, 01 Jun 2018 18:50:25 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 01 Jun 2018 18:50:29 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 01 Jun 2018 18:50:29 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Fri, 01 Jun 2018 18:50:29 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 01 Jun 2018 18:50:30 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 01 Jun 2018 18:50:30 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c13c1ab66c392353042573099bbd925177bfddaf89f99604b48a903ab8f9472`  
		Last Modified: Sun, 29 Apr 2018 08:35:43 GMT  
		Size: 3.0 MB (3020278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34dc89a9f462a0f7cfdb948ecb72d59174dbb7669b3b61db4003103029ad1993`  
		Last Modified: Fri, 01 Jun 2018 18:27:08 GMT  
		Size: 127.2 MB (127179695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d778201757a4d09bb74cf69d6d347fc968a2e0e4fa585e4cb5dec89f5f92cca8`  
		Last Modified: Fri, 01 Jun 2018 18:53:07 GMT  
		Size: 421.9 KB (421937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da46ff93376a43b4dcf9522036587056ebb96caabe3fbf2ee65d0405e5a42117`  
		Last Modified: Fri, 01 Jun 2018 18:53:11 GMT  
		Size: 95.9 MB (95913289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4fa68c9786658817064aa51022fa9b8154aae47786f769a8e6938ef677ab3f7`  
		Last Modified: Fri, 01 Jun 2018 18:53:02 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:664adb311932bd1666e73b33458087e84703c64be06ef80a7f83af74ba5c3a0c`  
		Last Modified: Fri, 01 Jun 2018 18:53:02 GMT  
		Size: 874.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6255043185cfd6e0baaf2d85fd14776e6f978f93c59255e70021ada530d501`  
		Last Modified: Fri, 01 Jun 2018 18:53:08 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:kernel` - linux; 386

```console
$ docker pull open-liberty@sha256:3ceac7f004cefbdcae1cf6ef69d6f69bf82bf3ae232731eead61483f9ec6d949
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.1 MB (258055122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f87ee5e5e1d4692b0e35394d1bc08a34ed90b1caeb7a77317e1cb15a1f66d42`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 11:18:27 GMT
ADD file:cb3b7975c121b206774b4d6cfbb5652a43b594624dab6ad15b712a2cbbdf612e in / 
# Sat, 28 Apr 2018 11:18:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:18:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:18:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:18:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:18:30 GMT
CMD ["/bin/bash"]
# Sat, 02 Jun 2018 10:38:38 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 02 Jun 2018 10:39:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 10:39:11 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Sat, 02 Jun 2018 10:43:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 02 Jun 2018 10:43:32 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 02 Jun 2018 11:23:35 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 02 Jun 2018 11:23:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 11:23:44 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 02 Jun 2018 11:23:59 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 02 Jun 2018 11:23:59 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 02 Jun 2018 11:24:00 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 02 Jun 2018 11:24:01 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 02 Jun 2018 11:24:01 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 02 Jun 2018 11:24:01 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 02 Jun 2018 11:24:02 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 02 Jun 2018 11:24:02 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:3a1e79864dec4c6e37d3df52e348cf3121a5297fd763099a70ecd188d1cf63ee`  
		Last Modified: Mon, 23 Apr 2018 14:55:46 GMT  
		Size: 43.3 MB (43335726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8398adf991e61b1dbb7c296dff6ee41be912937c6be5230cef40b61b3be6f2`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3020085dcaa4b1ace3a5f4045ab2d8ce6d1a99613542a2680281e2aa4868199`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20dd50be32433bdaa587603bd1431be277c4aa000d50693929ea48c1a1ff9a8`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1027efc898bf4c1ef51f97f0c11f11ba4056c4bd387b60fb429ca018c29922`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9faa12872a22a86ea5cba3c3d4d750f7e90fb942565b5b7985aaaa4e3a7ad10`  
		Last Modified: Sat, 02 Jun 2018 10:52:51 GMT  
		Size: 2.9 MB (2875875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea1bd6f834edd9fd8153d5288e7033ea0a3681180becd1b08d142f1b7c4ba8b`  
		Last Modified: Sat, 02 Jun 2018 10:53:15 GMT  
		Size: 115.5 MB (115505331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d79a03f5eb4cda6437d923b087f659d080ea7c15bf469981d4e3d5e84725f5a`  
		Last Modified: Sat, 02 Jun 2018 11:25:26 GMT  
		Size: 420.8 KB (420757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd731469b69dc9534c8c5709119c91d3f146139fdb74a15c36bb2c0ae0b91219`  
		Last Modified: Sat, 02 Jun 2018 11:25:46 GMT  
		Size: 95.9 MB (95913289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88f30aaaee96f89ac9cbd70b5157bd6235ee37bea8cf6e8b99caadf81d3f5a0`  
		Last Modified: Sat, 02 Jun 2018 11:25:26 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba7005e2172802cbab5fcc69527d639cfd4a5177e80519f8abbf26dfbc8531`  
		Last Modified: Sat, 02 Jun 2018 11:25:26 GMT  
		Size: 861.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f4b4a08cb9562557d823ba3062e71c009ae8bd45dea70ed945e2779490fe56`  
		Last Modified: Sat, 02 Jun 2018 11:25:26 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:kernel` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:2af61eba465e178a2e15196dff6f88529e99df853913775dc7f34d6642de76e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.3 MB (285328586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:652d12f5dc0b139eb606d4df90f7fd8bbcdf5881b82d7b010d77f9e5da0409f5`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 08:35:46 GMT
ADD file:f04df47ce064505cf6035a445440244ebf513ffda3a1d933137ac1b3f9dcb10a in / 
# Sat, 28 Apr 2018 08:35:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 08:35:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 08:35:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 08:35:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 08:35:53 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 13:24:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 13:24:31 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 08:16:46 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Sat, 02 Jun 2018 08:18:43 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 02 Jun 2018 08:18:43 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 02 Jun 2018 08:50:02 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 02 Jun 2018 08:50:33 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 08:50:33 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 02 Jun 2018 08:50:45 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 02 Jun 2018 08:50:45 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 02 Jun 2018 08:50:47 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 02 Jun 2018 08:51:02 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 02 Jun 2018 08:51:04 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 02 Jun 2018 08:51:05 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 02 Jun 2018 08:51:08 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 02 Jun 2018 08:51:11 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:6f5c5c810ea52a4d0eeed419954773e58454a391359660fbba515e1c200b2a53`  
		Last Modified: Sat, 28 Apr 2018 08:38:20 GMT  
		Size: 45.4 MB (45430904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0edf6521d4cc2b1d8a566d3712701b63c23cd071e5b0a6482f88aeaf1faab07`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479e23b9e48d0ddeb8b1d9b907d4786c018218b02e8ef8127a81d762c903ffc9`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 647.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebe5b7d4eb56fba71a14936f09f1c0e9a292fd12187abd76a8635e91d563510`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75acd081ba1e9819d284f8c0e4616261fcf1dd2c40070256f2b98edefe60bc0f`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142a2f61f934e958e4d3b3a6704704c9bf75df9db3881a88c5933019f4d1cd40`  
		Last Modified: Sat, 28 Apr 2018 13:31:26 GMT  
		Size: 2.9 MB (2880013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b0a9b39b61813ab030ad26e486e56536e17f3c06353affdcf7b7d06a87fdda`  
		Last Modified: Sat, 02 Jun 2018 08:23:47 GMT  
		Size: 140.6 MB (140647083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd75ed53d3efba6156f1aa70c4d9b0f3e55b0cb44b6a30fd4f8c21565643abb0`  
		Last Modified: Sat, 02 Jun 2018 08:53:48 GMT  
		Size: 453.1 KB (453075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa27fe0d0ca4558f1f8074cf2b060b6d12f6de9aaf957cb2bfd63fd8dbd4e50`  
		Last Modified: Sat, 02 Jun 2018 08:53:59 GMT  
		Size: 95.9 MB (95913189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41f90e894f20e33e644c4975981b62029bb1084c8fa230e574e244718f07c1a`  
		Last Modified: Sat, 02 Jun 2018 08:53:47 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9458de1e74742c9231368600fdb1032458aeec8ef1a938393685a70c0e0a8301`  
		Last Modified: Sat, 02 Jun 2018 08:53:47 GMT  
		Size: 910.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc922430cf252d85f9f2de13ed6e524a670099db8df420f7ceeef3267f9b1d60`  
		Last Modified: Sat, 02 Jun 2018 08:53:47 GMT  
		Size: 552.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:kernel` - linux; s390x

```console
$ docker pull open-liberty@sha256:779795c1a3f7f1a9597e100750d122279b070381361397352a8496ad5a7e5e70
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.8 MB (267814739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fd801928e70572822b2637dd355ddf4aa6aa2a6caf5880266c5eeeb12fa45da`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 11:55:01 GMT
ADD file:1774b01ad0a92d5a1d2c3d55727311071fa588988963911322975950764a84a3 in / 
# Sat, 28 Apr 2018 11:55:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:55:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:55:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:55:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:55:04 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 15:27:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 15:27:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 11:41:32 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Sat, 02 Jun 2018 11:42:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 02 Jun 2018 11:42:13 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 02 Jun 2018 12:03:55 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 02 Jun 2018 12:04:01 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 12:04:01 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 02 Jun 2018 12:04:05 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 02 Jun 2018 12:04:06 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 02 Jun 2018 12:04:06 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 02 Jun 2018 12:04:07 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 02 Jun 2018 12:04:08 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 02 Jun 2018 12:04:08 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 02 Jun 2018 12:04:08 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 02 Jun 2018 12:04:08 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:b1ebf925223c7651aa354d836106d6139b7610117af232eea6d23f9b81d972f8`  
		Last Modified: Mon, 23 Apr 2018 14:58:28 GMT  
		Size: 42.1 MB (42092399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8a07f0c9220007a0689fbea3da6b75314fc322bd887be53e5e734cb4f1800c`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1c359f5ed9198ccfe76eb8f1d8d8c2b32b74a12e582b90ea0433d4d8845261`  
		Last Modified: Sat, 28 Apr 2018 11:56:28 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35fcc66064c28ab927565627c616fe1986f1004944d173a1a1d0e95cdfde30a`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d624275f8e7d43c3c19936ca324e75493d45620982df73e9ef0578f9f1c75256`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2241255ff61810ada96838743b69433494aa9876c3b5723fb84d36406a76d7ed`  
		Last Modified: Sat, 28 Apr 2018 15:29:54 GMT  
		Size: 2.8 MB (2764794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773ddb3fb041154cebe7788dcd968a12330a3c0563663093341f274b61bd6d60`  
		Last Modified: Sat, 02 Jun 2018 11:44:26 GMT  
		Size: 126.6 MB (126612495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b74a8e73c54e3f372e72aaab67b0d92c40e2cd299ae2118dfb9d78e57873ac`  
		Last Modified: Sat, 02 Jun 2018 12:05:42 GMT  
		Size: 427.6 KB (427594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3fc5c1dbb97c7ec6878f6204211e580b12b7d1b0499d7c15096f0b32ad8540`  
		Last Modified: Sat, 02 Jun 2018 12:05:49 GMT  
		Size: 95.9 MB (95913289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3c6dc35e422747e4ced52c6d335918a4af09fd32029ca09614d6d368168cbc`  
		Last Modified: Sat, 02 Jun 2018 12:05:41 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c4248985341f29943469f53a1838c586c18d28b888a9ba6e923e980ef9354fc`  
		Last Modified: Sat, 02 Jun 2018 12:05:42 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3894ae44edd834e6f1a77eca8d98d3169212f47ccc5f015ba2a2e5b16fbf4a0`  
		Last Modified: Sat, 02 Jun 2018 12:05:42 GMT  
		Size: 523.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:kernel-java8-ibm`

```console
$ docker pull open-liberty@sha256:d677e5fb2955e91262b535f5c0174dbce056cdd4ac9f3901b38e794f3417ac08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:kernel-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:eb0563ea851064b1fd11518c399cca1da222e00c60f75d2144de6a2608eff12f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.6 MB (269566237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b28788142229ec84214409713c5de11ea251c79189e4df4fe088d5a1d1b15e8`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sun, 29 Apr 2018 07:43:01 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sun, 29 Apr 2018 07:43:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 18:22:13 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Fri, 01 Jun 2018 18:22:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 01 Jun 2018 18:22:50 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 01 Jun 2018 18:50:14 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 01 Jun 2018 18:50:19 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 18:50:19 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Fri, 01 Jun 2018 18:50:24 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Fri, 01 Jun 2018 18:50:24 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Fri, 01 Jun 2018 18:50:25 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 01 Jun 2018 18:50:29 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 01 Jun 2018 18:50:29 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Fri, 01 Jun 2018 18:50:29 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 01 Jun 2018 18:50:30 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 01 Jun 2018 18:50:30 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c13c1ab66c392353042573099bbd925177bfddaf89f99604b48a903ab8f9472`  
		Last Modified: Sun, 29 Apr 2018 08:35:43 GMT  
		Size: 3.0 MB (3020278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34dc89a9f462a0f7cfdb948ecb72d59174dbb7669b3b61db4003103029ad1993`  
		Last Modified: Fri, 01 Jun 2018 18:27:08 GMT  
		Size: 127.2 MB (127179695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d778201757a4d09bb74cf69d6d347fc968a2e0e4fa585e4cb5dec89f5f92cca8`  
		Last Modified: Fri, 01 Jun 2018 18:53:07 GMT  
		Size: 421.9 KB (421937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da46ff93376a43b4dcf9522036587056ebb96caabe3fbf2ee65d0405e5a42117`  
		Last Modified: Fri, 01 Jun 2018 18:53:11 GMT  
		Size: 95.9 MB (95913289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4fa68c9786658817064aa51022fa9b8154aae47786f769a8e6938ef677ab3f7`  
		Last Modified: Fri, 01 Jun 2018 18:53:02 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:664adb311932bd1666e73b33458087e84703c64be06ef80a7f83af74ba5c3a0c`  
		Last Modified: Fri, 01 Jun 2018 18:53:02 GMT  
		Size: 874.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6255043185cfd6e0baaf2d85fd14776e6f978f93c59255e70021ada530d501`  
		Last Modified: Fri, 01 Jun 2018 18:53:08 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:kernel-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:3ceac7f004cefbdcae1cf6ef69d6f69bf82bf3ae232731eead61483f9ec6d949
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.1 MB (258055122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f87ee5e5e1d4692b0e35394d1bc08a34ed90b1caeb7a77317e1cb15a1f66d42`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 11:18:27 GMT
ADD file:cb3b7975c121b206774b4d6cfbb5652a43b594624dab6ad15b712a2cbbdf612e in / 
# Sat, 28 Apr 2018 11:18:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:18:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:18:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:18:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:18:30 GMT
CMD ["/bin/bash"]
# Sat, 02 Jun 2018 10:38:38 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 02 Jun 2018 10:39:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 10:39:11 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Sat, 02 Jun 2018 10:43:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 02 Jun 2018 10:43:32 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 02 Jun 2018 11:23:35 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 02 Jun 2018 11:23:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 11:23:44 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 02 Jun 2018 11:23:59 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 02 Jun 2018 11:23:59 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 02 Jun 2018 11:24:00 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 02 Jun 2018 11:24:01 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 02 Jun 2018 11:24:01 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 02 Jun 2018 11:24:01 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 02 Jun 2018 11:24:02 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 02 Jun 2018 11:24:02 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:3a1e79864dec4c6e37d3df52e348cf3121a5297fd763099a70ecd188d1cf63ee`  
		Last Modified: Mon, 23 Apr 2018 14:55:46 GMT  
		Size: 43.3 MB (43335726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8398adf991e61b1dbb7c296dff6ee41be912937c6be5230cef40b61b3be6f2`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3020085dcaa4b1ace3a5f4045ab2d8ce6d1a99613542a2680281e2aa4868199`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20dd50be32433bdaa587603bd1431be277c4aa000d50693929ea48c1a1ff9a8`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1027efc898bf4c1ef51f97f0c11f11ba4056c4bd387b60fb429ca018c29922`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9faa12872a22a86ea5cba3c3d4d750f7e90fb942565b5b7985aaaa4e3a7ad10`  
		Last Modified: Sat, 02 Jun 2018 10:52:51 GMT  
		Size: 2.9 MB (2875875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea1bd6f834edd9fd8153d5288e7033ea0a3681180becd1b08d142f1b7c4ba8b`  
		Last Modified: Sat, 02 Jun 2018 10:53:15 GMT  
		Size: 115.5 MB (115505331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d79a03f5eb4cda6437d923b087f659d080ea7c15bf469981d4e3d5e84725f5a`  
		Last Modified: Sat, 02 Jun 2018 11:25:26 GMT  
		Size: 420.8 KB (420757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd731469b69dc9534c8c5709119c91d3f146139fdb74a15c36bb2c0ae0b91219`  
		Last Modified: Sat, 02 Jun 2018 11:25:46 GMT  
		Size: 95.9 MB (95913289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88f30aaaee96f89ac9cbd70b5157bd6235ee37bea8cf6e8b99caadf81d3f5a0`  
		Last Modified: Sat, 02 Jun 2018 11:25:26 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba7005e2172802cbab5fcc69527d639cfd4a5177e80519f8abbf26dfbc8531`  
		Last Modified: Sat, 02 Jun 2018 11:25:26 GMT  
		Size: 861.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f4b4a08cb9562557d823ba3062e71c009ae8bd45dea70ed945e2779490fe56`  
		Last Modified: Sat, 02 Jun 2018 11:25:26 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:kernel-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:2af61eba465e178a2e15196dff6f88529e99df853913775dc7f34d6642de76e9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.3 MB (285328586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:652d12f5dc0b139eb606d4df90f7fd8bbcdf5881b82d7b010d77f9e5da0409f5`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 08:35:46 GMT
ADD file:f04df47ce064505cf6035a445440244ebf513ffda3a1d933137ac1b3f9dcb10a in / 
# Sat, 28 Apr 2018 08:35:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 08:35:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 08:35:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 08:35:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 08:35:53 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 13:24:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 13:24:31 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 08:16:46 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Sat, 02 Jun 2018 08:18:43 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 02 Jun 2018 08:18:43 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 02 Jun 2018 08:50:02 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 02 Jun 2018 08:50:33 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 08:50:33 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 02 Jun 2018 08:50:45 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 02 Jun 2018 08:50:45 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 02 Jun 2018 08:50:47 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 02 Jun 2018 08:51:02 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 02 Jun 2018 08:51:04 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 02 Jun 2018 08:51:05 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 02 Jun 2018 08:51:08 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 02 Jun 2018 08:51:11 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:6f5c5c810ea52a4d0eeed419954773e58454a391359660fbba515e1c200b2a53`  
		Last Modified: Sat, 28 Apr 2018 08:38:20 GMT  
		Size: 45.4 MB (45430904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0edf6521d4cc2b1d8a566d3712701b63c23cd071e5b0a6482f88aeaf1faab07`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479e23b9e48d0ddeb8b1d9b907d4786c018218b02e8ef8127a81d762c903ffc9`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 647.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebe5b7d4eb56fba71a14936f09f1c0e9a292fd12187abd76a8635e91d563510`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75acd081ba1e9819d284f8c0e4616261fcf1dd2c40070256f2b98edefe60bc0f`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142a2f61f934e958e4d3b3a6704704c9bf75df9db3881a88c5933019f4d1cd40`  
		Last Modified: Sat, 28 Apr 2018 13:31:26 GMT  
		Size: 2.9 MB (2880013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b0a9b39b61813ab030ad26e486e56536e17f3c06353affdcf7b7d06a87fdda`  
		Last Modified: Sat, 02 Jun 2018 08:23:47 GMT  
		Size: 140.6 MB (140647083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd75ed53d3efba6156f1aa70c4d9b0f3e55b0cb44b6a30fd4f8c21565643abb0`  
		Last Modified: Sat, 02 Jun 2018 08:53:48 GMT  
		Size: 453.1 KB (453075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa27fe0d0ca4558f1f8074cf2b060b6d12f6de9aaf957cb2bfd63fd8dbd4e50`  
		Last Modified: Sat, 02 Jun 2018 08:53:59 GMT  
		Size: 95.9 MB (95913189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41f90e894f20e33e644c4975981b62029bb1084c8fa230e574e244718f07c1a`  
		Last Modified: Sat, 02 Jun 2018 08:53:47 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9458de1e74742c9231368600fdb1032458aeec8ef1a938393685a70c0e0a8301`  
		Last Modified: Sat, 02 Jun 2018 08:53:47 GMT  
		Size: 910.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc922430cf252d85f9f2de13ed6e524a670099db8df420f7ceeef3267f9b1d60`  
		Last Modified: Sat, 02 Jun 2018 08:53:47 GMT  
		Size: 552.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:kernel-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:779795c1a3f7f1a9597e100750d122279b070381361397352a8496ad5a7e5e70
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.8 MB (267814739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fd801928e70572822b2637dd355ddf4aa6aa2a6caf5880266c5eeeb12fa45da`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 11:55:01 GMT
ADD file:1774b01ad0a92d5a1d2c3d55727311071fa588988963911322975950764a84a3 in / 
# Sat, 28 Apr 2018 11:55:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:55:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:55:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:55:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:55:04 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 15:27:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 15:27:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 11:41:32 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Sat, 02 Jun 2018 11:42:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 02 Jun 2018 11:42:13 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 02 Jun 2018 12:03:55 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 02 Jun 2018 12:04:01 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 12:04:01 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 02 Jun 2018 12:04:05 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 02 Jun 2018 12:04:06 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 02 Jun 2018 12:04:06 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 02 Jun 2018 12:04:07 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 02 Jun 2018 12:04:08 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 02 Jun 2018 12:04:08 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 02 Jun 2018 12:04:08 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 02 Jun 2018 12:04:08 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:b1ebf925223c7651aa354d836106d6139b7610117af232eea6d23f9b81d972f8`  
		Last Modified: Mon, 23 Apr 2018 14:58:28 GMT  
		Size: 42.1 MB (42092399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8a07f0c9220007a0689fbea3da6b75314fc322bd887be53e5e734cb4f1800c`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1c359f5ed9198ccfe76eb8f1d8d8c2b32b74a12e582b90ea0433d4d8845261`  
		Last Modified: Sat, 28 Apr 2018 11:56:28 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35fcc66064c28ab927565627c616fe1986f1004944d173a1a1d0e95cdfde30a`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d624275f8e7d43c3c19936ca324e75493d45620982df73e9ef0578f9f1c75256`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2241255ff61810ada96838743b69433494aa9876c3b5723fb84d36406a76d7ed`  
		Last Modified: Sat, 28 Apr 2018 15:29:54 GMT  
		Size: 2.8 MB (2764794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773ddb3fb041154cebe7788dcd968a12330a3c0563663093341f274b61bd6d60`  
		Last Modified: Sat, 02 Jun 2018 11:44:26 GMT  
		Size: 126.6 MB (126612495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b74a8e73c54e3f372e72aaab67b0d92c40e2cd299ae2118dfb9d78e57873ac`  
		Last Modified: Sat, 02 Jun 2018 12:05:42 GMT  
		Size: 427.6 KB (427594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3fc5c1dbb97c7ec6878f6204211e580b12b7d1b0499d7c15096f0b32ad8540`  
		Last Modified: Sat, 02 Jun 2018 12:05:49 GMT  
		Size: 95.9 MB (95913289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3c6dc35e422747e4ced52c6d335918a4af09fd32029ca09614d6d368168cbc`  
		Last Modified: Sat, 02 Jun 2018 12:05:41 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c4248985341f29943469f53a1838c586c18d28b888a9ba6e923e980ef9354fc`  
		Last Modified: Sat, 02 Jun 2018 12:05:42 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3894ae44edd834e6f1a77eca8d98d3169212f47ccc5f015ba2a2e5b16fbf4a0`  
		Last Modified: Sat, 02 Jun 2018 12:05:42 GMT  
		Size: 523.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:kernel-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:b9ad9bd14eeb467c600097376016cc21dec5eacb6b1e6115482573e864a9a103
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:kernel-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:c6bcf5dbcfc7ed9b66efc96647741786919b7f70af231c5a5a8b5216c4840a5f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **164.4 MB (164361528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a6189f76dae4d2d1d3fca07382209e31bd12ff4ce62c445cbde261b9bc4b64d`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 02:29:54 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 10 Jan 2018 02:30:08 GMT
RUN apk --update add --no-cache ca-certificates curl openssl binutils xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && curl -Ls https://www.archlinux.org/packages/core/x86_64/gcc-libs/download > /tmp/gcc-libs.tar.xz     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del curl binutils     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Fri, 01 Jun 2018 18:22:59 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Fri, 01 Jun 2018 18:24:48 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='15c2e6303aa5750a9e56e0ac1b3e6f246c3fd1c3c32d7613360ec85537e88ec3';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='debc39440f0a0dd8952f69a7b8e47ec433eeef88c78892cde473cfc36b64ed5e';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='fa040275e7fa1afeb47c4ef60a4cf81a6bdbe590459841f3f89cdfd5cc8c50db';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='31ff95bcfed915e3d5818933e18bb50ef124924dafc767c4e27ee4acdfb1aacd';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='953df3c2ab64588fcf517bcb391549e06fa402bcaa09e3554ae163ca6a080d7c';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 01 Jun 2018 18:24:48 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 01 Jun 2018 18:50:39 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Fri, 01 Jun 2018 18:50:44 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && mkdir /opt/ol    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Fri, 01 Jun 2018 18:50:44 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Fri, 01 Jun 2018 18:50:44 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs
# Fri, 01 Jun 2018 18:50:48 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 01 Jun 2018 18:50:49 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Fri, 01 Jun 2018 18:50:49 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 01 Jun 2018 18:50:49 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 01 Jun 2018 18:50:49 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:271fbb147f08aa2a2cb149146ee4895d4c6a2568c9a847acd9f9e1c526994fba`  
		Last Modified: Wed, 10 Jan 2018 02:56:39 GMT  
		Size: 4.5 MB (4530053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c914b75c868499df4f7994b288bca37a45c22202aed76216a96ef9b89c8cece`  
		Last Modified: Fri, 01 Jun 2018 18:28:56 GMT  
		Size: 61.9 MB (61924921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61942c94bae43fb3ddeee187e0f744f9b5a6c300629ef0e578134275f2919da6`  
		Last Modified: Fri, 01 Jun 2018 18:53:39 GMT  
		Size: 95.9 MB (95913249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f2b7707940102cec14578aed4c729d210ad5801969b33b69e57a7cd6dff6df`  
		Last Modified: Fri, 01 Jun 2018 18:53:32 GMT  
		Size: 271.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630bace40fdfb7c6efbbaaa72c703f88884a12fc0417ed65162ced4f60e776c3`  
		Last Modified: Fri, 01 Jun 2018 18:53:33 GMT  
		Size: 762.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4dc1c5c81166676b4b03d2e4abdfb3b978085da7065731aec4fbf252f985dd`  
		Last Modified: Fri, 01 Jun 2018 18:53:33 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:latest`

```console
$ docker pull open-liberty@sha256:fdb5abd2a1664ca8e662fad5f130faf7771957449036a510aefd87240edb54ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:latest` - linux; amd64

```console
$ docker pull open-liberty@sha256:73ff72e4356df6bdf8ca338688c2df9278bb1e0777102e6c186e6b0ffd55d90a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.7 MB (283671889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02d5abcd89d24dd03c6eb8071102abf60eb309d02cdaa488094c2106ec2d1f3b`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sun, 29 Apr 2018 07:43:01 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sun, 29 Apr 2018 07:43:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 18:22:13 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Fri, 01 Jun 2018 18:22:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 01 Jun 2018 18:22:50 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 01 Jun 2018 18:50:14 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 01 Jun 2018 18:50:19 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 18:50:19 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Fri, 01 Jun 2018 18:50:24 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Fri, 01 Jun 2018 18:50:24 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Fri, 01 Jun 2018 18:50:25 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 01 Jun 2018 18:50:29 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 01 Jun 2018 18:50:29 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Fri, 01 Jun 2018 18:50:29 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 01 Jun 2018 18:50:30 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 01 Jun 2018 18:50:30 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 01 Jun 2018 18:51:35 GMT
ENV KEYSTORE_REQUIRED=true
# Fri, 01 Jun 2018 18:51:36 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Fri, 01 Jun 2018 18:51:50 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c13c1ab66c392353042573099bbd925177bfddaf89f99604b48a903ab8f9472`  
		Last Modified: Sun, 29 Apr 2018 08:35:43 GMT  
		Size: 3.0 MB (3020278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34dc89a9f462a0f7cfdb948ecb72d59174dbb7669b3b61db4003103029ad1993`  
		Last Modified: Fri, 01 Jun 2018 18:27:08 GMT  
		Size: 127.2 MB (127179695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d778201757a4d09bb74cf69d6d347fc968a2e0e4fa585e4cb5dec89f5f92cca8`  
		Last Modified: Fri, 01 Jun 2018 18:53:07 GMT  
		Size: 421.9 KB (421937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da46ff93376a43b4dcf9522036587056ebb96caabe3fbf2ee65d0405e5a42117`  
		Last Modified: Fri, 01 Jun 2018 18:53:11 GMT  
		Size: 95.9 MB (95913289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4fa68c9786658817064aa51022fa9b8154aae47786f769a8e6938ef677ab3f7`  
		Last Modified: Fri, 01 Jun 2018 18:53:02 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:664adb311932bd1666e73b33458087e84703c64be06ef80a7f83af74ba5c3a0c`  
		Last Modified: Fri, 01 Jun 2018 18:53:02 GMT  
		Size: 874.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6255043185cfd6e0baaf2d85fd14776e6f978f93c59255e70021ada530d501`  
		Last Modified: Fri, 01 Jun 2018 18:53:08 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d8e6e3c39975d05889d9fbfb3775c84ecd509991fb9f5ab07a023579fdc5fca`  
		Last Modified: Fri, 01 Jun 2018 18:54:31 GMT  
		Size: 890.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1e85c9134df6a96b73a6edfcc1bdf974ff036562e2a288305f22d67422d80ee`  
		Last Modified: Fri, 01 Jun 2018 18:54:33 GMT  
		Size: 14.1 MB (14104762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:latest` - linux; 386

```console
$ docker pull open-liberty@sha256:e911dc064a49217e0b46a39b1c99366cde562c39876a0eb24527cc05f090ef39
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.7 MB (272743374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb610923adfce38dcbab17728b2cd66183ade6366eb2aab180c36e019e909395`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 11:18:27 GMT
ADD file:cb3b7975c121b206774b4d6cfbb5652a43b594624dab6ad15b712a2cbbdf612e in / 
# Sat, 28 Apr 2018 11:18:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:18:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:18:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:18:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:18:30 GMT
CMD ["/bin/bash"]
# Sat, 02 Jun 2018 10:38:38 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 02 Jun 2018 10:39:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 10:39:11 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Sat, 02 Jun 2018 10:43:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 02 Jun 2018 10:43:32 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 02 Jun 2018 11:23:35 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 02 Jun 2018 11:23:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 11:23:44 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 02 Jun 2018 11:23:59 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 02 Jun 2018 11:23:59 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 02 Jun 2018 11:24:00 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 02 Jun 2018 11:24:01 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 02 Jun 2018 11:24:01 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 02 Jun 2018 11:24:01 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 02 Jun 2018 11:24:02 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 02 Jun 2018 11:24:02 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 02 Jun 2018 11:24:29 GMT
ENV KEYSTORE_REQUIRED=true
# Sat, 02 Jun 2018 11:24:30 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Sat, 02 Jun 2018 11:24:51 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:3a1e79864dec4c6e37d3df52e348cf3121a5297fd763099a70ecd188d1cf63ee`  
		Last Modified: Mon, 23 Apr 2018 14:55:46 GMT  
		Size: 43.3 MB (43335726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8398adf991e61b1dbb7c296dff6ee41be912937c6be5230cef40b61b3be6f2`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3020085dcaa4b1ace3a5f4045ab2d8ce6d1a99613542a2680281e2aa4868199`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20dd50be32433bdaa587603bd1431be277c4aa000d50693929ea48c1a1ff9a8`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1027efc898bf4c1ef51f97f0c11f11ba4056c4bd387b60fb429ca018c29922`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9faa12872a22a86ea5cba3c3d4d750f7e90fb942565b5b7985aaaa4e3a7ad10`  
		Last Modified: Sat, 02 Jun 2018 10:52:51 GMT  
		Size: 2.9 MB (2875875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea1bd6f834edd9fd8153d5288e7033ea0a3681180becd1b08d142f1b7c4ba8b`  
		Last Modified: Sat, 02 Jun 2018 10:53:15 GMT  
		Size: 115.5 MB (115505331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d79a03f5eb4cda6437d923b087f659d080ea7c15bf469981d4e3d5e84725f5a`  
		Last Modified: Sat, 02 Jun 2018 11:25:26 GMT  
		Size: 420.8 KB (420757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd731469b69dc9534c8c5709119c91d3f146139fdb74a15c36bb2c0ae0b91219`  
		Last Modified: Sat, 02 Jun 2018 11:25:46 GMT  
		Size: 95.9 MB (95913289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88f30aaaee96f89ac9cbd70b5157bd6235ee37bea8cf6e8b99caadf81d3f5a0`  
		Last Modified: Sat, 02 Jun 2018 11:25:26 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba7005e2172802cbab5fcc69527d639cfd4a5177e80519f8abbf26dfbc8531`  
		Last Modified: Sat, 02 Jun 2018 11:25:26 GMT  
		Size: 861.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f4b4a08cb9562557d823ba3062e71c009ae8bd45dea70ed945e2779490fe56`  
		Last Modified: Sat, 02 Jun 2018 11:25:26 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48bb30927e43ac0265bf3bc765913255010e0da6ab631e66d919f7ed55a0efe`  
		Last Modified: Sat, 02 Jun 2018 11:26:27 GMT  
		Size: 884.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8239c554f8e6d33d6876eb86fa1a94dc018f7eb6e48bab68555c85cb796cb42b`  
		Last Modified: Sat, 02 Jun 2018 11:26:34 GMT  
		Size: 14.7 MB (14687368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:latest` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:0c4c9c1cec2dcd043dc5edbcc10f9231f214ef3bb5cc35383ea61b9853279bfc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.5 MB (299521121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afc6a34d02d7c6000a8d7e1402eb5271be7b1973299390570d0748701e8706fa`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 08:35:46 GMT
ADD file:f04df47ce064505cf6035a445440244ebf513ffda3a1d933137ac1b3f9dcb10a in / 
# Sat, 28 Apr 2018 08:35:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 08:35:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 08:35:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 08:35:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 08:35:53 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 13:24:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 13:24:31 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 08:16:46 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Sat, 02 Jun 2018 08:18:43 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 02 Jun 2018 08:18:43 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 02 Jun 2018 08:50:02 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 02 Jun 2018 08:50:33 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 08:50:33 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 02 Jun 2018 08:50:45 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 02 Jun 2018 08:50:45 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 02 Jun 2018 08:50:47 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 02 Jun 2018 08:51:02 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 02 Jun 2018 08:51:04 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 02 Jun 2018 08:51:05 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 02 Jun 2018 08:51:08 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 02 Jun 2018 08:51:11 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 02 Jun 2018 08:52:19 GMT
ENV KEYSTORE_REQUIRED=true
# Sat, 02 Jun 2018 08:52:24 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Sat, 02 Jun 2018 08:52:52 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:6f5c5c810ea52a4d0eeed419954773e58454a391359660fbba515e1c200b2a53`  
		Last Modified: Sat, 28 Apr 2018 08:38:20 GMT  
		Size: 45.4 MB (45430904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0edf6521d4cc2b1d8a566d3712701b63c23cd071e5b0a6482f88aeaf1faab07`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479e23b9e48d0ddeb8b1d9b907d4786c018218b02e8ef8127a81d762c903ffc9`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 647.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebe5b7d4eb56fba71a14936f09f1c0e9a292fd12187abd76a8635e91d563510`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75acd081ba1e9819d284f8c0e4616261fcf1dd2c40070256f2b98edefe60bc0f`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142a2f61f934e958e4d3b3a6704704c9bf75df9db3881a88c5933019f4d1cd40`  
		Last Modified: Sat, 28 Apr 2018 13:31:26 GMT  
		Size: 2.9 MB (2880013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b0a9b39b61813ab030ad26e486e56536e17f3c06353affdcf7b7d06a87fdda`  
		Last Modified: Sat, 02 Jun 2018 08:23:47 GMT  
		Size: 140.6 MB (140647083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd75ed53d3efba6156f1aa70c4d9b0f3e55b0cb44b6a30fd4f8c21565643abb0`  
		Last Modified: Sat, 02 Jun 2018 08:53:48 GMT  
		Size: 453.1 KB (453075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa27fe0d0ca4558f1f8074cf2b060b6d12f6de9aaf957cb2bfd63fd8dbd4e50`  
		Last Modified: Sat, 02 Jun 2018 08:53:59 GMT  
		Size: 95.9 MB (95913189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41f90e894f20e33e644c4975981b62029bb1084c8fa230e574e244718f07c1a`  
		Last Modified: Sat, 02 Jun 2018 08:53:47 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9458de1e74742c9231368600fdb1032458aeec8ef1a938393685a70c0e0a8301`  
		Last Modified: Sat, 02 Jun 2018 08:53:47 GMT  
		Size: 910.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc922430cf252d85f9f2de13ed6e524a670099db8df420f7ceeef3267f9b1d60`  
		Last Modified: Sat, 02 Jun 2018 08:53:47 GMT  
		Size: 552.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18fd46621ad65479321165ee7d42a1fd33832b71d4400e36d518356052314254`  
		Last Modified: Sat, 02 Jun 2018 08:54:47 GMT  
		Size: 889.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d00240e0fbb2cd7161efa91e1e74d6984e825cd48d530954564ed00332f21137`  
		Last Modified: Sat, 02 Jun 2018 08:54:51 GMT  
		Size: 14.2 MB (14191646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:latest` - linux; s390x

```console
$ docker pull open-liberty@sha256:870569dd2dbe89a47657245ebf19f666e901b503b136993bc97bfeb7d9ccd925
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.2 MB (282180275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f79595f5639575753bed38b9c1e85d5bd02b756f8044492e7a53177ad4bb190a`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 11:55:01 GMT
ADD file:1774b01ad0a92d5a1d2c3d55727311071fa588988963911322975950764a84a3 in / 
# Sat, 28 Apr 2018 11:55:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:55:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:55:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:55:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:55:04 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 15:27:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 15:27:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 11:41:32 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Sat, 02 Jun 2018 11:42:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 02 Jun 2018 11:42:13 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 02 Jun 2018 12:03:55 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 02 Jun 2018 12:04:01 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 12:04:01 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 02 Jun 2018 12:04:05 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 02 Jun 2018 12:04:06 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 02 Jun 2018 12:04:06 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 02 Jun 2018 12:04:07 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 02 Jun 2018 12:04:08 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 02 Jun 2018 12:04:08 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 02 Jun 2018 12:04:08 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 02 Jun 2018 12:04:08 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 02 Jun 2018 12:04:38 GMT
ENV KEYSTORE_REQUIRED=true
# Sat, 02 Jun 2018 12:04:39 GMT
RUN cp /opt/ol/wlp/templates/servers/javaee7/server.xml /config/server.xml
# Sat, 02 Jun 2018 12:04:53 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
```

-	Layers:
	-	`sha256:b1ebf925223c7651aa354d836106d6139b7610117af232eea6d23f9b81d972f8`  
		Last Modified: Mon, 23 Apr 2018 14:58:28 GMT  
		Size: 42.1 MB (42092399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8a07f0c9220007a0689fbea3da6b75314fc322bd887be53e5e734cb4f1800c`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1c359f5ed9198ccfe76eb8f1d8d8c2b32b74a12e582b90ea0433d4d8845261`  
		Last Modified: Sat, 28 Apr 2018 11:56:28 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35fcc66064c28ab927565627c616fe1986f1004944d173a1a1d0e95cdfde30a`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d624275f8e7d43c3c19936ca324e75493d45620982df73e9ef0578f9f1c75256`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2241255ff61810ada96838743b69433494aa9876c3b5723fb84d36406a76d7ed`  
		Last Modified: Sat, 28 Apr 2018 15:29:54 GMT  
		Size: 2.8 MB (2764794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773ddb3fb041154cebe7788dcd968a12330a3c0563663093341f274b61bd6d60`  
		Last Modified: Sat, 02 Jun 2018 11:44:26 GMT  
		Size: 126.6 MB (126612495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b74a8e73c54e3f372e72aaab67b0d92c40e2cd299ae2118dfb9d78e57873ac`  
		Last Modified: Sat, 02 Jun 2018 12:05:42 GMT  
		Size: 427.6 KB (427594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3fc5c1dbb97c7ec6878f6204211e580b12b7d1b0499d7c15096f0b32ad8540`  
		Last Modified: Sat, 02 Jun 2018 12:05:49 GMT  
		Size: 95.9 MB (95913289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3c6dc35e422747e4ced52c6d335918a4af09fd32029ca09614d6d368168cbc`  
		Last Modified: Sat, 02 Jun 2018 12:05:41 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c4248985341f29943469f53a1838c586c18d28b888a9ba6e923e980ef9354fc`  
		Last Modified: Sat, 02 Jun 2018 12:05:42 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3894ae44edd834e6f1a77eca8d98d3169212f47ccc5f015ba2a2e5b16fbf4a0`  
		Last Modified: Sat, 02 Jun 2018 12:05:42 GMT  
		Size: 523.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cba9392ecdfde14288fc99407f211eeac1f678fa1d3dd77c957c443412b3cd0b`  
		Last Modified: Sat, 02 Jun 2018 12:06:29 GMT  
		Size: 887.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ab1da2622eccc48e1e5395b7bd01a11f11466c1cc6dac725d49bdf7db0d351a`  
		Last Modified: Sat, 02 Jun 2018 12:06:32 GMT  
		Size: 14.4 MB (14364649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:microProfile1`

```console
$ docker pull open-liberty@sha256:cd74d8e166ea6055b4a60003554fd09f165eefaab6a370016bdadb5c19cb779e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:microProfile1` - linux; amd64

```console
$ docker pull open-liberty@sha256:53e533ceb2a405a9bdd3e09941f623d3e5419836511a16bc43ce9e9a8d4b6416
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.7 MB (280688799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eda374b6ac4b30ea4f39845765ad5d6df2b9476a7868440b9cca7672c68a74e`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sun, 29 Apr 2018 07:43:01 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sun, 29 Apr 2018 07:43:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 18:22:13 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Fri, 01 Jun 2018 18:22:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 01 Jun 2018 18:22:50 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 01 Jun 2018 18:50:14 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 01 Jun 2018 18:50:19 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 18:50:19 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Fri, 01 Jun 2018 18:50:24 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Fri, 01 Jun 2018 18:50:24 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Fri, 01 Jun 2018 18:50:25 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 01 Jun 2018 18:50:29 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 01 Jun 2018 18:50:29 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Fri, 01 Jun 2018 18:50:29 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 01 Jun 2018 18:50:30 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 01 Jun 2018 18:50:30 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 01 Jun 2018 18:52:23 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Fri, 01 Jun 2018 18:52:32 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c13c1ab66c392353042573099bbd925177bfddaf89f99604b48a903ab8f9472`  
		Last Modified: Sun, 29 Apr 2018 08:35:43 GMT  
		Size: 3.0 MB (3020278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34dc89a9f462a0f7cfdb948ecb72d59174dbb7669b3b61db4003103029ad1993`  
		Last Modified: Fri, 01 Jun 2018 18:27:08 GMT  
		Size: 127.2 MB (127179695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d778201757a4d09bb74cf69d6d347fc968a2e0e4fa585e4cb5dec89f5f92cca8`  
		Last Modified: Fri, 01 Jun 2018 18:53:07 GMT  
		Size: 421.9 KB (421937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da46ff93376a43b4dcf9522036587056ebb96caabe3fbf2ee65d0405e5a42117`  
		Last Modified: Fri, 01 Jun 2018 18:53:11 GMT  
		Size: 95.9 MB (95913289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4fa68c9786658817064aa51022fa9b8154aae47786f769a8e6938ef677ab3f7`  
		Last Modified: Fri, 01 Jun 2018 18:53:02 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:664adb311932bd1666e73b33458087e84703c64be06ef80a7f83af74ba5c3a0c`  
		Last Modified: Fri, 01 Jun 2018 18:53:02 GMT  
		Size: 874.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6255043185cfd6e0baaf2d85fd14776e6f978f93c59255e70021ada530d501`  
		Last Modified: Fri, 01 Jun 2018 18:53:08 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7daa48852539c0a783f6697da240044b72108c81824d9136e737c60fed1693a1`  
		Last Modified: Fri, 01 Jun 2018 18:55:20 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7129eeab984bf489f53965d67fe0fcd6b9f36ebeb5f1cc506b3055aacca549`  
		Last Modified: Fri, 01 Jun 2018 18:55:25 GMT  
		Size: 11.1 MB (11122022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile1` - linux; 386

```console
$ docker pull open-liberty@sha256:a053947a4ddf4455ccd9efdb97c26a3b6dd198d324657bf9688103a4320d6b24
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.6 MB (269621677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e8395cfa6e48959269d3a5453b55ed294a5dbbe79f595a912bfddbc0b5c1cee`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 11:18:27 GMT
ADD file:cb3b7975c121b206774b4d6cfbb5652a43b594624dab6ad15b712a2cbbdf612e in / 
# Sat, 28 Apr 2018 11:18:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:18:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:18:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:18:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:18:30 GMT
CMD ["/bin/bash"]
# Sat, 02 Jun 2018 10:38:38 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 02 Jun 2018 10:39:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 10:39:11 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Sat, 02 Jun 2018 10:43:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 02 Jun 2018 10:43:32 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 02 Jun 2018 11:23:35 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 02 Jun 2018 11:23:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 11:23:44 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 02 Jun 2018 11:23:59 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 02 Jun 2018 11:23:59 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 02 Jun 2018 11:24:00 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 02 Jun 2018 11:24:01 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 02 Jun 2018 11:24:01 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 02 Jun 2018 11:24:01 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 02 Jun 2018 11:24:02 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 02 Jun 2018 11:24:02 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 02 Jun 2018 11:24:57 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Sat, 02 Jun 2018 11:25:12 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:3a1e79864dec4c6e37d3df52e348cf3121a5297fd763099a70ecd188d1cf63ee`  
		Last Modified: Mon, 23 Apr 2018 14:55:46 GMT  
		Size: 43.3 MB (43335726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8398adf991e61b1dbb7c296dff6ee41be912937c6be5230cef40b61b3be6f2`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3020085dcaa4b1ace3a5f4045ab2d8ce6d1a99613542a2680281e2aa4868199`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20dd50be32433bdaa587603bd1431be277c4aa000d50693929ea48c1a1ff9a8`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1027efc898bf4c1ef51f97f0c11f11ba4056c4bd387b60fb429ca018c29922`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9faa12872a22a86ea5cba3c3d4d750f7e90fb942565b5b7985aaaa4e3a7ad10`  
		Last Modified: Sat, 02 Jun 2018 10:52:51 GMT  
		Size: 2.9 MB (2875875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea1bd6f834edd9fd8153d5288e7033ea0a3681180becd1b08d142f1b7c4ba8b`  
		Last Modified: Sat, 02 Jun 2018 10:53:15 GMT  
		Size: 115.5 MB (115505331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d79a03f5eb4cda6437d923b087f659d080ea7c15bf469981d4e3d5e84725f5a`  
		Last Modified: Sat, 02 Jun 2018 11:25:26 GMT  
		Size: 420.8 KB (420757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd731469b69dc9534c8c5709119c91d3f146139fdb74a15c36bb2c0ae0b91219`  
		Last Modified: Sat, 02 Jun 2018 11:25:46 GMT  
		Size: 95.9 MB (95913289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88f30aaaee96f89ac9cbd70b5157bd6235ee37bea8cf6e8b99caadf81d3f5a0`  
		Last Modified: Sat, 02 Jun 2018 11:25:26 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba7005e2172802cbab5fcc69527d639cfd4a5177e80519f8abbf26dfbc8531`  
		Last Modified: Sat, 02 Jun 2018 11:25:26 GMT  
		Size: 861.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f4b4a08cb9562557d823ba3062e71c009ae8bd45dea70ed945e2779490fe56`  
		Last Modified: Sat, 02 Jun 2018 11:25:26 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce41f6b0e635974a91177c76b325d98b70107d537a2a91385d76f715d0c4a7f4`  
		Last Modified: Sat, 02 Jun 2018 11:26:59 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:765359d9b29742c81b542be42bdf7508dd83895cbd258a92cbe6e6728e4693ce`  
		Last Modified: Sat, 02 Jun 2018 11:27:05 GMT  
		Size: 11.6 MB (11566020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile1` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:c1912d8be1ef6c44a37d2be57d334789608a7e5f6e80cad4e89b288af94e4745
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.7 MB (296722137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fd7814b78fd8f9ded8117c66122cec2484a98e55a24933292fd739cd5296a6e`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 08:35:46 GMT
ADD file:f04df47ce064505cf6035a445440244ebf513ffda3a1d933137ac1b3f9dcb10a in / 
# Sat, 28 Apr 2018 08:35:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 08:35:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 08:35:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 08:35:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 08:35:53 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 13:24:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 13:24:31 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 08:16:46 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Sat, 02 Jun 2018 08:18:43 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 02 Jun 2018 08:18:43 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 02 Jun 2018 08:50:02 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 02 Jun 2018 08:50:33 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 08:50:33 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 02 Jun 2018 08:50:45 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 02 Jun 2018 08:50:45 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 02 Jun 2018 08:50:47 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 02 Jun 2018 08:51:02 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 02 Jun 2018 08:51:04 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 02 Jun 2018 08:51:05 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 02 Jun 2018 08:51:08 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 02 Jun 2018 08:51:11 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 02 Jun 2018 08:53:07 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Sat, 02 Jun 2018 08:53:30 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:6f5c5c810ea52a4d0eeed419954773e58454a391359660fbba515e1c200b2a53`  
		Last Modified: Sat, 28 Apr 2018 08:38:20 GMT  
		Size: 45.4 MB (45430904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0edf6521d4cc2b1d8a566d3712701b63c23cd071e5b0a6482f88aeaf1faab07`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479e23b9e48d0ddeb8b1d9b907d4786c018218b02e8ef8127a81d762c903ffc9`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 647.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebe5b7d4eb56fba71a14936f09f1c0e9a292fd12187abd76a8635e91d563510`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75acd081ba1e9819d284f8c0e4616261fcf1dd2c40070256f2b98edefe60bc0f`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142a2f61f934e958e4d3b3a6704704c9bf75df9db3881a88c5933019f4d1cd40`  
		Last Modified: Sat, 28 Apr 2018 13:31:26 GMT  
		Size: 2.9 MB (2880013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b0a9b39b61813ab030ad26e486e56536e17f3c06353affdcf7b7d06a87fdda`  
		Last Modified: Sat, 02 Jun 2018 08:23:47 GMT  
		Size: 140.6 MB (140647083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd75ed53d3efba6156f1aa70c4d9b0f3e55b0cb44b6a30fd4f8c21565643abb0`  
		Last Modified: Sat, 02 Jun 2018 08:53:48 GMT  
		Size: 453.1 KB (453075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa27fe0d0ca4558f1f8074cf2b060b6d12f6de9aaf957cb2bfd63fd8dbd4e50`  
		Last Modified: Sat, 02 Jun 2018 08:53:59 GMT  
		Size: 95.9 MB (95913189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41f90e894f20e33e644c4975981b62029bb1084c8fa230e574e244718f07c1a`  
		Last Modified: Sat, 02 Jun 2018 08:53:47 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9458de1e74742c9231368600fdb1032458aeec8ef1a938393685a70c0e0a8301`  
		Last Modified: Sat, 02 Jun 2018 08:53:47 GMT  
		Size: 910.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc922430cf252d85f9f2de13ed6e524a670099db8df420f7ceeef3267f9b1d60`  
		Last Modified: Sat, 02 Jun 2018 08:53:47 GMT  
		Size: 552.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5dd5ce9a367f0149866653d6c7d8141127190e211c3936495615e5ad1630ea`  
		Last Modified: Sat, 02 Jun 2018 08:55:20 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c189d22c4ac7c8863036b57a00250e583acfb7904206ee8dfe7f13dc5fc3d114`  
		Last Modified: Sat, 02 Jun 2018 08:55:26 GMT  
		Size: 11.4 MB (11393012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile1` - linux; s390x

```console
$ docker pull open-liberty@sha256:7e30f36f7764d98fcd09694e083c03542008b88ecb32f7701c922d43d084f9e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.1 MB (279114029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b8fb4fe7814f39d67e367402fb835db9064a60f6290cb5025cd9c52a32c5f36`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 11:55:01 GMT
ADD file:1774b01ad0a92d5a1d2c3d55727311071fa588988963911322975950764a84a3 in / 
# Sat, 28 Apr 2018 11:55:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:55:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:55:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:55:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:55:04 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 15:27:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 15:27:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 11:41:32 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Sat, 02 Jun 2018 11:42:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 02 Jun 2018 11:42:13 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 02 Jun 2018 12:03:55 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 02 Jun 2018 12:04:01 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 12:04:01 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 02 Jun 2018 12:04:05 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 02 Jun 2018 12:04:06 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 02 Jun 2018 12:04:06 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 02 Jun 2018 12:04:07 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 02 Jun 2018 12:04:08 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 02 Jun 2018 12:04:08 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 02 Jun 2018 12:04:08 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 02 Jun 2018 12:04:08 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 02 Jun 2018 12:05:10 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Sat, 02 Jun 2018 12:05:22 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:b1ebf925223c7651aa354d836106d6139b7610117af232eea6d23f9b81d972f8`  
		Last Modified: Mon, 23 Apr 2018 14:58:28 GMT  
		Size: 42.1 MB (42092399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8a07f0c9220007a0689fbea3da6b75314fc322bd887be53e5e734cb4f1800c`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1c359f5ed9198ccfe76eb8f1d8d8c2b32b74a12e582b90ea0433d4d8845261`  
		Last Modified: Sat, 28 Apr 2018 11:56:28 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35fcc66064c28ab927565627c616fe1986f1004944d173a1a1d0e95cdfde30a`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d624275f8e7d43c3c19936ca324e75493d45620982df73e9ef0578f9f1c75256`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2241255ff61810ada96838743b69433494aa9876c3b5723fb84d36406a76d7ed`  
		Last Modified: Sat, 28 Apr 2018 15:29:54 GMT  
		Size: 2.8 MB (2764794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773ddb3fb041154cebe7788dcd968a12330a3c0563663093341f274b61bd6d60`  
		Last Modified: Sat, 02 Jun 2018 11:44:26 GMT  
		Size: 126.6 MB (126612495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b74a8e73c54e3f372e72aaab67b0d92c40e2cd299ae2118dfb9d78e57873ac`  
		Last Modified: Sat, 02 Jun 2018 12:05:42 GMT  
		Size: 427.6 KB (427594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3fc5c1dbb97c7ec6878f6204211e580b12b7d1b0499d7c15096f0b32ad8540`  
		Last Modified: Sat, 02 Jun 2018 12:05:49 GMT  
		Size: 95.9 MB (95913289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3c6dc35e422747e4ced52c6d335918a4af09fd32029ca09614d6d368168cbc`  
		Last Modified: Sat, 02 Jun 2018 12:05:41 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c4248985341f29943469f53a1838c586c18d28b888a9ba6e923e980ef9354fc`  
		Last Modified: Sat, 02 Jun 2018 12:05:42 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3894ae44edd834e6f1a77eca8d98d3169212f47ccc5f015ba2a2e5b16fbf4a0`  
		Last Modified: Sat, 02 Jun 2018 12:05:42 GMT  
		Size: 523.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc4ddefe949365775b85a21d2d2623700462199be2f0cfe98508a4be09cd413d`  
		Last Modified: Sat, 02 Jun 2018 12:07:03 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fbcf0bb6b352d1e1def8811b5649b3ab02b3fce13dfb02ecf4cc8fc02f2148b`  
		Last Modified: Sat, 02 Jun 2018 12:07:06 GMT  
		Size: 11.3 MB (11298753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:microProfile1-java8-ibm`

```console
$ docker pull open-liberty@sha256:cd74d8e166ea6055b4a60003554fd09f165eefaab6a370016bdadb5c19cb779e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:microProfile1-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:53e533ceb2a405a9bdd3e09941f623d3e5419836511a16bc43ce9e9a8d4b6416
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.7 MB (280688799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eda374b6ac4b30ea4f39845765ad5d6df2b9476a7868440b9cca7672c68a74e`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sun, 29 Apr 2018 07:43:01 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sun, 29 Apr 2018 07:43:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 18:22:13 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Fri, 01 Jun 2018 18:22:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 01 Jun 2018 18:22:50 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 01 Jun 2018 18:50:14 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 01 Jun 2018 18:50:19 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 18:50:19 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Fri, 01 Jun 2018 18:50:24 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Fri, 01 Jun 2018 18:50:24 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Fri, 01 Jun 2018 18:50:25 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 01 Jun 2018 18:50:29 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 01 Jun 2018 18:50:29 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Fri, 01 Jun 2018 18:50:29 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 01 Jun 2018 18:50:30 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 01 Jun 2018 18:50:30 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 01 Jun 2018 18:52:23 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Fri, 01 Jun 2018 18:52:32 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c13c1ab66c392353042573099bbd925177bfddaf89f99604b48a903ab8f9472`  
		Last Modified: Sun, 29 Apr 2018 08:35:43 GMT  
		Size: 3.0 MB (3020278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34dc89a9f462a0f7cfdb948ecb72d59174dbb7669b3b61db4003103029ad1993`  
		Last Modified: Fri, 01 Jun 2018 18:27:08 GMT  
		Size: 127.2 MB (127179695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d778201757a4d09bb74cf69d6d347fc968a2e0e4fa585e4cb5dec89f5f92cca8`  
		Last Modified: Fri, 01 Jun 2018 18:53:07 GMT  
		Size: 421.9 KB (421937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da46ff93376a43b4dcf9522036587056ebb96caabe3fbf2ee65d0405e5a42117`  
		Last Modified: Fri, 01 Jun 2018 18:53:11 GMT  
		Size: 95.9 MB (95913289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4fa68c9786658817064aa51022fa9b8154aae47786f769a8e6938ef677ab3f7`  
		Last Modified: Fri, 01 Jun 2018 18:53:02 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:664adb311932bd1666e73b33458087e84703c64be06ef80a7f83af74ba5c3a0c`  
		Last Modified: Fri, 01 Jun 2018 18:53:02 GMT  
		Size: 874.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6255043185cfd6e0baaf2d85fd14776e6f978f93c59255e70021ada530d501`  
		Last Modified: Fri, 01 Jun 2018 18:53:08 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7daa48852539c0a783f6697da240044b72108c81824d9136e737c60fed1693a1`  
		Last Modified: Fri, 01 Jun 2018 18:55:20 GMT  
		Size: 540.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac7129eeab984bf489f53965d67fe0fcd6b9f36ebeb5f1cc506b3055aacca549`  
		Last Modified: Fri, 01 Jun 2018 18:55:25 GMT  
		Size: 11.1 MB (11122022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile1-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:a053947a4ddf4455ccd9efdb97c26a3b6dd198d324657bf9688103a4320d6b24
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.6 MB (269621677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e8395cfa6e48959269d3a5453b55ed294a5dbbe79f595a912bfddbc0b5c1cee`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 11:18:27 GMT
ADD file:cb3b7975c121b206774b4d6cfbb5652a43b594624dab6ad15b712a2cbbdf612e in / 
# Sat, 28 Apr 2018 11:18:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:18:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:18:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:18:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:18:30 GMT
CMD ["/bin/bash"]
# Sat, 02 Jun 2018 10:38:38 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 02 Jun 2018 10:39:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 10:39:11 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Sat, 02 Jun 2018 10:43:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 02 Jun 2018 10:43:32 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 02 Jun 2018 11:23:35 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 02 Jun 2018 11:23:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 11:23:44 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 02 Jun 2018 11:23:59 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 02 Jun 2018 11:23:59 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 02 Jun 2018 11:24:00 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 02 Jun 2018 11:24:01 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 02 Jun 2018 11:24:01 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 02 Jun 2018 11:24:01 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 02 Jun 2018 11:24:02 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 02 Jun 2018 11:24:02 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 02 Jun 2018 11:24:57 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Sat, 02 Jun 2018 11:25:12 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:3a1e79864dec4c6e37d3df52e348cf3121a5297fd763099a70ecd188d1cf63ee`  
		Last Modified: Mon, 23 Apr 2018 14:55:46 GMT  
		Size: 43.3 MB (43335726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8398adf991e61b1dbb7c296dff6ee41be912937c6be5230cef40b61b3be6f2`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3020085dcaa4b1ace3a5f4045ab2d8ce6d1a99613542a2680281e2aa4868199`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20dd50be32433bdaa587603bd1431be277c4aa000d50693929ea48c1a1ff9a8`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1027efc898bf4c1ef51f97f0c11f11ba4056c4bd387b60fb429ca018c29922`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9faa12872a22a86ea5cba3c3d4d750f7e90fb942565b5b7985aaaa4e3a7ad10`  
		Last Modified: Sat, 02 Jun 2018 10:52:51 GMT  
		Size: 2.9 MB (2875875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea1bd6f834edd9fd8153d5288e7033ea0a3681180becd1b08d142f1b7c4ba8b`  
		Last Modified: Sat, 02 Jun 2018 10:53:15 GMT  
		Size: 115.5 MB (115505331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d79a03f5eb4cda6437d923b087f659d080ea7c15bf469981d4e3d5e84725f5a`  
		Last Modified: Sat, 02 Jun 2018 11:25:26 GMT  
		Size: 420.8 KB (420757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd731469b69dc9534c8c5709119c91d3f146139fdb74a15c36bb2c0ae0b91219`  
		Last Modified: Sat, 02 Jun 2018 11:25:46 GMT  
		Size: 95.9 MB (95913289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88f30aaaee96f89ac9cbd70b5157bd6235ee37bea8cf6e8b99caadf81d3f5a0`  
		Last Modified: Sat, 02 Jun 2018 11:25:26 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba7005e2172802cbab5fcc69527d639cfd4a5177e80519f8abbf26dfbc8531`  
		Last Modified: Sat, 02 Jun 2018 11:25:26 GMT  
		Size: 861.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f4b4a08cb9562557d823ba3062e71c009ae8bd45dea70ed945e2779490fe56`  
		Last Modified: Sat, 02 Jun 2018 11:25:26 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce41f6b0e635974a91177c76b325d98b70107d537a2a91385d76f715d0c4a7f4`  
		Last Modified: Sat, 02 Jun 2018 11:26:59 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:765359d9b29742c81b542be42bdf7508dd83895cbd258a92cbe6e6728e4693ce`  
		Last Modified: Sat, 02 Jun 2018 11:27:05 GMT  
		Size: 11.6 MB (11566020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile1-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:c1912d8be1ef6c44a37d2be57d334789608a7e5f6e80cad4e89b288af94e4745
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.7 MB (296722137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fd7814b78fd8f9ded8117c66122cec2484a98e55a24933292fd739cd5296a6e`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 08:35:46 GMT
ADD file:f04df47ce064505cf6035a445440244ebf513ffda3a1d933137ac1b3f9dcb10a in / 
# Sat, 28 Apr 2018 08:35:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 08:35:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 08:35:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 08:35:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 08:35:53 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 13:24:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 13:24:31 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 08:16:46 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Sat, 02 Jun 2018 08:18:43 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 02 Jun 2018 08:18:43 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 02 Jun 2018 08:50:02 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 02 Jun 2018 08:50:33 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 08:50:33 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 02 Jun 2018 08:50:45 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 02 Jun 2018 08:50:45 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 02 Jun 2018 08:50:47 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 02 Jun 2018 08:51:02 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 02 Jun 2018 08:51:04 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 02 Jun 2018 08:51:05 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 02 Jun 2018 08:51:08 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 02 Jun 2018 08:51:11 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 02 Jun 2018 08:53:07 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Sat, 02 Jun 2018 08:53:30 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:6f5c5c810ea52a4d0eeed419954773e58454a391359660fbba515e1c200b2a53`  
		Last Modified: Sat, 28 Apr 2018 08:38:20 GMT  
		Size: 45.4 MB (45430904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0edf6521d4cc2b1d8a566d3712701b63c23cd071e5b0a6482f88aeaf1faab07`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479e23b9e48d0ddeb8b1d9b907d4786c018218b02e8ef8127a81d762c903ffc9`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 647.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebe5b7d4eb56fba71a14936f09f1c0e9a292fd12187abd76a8635e91d563510`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75acd081ba1e9819d284f8c0e4616261fcf1dd2c40070256f2b98edefe60bc0f`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142a2f61f934e958e4d3b3a6704704c9bf75df9db3881a88c5933019f4d1cd40`  
		Last Modified: Sat, 28 Apr 2018 13:31:26 GMT  
		Size: 2.9 MB (2880013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b0a9b39b61813ab030ad26e486e56536e17f3c06353affdcf7b7d06a87fdda`  
		Last Modified: Sat, 02 Jun 2018 08:23:47 GMT  
		Size: 140.6 MB (140647083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd75ed53d3efba6156f1aa70c4d9b0f3e55b0cb44b6a30fd4f8c21565643abb0`  
		Last Modified: Sat, 02 Jun 2018 08:53:48 GMT  
		Size: 453.1 KB (453075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa27fe0d0ca4558f1f8074cf2b060b6d12f6de9aaf957cb2bfd63fd8dbd4e50`  
		Last Modified: Sat, 02 Jun 2018 08:53:59 GMT  
		Size: 95.9 MB (95913189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41f90e894f20e33e644c4975981b62029bb1084c8fa230e574e244718f07c1a`  
		Last Modified: Sat, 02 Jun 2018 08:53:47 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9458de1e74742c9231368600fdb1032458aeec8ef1a938393685a70c0e0a8301`  
		Last Modified: Sat, 02 Jun 2018 08:53:47 GMT  
		Size: 910.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc922430cf252d85f9f2de13ed6e524a670099db8df420f7ceeef3267f9b1d60`  
		Last Modified: Sat, 02 Jun 2018 08:53:47 GMT  
		Size: 552.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5dd5ce9a367f0149866653d6c7d8141127190e211c3936495615e5ad1630ea`  
		Last Modified: Sat, 02 Jun 2018 08:55:20 GMT  
		Size: 539.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c189d22c4ac7c8863036b57a00250e583acfb7904206ee8dfe7f13dc5fc3d114`  
		Last Modified: Sat, 02 Jun 2018 08:55:26 GMT  
		Size: 11.4 MB (11393012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile1-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:7e30f36f7764d98fcd09694e083c03542008b88ecb32f7701c922d43d084f9e6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.1 MB (279114029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b8fb4fe7814f39d67e367402fb835db9064a60f6290cb5025cd9c52a32c5f36`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 11:55:01 GMT
ADD file:1774b01ad0a92d5a1d2c3d55727311071fa588988963911322975950764a84a3 in / 
# Sat, 28 Apr 2018 11:55:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:55:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:55:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:55:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:55:04 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 15:27:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 15:27:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 11:41:32 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Sat, 02 Jun 2018 11:42:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 02 Jun 2018 11:42:13 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 02 Jun 2018 12:03:55 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 02 Jun 2018 12:04:01 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 12:04:01 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 02 Jun 2018 12:04:05 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 02 Jun 2018 12:04:06 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 02 Jun 2018 12:04:06 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 02 Jun 2018 12:04:07 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 02 Jun 2018 12:04:08 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 02 Jun 2018 12:04:08 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 02 Jun 2018 12:04:08 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 02 Jun 2018 12:04:08 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 02 Jun 2018 12:05:10 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Sat, 02 Jun 2018 12:05:22 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:b1ebf925223c7651aa354d836106d6139b7610117af232eea6d23f9b81d972f8`  
		Last Modified: Mon, 23 Apr 2018 14:58:28 GMT  
		Size: 42.1 MB (42092399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8a07f0c9220007a0689fbea3da6b75314fc322bd887be53e5e734cb4f1800c`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1c359f5ed9198ccfe76eb8f1d8d8c2b32b74a12e582b90ea0433d4d8845261`  
		Last Modified: Sat, 28 Apr 2018 11:56:28 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35fcc66064c28ab927565627c616fe1986f1004944d173a1a1d0e95cdfde30a`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d624275f8e7d43c3c19936ca324e75493d45620982df73e9ef0578f9f1c75256`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2241255ff61810ada96838743b69433494aa9876c3b5723fb84d36406a76d7ed`  
		Last Modified: Sat, 28 Apr 2018 15:29:54 GMT  
		Size: 2.8 MB (2764794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773ddb3fb041154cebe7788dcd968a12330a3c0563663093341f274b61bd6d60`  
		Last Modified: Sat, 02 Jun 2018 11:44:26 GMT  
		Size: 126.6 MB (126612495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b74a8e73c54e3f372e72aaab67b0d92c40e2cd299ae2118dfb9d78e57873ac`  
		Last Modified: Sat, 02 Jun 2018 12:05:42 GMT  
		Size: 427.6 KB (427594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3fc5c1dbb97c7ec6878f6204211e580b12b7d1b0499d7c15096f0b32ad8540`  
		Last Modified: Sat, 02 Jun 2018 12:05:49 GMT  
		Size: 95.9 MB (95913289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3c6dc35e422747e4ced52c6d335918a4af09fd32029ca09614d6d368168cbc`  
		Last Modified: Sat, 02 Jun 2018 12:05:41 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c4248985341f29943469f53a1838c586c18d28b888a9ba6e923e980ef9354fc`  
		Last Modified: Sat, 02 Jun 2018 12:05:42 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3894ae44edd834e6f1a77eca8d98d3169212f47ccc5f015ba2a2e5b16fbf4a0`  
		Last Modified: Sat, 02 Jun 2018 12:05:42 GMT  
		Size: 523.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc4ddefe949365775b85a21d2d2623700462199be2f0cfe98508a4be09cd413d`  
		Last Modified: Sat, 02 Jun 2018 12:07:03 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fbcf0bb6b352d1e1def8811b5649b3ab02b3fce13dfb02ecf4cc8fc02f2148b`  
		Last Modified: Sat, 02 Jun 2018 12:07:06 GMT  
		Size: 11.3 MB (11298753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:microProfile1-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:508e4acbfed4e31666a6398549fd25c36a7b5430c713d30e00df57a4aa560762
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:microProfile1-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:bc166732cedfc611b41da84b2ada42df1135347e5133a6d05c3108f5f1de27cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.9 MB (174905327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb266842aace47fd105a74c549ccdb2feffa6244d3bfb3df7daada45bc15a882`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 02:29:54 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 10 Jan 2018 02:30:08 GMT
RUN apk --update add --no-cache ca-certificates curl openssl binutils xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && curl -Ls https://www.archlinux.org/packages/core/x86_64/gcc-libs/download > /tmp/gcc-libs.tar.xz     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del curl binutils     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Fri, 01 Jun 2018 18:22:59 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Fri, 01 Jun 2018 18:24:48 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='15c2e6303aa5750a9e56e0ac1b3e6f246c3fd1c3c32d7613360ec85537e88ec3';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='debc39440f0a0dd8952f69a7b8e47ec433eeef88c78892cde473cfc36b64ed5e';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='fa040275e7fa1afeb47c4ef60a4cf81a6bdbe590459841f3f89cdfd5cc8c50db';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='31ff95bcfed915e3d5818933e18bb50ef124924dafc767c4e27ee4acdfb1aacd';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='953df3c2ab64588fcf517bcb391549e06fa402bcaa09e3554ae163ca6a080d7c';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 01 Jun 2018 18:24:48 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 01 Jun 2018 18:50:39 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Fri, 01 Jun 2018 18:50:44 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && mkdir /opt/ol    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Fri, 01 Jun 2018 18:50:44 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Fri, 01 Jun 2018 18:50:44 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs
# Fri, 01 Jun 2018 18:50:48 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 01 Jun 2018 18:50:49 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Fri, 01 Jun 2018 18:50:49 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 01 Jun 2018 18:50:49 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 01 Jun 2018 18:50:49 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 01 Jun 2018 18:52:39 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
# Fri, 01 Jun 2018 18:52:50 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:271fbb147f08aa2a2cb149146ee4895d4c6a2568c9a847acd9f9e1c526994fba`  
		Last Modified: Wed, 10 Jan 2018 02:56:39 GMT  
		Size: 4.5 MB (4530053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c914b75c868499df4f7994b288bca37a45c22202aed76216a96ef9b89c8cece`  
		Last Modified: Fri, 01 Jun 2018 18:28:56 GMT  
		Size: 61.9 MB (61924921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61942c94bae43fb3ddeee187e0f744f9b5a6c300629ef0e578134275f2919da6`  
		Last Modified: Fri, 01 Jun 2018 18:53:39 GMT  
		Size: 95.9 MB (95913249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f2b7707940102cec14578aed4c729d210ad5801969b33b69e57a7cd6dff6df`  
		Last Modified: Fri, 01 Jun 2018 18:53:32 GMT  
		Size: 271.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630bace40fdfb7c6efbbaaa72c703f88884a12fc0417ed65162ced4f60e776c3`  
		Last Modified: Fri, 01 Jun 2018 18:53:33 GMT  
		Size: 762.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4dc1c5c81166676b4b03d2e4abdfb3b978085da7065731aec4fbf252f985dd`  
		Last Modified: Fri, 01 Jun 2018 18:53:33 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:369b670c7dc292f35f2b94245a688b2d2e414e68b72040364047f61a1a01f1ea`  
		Last Modified: Fri, 01 Jun 2018 18:55:51 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa5dc282555cdf7c1861ac6b03720099b28f9e84ebdf044620dcf008e7de16d4`  
		Last Modified: Fri, 01 Jun 2018 18:55:53 GMT  
		Size: 10.5 MB (10543264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:webProfile7`

```console
$ docker pull open-liberty@sha256:c202461a5bb995c07898b02c13a24c5f577c247cc796058bba82dabca575ca15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:webProfile7` - linux; amd64

```console
$ docker pull open-liberty@sha256:7a4d6fe18748aaf669acbdcc988d9e11aa7bb0f018980ae8e1dc5b6b816ea221
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.5 MB (280497068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ecc5145e95004064886a6a87ed54d76dbd4695a248797abe33b0471c2bb692e`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sun, 29 Apr 2018 07:43:01 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sun, 29 Apr 2018 07:43:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 18:22:13 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Fri, 01 Jun 2018 18:22:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 01 Jun 2018 18:22:50 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 01 Jun 2018 18:50:14 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 01 Jun 2018 18:50:19 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 18:50:19 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Fri, 01 Jun 2018 18:50:24 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Fri, 01 Jun 2018 18:50:24 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Fri, 01 Jun 2018 18:50:25 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 01 Jun 2018 18:50:29 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 01 Jun 2018 18:50:29 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Fri, 01 Jun 2018 18:50:29 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 01 Jun 2018 18:50:30 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 01 Jun 2018 18:50:30 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 01 Jun 2018 18:50:57 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Fri, 01 Jun 2018 18:51:09 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c13c1ab66c392353042573099bbd925177bfddaf89f99604b48a903ab8f9472`  
		Last Modified: Sun, 29 Apr 2018 08:35:43 GMT  
		Size: 3.0 MB (3020278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34dc89a9f462a0f7cfdb948ecb72d59174dbb7669b3b61db4003103029ad1993`  
		Last Modified: Fri, 01 Jun 2018 18:27:08 GMT  
		Size: 127.2 MB (127179695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d778201757a4d09bb74cf69d6d347fc968a2e0e4fa585e4cb5dec89f5f92cca8`  
		Last Modified: Fri, 01 Jun 2018 18:53:07 GMT  
		Size: 421.9 KB (421937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da46ff93376a43b4dcf9522036587056ebb96caabe3fbf2ee65d0405e5a42117`  
		Last Modified: Fri, 01 Jun 2018 18:53:11 GMT  
		Size: 95.9 MB (95913289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4fa68c9786658817064aa51022fa9b8154aae47786f769a8e6938ef677ab3f7`  
		Last Modified: Fri, 01 Jun 2018 18:53:02 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:664adb311932bd1666e73b33458087e84703c64be06ef80a7f83af74ba5c3a0c`  
		Last Modified: Fri, 01 Jun 2018 18:53:02 GMT  
		Size: 874.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6255043185cfd6e0baaf2d85fd14776e6f978f93c59255e70021ada530d501`  
		Last Modified: Fri, 01 Jun 2018 18:53:08 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d40012b9fa36e1beab6997a196e86952cfaa10fba4a35ad0d934deda91d34643`  
		Last Modified: Fri, 01 Jun 2018 18:53:52 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a7e47c3dde00f6793c46b4fd686d3cae75572a1b6461ffa2c034d2b9eb0ddd`  
		Last Modified: Fri, 01 Jun 2018 18:53:54 GMT  
		Size: 10.9 MB (10930294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7` - linux; 386

```console
$ docker pull open-liberty@sha256:1cac98323a0394da058ff4710d33df123ca12275409c85eddff2264610536fc1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.2 MB (269232176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:438c89c76d50a135ff4d3d4771b543d62665635539efc7d6935cce21cd0c20d3`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 11:18:27 GMT
ADD file:cb3b7975c121b206774b4d6cfbb5652a43b594624dab6ad15b712a2cbbdf612e in / 
# Sat, 28 Apr 2018 11:18:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:18:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:18:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:18:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:18:30 GMT
CMD ["/bin/bash"]
# Sat, 02 Jun 2018 10:38:38 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 02 Jun 2018 10:39:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 10:39:11 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Sat, 02 Jun 2018 10:43:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 02 Jun 2018 10:43:32 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 02 Jun 2018 11:23:35 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 02 Jun 2018 11:23:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 11:23:44 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 02 Jun 2018 11:23:59 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 02 Jun 2018 11:23:59 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 02 Jun 2018 11:24:00 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 02 Jun 2018 11:24:01 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 02 Jun 2018 11:24:01 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 02 Jun 2018 11:24:01 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 02 Jun 2018 11:24:02 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 02 Jun 2018 11:24:02 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 02 Jun 2018 11:24:07 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Sat, 02 Jun 2018 11:24:22 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:3a1e79864dec4c6e37d3df52e348cf3121a5297fd763099a70ecd188d1cf63ee`  
		Last Modified: Mon, 23 Apr 2018 14:55:46 GMT  
		Size: 43.3 MB (43335726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8398adf991e61b1dbb7c296dff6ee41be912937c6be5230cef40b61b3be6f2`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3020085dcaa4b1ace3a5f4045ab2d8ce6d1a99613542a2680281e2aa4868199`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20dd50be32433bdaa587603bd1431be277c4aa000d50693929ea48c1a1ff9a8`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1027efc898bf4c1ef51f97f0c11f11ba4056c4bd387b60fb429ca018c29922`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9faa12872a22a86ea5cba3c3d4d750f7e90fb942565b5b7985aaaa4e3a7ad10`  
		Last Modified: Sat, 02 Jun 2018 10:52:51 GMT  
		Size: 2.9 MB (2875875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea1bd6f834edd9fd8153d5288e7033ea0a3681180becd1b08d142f1b7c4ba8b`  
		Last Modified: Sat, 02 Jun 2018 10:53:15 GMT  
		Size: 115.5 MB (115505331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d79a03f5eb4cda6437d923b087f659d080ea7c15bf469981d4e3d5e84725f5a`  
		Last Modified: Sat, 02 Jun 2018 11:25:26 GMT  
		Size: 420.8 KB (420757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd731469b69dc9534c8c5709119c91d3f146139fdb74a15c36bb2c0ae0b91219`  
		Last Modified: Sat, 02 Jun 2018 11:25:46 GMT  
		Size: 95.9 MB (95913289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88f30aaaee96f89ac9cbd70b5157bd6235ee37bea8cf6e8b99caadf81d3f5a0`  
		Last Modified: Sat, 02 Jun 2018 11:25:26 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba7005e2172802cbab5fcc69527d639cfd4a5177e80519f8abbf26dfbc8531`  
		Last Modified: Sat, 02 Jun 2018 11:25:26 GMT  
		Size: 861.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f4b4a08cb9562557d823ba3062e71c009ae8bd45dea70ed945e2779490fe56`  
		Last Modified: Sat, 02 Jun 2018 11:25:26 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db06d5462050e422ada6e90004b851ab5ae3584970a52e713007edbd9e6c520`  
		Last Modified: Sat, 02 Jun 2018 11:26:04 GMT  
		Size: 530.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9617ca46225ec39f383aee151279f0bd7bdcf48201234124cdb5ed1b17780096`  
		Last Modified: Sat, 02 Jun 2018 11:26:10 GMT  
		Size: 11.2 MB (11176524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:b2d1328b466ae8a5a0c095cdc6c90d2975d53b65d9f9d9d145212f5a37830003
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.2 MB (296227202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d00076997ff019ab4bb54d7458afb44bde2a06875fc9d297081010e4e7afbc54`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 08:35:46 GMT
ADD file:f04df47ce064505cf6035a445440244ebf513ffda3a1d933137ac1b3f9dcb10a in / 
# Sat, 28 Apr 2018 08:35:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 08:35:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 08:35:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 08:35:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 08:35:53 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 13:24:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 13:24:31 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 08:16:46 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Sat, 02 Jun 2018 08:18:43 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 02 Jun 2018 08:18:43 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 02 Jun 2018 08:50:02 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 02 Jun 2018 08:50:33 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 08:50:33 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 02 Jun 2018 08:50:45 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 02 Jun 2018 08:50:45 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 02 Jun 2018 08:50:47 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 02 Jun 2018 08:51:02 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 02 Jun 2018 08:51:04 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 02 Jun 2018 08:51:05 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 02 Jun 2018 08:51:08 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 02 Jun 2018 08:51:11 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 02 Jun 2018 08:51:38 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Sat, 02 Jun 2018 08:52:05 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:6f5c5c810ea52a4d0eeed419954773e58454a391359660fbba515e1c200b2a53`  
		Last Modified: Sat, 28 Apr 2018 08:38:20 GMT  
		Size: 45.4 MB (45430904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0edf6521d4cc2b1d8a566d3712701b63c23cd071e5b0a6482f88aeaf1faab07`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479e23b9e48d0ddeb8b1d9b907d4786c018218b02e8ef8127a81d762c903ffc9`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 647.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebe5b7d4eb56fba71a14936f09f1c0e9a292fd12187abd76a8635e91d563510`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75acd081ba1e9819d284f8c0e4616261fcf1dd2c40070256f2b98edefe60bc0f`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142a2f61f934e958e4d3b3a6704704c9bf75df9db3881a88c5933019f4d1cd40`  
		Last Modified: Sat, 28 Apr 2018 13:31:26 GMT  
		Size: 2.9 MB (2880013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b0a9b39b61813ab030ad26e486e56536e17f3c06353affdcf7b7d06a87fdda`  
		Last Modified: Sat, 02 Jun 2018 08:23:47 GMT  
		Size: 140.6 MB (140647083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd75ed53d3efba6156f1aa70c4d9b0f3e55b0cb44b6a30fd4f8c21565643abb0`  
		Last Modified: Sat, 02 Jun 2018 08:53:48 GMT  
		Size: 453.1 KB (453075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa27fe0d0ca4558f1f8074cf2b060b6d12f6de9aaf957cb2bfd63fd8dbd4e50`  
		Last Modified: Sat, 02 Jun 2018 08:53:59 GMT  
		Size: 95.9 MB (95913189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41f90e894f20e33e644c4975981b62029bb1084c8fa230e574e244718f07c1a`  
		Last Modified: Sat, 02 Jun 2018 08:53:47 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9458de1e74742c9231368600fdb1032458aeec8ef1a938393685a70c0e0a8301`  
		Last Modified: Sat, 02 Jun 2018 08:53:47 GMT  
		Size: 910.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc922430cf252d85f9f2de13ed6e524a670099db8df420f7ceeef3267f9b1d60`  
		Last Modified: Sat, 02 Jun 2018 08:53:47 GMT  
		Size: 552.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2919c1df29060dc0bd87930a64ca0b5859365d354c53a91c92f6a9b5bd84c27`  
		Last Modified: Sat, 02 Jun 2018 08:54:23 GMT  
		Size: 536.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1df53d1aa0e1ff9382704cc6d6d39acffd811e4ed21fc379b70eaab8c9ab233`  
		Last Modified: Sat, 02 Jun 2018 08:54:27 GMT  
		Size: 10.9 MB (10898080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7` - linux; s390x

```console
$ docker pull open-liberty@sha256:606cd2896e5c88f6055b3ceabd177b8c97f4f87655cfea966b04f086928573f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.8 MB (278766504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c3b1e77966d574e2005d1aac291999e826fc8dfcf088c14d959510eace455a1`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 11:55:01 GMT
ADD file:1774b01ad0a92d5a1d2c3d55727311071fa588988963911322975950764a84a3 in / 
# Sat, 28 Apr 2018 11:55:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:55:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:55:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:55:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:55:04 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 15:27:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 15:27:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 11:41:32 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Sat, 02 Jun 2018 11:42:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 02 Jun 2018 11:42:13 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 02 Jun 2018 12:03:55 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 02 Jun 2018 12:04:01 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 12:04:01 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 02 Jun 2018 12:04:05 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 02 Jun 2018 12:04:06 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 02 Jun 2018 12:04:06 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 02 Jun 2018 12:04:07 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 02 Jun 2018 12:04:08 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 02 Jun 2018 12:04:08 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 02 Jun 2018 12:04:08 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 02 Jun 2018 12:04:08 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 02 Jun 2018 12:04:18 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Sat, 02 Jun 2018 12:04:28 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:b1ebf925223c7651aa354d836106d6139b7610117af232eea6d23f9b81d972f8`  
		Last Modified: Mon, 23 Apr 2018 14:58:28 GMT  
		Size: 42.1 MB (42092399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8a07f0c9220007a0689fbea3da6b75314fc322bd887be53e5e734cb4f1800c`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1c359f5ed9198ccfe76eb8f1d8d8c2b32b74a12e582b90ea0433d4d8845261`  
		Last Modified: Sat, 28 Apr 2018 11:56:28 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35fcc66064c28ab927565627c616fe1986f1004944d173a1a1d0e95cdfde30a`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d624275f8e7d43c3c19936ca324e75493d45620982df73e9ef0578f9f1c75256`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2241255ff61810ada96838743b69433494aa9876c3b5723fb84d36406a76d7ed`  
		Last Modified: Sat, 28 Apr 2018 15:29:54 GMT  
		Size: 2.8 MB (2764794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773ddb3fb041154cebe7788dcd968a12330a3c0563663093341f274b61bd6d60`  
		Last Modified: Sat, 02 Jun 2018 11:44:26 GMT  
		Size: 126.6 MB (126612495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b74a8e73c54e3f372e72aaab67b0d92c40e2cd299ae2118dfb9d78e57873ac`  
		Last Modified: Sat, 02 Jun 2018 12:05:42 GMT  
		Size: 427.6 KB (427594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3fc5c1dbb97c7ec6878f6204211e580b12b7d1b0499d7c15096f0b32ad8540`  
		Last Modified: Sat, 02 Jun 2018 12:05:49 GMT  
		Size: 95.9 MB (95913289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3c6dc35e422747e4ced52c6d335918a4af09fd32029ca09614d6d368168cbc`  
		Last Modified: Sat, 02 Jun 2018 12:05:41 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c4248985341f29943469f53a1838c586c18d28b888a9ba6e923e980ef9354fc`  
		Last Modified: Sat, 02 Jun 2018 12:05:42 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3894ae44edd834e6f1a77eca8d98d3169212f47ccc5f015ba2a2e5b16fbf4a0`  
		Last Modified: Sat, 02 Jun 2018 12:05:42 GMT  
		Size: 523.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19732e0a9374d69296e61909d67081be15785053d130848f9d995c17d7a3768`  
		Last Modified: Sat, 02 Jun 2018 12:06:08 GMT  
		Size: 533.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:831b55e6c7ad288083b88045e5a23273995d2c2e26478aa5bab983eda17de783`  
		Last Modified: Sat, 02 Jun 2018 12:06:11 GMT  
		Size: 11.0 MB (10951232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:webProfile7-java8-ibm`

```console
$ docker pull open-liberty@sha256:c202461a5bb995c07898b02c13a24c5f577c247cc796058bba82dabca575ca15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:webProfile7-java8-ibm` - linux; amd64

```console
$ docker pull open-liberty@sha256:7a4d6fe18748aaf669acbdcc988d9e11aa7bb0f018980ae8e1dc5b6b816ea221
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.5 MB (280497068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ecc5145e95004064886a6a87ed54d76dbd4695a248797abe33b0471c2bb692e`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 27 Apr 2018 23:30:17 GMT
ADD file:592c2540de1c707636622213ee30ff5b6f8be0a48bb25c97edc7204ea4df1a81 in / 
# Fri, 27 Apr 2018 23:30:18 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Fri, 27 Apr 2018 23:30:19 GMT
RUN rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 23:30:19 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Fri, 27 Apr 2018 23:30:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Fri, 27 Apr 2018 23:30:21 GMT
CMD ["/bin/bash"]
# Sun, 29 Apr 2018 07:43:01 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sun, 29 Apr 2018 07:43:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 18:22:13 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Fri, 01 Jun 2018 18:22:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 01 Jun 2018 18:22:50 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 01 Jun 2018 18:50:14 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 01 Jun 2018 18:50:19 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Fri, 01 Jun 2018 18:50:19 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Fri, 01 Jun 2018 18:50:24 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Fri, 01 Jun 2018 18:50:24 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Fri, 01 Jun 2018 18:50:25 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Fri, 01 Jun 2018 18:50:29 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 01 Jun 2018 18:50:29 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Fri, 01 Jun 2018 18:50:29 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 01 Jun 2018 18:50:30 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 01 Jun 2018 18:50:30 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 01 Jun 2018 18:50:57 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Fri, 01 Jun 2018 18:51:09 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:297061f60c367c17cfd016c97a8cb24f5308db2c913def0f85d7a6848c0a17fa`  
		Last Modified: Fri, 20 Apr 2018 22:11:58 GMT  
		Size: 43.0 MB (43026850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9ccef17b516e916aa8abe7817876211000c27150b908bdffcdeeba938cd004c`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc33716854d9e2ef2de9769422f498f5320ffa41cb79336e7a88fbb6c3ef844`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 621.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe36b178d25214195af42254bc7d5d64a269f654ef8801bbeb0b6a70a618353`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:686596545a94a0f0bf822e442cfd28fbd8a769f28e5f4018d7c24576dc6c3aac`  
		Last Modified: Fri, 27 Apr 2018 23:35:41 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c13c1ab66c392353042573099bbd925177bfddaf89f99604b48a903ab8f9472`  
		Last Modified: Sun, 29 Apr 2018 08:35:43 GMT  
		Size: 3.0 MB (3020278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34dc89a9f462a0f7cfdb948ecb72d59174dbb7669b3b61db4003103029ad1993`  
		Last Modified: Fri, 01 Jun 2018 18:27:08 GMT  
		Size: 127.2 MB (127179695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d778201757a4d09bb74cf69d6d347fc968a2e0e4fa585e4cb5dec89f5f92cca8`  
		Last Modified: Fri, 01 Jun 2018 18:53:07 GMT  
		Size: 421.9 KB (421937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da46ff93376a43b4dcf9522036587056ebb96caabe3fbf2ee65d0405e5a42117`  
		Last Modified: Fri, 01 Jun 2018 18:53:11 GMT  
		Size: 95.9 MB (95913289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4fa68c9786658817064aa51022fa9b8154aae47786f769a8e6938ef677ab3f7`  
		Last Modified: Fri, 01 Jun 2018 18:53:02 GMT  
		Size: 298.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:664adb311932bd1666e73b33458087e84703c64be06ef80a7f83af74ba5c3a0c`  
		Last Modified: Fri, 01 Jun 2018 18:53:02 GMT  
		Size: 874.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a6255043185cfd6e0baaf2d85fd14776e6f978f93c59255e70021ada530d501`  
		Last Modified: Fri, 01 Jun 2018 18:53:08 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d40012b9fa36e1beab6997a196e86952cfaa10fba4a35ad0d934deda91d34643`  
		Last Modified: Fri, 01 Jun 2018 18:53:52 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65a7e47c3dde00f6793c46b4fd686d3cae75572a1b6461ffa2c034d2b9eb0ddd`  
		Last Modified: Fri, 01 Jun 2018 18:53:54 GMT  
		Size: 10.9 MB (10930294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7-java8-ibm` - linux; 386

```console
$ docker pull open-liberty@sha256:1cac98323a0394da058ff4710d33df123ca12275409c85eddff2264610536fc1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.2 MB (269232176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:438c89c76d50a135ff4d3d4771b543d62665635539efc7d6935cce21cd0c20d3`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 11:18:27 GMT
ADD file:cb3b7975c121b206774b4d6cfbb5652a43b594624dab6ad15b712a2cbbdf612e in / 
# Sat, 28 Apr 2018 11:18:28 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:18:28 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:18:29 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:18:30 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:18:30 GMT
CMD ["/bin/bash"]
# Sat, 02 Jun 2018 10:38:38 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 02 Jun 2018 10:39:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 10:39:11 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Sat, 02 Jun 2018 10:43:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 02 Jun 2018 10:43:32 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 02 Jun 2018 11:23:35 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 02 Jun 2018 11:23:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 11:23:44 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 02 Jun 2018 11:23:59 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 02 Jun 2018 11:23:59 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 02 Jun 2018 11:24:00 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 02 Jun 2018 11:24:01 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 02 Jun 2018 11:24:01 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 02 Jun 2018 11:24:01 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 02 Jun 2018 11:24:02 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 02 Jun 2018 11:24:02 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 02 Jun 2018 11:24:07 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Sat, 02 Jun 2018 11:24:22 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:3a1e79864dec4c6e37d3df52e348cf3121a5297fd763099a70ecd188d1cf63ee`  
		Last Modified: Mon, 23 Apr 2018 14:55:46 GMT  
		Size: 43.3 MB (43335726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f8398adf991e61b1dbb7c296dff6ee41be912937c6be5230cef40b61b3be6f2`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3020085dcaa4b1ace3a5f4045ab2d8ce6d1a99613542a2680281e2aa4868199`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 584.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b20dd50be32433bdaa587603bd1431be277c4aa000d50693929ea48c1a1ff9a8`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 854.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1027efc898bf4c1ef51f97f0c11f11ba4056c4bd387b60fb429ca018c29922`  
		Last Modified: Sat, 28 Apr 2018 11:20:06 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9faa12872a22a86ea5cba3c3d4d750f7e90fb942565b5b7985aaaa4e3a7ad10`  
		Last Modified: Sat, 02 Jun 2018 10:52:51 GMT  
		Size: 2.9 MB (2875875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ea1bd6f834edd9fd8153d5288e7033ea0a3681180becd1b08d142f1b7c4ba8b`  
		Last Modified: Sat, 02 Jun 2018 10:53:15 GMT  
		Size: 115.5 MB (115505331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d79a03f5eb4cda6437d923b087f659d080ea7c15bf469981d4e3d5e84725f5a`  
		Last Modified: Sat, 02 Jun 2018 11:25:26 GMT  
		Size: 420.8 KB (420757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd731469b69dc9534c8c5709119c91d3f146139fdb74a15c36bb2c0ae0b91219`  
		Last Modified: Sat, 02 Jun 2018 11:25:46 GMT  
		Size: 95.9 MB (95913289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c88f30aaaee96f89ac9cbd70b5157bd6235ee37bea8cf6e8b99caadf81d3f5a0`  
		Last Modified: Sat, 02 Jun 2018 11:25:26 GMT  
		Size: 296.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba7005e2172802cbab5fcc69527d639cfd4a5177e80519f8abbf26dfbc8531`  
		Last Modified: Sat, 02 Jun 2018 11:25:26 GMT  
		Size: 861.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56f4b4a08cb9562557d823ba3062e71c009ae8bd45dea70ed945e2779490fe56`  
		Last Modified: Sat, 02 Jun 2018 11:25:26 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db06d5462050e422ada6e90004b851ab5ae3584970a52e713007edbd9e6c520`  
		Last Modified: Sat, 02 Jun 2018 11:26:04 GMT  
		Size: 530.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9617ca46225ec39f383aee151279f0bd7bdcf48201234124cdb5ed1b17780096`  
		Last Modified: Sat, 02 Jun 2018 11:26:10 GMT  
		Size: 11.2 MB (11176524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7-java8-ibm` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:b2d1328b466ae8a5a0c095cdc6c90d2975d53b65d9f9d9d145212f5a37830003
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.2 MB (296227202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d00076997ff019ab4bb54d7458afb44bde2a06875fc9d297081010e4e7afbc54`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 08:35:46 GMT
ADD file:f04df47ce064505cf6035a445440244ebf513ffda3a1d933137ac1b3f9dcb10a in / 
# Sat, 28 Apr 2018 08:35:48 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 08:35:50 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 08:35:51 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 08:35:52 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 08:35:53 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 13:24:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 13:24:31 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 08:16:46 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Sat, 02 Jun 2018 08:18:43 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 02 Jun 2018 08:18:43 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 02 Jun 2018 08:50:02 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 02 Jun 2018 08:50:33 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 08:50:33 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 02 Jun 2018 08:50:45 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 02 Jun 2018 08:50:45 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 02 Jun 2018 08:50:47 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 02 Jun 2018 08:51:02 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 02 Jun 2018 08:51:04 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 02 Jun 2018 08:51:05 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 02 Jun 2018 08:51:08 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 02 Jun 2018 08:51:11 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 02 Jun 2018 08:51:38 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Sat, 02 Jun 2018 08:52:05 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:6f5c5c810ea52a4d0eeed419954773e58454a391359660fbba515e1c200b2a53`  
		Last Modified: Sat, 28 Apr 2018 08:38:20 GMT  
		Size: 45.4 MB (45430904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0edf6521d4cc2b1d8a566d3712701b63c23cd071e5b0a6482f88aeaf1faab07`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 850.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479e23b9e48d0ddeb8b1d9b907d4786c018218b02e8ef8127a81d762c903ffc9`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 647.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ebe5b7d4eb56fba71a14936f09f1c0e9a292fd12187abd76a8635e91d563510`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75acd081ba1e9819d284f8c0e4616261fcf1dd2c40070256f2b98edefe60bc0f`  
		Last Modified: Sat, 28 Apr 2018 08:38:09 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142a2f61f934e958e4d3b3a6704704c9bf75df9db3881a88c5933019f4d1cd40`  
		Last Modified: Sat, 28 Apr 2018 13:31:26 GMT  
		Size: 2.9 MB (2880013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b0a9b39b61813ab030ad26e486e56536e17f3c06353affdcf7b7d06a87fdda`  
		Last Modified: Sat, 02 Jun 2018 08:23:47 GMT  
		Size: 140.6 MB (140647083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd75ed53d3efba6156f1aa70c4d9b0f3e55b0cb44b6a30fd4f8c21565643abb0`  
		Last Modified: Sat, 02 Jun 2018 08:53:48 GMT  
		Size: 453.1 KB (453075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa27fe0d0ca4558f1f8074cf2b060b6d12f6de9aaf957cb2bfd63fd8dbd4e50`  
		Last Modified: Sat, 02 Jun 2018 08:53:59 GMT  
		Size: 95.9 MB (95913189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41f90e894f20e33e644c4975981b62029bb1084c8fa230e574e244718f07c1a`  
		Last Modified: Sat, 02 Jun 2018 08:53:47 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9458de1e74742c9231368600fdb1032458aeec8ef1a938393685a70c0e0a8301`  
		Last Modified: Sat, 02 Jun 2018 08:53:47 GMT  
		Size: 910.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc922430cf252d85f9f2de13ed6e524a670099db8df420f7ceeef3267f9b1d60`  
		Last Modified: Sat, 02 Jun 2018 08:53:47 GMT  
		Size: 552.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2919c1df29060dc0bd87930a64ca0b5859365d354c53a91c92f6a9b5bd84c27`  
		Last Modified: Sat, 02 Jun 2018 08:54:23 GMT  
		Size: 536.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1df53d1aa0e1ff9382704cc6d6d39acffd811e4ed21fc379b70eaab8c9ab233`  
		Last Modified: Sat, 02 Jun 2018 08:54:27 GMT  
		Size: 10.9 MB (10898080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile7-java8-ibm` - linux; s390x

```console
$ docker pull open-liberty@sha256:606cd2896e5c88f6055b3ceabd177b8c97f4f87655cfea966b04f086928573f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.8 MB (278766504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c3b1e77966d574e2005d1aac291999e826fc8dfcf088c14d959510eace455a1`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sat, 28 Apr 2018 11:55:01 GMT
ADD file:1774b01ad0a92d5a1d2c3d55727311071fa588988963911322975950764a84a3 in / 
# Sat, 28 Apr 2018 11:55:02 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Sat, 28 Apr 2018 11:55:03 GMT
RUN rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:55:03 GMT
RUN sed -i 's/^#\s*\(deb.*universe\)$/\1/g' /etc/apt/sources.list
# Sat, 28 Apr 2018 11:55:04 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Sat, 28 Apr 2018 11:55:04 GMT
CMD ["/bin/bash"]
# Sat, 28 Apr 2018 15:27:04 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Sat, 28 Apr 2018 15:27:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 11:41:32 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Sat, 02 Jun 2018 11:42:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='cc65f783f523ba5830c302815e60cac31df4c6a216ed684929071c5d6d2ed9f1';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='9fe8b0a9d7a5e8a955cae8988c97976171b0989af5ad2d6da30cf0f7b5fbec5f';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='38b8c78d232d4d2c696bc228fa7bd37e16f76e966cd4f2247cc4837d4ddab43e';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='95b59d6b790ace40d1091442c89e4a27a73f6a40a7b13857c9a37edbf0b2ff7a';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='4beab5e8159bac218716e4fd6ba74a44294e33e4ecf39829ef2f8c6d8b6d5c37';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Sat, 02 Jun 2018 11:42:13 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Sat, 02 Jun 2018 12:03:55 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Sat, 02 Jun 2018 12:04:01 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*
# Sat, 02 Jun 2018 12:04:01 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Sat, 02 Jun 2018 12:04:05 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Sat, 02 Jun 2018 12:04:06 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Sat, 02 Jun 2018 12:04:06 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs     && ln -s /liberty /opt/ol/wlp
# Sat, 02 Jun 2018 12:04:07 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Sat, 02 Jun 2018 12:04:08 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Sat, 02 Jun 2018 12:04:08 GMT
EXPOSE 9080/tcp 9443/tcp
# Sat, 02 Jun 2018 12:04:08 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Sat, 02 Jun 2018 12:04:08 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Sat, 02 Jun 2018 12:04:18 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Sat, 02 Jun 2018 12:04:28 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:b1ebf925223c7651aa354d836106d6139b7610117af232eea6d23f9b81d972f8`  
		Last Modified: Mon, 23 Apr 2018 14:58:28 GMT  
		Size: 42.1 MB (42092399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd8a07f0c9220007a0689fbea3da6b75314fc322bd887be53e5e734cb4f1800c`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1c359f5ed9198ccfe76eb8f1d8d8c2b32b74a12e582b90ea0433d4d8845261`  
		Last Modified: Sat, 28 Apr 2018 11:56:28 GMT  
		Size: 618.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35fcc66064c28ab927565627c616fe1986f1004944d173a1a1d0e95cdfde30a`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 852.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d624275f8e7d43c3c19936ca324e75493d45620982df73e9ef0578f9f1c75256`  
		Last Modified: Sat, 28 Apr 2018 11:56:27 GMT  
		Size: 169.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2241255ff61810ada96838743b69433494aa9876c3b5723fb84d36406a76d7ed`  
		Last Modified: Sat, 28 Apr 2018 15:29:54 GMT  
		Size: 2.8 MB (2764794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:773ddb3fb041154cebe7788dcd968a12330a3c0563663093341f274b61bd6d60`  
		Last Modified: Sat, 02 Jun 2018 11:44:26 GMT  
		Size: 126.6 MB (126612495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5b74a8e73c54e3f372e72aaab67b0d92c40e2cd299ae2118dfb9d78e57873ac`  
		Last Modified: Sat, 02 Jun 2018 12:05:42 GMT  
		Size: 427.6 KB (427594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d3fc5c1dbb97c7ec6878f6204211e580b12b7d1b0499d7c15096f0b32ad8540`  
		Last Modified: Sat, 02 Jun 2018 12:05:49 GMT  
		Size: 95.9 MB (95913289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3c6dc35e422747e4ced52c6d335918a4af09fd32029ca09614d6d368168cbc`  
		Last Modified: Sat, 02 Jun 2018 12:05:41 GMT  
		Size: 295.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c4248985341f29943469f53a1838c586c18d28b888a9ba6e923e980ef9354fc`  
		Last Modified: Sat, 02 Jun 2018 12:05:42 GMT  
		Size: 860.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3894ae44edd834e6f1a77eca8d98d3169212f47ccc5f015ba2a2e5b16fbf4a0`  
		Last Modified: Sat, 02 Jun 2018 12:05:42 GMT  
		Size: 523.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19732e0a9374d69296e61909d67081be15785053d130848f9d995c17d7a3768`  
		Last Modified: Sat, 02 Jun 2018 12:06:08 GMT  
		Size: 533.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:831b55e6c7ad288083b88045e5a23273995d2c2e26478aa5bab983eda17de783`  
		Last Modified: Sat, 02 Jun 2018 12:06:11 GMT  
		Size: 11.0 MB (10951232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `open-liberty:webProfile7-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:b6a0834b9a8ed60d44b2e3d4e840d108af5225b8016ab346474138419f1c7304
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:webProfile7-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:909a3b5ab80cd698f3abd6444ebb4782c6bb26208e3c6daa71d0cf0d6ef2f83e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.8 MB (174789429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb8c00e32eaf191b2d51f89010e56b1019de83c42f09397dc1772f322f2439c6`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 02:29:54 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 10 Jan 2018 02:30:08 GMT
RUN apk --update add --no-cache ca-certificates curl openssl binutils xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && curl -Ls https://www.archlinux.org/packages/core/x86_64/gcc-libs/download > /tmp/gcc-libs.tar.xz     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del curl binutils     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Fri, 01 Jun 2018 18:22:59 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Fri, 01 Jun 2018 18:24:48 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='15c2e6303aa5750a9e56e0ac1b3e6f246c3fd1c3c32d7613360ec85537e88ec3';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='debc39440f0a0dd8952f69a7b8e47ec433eeef88c78892cde473cfc36b64ed5e';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='fa040275e7fa1afeb47c4ef60a4cf81a6bdbe590459841f3f89cdfd5cc8c50db';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='31ff95bcfed915e3d5818933e18bb50ef124924dafc767c4e27ee4acdfb1aacd';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='953df3c2ab64588fcf517bcb391549e06fa402bcaa09e3554ae163ca6a080d7c';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 01 Jun 2018 18:24:48 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 01 Jun 2018 18:50:39 GMT
ENV LIBERTY_VERSION=18.0.0.1 LIBERTY_SHA=a059c422c6ddd53276804b8e6f2ee0b00c97e1a7
# Fri, 01 Jun 2018 18:50:44 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && mkdir /opt/ol    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Fri, 01 Jun 2018 18:50:44 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Fri, 01 Jun 2018 18:50:44 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs
# Fri, 01 Jun 2018 18:50:48 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 01 Jun 2018 18:50:49 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Fri, 01 Jun 2018 18:50:49 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 01 Jun 2018 18:50:49 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 01 Jun 2018 18:50:49 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 01 Jun 2018 18:51:16 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Fri, 01 Jun 2018 18:51:27 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:271fbb147f08aa2a2cb149146ee4895d4c6a2568c9a847acd9f9e1c526994fba`  
		Last Modified: Wed, 10 Jan 2018 02:56:39 GMT  
		Size: 4.5 MB (4530053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c914b75c868499df4f7994b288bca37a45c22202aed76216a96ef9b89c8cece`  
		Last Modified: Fri, 01 Jun 2018 18:28:56 GMT  
		Size: 61.9 MB (61924921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61942c94bae43fb3ddeee187e0f744f9b5a6c300629ef0e578134275f2919da6`  
		Last Modified: Fri, 01 Jun 2018 18:53:39 GMT  
		Size: 95.9 MB (95913249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f2b7707940102cec14578aed4c729d210ad5801969b33b69e57a7cd6dff6df`  
		Last Modified: Fri, 01 Jun 2018 18:53:32 GMT  
		Size: 271.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630bace40fdfb7c6efbbaaa72c703f88884a12fc0417ed65162ced4f60e776c3`  
		Last Modified: Fri, 01 Jun 2018 18:53:33 GMT  
		Size: 762.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f4dc1c5c81166676b4b03d2e4abdfb3b978085da7065731aec4fbf252f985dd`  
		Last Modified: Fri, 01 Jun 2018 18:53:33 GMT  
		Size: 525.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:887b754222be89cac1f6842a472a89a360ea2ed16ea870ff73cff0fe85996abe`  
		Last Modified: Fri, 01 Jun 2018 18:54:16 GMT  
		Size: 530.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672fb56fd65da3e1b6e27df7aff06c3e985eb07ed320f4a4f9bbdd3e25b4706c`  
		Last Modified: Fri, 01 Jun 2018 18:54:17 GMT  
		Size: 10.4 MB (10427371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
