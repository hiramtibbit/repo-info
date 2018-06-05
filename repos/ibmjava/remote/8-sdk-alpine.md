## `ibmjava:8-sdk-alpine`

```console
$ docker pull ibmjava@sha256:dba1de98873c5ea056bd3a8faf3613b92a492602c12ddb764b9fee6d7e440f77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ibmjava:8-sdk-alpine` - linux; amd64

```console
$ docker pull ibmjava@sha256:03988cd07f48265ca7bf7c58b0dd96e8bd25e8a84f14de233b5abbe16d5c78b5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.4 MB (171370451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a4d04a6ab9a28ce2865798b8f9fc7cb0be9bf09cc771b7bb00ad64a694f34bb`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Tue, 05 Jun 2018 21:53:45 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Tue, 05 Jun 2018 21:54:45 GMT
RUN apk --update add --no-cache ca-certificates curl openssl binutils xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && curl -Ls https://www.archlinux.org/packages/core/x86_64/gcc-libs/download > /tmp/gcc-libs.tar.xz     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del curl binutils     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Tue, 05 Jun 2018 21:54:45 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Tue, 05 Jun 2018 22:15:08 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='804d36d8e0f2cd13a73f88841073804688cdb02492d76ae1a1ba77dd56c72481';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='c523169dbec80ac2b201b1cb6e70a8a69acb39118eda669f3cee86aa24fadeaf';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='c52b806779e0c7cc432cea225d4c26e8c3a2d39f6b8535263cc44ea127f7f786';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='bd4100e11189aae03be1532921b40584ff60b9eba41b8b12d5eef71c02fa1097';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='5086a317a2fe0a42b1ea9a559dc87a5a349b25f1debcd109777acb7fa7349b20';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Tue, 05 Jun 2018 22:15:09 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:605ce1bd3f3164f2949a30501cc596f52a72de05da1306ab360055f0d7130c32`  
		Last Modified: Tue, 09 Jan 2018 21:13:17 GMT  
		Size: 2.0 MB (1991747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c0310284dfbf2754b57c8e563ebda0a9b554f7717e84a95c2f27f6c684e145`  
		Last Modified: Tue, 05 Jun 2018 22:16:29 GMT  
		Size: 4.5 MB (4537292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:771224d244d0dd3b0be76196b1f3edb5afd2220b6d1e8fda093d9c78b96adf6a`  
		Last Modified: Tue, 05 Jun 2018 22:19:36 GMT  
		Size: 164.8 MB (164841412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
