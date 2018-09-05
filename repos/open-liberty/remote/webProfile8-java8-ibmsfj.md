## `open-liberty:webProfile8-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:25c43e9060bb1448929882566c7fd8b4faea4c96236b62a5c0fbd5f05a213cf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:webProfile8-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:f4c21ce64f288b9db108a89a06b6924d22f018c0d97bdc816d5a9ac1d6c48bc0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.6 MB (156553705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f7667ce36d1c848a6885ee1ae17a646a12d19c0eb241d8cd173180d5384206a`
-	Entrypoint: `["\/opt\/ol\/docker\/docker-server"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Wed, 05 Sep 2018 21:20:47 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 05 Sep 2018 21:20:58 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Wed, 05 Sep 2018 21:20:58 GMT
ENV JAVA_VERSION=1.8.0_sr5fp21
# Wed, 05 Sep 2018 21:22:49 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='ec534a701c272113670ce12f15b4f7fc9e75dc5d76ae0d4dd977a6dac94521f7';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='c006e6bf2586bfbcdda00f8fa6bf0205562712809014c60fb1bf49f316d9315d';          YML_FILE='sfj/linux/i386/index.yml';          ;;        s390)          ESUM='00430277196b85aaf813032392cab0de9d0ab24b31dbccb967025d9b1438d276';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='eb56a400cb9902d296d996cfe6826a0d0d0de47def8c330d19212e16b350d292';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Wed, 05 Sep 2018 21:22:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 05 Sep 2018 21:55:28 GMT
COPY file:a6eac68a3be2db3229be20bb825e70a7a1e5f32d189da5168ed4f2fe9c9b96fc in /opt/ol/docker/ 
# Wed, 05 Sep 2018 21:55:28 GMT
ENV LIBERTY_VERSION=18.0.0.2 LIBERTY_SHA=70d21c807b6625678c2073b961b7b1cefe3d6a87
# Wed, 05 Sep 2018 21:55:33 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/$LIBERTY_VERSION/openliberty-webProfile8-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Wed, 05 Sep 2018 21:55:33 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 05 Sep 2018 21:55:34 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs
# Wed, 05 Sep 2018 21:55:48 GMT
RUN /opt/ol/wlp/bin/server create     && rm /config/server.env     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && /opt/ol/wlp/bin/server start && /opt/ol/wlp/bin/server stop && rm -rf /output/resources/security/
# Wed, 05 Sep 2018 21:55:48 GMT
EXPOSE 9080/tcp 9443/tcp
# Wed, 05 Sep 2018 21:55:48 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Wed, 05 Sep 2018 21:55:49 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:982fbd204feb0fce716e169f73c0b77ba6a601dc797f1fd6a49101762c4e3a7c`  
		Last Modified: Wed, 05 Sep 2018 21:25:24 GMT  
		Size: 4.5 MB (4519043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8aa745384186288277ec8c9b53fcb647e33cbbd13e0629e91990ab7be353a324`  
		Last Modified: Wed, 05 Sep 2018 21:26:14 GMT  
		Size: 63.7 MB (63690490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8bc6116e1a13fa777704b7353c660f96060f4ee82faeb8eb069a028cd1fd0ea`  
		Last Modified: Wed, 05 Sep 2018 22:01:17 GMT  
		Size: 406.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9be96c503b69772d6aae69497ace18bcd14c019fe4b240030b9b8c32f5fe7f59`  
		Last Modified: Wed, 05 Sep 2018 22:01:23 GMT  
		Size: 75.6 MB (75627000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37c42b867ca35dc45302a24f504bb2dfabc077e4f9756901d595f0303f2b3fae`  
		Last Modified: Wed, 05 Sep 2018 22:01:17 GMT  
		Size: 273.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f86cb13f50df1eab4cc8dd15a089f6b3d3c216ae7e43430450f9da0bf0c8389c`  
		Last Modified: Wed, 05 Sep 2018 22:01:19 GMT  
		Size: 10.6 MB (10612940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
