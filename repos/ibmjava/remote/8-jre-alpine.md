## `ibmjava:8-jre-alpine`

```console
$ docker pull ibmjava@sha256:00246bffa44e9c23519c5c3634f3892104d80b488bfa237e97d5886cf64e9882
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `ibmjava:8-jre-alpine` - linux; amd64

```console
$ docker pull ibmjava@sha256:3e775578d696380e79df06b5d80f59f8213645905db79917c91dd5f0366075d9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.9 MB (135876950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d07d02256845101a26f5a7f00e1d7920bd34e82cf15381d2587fd3b9ebdc9bf9`
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
# Thu, 07 Mar 2019 23:12:07 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='d34994ba7abe459afad0bfb1f1c1e422bb79a06121f02bd49e6a963f5faf4ab5';          YML_FILE='jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='82955c3ff16d561a8c5b00f57bbb6225a41788688f99a6dfd977d448b5fdf5ef';          YML_FILE='jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='afebb0ccebca8c5c6bb0ac523bab0de061e49dcb9229a66adccc90a262544f1c';          YML_FILE='jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='45f6fc878598f38697ce23cfa1f4082b0c0f2c772e0310a9e52cc5ef41f15edd';          YML_FILE='jre/linux/s390/index.yml';          ;;        s390x)          ESUM='40a57bf717220ec3d19a44dca3a0be0020d097687140c52643e0d4bada7bc94c';          YML_FILE='jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Thu, 07 Mar 2019 23:12:07 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
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
	-	`sha256:972c78ed9ca1edc96cd7f92e9d06b22fd93a39f7133ac1e0f7fb56aabd862fba`  
		Last Modified: Thu, 07 Mar 2019 23:13:58 GMT  
		Size: 129.2 MB (129247336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
