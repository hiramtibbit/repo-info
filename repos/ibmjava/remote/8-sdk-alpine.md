## `ibmjava:8-sdk-alpine`

```console
$ docker pull ibmjava@sha256:785dea96b3d21a178d998bc7de55bd1a8fdbe27395af8bdc28ef54b8c96f054e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ibmjava:8-sdk-alpine` - linux; amd64

```console
$ docker pull ibmjava@sha256:907c561f75356cc89b3274bce0eaeeb9997deaf7bfbc22f9bbe4af175f307649
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.7 MB (172693540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39ac327395ba5de241a7576dd2d5f92617066e55e377bfe6a1f90c7568612319`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:40 GMT
ADD file:9c13ab388a8e4c772b97ec8f6d2c576bece32cecdcfb6fee5175e1d3f613dd12 in / 
# Wed, 30 Jan 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:10:44 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Thu, 31 Jan 2019 02:10:57 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Mon, 04 Mar 2019 23:21:24 GMT
ENV JAVA_VERSION=1.8.0_sr5fp30
# Mon, 04 Mar 2019 23:25:15 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='97a6a92fe1303b82888cde206c38434a1c04c1b758cdf82c394de9252292fb5c';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='7745fe23861d827a12432444e6a78446b0806c3f292d9cf1b81ddd676cf0c83d';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='dec6434d926861366c135aac6234fc28b3e7685917015aa3a3089c06c3b3d8f0';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8bdb19c3feaeba64214a960745c7d07eac75e342e5087a47adf3f47e4dbf3133';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='bebbc8211f5e3840023cc76d67225f7dbd4138bd1310e7935709633c3b8477d8';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Mon, 04 Mar 2019 23:25:15 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
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
	-	`sha256:c9b5cec6feaa41c55120e1b184708c70c03b0994386040f45b701cbbdb19cd3f`  
		Last Modified: Mon, 04 Mar 2019 23:27:26 GMT  
		Size: 166.1 MB (166063893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
