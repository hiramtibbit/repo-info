## `ibmjava:8-sdk-alpine`

```console
$ docker pull ibmjava@sha256:9370de24776c5439d139c9dda3d9fcc16e784669e23895332a4053a776cd9512
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ibmjava:8-sdk-alpine` - linux; amd64

```console
$ docker pull ibmjava@sha256:30802ad914c327cf6496f527ab84a9a0207ef340b6ddd470fb32267925179c54
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.7 MB (172693464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95c0b7cb3fe5e38cb9585b9888e8c4db82620e138f807a2f4316b5c6414c3ca5`
-	Default Command: `["\/bin\/sh"]`

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
# Thu, 07 Mar 2019 23:13:31 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='97a6a92fe1303b82888cde206c38434a1c04c1b758cdf82c394de9252292fb5c';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='7745fe23861d827a12432444e6a78446b0806c3f292d9cf1b81ddd676cf0c83d';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='dec6434d926861366c135aac6234fc28b3e7685917015aa3a3089c06c3b3d8f0';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='8bdb19c3feaeba64214a960745c7d07eac75e342e5087a47adf3f47e4dbf3133';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='bebbc8211f5e3840023cc76d67225f7dbd4138bd1310e7935709633c3b8477d8';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Thu, 07 Mar 2019 23:13:32 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
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
	-	`sha256:d1bd74e71c6beb72c5dce8c10ca91628a2de9489a4ce4eab76bbf046369b5400`  
		Last Modified: Thu, 07 Mar 2019 23:14:46 GMT  
		Size: 166.1 MB (166063850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
