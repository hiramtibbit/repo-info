## `ibmjava:8-sfj-alpine`

```console
$ docker pull ibmjava@sha256:22a377877963c14bc1296def31e4499129fbd7ffce1f8b06c5a201b2cf5ba51e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ibmjava:8-sfj-alpine` - linux; amd64

```console
$ docker pull ibmjava@sha256:ef68e59afd26c08f69564e5609131b799e497ed16a41de6b922e6b5122ee5817
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.0 MB (68963060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08fd7afaba75a96b152db416c98a2b68a7dd3ea06fdc2dda18b41be709f9ac58`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:13:31 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 21 Dec 2018 01:13:42 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Tue, 15 Jan 2019 00:20:58 GMT
ENV JAVA_VERSION=1.8.0_sr5fp27
# Tue, 15 Jan 2019 00:22:49 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d9cd0948d8b25bacf6e6600ac562dd0082fd71edc67d03adf81ac40e6cf5661f';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='6defa73b9223c22a33a1f419b7aab0b98ac99d6f77065ad69d9738eef3f356ae';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e0b3f373521bc7a2b10aef37721345043fa9d10e0ed6bb7f9f1381bae660f16c';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='2cea861e255cf523a24deb02fc150836f7fbbd31a8f95e4e8d796c1abccfa44b';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='038bf72abd9648ac2abd0d59fbd67274392c361368854b3d6e87e7751fb9f38c';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Tue, 15 Jan 2019 00:22:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b140346aa6aebc6dec68c5d7ae89afe92e43f91a8c11c029464cffb69954415e`  
		Last Modified: Fri, 21 Dec 2018 01:16:21 GMT  
		Size: 4.5 MB (4522487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e7c7ebf102bbfc05f291d8d6b267c9cce825b01fb4a3ea366d587fd3a0f4a56`  
		Last Modified: Tue, 15 Jan 2019 00:25:40 GMT  
		Size: 62.3 MB (62333420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
