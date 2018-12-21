## `maven:3-ibmjava-8-alpine`

```console
$ docker pull maven@sha256:8d750596c3ddb3268c8b4c7ff27aaa93ae0b07d0fdeabb185b4e67a779b42b68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:3-ibmjava-8-alpine` - linux; amd64

```console
$ docker pull maven@sha256:2f3089ab7463bbcf8a6ee94dc0f340d7f0736d32696072c8ed5d6f07903b7067
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.9 MB (182887548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00f4cbd34243d3e75e3eec19db32f28c9eb312e3a66221bc2fadcddf5e373ce4`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:13:31 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Fri, 21 Dec 2018 01:13:42 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Fri, 21 Dec 2018 01:13:42 GMT
ENV JAVA_VERSION=1.8.0_sr5fp26
# Fri, 21 Dec 2018 01:16:02 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='e327702328e72af8a78e83181c320cf07b80ba6b97105f0feac2f95ebabba6bd';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='993db44f6b8b2d5e449adb88982cd890ebd11f66eff4c35833b57d76c9635f41';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='aeea7fa3628379d4dae742b4fca721858a6058c87bb1e574e36e63a222991650';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='0afda82ae35b29b353f7e3a592f8b6a465240c81f0e2cf590c05bbd40b35cfc2';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='4271fb374261c44fe8f4e487f519cf648bcb45075487fb0e6b8cd3fd55079cc3';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Fri, 21 Dec 2018 01:16:03 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 21 Dec 2018 05:34:40 GMT
RUN apk add --no-cache curl tar bash procps
# Fri, 21 Dec 2018 05:34:41 GMT
ARG MAVEN_VERSION=3.6.0
# Fri, 21 Dec 2018 05:34:41 GMT
ARG USER_HOME_DIR=/root
# Fri, 21 Dec 2018 05:34:41 GMT
ARG SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f
# Fri, 21 Dec 2018 05:34:41 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries
# Fri, 21 Dec 2018 05:34:43 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.6.0/binaries MAVEN_VERSION=3.6.0 SHA=fae9c12b570c3ba18116a4e26ea524b29f7279c17cbaadc3326ca72927368924d9131d11b9e851b8dc9162228b6fdea955446be41207a5cfc61283dd8a561d2f USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha512sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 21 Dec 2018 05:34:43 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 21 Dec 2018 05:34:44 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 21 Dec 2018 05:34:44 GMT
COPY file:c8a560656e1905748cb426c612f1ff0b0b6de63f6244ffc4007ce2596a16de58 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 21 Dec 2018 05:34:44 GMT
COPY file:2bbb488dd73c55d658b91943cfdf9c26975a320ceafc45dda94c95b03e518ad3 in /usr/share/maven/ref/ 
# Fri, 21 Dec 2018 05:34:44 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 21 Dec 2018 05:34:44 GMT
CMD ["mvn"]
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
	-	`sha256:67592094670eb754eabf8b5b0cbba2d6cd4bd014da5ae67fa8fcbd0dcf71f9bb`  
		Last Modified: Fri, 21 Dec 2018 01:17:08 GMT  
		Size: 164.9 MB (164858763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a05325744ff7ea12830277f68d6fc570cfc5b9b36ac525fb5b8f555ffa887e9`  
		Last Modified: Fri, 21 Dec 2018 05:35:37 GMT  
		Size: 2.3 MB (2310135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b90163e2a633d6965e9e74dde62a2c6fa3da1c80b3ef53ab37094699bbfce2e`  
		Last Modified: Fri, 21 Dec 2018 05:35:38 GMT  
		Size: 9.1 MB (9087909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c461b080d575a24341332feb56e056442c440a7b0731eacbb4450013d95626c2`  
		Last Modified: Fri, 21 Dec 2018 05:35:37 GMT  
		Size: 745.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa6bd8d473216477a2bb4ef2a80f51ddca23abf81ebee7d48301a009f8655452`  
		Last Modified: Fri, 21 Dec 2018 05:35:37 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
