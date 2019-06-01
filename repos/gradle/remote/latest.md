## `gradle:latest`

```console
$ docker pull gradle@sha256:e3fbeb47c3f75c854bf3788ef906dbb7495f7e6a708f9e153c14165d9d9fed40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le
	-	linux; s390x

### `gradle:latest` - linux; amd64

```console
$ docker pull gradle@sha256:0c1ddd441a8b8c2ffa765770be9973f2c946c1eaf3c3393fe4a3a4ddd45033b5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.1 MB (232146643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce74c2b7c490daa61dca7db67b0bf43ab32a3de06e6238f4f83ba923521f9af0`
-	Default Command: `["gradle"]`

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
# Fri, 24 May 2019 23:44:14 GMT
ENV JAVA_VERSION=jdk8u212-b03
# Fri, 24 May 2019 23:44:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='c9f354430dc83cabfc58a229dddac507e36b475c872c157f91ab3ae50fa21bc5';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b03/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u212b03.tar.gz';          ;;        s390x)          ESUM='abb653ec70050a38d8f1e18c23bef64edc825240a7e4620e3b6003005c6b4a51';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b03/OpenJDK8U-jdk_s390x_linux_hotspot_8u212b03.tar.gz';          ;;        amd64|x86_64)          ESUM='dd28d6d2cde2b931caf94ac2422a2ad082ea62f0beee3bf7057317c53093de93';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b03/OpenJDK8U-jdk_x64_linux_hotspot_8u212b03.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Fri, 24 May 2019 23:44:22 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 01 Jun 2019 00:28:29 GMT
CMD ["gradle"]
# Sat, 01 Jun 2019 00:28:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 01 Jun 2019 00:28:31 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 01 Jun 2019 00:28:31 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 01 Jun 2019 00:28:32 GMT
WORKDIR /home/gradle
# Sat, 01 Jun 2019 00:28:42 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends        unzip        wget     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:28:42 GMT
ENV GRADLE_VERSION=5.4.1
# Sat, 01 Jun 2019 00:28:43 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Sat, 01 Jun 2019 00:28:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Testing Gradle installation"     && gradle --version
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
	-	`sha256:e02d936d7a404d5eacdb72b022417e29c9e6a967f7f853013a612310d91d34cb`  
		Last Modified: Fri, 24 May 2019 23:47:11 GMT  
		Size: 104.9 MB (104889612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e4ea92028ada57cb03ad410bf54788569dbabe1219192cc715bb490557c6f6e`  
		Last Modified: Sat, 01 Jun 2019 00:31:06 GMT  
		Size: 4.5 KB (4485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d01df3978b1ee6c138d90d9611d20c9158b92ac9904b1cee384f64699ac12d4`  
		Last Modified: Sat, 01 Jun 2019 00:31:07 GMT  
		Size: 707.4 KB (707382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1464ce3cc416a68f0f8b71bdebe6757e5df5296980835ef9aaf064c07776e17d`  
		Last Modified: Sat, 01 Jun 2019 00:31:19 GMT  
		Size: 87.1 MB (87093713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:latest` - linux; ppc64le

```console
$ docker pull gradle@sha256:faa6dd44527d39d8f9383707e63abe58428fe6b5cf7063ab35052c892b75e9da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.3 MB (233258417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b3061e5bf20ff32a1bb1dcf772bec2dc360e36005bbb9cebef8a9606945ab66`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 15 May 2019 22:22:53 GMT
ADD file:f41b697e1dfb953c707b36804e362c7f39555ea72e42f91accbc2d003eb7a8e4 in / 
# Wed, 15 May 2019 22:23:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 22:23:12 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 22:23:19 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 22:23:21 GMT
CMD ["/bin/bash"]
# Thu, 30 May 2019 14:48:54 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 30 May 2019 14:51:03 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends curl ca-certificates locales     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/*
# Thu, 30 May 2019 14:51:07 GMT
ENV JAVA_VERSION=jdk8u212-b03
# Thu, 30 May 2019 14:51:55 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='c9f354430dc83cabfc58a229dddac507e36b475c872c157f91ab3ae50fa21bc5';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b03/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u212b03.tar.gz';          ;;        s390x)          ESUM='abb653ec70050a38d8f1e18c23bef64edc825240a7e4620e3b6003005c6b4a51';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b03/OpenJDK8U-jdk_s390x_linux_hotspot_8u212b03.tar.gz';          ;;        amd64|x86_64)          ESUM='dd28d6d2cde2b931caf94ac2422a2ad082ea62f0beee3bf7057317c53093de93';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b03/OpenJDK8U-jdk_x64_linux_hotspot_8u212b03.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Thu, 30 May 2019 14:52:05 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 01 Jun 2019 00:42:29 GMT
CMD ["gradle"]
# Sat, 01 Jun 2019 00:42:32 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 01 Jun 2019 00:42:43 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 01 Jun 2019 00:42:46 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 01 Jun 2019 00:42:50 GMT
WORKDIR /home/gradle
# Sat, 01 Jun 2019 00:43:14 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends        unzip        wget     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:43:16 GMT
ENV GRADLE_VERSION=5.4.1
# Sat, 01 Jun 2019 00:43:18 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Sat, 01 Jun 2019 00:43:31 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:fe2c0e1c2ef60bdf8f65a2f45d232bd20d20e2a49d4bdd0ccf1a6e7e20184510`  
		Last Modified: Wed, 15 May 2019 22:28:38 GMT  
		Size: 32.6 MB (32559272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7264fbd1cbb08d35dad634c7997b32f338a35c83bf1e04f29deb15c521dc5093`  
		Last Modified: Wed, 15 May 2019 22:28:11 GMT  
		Size: 851.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d069807fa449f2b2cfa8520cbd8a4f0cbffaf3445664f4f000df1bb4e4207fc0`  
		Last Modified: Wed, 15 May 2019 22:28:10 GMT  
		Size: 187.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f881526d0bf00c39d3fc4f84468a362f978becb3cb7aee869157d1d64738511`  
		Last Modified: Thu, 30 May 2019 15:01:41 GMT  
		Size: 10.8 MB (10766465 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fb665c6989c5b48281571668bb4fbe488d65afac4619fb557d73a9b6b9e4c80`  
		Last Modified: Thu, 30 May 2019 15:01:52 GMT  
		Size: 102.1 MB (102057133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfb9ab200cea8625e56c8f8097bcbae8bf64aeb466e70f782b6917f9b52138b5`  
		Last Modified: Sat, 01 Jun 2019 00:49:18 GMT  
		Size: 4.5 KB (4536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:403dc3c06caad01eadac9043a6a9845bef6ff490e993ede634cca4159cc8b9bb`  
		Last Modified: Sat, 01 Jun 2019 00:49:19 GMT  
		Size: 776.1 KB (776145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:130c3346a03cc5458fcf136fe16581f8252fd248ec629e916fc71b7f7a24bd54`  
		Last Modified: Sat, 01 Jun 2019 00:49:28 GMT  
		Size: 87.1 MB (87093828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:latest` - linux; s390x

```console
$ docker pull gradle@sha256:f8526cafcb1d1d6d614664fd4dc9f87c64d4c55b9ab5d12e29d3862716194c7e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.2 MB (226205487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e05a8c9dd5a3929ec6c0f2bd1259405772a434075e143de6c1c5f0c0cfbc11ed`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 15 May 2019 21:42:57 GMT
ADD file:099f81542cb8e3e3e4fc2556d8067214392b39f0958e3452312495c98ae25e76 in / 
# Wed, 15 May 2019 21:43:04 GMT
RUN set -xe 		&& echo '#!/bin/sh' > /usr/sbin/policy-rc.d 	&& echo 'exit 101' >> /usr/sbin/policy-rc.d 	&& chmod +x /usr/sbin/policy-rc.d 		&& dpkg-divert --local --rename --add /sbin/initctl 	&& cp -a /usr/sbin/policy-rc.d /sbin/initctl 	&& sed -i 's/^exit.*/exit 0/' /sbin/initctl 		&& echo 'force-unsafe-io' > /etc/dpkg/dpkg.cfg.d/docker-apt-speedup 		&& echo 'DPkg::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' > /etc/apt/apt.conf.d/docker-clean 	&& echo 'APT::Update::Post-Invoke { "rm -f /var/cache/apt/archives/*.deb /var/cache/apt/archives/partial/*.deb /var/cache/apt/*.bin || true"; };' >> /etc/apt/apt.conf.d/docker-clean 	&& echo 'Dir::Cache::pkgcache ""; Dir::Cache::srcpkgcache "";' >> /etc/apt/apt.conf.d/docker-clean 		&& echo 'Acquire::Languages "none";' > /etc/apt/apt.conf.d/docker-no-languages 		&& echo 'Acquire::GzipIndexes "true"; Acquire::CompressionTypes::Order:: "gz";' > /etc/apt/apt.conf.d/docker-gzip-indexes 		&& echo 'Apt::AutoRemove::SuggestsImportant "false";' > /etc/apt/apt.conf.d/docker-autoremove-suggests
# Wed, 15 May 2019 21:43:10 GMT
RUN rm -rf /var/lib/apt/lists/*
# Wed, 15 May 2019 21:43:13 GMT
RUN mkdir -p /run/systemd && echo 'docker' > /run/systemd/container
# Wed, 15 May 2019 21:43:14 GMT
CMD ["/bin/bash"]
# Fri, 24 May 2019 23:39:58 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 24 May 2019 23:40:10 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends curl ca-certificates locales     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/*
# Fri, 24 May 2019 23:40:10 GMT
ENV JAVA_VERSION=jdk8u212-b03
# Fri, 24 May 2019 23:40:15 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='c9f354430dc83cabfc58a229dddac507e36b475c872c157f91ab3ae50fa21bc5';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b03/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u212b03.tar.gz';          ;;        s390x)          ESUM='abb653ec70050a38d8f1e18c23bef64edc825240a7e4620e3b6003005c6b4a51';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b03/OpenJDK8U-jdk_s390x_linux_hotspot_8u212b03.tar.gz';          ;;        amd64|x86_64)          ESUM='dd28d6d2cde2b931caf94ac2422a2ad082ea62f0beee3bf7057317c53093de93';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b03/OpenJDK8U-jdk_x64_linux_hotspot_8u212b03.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Fri, 24 May 2019 23:40:15 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 01 Jun 2019 00:41:35 GMT
CMD ["gradle"]
# Sat, 01 Jun 2019 00:41:35 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 01 Jun 2019 00:41:37 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 01 Jun 2019 00:41:37 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 01 Jun 2019 00:41:37 GMT
WORKDIR /home/gradle
# Sat, 01 Jun 2019 00:41:43 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends        unzip        wget     && rm -rf /var/lib/apt/lists/*
# Sat, 01 Jun 2019 00:41:43 GMT
ENV GRADLE_VERSION=5.4.1
# Sat, 01 Jun 2019 00:41:44 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Sat, 01 Jun 2019 00:41:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle         && echo "Testing Gradle installation"     && gradle --version
```

-	Layers:
	-	`sha256:a3ef07dd1fb74710cbd05c9bed2158fa7e005b766ac22ee052c37bc04215d25d`  
		Last Modified: Wed, 15 May 2019 21:46:43 GMT  
		Size: 27.5 MB (27532637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3f8f7d030578ebc1c4656ad55d61c81d712b0b43add1862837acf9d7365d67`  
		Last Modified: Wed, 15 May 2019 21:46:29 GMT  
		Size: 847.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad4fa8d15db8edc923fd948fd13c76765471952cf1ac5df39c26f98250ab7944`  
		Last Modified: Wed, 15 May 2019 21:46:29 GMT  
		Size: 163.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edcfd4adbaabfd40280ed77016d1deae2607c55653ef1611185d350ac5a09042`  
		Last Modified: Fri, 24 May 2019 23:42:19 GMT  
		Size: 10.3 MB (10296273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f13aac73374d3f172e7b6d2d823640a167012d8479fa8d2a3de8f6266be0ad4`  
		Last Modified: Fri, 24 May 2019 23:42:27 GMT  
		Size: 100.6 MB (100573333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855deba8b668b2af234287956ea8cf3af43424c66eedcaa20480a719b0590d8c`  
		Last Modified: Sat, 01 Jun 2019 00:43:16 GMT  
		Size: 4.5 KB (4489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e0b36c84c334f7d1557ab4cd00c9e611863ff5f50df7514aa10b90f5b9c05c0`  
		Last Modified: Sat, 01 Jun 2019 00:43:16 GMT  
		Size: 704.1 KB (704063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fa07bb08e644b2dab6b0698eaa7b28a21ff44df9298324cec2b7e45585e833e`  
		Last Modified: Sat, 01 Jun 2019 00:43:22 GMT  
		Size: 87.1 MB (87093682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
