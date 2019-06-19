## `open-liberty:webProfile8-java11`

```console
$ docker pull open-liberty@sha256:61da98811aacff15053499d915b6485e0025504838a7b8bb846dab2ba5c83f94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:webProfile8-java11` - linux; amd64

```console
$ docker pull open-liberty@sha256:24a5a660ef8d214e0ba8f2b21dab729ee73accd04d560ab3e860c27a5b269eaf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **165.8 MB (165755105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10246f74e535eacde61ba537dd0dc2efcd656fcf7e961a0f4d89c1f40da58058`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Wed, 15 May 2019 21:20:23 GMT
ADD file:1f4fdc61e133d2f9019d8a06a8126fef0ed4339cb25fda73446393fe8da197c5 in / 
# Wed, 15 May 2019 21:20:24 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:20:25 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:20:25 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:20:25 GMT
CMD ["/bin/bash"]
# Fri, 24 May 2019 23:43:48 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 24 May 2019 23:44:14 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends curl ca-certificates locales     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/*
# Mon, 10 Jun 2019 19:19:57 GMT
ENV JAVA_VERSION=jdk-11.0.3+7_openj9-0.14.3
# Mon, 10 Jun 2019 19:20:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='4800bd31dbb2b7bf7dabcee9c22b6ffe7b8fd167fa530b5c1aa95d53696a9bcf';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7_openj9-0.14.3/OpenJDK11U-jre_ppc64le_linux_openj9_11.0.3_7_openj9-0.14.3.tar.gz';          ;;        s390x)          ESUM='73a734c004c2f5e2ec21734908c683a38560c709f85d8782a25630183315e0e5';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7_openj9-0.14.3/OpenJDK11U-jre_s390x_linux_openj9_11.0.3_7_openj9-0.14.3.tar.gz';          ;;        amd64|x86_64)          ESUM='493a90023447f9f422db011560732cb018795023ed1166dfc04ffa18a4c1fb83';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7_openj9-0.14.3/OpenJDK11U-jre_x64_linux_openj9_11.0.3_7_openj9-0.14.3.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 10 Jun 2019 19:20:20 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Jun 2019 19:20:21 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+UseContainerSupport -XX:+IdleTuningCompactOnIdle -XX:+IdleTuningGcOnIdle
# Mon, 10 Jun 2019 19:37:42 GMT
ARG LIBERTY_VERSION=19.0.0.5
# Mon, 10 Jun 2019 19:38:23 GMT
ARG LIBERTY_SHA=d0b7dfe4f5f2f4c7b6280081c123aab3fc90fdcc
# Mon, 10 Jun 2019 19:38:23 GMT
ARG LIBERTY_BUILD_LABEL=cl190520190522-2227
# Mon, 10 Jun 2019 19:38:24 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.5/openliberty-webProfile8-19.0.0.5.zip
# Mon, 10 Jun 2019 19:38:24 GMT
LABEL org.opencontainers.image.authors=Arthur De Magalhaes, Andy Naumann org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl190520190522-2227
# Mon, 10 Jun 2019 19:38:24 GMT
COPY dir:8fa97f796b5791935d245816c680a53be6b8eba6d1d65b789acd46ff4b30c0c5 in /opt/ol/helpers 
# Mon, 10 Jun 2019 19:38:34 GMT
# ARGS: LIBERTY_BUILD_LABEL=cl190520190522-2227 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.5/openliberty-webProfile8-19.0.0.5.zip LIBERTY_SHA=d0b7dfe4f5f2f4c7b6280081c123aab3fc90fdcc LIBERTY_VERSION=19.0.0.5
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Mon, 10 Jun 2019 19:38:34 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Mon, 10 Jun 2019 19:38:35 GMT
# ARGS: LIBERTY_BUILD_LABEL=cl190520190522-2227 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.5/openliberty-webProfile8-19.0.0.5.zip LIBERTY_SHA=d0b7dfe4f5f2f4c7b6280081c123aab3fc90fdcc LIBERTY_VERSION=19.0.0.5
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 10 Jun 2019 19:38:36 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ 
# Mon, 10 Jun 2019 19:38:36 GMT
COPY file:61ab4f403dec644521b1c9f99e2836a3aba7072444aca35a4748fe9eae6b6c30 in /opt/ol/wlp/lib/platform/java/ 
# Mon, 10 Jun 2019 19:38:37 GMT
# ARGS: LIBERTY_BUILD_LABEL=cl190520190522-2227 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.5/openliberty-webProfile8-19.0.0.5.zip LIBERTY_SHA=d0b7dfe4f5f2f4c7b6280081c123aab3fc90fdcc LIBERTY_VERSION=19.0.0.5
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /opt/ol/wlp/lib/platform/java/java9.options     && chmod -R g+rw /opt/ol/wlp/lib/platform/java/java9.options     && mkdir -p /home/default     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Mon, 10 Jun 2019 19:38:37 GMT
USER 1001
# Mon, 10 Jun 2019 19:38:37 GMT
EXPOSE 9080 9443
# Mon, 10 Jun 2019 19:38:37 GMT
ENV KEYSTORE_REQUIRED=true
# Mon, 10 Jun 2019 19:38:37 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Mon, 10 Jun 2019 19:38:37 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:6abc03819f3e00a67ed5adc1132cfec041d5f7ec3c29d5416ba0433877547b6f`  
		Last Modified: Wed, 15 May 2019 21:21:40 GMT  
		Size: 28.9 MB (28855068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05731e63f21105725a5c062a725b33a54ad8c697f9c810870c6aa3e3cd9fb6a2`  
		Last Modified: Wed, 15 May 2019 21:21:36 GMT  
		Size: 844.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bd67c50d6beeb55108476f72bea3b4b29a9f48832d6e045ec66b7ac4bf712a0`  
		Last Modified: Wed, 15 May 2019 21:21:35 GMT  
		Size: 164.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d9f9dc0e62752cdf7d28e2e0619b0c97acecb2e5a66b3752e1f5282fe5d0b0b`  
		Last Modified: Fri, 24 May 2019 23:47:02 GMT  
		Size: 10.6 MB (10595375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e80f359e00c48a76cc5f70ac6ede2070291c61123828861c3c9740c8c4fd7a8a`  
		Last Modified: Mon, 10 Jun 2019 19:21:44 GMT  
		Size: 41.8 MB (41766636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08978ec50ed18c883811f38c14555b04408689e5374d3a43244692c1eb18d626`  
		Last Modified: Mon, 10 Jun 2019 19:45:23 GMT  
		Size: 2.3 KB (2313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5a3432c8a01c25c4a648dc5bd91c70740dcda0314a99ca39b16674f5867fe55`  
		Last Modified: Mon, 10 Jun 2019 19:45:29 GMT  
		Size: 84.5 MB (84529481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32997c90354ad322a5949309111224e1f2a608871689399a5efd138fa27cddf6`  
		Last Modified: Mon, 10 Jun 2019 19:45:23 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55e2686015f137870672c7513a1a95af382a96dc8af218c3c1ffac81e20cc6ed`  
		Last Modified: Mon, 10 Jun 2019 19:45:23 GMT  
		Size: 718.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:096e782dd9c3ed2b5153d99611bd4af354b79532bbfec1fb2425e8a73dacb3bc`  
		Last Modified: Mon, 10 Jun 2019 19:45:23 GMT  
		Size: 3.6 KB (3641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile8-java11` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:9288c19a4e2789059e3c54d56cccb5a14846a0cc60b6e0ba6f61abb3980123e5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.8 MB (166801255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cba40f59d985af1369daff031ba95bf9419160d84992f63d1b8558c9d93716b`
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
# Tue, 18 Jun 2019 23:54:54 GMT
ENV JAVA_VERSION=jdk-11.0.3+7_openj9-0.14.3
# Tue, 18 Jun 2019 23:55:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='4800bd31dbb2b7bf7dabcee9c22b6ffe7b8fd167fa530b5c1aa95d53696a9bcf';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7_openj9-0.14.3/OpenJDK11U-jre_ppc64le_linux_openj9_11.0.3_7_openj9-0.14.3.tar.gz';          ;;        s390x)          ESUM='73a734c004c2f5e2ec21734908c683a38560c709f85d8782a25630183315e0e5';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7_openj9-0.14.3/OpenJDK11U-jre_s390x_linux_openj9_11.0.3_7_openj9-0.14.3.tar.gz';          ;;        amd64|x86_64)          ESUM='493a90023447f9f422db011560732cb018795023ed1166dfc04ffa18a4c1fb83';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7_openj9-0.14.3/OpenJDK11U-jre_x64_linux_openj9_11.0.3_7_openj9-0.14.3.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Tue, 18 Jun 2019 23:55:42 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jun 2019 23:55:44 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+UseContainerSupport -XX:+IdleTuningCompactOnIdle -XX:+IdleTuningGcOnIdle
# Wed, 19 Jun 2019 02:36:25 GMT
ARG LIBERTY_VERSION=19.0.0.5
# Wed, 19 Jun 2019 02:41:15 GMT
ARG LIBERTY_SHA=d0b7dfe4f5f2f4c7b6280081c123aab3fc90fdcc
# Wed, 19 Jun 2019 02:41:17 GMT
ARG LIBERTY_BUILD_LABEL=cl190520190522-2227
# Wed, 19 Jun 2019 02:41:18 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.5/openliberty-webProfile8-19.0.0.5.zip
# Wed, 19 Jun 2019 02:41:20 GMT
LABEL org.opencontainers.image.authors=Arthur De Magalhaes, Andy Naumann org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl190520190522-2227
# Wed, 19 Jun 2019 02:41:21 GMT
COPY dir:8fa97f796b5791935d245816c680a53be6b8eba6d1d65b789acd46ff4b30c0c5 in /opt/ol/helpers 
# Wed, 19 Jun 2019 02:41:45 GMT
# ARGS: LIBERTY_BUILD_LABEL=cl190520190522-2227 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.5/openliberty-webProfile8-19.0.0.5.zip LIBERTY_SHA=d0b7dfe4f5f2f4c7b6280081c123aab3fc90fdcc LIBERTY_VERSION=19.0.0.5
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Wed, 19 Jun 2019 02:41:48 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 19 Jun 2019 02:41:55 GMT
# ARGS: LIBERTY_BUILD_LABEL=cl190520190522-2227 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.5/openliberty-webProfile8-19.0.0.5.zip LIBERTY_SHA=d0b7dfe4f5f2f4c7b6280081c123aab3fc90fdcc LIBERTY_VERSION=19.0.0.5
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 19 Jun 2019 02:41:56 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ 
# Wed, 19 Jun 2019 02:41:57 GMT
COPY file:61ab4f403dec644521b1c9f99e2836a3aba7072444aca35a4748fe9eae6b6c30 in /opt/ol/wlp/lib/platform/java/ 
# Wed, 19 Jun 2019 02:42:02 GMT
# ARGS: LIBERTY_BUILD_LABEL=cl190520190522-2227 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.5/openliberty-webProfile8-19.0.0.5.zip LIBERTY_SHA=d0b7dfe4f5f2f4c7b6280081c123aab3fc90fdcc LIBERTY_VERSION=19.0.0.5
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /opt/ol/wlp/lib/platform/java/java9.options     && chmod -R g+rw /opt/ol/wlp/lib/platform/java/java9.options     && mkdir -p /home/default     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 19 Jun 2019 02:42:03 GMT
USER 1001
# Wed, 19 Jun 2019 02:42:06 GMT
EXPOSE 9080 9443
# Wed, 19 Jun 2019 02:42:08 GMT
ENV KEYSTORE_REQUIRED=true
# Wed, 19 Jun 2019 02:42:10 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Wed, 19 Jun 2019 02:42:12 GMT
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
	-	`sha256:1617e978c9d6878c38269aec4707cc342dcbe355d6ad3c2e673dacb537f97222`  
		Last Modified: Wed, 19 Jun 2019 00:02:20 GMT  
		Size: 42.7 MB (42749265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe5cf9fd7e97542225649c7879a81d8ab1879a0763500f372fd290fdf51ae681`  
		Last Modified: Wed, 19 Jun 2019 03:15:26 GMT  
		Size: 2.3 KB (2338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aad66694e63378c2800bf1bcf57d303574fb692494d0bb936ce3342c97d7c0bb`  
		Last Modified: Wed, 19 Jun 2019 03:16:18 GMT  
		Size: 82.4 MB (82407116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:708e38a3fa149ca2c476431e4e668b2474044750d9adda4f6496e8dd2b035ab0`  
		Last Modified: Wed, 19 Jun 2019 03:15:26 GMT  
		Size: 928.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bcdb63bb49309dd94d344f79996f655d139471885a81813fddbe6cc4eb6cda6`  
		Last Modified: Wed, 19 Jun 2019 03:15:26 GMT  
		Size: 721.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55b72eaa989882b4c0552164473f0faddb56b64327e9c0d0e8ab786d09b6ee9`  
		Last Modified: Wed, 19 Jun 2019 03:15:27 GMT  
		Size: 3.7 KB (3736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:webProfile8-java11` - linux; s390x

```console
$ docker pull open-liberty@sha256:f36a4f7e8e6cbd9eda2558a3f2fc330bb260f61682eb7d4e00296588115f7614
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.0 MB (160954471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b883f49326594b1e7ab6738f44d50c9d2a00970a9e0b9d8711736d8459be4216`
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
# Tue, 18 Jun 2019 22:05:28 GMT
ENV JAVA_VERSION=jdk-11.0.3+7_openj9-0.14.3
# Tue, 18 Jun 2019 22:05:59 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='4800bd31dbb2b7bf7dabcee9c22b6ffe7b8fd167fa530b5c1aa95d53696a9bcf';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7_openj9-0.14.3/OpenJDK11U-jre_ppc64le_linux_openj9_11.0.3_7_openj9-0.14.3.tar.gz';          ;;        s390x)          ESUM='73a734c004c2f5e2ec21734908c683a38560c709f85d8782a25630183315e0e5';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7_openj9-0.14.3/OpenJDK11U-jre_s390x_linux_openj9_11.0.3_7_openj9-0.14.3.tar.gz';          ;;        amd64|x86_64)          ESUM='493a90023447f9f422db011560732cb018795023ed1166dfc04ffa18a4c1fb83';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7_openj9-0.14.3/OpenJDK11U-jre_x64_linux_openj9_11.0.3_7_openj9-0.14.3.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Tue, 18 Jun 2019 22:06:00 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jun 2019 22:06:00 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+UseContainerSupport -XX:+IdleTuningCompactOnIdle -XX:+IdleTuningGcOnIdle
# Tue, 18 Jun 2019 22:53:18 GMT
ARG LIBERTY_VERSION=19.0.0.5
# Tue, 18 Jun 2019 22:54:48 GMT
ARG LIBERTY_SHA=d0b7dfe4f5f2f4c7b6280081c123aab3fc90fdcc
# Tue, 18 Jun 2019 22:54:48 GMT
ARG LIBERTY_BUILD_LABEL=cl190520190522-2227
# Tue, 18 Jun 2019 22:54:48 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.5/openliberty-webProfile8-19.0.0.5.zip
# Tue, 18 Jun 2019 22:54:49 GMT
LABEL org.opencontainers.image.authors=Arthur De Magalhaes, Andy Naumann org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl190520190522-2227
# Tue, 18 Jun 2019 22:54:49 GMT
COPY dir:8fa97f796b5791935d245816c680a53be6b8eba6d1d65b789acd46ff4b30c0c5 in /opt/ol/helpers 
# Tue, 18 Jun 2019 22:54:59 GMT
# ARGS: LIBERTY_BUILD_LABEL=cl190520190522-2227 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.5/openliberty-webProfile8-19.0.0.5.zip LIBERTY_SHA=d0b7dfe4f5f2f4c7b6280081c123aab3fc90fdcc LIBERTY_VERSION=19.0.0.5
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Tue, 18 Jun 2019 22:54:59 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Tue, 18 Jun 2019 22:55:00 GMT
# ARGS: LIBERTY_BUILD_LABEL=cl190520190522-2227 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.5/openliberty-webProfile8-19.0.0.5.zip LIBERTY_SHA=d0b7dfe4f5f2f4c7b6280081c123aab3fc90fdcc LIBERTY_VERSION=19.0.0.5
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 18 Jun 2019 22:55:01 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ 
# Tue, 18 Jun 2019 22:55:01 GMT
COPY file:61ab4f403dec644521b1c9f99e2836a3aba7072444aca35a4748fe9eae6b6c30 in /opt/ol/wlp/lib/platform/java/ 
# Tue, 18 Jun 2019 22:55:02 GMT
# ARGS: LIBERTY_BUILD_LABEL=cl190520190522-2227 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-webProfile8/19.0.0.5/openliberty-webProfile8-19.0.0.5.zip LIBERTY_SHA=d0b7dfe4f5f2f4c7b6280081c123aab3fc90fdcc LIBERTY_VERSION=19.0.0.5
RUN mkdir /logs     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /opt/ol/wlp/lib/platform/java/java9.options     && chmod -R g+rw /opt/ol/wlp/lib/platform/java/java9.options     && mkdir -p /home/default     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Tue, 18 Jun 2019 22:55:02 GMT
USER 1001
# Tue, 18 Jun 2019 22:55:02 GMT
EXPOSE 9080 9443
# Tue, 18 Jun 2019 22:55:03 GMT
ENV KEYSTORE_REQUIRED=true
# Tue, 18 Jun 2019 22:55:03 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 18 Jun 2019 22:55:03 GMT
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
	-	`sha256:94975cbf5b8cb183d95c9762e6df98f7976a55bb5db1965b67b40b4a6c2dbf5d`  
		Last Modified: Tue, 18 Jun 2019 22:21:30 GMT  
		Size: 42.6 MB (42594232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16da1d160c5cd3ee9db2f1124da29a8f104f16b0637fe84b7672bc02b8743346`  
		Last Modified: Tue, 18 Jun 2019 23:07:39 GMT  
		Size: 2.3 KB (2311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:faccb03fe4fd16e871c46e26a4155eb59506385a189adb4fc6db60d73e23dbda`  
		Last Modified: Tue, 18 Jun 2019 23:07:48 GMT  
		Size: 82.4 MB (82406524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0be609784fee985f624539c0ebf2599d92ea8a68bbd4566c7c85b736c4d5975c`  
		Last Modified: Tue, 18 Jun 2019 23:07:39 GMT  
		Size: 865.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a30861e05696b1d24cf37cf772533f113fef29ae6cb5a90032bb0bcc0a4bfbe1`  
		Last Modified: Tue, 18 Jun 2019 23:07:39 GMT  
		Size: 721.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb1e3266829b15521d663fa23ed6ed0b97ac68b1e2ef2cc37217fb6ccde5d58`  
		Last Modified: Tue, 18 Jun 2019 23:07:39 GMT  
		Size: 3.7 KB (3654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
