## `open-liberty:javaee8-java8-openj9`

```console
$ docker pull open-liberty@sha256:4c52ebbcfd88d3340decb320126001a76f570b52d2ca4bbfa87ad0a4075d3f62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:javaee8-java8-openj9` - linux; amd64

```console
$ docker pull open-liberty@sha256:633cd556632be7d10061015eae8ff9e8c8d4b0a93abee67b3644c11d4374ab3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.4 MB (198358971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:545a0e70c76b71c03750a049030220783b82f4fd016551a532ef4a315cd4fd23`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 18 Jun 2019 22:51:33 GMT
ADD file:4e6b5d9ca371eb881c581574b8dc4f5391eff2872db364af0f8d9804e4890098 in / 
# Tue, 18 Jun 2019 22:51:35 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:51:36 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:51:37 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:51:38 GMT
CMD ["/bin/bash"]
# Wed, 19 Jun 2019 03:04:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 19 Jun 2019 03:05:03 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends curl ca-certificates locales     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/*
# Wed, 19 Jun 2019 03:06:28 GMT
ENV JAVA_VERSION=jdk8u212-b04_openj9-0.14.2
# Wed, 19 Jun 2019 03:06:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='9d886582a465da28d9ec2279c933adf688698c67002a1a99070fbb575878282f';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04_openj9-0.14.2/OpenJDK8U-jre_ppc64le_linux_openj9_8u212b04_openj9-0.14.2.tar.gz';          ;;        s390x)          ESUM='9200e492e5e468b69e84c8a9e91b63c4819133409f67ef7ba0f978795792d66d';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04_openj9-0.14.2/OpenJDK8U-jre_s390x_linux_openj9_8u212b04_openj9-0.14.2.tar.gz';          ;;        amd64|x86_64)          ESUM='b0c0aac53694b2ada3a9fdcbb3e9461257a54b50b4573d786d7b0778d6356805';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04_openj9-0.14.2/OpenJDK8U-jre_x64_linux_openj9_8u212b04_openj9-0.14.2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Wed, 19 Jun 2019 03:06:50 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Jun 2019 03:06:51 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+UseContainerSupport -XX:+IdleTuningCompactOnIdle -XX:+IdleTuningGcOnIdle
# Wed, 19 Jun 2019 04:32:59 GMT
ARG LIBERTY_VERSION=19.0.0.5
# Wed, 19 Jun 2019 04:35:23 GMT
ARG LIBERTY_SHA=180a2499f42f7469df06bbe39e27a5b0268113f8
# Wed, 19 Jun 2019 04:35:23 GMT
ARG LIBERTY_BUILD_LABEL=cl190520190522-2227
# Wed, 19 Jun 2019 04:35:24 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.5/openliberty-javaee8-19.0.0.5.zip
# Wed, 19 Jun 2019 04:35:24 GMT
LABEL org.opencontainers.image.authors=Arthur De Magalhaes, Andy Naumann org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl190520190522-2227
# Wed, 19 Jun 2019 04:35:24 GMT
COPY dir:8fa97f796b5791935d245816c680a53be6b8eba6d1d65b789acd46ff4b30c0c5 in /opt/ol/helpers 
# Wed, 19 Jun 2019 04:35:33 GMT
# ARGS: LIBERTY_BUILD_LABEL=cl190520190522-2227 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.5/openliberty-javaee8-19.0.0.5.zip LIBERTY_SHA=180a2499f42f7469df06bbe39e27a5b0268113f8 LIBERTY_VERSION=19.0.0.5
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && curl -L -s -A UA-Open-Liberty-Docker -o /tmp/wlp.zip $LIBERTY_DOWNLOAD_URL     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Wed, 19 Jun 2019 04:35:33 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 19 Jun 2019 04:35:34 GMT
# ARGS: LIBERTY_BUILD_LABEL=cl190520190522-2227 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.5/openliberty-javaee8-19.0.0.5.zip LIBERTY_SHA=180a2499f42f7469df06bbe39e27a5b0268113f8 LIBERTY_VERSION=19.0.0.5
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 19 Jun 2019 04:35:35 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ 
# Wed, 19 Jun 2019 04:35:36 GMT
# ARGS: LIBERTY_BUILD_LABEL=cl190520190522-2227 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.5/openliberty-javaee8-19.0.0.5.zip LIBERTY_SHA=180a2499f42f7469df06bbe39e27a5b0268113f8 LIBERTY_VERSION=19.0.0.5
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 19 Jun 2019 04:35:36 GMT
USER 1001
# Wed, 19 Jun 2019 04:35:36 GMT
EXPOSE 9080 9443
# Wed, 19 Jun 2019 04:35:36 GMT
ENV KEYSTORE_REQUIRED=true
# Wed, 19 Jun 2019 04:35:36 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Wed, 19 Jun 2019 04:35:37 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:5b7339215d1d5f8e68622d584a224f60339f5bef41dbd74330d081e912f0cddd`  
		Last Modified: Thu, 13 Jun 2019 00:24:57 GMT  
		Size: 26.7 MB (26684508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14ca88e9f6723ce82bc14b241cda8634f6d19677184691d086662641ab96fe68`  
		Last Modified: Tue, 18 Jun 2019 22:53:58 GMT  
		Size: 35.4 KB (35352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a31c3b1caad473a474d574283741f880e37c708cc06ee620d3e93fa602125ee0`  
		Last Modified: Tue, 18 Jun 2019 22:53:57 GMT  
		Size: 849.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b054a26005b7f3b032577f811421fab5ec3b42ce45a4012dfa00cf6ed6191b0f`  
		Last Modified: Tue, 18 Jun 2019 22:53:57 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf0a0f024f7858fb52dfe83162e093ed44d195a987007b5478be7ea693cc8a6`  
		Last Modified: Wed, 19 Jun 2019 03:08:20 GMT  
		Size: 10.8 MB (10833894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fab863c759dfba7afd85de26638063c6693315e998c6b03edbc644f786891ba`  
		Last Modified: Wed, 19 Jun 2019 03:11:19 GMT  
		Size: 47.7 MB (47733915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7efff4e09b2a52b3005ca37b4b9b2e657319336678f216862ccd8e95f1b04776`  
		Last Modified: Wed, 19 Jun 2019 04:45:38 GMT  
		Size: 2.3 KB (2310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac4cedb38497268d7658e1402b73a6e1b06478527c0fc6752d14ae4324dc650`  
		Last Modified: Wed, 19 Jun 2019 04:45:47 GMT  
		Size: 113.1 MB (113063325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:113317a89485f18a9bd8bc7a68c0465677a6d82fb6efe8dbe821bcde3ce8817e`  
		Last Modified: Wed, 19 Jun 2019 04:45:38 GMT  
		Size: 1.2 KB (1226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ecb43e95da2330d258f2d846aff499d11da20e3a5e5c442ca696532734e43b4`  
		Last Modified: Wed, 19 Jun 2019 04:45:38 GMT  
		Size: 3.4 KB (3430 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee8-java8-openj9` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:bf10d3a3212bf0a07a8db27feb846168414db6c0f6f61044fd3989e892ea786d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.8 MB (202839628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ed9d83fde40b154cc5b9a6a32ed2aac2435e4d7502a6cadfc743ab32e816ca4`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 18 Jun 2019 22:48:01 GMT
ADD file:fffa2939fb9dcbb708086aef7eaeec85560e44db64ec7228205cc0dffdfde2b3 in / 
# Tue, 18 Jun 2019 22:48:08 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 22:48:14 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 22:48:20 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 22:48:22 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 23:50:39 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Jun 2019 23:51:40 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends curl ca-certificates locales     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 23:53:58 GMT
ENV JAVA_VERSION=jdk8u212-b04_openj9-0.14.2
# Tue, 18 Jun 2019 23:54:38 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='9d886582a465da28d9ec2279c933adf688698c67002a1a99070fbb575878282f';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04_openj9-0.14.2/OpenJDK8U-jre_ppc64le_linux_openj9_8u212b04_openj9-0.14.2.tar.gz';          ;;        s390x)          ESUM='9200e492e5e468b69e84c8a9e91b63c4819133409f67ef7ba0f978795792d66d';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04_openj9-0.14.2/OpenJDK8U-jre_s390x_linux_openj9_8u212b04_openj9-0.14.2.tar.gz';          ;;        amd64|x86_64)          ESUM='b0c0aac53694b2ada3a9fdcbb3e9461257a54b50b4573d786d7b0778d6356805';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04_openj9-0.14.2/OpenJDK8U-jre_x64_linux_openj9_8u212b04_openj9-0.14.2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Tue, 18 Jun 2019 23:54:43 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jun 2019 23:54:46 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+UseContainerSupport -XX:+IdleTuningCompactOnIdle -XX:+IdleTuningGcOnIdle
# Wed, 19 Jun 2019 02:35:13 GMT
ARG LIBERTY_VERSION=19.0.0.5
# Wed, 19 Jun 2019 02:44:18 GMT
ARG LIBERTY_SHA=180a2499f42f7469df06bbe39e27a5b0268113f8
# Wed, 19 Jun 2019 02:44:20 GMT
ARG LIBERTY_BUILD_LABEL=cl190520190522-2227
# Wed, 19 Jun 2019 02:44:24 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.5/openliberty-javaee8-19.0.0.5.zip
# Wed, 19 Jun 2019 02:44:25 GMT
LABEL org.opencontainers.image.authors=Arthur De Magalhaes, Andy Naumann org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl190520190522-2227
# Wed, 19 Jun 2019 02:44:27 GMT
COPY dir:8fa97f796b5791935d245816c680a53be6b8eba6d1d65b789acd46ff4b30c0c5 in /opt/ol/helpers 
# Wed, 19 Jun 2019 02:44:53 GMT
# ARGS: LIBERTY_BUILD_LABEL=cl190520190522-2227 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.5/openliberty-javaee8-19.0.0.5.zip LIBERTY_SHA=180a2499f42f7469df06bbe39e27a5b0268113f8 LIBERTY_VERSION=19.0.0.5
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && curl -L -s -A UA-Open-Liberty-Docker -o /tmp/wlp.zip $LIBERTY_DOWNLOAD_URL     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Wed, 19 Jun 2019 02:44:57 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 19 Jun 2019 02:45:01 GMT
# ARGS: LIBERTY_BUILD_LABEL=cl190520190522-2227 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.5/openliberty-javaee8-19.0.0.5.zip LIBERTY_SHA=180a2499f42f7469df06bbe39e27a5b0268113f8 LIBERTY_VERSION=19.0.0.5
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 19 Jun 2019 02:45:02 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ 
# Wed, 19 Jun 2019 02:45:07 GMT
# ARGS: LIBERTY_BUILD_LABEL=cl190520190522-2227 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.5/openliberty-javaee8-19.0.0.5.zip LIBERTY_SHA=180a2499f42f7469df06bbe39e27a5b0268113f8 LIBERTY_VERSION=19.0.0.5
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 19 Jun 2019 02:45:08 GMT
USER 1001
# Wed, 19 Jun 2019 02:45:10 GMT
EXPOSE 9080 9443
# Wed, 19 Jun 2019 02:45:12 GMT
ENV KEYSTORE_REQUIRED=true
# Wed, 19 Jun 2019 02:45:14 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Wed, 19 Jun 2019 02:45:17 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:ef5b5b197566d2f3081c54f8e5ce315ef1bb409a622708e21f26f8a316324dc9`  
		Last Modified: Tue, 18 Jun 2019 22:51:11 GMT  
		Size: 30.4 MB (30389695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb5943989879ea71f39058451b18a9cfe7c8d63d5e98bea0f8ce8398b662cfd`  
		Last Modified: Tue, 18 Jun 2019 22:51:00 GMT  
		Size: 35.2 KB (35187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03367c790f847a4fb9da497ba924c531b08ed840ced5ddebd576b1e617fdeabc`  
		Last Modified: Tue, 18 Jun 2019 22:51:00 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0dfc04432356cee71730dc1476c35948bcaa233371a0bee11cf8be333b28da`  
		Last Modified: Tue, 18 Jun 2019 22:50:59 GMT  
		Size: 189.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14abff6a0e552475435a05d38d36ad8ac5b697912335af1f5ae337ccacbf0980`  
		Last Modified: Tue, 18 Jun 2019 23:57:14 GMT  
		Size: 11.2 MB (11211224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7623aa5479dc8c2ede4ce27521db9b0b718fd1810fc012adf657fbea3bdb774`  
		Last Modified: Wed, 19 Jun 2019 00:01:06 GMT  
		Size: 48.1 MB (48131212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f04531c544eb3c007916ead019b4b3c10361800fa9f886807a9ef56a5d4f7d78`  
		Last Modified: Wed, 19 Jun 2019 03:17:15 GMT  
		Size: 2.3 KB (2339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1730002588ac71d4ea28de11e5410a07cee1327296d0e5473f8f9f07b5c25dda`  
		Last Modified: Wed, 19 Jun 2019 03:19:36 GMT  
		Size: 113.1 MB (113064148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6cc3b3eedf7424b9ff724f6a04cc6f5effe8bc08dbe533e45b3b1c5632d1a49`  
		Last Modified: Wed, 19 Jun 2019 03:17:15 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67be50637c508d8155422bb8da6b058fc6fa0af4f2c94a57bcc5d52e953aef33`  
		Last Modified: Wed, 19 Jun 2019 03:17:18 GMT  
		Size: 3.5 KB (3490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:javaee8-java8-openj9` - linux; s390x

```console
$ docker pull open-liberty@sha256:f91ca154d440c54fc6a41c30e769f2d447bc15fe88a8dc203bec094e710456e3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196946525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18c04357b792fc09ebd78d79cbebf8aa730dd4cff667c8380ee082b6d0442bdd`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 18 Jun 2019 21:42:25 GMT
ADD file:a2279da3a6bb25fe163ff2f525a032d1d3b872475150261b48a46805a1b871d9 in / 
# Tue, 18 Jun 2019 21:42:26 GMT
RUN [ -z "$(apt-get indextargets)" ]
# Tue, 18 Jun 2019 21:42:27 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Tue, 18 Jun 2019 21:42:28 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Tue, 18 Jun 2019 21:42:29 GMT
CMD ["/bin/bash"]
# Tue, 18 Jun 2019 22:02:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Jun 2019 22:02:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends curl ca-certificates locales     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 22:04:53 GMT
ENV JAVA_VERSION=jdk8u212-b04_openj9-0.14.2
# Tue, 18 Jun 2019 22:05:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='9d886582a465da28d9ec2279c933adf688698c67002a1a99070fbb575878282f';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04_openj9-0.14.2/OpenJDK8U-jre_ppc64le_linux_openj9_8u212b04_openj9-0.14.2.tar.gz';          ;;        s390x)          ESUM='9200e492e5e468b69e84c8a9e91b63c4819133409f67ef7ba0f978795792d66d';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04_openj9-0.14.2/OpenJDK8U-jre_s390x_linux_openj9_8u212b04_openj9-0.14.2.tar.gz';          ;;        amd64|x86_64)          ESUM='b0c0aac53694b2ada3a9fdcbb3e9461257a54b50b4573d786d7b0778d6356805';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04_openj9-0.14.2/OpenJDK8U-jre_x64_linux_openj9_8u212b04_openj9-0.14.2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Tue, 18 Jun 2019 22:05:22 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jun 2019 22:05:23 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+UseContainerSupport -XX:+IdleTuningCompactOnIdle -XX:+IdleTuningGcOnIdle
# Tue, 18 Jun 2019 22:52:56 GMT
ARG LIBERTY_VERSION=19.0.0.5
# Tue, 18 Jun 2019 22:55:54 GMT
ARG LIBERTY_SHA=180a2499f42f7469df06bbe39e27a5b0268113f8
# Tue, 18 Jun 2019 22:55:55 GMT
ARG LIBERTY_BUILD_LABEL=cl190520190522-2227
# Tue, 18 Jun 2019 22:55:55 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.5/openliberty-javaee8-19.0.0.5.zip
# Tue, 18 Jun 2019 22:55:55 GMT
LABEL org.opencontainers.image.authors=Arthur De Magalhaes, Andy Naumann org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl190520190522-2227
# Tue, 18 Jun 2019 22:55:56 GMT
COPY dir:8fa97f796b5791935d245816c680a53be6b8eba6d1d65b789acd46ff4b30c0c5 in /opt/ol/helpers 
# Tue, 18 Jun 2019 22:56:06 GMT
# ARGS: LIBERTY_BUILD_LABEL=cl190520190522-2227 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.5/openliberty-javaee8-19.0.0.5.zip LIBERTY_SHA=180a2499f42f7469df06bbe39e27a5b0268113f8 LIBERTY_VERSION=19.0.0.5
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && curl -L -s -A UA-Open-Liberty-Docker -o /tmp/wlp.zip $LIBERTY_DOWNLOAD_URL     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Tue, 18 Jun 2019 22:56:06 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Tue, 18 Jun 2019 22:56:07 GMT
# ARGS: LIBERTY_BUILD_LABEL=cl190520190522-2227 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.5/openliberty-javaee8-19.0.0.5.zip LIBERTY_SHA=180a2499f42f7469df06bbe39e27a5b0268113f8 LIBERTY_VERSION=19.0.0.5
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 18 Jun 2019 22:56:07 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ 
# Tue, 18 Jun 2019 22:56:08 GMT
# ARGS: LIBERTY_BUILD_LABEL=cl190520190522-2227 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-javaee8/19.0.0.5/openliberty-javaee8-19.0.0.5.zip LIBERTY_SHA=180a2499f42f7469df06bbe39e27a5b0268113f8 LIBERTY_VERSION=19.0.0.5
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Tue, 18 Jun 2019 22:56:08 GMT
USER 1001
# Tue, 18 Jun 2019 22:56:08 GMT
EXPOSE 9080 9443
# Tue, 18 Jun 2019 22:56:09 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 18 Jun 2019 22:56:09 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 18 Jun 2019 22:56:09 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:3e0ab3b7390d02875ba6655704ba528f120405db6e19a6c8014bacd27a2a2b07`  
		Last Modified: Tue, 18 Jun 2019 21:44:15 GMT  
		Size: 25.4 MB (25364931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8641916778260cb4957d491680516450d36f7590247405e9657afbd7ab582a71`  
		Last Modified: Tue, 18 Jun 2019 21:44:07 GMT  
		Size: 36.2 KB (36171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9dae6e8c4d6bcdbd01ec8e9e91d209bc0d0fb0e392fdb4ef5075d1e322fd3ac`  
		Last Modified: Tue, 18 Jun 2019 21:44:07 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756f46ae05c783e37b80e6d459322ed9643102a8da1ca620233c21a601cce8e4`  
		Last Modified: Tue, 18 Jun 2019 21:44:07 GMT  
		Size: 162.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5714d6b15c6e29d9bab4cd3f59c176cece01c1b7be8bceb2cf3e77699d57baad`  
		Last Modified: Tue, 18 Jun 2019 22:07:37 GMT  
		Size: 10.5 MB (10544056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d15091ce411ef1d5e2689d131f528758b71ce0634fd4742ad5d2bf3098eabe7`  
		Last Modified: Tue, 18 Jun 2019 22:13:49 GMT  
		Size: 47.9 MB (47929948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:881652025ce29c8b97374b37ccd116b21258e852cf6ca1357bfc031a11dc2fad`  
		Last Modified: Tue, 18 Jun 2019 23:08:32 GMT  
		Size: 2.3 KB (2310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebf98c731f7c2ee7270edd59bf0d19a5804ce80df7c637b87f03782284e7b8d3`  
		Last Modified: Tue, 18 Jun 2019 23:08:43 GMT  
		Size: 113.1 MB (113063442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8a9de42bcb630c38c14cf80621a829ed492692ee7a5655a7af8a20ab871e71d`  
		Last Modified: Tue, 18 Jun 2019 23:08:32 GMT  
		Size: 1.2 KB (1227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d96ce479d54e2ada30e45f8e9f9bfc93e146649ce9d605fe36896ca593f781c2`  
		Last Modified: Tue, 18 Jun 2019 23:08:32 GMT  
		Size: 3.4 KB (3434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
