## `open-liberty:webProfile8-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:ef3a35eaa0b55f104303998ca199cd9e0ff3e23e8a330c31d34cbe917718d6d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:webProfile8-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:a158be8df6a7e3b4cee807357544f790ecb708e93a8da9a6e51e5affa954a659
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.1 MB (152140778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:497fb72abffa8afd74c234f5ad475f102260041616ab7d8b958fb17152980c7c`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:11:18 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 02 Apr 2019 22:22:30 GMT
COPY file:3ca1cc706ceed4c671485bfc9a5f46a78571aaf829b0ab9fbb88c9d48e27ccd3 in /etc/apk/keys 
# Tue, 02 Apr 2019 22:22:38 GMT
RUN apk add --no-cache --virtual .build-deps curl binutils     && GLIBC_VER="2.29-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && GCC_LIBS_URL="https://archive.archlinux.org/packages/g/gcc-libs/gcc-libs-8.2.1%2B20180831-1-x86_64.pkg.tar.xz"     && GCC_LIBS_SHA256=e4b39fb1f5957c5aab5c2ce0c46e03d30426f3b94b9992b009d417ff2d56af4d     && curl -fLs https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -o /tmp/sgerrand.rsa.pub     && cmp -s /etc/apk/keys/sgerrand.rsa.pub /tmp/sgerrand.rsa.pub     && curl -fLs ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/${GLIBC_VER}.apk     && apk add /tmp/${GLIBC_VER}.apk     && curl -fLs ${GCC_LIBS_URL} -o /tmp/gcc-libs.tar.xz     && echo "${GCC_LIBS_SHA256}  /tmp/gcc-libs.tar.xz" | sha256sum -c -     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del --purge .build-deps     && apk add --no-cache ca-certificates openssl     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/* /tmp/*.pub
# Fri, 24 May 2019 22:22:28 GMT
ENV JAVA_VERSION=1.8.0_sr5fp36
# Fri, 24 May 2019 22:24:42 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='c8ee90fefae124bd5aadc27c1e9144b7f8d9a381b449f6c87ec6dab6f4b2cfe1';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='025da98d834f6becfa936c48a824a11c712f8434180fae6acfea294330e3db26';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e987bbdb92aad59c044f4a64fc5da6a3a357b26b309a9b7210d582beca8300a2';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='26abacbb90dc2c7456e3e7987c3192e1fc5118fda32b08bfe7c770680dc4ba34';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='fe60dd6234a24711da00e1fec5532b9d3f67e66016bb493bed1847a5e08098f4';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Fri, 24 May 2019 22:24:42 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 29 May 2019 16:41:44 GMT
ARG LIBERTY_VERSION=19.0.0.5
# Wed, 29 May 2019 16:42:44 GMT
ARG LIBERTY_SHA=d0b7dfe4f5f2f4c7b6280081c123aab3fc90fdcc
# Wed, 29 May 2019 16:42:44 GMT
ARG LIBERTY_BUILD_LABEL=cl190520190522-2227
# Wed, 29 May 2019 16:42:45 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.5/openliberty-webProfile8-19.0.0.5.zip
# Wed, 29 May 2019 16:42:45 GMT
LABEL org.opencontainers.image.authors=Arthur De Magalhaes, Andy Naumann org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl190520190522-2227
# Wed, 29 May 2019 16:42:45 GMT
COPY dir:b2a753f0ed70153f60c4b81e5bc911d7d013dc3bdaf13d4d974c3378ef07d8d4 in /opt/ol/helpers 
# Wed, 29 May 2019 16:42:55 GMT
# ARGS: LIBERTY_BUILD_LABEL=cl190520190522-2227 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.5/openliberty-webProfile8-19.0.0.5.zip LIBERTY_SHA=d0b7dfe4f5f2f4c7b6280081c123aab3fc90fdcc LIBERTY_VERSION=19.0.0.5
RUN apk add --no-cache wget openssl     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && adduser -u 1001 -S -G root -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp     && apk del --no-cache wget unzip
# Wed, 29 May 2019 16:42:55 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 29 May 2019 16:42:59 GMT
# ARGS: LIBERTY_BUILD_LABEL=cl190520190522-2227 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.5/openliberty-webProfile8-19.0.0.5.zip LIBERTY_SHA=d0b7dfe4f5f2f4c7b6280081c123aab3fc90fdcc LIBERTY_VERSION=19.0.0.5
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 29 May 2019 16:42:59 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ -XX:+UseContainerSupport
# Wed, 29 May 2019 16:43:00 GMT
# ARGS: LIBERTY_BUILD_LABEL=cl190520190522-2227 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.5/openliberty-webProfile8-19.0.0.5.zip LIBERTY_SHA=d0b7dfe4f5f2f4c7b6280081c123aab3fc90fdcc LIBERTY_VERSION=19.0.0.5
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 29 May 2019 16:43:01 GMT
USER 1001
# Wed, 29 May 2019 16:43:01 GMT
EXPOSE 9080 9443
# Wed, 29 May 2019 16:43:01 GMT
ENV KEYSTORE_REQUIRED=true
# Wed, 29 May 2019 16:43:02 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Wed, 29 May 2019 16:43:02 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65b9bbb7e9e210015f902865694fe417083e3abb90a264c4ad2fb3f5f1f7ef77`  
		Last Modified: Tue, 02 Apr 2019 22:27:49 GMT  
		Size: 544.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05389964ba24aa0dec164a9a8a93720c6ec4031fd4df7a562a34bb7ed5d011f9`  
		Last Modified: Tue, 02 Apr 2019 22:27:50 GMT  
		Size: 4.5 MB (4492117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41c3a1f1b43357983440a3ee91dbea489c7b01cd113b8142128bf637262fb5f4`  
		Last Modified: Fri, 24 May 2019 22:28:25 GMT  
		Size: 63.4 MB (63371218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b27b51724f1f807ff57959df62c1fb77ba3373f47d82c5fb00b2445d269ebe12`  
		Last Modified: Wed, 29 May 2019 16:46:40 GMT  
		Size: 2.3 KB (2308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5203cdd67f3c25bf821064cdede9b77ab145ad6e783b8bd69199c5492e38a45d`  
		Last Modified: Wed, 29 May 2019 16:46:53 GMT  
		Size: 82.2 MB (82163570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dae06f65669bbe61fe380858d5544cc4088c9e56698695cf413d4379cd8baf3`  
		Last Modified: Wed, 29 May 2019 16:46:40 GMT  
		Size: 861.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7a52985343fb2e69c6e464ebb0b6386f7de66588ff208ac613070427ad93f07`  
		Last Modified: Wed, 29 May 2019 16:46:40 GMT  
		Size: 3.1 KB (3062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
