## `maven:3-ibmjava-8-alpine`

```console
$ docker pull maven@sha256:c5ef1cbbf8009726f0c625d027a9faf6f369370577296431ae3277d358838052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-ibmjava-8-alpine` - linux; amd64

```console
$ docker pull maven@sha256:601bba0df5ae0f82dadc93b48421e34e7db2aa2cf97cefd445635394a33081e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.5 MB (182508287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f1e0b04c365547b7c0db0969d15d1b8d7b0d8dfc0e3eca44bfecade65e966a5`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

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
# Tue, 12 Jun 2018 01:52:28 GMT
RUN apk add --no-cache curl tar bash procps
# Fri, 22 Jun 2018 17:26:48 GMT
ARG MAVEN_VERSION=3.5.4
# Fri, 22 Jun 2018 17:26:48 GMT
ARG USER_HOME_DIR=/root
# Fri, 22 Jun 2018 17:26:48 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Fri, 22 Jun 2018 17:26:49 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Fri, 22 Jun 2018 17:26:58 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 22 Jun 2018 17:26:58 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 22 Jun 2018 17:26:58 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 22 Jun 2018 17:26:58 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 22 Jun 2018 17:26:59 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 22 Jun 2018 17:26:59 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 22 Jun 2018 17:26:59 GMT
CMD ["mvn"]
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
	-	`sha256:4c58d5c9dcfa0564ba0136353424e0a3fdad3dd9fac64cbff5115635afd456af`  
		Last Modified: Tue, 12 Jun 2018 01:58:09 GMT  
		Size: 2.1 MB (2147501 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:714e863cc0b425b2579a6d8466b0dc445f64535dd9eba6c3b6cc9e487abf0b45`  
		Last Modified: Fri, 22 Jun 2018 17:38:05 GMT  
		Size: 9.0 MB (8989221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9cc97b39d5cc78fedb54f2b2df1e5b3b0faa48e61da9adcacf9b0b1c9cf04c`  
		Last Modified: Fri, 22 Jun 2018 17:38:04 GMT  
		Size: 751.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd195eeb7677f0be5a61a79c727a62887548b8d0713a323ae1955415e5320a1`  
		Last Modified: Fri, 22 Jun 2018 17:38:03 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
