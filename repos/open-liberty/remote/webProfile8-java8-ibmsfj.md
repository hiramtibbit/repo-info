## `open-liberty:webProfile8-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:e151f4fed54973025306dac2e1a6aa38428bd92f2f5c67cac645259e0fc2b969
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:webProfile8-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:6e094f81f0d587033649d49ef733f10ecf4cc6dd031a7e0e6068bdfd7324f2c8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.0 MB (162040173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:133df23705ecbad86ab401440f97732280b63ac709a94b68d28fb108298e85a5`
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
# Fri, 01 Mar 2019 23:21:02 GMT
ARG LIBERTY_SHA=d4eab6bcd7666bceb0fd3d3f736b98868f3c9d09
# Fri, 01 Mar 2019 23:21:02 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.2/openliberty-webProfile8-19.0.0.2.zip
# Fri, 01 Mar 2019 23:21:03 GMT
COPY file:d40f5469dac9bc207bd04ab8a1419b4876bf27e17ee1020b08e88bc6d933312f in /opt/ol/docker/ 
# Fri, 01 Mar 2019 23:21:07 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.2/openliberty-webProfile8-19.0.0.2.zip LIBERTY_SHA=d4eab6bcd7666bceb0fd3d3f736b98868f3c9d09 LIBERTY_VERSION=19.0.0.2
RUN apk add --no-cache wget    && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Fri, 01 Mar 2019 23:21:08 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Fri, 01 Mar 2019 23:21:08 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.2/openliberty-webProfile8-19.0.0.2.zip LIBERTY_SHA=d4eab6bcd7666bceb0fd3d3f736b98868f3c9d09 LIBERTY_VERSION=19.0.0.2
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs
# Fri, 01 Mar 2019 23:21:25 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.2/openliberty-webProfile8-19.0.0.2.zip LIBERTY_SHA=d4eab6bcd7666bceb0fd3d3f736b98868f3c9d09 LIBERTY_VERSION=19.0.0.2
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /logs/*
# Fri, 01 Mar 2019 23:21:25 GMT
EXPOSE 9080 9443
# Fri, 01 Mar 2019 23:21:25 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 01 Mar 2019 23:21:26 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:9f4d05172a5cba70f40eb57afa5796498b52cae84be3354dbe2a90b8967f3561`  
		Last Modified: Fri, 01 Mar 2019 23:27:12 GMT  
		Size: 403.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f0cff30bef148529b653beed78ad4a5ce110d939720a57b7edfafdce4355f1b`  
		Last Modified: Fri, 01 Mar 2019 23:27:20 GMT  
		Size: 82.0 MB (81974531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c683e2c750b7db605257caba52ad9d090410b4aafe125cf3e118447c3afb0bd0`  
		Last Modified: Fri, 01 Mar 2019 23:27:12 GMT  
		Size: 274.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73e8718c9c7f71ca6cebbde55b976b48196d824aff8b1025d5a09d2f576ebf12`  
		Last Modified: Fri, 01 Mar 2019 23:27:16 GMT  
		Size: 11.1 MB (11101903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
