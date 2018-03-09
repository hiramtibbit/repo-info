## `maven:ibmjava-alpine`

```console
$ docker pull maven@sha256:d035412dea1e10b437c88a72111183ae6405edc77c547c4b1c8ff49e4c119f44
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:ibmjava-alpine` - linux; amd64

```console
$ docker pull maven@sha256:72a4ebc63c13d0deae72f05816137867f8961e0d1423df467b958d65cf43d446
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.6 MB (180573615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed51ba217e0f67d733267f2299877060863ffb98d4ba3341360c5b3e09d22390`
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
# Tue, 20 Feb 2018 18:49:35 GMT
ENV JAVA_VERSION=1.8.0_sr5fp10
# Tue, 20 Feb 2018 18:55:12 GMT
RUN set -eux;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='59b9eb7ead4d552c07028a2f1aa84947d7cc73c0f21bd2213e8f12683bce32c5';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='41aff429d032e4fa173d73730ac961c232abeaa79286cdb51c0a4a59982bdabc';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='a77acfbd5d4d3997b8ef849d7bf0ce559f1eeb43e130051b6ccdcb488e3d4556';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='55a24c33e0f94ff1e83ed259c6acc43a240659b43050992f44bc33ad4971aaa9';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='3fb233a571f85ec8246769801ddd62d9b8e9dfc1599367bbab580f76c7242d99';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(cat /tmp/index.yml | sed -n '/'${JAVA_VERSION}'/{n;p}' | sed -n 's/\s*uri:\s//p' | tr -d '\r');     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     cd /opt/ibm/java/jre/lib;     rm -rf icc;
# Tue, 20 Feb 2018 18:55:12 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Mar 2018 19:06:13 GMT
RUN apk add --no-cache curl tar bash procps
# Fri, 09 Mar 2018 19:06:14 GMT
ARG MAVEN_VERSION=3.5.3
# Fri, 09 Mar 2018 19:06:14 GMT
ARG USER_HOME_DIR=/root
# Fri, 09 Mar 2018 19:06:14 GMT
ARG SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408
# Fri, 09 Mar 2018 19:06:15 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries
# Fri, 09 Mar 2018 19:06:16 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.3/binaries MAVEN_VERSION=3.5.3 SHA=b52956373fab1dd4277926507ab189fb797b3bc51a2a267a193c931fffad8408 USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Fri, 09 Mar 2018 19:06:17 GMT
ENV MAVEN_HOME=/usr/share/maven
# Fri, 09 Mar 2018 19:06:17 GMT
ENV MAVEN_CONFIG=/root/.m2
# Fri, 09 Mar 2018 19:06:17 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Fri, 09 Mar 2018 19:06:18 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Fri, 09 Mar 2018 19:06:18 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Fri, 09 Mar 2018 19:06:18 GMT
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
	-	`sha256:3dbd7d034b52bec965b84483e618c412cd87e9230ec3f8c59fbcfd5789a5101d`  
		Last Modified: Tue, 20 Feb 2018 19:00:38 GMT  
		Size: 163.0 MB (162961498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3416144b92508bef7766e8fe300dd748fa421452106f1436e9380854c1cf422a`  
		Last Modified: Fri, 09 Mar 2018 19:19:05 GMT  
		Size: 2.1 MB (2143240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fbce1945bb95103881bcd12b6003ad21e336c4041f32315b95ef182bf6b6159`  
		Last Modified: Fri, 09 Mar 2018 19:19:05 GMT  
		Size: 8.9 MB (8945975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3d937c2ef944519aa0ff3873c6079358fd134b9fb712ba02f1ac2000b1e876`  
		Last Modified: Fri, 09 Mar 2018 19:19:05 GMT  
		Size: 746.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3af6bf62f1a4b8e8f0af730f3d9931da979e01247ef3fa3776c286fd26954c8`  
		Last Modified: Fri, 09 Mar 2018 19:19:05 GMT  
		Size: 356.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
