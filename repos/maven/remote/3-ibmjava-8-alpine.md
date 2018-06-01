## `maven:3-ibmjava-8-alpine`

```console
$ docker pull maven@sha256:85c1587406296507d9c548e160215ac0e8a5ee591f192ca0efe3eb3b218ee523
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-ibmjava-8-alpine` - linux; amd64

```console
$ docker pull maven@sha256:93bbb742f3a670a92162245759bbb454f4be14572d2ffada3a8aade6c89e6f40
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.5 MB (182457919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b48bb3a67e580bdf8094078e16d862afced408fedaf1599dccdd8a22a8d7df2a`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:38 GMT
ADD file:6edc55fb54ec9fc3658c8f5176a70e792103a516154442f94fed8e0290e4960e in / 
# Tue, 09 Jan 2018 21:10:38 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 02:29:54 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Wed, 10 Jan 2018 02:30:08 GMT
RUN apk --update add --no-cache ca-certificates curl openssl binutils xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && curl -Ls ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk > /tmp/${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && curl -Ls https://www.archlinux.org/packages/core/x86_64/gcc-libs/download > /tmp/gcc-libs.tar.xz     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del curl binutils     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Fri, 01 Jun 2018 18:22:59 GMT
ENV JAVA_VERSION=1.8.0_sr5fp16
# Fri, 01 Jun 2018 18:26:30 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='804d36d8e0f2cd13a73f88841073804688cdb02492d76ae1a1ba77dd56c72481';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='c523169dbec80ac2b201b1cb6e70a8a69acb39118eda669f3cee86aa24fadeaf';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='c52b806779e0c7cc432cea225d4c26e8c3a2d39f6b8535263cc44ea127f7f786';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='bd4100e11189aae03be1532921b40584ff60b9eba41b8b12d5eef71c02fa1097';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='5086a317a2fe0a42b1ea9a559dc87a5a349b25f1debcd109777acb7fa7349b20';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 01 Jun 2018 18:26:30 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 01 Jun 2018 18:46:43 GMT
RUN apk add --no-cache curl tar bash procps
# Fri, 01 Jun 2018 18:46:43 GMT
ARG MAVEN_VERSION=3.5.3
# Fri, 01 Jun 2018 18:46:43 GMT
ARG USER_HOME_DIR=/root
# Fri, 01 Jun 2018 18:46:43 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Fri, 01 Jun 2018 18:46:43 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Fri, 01 Jun 2018 18:46:45 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 01 Jun 2018 18:46:45 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 01 Jun 2018 18:46:46 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 01 Jun 2018 18:46:46 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 01 Jun 2018 18:46:46 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 01 Jun 2018 18:46:46 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 01 Jun 2018 18:46:47 GMT
CMD ["mvn"]
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
	-	`sha256:de5b6e10a669c7703108e7e782a4f8104e59e3b4d3f8089d045558848f2fa353`  
		Last Modified: Fri, 01 Jun 2018 18:30:42 GMT  
		Size: 164.8 MB (164841545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc1d3cca182ad8ea2f0781fa15a61b07eec9ac650e1dca02a0cf79817ae67fe9`  
		Last Modified: Fri, 01 Jun 2018 18:48:07 GMT  
		Size: 2.1 MB (2147491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c15daa83068cfb4619ba29923d30046acbc6ef9dba93be24f4ffa607e06100d`  
		Last Modified: Fri, 01 Jun 2018 18:48:07 GMT  
		Size: 8.9 MB (8945979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9e6c57e63c4221256c92893d2ffbfc2b5c8103077df6f90984bab4765f21284`  
		Last Modified: Fri, 01 Jun 2018 18:48:06 GMT  
		Size: 747.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3880da2c5307023302aa0a2451413e4a181f1a80e7eba0d51cdb0421bbce2a7b`  
		Last Modified: Fri, 01 Jun 2018 18:48:06 GMT  
		Size: 357.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
