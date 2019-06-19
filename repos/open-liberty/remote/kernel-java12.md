## `open-liberty:kernel-java12`

```console
$ docker pull open-liberty@sha256:4e4624991de60618884fe4caa3ab680141cd5f9ab04cde763fe581e766c4bb63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:kernel-java12` - linux; amd64

```console
$ docker pull open-liberty@sha256:afc59ab58f23f4b9d56ceafb159c4cca14076fa243218bd54631faa5d06f879a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.6 MB (213556573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1fb91536dd75135ff48a8d205b24eeb0c954d201d757c75de7d196803110792`
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
# Fri, 24 May 2019 23:46:20 GMT
ENV JAVA_VERSION=jdk-12.0.1+12_openj9-0.14.1
# Fri, 24 May 2019 23:46:41 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='4330c60a43e957554aa418a081d3fcd11302ec8c017eefccb3120abd73d0ef59';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12_openj9-0.14.1/OpenJDK12U-jre_ppc64le_linux_openj9_12.0.1_12_openj9-0.14.1.tar.gz';          ;;        s390x)          ESUM='0308979e526cae604eaf9bbb856e112911af2ca8f0180a78293dd9375a3cc289';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12_openj9-0.14.1/OpenJDK12U-jre_s390x_linux_openj9_12.0.1_12_openj9-0.14.1.tar.gz';          ;;        amd64|x86_64)          ESUM='24d6c5a6379cfb2bd93459aa51f3bc5507d992e147a4aae7e9d0159eb1d6849c';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12_openj9-0.14.1/OpenJDK12U-jre_x64_linux_openj9_12.0.1_12_openj9-0.14.1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Fri, 24 May 2019 23:46:43 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 23:46:44 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+UseContainerSupport -XX:+IdleTuningCompactOnIdle -XX:+IdleTuningGcOnIdle
# Tue, 11 Jun 2019 22:20:04 GMT
ARG LIBERTY_VERSION=19.0.0.5
# Tue, 11 Jun 2019 22:20:04 GMT
ARG LIBERTY_SHA=ee0fdbc716e9431b73d483555f0e267f007f0286
# Tue, 11 Jun 2019 22:20:05 GMT
ARG LIBERTY_BUILD_LABEL=cl190520190522-2227
# Tue, 11 Jun 2019 22:20:05 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.5/openliberty-runtime-19.0.0.5.zip
# Tue, 11 Jun 2019 22:20:05 GMT
LABEL org.opencontainers.image.authors=Arthur De Magalhaes, Andy Naumann org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl190520190522-2227
# Tue, 11 Jun 2019 22:20:05 GMT
COPY dir:8fa97f796b5791935d245816c680a53be6b8eba6d1d65b789acd46ff4b30c0c5 in /opt/ol/helpers 
# Tue, 11 Jun 2019 22:20:21 GMT
# ARGS: LIBERTY_BUILD_LABEL=cl190520190522-2227 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.5/openliberty-runtime-19.0.0.5.zip LIBERTY_SHA=ee0fdbc716e9431b73d483555f0e267f007f0286 LIBERTY_VERSION=19.0.0.5
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Tue, 11 Jun 2019 22:20:21 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Tue, 11 Jun 2019 22:20:23 GMT
# ARGS: LIBERTY_BUILD_LABEL=cl190520190522-2227 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.5/openliberty-runtime-19.0.0.5.zip LIBERTY_SHA=ee0fdbc716e9431b73d483555f0e267f007f0286 LIBERTY_VERSION=19.0.0.5
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 11 Jun 2019 22:20:23 GMT
COPY file:61ab4f403dec644521b1c9f99e2836a3aba7072444aca35a4748fe9eae6b6c30 in /opt/ol/wlp/lib/platform/java/ 
# Tue, 11 Jun 2019 22:20:23 GMT
# ARGS: LIBERTY_BUILD_LABEL=cl190520190522-2227 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.5/openliberty-runtime-19.0.0.5.zip LIBERTY_SHA=ee0fdbc716e9431b73d483555f0e267f007f0286 LIBERTY_VERSION=19.0.0.5
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /opt/ol/wlp/lib/platform/java/java9.options     && chmod -R g+rw /opt/ol/wlp/lib/platform/java/java9.options     && mkdir -p /home/default     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Tue, 11 Jun 2019 22:20:24 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ 
# Tue, 11 Jun 2019 22:20:24 GMT
USER 1001
# Tue, 11 Jun 2019 22:20:24 GMT
EXPOSE 9080 9443
# Tue, 11 Jun 2019 22:20:24 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 11 Jun 2019 22:20:24 GMT
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
	-	`sha256:d08ad568258863b72714e0670136093bc6c9f952ed544ad34b626ec8d0c34587`  
		Last Modified: Fri, 24 May 2019 23:50:23 GMT  
		Size: 41.9 MB (41912686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49014bb71efd6b8a290cff8f570f0b1315253c4fc57629ca9e966909b9067611`  
		Last Modified: Tue, 11 Jun 2019 22:25:10 GMT  
		Size: 2.3 KB (2309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d753b3b876895c067044a3f26de94cc6f4dc0cdef16241639560a383dee27713`  
		Last Modified: Tue, 11 Jun 2019 22:25:18 GMT  
		Size: 132.2 MB (132184832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1bc1b56d2446948b8e5cc868c3bc6d20a5517332cf2a6a4357360e84c1129bb`  
		Last Modified: Tue, 11 Jun 2019 22:25:10 GMT  
		Size: 855.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:285b580c8339efa8ffabeb6ce5207546ae2599f9b3e16e45aa9978ffcf4d5fd1`  
		Last Modified: Tue, 11 Jun 2019 22:25:10 GMT  
		Size: 721.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24f0868b6525ce263905ebc18acddb785e6a7e8fc0b341be2be2056189ce418d`  
		Last Modified: Tue, 11 Jun 2019 22:25:10 GMT  
		Size: 3.7 KB (3719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:kernel-java12` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:64d48a52397b1ad9880eaad0af938996ffd1aecadf80f95f0f7e30aabc234aea
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.6 MB (214601656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e882619acaeb8e2e3db99f0848d32cb0ad149f707b9a3c3026f68a58602d8209`
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
# Tue, 18 Jun 2019 23:55:49 GMT
ENV JAVA_VERSION=jdk-12.0.1+12_openj9-0.14.1
# Tue, 18 Jun 2019 23:56:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='4330c60a43e957554aa418a081d3fcd11302ec8c017eefccb3120abd73d0ef59';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12_openj9-0.14.1/OpenJDK12U-jre_ppc64le_linux_openj9_12.0.1_12_openj9-0.14.1.tar.gz';          ;;        s390x)          ESUM='0308979e526cae604eaf9bbb856e112911af2ca8f0180a78293dd9375a3cc289';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12_openj9-0.14.1/OpenJDK12U-jre_s390x_linux_openj9_12.0.1_12_openj9-0.14.1.tar.gz';          ;;        amd64|x86_64)          ESUM='24d6c5a6379cfb2bd93459aa51f3bc5507d992e147a4aae7e9d0159eb1d6849c';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12_openj9-0.14.1/OpenJDK12U-jre_x64_linux_openj9_12.0.1_12_openj9-0.14.1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Tue, 18 Jun 2019 23:56:35 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jun 2019 23:56:36 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+UseContainerSupport -XX:+IdleTuningCompactOnIdle -XX:+IdleTuningGcOnIdle
# Wed, 19 Jun 2019 02:37:51 GMT
ARG LIBERTY_VERSION=19.0.0.5
# Wed, 19 Jun 2019 02:37:53 GMT
ARG LIBERTY_SHA=ee0fdbc716e9431b73d483555f0e267f007f0286
# Wed, 19 Jun 2019 02:37:55 GMT
ARG LIBERTY_BUILD_LABEL=cl190520190522-2227
# Wed, 19 Jun 2019 02:37:56 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.5/openliberty-runtime-19.0.0.5.zip
# Wed, 19 Jun 2019 02:37:58 GMT
LABEL org.opencontainers.image.authors=Arthur De Magalhaes, Andy Naumann org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl190520190522-2227
# Wed, 19 Jun 2019 02:38:00 GMT
COPY dir:8fa97f796b5791935d245816c680a53be6b8eba6d1d65b789acd46ff4b30c0c5 in /opt/ol/helpers 
# Wed, 19 Jun 2019 02:38:28 GMT
# ARGS: LIBERTY_BUILD_LABEL=cl190520190522-2227 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.5/openliberty-runtime-19.0.0.5.zip LIBERTY_SHA=ee0fdbc716e9431b73d483555f0e267f007f0286 LIBERTY_VERSION=19.0.0.5
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Wed, 19 Jun 2019 02:38:31 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 19 Jun 2019 02:38:38 GMT
# ARGS: LIBERTY_BUILD_LABEL=cl190520190522-2227 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.5/openliberty-runtime-19.0.0.5.zip LIBERTY_SHA=ee0fdbc716e9431b73d483555f0e267f007f0286 LIBERTY_VERSION=19.0.0.5
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 19 Jun 2019 02:38:40 GMT
COPY file:61ab4f403dec644521b1c9f99e2836a3aba7072444aca35a4748fe9eae6b6c30 in /opt/ol/wlp/lib/platform/java/ 
# Wed, 19 Jun 2019 02:38:46 GMT
# ARGS: LIBERTY_BUILD_LABEL=cl190520190522-2227 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.5/openliberty-runtime-19.0.0.5.zip LIBERTY_SHA=ee0fdbc716e9431b73d483555f0e267f007f0286 LIBERTY_VERSION=19.0.0.5
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /opt/ol/wlp/lib/platform/java/java9.options     && chmod -R g+rw /opt/ol/wlp/lib/platform/java/java9.options     && mkdir -p /home/default     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 19 Jun 2019 02:38:48 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ 
# Wed, 19 Jun 2019 02:38:49 GMT
USER 1001
# Wed, 19 Jun 2019 02:38:51 GMT
EXPOSE 9080 9443
# Wed, 19 Jun 2019 02:38:53 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Wed, 19 Jun 2019 02:38:55 GMT
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
	-	`sha256:a6155d70dda1e42a6d2cf980b5f4d395e6da6c54ac57c4c1a8a0bcd1e99f0a91`  
		Last Modified: Wed, 19 Jun 2019 00:03:34 GMT  
		Size: 42.9 MB (42890719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d411100e1cae569fa03bccc3eda51f2a0f561feec2b77180369c7664d920e521`  
		Last Modified: Wed, 19 Jun 2019 03:11:49 GMT  
		Size: 2.3 KB (2341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc2923206df061b65b3305206e4badcb527f64c1551287a662f240171c812045`  
		Last Modified: Wed, 19 Jun 2019 03:13:06 GMT  
		Size: 130.1 MB (130065961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f67f3c81b80175652a67752cf8f2611511b260087a3b72546bbd9bb886d510f5`  
		Last Modified: Wed, 19 Jun 2019 03:11:49 GMT  
		Size: 922.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c21bb034417436bc7bcbe29eb896e3ec0ec4e8809ea05ca2bc0d75a068f3ec78`  
		Last Modified: Wed, 19 Jun 2019 03:11:49 GMT  
		Size: 721.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a1149d9b3f4716d6419ab911f963784816ee95bdbf551f35289b23204b8858`  
		Last Modified: Wed, 19 Jun 2019 03:11:49 GMT  
		Size: 3.8 KB (3841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:kernel-java12` - linux; s390x

```console
$ docker pull open-liberty@sha256:91f7a977a67a978a690b390f07b94a35bd4efe4695133c33e72423de2a93c64f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.8 MB (208751006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87ac24e7e1f04008a3c6c06ad73245d8f99475b40ce94559ea314e7119e9f8b8`
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
# Tue, 18 Jun 2019 22:06:05 GMT
ENV JAVA_VERSION=jdk-12.0.1+12_openj9-0.14.1
# Tue, 18 Jun 2019 22:06:58 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='4330c60a43e957554aa418a081d3fcd11302ec8c017eefccb3120abd73d0ef59';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12_openj9-0.14.1/OpenJDK12U-jre_ppc64le_linux_openj9_12.0.1_12_openj9-0.14.1.tar.gz';          ;;        s390x)          ESUM='0308979e526cae604eaf9bbb856e112911af2ca8f0180a78293dd9375a3cc289';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12_openj9-0.14.1/OpenJDK12U-jre_s390x_linux_openj9_12.0.1_12_openj9-0.14.1.tar.gz';          ;;        amd64|x86_64)          ESUM='24d6c5a6379cfb2bd93459aa51f3bc5507d992e147a4aae7e9d0159eb1d6849c';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12_openj9-0.14.1/OpenJDK12U-jre_x64_linux_openj9_12.0.1_12_openj9-0.14.1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Tue, 18 Jun 2019 22:06:58 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jun 2019 22:06:59 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+UseContainerSupport -XX:+IdleTuningCompactOnIdle -XX:+IdleTuningGcOnIdle
# Tue, 18 Jun 2019 22:53:44 GMT
ARG LIBERTY_VERSION=19.0.0.5
# Tue, 18 Jun 2019 22:53:45 GMT
ARG LIBERTY_SHA=ee0fdbc716e9431b73d483555f0e267f007f0286
# Tue, 18 Jun 2019 22:53:45 GMT
ARG LIBERTY_BUILD_LABEL=cl190520190522-2227
# Tue, 18 Jun 2019 22:53:45 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.5/openliberty-runtime-19.0.0.5.zip
# Tue, 18 Jun 2019 22:53:45 GMT
LABEL org.opencontainers.image.authors=Arthur De Magalhaes, Andy Naumann org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl190520190522-2227
# Tue, 18 Jun 2019 22:53:46 GMT
COPY dir:8fa97f796b5791935d245816c680a53be6b8eba6d1d65b789acd46ff4b30c0c5 in /opt/ol/helpers 
# Tue, 18 Jun 2019 22:53:57 GMT
# ARGS: LIBERTY_BUILD_LABEL=cl190520190522-2227 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.5/openliberty-runtime-19.0.0.5.zip LIBERTY_SHA=ee0fdbc716e9431b73d483555f0e267f007f0286 LIBERTY_VERSION=19.0.0.5
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && rm -rf /var/lib/apt/lists/*     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Tue, 18 Jun 2019 22:53:57 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Tue, 18 Jun 2019 22:53:58 GMT
# ARGS: LIBERTY_BUILD_LABEL=cl190520190522-2227 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.5/openliberty-runtime-19.0.0.5.zip LIBERTY_SHA=ee0fdbc716e9431b73d483555f0e267f007f0286 LIBERTY_VERSION=19.0.0.5
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 18 Jun 2019 22:53:58 GMT
COPY file:61ab4f403dec644521b1c9f99e2836a3aba7072444aca35a4748fe9eae6b6c30 in /opt/ol/wlp/lib/platform/java/ 
# Tue, 18 Jun 2019 22:54:01 GMT
# ARGS: LIBERTY_BUILD_LABEL=cl190520190522-2227 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.5/openliberty-runtime-19.0.0.5.zip LIBERTY_SHA=ee0fdbc716e9431b73d483555f0e267f007f0286 LIBERTY_VERSION=19.0.0.5
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /opt/ol/wlp/lib/platform/java/java9.options     && chmod -R g+rw /opt/ol/wlp/lib/platform/java/java9.options     && mkdir -p /home/default     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Tue, 18 Jun 2019 22:54:02 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ 
# Tue, 18 Jun 2019 22:54:03 GMT
USER 1001
# Tue, 18 Jun 2019 22:54:03 GMT
EXPOSE 9080 9443
# Tue, 18 Jun 2019 22:54:03 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 18 Jun 2019 22:54:04 GMT
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
	-	`sha256:40d02ee146890ed5ddc701beb3294fe97da496728461662e67c28be47a71f970`  
		Last Modified: Tue, 18 Jun 2019 22:25:21 GMT  
		Size: 42.7 MB (42731986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91d26f2f2c5afeca407d17e998a0728c01d0d88c2afea0d3bacd0c1e2909a6b4`  
		Last Modified: Tue, 18 Jun 2019 23:06:58 GMT  
		Size: 2.3 KB (2310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd19eaaa8596313bc0bb0e4eab0e48ded3a3bde202d8c99cc9d7c664466e1f67`  
		Last Modified: Tue, 18 Jun 2019 23:07:06 GMT  
		Size: 130.1 MB (130065249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd579e984f9be8cd8a9ff58e1ef0987b5e9a9c694ce5d854e9da5a2137da363c`  
		Last Modified: Tue, 18 Jun 2019 23:06:57 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13734f4054e56f85573a8239c6c8cc29ea85943089c54ebfc40fc1762db29841`  
		Last Modified: Tue, 18 Jun 2019 23:06:57 GMT  
		Size: 718.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d0b0a69e03918c6381750938d924a1f120b5e410524d0776dab1542239b82fc`  
		Last Modified: Tue, 18 Jun 2019 23:06:57 GMT  
		Size: 3.7 KB (3723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
