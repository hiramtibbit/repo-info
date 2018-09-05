## `ibmjava:8-sdk-alpine`

```console
$ docker pull ibmjava@sha256:e042aedab18e1b11d7fe5bcb696e1e5269e08f35dda717c31d001977118f3185
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ibmjava:8-sdk-alpine` - linux; amd64

```console
$ docker pull ibmjava@sha256:0ed5ac6d8b7762b43f4ba723b468fed7100f6e5ef28ed2edeea31607533610cd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **172.4 MB (172371021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:041ae8d40bdaa504fba009bcbec58fb6b927b5c62771660b9f08ac0fe8dee085`
-	Default Command: `["\/bin\/sh"]`

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
# Wed, 05 Sep 2018 21:24:38 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='2f9bfcf949023bfccb0eef306bbb82459ddd423bccbcba59df19993fe5450fd5';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='e635d4540a3ec5f6699e231440308b98b9741c98688eb873d6076e6bcf06260c';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='45f5be093a7aeef49508bee482e7a930454745185e949fdd5aaa48635ba22bfd';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='02af03f3fc85bca2235aecd298118be2cc4081b46a2077d94de9ed33f481895d';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='cb7ca73df6a488c3f7cf56ded07b6768161dfdb9af346992d823d0607a56bf72';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Wed, 05 Sep 2018 21:24:39 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
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
	-	`sha256:292d21c35d326b64abf7bc5e491b466da5bf6acc73e7195d7158c771695abc57`  
		Last Modified: Wed, 05 Sep 2018 21:27:07 GMT  
		Size: 165.7 MB (165748425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
