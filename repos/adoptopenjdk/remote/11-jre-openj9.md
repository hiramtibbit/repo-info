## `adoptopenjdk:11-jre-openj9`

```console
$ docker pull adoptopenjdk@sha256:16d8b557b35f4da078ec4984a502522bcad617139126a6ecb4fe1227a8c85fa7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le
	-	linux; s390x

### `adoptopenjdk:11-jre-openj9` - linux; amd64

```console
$ docker pull adoptopenjdk@sha256:e8a7f37839ed07ea3f0370edd456d90fbf38be8a9dc930ee9dd1fa1ef4258a0e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.2 MB (81218087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5676546fb123c5a31a4cceb22eec2412b2157355d2e2c2d4c555083d37b1238`
-	Default Command: `["\/bin\/bash"]`

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

### `adoptopenjdk:11-jre-openj9` - linux; ppc64le

```console
$ docker pull adoptopenjdk@sha256:96ecadf3ca331f89985e74f057facb72e53cdf67f389baa5b9e869adad851228
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **86.1 MB (86075957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47a7ad2a7ca24e0f28e80b0aa7c0339f4af7533d668fba3cd9cdc4c9d74f4a47`
-	Default Command: `["\/bin\/bash"]`

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
# Mon, 10 Jun 2019 19:17:48 GMT
ENV JAVA_VERSION=jdk-11.0.3+7_openj9-0.14.3
# Mon, 10 Jun 2019 19:18:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='4800bd31dbb2b7bf7dabcee9c22b6ffe7b8fd167fa530b5c1aa95d53696a9bcf';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7_openj9-0.14.3/OpenJDK11U-jre_ppc64le_linux_openj9_11.0.3_7_openj9-0.14.3.tar.gz';          ;;        s390x)          ESUM='73a734c004c2f5e2ec21734908c683a38560c709f85d8782a25630183315e0e5';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7_openj9-0.14.3/OpenJDK11U-jre_s390x_linux_openj9_11.0.3_7_openj9-0.14.3.tar.gz';          ;;        amd64|x86_64)          ESUM='493a90023447f9f422db011560732cb018795023ed1166dfc04ffa18a4c1fb83';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7_openj9-0.14.3/OpenJDK11U-jre_x64_linux_openj9_11.0.3_7_openj9-0.14.3.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 10 Jun 2019 19:18:43 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Jun 2019 19:18:45 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+UseContainerSupport -XX:+IdleTuningCompactOnIdle -XX:+IdleTuningGcOnIdle
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
	-	`sha256:e2deb87be072ef73ebdbcadb3b3573476eb203b0a1394ea8e519e4854de8dcc4`  
		Last Modified: Mon, 10 Jun 2019 19:21:17 GMT  
		Size: 42.7 MB (42749182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `adoptopenjdk:11-jre-openj9` - linux; s390x

```console
$ docker pull adoptopenjdk@sha256:d499dfe747183808cacc6995b803222b75c03675776bb2ca3bade9700d9acda4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.4 MB (80424154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20aace97d127e9c7c810480c579017a01c45e87d4b096996717e4e15e9ef6eda`
-	Default Command: `["\/bin\/bash"]`

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
# Mon, 10 Jun 2019 19:43:05 GMT
ENV JAVA_VERSION=jdk-11.0.3+7_openj9-0.14.3
# Mon, 10 Jun 2019 19:43:25 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='4800bd31dbb2b7bf7dabcee9c22b6ffe7b8fd167fa530b5c1aa95d53696a9bcf';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7_openj9-0.14.3/OpenJDK11U-jre_ppc64le_linux_openj9_11.0.3_7_openj9-0.14.3.tar.gz';          ;;        s390x)          ESUM='73a734c004c2f5e2ec21734908c683a38560c709f85d8782a25630183315e0e5';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7_openj9-0.14.3/OpenJDK11U-jre_s390x_linux_openj9_11.0.3_7_openj9-0.14.3.tar.gz';          ;;        amd64|x86_64)          ESUM='493a90023447f9f422db011560732cb018795023ed1166dfc04ffa18a4c1fb83';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7_openj9-0.14.3/OpenJDK11U-jre_x64_linux_openj9_11.0.3_7_openj9-0.14.3.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 10 Jun 2019 19:43:25 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Jun 2019 19:43:25 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+UseContainerSupport -XX:+IdleTuningCompactOnIdle -XX:+IdleTuningGcOnIdle
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
	-	`sha256:0b85c993730fba67e7689af3bdaa9a6e5ea58c2aebb5f5a94893e47655536f2f`  
		Last Modified: Mon, 10 Jun 2019 19:45:17 GMT  
		Size: 42.6 MB (42594234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
