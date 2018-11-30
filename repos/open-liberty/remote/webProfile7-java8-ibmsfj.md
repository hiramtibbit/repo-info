## `open-liberty:webProfile7-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:14e4d00e023a104aa43ff44cdda4820c00ea0b34430fa179d2380d426d977d92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:webProfile7-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:666d38d46c4471fce974c63b23cc96f8143528f20930793c74c2ec7fd973a4b2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.8 MB (204764953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13490f4f2af4d8c08609a1284e4c849150432c42cbaa55c74ccbf7e8a7025486`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:30:09 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 11 Sep 2018 23:30:17 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Fri, 30 Nov 2018 01:20:54 GMT
ENV JAVA_VERSION=1.8.0_sr5fp26
# Fri, 30 Nov 2018 01:23:36 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='55e2816624c4c26b53d0e78726919cf1adb8be94f9613737fe77968ddc0103fb';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='7a9b56c3f41d9a0df7bac41ac1ed40956fde111a9b16498b8ae25b9a6ab19351';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9e7eec1e232cc6b2c61ff39e705c46e84f027ecb8442c34567401a400d7bf7ee';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='7a8aebabc87e7cdbc3ca8cb75646733cd278ba651fc4cc3cf5f9143aa36ed27c';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='6d7e2df30f9e41a741a2eaa8598023f29d10760db039bd617da0fce7a2dab355';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Fri, 30 Nov 2018 01:23:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 30 Nov 2018 01:54:04 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 30 Nov 2018 01:54:04 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Fri, 30 Nov 2018 01:54:04 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=3d79b261a6c4723617ad20c5e2ec746bb70121b9
# Fri, 30 Nov 2018 01:54:12 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Fri, 30 Nov 2018 01:54:13 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 30 Nov 2018 01:54:13 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs
# Fri, 30 Nov 2018 01:54:15 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 30 Nov 2018 01:54:15 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 30 Nov 2018 01:54:15 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 30 Nov 2018 01:54:15 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 30 Nov 2018 01:55:20 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Fri, 30 Nov 2018 01:55:34 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49037229889fce699938aaa3695d08d2bd2676feffbe8af11a765a855de9155f`  
		Last Modified: Tue, 11 Sep 2018 23:32:54 GMT  
		Size: 4.5 MB (4519019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0dcdaeb91dfd0d2704b112e28f42a91b212c1499c1d73cf655842ba2e635cc6`  
		Last Modified: Fri, 30 Nov 2018 01:30:10 GMT  
		Size: 62.3 MB (62330540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e21e35259fd84cae0b7eb165ce1f51ef9a3e83f1584770c0d192fa87fea10e`  
		Last Modified: Fri, 30 Nov 2018 02:05:58 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3015f380c0df9b3254f73148a527bb0394bebbc134771b4166819cf2b369578b`  
		Last Modified: Fri, 30 Nov 2018 02:06:11 GMT  
		Size: 125.0 MB (124992619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c48ec36031974cc7d553a2b426983fb5d0a90acfe3c7442cf51bbe764e50b4a`  
		Last Modified: Fri, 30 Nov 2018 02:05:59 GMT  
		Size: 273.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61906eebf3c38d59326e45bb105220b209c01cb4e391d6b49c5d50e30e2efd0`  
		Last Modified: Fri, 30 Nov 2018 02:05:59 GMT  
		Size: 804.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28f0e60e3bd9a2953820aeddc4c2d5fac63ca0b582cccc266e2a794b9121b794`  
		Last Modified: Fri, 30 Nov 2018 02:07:09 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:307aa02f1d4ecccbc8e56cd2f8866d3abd81256d7e02d4b4d0bedcc4653442e7`  
		Last Modified: Fri, 30 Nov 2018 02:07:12 GMT  
		Size: 10.8 MB (10813588 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
