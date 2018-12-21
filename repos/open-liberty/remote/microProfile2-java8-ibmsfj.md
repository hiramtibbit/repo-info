## `open-liberty:microProfile2-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:60d6c2d251aebe6ca3a411a3529da39f7d1f93e6340e72162daf8f3567ab5432
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:microProfile2-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:9b342e48f7b7aac01a37a366c781f4170a8601002fe30847d25168a72b7defcb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.9 MB (206899535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71214f0d0a1c8a814a5338694811889503eaf6d95d3f13ac423a3b93de84b23e`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:13:31 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 21 Dec 2018 01:13:42 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Fri, 21 Dec 2018 01:13:42 GMT
ENV JAVA_VERSION=1.8.0_sr5fp26
# Fri, 21 Dec 2018 01:15:05 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='55e2816624c4c26b53d0e78726919cf1adb8be94f9613737fe77968ddc0103fb';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='7a9b56c3f41d9a0df7bac41ac1ed40956fde111a9b16498b8ae25b9a6ab19351';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9e7eec1e232cc6b2c61ff39e705c46e84f027ecb8442c34567401a400d7bf7ee';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='7a8aebabc87e7cdbc3ca8cb75646733cd278ba651fc4cc3cf5f9143aa36ed27c';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='6d7e2df30f9e41a741a2eaa8598023f29d10760db039bd617da0fce7a2dab355';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Fri, 21 Dec 2018 01:15:05 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 21 Dec 2018 06:01:44 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 21 Dec 2018 06:01:44 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Fri, 21 Dec 2018 06:01:44 GMT
ENV LIBERTY_VERSION=18.0.0.4 LIBERTY_SHA=0773f5e9e933b272e426ef86b90e13ee1ed5a1ee
# Fri, 21 Dec 2018 06:01:52 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Fri, 21 Dec 2018 06:01:52 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 21 Dec 2018 06:01:53 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs
# Fri, 21 Dec 2018 06:01:55 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 21 Dec 2018 06:01:55 GMT
EXPOSE 9080 9443
# Fri, 21 Dec 2018 06:01:55 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 21 Dec 2018 06:01:55 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 21 Dec 2018 06:03:29 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile2/server.xml /config/server.xml
# Fri, 21 Dec 2018 06:03:45 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b140346aa6aebc6dec68c5d7ae89afe92e43f91a8c11c029464cffb69954415e`  
		Last Modified: Fri, 21 Dec 2018 01:16:21 GMT  
		Size: 4.5 MB (4522487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3987c4c04e76d0df6e2a20d91f6d9d9fc713b38080fbb45ed9b3f08155e4aae3`  
		Last Modified: Fri, 21 Dec 2018 01:16:47 GMT  
		Size: 62.3 MB (62330552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e44a41fb4029068093f9ac9f5be170a9e1abd553b5e98639b5c2fbb5a117f34`  
		Last Modified: Fri, 21 Dec 2018 06:04:44 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab24050b1e1053fabd4dd9331007ab0e4b4c404fea2765c04b0cccf89eec5e7b`  
		Last Modified: Fri, 21 Dec 2018 06:04:51 GMT  
		Size: 126.5 MB (126527025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:356eba08a9bb1265c6c5c4848faef670381e411c0993a6e45c1c59921c23fecb`  
		Last Modified: Fri, 21 Dec 2018 06:04:43 GMT  
		Size: 272.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d94a168b57c2f5a9eeb4f44956ab3698463ad42b8938cbc7fd741c7b9da8ea9`  
		Last Modified: Fri, 21 Dec 2018 06:04:43 GMT  
		Size: 811.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:716e90f91d1e145854d638f551b6f2b9ab89be7fbfab899ae0f6006f8cbecba8`  
		Last Modified: Fri, 21 Dec 2018 06:05:23 GMT  
		Size: 537.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17db673ad182195605053806f79ca44bac7a362cb833a0d6e892ffa61da0528f`  
		Last Modified: Fri, 21 Dec 2018 06:05:26 GMT  
		Size: 11.4 MB (11410292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
