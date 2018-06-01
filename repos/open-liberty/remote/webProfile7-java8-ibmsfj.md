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
