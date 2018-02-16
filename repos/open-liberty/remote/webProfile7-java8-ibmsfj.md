## `open-liberty:webProfile7-java8-ibmsfj`

```console
$ docker pull open-liberty@sha256:798fa5496b82bcac27c6e1f93d1de0675a5b521095666596357539d8301975bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `open-liberty:webProfile7-java8-ibmsfj` - linux; amd64

```console
$ docker pull open-liberty@sha256:138091632e133c227d75194a84f0f1313de3724d4b56458ee717282c708cc6d6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167768669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:beea53c5c503d9ddd2f25de13b59b5411968e755986ad3eee263609b3fce8e75`
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
# Wed, 10 Jan 2018 02:30:09 GMT
ENV JAVA_VERSION=1.8.0_sr5fp7
# Wed, 10 Jan 2018 02:31:39 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='077343a783bbfe211a2ad03847b4f7eeafea8f30c95440f5fae9faf44dd209f7';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='156936eee324b02b94020cd374dd86a12c720bebfbf8727e30ba8863242b17b0';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='32341fb38bc78398061e3893f95c2b4743863057ccc031274f456205fc251b55';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='d129210ca06948580f18216ce23b3921fdc2ac79bbf76d1155a417c5c7fed7c7';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='cfda833ee9f2cd52b8546bf57bf9ea914ce36a6b5b4ce2e453ac90dc307629d8';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Wed, 10 Jan 2018 02:31:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Jan 2018 23:41:36 GMT
ENV LIBERTY_VERSION=17.0.0.4 LIBERTY_SHA=8709c75cf905051e043b8c63e25640b464e58e39
# Tue, 16 Jan 2018 23:41:41 GMT
RUN wget https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/$LIBERTY_VERSION/openliberty-runtime-$LIBERTY_VERSION.zip -U UA-Open-Liberty-Docker -O /tmp/wlp.zip    && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1    && sha1sum -c /tmp/wlp.zip.sha1    && mkdir /opt/ol    && unzip -q /tmp/wlp.zip -d /opt/ol    && rm /tmp/wlp.zip    && rm /tmp/wlp.zip.sha1
# Tue, 16 Jan 2018 23:41:41 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output
# Fri, 16 Feb 2018 22:53:05 GMT
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && ln -s /logs $WLP_OUTPUT_DIR/defaultServer/logs
# Fri, 16 Feb 2018 22:53:10 GMT
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && mkdir /config/configDropins     && mkdir /config/configDropins/defaults     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Fri, 16 Feb 2018 22:53:10 GMT
COPY file:06690be77da8efbdd0ac433d6c30621d260543ac9d54b47c84161729a28ffc65 in /opt/ol/docker/ 
# Fri, 16 Feb 2018 22:53:10 GMT
EXPOSE 9080/tcp 9443/tcp
# Fri, 16 Feb 2018 22:53:11 GMT
ENTRYPOINT ["/opt/ol/docker/docker-server"]
# Fri, 16 Feb 2018 22:53:11 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Fri, 16 Feb 2018 23:08:04 GMT
COPY file:d60430c72fa97ea60f414ac3fc8e4255e7f4633037816c58097a54bf2888de30 in /config/ 
# Fri, 16 Feb 2018 23:08:28 GMT
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
	-	`sha256:07bdaf979c3d2f84a9b4168d7a83db00cb765237cb508d0f5402331abd0afc9b`  
		Last Modified: Wed, 10 Jan 2018 03:00:45 GMT  
		Size: 59.4 MB (59445729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa9bfd304d2e5d0e4f9a99789434371f86cdaa5dd6429d08cd3b8d071ffe1a5c`  
		Last Modified: Tue, 16 Jan 2018 23:42:44 GMT  
		Size: 91.8 MB (91796613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcaf43931faddf6e0d0bf6562ced88a7a3a9bf0c8e89b8220e7d271ff2fde231`  
		Last Modified: Fri, 16 Feb 2018 23:32:41 GMT  
		Size: 275.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d6ffb88121459187df6fdd3b337d43a84d474744e8a53e3f4955bb928f78bf6`  
		Last Modified: Fri, 16 Feb 2018 23:32:42 GMT  
		Size: 765.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4172662a8ca1d3fe1f45c79d1e2f3b1808e1556ec39c0abe0de863ec6132aa6c`  
		Last Modified: Fri, 16 Feb 2018 23:32:41 GMT  
		Size: 530.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ab8d5f2c2eca3445567ce4c97a4a3bb987e9eecaf27bda9d13caf403f3caa6`  
		Last Modified: Fri, 16 Feb 2018 23:33:45 GMT  
		Size: 541.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c74ac5a2507a34c6148000081e43f638e688c3cd22ac6764e61f2559fc485182`  
		Last Modified: Fri, 16 Feb 2018 23:33:48 GMT  
		Size: 10.0 MB (10002416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
