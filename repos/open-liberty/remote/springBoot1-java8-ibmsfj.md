## `open-liberty:springBoot1-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:34b4d43d5d645ca7582090d871e110d623fdadf4dde6012807c220f881662f03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:springBoot1-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:d99304aa76900c5f4cb2c424f301efa147250a7e3d87b1e76fe0f3b1da153dcd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.7 MB (206746100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6ce494cee7c5a34419912391b202f7f6f603c3894e6f88b7fe7a0cbf2bdd482`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:11:18 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 07 Mar 2019 23:11:24 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Thu, 07 Mar 2019 23:11:24 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Thu, 07 Mar 2019 23:12:40 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a08db724f384db2a493b7161b59f3d527e5baf368ebf25664319d8acba0b2b46';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='81dd75476f35448bd98a079cfffc9a9e32e8cf2b8b70eecd6e18cb4ba9a13b42';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='62f0b994720f949833bd698284439f2e7beaad514873e11688ede95c9e65df78';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='0c38f0ffa50597f16a0c038438886a27665492729594b8a6a6b927d459030dab';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='95c1361a99372f4ed36c2356eeef7691adff176c7af16efab87ab0bc1ce9fe45';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Thu, 07 Mar 2019 23:12:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 08 Mar 2019 04:09:57 GMT
ARG LIBERTY_VERSION=19.0.0.2
# Fri, 08 Mar 2019 04:09:57 GMT
ARG LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11
# Fri, 08 Mar 2019 04:09:57 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip
# Tue, 26 Mar 2019 00:20:22 GMT
LABEL maintainer=Arthur De Magalhaes vendor=Open Liberty url=https://openliberty.io/ github=https://github.com/OpenLiberty/ci.docker
# Tue, 26 Mar 2019 00:20:23 GMT
COPY dir:5e4246f2df51b76ce6d1b9dac461ad7b8d438082d875628c7f69965f04a2b211 in /opt/ol/helpers 
# Tue, 26 Mar 2019 00:20:34 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN apk add --no-cache wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && adduser -u 1001 -S -G root -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Tue, 26 Mar 2019 00:20:34 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Tue, 26 Mar 2019 00:20:37 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 26 Mar 2019 00:20:38 GMT
# ARGS: LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.2/openliberty-runtime-19.0.0.2.zip LIBERTY_SHA=b54f360ae14ea72b4fc04c11693216c41891ab11 LIBERTY_VERSION=19.0.0.2
RUN mkdir /logs     && mkdir /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /lib.index.cache     && chmod -R g+rw /lib.index.cache     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Tue, 26 Mar 2019 00:20:39 GMT
ENV RANDFILE=/tmp/.rnd JVM_ARGS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/
# Tue, 26 Mar 2019 00:20:39 GMT
USER 1001
# Tue, 26 Mar 2019 00:20:40 GMT
EXPOSE 9080 9443
# Tue, 26 Mar 2019 00:20:40 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 26 Mar 2019 00:20:41 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 26 Mar 2019 00:20:41 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Tue, 26 Mar 2019 00:26:45 GMT
RUN mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache   && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache
# Tue, 26 Mar 2019 00:29:42 GMT
RUN cp /opt/ol/wlp/templates/servers/springBoot1/server.xml /config/server.xml
# Tue, 26 Mar 2019 00:29:56 GMT
RUN /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/ /output/messaging /logs/* $WLP_OUTPUT_DIR/.classCache && chmod -R g+rwx /opt/ol/wlp/output/*
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c234d2fa7dee20584e34ab5a6d69093e086de70a6b8469d27cc13b91fc800337`  
		Last Modified: Thu, 07 Mar 2019 23:13:47 GMT  
		Size: 4.5 MB (4522516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c39bef3a96a7093a661d679633f48cc911d378970c2e2fa61a0efe128e921d2`  
		Last Modified: Thu, 07 Mar 2019 23:14:09 GMT  
		Size: 62.9 MB (62905293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1fed931016c2e05a9cbcd43a71de6874a6ccb4e36e7829cb1f20188401bf266`  
		Last Modified: Tue, 26 Mar 2019 00:30:23 GMT  
		Size: 2.2 KB (2169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45666eda060ab531d38d9ae3043314ee6e566fb4991a949645940ad5d951ae92`  
		Last Modified: Tue, 26 Mar 2019 00:30:32 GMT  
		Size: 127.5 MB (127471240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e01565d0e499389cfaefdb9fd087be8dcd3f9bf0c0b3af18fbf3f0f95a2b637`  
		Last Modified: Tue, 26 Mar 2019 00:30:23 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83fdc32471148adb1e1ae634f0f43ed24eafc2c9c656f74eefffe4858258410`  
		Last Modified: Tue, 26 Mar 2019 00:30:24 GMT  
		Size: 2.9 KB (2943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4f7c0f80bf3e51fb38e5f8925df5a0315428248b1b63fa7f113302cd229bad3`  
		Last Modified: Tue, 26 Mar 2019 00:31:59 GMT  
		Size: 282.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3858c087a809e374b0d1dbd67d12438d53263d0daa72502643e1c4ae7f76b755`  
		Last Modified: Tue, 26 Mar 2019 00:32:43 GMT  
		Size: 542.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed19024e4baf8f62b50a381fa54fb0d885f822d4e8f3d3a50e59554cc95d944f`  
		Last Modified: Tue, 26 Mar 2019 00:32:45 GMT  
		Size: 9.7 MB (9733162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
