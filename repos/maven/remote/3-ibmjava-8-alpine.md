## `maven:3-ibmjava-8-alpine`

```console
$ docker pull maven@sha256:19440190044a5127441045ccd2f49e19311d29615eb7073a2112a47439d54944
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-ibmjava-8-alpine` - linux; amd64

```console
$ docker pull maven@sha256:719362b89a4a79ecfb23b36c1fef0bee9ca36a6ebed2a7465f181f55fbbe3758
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.5 MB (182480374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a269dc1fd81d3833bb0d33d7394ea6ac8e47ba8814105aa6a41de207f62f8c1`
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
# Fri, 11 May 2018 18:25:35 GMT
ENV JAVA_VERSION=1.8.0_sr5fp15
# Fri, 11 May 2018 18:28:41 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='0dd6345d706fa911637dcccb1302332adfad7921eecbf407696e951dda6268be';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='9d7e1f6d711dc8bd235e4cb78c7484ab73446e36c158422092065dcd3473ab6b';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='c3bb4e7b87020bf25e746abec33b6173ab0de29eb783a3512f6cf0a85b0ea92a';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='f86ba6be31d58b4ae46d9b19801932d855036b894984bab47b4627f4a0405f41';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='c633b05621da5f97675e934d9d02fb7e9da078f53f5ed5b28f8e5bd9028e7760';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Fri, 11 May 2018 18:28:41 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 11 May 2018 19:01:30 GMT
RUN apk add --no-cache curl tar bash procps
# Fri, 11 May 2018 19:01:30 GMT
ARG MAVEN_VERSION=3.5.3
# Fri, 11 May 2018 19:01:30 GMT
ARG USER_HOME_DIR=/root
# Fri, 11 May 2018 19:01:30 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Fri, 11 May 2018 19:01:31 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Fri, 11 May 2018 19:01:32 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 11 May 2018 19:01:32 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 11 May 2018 19:01:33 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 11 May 2018 19:01:33 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 11 May 2018 19:01:33 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 11 May 2018 19:01:34 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 11 May 2018 19:01:34 GMT
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
	-	`sha256:511346f5e0635fdd97927f43d01ba71bf516dc8d642ce17dc37298a189f282ef`  
		Last Modified: Fri, 11 May 2018 18:31:48 GMT  
		Size: 164.9 MB (164866320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddffb73de142b67c68925dc4ad15f3eeea1b448cfebeaf4c902b8248ffd82fc7`  
		Last Modified: Fri, 11 May 2018 19:02:49 GMT  
		Size: 2.1 MB (2145180 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cae13706bc24b7dd040db48a442b0c3856455b88dcd8f853e6224aeee5cd9e49`  
		Last Modified: Fri, 11 May 2018 19:02:52 GMT  
		Size: 8.9 MB (8945972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e8bcdc5ad6a1a960d4ab97319ed8811d0022c32ae02700e8891448b0230c293`  
		Last Modified: Fri, 11 May 2018 19:02:49 GMT  
		Size: 746.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f22e0d6555673f68402ce600338f269f2f5ae67b96a358debf4c392cced0e12a`  
		Last Modified: Fri, 11 May 2018 19:02:50 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
