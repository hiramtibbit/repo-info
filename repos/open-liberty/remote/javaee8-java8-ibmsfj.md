## `open-liberty:javaee8-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:04b1de638a11a9507bbcf4a8521799b7b217cce11466e791dfc19ebb7f0e860d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:javaee8-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:bb5064ec926ad99f2a0f0912a9ad89a2a786a2e3488c90df4fbb512966b17133
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.2 MB (194242715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acafc97de3be145a208c454f52f888de928569dc7f654bdfcbf1adf30b58b1ab`
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
# Tue, 11 Sep 2018 23:30:17 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Tue, 11 Sep 2018 23:31:39 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='ec534a701c272113670ce12f15b4f7fc9e75dc5d76ae0d4dd977a6dac94521f7';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='c006e6bf2586bfbcdda00f8fa6bf0205562712809014c60fb1bf49f316d9315d';          YML_FILE='sfj/linux/i386/index.yml';          ;;        s390)          ESUM='00430277196b85aaf813032392cab0de9d0ab24b31dbccb967025d9b1438d276';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='eb56a400cb9902d296d996cfe6826a0d0d0de47def8c330d19212e16b350d292';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Tue, 11 Sep 2018 23:31:39 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 12 Sep 2018 03:47:01 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Thu, 20 Sep 2018 22:09:17 GMT
ENV LIBERTY_VERSION=18.0.0.3 LIBERTY_SHA=b86ffc50eaf3965713cc9a1a3246bb9c05d59858
# Thu, 20 Sep 2018 22:09:27 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/$LIBERTY_VERSION/openliberty-javaee8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Thu, 20 Sep 2018 22:09:27 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true KEYSTORE_REQUIRED=true
# Thu, 20 Sep 2018 22:09:28 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs
# Thu, 20 Sep 2018 22:10:03 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ && rm -rf /output/messaging
# Thu, 20 Sep 2018 22:10:04 GMT
EXPOSE 9080/tcp 9443/tcp
# Thu, 20 Sep 2018 22:10:04 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Thu, 20 Sep 2018 22:10:04 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:067ee8f8298a3bb9b78e5fc0d95f3590aae7aadc2c6b764c76f3aec20e0fad48`  
		Last Modified: Tue, 11 Sep 2018 23:33:27 GMT  
		Size: 62.5 MB (62467632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c16c641d08dd37bffdac1f257bf3edcd97b5fb7df1ccb12971afbb132d08ceb`  
		Last Modified: Wed, 12 Sep 2018 03:51:05 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:009e6af7fb982ea4d6f3728af2450aa2a2bc6e0105050f33487ef129802914eb`  
		Last Modified: Thu, 20 Sep 2018 22:24:14 GMT  
		Size: 110.8 MB (110842116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:927c243a4d892536971ca606d4069d7edd3ccd9c97a5c3ff24085a7accf89b6e`  
		Last Modified: Thu, 20 Sep 2018 22:24:00 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18477b57a433f2fbd00c33745daf775aff02fd989bfdd1e4f972f4fd6ee6f5f6`  
		Last Modified: Thu, 20 Sep 2018 22:24:05 GMT  
		Size: 14.3 MB (14306093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
