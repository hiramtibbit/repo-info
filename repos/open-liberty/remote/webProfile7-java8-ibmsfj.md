## `open-liberty:webProfile7-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:c70ab81119bc7919eac752f6a764b35a1aedaf11d6ea2c6ef6f34ad3f8b044c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:webProfile7-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:a4a0f77053bb568bda08689f43cdd43de8ee027d30e424534a7d2a6d70a65592
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.4 MB (207380473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0f1a262934f18aa32ba1c39b3cd93f6180e98ee3510eee3778cebb4d44f1716`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:40 GMT
ADD file:9c13ab388a8e4c772b97ec8f6d2c576bece32cecdcfb6fee5175e1d3f613dd12 in / 
# Wed, 30 Jan 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:10:44 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 31 Jan 2019 02:10:57 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Thu, 31 Jan 2019 02:10:57 GMT
ENV JAVA_VERSION=1.8.0_sr5fp27
# Thu, 31 Jan 2019 02:12:25 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d9cd0948d8b25bacf6e6600ac562dd0082fd71edc67d03adf81ac40e6cf5661f';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='6defa73b9223c22a33a1f419b7aab0b98ac99d6f77065ad69d9738eef3f356ae';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e0b3f373521bc7a2b10aef37721345043fa9d10e0ed6bb7f9f1381bae660f16c';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='2cea861e255cf523a24deb02fc150836f7fbbd31a8f95e4e8d796c1abccfa44b';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='038bf72abd9648ac2abd0d59fbd67274392c361368854b3d6e87e7751fb9f38c';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Thu, 31 Jan 2019 02:12:25 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 01 Mar 2019 23:20:16 GMT
ARG LIBERTY_VERSION=19.0.0.2
# Fri, 01 Mar 2019 23:20:16 GMT
ARG LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11
# Fri, 01 Mar 2019 23:20:16 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip
# Fri, 01 Mar 2019 23:20:16 GMT
LABEL maintainer=Alasdair Nottingham vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Fri, 01 Mar 2019 23:20:16 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Fri, 01 Mar 2019 23:20:24 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN apk add --no-cache wget    && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Fri, 01 Mar 2019 23:20:24 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 01 Mar 2019 23:20:25 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs
# Fri, 01 Mar 2019 23:20:27 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 01 Mar 2019 23:20:27 GMT
EXPOSE 9080 9443
# Fri, 01 Mar 2019 23:20:27 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 01 Mar 2019 23:20:28 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 01 Mar 2019 23:24:46 GMT
RUN cp /opt/ol/wlp/templates/servers/webProfile7/server.xml /config/server.xml
# Fri, 01 Mar 2019 23:25:01 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
```

-	Layers:
	-	`sha256:48ecbb6b270eb481cb6df2a5b0332de294ec729e1968e92d725f1329637ce01b`  
		Last Modified: Wed, 30 Jan 2019 22:21:00 GMT  
		Size: 2.1 MB (2107173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d8e0138d079d90699e85840858f45b63ada79f0f89cfd04703f95a6a4e91838`  
		Last Modified: Thu, 31 Jan 2019 02:13:57 GMT  
		Size: 4.5 MB (4522474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71821ea303fb730848591baf95bf1f5427b1ece11c9b6aaacd4c2d499a5c6110`  
		Last Modified: Thu, 31 Jan 2019 02:14:25 GMT  
		Size: 62.3 MB (62333415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab96af8e63a03f620a23b8bcc1f2c7f2170083b148bb8b1e8717229ba0babccf`  
		Last Modified: Fri, 01 Mar 2019 23:26:50 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d255430e7c61553799669d2c61cdc389f88aff1b984b93bea1c40d151ccd6435`  
		Last Modified: Fri, 01 Mar 2019 23:26:59 GMT  
		Size: 127.5 MB (127466753 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36fa73255993eebb71025741410a7d3b257e5b343f709ea335dfe3424e8ace9c`  
		Last Modified: Fri, 01 Mar 2019 23:26:50 GMT  
		Size: 272.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f9966bd193f6f6660b4819124fb8988cdc44ab6361d4aefa0a56600d24745d0`  
		Last Modified: Fri, 01 Mar 2019 23:26:50 GMT  
		Size: 821.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b15577ddee25f96eb0a630abd904d4d555eab2b64ab5c9f90a6a87a47968cbe`  
		Last Modified: Fri, 01 Mar 2019 23:28:23 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ccb63f718dca59f9176daccd45f5d43129b0a51198e23480fab1ccccd0f74e1`  
		Last Modified: Fri, 01 Mar 2019 23:28:27 GMT  
		Size: 10.9 MB (10948625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
