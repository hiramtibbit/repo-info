## `ibmjava:8-sdk-alpine`

```console
$ docker pull ibmjava@sha256:638c323a49b9e62795dfb46735a041e26ec41393d8c0ed52485909f89681521f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ibmjava:8-sdk-alpine` - linux; amd64

```console
$ docker pull ibmjava@sha256:322891e10104657156f1734535a4353760865ab2f105362f10e50331913d9364
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.2 MB (171152234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c7910f8f60929cc3916d6faadd3fa21e25da5cd590c354500174c41ab6c77fa`
-	Default Command: `["\/bin\/sh"]`

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
# Tue, 11 Sep 2018 23:32:36 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='2f9bfcf949023bfccb0eef306bbb82459ddd423bccbcba59df19993fe5450fd5';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='e635d4540a3ec5f6699e231440308b98b9741c98688eb873d6076e6bcf06260c';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='45f5be093a7aeef49508bee482e7a930454745185e949fdd5aaa48635ba22bfd';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='02af03f3fc85bca2235aecd298118be2cc4081b46a2077d94de9ed33f481895d';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='cb7ca73df6a488c3f7cf56ded07b6768161dfdb9af346992d823d0607a56bf72';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Tue, 11 Sep 2018 23:32:36 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
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
	-	`sha256:223b83ce9fcaa61cd3ef3d4614603f4f705b715946b66f89122399f8730bbcc8`  
		Last Modified: Tue, 11 Sep 2018 23:33:57 GMT  
		Size: 164.5 MB (164526040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
