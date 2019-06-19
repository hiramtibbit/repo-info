## `open-liberty:microProfile1-java8-openj9`

```console
$ docker pull open-liberty@sha256:c68d71ce4e6538cf4e4c64ac1dc83794985546d7f4ab99f5b9845a0ba0a16787
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le
	-	linux; s390x

### `open-liberty:microProfile1-java8-openj9` - linux; amd64

```console
$ docker pull open-liberty@sha256:95d1016d13c389b4665b942803bd78ee1c2b5b0199fe120cd3f20f9eed8490fb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.3 MB (217252948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d7a61bd2fadeea0dc301c00254c001b5f0c3e3ca10a458d3e7037e65996c599`
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
# Mon, 10 Jun 2019 19:19:37 GMT
ENV JAVA_VERSION=jdk8u212-b04_openj9-0.14.2
# Mon, 10 Jun 2019 19:19:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='9d886582a465da28d9ec2279c933adf688698c67002a1a99070fbb575878282f';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04_openj9-0.14.2/OpenJDK8U-jre_ppc64le_linux_openj9_8u212b04_openj9-0.14.2.tar.gz';          ;;        s390x)          ESUM='9200e492e5e468b69e84c8a9e91b63c4819133409f67ef7ba0f978795792d66d';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04_openj9-0.14.2/OpenJDK8U-jre_s390x_linux_openj9_8u212b04_openj9-0.14.2.tar.gz';          ;;        amd64|x86_64)          ESUM='b0c0aac53694b2ada3a9fdcbb3e9461257a54b50b4573d786d7b0778d6356805';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04_openj9-0.14.2/OpenJDK8U-jre_x64_linux_openj9_8u212b04_openj9-0.14.2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 10 Jun 2019 19:19:54 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Jun 2019 19:19:55 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+UseContainerSupport -XX:+IdleTuningCompactOnIdle -XX:+IdleTuningGcOnIdle
# Mon, 10 Jun 2019 19:37:22 GMT
ARG LIBERTY_VERSION=19.0.0.5
# Mon, 10 Jun 2019 19:37:22 GMT
ARG LIBERTY_SHA=ee0fdbc716e9431b73d483555f0e267f007f0286
# Mon, 10 Jun 2019 19:37:23 GMT
ARG LIBERTY_BUILD_LABEL=cl190520190522-2227
# Mon, 10 Jun 2019 19:37:23 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.5/openliberty-runtime-19.0.0.5.zip
# Mon, 10 Jun 2019 19:37:23 GMT
LABEL org.opencontainers.image.authors=Arthur De Magalhaes, Andy Naumann org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl190520190522-2227
# Mon, 10 Jun 2019 19:37:23 GMT
COPY dir:8fa97f796b5791935d245816c680a53be6b8eba6d1d65b789acd46ff4b30c0c5 in /opt/ol/helpers 
# Mon, 10 Jun 2019 19:37:36 GMT
# ARGS: LIBERTY_BUILD_LABEL=cl190520190522-2227 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.5/openliberty-runtime-19.0.0.5.zip LIBERTY_SHA=ee0fdbc716e9431b73d483555f0e267f007f0286 LIBERTY_VERSION=19.0.0.5
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && curl -L -s -A UA-Open-Liberty-Docker -o /tmp/wlp.zip $LIBERTY_DOWNLOAD_URL     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Mon, 10 Jun 2019 19:37:37 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Mon, 10 Jun 2019 19:37:38 GMT
# ARGS: LIBERTY_BUILD_LABEL=cl190520190522-2227 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.5/openliberty-runtime-19.0.0.5.zip LIBERTY_SHA=ee0fdbc716e9431b73d483555f0e267f007f0286 LIBERTY_VERSION=19.0.0.5
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 10 Jun 2019 19:37:38 GMT
# ARGS: LIBERTY_BUILD_LABEL=cl190520190522-2227 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.5/openliberty-runtime-19.0.0.5.zip LIBERTY_SHA=ee0fdbc716e9431b73d483555f0e267f007f0286 LIBERTY_VERSION=19.0.0.5
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Mon, 10 Jun 2019 19:37:38 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ 
# Mon, 10 Jun 2019 19:37:39 GMT
USER 1001
# Mon, 10 Jun 2019 19:37:39 GMT
EXPOSE 9080 9443
# Mon, 10 Jun 2019 19:37:39 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Mon, 10 Jun 2019 19:37:39 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Mon, 10 Jun 2019 19:39:23 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
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
	-	`sha256:121d62cc7824c82fd0d75ebd35daa485e47d852ecfc5bdf51beded140e8f07ab`  
		Last Modified: Mon, 10 Jun 2019 19:21:11 GMT  
		Size: 47.7 MB (47733863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fee184639a821dd694d0f31602b761533abc01fbc9f39a9244a305502671906a`  
		Last Modified: Mon, 10 Jun 2019 19:44:48 GMT  
		Size: 2.3 KB (2310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d971eafa9526e5ee44ebba24d6caa1a8e50a089d670051b12a048c004bce272`  
		Last Modified: Mon, 10 Jun 2019 19:44:56 GMT  
		Size: 130.1 MB (130060764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08914296565bb123f8a3fcf54ab8e0c0bf306b30b9e557888ae33fd83a019ac5`  
		Last Modified: Mon, 10 Jun 2019 19:44:47 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee5c7e28f7b957816091e323ec5683a46e229f185dba58aa7445a92a6a364a79`  
		Last Modified: Mon, 10 Jun 2019 19:44:48 GMT  
		Size: 3.2 KB (3155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac53d8b5a6e8fbfccde8030e13f6ddb0a02a0af09dad1c4b9a3bb455fdad7d76`  
		Last Modified: Mon, 10 Jun 2019 19:45:57 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile1-java8-openj9` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:c3f85bea8c4b145da1d4ac7329dd2cc73acd539dff5bc445cd28c880665db7da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.8 MB (219837527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ce8dea7947fb485509c09846ace9df600002326819f838bb0db955be76ed3db`
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
# Wed, 19 Jun 2019 02:35:15 GMT
ARG LIBERTY_SHA=ee0fdbc716e9431b73d483555f0e267f007f0286
# Wed, 19 Jun 2019 02:35:16 GMT
ARG LIBERTY_BUILD_LABEL=cl190520190522-2227
# Wed, 19 Jun 2019 02:35:18 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.5/openliberty-runtime-19.0.0.5.zip
# Wed, 19 Jun 2019 02:35:20 GMT
LABEL org.opencontainers.image.authors=Arthur De Magalhaes, Andy Naumann org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl190520190522-2227
# Wed, 19 Jun 2019 02:35:20 GMT
COPY dir:8fa97f796b5791935d245816c680a53be6b8eba6d1d65b789acd46ff4b30c0c5 in /opt/ol/helpers 
# Wed, 19 Jun 2019 02:35:51 GMT
# ARGS: LIBERTY_BUILD_LABEL=cl190520190522-2227 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.5/openliberty-runtime-19.0.0.5.zip LIBERTY_SHA=ee0fdbc716e9431b73d483555f0e267f007f0286 LIBERTY_VERSION=19.0.0.5
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && curl -L -s -A UA-Open-Liberty-Docker -o /tmp/wlp.zip $LIBERTY_DOWNLOAD_URL     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Wed, 19 Jun 2019 02:35:54 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Wed, 19 Jun 2019 02:36:02 GMT
# ARGS: LIBERTY_BUILD_LABEL=cl190520190522-2227 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.5/openliberty-runtime-19.0.0.5.zip LIBERTY_SHA=ee0fdbc716e9431b73d483555f0e267f007f0286 LIBERTY_VERSION=19.0.0.5
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Wed, 19 Jun 2019 02:36:08 GMT
# ARGS: LIBERTY_BUILD_LABEL=cl190520190522-2227 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.5/openliberty-runtime-19.0.0.5.zip LIBERTY_SHA=ee0fdbc716e9431b73d483555f0e267f007f0286 LIBERTY_VERSION=19.0.0.5
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Wed, 19 Jun 2019 02:36:11 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ 
# Wed, 19 Jun 2019 02:36:13 GMT
USER 1001
# Wed, 19 Jun 2019 02:36:15 GMT
EXPOSE 9080 9443
# Wed, 19 Jun 2019 02:36:19 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Wed, 19 Jun 2019 02:36:21 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Wed, 19 Jun 2019 02:47:38 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
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
	-	`sha256:fffb52a8114859d9a510f666c65efa3b63ea5dc80f0a1016ff9a9285d67dd2c2`  
		Last Modified: Wed, 19 Jun 2019 03:10:35 GMT  
		Size: 2.3 KB (2337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bb1179026376fc77ec1976a0567cea743f434b587b927aee15fce920ce8c995`  
		Last Modified: Wed, 19 Jun 2019 03:11:09 GMT  
		Size: 130.1 MB (130062097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3989b473df372e1301ec1eccdb6d1884663add0597ef4580b5bbc73a7e452342`  
		Last Modified: Wed, 19 Jun 2019 03:10:35 GMT  
		Size: 929.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e927756d6421dfe9f37264ed7bef4f8a5150f93216b4ab4dd00a4615e3e49b41`  
		Last Modified: Wed, 19 Jun 2019 03:10:35 GMT  
		Size: 3.2 KB (3249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd5b482b7b84cef5c30b236de1d07faae269f40f75ae0d23a0cd0f90d0393da2`  
		Last Modified: Wed, 19 Jun 2019 03:21:27 GMT  
		Size: 552.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `open-liberty:microProfile1-java8-openj9` - linux; s390x

```console
$ docker pull open-liberty@sha256:11a95166e507b28613c91741f939db9a1b96b847aae11d7d9c3594a0c00ccc6e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.9 MB (213944299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b119ad4ea4bd87e20ec6ba758b8fdadad4a46e32583e0ba2f299d7b53b23f41b`
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
# Tue, 18 Jun 2019 22:52:56 GMT
ARG LIBERTY_SHA=ee0fdbc716e9431b73d483555f0e267f007f0286
# Tue, 18 Jun 2019 22:52:56 GMT
ARG LIBERTY_BUILD_LABEL=cl190520190522-2227
# Tue, 18 Jun 2019 22:52:56 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.5/openliberty-runtime-19.0.0.5.zip
# Tue, 18 Jun 2019 22:52:57 GMT
LABEL org.opencontainers.image.authors=Arthur De Magalhaes, Andy Naumann org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl190520190522-2227
# Tue, 18 Jun 2019 22:52:57 GMT
COPY dir:8fa97f796b5791935d245816c680a53be6b8eba6d1d65b789acd46ff4b30c0c5 in /opt/ol/helpers 
# Tue, 18 Jun 2019 22:53:08 GMT
# ARGS: LIBERTY_BUILD_LABEL=cl190520190522-2227 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.5/openliberty-runtime-19.0.0.5.zip LIBERTY_SHA=ee0fdbc716e9431b73d483555f0e267f007f0286 LIBERTY_VERSION=19.0.0.5
RUN apt-get update     && apt-get install -y --no-install-recommends unzip     && rm -rf /var/lib/apt/lists/*     && curl -L -s -A UA-Open-Liberty-Docker -o /tmp/wlp.zip $LIBERTY_DOWNLOAD_URL     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && apt-get remove -y unzip     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp
# Tue, 18 Jun 2019 22:53:09 GMT
ENV PATH=/opt/ol/wlp/bin:/opt/ol/docker/:/opt/ol/helpers/build:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true
# Tue, 18 Jun 2019 22:53:10 GMT
# ARGS: LIBERTY_BUILD_LABEL=cl190520190522-2227 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.5/openliberty-runtime-19.0.0.5.zip LIBERTY_SHA=ee0fdbc716e9431b73d483555f0e267f007f0286 LIBERTY_VERSION=19.0.0.5
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Tue, 18 Jun 2019 22:53:11 GMT
# ARGS: LIBERTY_BUILD_LABEL=cl190520190522-2227 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/19.0.0.5/openliberty-runtime-19.0.0.5.zip LIBERTY_SHA=ee0fdbc716e9431b73d483555f0e267f007f0286 LIBERTY_VERSION=19.0.0.5
RUN mkdir /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R g+rw /opt/ol/helpers     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml
# Tue, 18 Jun 2019 22:53:11 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,nonfatal,cacheDir=/output/.classCache/ 
# Tue, 18 Jun 2019 22:53:11 GMT
USER 1001
# Tue, 18 Jun 2019 22:53:12 GMT
EXPOSE 9080 9443
# Tue, 18 Jun 2019 22:53:12 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 18 Jun 2019 22:53:12 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
# Tue, 18 Jun 2019 22:57:00 GMT
RUN cp /opt/ol/wlp/templates/servers/microProfile1/server.xml /config/server.xml
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
	-	`sha256:45a8214ef6150c0ec1cd81a396ebb7bcb625de1d67ad7a93b10d2ac6cfec4267`  
		Last Modified: Tue, 18 Jun 2019 23:06:16 GMT  
		Size: 2.3 KB (2310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1521e8196881df77e326ce7817d722d71b552fc52133974521e93921e2c57da0`  
		Last Modified: Tue, 18 Jun 2019 23:06:37 GMT  
		Size: 130.1 MB (130061320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9e2c012e7e6005627e14ae711ddd9c66b0059fabe2e8f808878050ad1f53463`  
		Last Modified: Tue, 18 Jun 2019 23:06:16 GMT  
		Size: 856.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5635bf58e79613462cb43ab64190a6daa8ac96b66f8e2eba489e48a6ee5f0153`  
		Last Modified: Tue, 18 Jun 2019 23:06:16 GMT  
		Size: 3.2 KB (3153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31d041bbc898064e60b738986efd76fe0aa272bf3ac6316f1a9a285f5ab36ddc`  
		Last Modified: Tue, 18 Jun 2019 23:09:35 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
