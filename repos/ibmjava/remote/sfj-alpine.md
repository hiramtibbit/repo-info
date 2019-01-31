## `ibmjava:sfj-alpine`

```console
$ docker pull ibmjava@sha256:f6d2cc59ef6adeb3b8bafb1dcbc60ce754a57d14125674cf6f95c08f6243b431
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ibmjava:sfj-alpine` - linux; amd64

```console
$ docker pull ibmjava@sha256:89b5d57911cc55927a574998b69b098afe76e86597d2f17936f81df1a2f6e58a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.0 MB (68963062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3b5466d1ad791b77f80afdd1bbcc58eec2f74efba413ccfcd52489206025913`
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
# Thu, 31 Jan 2019 02:10:57 GMT
ENV JAVA_VERSION=1.8.0_sr5fp27
# Thu, 31 Jan 2019 02:12:25 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d9cd0948d8b25bacf6e6600ac562dd0082fd71edc67d03adf81ac40e6cf5661f';          YML_FILE='sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='6defa73b9223c22a33a1f419b7aab0b98ac99d6f77065ad69d9738eef3f356ae';          YML_FILE='sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e0b3f373521bc7a2b10aef37721345043fa9d10e0ed6bb7f9f1381bae660f16c';          YML_FILE='sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='2cea861e255cf523a24deb02fc150836f7fbbd31a8f95e4e8d796c1abccfa44b';          YML_FILE='sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='038bf72abd9648ac2abd0d59fbd67274392c361368854b3d6e87e7751fb9f38c';          YML_FILE='sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Thu, 31 Jan 2019 02:12:25 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
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
	-	`sha256:71821ea303fb730848591baf95bf1f5427b1ece11c9b6aaacd4c2d499a5c6110`  
		Last Modified: Thu, 31 Jan 2019 02:14:25 GMT  
		Size: 62.3 MB (62333415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
