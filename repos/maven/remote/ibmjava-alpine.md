## `maven:ibmjava-alpine`

```console
$ docker pull maven@sha256:e48bf11d7f41683878c33daca215e49a24a6f17a7bea46c84eb4784d24605a74
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `maven:ibmjava-alpine` - linux; amd64

```console
$ docker pull maven@sha256:8c03db49634b39dae76553ad2816dcf72e3c187006d3fc40f1700bfd5ec45aab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.6 MB (183596818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39236fc7c2c1a23f270a0860b2ddb60d4aac1bbc58d082b9c62a8386d207caa9`
-	Entrypoint: `["\/usr\/local\/bin\/mvn-entrypoint.sh"]`
-	Default Command: `["mvn"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Mon, 13 Aug 2018 22:22:33 GMT
MAINTAINER Dinakar Guniguntala <dinakar.g@in.ibm.com> (@dinogun)
# Mon, 13 Aug 2018 22:22:45 GMT
RUN apk --update add --no-cache binutils ca-certificates openssl wget xz     && GLIBC_VER="2.25-r0"     && ALPINE_GLIBC_REPO="https://github.com/sgerrand/alpine-pkg-glibc/releases/download"     && wget -q -O /tmp/${GLIBC_VER}.apk ${ALPINE_GLIBC_REPO}/${GLIBC_VER}/glibc-${GLIBC_VER}.apk     && apk add --allow-untrusted /tmp/${GLIBC_VER}.apk     && wget -q -O /tmp/gcc-libs.tar.xz https://www.archlinux.org/packages/core/x86_64/gcc-libs/download     && mkdir /tmp/gcc     && tar -xf /tmp/gcc-libs.tar.xz -C /tmp/gcc     && mv /tmp/gcc/usr/lib/libgcc* /tmp/gcc/usr/lib/libstdc++* /usr/glibc-compat/lib     && strip /usr/glibc-compat/lib/libgcc_s.so.* /usr/glibc-compat/lib/libstdc++.so*     && apk del binutils wget     && rm -rf /tmp/${GLIBC_VER}.apk /tmp/gcc /tmp/gcc-libs.tar.xz /var/cache/apk/*
# Mon, 13 Aug 2018 22:22:45 GMT
ENV JAVA_VERSION=1.8.0_sr5fp20
# Mon, 13 Aug 2018 22:27:47 GMT
RUN set -eux;     apk --no-cache add --virtual .build-deps wget;     ARCH="$(apk --print-arch)";     case "${ARCH}" in        amd64|x86_64)          ESUM='1c996f79d187967221eddeeb6f34ffb932923101e860139392e689e311c5b358';          YML_FILE='sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='269405e0a33ab86e39b2cef0fe9fc44a86d4cdb4496aaebc9f5f9a11abeccc12';          YML_FILE='sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='eb4dbe4c252bb41871502d794c68743729274f0fe74880463f187b8a9f51826f';          YML_FILE='sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='eb4e400a74dd844d1ee239125db5177122f2fd407e65d24fe6996aad8f02752c';          YML_FILE='sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='d780c7b0d8449000a0b69e537a0bc03b10a18e3eaea060ab065a2968ae74ecac';          YML_FILE='sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;     apk del .build-deps;
# Mon, 13 Aug 2018 22:27:48 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Wed, 05 Sep 2018 15:32:31 GMT
RUN apk add --no-cache curl tar bash procps
# Wed, 05 Sep 2018 15:32:31 GMT
ARG MAVEN_VERSION=3.5.4
# Wed, 05 Sep 2018 15:32:31 GMT
ARG USER_HOME_DIR=/root
# Wed, 05 Sep 2018 15:32:31 GMT
ARG SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d
# Wed, 05 Sep 2018 15:32:32 GMT
ARG BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries
# Wed, 05 Sep 2018 15:32:35 GMT
# ARGS: BASE_URL=https://apache.osuosl.org/maven/maven-3/3.5.4/binaries MAVEN_VERSION=3.5.4 SHA=ce50b1c91364cb77efe3776f756a6d92b76d9038b0a0782f7d53acf1e997a14d USER_HOME_DIR=/root
RUN mkdir -p /usr/share/maven /usr/share/maven/ref   && curl -fsSL -o /tmp/apache-maven.tar.gz ${BASE_URL}/apache-maven-${MAVEN_VERSION}-bin.tar.gz   && echo "${SHA}  /tmp/apache-maven.tar.gz" | sha256sum -c -   && tar -xzf /tmp/apache-maven.tar.gz -C /usr/share/maven --strip-components=1   && rm -f /tmp/apache-maven.tar.gz   && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn
# Wed, 05 Sep 2018 15:32:36 GMT
ENV MAVEN_HOME=/usr/share/maven
# Wed, 05 Sep 2018 15:32:36 GMT
ENV MAVEN_CONFIG=/root/.m2
# Wed, 05 Sep 2018 15:32:36 GMT
COPY file:fb726a12bbbf8ff54c8d9fceef4fa3018c11a435bfa04ee5f73156c544907861 in /usr/local/bin/mvn-entrypoint.sh 
# Wed, 05 Sep 2018 15:32:37 GMT
COPY file:b3fc14e8337e0079a4e97eace880b4b7cddc0dc0ea733de80749f78fe1eb089a in /usr/share/maven/ref/ 
# Wed, 05 Sep 2018 15:32:37 GMT
ENTRYPOINT ["/usr/local/bin/mvn-entrypoint.sh"]
# Wed, 05 Sep 2018 15:32:37 GMT
CMD ["mvn"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1069eb9a58ad7d59621a85fba106467561b5ab661ad22f5e14076310cbacfdc1`  
		Last Modified: Mon, 13 Aug 2018 22:30:00 GMT  
		Size: 4.5 MB (4518807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c9798b2d0adb4d72bf404f8a33264ea91a702ad0ed805d17cfd0893ea109dd0`  
		Last Modified: Mon, 13 Aug 2018 22:34:35 GMT  
		Size: 165.7 MB (165675059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5b3b5cf2344739bfba3a541ddaac5745cc998e7a9910db04705459aacef3c6`  
		Last Modified: Wed, 05 Sep 2018 15:39:06 GMT  
		Size: 2.3 MB (2309066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d86606efc30113d7136f89900efe77338854fd804adb7a924efd1a72c3a7f6ad`  
		Last Modified: Wed, 05 Sep 2018 15:39:06 GMT  
		Size: 9.0 MB (8989228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:838603c84cfbd3226490930fa42abb9ae49a9cad8e3d129e484fc39a2412ecfa`  
		Last Modified: Wed, 05 Sep 2018 15:39:04 GMT  
		Size: 747.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5420d8964a67c11b503562f12b32b9909ed1d60bfaad29a5cabcadccfe567a9`  
		Last Modified: Wed, 05 Sep 2018 15:39:04 GMT  
		Size: 358.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
