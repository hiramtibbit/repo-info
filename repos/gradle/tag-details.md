<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `gradle`

-	[`gradle:5.4`](#gradle54)
-	[`gradle:5.4.1`](#gradle541)
-	[`gradle:5.4.1-jdk`](#gradle541-jdk)
-	[`gradle:5.4.1-jdk11`](#gradle541-jdk11)
-	[`gradle:5.4.1-jdk12`](#gradle541-jdk12)
-	[`gradle:5.4.1-jdk8`](#gradle541-jdk8)
-	[`gradle:5.4.1-jre`](#gradle541-jre)
-	[`gradle:5.4.1-jre12`](#gradle541-jre12)
-	[`gradle:5.4.1-jre8`](#gradle541-jre8)
-	[`gradle:5.4-jdk`](#gradle54-jdk)
-	[`gradle:5.4-jdk11`](#gradle54-jdk11)
-	[`gradle:5.4-jdk12`](#gradle54-jdk12)
-	[`gradle:5.4-jdk8`](#gradle54-jdk8)
-	[`gradle:5.4-jre`](#gradle54-jre)
-	[`gradle:5.4-jre12`](#gradle54-jre12)
-	[`gradle:5.4-jre8`](#gradle54-jre8)
-	[`gradle:jdk`](#gradlejdk)
-	[`gradle:jdk11`](#gradlejdk11)
-	[`gradle:jdk12`](#gradlejdk12)
-	[`gradle:jdk8`](#gradlejdk8)
-	[`gradle:jre`](#gradlejre)
-	[`gradle:jre12`](#gradlejre12)
-	[`gradle:jre8`](#gradlejre8)
-	[`gradle:latest`](#gradlelatest)

## `gradle:5.4`

```console
$ docker pull gradle@sha256:10d52a03c47aca08b368567398677520d445f31065cd95f7a1f2c260f6ec9280
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le
	-	linux; s390x

### `gradle:5.4` - linux; amd64

```console
$ docker pull gradle@sha256:9a965fa800ec4f4c7ff0455cb9d58bff529820a803606cd0a890b51495e68ec7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.5 MB (282466512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:461f5d50d440951ab14d3da681639453b643721bf909c638083e762afda95553`
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
# Mon, 17 Jun 2019 22:19:28 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 22:19:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='6596a6276ec2da86193cfafee242e1538cf54f6afb5d16b41dfb9e65ceeefce7';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='2aa7a1b82471e2219a539280fafbb098f672adf55c3f5250f41f9d5c2584314f';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='09f6ccbfd8a86e52665b56751403fd4e2513ad071e2b3f36bab73f86273d1ead';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 22:19:40 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jun 2019 01:25:27 GMT
CMD ["gradle"]
# Tue, 18 Jun 2019 01:25:27 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Jun 2019 01:25:29 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Tue, 18 Jun 2019 01:25:29 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Jun 2019 01:25:29 GMT
WORKDIR /home/gradle
# Tue, 18 Jun 2019 01:26:16 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 01:26:17 GMT
ENV GRADLE_VERSION=5.4.1
# Tue, 18 Jun 2019 01:26:17 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Tue, 18 Jun 2019 01:26:25 GMT
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
	-	`sha256:d07684a552aa5387e8186149929acc86a89295a071f46f343bb93d02cb6f1792`  
		Last Modified: Mon, 17 Jun 2019 22:21:19 GMT  
		Size: 104.9 MB (104889025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b990ce758aadbe1f52c55880077ee6e0f5d1c7cf4610c8e7c91f2e4ed421bd`  
		Last Modified: Tue, 18 Jun 2019 01:27:56 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee4dde05529bbd27ffd20b5d0f334f1c83bdde80d063c510632be2d40c27254`  
		Last Modified: Tue, 18 Jun 2019 01:28:13 GMT  
		Size: 51.0 MB (51027820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce451706ea31bfefc1974c3e570c1fe36eced9bbdfecf060d1d65610f24d9736`  
		Last Modified: Tue, 18 Jun 2019 01:28:07 GMT  
		Size: 87.1 MB (87093728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.4` - linux; ppc64le

```console
$ docker pull gradle@sha256:9f8fc9441cae7e88a7babf847045fa289ff9731f47867662e0715f760cd4a8bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.1 MB (292077514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9853645d5b3c0c98fb379ab0ec7b0ffc6967431497e9a8808deed45382c1409a`
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
# Mon, 17 Jun 2019 22:16:36 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 22:16:53 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='6596a6276ec2da86193cfafee242e1538cf54f6afb5d16b41dfb9e65ceeefce7';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='2aa7a1b82471e2219a539280fafbb098f672adf55c3f5250f41f9d5c2584314f';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='09f6ccbfd8a86e52665b56751403fd4e2513ad071e2b3f36bab73f86273d1ead';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 22:16:57 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Jun 2019 23:21:28 GMT
CMD ["gradle"]
# Mon, 17 Jun 2019 23:21:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 17 Jun 2019 23:21:36 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Mon, 17 Jun 2019 23:21:38 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 17 Jun 2019 23:21:39 GMT
WORKDIR /home/gradle
# Mon, 17 Jun 2019 23:23:00 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 23:23:04 GMT
ENV GRADLE_VERSION=5.4.1
# Mon, 17 Jun 2019 23:23:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Mon, 17 Jun 2019 23:23:15 GMT
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
	-	`sha256:dc74f575ff930b02b460222a502abc89b8e1943e8b314b02cd5eb9a16dc5e0a0`  
		Last Modified: Mon, 17 Jun 2019 22:18:49 GMT  
		Size: 102.1 MB (102053907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdeb4feba0fea58cae59eb4f25a42913588e54ba96c3b2dfa06e19bf12d3ab51`  
		Last Modified: Mon, 17 Jun 2019 23:26:19 GMT  
		Size: 4.5 KB (4521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4e86a35eddfecf9bdd64ae1ffcb77e16d1e330e38868ecd48f07e83e4ca03d`  
		Last Modified: Mon, 17 Jun 2019 23:26:37 GMT  
		Size: 59.6 MB (59598460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922b273217f14ace4903c8d5f80c2fa58432fda2b80a493539dc197c57006196`  
		Last Modified: Mon, 17 Jun 2019 23:26:29 GMT  
		Size: 87.1 MB (87093851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.4` - linux; s390x

```console
$ docker pull gradle@sha256:7f0ee769f47bf589d81b6ee8af78228c4f182defae644429679d214d99d566b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.1 MB (276066586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e889c0bc84452eb0f57d70be4e4294a61f9a637506c30b48b1bb71c4c7b42d8`
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
# Mon, 17 Jun 2019 21:42:09 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 21:42:18 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='6596a6276ec2da86193cfafee242e1538cf54f6afb5d16b41dfb9e65ceeefce7';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='2aa7a1b82471e2219a539280fafbb098f672adf55c3f5250f41f9d5c2584314f';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='09f6ccbfd8a86e52665b56751403fd4e2513ad071e2b3f36bab73f86273d1ead';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 21:42:19 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Jun 2019 22:17:19 GMT
CMD ["gradle"]
# Mon, 17 Jun 2019 22:17:20 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 17 Jun 2019 22:17:21 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Mon, 17 Jun 2019 22:17:21 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 17 Jun 2019 22:17:21 GMT
WORKDIR /home/gradle
# Mon, 17 Jun 2019 22:17:47 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 22:17:48 GMT
ENV GRADLE_VERSION=5.4.1
# Mon, 17 Jun 2019 22:17:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Mon, 17 Jun 2019 22:17:52 GMT
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
	-	`sha256:c092edc8fad3b5399f6ef4af658b84d6b7f29d63ca8c53f37fd61ac699c6bac9`  
		Last Modified: Mon, 17 Jun 2019 21:44:09 GMT  
		Size: 100.6 MB (100572741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5ddbc3c74c1f34f997d407b5f89cfecd5ec6f00afd0a64e9e298fee50c2ac2`  
		Last Modified: Mon, 17 Jun 2019 22:19:14 GMT  
		Size: 4.5 KB (4490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b0ead5b5cf93d1ae2fb456965b8ba00bc53b1cfcf86705b72741b06d729eab`  
		Last Modified: Mon, 17 Jun 2019 22:19:25 GMT  
		Size: 50.6 MB (50565678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27d46fb01843b7b309b514fa9a9b244997c75f11da584dc98302a3d8827a444`  
		Last Modified: Mon, 17 Jun 2019 22:19:21 GMT  
		Size: 87.1 MB (87093757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.4.1`

```console
$ docker pull gradle@sha256:10d52a03c47aca08b368567398677520d445f31065cd95f7a1f2c260f6ec9280
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le
	-	linux; s390x

### `gradle:5.4.1` - linux; amd64

```console
$ docker pull gradle@sha256:9a965fa800ec4f4c7ff0455cb9d58bff529820a803606cd0a890b51495e68ec7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.5 MB (282466512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:461f5d50d440951ab14d3da681639453b643721bf909c638083e762afda95553`
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
# Mon, 17 Jun 2019 22:19:28 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 22:19:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='6596a6276ec2da86193cfafee242e1538cf54f6afb5d16b41dfb9e65ceeefce7';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='2aa7a1b82471e2219a539280fafbb098f672adf55c3f5250f41f9d5c2584314f';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='09f6ccbfd8a86e52665b56751403fd4e2513ad071e2b3f36bab73f86273d1ead';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 22:19:40 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jun 2019 01:25:27 GMT
CMD ["gradle"]
# Tue, 18 Jun 2019 01:25:27 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Jun 2019 01:25:29 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Tue, 18 Jun 2019 01:25:29 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Jun 2019 01:25:29 GMT
WORKDIR /home/gradle
# Tue, 18 Jun 2019 01:26:16 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 01:26:17 GMT
ENV GRADLE_VERSION=5.4.1
# Tue, 18 Jun 2019 01:26:17 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Tue, 18 Jun 2019 01:26:25 GMT
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
	-	`sha256:d07684a552aa5387e8186149929acc86a89295a071f46f343bb93d02cb6f1792`  
		Last Modified: Mon, 17 Jun 2019 22:21:19 GMT  
		Size: 104.9 MB (104889025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b990ce758aadbe1f52c55880077ee6e0f5d1c7cf4610c8e7c91f2e4ed421bd`  
		Last Modified: Tue, 18 Jun 2019 01:27:56 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee4dde05529bbd27ffd20b5d0f334f1c83bdde80d063c510632be2d40c27254`  
		Last Modified: Tue, 18 Jun 2019 01:28:13 GMT  
		Size: 51.0 MB (51027820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce451706ea31bfefc1974c3e570c1fe36eced9bbdfecf060d1d65610f24d9736`  
		Last Modified: Tue, 18 Jun 2019 01:28:07 GMT  
		Size: 87.1 MB (87093728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.4.1` - linux; ppc64le

```console
$ docker pull gradle@sha256:9f8fc9441cae7e88a7babf847045fa289ff9731f47867662e0715f760cd4a8bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.1 MB (292077514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9853645d5b3c0c98fb379ab0ec7b0ffc6967431497e9a8808deed45382c1409a`
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
# Mon, 17 Jun 2019 22:16:36 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 22:16:53 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='6596a6276ec2da86193cfafee242e1538cf54f6afb5d16b41dfb9e65ceeefce7';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='2aa7a1b82471e2219a539280fafbb098f672adf55c3f5250f41f9d5c2584314f';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='09f6ccbfd8a86e52665b56751403fd4e2513ad071e2b3f36bab73f86273d1ead';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 22:16:57 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Jun 2019 23:21:28 GMT
CMD ["gradle"]
# Mon, 17 Jun 2019 23:21:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 17 Jun 2019 23:21:36 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Mon, 17 Jun 2019 23:21:38 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 17 Jun 2019 23:21:39 GMT
WORKDIR /home/gradle
# Mon, 17 Jun 2019 23:23:00 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 23:23:04 GMT
ENV GRADLE_VERSION=5.4.1
# Mon, 17 Jun 2019 23:23:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Mon, 17 Jun 2019 23:23:15 GMT
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
	-	`sha256:dc74f575ff930b02b460222a502abc89b8e1943e8b314b02cd5eb9a16dc5e0a0`  
		Last Modified: Mon, 17 Jun 2019 22:18:49 GMT  
		Size: 102.1 MB (102053907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdeb4feba0fea58cae59eb4f25a42913588e54ba96c3b2dfa06e19bf12d3ab51`  
		Last Modified: Mon, 17 Jun 2019 23:26:19 GMT  
		Size: 4.5 KB (4521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4e86a35eddfecf9bdd64ae1ffcb77e16d1e330e38868ecd48f07e83e4ca03d`  
		Last Modified: Mon, 17 Jun 2019 23:26:37 GMT  
		Size: 59.6 MB (59598460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922b273217f14ace4903c8d5f80c2fa58432fda2b80a493539dc197c57006196`  
		Last Modified: Mon, 17 Jun 2019 23:26:29 GMT  
		Size: 87.1 MB (87093851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.4.1` - linux; s390x

```console
$ docker pull gradle@sha256:7f0ee769f47bf589d81b6ee8af78228c4f182defae644429679d214d99d566b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.1 MB (276066586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e889c0bc84452eb0f57d70be4e4294a61f9a637506c30b48b1bb71c4c7b42d8`
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
# Mon, 17 Jun 2019 21:42:09 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 21:42:18 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='6596a6276ec2da86193cfafee242e1538cf54f6afb5d16b41dfb9e65ceeefce7';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='2aa7a1b82471e2219a539280fafbb098f672adf55c3f5250f41f9d5c2584314f';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='09f6ccbfd8a86e52665b56751403fd4e2513ad071e2b3f36bab73f86273d1ead';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 21:42:19 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Jun 2019 22:17:19 GMT
CMD ["gradle"]
# Mon, 17 Jun 2019 22:17:20 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 17 Jun 2019 22:17:21 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Mon, 17 Jun 2019 22:17:21 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 17 Jun 2019 22:17:21 GMT
WORKDIR /home/gradle
# Mon, 17 Jun 2019 22:17:47 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 22:17:48 GMT
ENV GRADLE_VERSION=5.4.1
# Mon, 17 Jun 2019 22:17:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Mon, 17 Jun 2019 22:17:52 GMT
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
	-	`sha256:c092edc8fad3b5399f6ef4af658b84d6b7f29d63ca8c53f37fd61ac699c6bac9`  
		Last Modified: Mon, 17 Jun 2019 21:44:09 GMT  
		Size: 100.6 MB (100572741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5ddbc3c74c1f34f997d407b5f89cfecd5ec6f00afd0a64e9e298fee50c2ac2`  
		Last Modified: Mon, 17 Jun 2019 22:19:14 GMT  
		Size: 4.5 KB (4490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b0ead5b5cf93d1ae2fb456965b8ba00bc53b1cfcf86705b72741b06d729eab`  
		Last Modified: Mon, 17 Jun 2019 22:19:25 GMT  
		Size: 50.6 MB (50565678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27d46fb01843b7b309b514fa9a9b244997c75f11da584dc98302a3d8827a444`  
		Last Modified: Mon, 17 Jun 2019 22:19:21 GMT  
		Size: 87.1 MB (87093757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.4.1-jdk`

```console
$ docker pull gradle@sha256:10d52a03c47aca08b368567398677520d445f31065cd95f7a1f2c260f6ec9280
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le
	-	linux; s390x

### `gradle:5.4.1-jdk` - linux; amd64

```console
$ docker pull gradle@sha256:9a965fa800ec4f4c7ff0455cb9d58bff529820a803606cd0a890b51495e68ec7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.5 MB (282466512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:461f5d50d440951ab14d3da681639453b643721bf909c638083e762afda95553`
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
# Mon, 17 Jun 2019 22:19:28 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 22:19:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='6596a6276ec2da86193cfafee242e1538cf54f6afb5d16b41dfb9e65ceeefce7';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='2aa7a1b82471e2219a539280fafbb098f672adf55c3f5250f41f9d5c2584314f';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='09f6ccbfd8a86e52665b56751403fd4e2513ad071e2b3f36bab73f86273d1ead';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 22:19:40 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jun 2019 01:25:27 GMT
CMD ["gradle"]
# Tue, 18 Jun 2019 01:25:27 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Jun 2019 01:25:29 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Tue, 18 Jun 2019 01:25:29 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Jun 2019 01:25:29 GMT
WORKDIR /home/gradle
# Tue, 18 Jun 2019 01:26:16 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 01:26:17 GMT
ENV GRADLE_VERSION=5.4.1
# Tue, 18 Jun 2019 01:26:17 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Tue, 18 Jun 2019 01:26:25 GMT
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
	-	`sha256:d07684a552aa5387e8186149929acc86a89295a071f46f343bb93d02cb6f1792`  
		Last Modified: Mon, 17 Jun 2019 22:21:19 GMT  
		Size: 104.9 MB (104889025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b990ce758aadbe1f52c55880077ee6e0f5d1c7cf4610c8e7c91f2e4ed421bd`  
		Last Modified: Tue, 18 Jun 2019 01:27:56 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee4dde05529bbd27ffd20b5d0f334f1c83bdde80d063c510632be2d40c27254`  
		Last Modified: Tue, 18 Jun 2019 01:28:13 GMT  
		Size: 51.0 MB (51027820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce451706ea31bfefc1974c3e570c1fe36eced9bbdfecf060d1d65610f24d9736`  
		Last Modified: Tue, 18 Jun 2019 01:28:07 GMT  
		Size: 87.1 MB (87093728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.4.1-jdk` - linux; ppc64le

```console
$ docker pull gradle@sha256:9f8fc9441cae7e88a7babf847045fa289ff9731f47867662e0715f760cd4a8bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.1 MB (292077514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9853645d5b3c0c98fb379ab0ec7b0ffc6967431497e9a8808deed45382c1409a`
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
# Mon, 17 Jun 2019 22:16:36 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 22:16:53 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='6596a6276ec2da86193cfafee242e1538cf54f6afb5d16b41dfb9e65ceeefce7';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='2aa7a1b82471e2219a539280fafbb098f672adf55c3f5250f41f9d5c2584314f';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='09f6ccbfd8a86e52665b56751403fd4e2513ad071e2b3f36bab73f86273d1ead';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 22:16:57 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Jun 2019 23:21:28 GMT
CMD ["gradle"]
# Mon, 17 Jun 2019 23:21:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 17 Jun 2019 23:21:36 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Mon, 17 Jun 2019 23:21:38 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 17 Jun 2019 23:21:39 GMT
WORKDIR /home/gradle
# Mon, 17 Jun 2019 23:23:00 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 23:23:04 GMT
ENV GRADLE_VERSION=5.4.1
# Mon, 17 Jun 2019 23:23:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Mon, 17 Jun 2019 23:23:15 GMT
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
	-	`sha256:dc74f575ff930b02b460222a502abc89b8e1943e8b314b02cd5eb9a16dc5e0a0`  
		Last Modified: Mon, 17 Jun 2019 22:18:49 GMT  
		Size: 102.1 MB (102053907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdeb4feba0fea58cae59eb4f25a42913588e54ba96c3b2dfa06e19bf12d3ab51`  
		Last Modified: Mon, 17 Jun 2019 23:26:19 GMT  
		Size: 4.5 KB (4521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4e86a35eddfecf9bdd64ae1ffcb77e16d1e330e38868ecd48f07e83e4ca03d`  
		Last Modified: Mon, 17 Jun 2019 23:26:37 GMT  
		Size: 59.6 MB (59598460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922b273217f14ace4903c8d5f80c2fa58432fda2b80a493539dc197c57006196`  
		Last Modified: Mon, 17 Jun 2019 23:26:29 GMT  
		Size: 87.1 MB (87093851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.4.1-jdk` - linux; s390x

```console
$ docker pull gradle@sha256:7f0ee769f47bf589d81b6ee8af78228c4f182defae644429679d214d99d566b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.1 MB (276066586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e889c0bc84452eb0f57d70be4e4294a61f9a637506c30b48b1bb71c4c7b42d8`
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
# Mon, 17 Jun 2019 21:42:09 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 21:42:18 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='6596a6276ec2da86193cfafee242e1538cf54f6afb5d16b41dfb9e65ceeefce7';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='2aa7a1b82471e2219a539280fafbb098f672adf55c3f5250f41f9d5c2584314f';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='09f6ccbfd8a86e52665b56751403fd4e2513ad071e2b3f36bab73f86273d1ead';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 21:42:19 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Jun 2019 22:17:19 GMT
CMD ["gradle"]
# Mon, 17 Jun 2019 22:17:20 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 17 Jun 2019 22:17:21 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Mon, 17 Jun 2019 22:17:21 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 17 Jun 2019 22:17:21 GMT
WORKDIR /home/gradle
# Mon, 17 Jun 2019 22:17:47 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 22:17:48 GMT
ENV GRADLE_VERSION=5.4.1
# Mon, 17 Jun 2019 22:17:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Mon, 17 Jun 2019 22:17:52 GMT
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
	-	`sha256:c092edc8fad3b5399f6ef4af658b84d6b7f29d63ca8c53f37fd61ac699c6bac9`  
		Last Modified: Mon, 17 Jun 2019 21:44:09 GMT  
		Size: 100.6 MB (100572741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5ddbc3c74c1f34f997d407b5f89cfecd5ec6f00afd0a64e9e298fee50c2ac2`  
		Last Modified: Mon, 17 Jun 2019 22:19:14 GMT  
		Size: 4.5 KB (4490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b0ead5b5cf93d1ae2fb456965b8ba00bc53b1cfcf86705b72741b06d729eab`  
		Last Modified: Mon, 17 Jun 2019 22:19:25 GMT  
		Size: 50.6 MB (50565678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27d46fb01843b7b309b514fa9a9b244997c75f11da584dc98302a3d8827a444`  
		Last Modified: Mon, 17 Jun 2019 22:19:21 GMT  
		Size: 87.1 MB (87093757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.4.1-jdk11`

```console
$ docker pull gradle@sha256:d9e6ec48af5154c80c26ec6e3164e120693ecbf482bb0b25ea4859984ace4cc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le
	-	linux; s390x

### `gradle:5.4.1-jdk11` - linux; amd64

```console
$ docker pull gradle@sha256:377e381e0da8ba127b3ec9798a66163dff9c451b405e680ec3207fb061886928
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **374.4 MB (374414397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9652eea6417b7675474bc0890e371a4ff007f5d6c5269a1f49bd2be03b51b3a0`
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
# Fri, 24 May 2019 23:44:35 GMT
ENV JAVA_VERSION=jdk-11.0.3+7
# Fri, 24 May 2019 23:44:48 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='25bce2f738cfc7c027da08e533bf3ede65e2767eae8eb9fcb46e92ee6aea7607';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.3_7.tar.gz';          ;;        s390x)          ESUM='c80e775d96c4b6edf399414503d28788060829c345abc575fc731f9e4d68b3bc';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.3_7.tar.gz';          ;;        amd64|x86_64)          ESUM='23cded2b43261016f0f246c85c8948d4a9b7f2d44988f75dad69723a7a526094';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_x64_linux_hotspot_11.0.3_7.tar.gz';          ;;        armhf)          ESUM='3fbe418368e6d5888d0f15c4751139eb60d9785b864158a001386537fa46f67e';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_arm_linux_hotspot_11.0.3_7.tar.gz';          ;;        aarch64|arm64)          ESUM='894a846600ddb0df474350037a2fb43e3343dc3606809a20c65e750580d8f2b9';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.3_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Fri, 24 May 2019 23:44:48 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 23:44:49 GMT
CMD ["jshell"]
# Sat, 01 Jun 2019 00:29:27 GMT
CMD ["gradle"]
# Sat, 01 Jun 2019 00:29:27 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 01 Jun 2019 00:29:29 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 01 Jun 2019 00:29:29 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 01 Jun 2019 00:29:30 GMT
WORKDIR /home/gradle
# Thu, 06 Jun 2019 22:21:23 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jun 2019 22:21:23 GMT
ENV GRADLE_VERSION=5.4.1
# Thu, 06 Jun 2019 22:21:23 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Thu, 06 Jun 2019 22:21:28 GMT
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
	-	`sha256:b7a73dac0e7840c08dc361ca597dd1d4171e35e5e1c1992c3682094bbaa35a20`  
		Last Modified: Fri, 24 May 2019 23:47:44 GMT  
		Size: 196.8 MB (196835164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1437279dcb15a9e6d7cd5d64cb0373363db9118cc6062d1357d2c08107b6c474`  
		Last Modified: Sat, 01 Jun 2019 00:31:50 GMT  
		Size: 4.5 KB (4487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddc28b6afa6e2ecf8d499851f281ab7cbcd18c05af1239cb506fb3aceac95053`  
		Last Modified: Thu, 06 Jun 2019 22:23:41 GMT  
		Size: 51.0 MB (51029547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f1a60747cbf2ad75cf3506944dbb846573871c4d2e67daae0d23f2ec62c5847`  
		Last Modified: Thu, 06 Jun 2019 22:23:35 GMT  
		Size: 87.1 MB (87093748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.4.1-jdk11` - linux; ppc64le

```console
$ docker pull gradle@sha256:85bc3e3d34032f9733dcddb02e49bd7f9dd090eecc203321768ccd0e22d7961c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **371.1 MB (371139728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88ceddd38f7b71844c8adb700729c15cbf8296dc5007982fafe5a519287f39f4`
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
# Thu, 30 May 2019 14:52:50 GMT
ENV JAVA_VERSION=jdk-11.0.3+7
# Thu, 30 May 2019 14:53:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='25bce2f738cfc7c027da08e533bf3ede65e2767eae8eb9fcb46e92ee6aea7607';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.3_7.tar.gz';          ;;        s390x)          ESUM='c80e775d96c4b6edf399414503d28788060829c345abc575fc731f9e4d68b3bc';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.3_7.tar.gz';          ;;        amd64|x86_64)          ESUM='23cded2b43261016f0f246c85c8948d4a9b7f2d44988f75dad69723a7a526094';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_x64_linux_hotspot_11.0.3_7.tar.gz';          ;;        armhf)          ESUM='3fbe418368e6d5888d0f15c4751139eb60d9785b864158a001386537fa46f67e';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_arm_linux_hotspot_11.0.3_7.tar.gz';          ;;        aarch64|arm64)          ESUM='894a846600ddb0df474350037a2fb43e3343dc3606809a20c65e750580d8f2b9';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.3_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Thu, 30 May 2019 14:53:22 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 May 2019 14:53:31 GMT
CMD ["jshell"]
# Sat, 01 Jun 2019 00:44:53 GMT
CMD ["gradle"]
# Sat, 01 Jun 2019 00:44:56 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 01 Jun 2019 00:45:07 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 01 Jun 2019 00:45:10 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 01 Jun 2019 00:45:13 GMT
WORKDIR /home/gradle
# Thu, 06 Jun 2019 22:33:07 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jun 2019 22:33:13 GMT
ENV GRADLE_VERSION=5.4.1
# Thu, 06 Jun 2019 22:33:20 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Thu, 06 Jun 2019 22:33:40 GMT
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
	-	`sha256:9b23099ee93870490d5159fc768edff6f53a3d95446dae8956eb0bf642dbf146`  
		Last Modified: Thu, 30 May 2019 15:03:01 GMT  
		Size: 181.1 MB (181127642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16797d325f1adb8540095a3bdda11bf6b7bd3ffb0a5fca673640d29a24454684`  
		Last Modified: Sat, 01 Jun 2019 00:50:35 GMT  
		Size: 4.5 KB (4536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78216cd3f665999e0ae4d504af66989531b2af1d2571d1fb6f99eac7e3af6a6`  
		Last Modified: Thu, 06 Jun 2019 22:44:28 GMT  
		Size: 59.6 MB (59586901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050ce446a92f7491e37f258937399c9843e8e86bf6a3270543e5420b8378a367`  
		Last Modified: Thu, 06 Jun 2019 22:44:15 GMT  
		Size: 87.1 MB (87093874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.4.1-jdk11` - linux; s390x

```console
$ docker pull gradle@sha256:e3a1e9ab98740cf0b6b53315fab25c9e0286a58bb9dfbd19a9a9fb108d7687f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.3 MB (351283557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fd2e0075198b923f5d5d3fdcc1df2a4797832f6676362e3048bfc85d856ff07`
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
# Fri, 24 May 2019 23:40:25 GMT
ENV JAVA_VERSION=jdk-11.0.3+7
# Fri, 24 May 2019 23:40:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='25bce2f738cfc7c027da08e533bf3ede65e2767eae8eb9fcb46e92ee6aea7607';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.3_7.tar.gz';          ;;        s390x)          ESUM='c80e775d96c4b6edf399414503d28788060829c345abc575fc731f9e4d68b3bc';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.3_7.tar.gz';          ;;        amd64|x86_64)          ESUM='23cded2b43261016f0f246c85c8948d4a9b7f2d44988f75dad69723a7a526094';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_x64_linux_hotspot_11.0.3_7.tar.gz';          ;;        armhf)          ESUM='3fbe418368e6d5888d0f15c4751139eb60d9785b864158a001386537fa46f67e';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_arm_linux_hotspot_11.0.3_7.tar.gz';          ;;        aarch64|arm64)          ESUM='894a846600ddb0df474350037a2fb43e3343dc3606809a20c65e750580d8f2b9';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.3_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Fri, 24 May 2019 23:40:32 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 23:40:32 GMT
CMD ["jshell"]
# Sat, 01 Jun 2019 00:42:10 GMT
CMD ["gradle"]
# Sat, 01 Jun 2019 00:42:10 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 01 Jun 2019 00:42:11 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 01 Jun 2019 00:42:12 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 01 Jun 2019 00:42:12 GMT
WORKDIR /home/gradle
# Thu, 06 Jun 2019 22:44:04 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jun 2019 22:44:05 GMT
ENV GRADLE_VERSION=5.4.1
# Thu, 06 Jun 2019 22:44:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Thu, 06 Jun 2019 22:44:10 GMT
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
	-	`sha256:fb239f004f769c02886c7df9a8fb2220fd5b2ad961ecca4c1032b844bb363b62`  
		Last Modified: Fri, 24 May 2019 23:43:01 GMT  
		Size: 175.8 MB (175799531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a77c14f8874e9e264236cfc0f5cf4e561322efef2c28bd304d51199ab7d3b1`  
		Last Modified: Sat, 01 Jun 2019 00:43:53 GMT  
		Size: 4.5 KB (4486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea42fbb2b54662e9f53d447875591605e4d1fda11db7071ef5c790923c63d8db`  
		Last Modified: Thu, 06 Jun 2019 22:47:52 GMT  
		Size: 50.6 MB (50555905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca3aafb6a53baaa8bf6811f102f6d2f953cc92c4ef8046752b78c71eb83dd612`  
		Last Modified: Thu, 06 Jun 2019 22:47:48 GMT  
		Size: 87.1 MB (87093715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.4.1-jdk12`

```console
$ docker pull gradle@sha256:a67c417981001c90cbbf80a01aff850b5223fa810b7d6a695356741e96fa68ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le
	-	linux; s390x

### `gradle:5.4.1-jdk12` - linux; amd64

```console
$ docker pull gradle@sha256:878c7d8e567ebc0ca7262219c321bd7d52013ce3020ce837cd8a583e93559db2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.6 MB (385581127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64f4cdd8b5b8dffb03f67fc59cd0db6f72d05b8b34b166c9bf21bc37efddb64d`
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
# Fri, 24 May 2019 23:45:01 GMT
ENV JAVA_VERSION=jdk-12.0.1+12
# Fri, 24 May 2019 23:45:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='0ecced06422628b1ca20b0501a6b544cc9da29a2026f9e18d7b206d7a84b7958';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_ppc64le_linux_hotspot_12.0.1_12.tar.gz';          ;;        s390x)          ESUM='ef7efa131cd3978e3a2bad567bc8d39ed7f6dcf2c8bae17dafca359262cdde19';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_s390x_linux_hotspot_12.0.1_12.tar.gz';          ;;        amd64|x86_64)          ESUM='dd3fdf3771a05a010029c1cf1aef516928eab55d6f5eb019008875e9ccbc8337';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_x64_linux_hotspot_12.0.1_12.tar.gz';          ;;        armhf)          ESUM='acfa12c3c59b5180c08faa033c777bbc67f51e8b6cb976659f0d4b54138d6549';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_arm_linux_hotspot_12.0.1_12.tar.gz';          ;;        aarch64|arm64)          ESUM='b1d58d593ac4c1b2d5dab0e8302ed4e07d5281c6c0cf1413b1604269bedec9c5';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_aarch64_linux_hotspot_12.0.1_12.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Fri, 24 May 2019 23:45:18 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 23:45:18 GMT
CMD ["jshell"]
# Sat, 01 Jun 2019 00:29:55 GMT
CMD ["gradle"]
# Sat, 01 Jun 2019 00:29:55 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 01 Jun 2019 00:29:56 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 01 Jun 2019 00:29:57 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 01 Jun 2019 00:29:57 GMT
WORKDIR /home/gradle
# Thu, 06 Jun 2019 22:21:55 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jun 2019 22:21:55 GMT
ENV GRADLE_VERSION=5.4.1
# Thu, 06 Jun 2019 22:21:55 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Thu, 06 Jun 2019 22:22:00 GMT
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
	-	`sha256:cc23a2766de46f4259de7b4649101ea3f050e8b04082f403490d9206dbc50b82`  
		Last Modified: Fri, 24 May 2019 23:48:28 GMT  
		Size: 208.0 MB (208002066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cc78288d1c07d2d682669a681fb8fd6a1a28cb2390c547a31894a5f79cc70a8`  
		Last Modified: Sat, 01 Jun 2019 00:32:07 GMT  
		Size: 4.5 KB (4491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1395819da2fa531fbb436463761c97b320db77a36b78579639a85303ffa776a5`  
		Last Modified: Thu, 06 Jun 2019 22:23:58 GMT  
		Size: 51.0 MB (51029401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61fae4ef452f95bbf3f5769a9922284ba1a5222e72a52c5eba6c1a79e0f75472`  
		Last Modified: Thu, 06 Jun 2019 22:23:52 GMT  
		Size: 87.1 MB (87093718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.4.1-jdk12` - linux; ppc64le

```console
$ docker pull gradle@sha256:1ee6badb6fcd9b5051b0d16c27bb4a9af70e7c60745f8b3a492cb56e107ba7e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.4 MB (381412792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcec0b1f750e6b40ac1d441cf47899ac4935a440b139a24bee2087606122f453`
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
# Thu, 30 May 2019 14:54:03 GMT
ENV JAVA_VERSION=jdk-12.0.1+12
# Thu, 30 May 2019 14:54:28 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='0ecced06422628b1ca20b0501a6b544cc9da29a2026f9e18d7b206d7a84b7958';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_ppc64le_linux_hotspot_12.0.1_12.tar.gz';          ;;        s390x)          ESUM='ef7efa131cd3978e3a2bad567bc8d39ed7f6dcf2c8bae17dafca359262cdde19';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_s390x_linux_hotspot_12.0.1_12.tar.gz';          ;;        amd64|x86_64)          ESUM='dd3fdf3771a05a010029c1cf1aef516928eab55d6f5eb019008875e9ccbc8337';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_x64_linux_hotspot_12.0.1_12.tar.gz';          ;;        armhf)          ESUM='acfa12c3c59b5180c08faa033c777bbc67f51e8b6cb976659f0d4b54138d6549';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_arm_linux_hotspot_12.0.1_12.tar.gz';          ;;        aarch64|arm64)          ESUM='b1d58d593ac4c1b2d5dab0e8302ed4e07d5281c6c0cf1413b1604269bedec9c5';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_aarch64_linux_hotspot_12.0.1_12.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Thu, 30 May 2019 14:54:34 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 May 2019 14:54:37 GMT
CMD ["jshell"]
# Sat, 01 Jun 2019 00:46:08 GMT
CMD ["gradle"]
# Sat, 01 Jun 2019 00:46:11 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 01 Jun 2019 00:46:18 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 01 Jun 2019 00:46:22 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 01 Jun 2019 00:46:26 GMT
WORKDIR /home/gradle
# Thu, 06 Jun 2019 22:38:07 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jun 2019 22:38:11 GMT
ENV GRADLE_VERSION=5.4.1
# Thu, 06 Jun 2019 22:38:14 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Thu, 06 Jun 2019 22:38:25 GMT
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
	-	`sha256:908d7453eea8ef0f756a0c12be04ebfd733ea1f6145689de2ba4730ca8187268`  
		Last Modified: Thu, 30 May 2019 15:04:07 GMT  
		Size: 191.4 MB (191401036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61ac55f83c28c32e927719cba4b28eaca4f9f361528f548a6822ca353085a06`  
		Last Modified: Sat, 01 Jun 2019 00:51:06 GMT  
		Size: 4.5 KB (4521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3d38ef06a1b59f90b14390c1d082a67941df51fb3fbd35d48bc58cab650fdd`  
		Last Modified: Thu, 06 Jun 2019 22:45:00 GMT  
		Size: 59.6 MB (59586637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20ce2f44d2c03b313560b4fe4685af6f057d870f7acb0c5ff0895048471697ba`  
		Last Modified: Thu, 06 Jun 2019 22:44:54 GMT  
		Size: 87.1 MB (87093823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.4.1-jdk12` - linux; s390x

```console
$ docker pull gradle@sha256:1f89f4a08b75369a5e44ebbfed8ae18abbe7915cd46d608d378f3bc0dca5fa92
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.5 MB (361511603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1967e63b842e5f5046c1619a725f9b2e895c858bb52a695a09cdeeacfdc67b3b`
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
# Fri, 24 May 2019 23:40:43 GMT
ENV JAVA_VERSION=jdk-12.0.1+12
# Fri, 24 May 2019 23:40:49 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='0ecced06422628b1ca20b0501a6b544cc9da29a2026f9e18d7b206d7a84b7958';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_ppc64le_linux_hotspot_12.0.1_12.tar.gz';          ;;        s390x)          ESUM='ef7efa131cd3978e3a2bad567bc8d39ed7f6dcf2c8bae17dafca359262cdde19';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_s390x_linux_hotspot_12.0.1_12.tar.gz';          ;;        amd64|x86_64)          ESUM='dd3fdf3771a05a010029c1cf1aef516928eab55d6f5eb019008875e9ccbc8337';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_x64_linux_hotspot_12.0.1_12.tar.gz';          ;;        armhf)          ESUM='acfa12c3c59b5180c08faa033c777bbc67f51e8b6cb976659f0d4b54138d6549';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_arm_linux_hotspot_12.0.1_12.tar.gz';          ;;        aarch64|arm64)          ESUM='b1d58d593ac4c1b2d5dab0e8302ed4e07d5281c6c0cf1413b1604269bedec9c5';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_aarch64_linux_hotspot_12.0.1_12.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Fri, 24 May 2019 23:40:50 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 23:40:50 GMT
CMD ["jshell"]
# Sat, 01 Jun 2019 00:42:28 GMT
CMD ["gradle"]
# Sat, 01 Jun 2019 00:42:28 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 01 Jun 2019 00:42:29 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 01 Jun 2019 00:42:29 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 01 Jun 2019 00:42:30 GMT
WORKDIR /home/gradle
# Thu, 06 Jun 2019 22:45:01 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jun 2019 22:45:02 GMT
ENV GRADLE_VERSION=5.4.1
# Thu, 06 Jun 2019 22:45:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Thu, 06 Jun 2019 22:45:07 GMT
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
	-	`sha256:95a72adf3107ccfe1ce44b2edc75dc80fc89c4615606385b70f4d75e7860702a`  
		Last Modified: Fri, 24 May 2019 23:43:42 GMT  
		Size: 186.0 MB (186026751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:775f12ee6a44cf3635d1629c33a4ccaca6d44440062f7418e74b09cf7a2e5dcf`  
		Last Modified: Sat, 01 Jun 2019 00:44:06 GMT  
		Size: 4.5 KB (4499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45e01b99589d1c72fd19b812a15fffc5c8bb3dfba46a095df8c0ebb95444f391`  
		Last Modified: Thu, 06 Jun 2019 22:48:10 GMT  
		Size: 50.6 MB (50556705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:485e570530fc0963d2b6dcc66fdd9c908e981bcbde94576184b6ffafa64311f5`  
		Last Modified: Thu, 06 Jun 2019 22:48:05 GMT  
		Size: 87.1 MB (87093728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.4.1-jdk8`

```console
$ docker pull gradle@sha256:10d52a03c47aca08b368567398677520d445f31065cd95f7a1f2c260f6ec9280
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le
	-	linux; s390x

### `gradle:5.4.1-jdk8` - linux; amd64

```console
$ docker pull gradle@sha256:9a965fa800ec4f4c7ff0455cb9d58bff529820a803606cd0a890b51495e68ec7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.5 MB (282466512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:461f5d50d440951ab14d3da681639453b643721bf909c638083e762afda95553`
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
# Mon, 17 Jun 2019 22:19:28 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 22:19:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='6596a6276ec2da86193cfafee242e1538cf54f6afb5d16b41dfb9e65ceeefce7';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='2aa7a1b82471e2219a539280fafbb098f672adf55c3f5250f41f9d5c2584314f';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='09f6ccbfd8a86e52665b56751403fd4e2513ad071e2b3f36bab73f86273d1ead';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 22:19:40 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jun 2019 01:25:27 GMT
CMD ["gradle"]
# Tue, 18 Jun 2019 01:25:27 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Jun 2019 01:25:29 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Tue, 18 Jun 2019 01:25:29 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Jun 2019 01:25:29 GMT
WORKDIR /home/gradle
# Tue, 18 Jun 2019 01:26:16 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 01:26:17 GMT
ENV GRADLE_VERSION=5.4.1
# Tue, 18 Jun 2019 01:26:17 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Tue, 18 Jun 2019 01:26:25 GMT
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
	-	`sha256:d07684a552aa5387e8186149929acc86a89295a071f46f343bb93d02cb6f1792`  
		Last Modified: Mon, 17 Jun 2019 22:21:19 GMT  
		Size: 104.9 MB (104889025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b990ce758aadbe1f52c55880077ee6e0f5d1c7cf4610c8e7c91f2e4ed421bd`  
		Last Modified: Tue, 18 Jun 2019 01:27:56 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee4dde05529bbd27ffd20b5d0f334f1c83bdde80d063c510632be2d40c27254`  
		Last Modified: Tue, 18 Jun 2019 01:28:13 GMT  
		Size: 51.0 MB (51027820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce451706ea31bfefc1974c3e570c1fe36eced9bbdfecf060d1d65610f24d9736`  
		Last Modified: Tue, 18 Jun 2019 01:28:07 GMT  
		Size: 87.1 MB (87093728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.4.1-jdk8` - linux; ppc64le

```console
$ docker pull gradle@sha256:9f8fc9441cae7e88a7babf847045fa289ff9731f47867662e0715f760cd4a8bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.1 MB (292077514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9853645d5b3c0c98fb379ab0ec7b0ffc6967431497e9a8808deed45382c1409a`
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
# Mon, 17 Jun 2019 22:16:36 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 22:16:53 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='6596a6276ec2da86193cfafee242e1538cf54f6afb5d16b41dfb9e65ceeefce7';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='2aa7a1b82471e2219a539280fafbb098f672adf55c3f5250f41f9d5c2584314f';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='09f6ccbfd8a86e52665b56751403fd4e2513ad071e2b3f36bab73f86273d1ead';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 22:16:57 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Jun 2019 23:21:28 GMT
CMD ["gradle"]
# Mon, 17 Jun 2019 23:21:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 17 Jun 2019 23:21:36 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Mon, 17 Jun 2019 23:21:38 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 17 Jun 2019 23:21:39 GMT
WORKDIR /home/gradle
# Mon, 17 Jun 2019 23:23:00 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 23:23:04 GMT
ENV GRADLE_VERSION=5.4.1
# Mon, 17 Jun 2019 23:23:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Mon, 17 Jun 2019 23:23:15 GMT
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
	-	`sha256:dc74f575ff930b02b460222a502abc89b8e1943e8b314b02cd5eb9a16dc5e0a0`  
		Last Modified: Mon, 17 Jun 2019 22:18:49 GMT  
		Size: 102.1 MB (102053907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdeb4feba0fea58cae59eb4f25a42913588e54ba96c3b2dfa06e19bf12d3ab51`  
		Last Modified: Mon, 17 Jun 2019 23:26:19 GMT  
		Size: 4.5 KB (4521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4e86a35eddfecf9bdd64ae1ffcb77e16d1e330e38868ecd48f07e83e4ca03d`  
		Last Modified: Mon, 17 Jun 2019 23:26:37 GMT  
		Size: 59.6 MB (59598460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922b273217f14ace4903c8d5f80c2fa58432fda2b80a493539dc197c57006196`  
		Last Modified: Mon, 17 Jun 2019 23:26:29 GMT  
		Size: 87.1 MB (87093851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.4.1-jdk8` - linux; s390x

```console
$ docker pull gradle@sha256:7f0ee769f47bf589d81b6ee8af78228c4f182defae644429679d214d99d566b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.1 MB (276066586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e889c0bc84452eb0f57d70be4e4294a61f9a637506c30b48b1bb71c4c7b42d8`
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
# Mon, 17 Jun 2019 21:42:09 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 21:42:18 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='6596a6276ec2da86193cfafee242e1538cf54f6afb5d16b41dfb9e65ceeefce7';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='2aa7a1b82471e2219a539280fafbb098f672adf55c3f5250f41f9d5c2584314f';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='09f6ccbfd8a86e52665b56751403fd4e2513ad071e2b3f36bab73f86273d1ead';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 21:42:19 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Jun 2019 22:17:19 GMT
CMD ["gradle"]
# Mon, 17 Jun 2019 22:17:20 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 17 Jun 2019 22:17:21 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Mon, 17 Jun 2019 22:17:21 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 17 Jun 2019 22:17:21 GMT
WORKDIR /home/gradle
# Mon, 17 Jun 2019 22:17:47 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 22:17:48 GMT
ENV GRADLE_VERSION=5.4.1
# Mon, 17 Jun 2019 22:17:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Mon, 17 Jun 2019 22:17:52 GMT
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
	-	`sha256:c092edc8fad3b5399f6ef4af658b84d6b7f29d63ca8c53f37fd61ac699c6bac9`  
		Last Modified: Mon, 17 Jun 2019 21:44:09 GMT  
		Size: 100.6 MB (100572741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5ddbc3c74c1f34f997d407b5f89cfecd5ec6f00afd0a64e9e298fee50c2ac2`  
		Last Modified: Mon, 17 Jun 2019 22:19:14 GMT  
		Size: 4.5 KB (4490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b0ead5b5cf93d1ae2fb456965b8ba00bc53b1cfcf86705b72741b06d729eab`  
		Last Modified: Mon, 17 Jun 2019 22:19:25 GMT  
		Size: 50.6 MB (50565678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27d46fb01843b7b309b514fa9a9b244997c75f11da584dc98302a3d8827a444`  
		Last Modified: Mon, 17 Jun 2019 22:19:21 GMT  
		Size: 87.1 MB (87093757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.4.1-jre`

```console
$ docker pull gradle@sha256:6ced7e1ef993006b8277d43132304f20e44794ff9ddb9fcdb90826a087990e43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le
	-	linux; s390x

### `gradle:5.4.1-jre` - linux; amd64

```console
$ docker pull gradle@sha256:b01a1e8f634162d02e37dea5bbe4fe19f64dc5a32edb976a24240e6aac098d8e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.8 MB (218790402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96864d5913bc010b9aa8a9fad5cc5d4714b6d8289c990c8e07112c90e345b375`
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
# Mon, 17 Jun 2019 22:19:28 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 22:19:52 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='7e09a9939c0baff8f24277df71844dc121f0bdfa855c2a02fb557e0d3438b9c5';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='90554726525b4acb38dae6f1f958711476e5484ff593a0666f43f2a044bb070a';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='96d24d94c022b3e414b612cae8829244329d71ad2cce790f099c020f33247e7e';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 22:19:53 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jun 2019 01:26:29 GMT
CMD ["gradle"]
# Tue, 18 Jun 2019 01:26:29 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Jun 2019 01:26:30 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Tue, 18 Jun 2019 01:26:30 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Jun 2019 01:26:30 GMT
WORKDIR /home/gradle
# Tue, 18 Jun 2019 01:27:03 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 01:27:04 GMT
ENV GRADLE_VERSION=5.4.1
# Tue, 18 Jun 2019 01:27:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Tue, 18 Jun 2019 01:27:12 GMT
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
	-	`sha256:7dceef744034b9c1ebda80f9bb8ac2328b67a3b5dd5bfd2b434270158a65c9da`  
		Last Modified: Mon, 17 Jun 2019 22:21:39 GMT  
		Size: 41.2 MB (41213310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1794aac93249393412d01decea0cfc967752e3a52648f44f4ddf5e881b649f`  
		Last Modified: Tue, 18 Jun 2019 01:28:27 GMT  
		Size: 4.5 KB (4487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf534951ee0b1fb403a55a65591f724e91f17a287ed13328f35d6e74c3d8460`  
		Last Modified: Tue, 18 Jun 2019 01:28:47 GMT  
		Size: 51.0 MB (51027406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf675532a693fab6ef14b2dabc2a567c28d5b977706f2352b3480c898472f38`  
		Last Modified: Tue, 18 Jun 2019 01:28:38 GMT  
		Size: 87.1 MB (87093748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.4.1-jre` - linux; ppc64le

```console
$ docker pull gradle@sha256:4e03cd0592d7c5b0e24164dc979a09497f1108969cb56f33c4e64c8bd3d86521
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.3 MB (230300048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9613f2083df97c237a83e3d778f904c3b2f255a2113a5c6866e419730cee0021`
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
# Mon, 17 Jun 2019 22:16:36 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 22:17:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='7e09a9939c0baff8f24277df71844dc121f0bdfa855c2a02fb557e0d3438b9c5';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='90554726525b4acb38dae6f1f958711476e5484ff593a0666f43f2a044bb070a';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='96d24d94c022b3e414b612cae8829244329d71ad2cce790f099c020f33247e7e';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 22:17:20 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Jun 2019 23:23:24 GMT
CMD ["gradle"]
# Mon, 17 Jun 2019 23:23:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 17 Jun 2019 23:23:31 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Mon, 17 Jun 2019 23:23:33 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 17 Jun 2019 23:23:35 GMT
WORKDIR /home/gradle
# Mon, 17 Jun 2019 23:25:24 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 23:25:28 GMT
ENV GRADLE_VERSION=5.4.1
# Mon, 17 Jun 2019 23:25:30 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Mon, 17 Jun 2019 23:25:39 GMT
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
	-	`sha256:e24ade711a95cc655ad5073d5a9804e3cb695359688f8eb07dba75e27a111a74`  
		Last Modified: Mon, 17 Jun 2019 22:19:12 GMT  
		Size: 40.3 MB (40274286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2862fe486cb5da6618d65f799f514e2e035d852a23e527a4f81b4e85307cf69`  
		Last Modified: Mon, 17 Jun 2019 23:27:12 GMT  
		Size: 4.5 KB (4520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc5d8bf045a10eadff3cfb40939e9619a4fdeccf706a0cf778b3fdb69522eae`  
		Last Modified: Mon, 17 Jun 2019 23:27:30 GMT  
		Size: 59.6 MB (59600639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee796a68c96176ceaee374a02ffe27e25bb72516721d5837cf1959b8ff25daf8`  
		Last Modified: Mon, 17 Jun 2019 23:27:22 GMT  
		Size: 87.1 MB (87093828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.4.1-jre` - linux; s390x

```console
$ docker pull gradle@sha256:5116536036cd4f4445e77f038d2853b962510ca04c810c8c6836d6d8b692fac1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.4 MB (214406821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57499856bcabda19d2e05939de5fc6340a6cd369f25e6fab3f72b58df5629be7`
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
# Mon, 17 Jun 2019 21:42:09 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 21:42:27 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='7e09a9939c0baff8f24277df71844dc121f0bdfa855c2a02fb557e0d3438b9c5';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='90554726525b4acb38dae6f1f958711476e5484ff593a0666f43f2a044bb070a';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='96d24d94c022b3e414b612cae8829244329d71ad2cce790f099c020f33247e7e';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 21:42:27 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Jun 2019 22:17:59 GMT
CMD ["gradle"]
# Mon, 17 Jun 2019 22:17:59 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 17 Jun 2019 22:18:00 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Mon, 17 Jun 2019 22:18:00 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 17 Jun 2019 22:18:01 GMT
WORKDIR /home/gradle
# Mon, 17 Jun 2019 22:18:30 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 22:18:31 GMT
ENV GRADLE_VERSION=5.4.1
# Mon, 17 Jun 2019 22:18:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Mon, 17 Jun 2019 22:18:35 GMT
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
	-	`sha256:5e09b82e1f8177c05e0964c7fbea0ee237118720085a56e1a21ffd2fdba92482`  
		Last Modified: Mon, 17 Jun 2019 21:44:23 GMT  
		Size: 38.9 MB (38912389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:863864003200ba226055e52a38179c50641ebafdc76debb10925293fca6a4b4d`  
		Last Modified: Mon, 17 Jun 2019 22:19:38 GMT  
		Size: 4.5 KB (4491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac04171c7edb7da1e4354ce47ba1c527fdbd6a7c2cbdbde80ae838de75c250f`  
		Last Modified: Mon, 17 Jun 2019 22:19:48 GMT  
		Size: 50.6 MB (50566295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1ecee28237d6120b6481066f57f51c96cc92794ece847f18ac3c2c0a17bc8a`  
		Last Modified: Mon, 17 Jun 2019 22:19:46 GMT  
		Size: 87.1 MB (87093726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.4.1-jre12`

```console
$ docker pull gradle@sha256:d228170fc89023a59d46b6229c79c2825a3cfc1a116b79704c36f1eac674a3ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le
	-	linux; s390x

### `gradle:5.4.1-jre12` - linux; amd64

```console
$ docker pull gradle@sha256:b99be7dc867b8db6ea3f673c3067772d0bf1b6c5820afe0d7c108df0b1138600
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.5 MB (225462373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e9645e3a56cf0f677f2f628f9b43d7c156133fdeea95021c5a783463cab0389`
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
# Fri, 24 May 2019 23:45:01 GMT
ENV JAVA_VERSION=jdk-12.0.1+12
# Fri, 24 May 2019 23:45:28 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='0007442c929de09104749fa4c945dfde476cbeab27122b5705d1a2c56d0efac4';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jre_ppc64le_linux_hotspot_12.0.1_12.tar.gz';          ;;        s390x)          ESUM='161464b6d2fd68afdf41c54aa326049ff2ad777d6a13c0694cee2cf9b0aafa52';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jre_s390x_linux_hotspot_12.0.1_12.tar.gz';          ;;        amd64|x86_64)          ESUM='85b3c4065b1540f1d0dbe533955a199e54a0cbe7bd6e1111e59d54e68b2f5b43';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jre_x64_linux_hotspot_12.0.1_12.tar.gz';          ;;        aarch64|arm64)          ESUM='c6fa30f2351a8c981be018c16941dac16c21bfdf86474dc586baaf166b3bc00c';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jre_aarch64_linux_hotspot_12.0.1_12.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Fri, 24 May 2019 23:45:29 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 01 Jun 2019 00:30:22 GMT
CMD ["gradle"]
# Sat, 01 Jun 2019 00:30:22 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 01 Jun 2019 00:30:24 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 01 Jun 2019 00:30:24 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 01 Jun 2019 00:30:25 GMT
WORKDIR /home/gradle
# Thu, 06 Jun 2019 22:22:27 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jun 2019 22:22:28 GMT
ENV GRADLE_VERSION=5.4.1
# Thu, 06 Jun 2019 22:22:28 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Thu, 06 Jun 2019 22:22:33 GMT
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
	-	`sha256:0a7d43d263ecb9e79397e3867e8ccf310720d2b0a94f2651b333c3394eddcd91`  
		Last Modified: Fri, 24 May 2019 23:48:43 GMT  
		Size: 47.9 MB (47883616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b03f39b04da609efbcd589fcb8def5c307bc273e668d983f366258d31e075c`  
		Last Modified: Sat, 01 Jun 2019 00:32:25 GMT  
		Size: 4.5 KB (4485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00429253f317b376457bda0583fea1fee0b6d2a8c9c2c9abbf02be31768bdc0`  
		Last Modified: Thu, 06 Jun 2019 22:24:22 GMT  
		Size: 51.0 MB (51029105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c74a0728ad9a49942e1fb68811e16bc9aba1459b6d03cd27fd2dd4d1a8eaecc`  
		Last Modified: Thu, 06 Jun 2019 22:24:30 GMT  
		Size: 87.1 MB (87093716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.4.1-jre12` - linux; ppc64le

```console
$ docker pull gradle@sha256:1fd64fe845d06db496cfc46ea01aba9d32a3f1ab7ac03315086c2055c52a8be2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.0 MB (234040260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86dc6a277555506e0eaff80971b1ebfc562c80317161f5c64be0dcd881376f37`
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
# Thu, 30 May 2019 14:54:03 GMT
ENV JAVA_VERSION=jdk-12.0.1+12
# Thu, 30 May 2019 14:55:00 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='0007442c929de09104749fa4c945dfde476cbeab27122b5705d1a2c56d0efac4';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jre_ppc64le_linux_hotspot_12.0.1_12.tar.gz';          ;;        s390x)          ESUM='161464b6d2fd68afdf41c54aa326049ff2ad777d6a13c0694cee2cf9b0aafa52';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jre_s390x_linux_hotspot_12.0.1_12.tar.gz';          ;;        amd64|x86_64)          ESUM='85b3c4065b1540f1d0dbe533955a199e54a0cbe7bd6e1111e59d54e68b2f5b43';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jre_x64_linux_hotspot_12.0.1_12.tar.gz';          ;;        aarch64|arm64)          ESUM='c6fa30f2351a8c981be018c16941dac16c21bfdf86474dc586baaf166b3bc00c';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jre_aarch64_linux_hotspot_12.0.1_12.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Thu, 30 May 2019 14:55:05 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 01 Jun 2019 00:47:32 GMT
CMD ["gradle"]
# Sat, 01 Jun 2019 00:47:35 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 01 Jun 2019 00:47:45 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 01 Jun 2019 00:47:49 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 01 Jun 2019 00:47:53 GMT
WORKDIR /home/gradle
# Thu, 06 Jun 2019 22:41:30 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jun 2019 22:41:33 GMT
ENV GRADLE_VERSION=5.4.1
# Thu, 06 Jun 2019 22:41:37 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Thu, 06 Jun 2019 22:41:46 GMT
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
	-	`sha256:8c6b1710c2abedc98178cd6a3a07a048c4d6a5c9009d5e8119fd274dd9256a7a`  
		Last Modified: Thu, 30 May 2019 15:04:46 GMT  
		Size: 44.0 MB (44028971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd927578c2b05b7c4e2284d229feba69110fc767861094a4aabbf1a0559f9bb4`  
		Last Modified: Sat, 01 Jun 2019 00:51:32 GMT  
		Size: 4.5 KB (4527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22465a75cea68ebca19f62dca1ff2557b7af09640b95a327e7bd4c52d739686e`  
		Last Modified: Thu, 06 Jun 2019 22:45:34 GMT  
		Size: 59.6 MB (59586163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad4f47978eefaba141d0eae3c6bbcca3046a77c6a3ee91eaae0a342e49303fe3`  
		Last Modified: Thu, 06 Jun 2019 22:45:27 GMT  
		Size: 87.1 MB (87093824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.4.1-jre12` - linux; s390x

```console
$ docker pull gradle@sha256:90ab03cc63da3bb714c80ad472bcae1b305b78607e6af2bda26ce9772ab6b881
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.3 MB (219269569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef55ebc7da95f2bda060b5e18aa91333bc16e916cb6014c6c74f7f3562f68293`
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
# Fri, 24 May 2019 23:40:43 GMT
ENV JAVA_VERSION=jdk-12.0.1+12
# Fri, 24 May 2019 23:40:56 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='0007442c929de09104749fa4c945dfde476cbeab27122b5705d1a2c56d0efac4';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jre_ppc64le_linux_hotspot_12.0.1_12.tar.gz';          ;;        s390x)          ESUM='161464b6d2fd68afdf41c54aa326049ff2ad777d6a13c0694cee2cf9b0aafa52';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jre_s390x_linux_hotspot_12.0.1_12.tar.gz';          ;;        amd64|x86_64)          ESUM='85b3c4065b1540f1d0dbe533955a199e54a0cbe7bd6e1111e59d54e68b2f5b43';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jre_x64_linux_hotspot_12.0.1_12.tar.gz';          ;;        aarch64|arm64)          ESUM='c6fa30f2351a8c981be018c16941dac16c21bfdf86474dc586baaf166b3bc00c';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jre_aarch64_linux_hotspot_12.0.1_12.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Fri, 24 May 2019 23:40:56 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 01 Jun 2019 00:42:46 GMT
CMD ["gradle"]
# Sat, 01 Jun 2019 00:42:47 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 01 Jun 2019 00:42:48 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 01 Jun 2019 00:42:48 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 01 Jun 2019 00:42:48 GMT
WORKDIR /home/gradle
# Thu, 06 Jun 2019 22:46:18 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jun 2019 22:46:19 GMT
ENV GRADLE_VERSION=5.4.1
# Thu, 06 Jun 2019 22:46:19 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Thu, 06 Jun 2019 22:46:24 GMT
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
	-	`sha256:a86ec8cf2777320cadf57b6b993bbb362dcc370722e5311ccb1c577e4ba2bd3a`  
		Last Modified: Fri, 24 May 2019 23:43:58 GMT  
		Size: 43.8 MB (43785544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b4d079dbf1c7fd44ec42fdf0e75bcb081830e2e0c887963b818b3eda45611e`  
		Last Modified: Sat, 01 Jun 2019 00:44:21 GMT  
		Size: 4.5 KB (4491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c581503f02d3e2b1d39eab7b72774180a601f73907c6ff15c2e8282b42faea37`  
		Last Modified: Thu, 06 Jun 2019 22:48:32 GMT  
		Size: 50.6 MB (50555896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42c16aee08c94ca19292c971f965d78c0f776aa95bf8c3814f5c8923d72c375`  
		Last Modified: Thu, 06 Jun 2019 22:48:23 GMT  
		Size: 87.1 MB (87093718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.4.1-jre8`

```console
$ docker pull gradle@sha256:6ced7e1ef993006b8277d43132304f20e44794ff9ddb9fcdb90826a087990e43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le
	-	linux; s390x

### `gradle:5.4.1-jre8` - linux; amd64

```console
$ docker pull gradle@sha256:b01a1e8f634162d02e37dea5bbe4fe19f64dc5a32edb976a24240e6aac098d8e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.8 MB (218790402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96864d5913bc010b9aa8a9fad5cc5d4714b6d8289c990c8e07112c90e345b375`
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
# Mon, 17 Jun 2019 22:19:28 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 22:19:52 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='7e09a9939c0baff8f24277df71844dc121f0bdfa855c2a02fb557e0d3438b9c5';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='90554726525b4acb38dae6f1f958711476e5484ff593a0666f43f2a044bb070a';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='96d24d94c022b3e414b612cae8829244329d71ad2cce790f099c020f33247e7e';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 22:19:53 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jun 2019 01:26:29 GMT
CMD ["gradle"]
# Tue, 18 Jun 2019 01:26:29 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Jun 2019 01:26:30 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Tue, 18 Jun 2019 01:26:30 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Jun 2019 01:26:30 GMT
WORKDIR /home/gradle
# Tue, 18 Jun 2019 01:27:03 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 01:27:04 GMT
ENV GRADLE_VERSION=5.4.1
# Tue, 18 Jun 2019 01:27:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Tue, 18 Jun 2019 01:27:12 GMT
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
	-	`sha256:7dceef744034b9c1ebda80f9bb8ac2328b67a3b5dd5bfd2b434270158a65c9da`  
		Last Modified: Mon, 17 Jun 2019 22:21:39 GMT  
		Size: 41.2 MB (41213310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1794aac93249393412d01decea0cfc967752e3a52648f44f4ddf5e881b649f`  
		Last Modified: Tue, 18 Jun 2019 01:28:27 GMT  
		Size: 4.5 KB (4487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf534951ee0b1fb403a55a65591f724e91f17a287ed13328f35d6e74c3d8460`  
		Last Modified: Tue, 18 Jun 2019 01:28:47 GMT  
		Size: 51.0 MB (51027406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf675532a693fab6ef14b2dabc2a567c28d5b977706f2352b3480c898472f38`  
		Last Modified: Tue, 18 Jun 2019 01:28:38 GMT  
		Size: 87.1 MB (87093748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.4.1-jre8` - linux; ppc64le

```console
$ docker pull gradle@sha256:4e03cd0592d7c5b0e24164dc979a09497f1108969cb56f33c4e64c8bd3d86521
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.3 MB (230300048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9613f2083df97c237a83e3d778f904c3b2f255a2113a5c6866e419730cee0021`
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
# Mon, 17 Jun 2019 22:16:36 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 22:17:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='7e09a9939c0baff8f24277df71844dc121f0bdfa855c2a02fb557e0d3438b9c5';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='90554726525b4acb38dae6f1f958711476e5484ff593a0666f43f2a044bb070a';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='96d24d94c022b3e414b612cae8829244329d71ad2cce790f099c020f33247e7e';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 22:17:20 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Jun 2019 23:23:24 GMT
CMD ["gradle"]
# Mon, 17 Jun 2019 23:23:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 17 Jun 2019 23:23:31 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Mon, 17 Jun 2019 23:23:33 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 17 Jun 2019 23:23:35 GMT
WORKDIR /home/gradle
# Mon, 17 Jun 2019 23:25:24 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 23:25:28 GMT
ENV GRADLE_VERSION=5.4.1
# Mon, 17 Jun 2019 23:25:30 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Mon, 17 Jun 2019 23:25:39 GMT
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
	-	`sha256:e24ade711a95cc655ad5073d5a9804e3cb695359688f8eb07dba75e27a111a74`  
		Last Modified: Mon, 17 Jun 2019 22:19:12 GMT  
		Size: 40.3 MB (40274286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2862fe486cb5da6618d65f799f514e2e035d852a23e527a4f81b4e85307cf69`  
		Last Modified: Mon, 17 Jun 2019 23:27:12 GMT  
		Size: 4.5 KB (4520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc5d8bf045a10eadff3cfb40939e9619a4fdeccf706a0cf778b3fdb69522eae`  
		Last Modified: Mon, 17 Jun 2019 23:27:30 GMT  
		Size: 59.6 MB (59600639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee796a68c96176ceaee374a02ffe27e25bb72516721d5837cf1959b8ff25daf8`  
		Last Modified: Mon, 17 Jun 2019 23:27:22 GMT  
		Size: 87.1 MB (87093828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.4.1-jre8` - linux; s390x

```console
$ docker pull gradle@sha256:5116536036cd4f4445e77f038d2853b962510ca04c810c8c6836d6d8b692fac1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.4 MB (214406821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57499856bcabda19d2e05939de5fc6340a6cd369f25e6fab3f72b58df5629be7`
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
# Mon, 17 Jun 2019 21:42:09 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 21:42:27 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='7e09a9939c0baff8f24277df71844dc121f0bdfa855c2a02fb557e0d3438b9c5';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='90554726525b4acb38dae6f1f958711476e5484ff593a0666f43f2a044bb070a';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='96d24d94c022b3e414b612cae8829244329d71ad2cce790f099c020f33247e7e';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 21:42:27 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Jun 2019 22:17:59 GMT
CMD ["gradle"]
# Mon, 17 Jun 2019 22:17:59 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 17 Jun 2019 22:18:00 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Mon, 17 Jun 2019 22:18:00 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 17 Jun 2019 22:18:01 GMT
WORKDIR /home/gradle
# Mon, 17 Jun 2019 22:18:30 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 22:18:31 GMT
ENV GRADLE_VERSION=5.4.1
# Mon, 17 Jun 2019 22:18:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Mon, 17 Jun 2019 22:18:35 GMT
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
	-	`sha256:5e09b82e1f8177c05e0964c7fbea0ee237118720085a56e1a21ffd2fdba92482`  
		Last Modified: Mon, 17 Jun 2019 21:44:23 GMT  
		Size: 38.9 MB (38912389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:863864003200ba226055e52a38179c50641ebafdc76debb10925293fca6a4b4d`  
		Last Modified: Mon, 17 Jun 2019 22:19:38 GMT  
		Size: 4.5 KB (4491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac04171c7edb7da1e4354ce47ba1c527fdbd6a7c2cbdbde80ae838de75c250f`  
		Last Modified: Mon, 17 Jun 2019 22:19:48 GMT  
		Size: 50.6 MB (50566295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1ecee28237d6120b6481066f57f51c96cc92794ece847f18ac3c2c0a17bc8a`  
		Last Modified: Mon, 17 Jun 2019 22:19:46 GMT  
		Size: 87.1 MB (87093726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.4-jdk`

```console
$ docker pull gradle@sha256:10d52a03c47aca08b368567398677520d445f31065cd95f7a1f2c260f6ec9280
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le
	-	linux; s390x

### `gradle:5.4-jdk` - linux; amd64

```console
$ docker pull gradle@sha256:9a965fa800ec4f4c7ff0455cb9d58bff529820a803606cd0a890b51495e68ec7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.5 MB (282466512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:461f5d50d440951ab14d3da681639453b643721bf909c638083e762afda95553`
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
# Mon, 17 Jun 2019 22:19:28 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 22:19:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='6596a6276ec2da86193cfafee242e1538cf54f6afb5d16b41dfb9e65ceeefce7';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='2aa7a1b82471e2219a539280fafbb098f672adf55c3f5250f41f9d5c2584314f';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='09f6ccbfd8a86e52665b56751403fd4e2513ad071e2b3f36bab73f86273d1ead';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 22:19:40 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jun 2019 01:25:27 GMT
CMD ["gradle"]
# Tue, 18 Jun 2019 01:25:27 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Jun 2019 01:25:29 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Tue, 18 Jun 2019 01:25:29 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Jun 2019 01:25:29 GMT
WORKDIR /home/gradle
# Tue, 18 Jun 2019 01:26:16 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 01:26:17 GMT
ENV GRADLE_VERSION=5.4.1
# Tue, 18 Jun 2019 01:26:17 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Tue, 18 Jun 2019 01:26:25 GMT
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
	-	`sha256:d07684a552aa5387e8186149929acc86a89295a071f46f343bb93d02cb6f1792`  
		Last Modified: Mon, 17 Jun 2019 22:21:19 GMT  
		Size: 104.9 MB (104889025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b990ce758aadbe1f52c55880077ee6e0f5d1c7cf4610c8e7c91f2e4ed421bd`  
		Last Modified: Tue, 18 Jun 2019 01:27:56 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee4dde05529bbd27ffd20b5d0f334f1c83bdde80d063c510632be2d40c27254`  
		Last Modified: Tue, 18 Jun 2019 01:28:13 GMT  
		Size: 51.0 MB (51027820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce451706ea31bfefc1974c3e570c1fe36eced9bbdfecf060d1d65610f24d9736`  
		Last Modified: Tue, 18 Jun 2019 01:28:07 GMT  
		Size: 87.1 MB (87093728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.4-jdk` - linux; ppc64le

```console
$ docker pull gradle@sha256:9f8fc9441cae7e88a7babf847045fa289ff9731f47867662e0715f760cd4a8bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.1 MB (292077514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9853645d5b3c0c98fb379ab0ec7b0ffc6967431497e9a8808deed45382c1409a`
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
# Mon, 17 Jun 2019 22:16:36 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 22:16:53 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='6596a6276ec2da86193cfafee242e1538cf54f6afb5d16b41dfb9e65ceeefce7';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='2aa7a1b82471e2219a539280fafbb098f672adf55c3f5250f41f9d5c2584314f';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='09f6ccbfd8a86e52665b56751403fd4e2513ad071e2b3f36bab73f86273d1ead';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 22:16:57 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Jun 2019 23:21:28 GMT
CMD ["gradle"]
# Mon, 17 Jun 2019 23:21:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 17 Jun 2019 23:21:36 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Mon, 17 Jun 2019 23:21:38 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 17 Jun 2019 23:21:39 GMT
WORKDIR /home/gradle
# Mon, 17 Jun 2019 23:23:00 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 23:23:04 GMT
ENV GRADLE_VERSION=5.4.1
# Mon, 17 Jun 2019 23:23:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Mon, 17 Jun 2019 23:23:15 GMT
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
	-	`sha256:dc74f575ff930b02b460222a502abc89b8e1943e8b314b02cd5eb9a16dc5e0a0`  
		Last Modified: Mon, 17 Jun 2019 22:18:49 GMT  
		Size: 102.1 MB (102053907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdeb4feba0fea58cae59eb4f25a42913588e54ba96c3b2dfa06e19bf12d3ab51`  
		Last Modified: Mon, 17 Jun 2019 23:26:19 GMT  
		Size: 4.5 KB (4521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4e86a35eddfecf9bdd64ae1ffcb77e16d1e330e38868ecd48f07e83e4ca03d`  
		Last Modified: Mon, 17 Jun 2019 23:26:37 GMT  
		Size: 59.6 MB (59598460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922b273217f14ace4903c8d5f80c2fa58432fda2b80a493539dc197c57006196`  
		Last Modified: Mon, 17 Jun 2019 23:26:29 GMT  
		Size: 87.1 MB (87093851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.4-jdk` - linux; s390x

```console
$ docker pull gradle@sha256:7f0ee769f47bf589d81b6ee8af78228c4f182defae644429679d214d99d566b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.1 MB (276066586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e889c0bc84452eb0f57d70be4e4294a61f9a637506c30b48b1bb71c4c7b42d8`
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
# Mon, 17 Jun 2019 21:42:09 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 21:42:18 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='6596a6276ec2da86193cfafee242e1538cf54f6afb5d16b41dfb9e65ceeefce7';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='2aa7a1b82471e2219a539280fafbb098f672adf55c3f5250f41f9d5c2584314f';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='09f6ccbfd8a86e52665b56751403fd4e2513ad071e2b3f36bab73f86273d1ead';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 21:42:19 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Jun 2019 22:17:19 GMT
CMD ["gradle"]
# Mon, 17 Jun 2019 22:17:20 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 17 Jun 2019 22:17:21 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Mon, 17 Jun 2019 22:17:21 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 17 Jun 2019 22:17:21 GMT
WORKDIR /home/gradle
# Mon, 17 Jun 2019 22:17:47 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 22:17:48 GMT
ENV GRADLE_VERSION=5.4.1
# Mon, 17 Jun 2019 22:17:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Mon, 17 Jun 2019 22:17:52 GMT
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
	-	`sha256:c092edc8fad3b5399f6ef4af658b84d6b7f29d63ca8c53f37fd61ac699c6bac9`  
		Last Modified: Mon, 17 Jun 2019 21:44:09 GMT  
		Size: 100.6 MB (100572741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5ddbc3c74c1f34f997d407b5f89cfecd5ec6f00afd0a64e9e298fee50c2ac2`  
		Last Modified: Mon, 17 Jun 2019 22:19:14 GMT  
		Size: 4.5 KB (4490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b0ead5b5cf93d1ae2fb456965b8ba00bc53b1cfcf86705b72741b06d729eab`  
		Last Modified: Mon, 17 Jun 2019 22:19:25 GMT  
		Size: 50.6 MB (50565678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27d46fb01843b7b309b514fa9a9b244997c75f11da584dc98302a3d8827a444`  
		Last Modified: Mon, 17 Jun 2019 22:19:21 GMT  
		Size: 87.1 MB (87093757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.4-jdk11`

```console
$ docker pull gradle@sha256:d9e6ec48af5154c80c26ec6e3164e120693ecbf482bb0b25ea4859984ace4cc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le
	-	linux; s390x

### `gradle:5.4-jdk11` - linux; amd64

```console
$ docker pull gradle@sha256:377e381e0da8ba127b3ec9798a66163dff9c451b405e680ec3207fb061886928
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **374.4 MB (374414397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9652eea6417b7675474bc0890e371a4ff007f5d6c5269a1f49bd2be03b51b3a0`
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
# Fri, 24 May 2019 23:44:35 GMT
ENV JAVA_VERSION=jdk-11.0.3+7
# Fri, 24 May 2019 23:44:48 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='25bce2f738cfc7c027da08e533bf3ede65e2767eae8eb9fcb46e92ee6aea7607';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.3_7.tar.gz';          ;;        s390x)          ESUM='c80e775d96c4b6edf399414503d28788060829c345abc575fc731f9e4d68b3bc';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.3_7.tar.gz';          ;;        amd64|x86_64)          ESUM='23cded2b43261016f0f246c85c8948d4a9b7f2d44988f75dad69723a7a526094';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_x64_linux_hotspot_11.0.3_7.tar.gz';          ;;        armhf)          ESUM='3fbe418368e6d5888d0f15c4751139eb60d9785b864158a001386537fa46f67e';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_arm_linux_hotspot_11.0.3_7.tar.gz';          ;;        aarch64|arm64)          ESUM='894a846600ddb0df474350037a2fb43e3343dc3606809a20c65e750580d8f2b9';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.3_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Fri, 24 May 2019 23:44:48 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 23:44:49 GMT
CMD ["jshell"]
# Sat, 01 Jun 2019 00:29:27 GMT
CMD ["gradle"]
# Sat, 01 Jun 2019 00:29:27 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 01 Jun 2019 00:29:29 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 01 Jun 2019 00:29:29 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 01 Jun 2019 00:29:30 GMT
WORKDIR /home/gradle
# Thu, 06 Jun 2019 22:21:23 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jun 2019 22:21:23 GMT
ENV GRADLE_VERSION=5.4.1
# Thu, 06 Jun 2019 22:21:23 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Thu, 06 Jun 2019 22:21:28 GMT
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
	-	`sha256:b7a73dac0e7840c08dc361ca597dd1d4171e35e5e1c1992c3682094bbaa35a20`  
		Last Modified: Fri, 24 May 2019 23:47:44 GMT  
		Size: 196.8 MB (196835164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1437279dcb15a9e6d7cd5d64cb0373363db9118cc6062d1357d2c08107b6c474`  
		Last Modified: Sat, 01 Jun 2019 00:31:50 GMT  
		Size: 4.5 KB (4487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddc28b6afa6e2ecf8d499851f281ab7cbcd18c05af1239cb506fb3aceac95053`  
		Last Modified: Thu, 06 Jun 2019 22:23:41 GMT  
		Size: 51.0 MB (51029547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f1a60747cbf2ad75cf3506944dbb846573871c4d2e67daae0d23f2ec62c5847`  
		Last Modified: Thu, 06 Jun 2019 22:23:35 GMT  
		Size: 87.1 MB (87093748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.4-jdk11` - linux; ppc64le

```console
$ docker pull gradle@sha256:85bc3e3d34032f9733dcddb02e49bd7f9dd090eecc203321768ccd0e22d7961c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **371.1 MB (371139728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88ceddd38f7b71844c8adb700729c15cbf8296dc5007982fafe5a519287f39f4`
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
# Thu, 30 May 2019 14:52:50 GMT
ENV JAVA_VERSION=jdk-11.0.3+7
# Thu, 30 May 2019 14:53:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='25bce2f738cfc7c027da08e533bf3ede65e2767eae8eb9fcb46e92ee6aea7607';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.3_7.tar.gz';          ;;        s390x)          ESUM='c80e775d96c4b6edf399414503d28788060829c345abc575fc731f9e4d68b3bc';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.3_7.tar.gz';          ;;        amd64|x86_64)          ESUM='23cded2b43261016f0f246c85c8948d4a9b7f2d44988f75dad69723a7a526094';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_x64_linux_hotspot_11.0.3_7.tar.gz';          ;;        armhf)          ESUM='3fbe418368e6d5888d0f15c4751139eb60d9785b864158a001386537fa46f67e';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_arm_linux_hotspot_11.0.3_7.tar.gz';          ;;        aarch64|arm64)          ESUM='894a846600ddb0df474350037a2fb43e3343dc3606809a20c65e750580d8f2b9';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.3_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Thu, 30 May 2019 14:53:22 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 May 2019 14:53:31 GMT
CMD ["jshell"]
# Sat, 01 Jun 2019 00:44:53 GMT
CMD ["gradle"]
# Sat, 01 Jun 2019 00:44:56 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 01 Jun 2019 00:45:07 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 01 Jun 2019 00:45:10 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 01 Jun 2019 00:45:13 GMT
WORKDIR /home/gradle
# Thu, 06 Jun 2019 22:33:07 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jun 2019 22:33:13 GMT
ENV GRADLE_VERSION=5.4.1
# Thu, 06 Jun 2019 22:33:20 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Thu, 06 Jun 2019 22:33:40 GMT
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
	-	`sha256:9b23099ee93870490d5159fc768edff6f53a3d95446dae8956eb0bf642dbf146`  
		Last Modified: Thu, 30 May 2019 15:03:01 GMT  
		Size: 181.1 MB (181127642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16797d325f1adb8540095a3bdda11bf6b7bd3ffb0a5fca673640d29a24454684`  
		Last Modified: Sat, 01 Jun 2019 00:50:35 GMT  
		Size: 4.5 KB (4536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78216cd3f665999e0ae4d504af66989531b2af1d2571d1fb6f99eac7e3af6a6`  
		Last Modified: Thu, 06 Jun 2019 22:44:28 GMT  
		Size: 59.6 MB (59586901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050ce446a92f7491e37f258937399c9843e8e86bf6a3270543e5420b8378a367`  
		Last Modified: Thu, 06 Jun 2019 22:44:15 GMT  
		Size: 87.1 MB (87093874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.4-jdk11` - linux; s390x

```console
$ docker pull gradle@sha256:e3a1e9ab98740cf0b6b53315fab25c9e0286a58bb9dfbd19a9a9fb108d7687f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.3 MB (351283557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fd2e0075198b923f5d5d3fdcc1df2a4797832f6676362e3048bfc85d856ff07`
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
# Fri, 24 May 2019 23:40:25 GMT
ENV JAVA_VERSION=jdk-11.0.3+7
# Fri, 24 May 2019 23:40:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='25bce2f738cfc7c027da08e533bf3ede65e2767eae8eb9fcb46e92ee6aea7607';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.3_7.tar.gz';          ;;        s390x)          ESUM='c80e775d96c4b6edf399414503d28788060829c345abc575fc731f9e4d68b3bc';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.3_7.tar.gz';          ;;        amd64|x86_64)          ESUM='23cded2b43261016f0f246c85c8948d4a9b7f2d44988f75dad69723a7a526094';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_x64_linux_hotspot_11.0.3_7.tar.gz';          ;;        armhf)          ESUM='3fbe418368e6d5888d0f15c4751139eb60d9785b864158a001386537fa46f67e';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_arm_linux_hotspot_11.0.3_7.tar.gz';          ;;        aarch64|arm64)          ESUM='894a846600ddb0df474350037a2fb43e3343dc3606809a20c65e750580d8f2b9';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.3_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Fri, 24 May 2019 23:40:32 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 23:40:32 GMT
CMD ["jshell"]
# Sat, 01 Jun 2019 00:42:10 GMT
CMD ["gradle"]
# Sat, 01 Jun 2019 00:42:10 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 01 Jun 2019 00:42:11 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 01 Jun 2019 00:42:12 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 01 Jun 2019 00:42:12 GMT
WORKDIR /home/gradle
# Thu, 06 Jun 2019 22:44:04 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jun 2019 22:44:05 GMT
ENV GRADLE_VERSION=5.4.1
# Thu, 06 Jun 2019 22:44:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Thu, 06 Jun 2019 22:44:10 GMT
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
	-	`sha256:fb239f004f769c02886c7df9a8fb2220fd5b2ad961ecca4c1032b844bb363b62`  
		Last Modified: Fri, 24 May 2019 23:43:01 GMT  
		Size: 175.8 MB (175799531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a77c14f8874e9e264236cfc0f5cf4e561322efef2c28bd304d51199ab7d3b1`  
		Last Modified: Sat, 01 Jun 2019 00:43:53 GMT  
		Size: 4.5 KB (4486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea42fbb2b54662e9f53d447875591605e4d1fda11db7071ef5c790923c63d8db`  
		Last Modified: Thu, 06 Jun 2019 22:47:52 GMT  
		Size: 50.6 MB (50555905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca3aafb6a53baaa8bf6811f102f6d2f953cc92c4ef8046752b78c71eb83dd612`  
		Last Modified: Thu, 06 Jun 2019 22:47:48 GMT  
		Size: 87.1 MB (87093715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.4-jdk12`

```console
$ docker pull gradle@sha256:a67c417981001c90cbbf80a01aff850b5223fa810b7d6a695356741e96fa68ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le
	-	linux; s390x

### `gradle:5.4-jdk12` - linux; amd64

```console
$ docker pull gradle@sha256:878c7d8e567ebc0ca7262219c321bd7d52013ce3020ce837cd8a583e93559db2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.6 MB (385581127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64f4cdd8b5b8dffb03f67fc59cd0db6f72d05b8b34b166c9bf21bc37efddb64d`
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
# Fri, 24 May 2019 23:45:01 GMT
ENV JAVA_VERSION=jdk-12.0.1+12
# Fri, 24 May 2019 23:45:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='0ecced06422628b1ca20b0501a6b544cc9da29a2026f9e18d7b206d7a84b7958';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_ppc64le_linux_hotspot_12.0.1_12.tar.gz';          ;;        s390x)          ESUM='ef7efa131cd3978e3a2bad567bc8d39ed7f6dcf2c8bae17dafca359262cdde19';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_s390x_linux_hotspot_12.0.1_12.tar.gz';          ;;        amd64|x86_64)          ESUM='dd3fdf3771a05a010029c1cf1aef516928eab55d6f5eb019008875e9ccbc8337';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_x64_linux_hotspot_12.0.1_12.tar.gz';          ;;        armhf)          ESUM='acfa12c3c59b5180c08faa033c777bbc67f51e8b6cb976659f0d4b54138d6549';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_arm_linux_hotspot_12.0.1_12.tar.gz';          ;;        aarch64|arm64)          ESUM='b1d58d593ac4c1b2d5dab0e8302ed4e07d5281c6c0cf1413b1604269bedec9c5';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_aarch64_linux_hotspot_12.0.1_12.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Fri, 24 May 2019 23:45:18 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 23:45:18 GMT
CMD ["jshell"]
# Sat, 01 Jun 2019 00:29:55 GMT
CMD ["gradle"]
# Sat, 01 Jun 2019 00:29:55 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 01 Jun 2019 00:29:56 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 01 Jun 2019 00:29:57 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 01 Jun 2019 00:29:57 GMT
WORKDIR /home/gradle
# Thu, 06 Jun 2019 22:21:55 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jun 2019 22:21:55 GMT
ENV GRADLE_VERSION=5.4.1
# Thu, 06 Jun 2019 22:21:55 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Thu, 06 Jun 2019 22:22:00 GMT
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
	-	`sha256:cc23a2766de46f4259de7b4649101ea3f050e8b04082f403490d9206dbc50b82`  
		Last Modified: Fri, 24 May 2019 23:48:28 GMT  
		Size: 208.0 MB (208002066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cc78288d1c07d2d682669a681fb8fd6a1a28cb2390c547a31894a5f79cc70a8`  
		Last Modified: Sat, 01 Jun 2019 00:32:07 GMT  
		Size: 4.5 KB (4491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1395819da2fa531fbb436463761c97b320db77a36b78579639a85303ffa776a5`  
		Last Modified: Thu, 06 Jun 2019 22:23:58 GMT  
		Size: 51.0 MB (51029401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61fae4ef452f95bbf3f5769a9922284ba1a5222e72a52c5eba6c1a79e0f75472`  
		Last Modified: Thu, 06 Jun 2019 22:23:52 GMT  
		Size: 87.1 MB (87093718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.4-jdk12` - linux; ppc64le

```console
$ docker pull gradle@sha256:1ee6badb6fcd9b5051b0d16c27bb4a9af70e7c60745f8b3a492cb56e107ba7e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.4 MB (381412792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcec0b1f750e6b40ac1d441cf47899ac4935a440b139a24bee2087606122f453`
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
# Thu, 30 May 2019 14:54:03 GMT
ENV JAVA_VERSION=jdk-12.0.1+12
# Thu, 30 May 2019 14:54:28 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='0ecced06422628b1ca20b0501a6b544cc9da29a2026f9e18d7b206d7a84b7958';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_ppc64le_linux_hotspot_12.0.1_12.tar.gz';          ;;        s390x)          ESUM='ef7efa131cd3978e3a2bad567bc8d39ed7f6dcf2c8bae17dafca359262cdde19';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_s390x_linux_hotspot_12.0.1_12.tar.gz';          ;;        amd64|x86_64)          ESUM='dd3fdf3771a05a010029c1cf1aef516928eab55d6f5eb019008875e9ccbc8337';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_x64_linux_hotspot_12.0.1_12.tar.gz';          ;;        armhf)          ESUM='acfa12c3c59b5180c08faa033c777bbc67f51e8b6cb976659f0d4b54138d6549';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_arm_linux_hotspot_12.0.1_12.tar.gz';          ;;        aarch64|arm64)          ESUM='b1d58d593ac4c1b2d5dab0e8302ed4e07d5281c6c0cf1413b1604269bedec9c5';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_aarch64_linux_hotspot_12.0.1_12.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Thu, 30 May 2019 14:54:34 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 May 2019 14:54:37 GMT
CMD ["jshell"]
# Sat, 01 Jun 2019 00:46:08 GMT
CMD ["gradle"]
# Sat, 01 Jun 2019 00:46:11 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 01 Jun 2019 00:46:18 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 01 Jun 2019 00:46:22 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 01 Jun 2019 00:46:26 GMT
WORKDIR /home/gradle
# Thu, 06 Jun 2019 22:38:07 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jun 2019 22:38:11 GMT
ENV GRADLE_VERSION=5.4.1
# Thu, 06 Jun 2019 22:38:14 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Thu, 06 Jun 2019 22:38:25 GMT
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
	-	`sha256:908d7453eea8ef0f756a0c12be04ebfd733ea1f6145689de2ba4730ca8187268`  
		Last Modified: Thu, 30 May 2019 15:04:07 GMT  
		Size: 191.4 MB (191401036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61ac55f83c28c32e927719cba4b28eaca4f9f361528f548a6822ca353085a06`  
		Last Modified: Sat, 01 Jun 2019 00:51:06 GMT  
		Size: 4.5 KB (4521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3d38ef06a1b59f90b14390c1d082a67941df51fb3fbd35d48bc58cab650fdd`  
		Last Modified: Thu, 06 Jun 2019 22:45:00 GMT  
		Size: 59.6 MB (59586637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20ce2f44d2c03b313560b4fe4685af6f057d870f7acb0c5ff0895048471697ba`  
		Last Modified: Thu, 06 Jun 2019 22:44:54 GMT  
		Size: 87.1 MB (87093823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.4-jdk12` - linux; s390x

```console
$ docker pull gradle@sha256:1f89f4a08b75369a5e44ebbfed8ae18abbe7915cd46d608d378f3bc0dca5fa92
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.5 MB (361511603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1967e63b842e5f5046c1619a725f9b2e895c858bb52a695a09cdeeacfdc67b3b`
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
# Fri, 24 May 2019 23:40:43 GMT
ENV JAVA_VERSION=jdk-12.0.1+12
# Fri, 24 May 2019 23:40:49 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='0ecced06422628b1ca20b0501a6b544cc9da29a2026f9e18d7b206d7a84b7958';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_ppc64le_linux_hotspot_12.0.1_12.tar.gz';          ;;        s390x)          ESUM='ef7efa131cd3978e3a2bad567bc8d39ed7f6dcf2c8bae17dafca359262cdde19';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_s390x_linux_hotspot_12.0.1_12.tar.gz';          ;;        amd64|x86_64)          ESUM='dd3fdf3771a05a010029c1cf1aef516928eab55d6f5eb019008875e9ccbc8337';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_x64_linux_hotspot_12.0.1_12.tar.gz';          ;;        armhf)          ESUM='acfa12c3c59b5180c08faa033c777bbc67f51e8b6cb976659f0d4b54138d6549';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_arm_linux_hotspot_12.0.1_12.tar.gz';          ;;        aarch64|arm64)          ESUM='b1d58d593ac4c1b2d5dab0e8302ed4e07d5281c6c0cf1413b1604269bedec9c5';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_aarch64_linux_hotspot_12.0.1_12.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Fri, 24 May 2019 23:40:50 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 23:40:50 GMT
CMD ["jshell"]
# Sat, 01 Jun 2019 00:42:28 GMT
CMD ["gradle"]
# Sat, 01 Jun 2019 00:42:28 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 01 Jun 2019 00:42:29 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 01 Jun 2019 00:42:29 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 01 Jun 2019 00:42:30 GMT
WORKDIR /home/gradle
# Thu, 06 Jun 2019 22:45:01 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jun 2019 22:45:02 GMT
ENV GRADLE_VERSION=5.4.1
# Thu, 06 Jun 2019 22:45:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Thu, 06 Jun 2019 22:45:07 GMT
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
	-	`sha256:95a72adf3107ccfe1ce44b2edc75dc80fc89c4615606385b70f4d75e7860702a`  
		Last Modified: Fri, 24 May 2019 23:43:42 GMT  
		Size: 186.0 MB (186026751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:775f12ee6a44cf3635d1629c33a4ccaca6d44440062f7418e74b09cf7a2e5dcf`  
		Last Modified: Sat, 01 Jun 2019 00:44:06 GMT  
		Size: 4.5 KB (4499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45e01b99589d1c72fd19b812a15fffc5c8bb3dfba46a095df8c0ebb95444f391`  
		Last Modified: Thu, 06 Jun 2019 22:48:10 GMT  
		Size: 50.6 MB (50556705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:485e570530fc0963d2b6dcc66fdd9c908e981bcbde94576184b6ffafa64311f5`  
		Last Modified: Thu, 06 Jun 2019 22:48:05 GMT  
		Size: 87.1 MB (87093728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.4-jdk8`

```console
$ docker pull gradle@sha256:10d52a03c47aca08b368567398677520d445f31065cd95f7a1f2c260f6ec9280
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le
	-	linux; s390x

### `gradle:5.4-jdk8` - linux; amd64

```console
$ docker pull gradle@sha256:9a965fa800ec4f4c7ff0455cb9d58bff529820a803606cd0a890b51495e68ec7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.5 MB (282466512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:461f5d50d440951ab14d3da681639453b643721bf909c638083e762afda95553`
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
# Mon, 17 Jun 2019 22:19:28 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 22:19:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='6596a6276ec2da86193cfafee242e1538cf54f6afb5d16b41dfb9e65ceeefce7';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='2aa7a1b82471e2219a539280fafbb098f672adf55c3f5250f41f9d5c2584314f';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='09f6ccbfd8a86e52665b56751403fd4e2513ad071e2b3f36bab73f86273d1ead';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 22:19:40 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jun 2019 01:25:27 GMT
CMD ["gradle"]
# Tue, 18 Jun 2019 01:25:27 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Jun 2019 01:25:29 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Tue, 18 Jun 2019 01:25:29 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Jun 2019 01:25:29 GMT
WORKDIR /home/gradle
# Tue, 18 Jun 2019 01:26:16 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 01:26:17 GMT
ENV GRADLE_VERSION=5.4.1
# Tue, 18 Jun 2019 01:26:17 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Tue, 18 Jun 2019 01:26:25 GMT
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
	-	`sha256:d07684a552aa5387e8186149929acc86a89295a071f46f343bb93d02cb6f1792`  
		Last Modified: Mon, 17 Jun 2019 22:21:19 GMT  
		Size: 104.9 MB (104889025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b990ce758aadbe1f52c55880077ee6e0f5d1c7cf4610c8e7c91f2e4ed421bd`  
		Last Modified: Tue, 18 Jun 2019 01:27:56 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee4dde05529bbd27ffd20b5d0f334f1c83bdde80d063c510632be2d40c27254`  
		Last Modified: Tue, 18 Jun 2019 01:28:13 GMT  
		Size: 51.0 MB (51027820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce451706ea31bfefc1974c3e570c1fe36eced9bbdfecf060d1d65610f24d9736`  
		Last Modified: Tue, 18 Jun 2019 01:28:07 GMT  
		Size: 87.1 MB (87093728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.4-jdk8` - linux; ppc64le

```console
$ docker pull gradle@sha256:9f8fc9441cae7e88a7babf847045fa289ff9731f47867662e0715f760cd4a8bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.1 MB (292077514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9853645d5b3c0c98fb379ab0ec7b0ffc6967431497e9a8808deed45382c1409a`
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
# Mon, 17 Jun 2019 22:16:36 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 22:16:53 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='6596a6276ec2da86193cfafee242e1538cf54f6afb5d16b41dfb9e65ceeefce7';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='2aa7a1b82471e2219a539280fafbb098f672adf55c3f5250f41f9d5c2584314f';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='09f6ccbfd8a86e52665b56751403fd4e2513ad071e2b3f36bab73f86273d1ead';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 22:16:57 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Jun 2019 23:21:28 GMT
CMD ["gradle"]
# Mon, 17 Jun 2019 23:21:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 17 Jun 2019 23:21:36 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Mon, 17 Jun 2019 23:21:38 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 17 Jun 2019 23:21:39 GMT
WORKDIR /home/gradle
# Mon, 17 Jun 2019 23:23:00 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 23:23:04 GMT
ENV GRADLE_VERSION=5.4.1
# Mon, 17 Jun 2019 23:23:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Mon, 17 Jun 2019 23:23:15 GMT
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
	-	`sha256:dc74f575ff930b02b460222a502abc89b8e1943e8b314b02cd5eb9a16dc5e0a0`  
		Last Modified: Mon, 17 Jun 2019 22:18:49 GMT  
		Size: 102.1 MB (102053907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdeb4feba0fea58cae59eb4f25a42913588e54ba96c3b2dfa06e19bf12d3ab51`  
		Last Modified: Mon, 17 Jun 2019 23:26:19 GMT  
		Size: 4.5 KB (4521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4e86a35eddfecf9bdd64ae1ffcb77e16d1e330e38868ecd48f07e83e4ca03d`  
		Last Modified: Mon, 17 Jun 2019 23:26:37 GMT  
		Size: 59.6 MB (59598460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922b273217f14ace4903c8d5f80c2fa58432fda2b80a493539dc197c57006196`  
		Last Modified: Mon, 17 Jun 2019 23:26:29 GMT  
		Size: 87.1 MB (87093851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.4-jdk8` - linux; s390x

```console
$ docker pull gradle@sha256:7f0ee769f47bf589d81b6ee8af78228c4f182defae644429679d214d99d566b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.1 MB (276066586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e889c0bc84452eb0f57d70be4e4294a61f9a637506c30b48b1bb71c4c7b42d8`
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
# Mon, 17 Jun 2019 21:42:09 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 21:42:18 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='6596a6276ec2da86193cfafee242e1538cf54f6afb5d16b41dfb9e65ceeefce7';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='2aa7a1b82471e2219a539280fafbb098f672adf55c3f5250f41f9d5c2584314f';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='09f6ccbfd8a86e52665b56751403fd4e2513ad071e2b3f36bab73f86273d1ead';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 21:42:19 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Jun 2019 22:17:19 GMT
CMD ["gradle"]
# Mon, 17 Jun 2019 22:17:20 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 17 Jun 2019 22:17:21 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Mon, 17 Jun 2019 22:17:21 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 17 Jun 2019 22:17:21 GMT
WORKDIR /home/gradle
# Mon, 17 Jun 2019 22:17:47 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 22:17:48 GMT
ENV GRADLE_VERSION=5.4.1
# Mon, 17 Jun 2019 22:17:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Mon, 17 Jun 2019 22:17:52 GMT
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
	-	`sha256:c092edc8fad3b5399f6ef4af658b84d6b7f29d63ca8c53f37fd61ac699c6bac9`  
		Last Modified: Mon, 17 Jun 2019 21:44:09 GMT  
		Size: 100.6 MB (100572741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5ddbc3c74c1f34f997d407b5f89cfecd5ec6f00afd0a64e9e298fee50c2ac2`  
		Last Modified: Mon, 17 Jun 2019 22:19:14 GMT  
		Size: 4.5 KB (4490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b0ead5b5cf93d1ae2fb456965b8ba00bc53b1cfcf86705b72741b06d729eab`  
		Last Modified: Mon, 17 Jun 2019 22:19:25 GMT  
		Size: 50.6 MB (50565678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27d46fb01843b7b309b514fa9a9b244997c75f11da584dc98302a3d8827a444`  
		Last Modified: Mon, 17 Jun 2019 22:19:21 GMT  
		Size: 87.1 MB (87093757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.4-jre`

```console
$ docker pull gradle@sha256:6ced7e1ef993006b8277d43132304f20e44794ff9ddb9fcdb90826a087990e43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le
	-	linux; s390x

### `gradle:5.4-jre` - linux; amd64

```console
$ docker pull gradle@sha256:b01a1e8f634162d02e37dea5bbe4fe19f64dc5a32edb976a24240e6aac098d8e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.8 MB (218790402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96864d5913bc010b9aa8a9fad5cc5d4714b6d8289c990c8e07112c90e345b375`
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
# Mon, 17 Jun 2019 22:19:28 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 22:19:52 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='7e09a9939c0baff8f24277df71844dc121f0bdfa855c2a02fb557e0d3438b9c5';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='90554726525b4acb38dae6f1f958711476e5484ff593a0666f43f2a044bb070a';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='96d24d94c022b3e414b612cae8829244329d71ad2cce790f099c020f33247e7e';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 22:19:53 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jun 2019 01:26:29 GMT
CMD ["gradle"]
# Tue, 18 Jun 2019 01:26:29 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Jun 2019 01:26:30 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Tue, 18 Jun 2019 01:26:30 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Jun 2019 01:26:30 GMT
WORKDIR /home/gradle
# Tue, 18 Jun 2019 01:27:03 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 01:27:04 GMT
ENV GRADLE_VERSION=5.4.1
# Tue, 18 Jun 2019 01:27:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Tue, 18 Jun 2019 01:27:12 GMT
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
	-	`sha256:7dceef744034b9c1ebda80f9bb8ac2328b67a3b5dd5bfd2b434270158a65c9da`  
		Last Modified: Mon, 17 Jun 2019 22:21:39 GMT  
		Size: 41.2 MB (41213310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1794aac93249393412d01decea0cfc967752e3a52648f44f4ddf5e881b649f`  
		Last Modified: Tue, 18 Jun 2019 01:28:27 GMT  
		Size: 4.5 KB (4487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf534951ee0b1fb403a55a65591f724e91f17a287ed13328f35d6e74c3d8460`  
		Last Modified: Tue, 18 Jun 2019 01:28:47 GMT  
		Size: 51.0 MB (51027406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf675532a693fab6ef14b2dabc2a567c28d5b977706f2352b3480c898472f38`  
		Last Modified: Tue, 18 Jun 2019 01:28:38 GMT  
		Size: 87.1 MB (87093748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.4-jre` - linux; ppc64le

```console
$ docker pull gradle@sha256:4e03cd0592d7c5b0e24164dc979a09497f1108969cb56f33c4e64c8bd3d86521
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.3 MB (230300048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9613f2083df97c237a83e3d778f904c3b2f255a2113a5c6866e419730cee0021`
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
# Mon, 17 Jun 2019 22:16:36 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 22:17:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='7e09a9939c0baff8f24277df71844dc121f0bdfa855c2a02fb557e0d3438b9c5';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='90554726525b4acb38dae6f1f958711476e5484ff593a0666f43f2a044bb070a';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='96d24d94c022b3e414b612cae8829244329d71ad2cce790f099c020f33247e7e';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 22:17:20 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Jun 2019 23:23:24 GMT
CMD ["gradle"]
# Mon, 17 Jun 2019 23:23:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 17 Jun 2019 23:23:31 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Mon, 17 Jun 2019 23:23:33 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 17 Jun 2019 23:23:35 GMT
WORKDIR /home/gradle
# Mon, 17 Jun 2019 23:25:24 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 23:25:28 GMT
ENV GRADLE_VERSION=5.4.1
# Mon, 17 Jun 2019 23:25:30 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Mon, 17 Jun 2019 23:25:39 GMT
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
	-	`sha256:e24ade711a95cc655ad5073d5a9804e3cb695359688f8eb07dba75e27a111a74`  
		Last Modified: Mon, 17 Jun 2019 22:19:12 GMT  
		Size: 40.3 MB (40274286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2862fe486cb5da6618d65f799f514e2e035d852a23e527a4f81b4e85307cf69`  
		Last Modified: Mon, 17 Jun 2019 23:27:12 GMT  
		Size: 4.5 KB (4520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc5d8bf045a10eadff3cfb40939e9619a4fdeccf706a0cf778b3fdb69522eae`  
		Last Modified: Mon, 17 Jun 2019 23:27:30 GMT  
		Size: 59.6 MB (59600639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee796a68c96176ceaee374a02ffe27e25bb72516721d5837cf1959b8ff25daf8`  
		Last Modified: Mon, 17 Jun 2019 23:27:22 GMT  
		Size: 87.1 MB (87093828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.4-jre` - linux; s390x

```console
$ docker pull gradle@sha256:5116536036cd4f4445e77f038d2853b962510ca04c810c8c6836d6d8b692fac1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.4 MB (214406821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57499856bcabda19d2e05939de5fc6340a6cd369f25e6fab3f72b58df5629be7`
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
# Mon, 17 Jun 2019 21:42:09 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 21:42:27 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='7e09a9939c0baff8f24277df71844dc121f0bdfa855c2a02fb557e0d3438b9c5';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='90554726525b4acb38dae6f1f958711476e5484ff593a0666f43f2a044bb070a';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='96d24d94c022b3e414b612cae8829244329d71ad2cce790f099c020f33247e7e';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 21:42:27 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Jun 2019 22:17:59 GMT
CMD ["gradle"]
# Mon, 17 Jun 2019 22:17:59 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 17 Jun 2019 22:18:00 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Mon, 17 Jun 2019 22:18:00 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 17 Jun 2019 22:18:01 GMT
WORKDIR /home/gradle
# Mon, 17 Jun 2019 22:18:30 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 22:18:31 GMT
ENV GRADLE_VERSION=5.4.1
# Mon, 17 Jun 2019 22:18:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Mon, 17 Jun 2019 22:18:35 GMT
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
	-	`sha256:5e09b82e1f8177c05e0964c7fbea0ee237118720085a56e1a21ffd2fdba92482`  
		Last Modified: Mon, 17 Jun 2019 21:44:23 GMT  
		Size: 38.9 MB (38912389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:863864003200ba226055e52a38179c50641ebafdc76debb10925293fca6a4b4d`  
		Last Modified: Mon, 17 Jun 2019 22:19:38 GMT  
		Size: 4.5 KB (4491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac04171c7edb7da1e4354ce47ba1c527fdbd6a7c2cbdbde80ae838de75c250f`  
		Last Modified: Mon, 17 Jun 2019 22:19:48 GMT  
		Size: 50.6 MB (50566295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1ecee28237d6120b6481066f57f51c96cc92794ece847f18ac3c2c0a17bc8a`  
		Last Modified: Mon, 17 Jun 2019 22:19:46 GMT  
		Size: 87.1 MB (87093726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.4-jre12`

```console
$ docker pull gradle@sha256:d228170fc89023a59d46b6229c79c2825a3cfc1a116b79704c36f1eac674a3ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le
	-	linux; s390x

### `gradle:5.4-jre12` - linux; amd64

```console
$ docker pull gradle@sha256:b99be7dc867b8db6ea3f673c3067772d0bf1b6c5820afe0d7c108df0b1138600
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.5 MB (225462373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e9645e3a56cf0f677f2f628f9b43d7c156133fdeea95021c5a783463cab0389`
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
# Fri, 24 May 2019 23:45:01 GMT
ENV JAVA_VERSION=jdk-12.0.1+12
# Fri, 24 May 2019 23:45:28 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='0007442c929de09104749fa4c945dfde476cbeab27122b5705d1a2c56d0efac4';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jre_ppc64le_linux_hotspot_12.0.1_12.tar.gz';          ;;        s390x)          ESUM='161464b6d2fd68afdf41c54aa326049ff2ad777d6a13c0694cee2cf9b0aafa52';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jre_s390x_linux_hotspot_12.0.1_12.tar.gz';          ;;        amd64|x86_64)          ESUM='85b3c4065b1540f1d0dbe533955a199e54a0cbe7bd6e1111e59d54e68b2f5b43';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jre_x64_linux_hotspot_12.0.1_12.tar.gz';          ;;        aarch64|arm64)          ESUM='c6fa30f2351a8c981be018c16941dac16c21bfdf86474dc586baaf166b3bc00c';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jre_aarch64_linux_hotspot_12.0.1_12.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Fri, 24 May 2019 23:45:29 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 01 Jun 2019 00:30:22 GMT
CMD ["gradle"]
# Sat, 01 Jun 2019 00:30:22 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 01 Jun 2019 00:30:24 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 01 Jun 2019 00:30:24 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 01 Jun 2019 00:30:25 GMT
WORKDIR /home/gradle
# Thu, 06 Jun 2019 22:22:27 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jun 2019 22:22:28 GMT
ENV GRADLE_VERSION=5.4.1
# Thu, 06 Jun 2019 22:22:28 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Thu, 06 Jun 2019 22:22:33 GMT
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
	-	`sha256:0a7d43d263ecb9e79397e3867e8ccf310720d2b0a94f2651b333c3394eddcd91`  
		Last Modified: Fri, 24 May 2019 23:48:43 GMT  
		Size: 47.9 MB (47883616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b03f39b04da609efbcd589fcb8def5c307bc273e668d983f366258d31e075c`  
		Last Modified: Sat, 01 Jun 2019 00:32:25 GMT  
		Size: 4.5 KB (4485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00429253f317b376457bda0583fea1fee0b6d2a8c9c2c9abbf02be31768bdc0`  
		Last Modified: Thu, 06 Jun 2019 22:24:22 GMT  
		Size: 51.0 MB (51029105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c74a0728ad9a49942e1fb68811e16bc9aba1459b6d03cd27fd2dd4d1a8eaecc`  
		Last Modified: Thu, 06 Jun 2019 22:24:30 GMT  
		Size: 87.1 MB (87093716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.4-jre12` - linux; ppc64le

```console
$ docker pull gradle@sha256:1fd64fe845d06db496cfc46ea01aba9d32a3f1ab7ac03315086c2055c52a8be2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.0 MB (234040260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86dc6a277555506e0eaff80971b1ebfc562c80317161f5c64be0dcd881376f37`
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
# Thu, 30 May 2019 14:54:03 GMT
ENV JAVA_VERSION=jdk-12.0.1+12
# Thu, 30 May 2019 14:55:00 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='0007442c929de09104749fa4c945dfde476cbeab27122b5705d1a2c56d0efac4';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jre_ppc64le_linux_hotspot_12.0.1_12.tar.gz';          ;;        s390x)          ESUM='161464b6d2fd68afdf41c54aa326049ff2ad777d6a13c0694cee2cf9b0aafa52';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jre_s390x_linux_hotspot_12.0.1_12.tar.gz';          ;;        amd64|x86_64)          ESUM='85b3c4065b1540f1d0dbe533955a199e54a0cbe7bd6e1111e59d54e68b2f5b43';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jre_x64_linux_hotspot_12.0.1_12.tar.gz';          ;;        aarch64|arm64)          ESUM='c6fa30f2351a8c981be018c16941dac16c21bfdf86474dc586baaf166b3bc00c';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jre_aarch64_linux_hotspot_12.0.1_12.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Thu, 30 May 2019 14:55:05 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 01 Jun 2019 00:47:32 GMT
CMD ["gradle"]
# Sat, 01 Jun 2019 00:47:35 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 01 Jun 2019 00:47:45 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 01 Jun 2019 00:47:49 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 01 Jun 2019 00:47:53 GMT
WORKDIR /home/gradle
# Thu, 06 Jun 2019 22:41:30 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jun 2019 22:41:33 GMT
ENV GRADLE_VERSION=5.4.1
# Thu, 06 Jun 2019 22:41:37 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Thu, 06 Jun 2019 22:41:46 GMT
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
	-	`sha256:8c6b1710c2abedc98178cd6a3a07a048c4d6a5c9009d5e8119fd274dd9256a7a`  
		Last Modified: Thu, 30 May 2019 15:04:46 GMT  
		Size: 44.0 MB (44028971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd927578c2b05b7c4e2284d229feba69110fc767861094a4aabbf1a0559f9bb4`  
		Last Modified: Sat, 01 Jun 2019 00:51:32 GMT  
		Size: 4.5 KB (4527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22465a75cea68ebca19f62dca1ff2557b7af09640b95a327e7bd4c52d739686e`  
		Last Modified: Thu, 06 Jun 2019 22:45:34 GMT  
		Size: 59.6 MB (59586163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad4f47978eefaba141d0eae3c6bbcca3046a77c6a3ee91eaae0a342e49303fe3`  
		Last Modified: Thu, 06 Jun 2019 22:45:27 GMT  
		Size: 87.1 MB (87093824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.4-jre12` - linux; s390x

```console
$ docker pull gradle@sha256:90ab03cc63da3bb714c80ad472bcae1b305b78607e6af2bda26ce9772ab6b881
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.3 MB (219269569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef55ebc7da95f2bda060b5e18aa91333bc16e916cb6014c6c74f7f3562f68293`
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
# Fri, 24 May 2019 23:40:43 GMT
ENV JAVA_VERSION=jdk-12.0.1+12
# Fri, 24 May 2019 23:40:56 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='0007442c929de09104749fa4c945dfde476cbeab27122b5705d1a2c56d0efac4';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jre_ppc64le_linux_hotspot_12.0.1_12.tar.gz';          ;;        s390x)          ESUM='161464b6d2fd68afdf41c54aa326049ff2ad777d6a13c0694cee2cf9b0aafa52';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jre_s390x_linux_hotspot_12.0.1_12.tar.gz';          ;;        amd64|x86_64)          ESUM='85b3c4065b1540f1d0dbe533955a199e54a0cbe7bd6e1111e59d54e68b2f5b43';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jre_x64_linux_hotspot_12.0.1_12.tar.gz';          ;;        aarch64|arm64)          ESUM='c6fa30f2351a8c981be018c16941dac16c21bfdf86474dc586baaf166b3bc00c';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jre_aarch64_linux_hotspot_12.0.1_12.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Fri, 24 May 2019 23:40:56 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 01 Jun 2019 00:42:46 GMT
CMD ["gradle"]
# Sat, 01 Jun 2019 00:42:47 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 01 Jun 2019 00:42:48 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 01 Jun 2019 00:42:48 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 01 Jun 2019 00:42:48 GMT
WORKDIR /home/gradle
# Thu, 06 Jun 2019 22:46:18 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jun 2019 22:46:19 GMT
ENV GRADLE_VERSION=5.4.1
# Thu, 06 Jun 2019 22:46:19 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Thu, 06 Jun 2019 22:46:24 GMT
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
	-	`sha256:a86ec8cf2777320cadf57b6b993bbb362dcc370722e5311ccb1c577e4ba2bd3a`  
		Last Modified: Fri, 24 May 2019 23:43:58 GMT  
		Size: 43.8 MB (43785544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b4d079dbf1c7fd44ec42fdf0e75bcb081830e2e0c887963b818b3eda45611e`  
		Last Modified: Sat, 01 Jun 2019 00:44:21 GMT  
		Size: 4.5 KB (4491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c581503f02d3e2b1d39eab7b72774180a601f73907c6ff15c2e8282b42faea37`  
		Last Modified: Thu, 06 Jun 2019 22:48:32 GMT  
		Size: 50.6 MB (50555896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42c16aee08c94ca19292c971f965d78c0f776aa95bf8c3814f5c8923d72c375`  
		Last Modified: Thu, 06 Jun 2019 22:48:23 GMT  
		Size: 87.1 MB (87093718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:5.4-jre8`

```console
$ docker pull gradle@sha256:6ced7e1ef993006b8277d43132304f20e44794ff9ddb9fcdb90826a087990e43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le
	-	linux; s390x

### `gradle:5.4-jre8` - linux; amd64

```console
$ docker pull gradle@sha256:b01a1e8f634162d02e37dea5bbe4fe19f64dc5a32edb976a24240e6aac098d8e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.8 MB (218790402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96864d5913bc010b9aa8a9fad5cc5d4714b6d8289c990c8e07112c90e345b375`
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
# Mon, 17 Jun 2019 22:19:28 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 22:19:52 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='7e09a9939c0baff8f24277df71844dc121f0bdfa855c2a02fb557e0d3438b9c5';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='90554726525b4acb38dae6f1f958711476e5484ff593a0666f43f2a044bb070a';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='96d24d94c022b3e414b612cae8829244329d71ad2cce790f099c020f33247e7e';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 22:19:53 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jun 2019 01:26:29 GMT
CMD ["gradle"]
# Tue, 18 Jun 2019 01:26:29 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Jun 2019 01:26:30 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Tue, 18 Jun 2019 01:26:30 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Jun 2019 01:26:30 GMT
WORKDIR /home/gradle
# Tue, 18 Jun 2019 01:27:03 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 01:27:04 GMT
ENV GRADLE_VERSION=5.4.1
# Tue, 18 Jun 2019 01:27:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Tue, 18 Jun 2019 01:27:12 GMT
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
	-	`sha256:7dceef744034b9c1ebda80f9bb8ac2328b67a3b5dd5bfd2b434270158a65c9da`  
		Last Modified: Mon, 17 Jun 2019 22:21:39 GMT  
		Size: 41.2 MB (41213310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1794aac93249393412d01decea0cfc967752e3a52648f44f4ddf5e881b649f`  
		Last Modified: Tue, 18 Jun 2019 01:28:27 GMT  
		Size: 4.5 KB (4487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf534951ee0b1fb403a55a65591f724e91f17a287ed13328f35d6e74c3d8460`  
		Last Modified: Tue, 18 Jun 2019 01:28:47 GMT  
		Size: 51.0 MB (51027406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf675532a693fab6ef14b2dabc2a567c28d5b977706f2352b3480c898472f38`  
		Last Modified: Tue, 18 Jun 2019 01:28:38 GMT  
		Size: 87.1 MB (87093748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.4-jre8` - linux; ppc64le

```console
$ docker pull gradle@sha256:4e03cd0592d7c5b0e24164dc979a09497f1108969cb56f33c4e64c8bd3d86521
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.3 MB (230300048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9613f2083df97c237a83e3d778f904c3b2f255a2113a5c6866e419730cee0021`
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
# Mon, 17 Jun 2019 22:16:36 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 22:17:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='7e09a9939c0baff8f24277df71844dc121f0bdfa855c2a02fb557e0d3438b9c5';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='90554726525b4acb38dae6f1f958711476e5484ff593a0666f43f2a044bb070a';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='96d24d94c022b3e414b612cae8829244329d71ad2cce790f099c020f33247e7e';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 22:17:20 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Jun 2019 23:23:24 GMT
CMD ["gradle"]
# Mon, 17 Jun 2019 23:23:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 17 Jun 2019 23:23:31 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Mon, 17 Jun 2019 23:23:33 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 17 Jun 2019 23:23:35 GMT
WORKDIR /home/gradle
# Mon, 17 Jun 2019 23:25:24 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 23:25:28 GMT
ENV GRADLE_VERSION=5.4.1
# Mon, 17 Jun 2019 23:25:30 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Mon, 17 Jun 2019 23:25:39 GMT
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
	-	`sha256:e24ade711a95cc655ad5073d5a9804e3cb695359688f8eb07dba75e27a111a74`  
		Last Modified: Mon, 17 Jun 2019 22:19:12 GMT  
		Size: 40.3 MB (40274286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2862fe486cb5da6618d65f799f514e2e035d852a23e527a4f81b4e85307cf69`  
		Last Modified: Mon, 17 Jun 2019 23:27:12 GMT  
		Size: 4.5 KB (4520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc5d8bf045a10eadff3cfb40939e9619a4fdeccf706a0cf778b3fdb69522eae`  
		Last Modified: Mon, 17 Jun 2019 23:27:30 GMT  
		Size: 59.6 MB (59600639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee796a68c96176ceaee374a02ffe27e25bb72516721d5837cf1959b8ff25daf8`  
		Last Modified: Mon, 17 Jun 2019 23:27:22 GMT  
		Size: 87.1 MB (87093828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:5.4-jre8` - linux; s390x

```console
$ docker pull gradle@sha256:5116536036cd4f4445e77f038d2853b962510ca04c810c8c6836d6d8b692fac1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.4 MB (214406821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57499856bcabda19d2e05939de5fc6340a6cd369f25e6fab3f72b58df5629be7`
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
# Mon, 17 Jun 2019 21:42:09 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 21:42:27 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='7e09a9939c0baff8f24277df71844dc121f0bdfa855c2a02fb557e0d3438b9c5';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='90554726525b4acb38dae6f1f958711476e5484ff593a0666f43f2a044bb070a';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='96d24d94c022b3e414b612cae8829244329d71ad2cce790f099c020f33247e7e';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 21:42:27 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Jun 2019 22:17:59 GMT
CMD ["gradle"]
# Mon, 17 Jun 2019 22:17:59 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 17 Jun 2019 22:18:00 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Mon, 17 Jun 2019 22:18:00 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 17 Jun 2019 22:18:01 GMT
WORKDIR /home/gradle
# Mon, 17 Jun 2019 22:18:30 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 22:18:31 GMT
ENV GRADLE_VERSION=5.4.1
# Mon, 17 Jun 2019 22:18:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Mon, 17 Jun 2019 22:18:35 GMT
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
	-	`sha256:5e09b82e1f8177c05e0964c7fbea0ee237118720085a56e1a21ffd2fdba92482`  
		Last Modified: Mon, 17 Jun 2019 21:44:23 GMT  
		Size: 38.9 MB (38912389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:863864003200ba226055e52a38179c50641ebafdc76debb10925293fca6a4b4d`  
		Last Modified: Mon, 17 Jun 2019 22:19:38 GMT  
		Size: 4.5 KB (4491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac04171c7edb7da1e4354ce47ba1c527fdbd6a7c2cbdbde80ae838de75c250f`  
		Last Modified: Mon, 17 Jun 2019 22:19:48 GMT  
		Size: 50.6 MB (50566295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1ecee28237d6120b6481066f57f51c96cc92794ece847f18ac3c2c0a17bc8a`  
		Last Modified: Mon, 17 Jun 2019 22:19:46 GMT  
		Size: 87.1 MB (87093726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk`

```console
$ docker pull gradle@sha256:10d52a03c47aca08b368567398677520d445f31065cd95f7a1f2c260f6ec9280
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le
	-	linux; s390x

### `gradle:jdk` - linux; amd64

```console
$ docker pull gradle@sha256:9a965fa800ec4f4c7ff0455cb9d58bff529820a803606cd0a890b51495e68ec7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.5 MB (282466512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:461f5d50d440951ab14d3da681639453b643721bf909c638083e762afda95553`
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
# Mon, 17 Jun 2019 22:19:28 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 22:19:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='6596a6276ec2da86193cfafee242e1538cf54f6afb5d16b41dfb9e65ceeefce7';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='2aa7a1b82471e2219a539280fafbb098f672adf55c3f5250f41f9d5c2584314f';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='09f6ccbfd8a86e52665b56751403fd4e2513ad071e2b3f36bab73f86273d1ead';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 22:19:40 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jun 2019 01:25:27 GMT
CMD ["gradle"]
# Tue, 18 Jun 2019 01:25:27 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Jun 2019 01:25:29 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Tue, 18 Jun 2019 01:25:29 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Jun 2019 01:25:29 GMT
WORKDIR /home/gradle
# Tue, 18 Jun 2019 01:26:16 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 01:26:17 GMT
ENV GRADLE_VERSION=5.4.1
# Tue, 18 Jun 2019 01:26:17 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Tue, 18 Jun 2019 01:26:25 GMT
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
	-	`sha256:d07684a552aa5387e8186149929acc86a89295a071f46f343bb93d02cb6f1792`  
		Last Modified: Mon, 17 Jun 2019 22:21:19 GMT  
		Size: 104.9 MB (104889025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b990ce758aadbe1f52c55880077ee6e0f5d1c7cf4610c8e7c91f2e4ed421bd`  
		Last Modified: Tue, 18 Jun 2019 01:27:56 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee4dde05529bbd27ffd20b5d0f334f1c83bdde80d063c510632be2d40c27254`  
		Last Modified: Tue, 18 Jun 2019 01:28:13 GMT  
		Size: 51.0 MB (51027820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce451706ea31bfefc1974c3e570c1fe36eced9bbdfecf060d1d65610f24d9736`  
		Last Modified: Tue, 18 Jun 2019 01:28:07 GMT  
		Size: 87.1 MB (87093728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk` - linux; ppc64le

```console
$ docker pull gradle@sha256:9f8fc9441cae7e88a7babf847045fa289ff9731f47867662e0715f760cd4a8bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.1 MB (292077514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9853645d5b3c0c98fb379ab0ec7b0ffc6967431497e9a8808deed45382c1409a`
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
# Mon, 17 Jun 2019 22:16:36 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 22:16:53 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='6596a6276ec2da86193cfafee242e1538cf54f6afb5d16b41dfb9e65ceeefce7';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='2aa7a1b82471e2219a539280fafbb098f672adf55c3f5250f41f9d5c2584314f';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='09f6ccbfd8a86e52665b56751403fd4e2513ad071e2b3f36bab73f86273d1ead';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 22:16:57 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Jun 2019 23:21:28 GMT
CMD ["gradle"]
# Mon, 17 Jun 2019 23:21:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 17 Jun 2019 23:21:36 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Mon, 17 Jun 2019 23:21:38 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 17 Jun 2019 23:21:39 GMT
WORKDIR /home/gradle
# Mon, 17 Jun 2019 23:23:00 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 23:23:04 GMT
ENV GRADLE_VERSION=5.4.1
# Mon, 17 Jun 2019 23:23:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Mon, 17 Jun 2019 23:23:15 GMT
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
	-	`sha256:dc74f575ff930b02b460222a502abc89b8e1943e8b314b02cd5eb9a16dc5e0a0`  
		Last Modified: Mon, 17 Jun 2019 22:18:49 GMT  
		Size: 102.1 MB (102053907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdeb4feba0fea58cae59eb4f25a42913588e54ba96c3b2dfa06e19bf12d3ab51`  
		Last Modified: Mon, 17 Jun 2019 23:26:19 GMT  
		Size: 4.5 KB (4521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4e86a35eddfecf9bdd64ae1ffcb77e16d1e330e38868ecd48f07e83e4ca03d`  
		Last Modified: Mon, 17 Jun 2019 23:26:37 GMT  
		Size: 59.6 MB (59598460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922b273217f14ace4903c8d5f80c2fa58432fda2b80a493539dc197c57006196`  
		Last Modified: Mon, 17 Jun 2019 23:26:29 GMT  
		Size: 87.1 MB (87093851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk` - linux; s390x

```console
$ docker pull gradle@sha256:7f0ee769f47bf589d81b6ee8af78228c4f182defae644429679d214d99d566b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.1 MB (276066586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e889c0bc84452eb0f57d70be4e4294a61f9a637506c30b48b1bb71c4c7b42d8`
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
# Mon, 17 Jun 2019 21:42:09 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 21:42:18 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='6596a6276ec2da86193cfafee242e1538cf54f6afb5d16b41dfb9e65ceeefce7';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='2aa7a1b82471e2219a539280fafbb098f672adf55c3f5250f41f9d5c2584314f';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='09f6ccbfd8a86e52665b56751403fd4e2513ad071e2b3f36bab73f86273d1ead';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 21:42:19 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Jun 2019 22:17:19 GMT
CMD ["gradle"]
# Mon, 17 Jun 2019 22:17:20 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 17 Jun 2019 22:17:21 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Mon, 17 Jun 2019 22:17:21 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 17 Jun 2019 22:17:21 GMT
WORKDIR /home/gradle
# Mon, 17 Jun 2019 22:17:47 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 22:17:48 GMT
ENV GRADLE_VERSION=5.4.1
# Mon, 17 Jun 2019 22:17:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Mon, 17 Jun 2019 22:17:52 GMT
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
	-	`sha256:c092edc8fad3b5399f6ef4af658b84d6b7f29d63ca8c53f37fd61ac699c6bac9`  
		Last Modified: Mon, 17 Jun 2019 21:44:09 GMT  
		Size: 100.6 MB (100572741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5ddbc3c74c1f34f997d407b5f89cfecd5ec6f00afd0a64e9e298fee50c2ac2`  
		Last Modified: Mon, 17 Jun 2019 22:19:14 GMT  
		Size: 4.5 KB (4490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b0ead5b5cf93d1ae2fb456965b8ba00bc53b1cfcf86705b72741b06d729eab`  
		Last Modified: Mon, 17 Jun 2019 22:19:25 GMT  
		Size: 50.6 MB (50565678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27d46fb01843b7b309b514fa9a9b244997c75f11da584dc98302a3d8827a444`  
		Last Modified: Mon, 17 Jun 2019 22:19:21 GMT  
		Size: 87.1 MB (87093757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk11`

```console
$ docker pull gradle@sha256:d9e6ec48af5154c80c26ec6e3164e120693ecbf482bb0b25ea4859984ace4cc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le
	-	linux; s390x

### `gradle:jdk11` - linux; amd64

```console
$ docker pull gradle@sha256:377e381e0da8ba127b3ec9798a66163dff9c451b405e680ec3207fb061886928
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **374.4 MB (374414397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9652eea6417b7675474bc0890e371a4ff007f5d6c5269a1f49bd2be03b51b3a0`
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
# Fri, 24 May 2019 23:44:35 GMT
ENV JAVA_VERSION=jdk-11.0.3+7
# Fri, 24 May 2019 23:44:48 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='25bce2f738cfc7c027da08e533bf3ede65e2767eae8eb9fcb46e92ee6aea7607';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.3_7.tar.gz';          ;;        s390x)          ESUM='c80e775d96c4b6edf399414503d28788060829c345abc575fc731f9e4d68b3bc';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.3_7.tar.gz';          ;;        amd64|x86_64)          ESUM='23cded2b43261016f0f246c85c8948d4a9b7f2d44988f75dad69723a7a526094';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_x64_linux_hotspot_11.0.3_7.tar.gz';          ;;        armhf)          ESUM='3fbe418368e6d5888d0f15c4751139eb60d9785b864158a001386537fa46f67e';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_arm_linux_hotspot_11.0.3_7.tar.gz';          ;;        aarch64|arm64)          ESUM='894a846600ddb0df474350037a2fb43e3343dc3606809a20c65e750580d8f2b9';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.3_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Fri, 24 May 2019 23:44:48 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 23:44:49 GMT
CMD ["jshell"]
# Sat, 01 Jun 2019 00:29:27 GMT
CMD ["gradle"]
# Sat, 01 Jun 2019 00:29:27 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 01 Jun 2019 00:29:29 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 01 Jun 2019 00:29:29 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 01 Jun 2019 00:29:30 GMT
WORKDIR /home/gradle
# Thu, 06 Jun 2019 22:21:23 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jun 2019 22:21:23 GMT
ENV GRADLE_VERSION=5.4.1
# Thu, 06 Jun 2019 22:21:23 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Thu, 06 Jun 2019 22:21:28 GMT
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
	-	`sha256:b7a73dac0e7840c08dc361ca597dd1d4171e35e5e1c1992c3682094bbaa35a20`  
		Last Modified: Fri, 24 May 2019 23:47:44 GMT  
		Size: 196.8 MB (196835164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1437279dcb15a9e6d7cd5d64cb0373363db9118cc6062d1357d2c08107b6c474`  
		Last Modified: Sat, 01 Jun 2019 00:31:50 GMT  
		Size: 4.5 KB (4487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddc28b6afa6e2ecf8d499851f281ab7cbcd18c05af1239cb506fb3aceac95053`  
		Last Modified: Thu, 06 Jun 2019 22:23:41 GMT  
		Size: 51.0 MB (51029547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f1a60747cbf2ad75cf3506944dbb846573871c4d2e67daae0d23f2ec62c5847`  
		Last Modified: Thu, 06 Jun 2019 22:23:35 GMT  
		Size: 87.1 MB (87093748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11` - linux; ppc64le

```console
$ docker pull gradle@sha256:85bc3e3d34032f9733dcddb02e49bd7f9dd090eecc203321768ccd0e22d7961c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **371.1 MB (371139728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88ceddd38f7b71844c8adb700729c15cbf8296dc5007982fafe5a519287f39f4`
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
# Thu, 30 May 2019 14:52:50 GMT
ENV JAVA_VERSION=jdk-11.0.3+7
# Thu, 30 May 2019 14:53:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='25bce2f738cfc7c027da08e533bf3ede65e2767eae8eb9fcb46e92ee6aea7607';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.3_7.tar.gz';          ;;        s390x)          ESUM='c80e775d96c4b6edf399414503d28788060829c345abc575fc731f9e4d68b3bc';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.3_7.tar.gz';          ;;        amd64|x86_64)          ESUM='23cded2b43261016f0f246c85c8948d4a9b7f2d44988f75dad69723a7a526094';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_x64_linux_hotspot_11.0.3_7.tar.gz';          ;;        armhf)          ESUM='3fbe418368e6d5888d0f15c4751139eb60d9785b864158a001386537fa46f67e';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_arm_linux_hotspot_11.0.3_7.tar.gz';          ;;        aarch64|arm64)          ESUM='894a846600ddb0df474350037a2fb43e3343dc3606809a20c65e750580d8f2b9';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.3_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Thu, 30 May 2019 14:53:22 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 May 2019 14:53:31 GMT
CMD ["jshell"]
# Sat, 01 Jun 2019 00:44:53 GMT
CMD ["gradle"]
# Sat, 01 Jun 2019 00:44:56 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 01 Jun 2019 00:45:07 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 01 Jun 2019 00:45:10 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 01 Jun 2019 00:45:13 GMT
WORKDIR /home/gradle
# Thu, 06 Jun 2019 22:33:07 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jun 2019 22:33:13 GMT
ENV GRADLE_VERSION=5.4.1
# Thu, 06 Jun 2019 22:33:20 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Thu, 06 Jun 2019 22:33:40 GMT
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
	-	`sha256:9b23099ee93870490d5159fc768edff6f53a3d95446dae8956eb0bf642dbf146`  
		Last Modified: Thu, 30 May 2019 15:03:01 GMT  
		Size: 181.1 MB (181127642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16797d325f1adb8540095a3bdda11bf6b7bd3ffb0a5fca673640d29a24454684`  
		Last Modified: Sat, 01 Jun 2019 00:50:35 GMT  
		Size: 4.5 KB (4536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c78216cd3f665999e0ae4d504af66989531b2af1d2571d1fb6f99eac7e3af6a6`  
		Last Modified: Thu, 06 Jun 2019 22:44:28 GMT  
		Size: 59.6 MB (59586901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:050ce446a92f7491e37f258937399c9843e8e86bf6a3270543e5420b8378a367`  
		Last Modified: Thu, 06 Jun 2019 22:44:15 GMT  
		Size: 87.1 MB (87093874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk11` - linux; s390x

```console
$ docker pull gradle@sha256:e3a1e9ab98740cf0b6b53315fab25c9e0286a58bb9dfbd19a9a9fb108d7687f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.3 MB (351283557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fd2e0075198b923f5d5d3fdcc1df2a4797832f6676362e3048bfc85d856ff07`
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
# Fri, 24 May 2019 23:40:25 GMT
ENV JAVA_VERSION=jdk-11.0.3+7
# Fri, 24 May 2019 23:40:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='25bce2f738cfc7c027da08e533bf3ede65e2767eae8eb9fcb46e92ee6aea7607';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.3_7.tar.gz';          ;;        s390x)          ESUM='c80e775d96c4b6edf399414503d28788060829c345abc575fc731f9e4d68b3bc';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.3_7.tar.gz';          ;;        amd64|x86_64)          ESUM='23cded2b43261016f0f246c85c8948d4a9b7f2d44988f75dad69723a7a526094';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_x64_linux_hotspot_11.0.3_7.tar.gz';          ;;        armhf)          ESUM='3fbe418368e6d5888d0f15c4751139eb60d9785b864158a001386537fa46f67e';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_arm_linux_hotspot_11.0.3_7.tar.gz';          ;;        aarch64|arm64)          ESUM='894a846600ddb0df474350037a2fb43e3343dc3606809a20c65e750580d8f2b9';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk11-binaries/releases/download/jdk-11.0.3%2B7/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.3_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Fri, 24 May 2019 23:40:32 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 23:40:32 GMT
CMD ["jshell"]
# Sat, 01 Jun 2019 00:42:10 GMT
CMD ["gradle"]
# Sat, 01 Jun 2019 00:42:10 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 01 Jun 2019 00:42:11 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 01 Jun 2019 00:42:12 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 01 Jun 2019 00:42:12 GMT
WORKDIR /home/gradle
# Thu, 06 Jun 2019 22:44:04 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jun 2019 22:44:05 GMT
ENV GRADLE_VERSION=5.4.1
# Thu, 06 Jun 2019 22:44:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Thu, 06 Jun 2019 22:44:10 GMT
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
	-	`sha256:fb239f004f769c02886c7df9a8fb2220fd5b2ad961ecca4c1032b844bb363b62`  
		Last Modified: Fri, 24 May 2019 23:43:01 GMT  
		Size: 175.8 MB (175799531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57a77c14f8874e9e264236cfc0f5cf4e561322efef2c28bd304d51199ab7d3b1`  
		Last Modified: Sat, 01 Jun 2019 00:43:53 GMT  
		Size: 4.5 KB (4486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea42fbb2b54662e9f53d447875591605e4d1fda11db7071ef5c790923c63d8db`  
		Last Modified: Thu, 06 Jun 2019 22:47:52 GMT  
		Size: 50.6 MB (50555905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca3aafb6a53baaa8bf6811f102f6d2f953cc92c4ef8046752b78c71eb83dd612`  
		Last Modified: Thu, 06 Jun 2019 22:47:48 GMT  
		Size: 87.1 MB (87093715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk12`

```console
$ docker pull gradle@sha256:a67c417981001c90cbbf80a01aff850b5223fa810b7d6a695356741e96fa68ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le
	-	linux; s390x

### `gradle:jdk12` - linux; amd64

```console
$ docker pull gradle@sha256:878c7d8e567ebc0ca7262219c321bd7d52013ce3020ce837cd8a583e93559db2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **385.6 MB (385581127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64f4cdd8b5b8dffb03f67fc59cd0db6f72d05b8b34b166c9bf21bc37efddb64d`
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
# Fri, 24 May 2019 23:45:01 GMT
ENV JAVA_VERSION=jdk-12.0.1+12
# Fri, 24 May 2019 23:45:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='0ecced06422628b1ca20b0501a6b544cc9da29a2026f9e18d7b206d7a84b7958';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_ppc64le_linux_hotspot_12.0.1_12.tar.gz';          ;;        s390x)          ESUM='ef7efa131cd3978e3a2bad567bc8d39ed7f6dcf2c8bae17dafca359262cdde19';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_s390x_linux_hotspot_12.0.1_12.tar.gz';          ;;        amd64|x86_64)          ESUM='dd3fdf3771a05a010029c1cf1aef516928eab55d6f5eb019008875e9ccbc8337';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_x64_linux_hotspot_12.0.1_12.tar.gz';          ;;        armhf)          ESUM='acfa12c3c59b5180c08faa033c777bbc67f51e8b6cb976659f0d4b54138d6549';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_arm_linux_hotspot_12.0.1_12.tar.gz';          ;;        aarch64|arm64)          ESUM='b1d58d593ac4c1b2d5dab0e8302ed4e07d5281c6c0cf1413b1604269bedec9c5';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_aarch64_linux_hotspot_12.0.1_12.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Fri, 24 May 2019 23:45:18 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 23:45:18 GMT
CMD ["jshell"]
# Sat, 01 Jun 2019 00:29:55 GMT
CMD ["gradle"]
# Sat, 01 Jun 2019 00:29:55 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 01 Jun 2019 00:29:56 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 01 Jun 2019 00:29:57 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 01 Jun 2019 00:29:57 GMT
WORKDIR /home/gradle
# Thu, 06 Jun 2019 22:21:55 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jun 2019 22:21:55 GMT
ENV GRADLE_VERSION=5.4.1
# Thu, 06 Jun 2019 22:21:55 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Thu, 06 Jun 2019 22:22:00 GMT
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
	-	`sha256:cc23a2766de46f4259de7b4649101ea3f050e8b04082f403490d9206dbc50b82`  
		Last Modified: Fri, 24 May 2019 23:48:28 GMT  
		Size: 208.0 MB (208002066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cc78288d1c07d2d682669a681fb8fd6a1a28cb2390c547a31894a5f79cc70a8`  
		Last Modified: Sat, 01 Jun 2019 00:32:07 GMT  
		Size: 4.5 KB (4491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1395819da2fa531fbb436463761c97b320db77a36b78579639a85303ffa776a5`  
		Last Modified: Thu, 06 Jun 2019 22:23:58 GMT  
		Size: 51.0 MB (51029401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61fae4ef452f95bbf3f5769a9922284ba1a5222e72a52c5eba6c1a79e0f75472`  
		Last Modified: Thu, 06 Jun 2019 22:23:52 GMT  
		Size: 87.1 MB (87093718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk12` - linux; ppc64le

```console
$ docker pull gradle@sha256:1ee6badb6fcd9b5051b0d16c27bb4a9af70e7c60745f8b3a492cb56e107ba7e8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.4 MB (381412792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcec0b1f750e6b40ac1d441cf47899ac4935a440b139a24bee2087606122f453`
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
# Thu, 30 May 2019 14:54:03 GMT
ENV JAVA_VERSION=jdk-12.0.1+12
# Thu, 30 May 2019 14:54:28 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='0ecced06422628b1ca20b0501a6b544cc9da29a2026f9e18d7b206d7a84b7958';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_ppc64le_linux_hotspot_12.0.1_12.tar.gz';          ;;        s390x)          ESUM='ef7efa131cd3978e3a2bad567bc8d39ed7f6dcf2c8bae17dafca359262cdde19';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_s390x_linux_hotspot_12.0.1_12.tar.gz';          ;;        amd64|x86_64)          ESUM='dd3fdf3771a05a010029c1cf1aef516928eab55d6f5eb019008875e9ccbc8337';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_x64_linux_hotspot_12.0.1_12.tar.gz';          ;;        armhf)          ESUM='acfa12c3c59b5180c08faa033c777bbc67f51e8b6cb976659f0d4b54138d6549';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_arm_linux_hotspot_12.0.1_12.tar.gz';          ;;        aarch64|arm64)          ESUM='b1d58d593ac4c1b2d5dab0e8302ed4e07d5281c6c0cf1413b1604269bedec9c5';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_aarch64_linux_hotspot_12.0.1_12.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Thu, 30 May 2019 14:54:34 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 30 May 2019 14:54:37 GMT
CMD ["jshell"]
# Sat, 01 Jun 2019 00:46:08 GMT
CMD ["gradle"]
# Sat, 01 Jun 2019 00:46:11 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 01 Jun 2019 00:46:18 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 01 Jun 2019 00:46:22 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 01 Jun 2019 00:46:26 GMT
WORKDIR /home/gradle
# Thu, 06 Jun 2019 22:38:07 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jun 2019 22:38:11 GMT
ENV GRADLE_VERSION=5.4.1
# Thu, 06 Jun 2019 22:38:14 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Thu, 06 Jun 2019 22:38:25 GMT
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
	-	`sha256:908d7453eea8ef0f756a0c12be04ebfd733ea1f6145689de2ba4730ca8187268`  
		Last Modified: Thu, 30 May 2019 15:04:07 GMT  
		Size: 191.4 MB (191401036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61ac55f83c28c32e927719cba4b28eaca4f9f361528f548a6822ca353085a06`  
		Last Modified: Sat, 01 Jun 2019 00:51:06 GMT  
		Size: 4.5 KB (4521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3d38ef06a1b59f90b14390c1d082a67941df51fb3fbd35d48bc58cab650fdd`  
		Last Modified: Thu, 06 Jun 2019 22:45:00 GMT  
		Size: 59.6 MB (59586637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20ce2f44d2c03b313560b4fe4685af6f057d870f7acb0c5ff0895048471697ba`  
		Last Modified: Thu, 06 Jun 2019 22:44:54 GMT  
		Size: 87.1 MB (87093823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk12` - linux; s390x

```console
$ docker pull gradle@sha256:1f89f4a08b75369a5e44ebbfed8ae18abbe7915cd46d608d378f3bc0dca5fa92
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **361.5 MB (361511603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1967e63b842e5f5046c1619a725f9b2e895c858bb52a695a09cdeeacfdc67b3b`
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
# Fri, 24 May 2019 23:40:43 GMT
ENV JAVA_VERSION=jdk-12.0.1+12
# Fri, 24 May 2019 23:40:49 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='0ecced06422628b1ca20b0501a6b544cc9da29a2026f9e18d7b206d7a84b7958';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_ppc64le_linux_hotspot_12.0.1_12.tar.gz';          ;;        s390x)          ESUM='ef7efa131cd3978e3a2bad567bc8d39ed7f6dcf2c8bae17dafca359262cdde19';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_s390x_linux_hotspot_12.0.1_12.tar.gz';          ;;        amd64|x86_64)          ESUM='dd3fdf3771a05a010029c1cf1aef516928eab55d6f5eb019008875e9ccbc8337';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_x64_linux_hotspot_12.0.1_12.tar.gz';          ;;        armhf)          ESUM='acfa12c3c59b5180c08faa033c777bbc67f51e8b6cb976659f0d4b54138d6549';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_arm_linux_hotspot_12.0.1_12.tar.gz';          ;;        aarch64|arm64)          ESUM='b1d58d593ac4c1b2d5dab0e8302ed4e07d5281c6c0cf1413b1604269bedec9c5';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jdk_aarch64_linux_hotspot_12.0.1_12.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Fri, 24 May 2019 23:40:50 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 May 2019 23:40:50 GMT
CMD ["jshell"]
# Sat, 01 Jun 2019 00:42:28 GMT
CMD ["gradle"]
# Sat, 01 Jun 2019 00:42:28 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 01 Jun 2019 00:42:29 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 01 Jun 2019 00:42:29 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 01 Jun 2019 00:42:30 GMT
WORKDIR /home/gradle
# Thu, 06 Jun 2019 22:45:01 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jun 2019 22:45:02 GMT
ENV GRADLE_VERSION=5.4.1
# Thu, 06 Jun 2019 22:45:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Thu, 06 Jun 2019 22:45:07 GMT
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
	-	`sha256:95a72adf3107ccfe1ce44b2edc75dc80fc89c4615606385b70f4d75e7860702a`  
		Last Modified: Fri, 24 May 2019 23:43:42 GMT  
		Size: 186.0 MB (186026751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:775f12ee6a44cf3635d1629c33a4ccaca6d44440062f7418e74b09cf7a2e5dcf`  
		Last Modified: Sat, 01 Jun 2019 00:44:06 GMT  
		Size: 4.5 KB (4499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45e01b99589d1c72fd19b812a15fffc5c8bb3dfba46a095df8c0ebb95444f391`  
		Last Modified: Thu, 06 Jun 2019 22:48:10 GMT  
		Size: 50.6 MB (50556705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:485e570530fc0963d2b6dcc66fdd9c908e981bcbde94576184b6ffafa64311f5`  
		Last Modified: Thu, 06 Jun 2019 22:48:05 GMT  
		Size: 87.1 MB (87093728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jdk8`

```console
$ docker pull gradle@sha256:10d52a03c47aca08b368567398677520d445f31065cd95f7a1f2c260f6ec9280
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le
	-	linux; s390x

### `gradle:jdk8` - linux; amd64

```console
$ docker pull gradle@sha256:9a965fa800ec4f4c7ff0455cb9d58bff529820a803606cd0a890b51495e68ec7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.5 MB (282466512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:461f5d50d440951ab14d3da681639453b643721bf909c638083e762afda95553`
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
# Mon, 17 Jun 2019 22:19:28 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 22:19:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='6596a6276ec2da86193cfafee242e1538cf54f6afb5d16b41dfb9e65ceeefce7';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='2aa7a1b82471e2219a539280fafbb098f672adf55c3f5250f41f9d5c2584314f';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='09f6ccbfd8a86e52665b56751403fd4e2513ad071e2b3f36bab73f86273d1ead';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 22:19:40 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jun 2019 01:25:27 GMT
CMD ["gradle"]
# Tue, 18 Jun 2019 01:25:27 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Jun 2019 01:25:29 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Tue, 18 Jun 2019 01:25:29 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Jun 2019 01:25:29 GMT
WORKDIR /home/gradle
# Tue, 18 Jun 2019 01:26:16 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 01:26:17 GMT
ENV GRADLE_VERSION=5.4.1
# Tue, 18 Jun 2019 01:26:17 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Tue, 18 Jun 2019 01:26:25 GMT
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
	-	`sha256:d07684a552aa5387e8186149929acc86a89295a071f46f343bb93d02cb6f1792`  
		Last Modified: Mon, 17 Jun 2019 22:21:19 GMT  
		Size: 104.9 MB (104889025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b990ce758aadbe1f52c55880077ee6e0f5d1c7cf4610c8e7c91f2e4ed421bd`  
		Last Modified: Tue, 18 Jun 2019 01:27:56 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee4dde05529bbd27ffd20b5d0f334f1c83bdde80d063c510632be2d40c27254`  
		Last Modified: Tue, 18 Jun 2019 01:28:13 GMT  
		Size: 51.0 MB (51027820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce451706ea31bfefc1974c3e570c1fe36eced9bbdfecf060d1d65610f24d9736`  
		Last Modified: Tue, 18 Jun 2019 01:28:07 GMT  
		Size: 87.1 MB (87093728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk8` - linux; ppc64le

```console
$ docker pull gradle@sha256:9f8fc9441cae7e88a7babf847045fa289ff9731f47867662e0715f760cd4a8bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.1 MB (292077514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9853645d5b3c0c98fb379ab0ec7b0ffc6967431497e9a8808deed45382c1409a`
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
# Mon, 17 Jun 2019 22:16:36 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 22:16:53 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='6596a6276ec2da86193cfafee242e1538cf54f6afb5d16b41dfb9e65ceeefce7';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='2aa7a1b82471e2219a539280fafbb098f672adf55c3f5250f41f9d5c2584314f';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='09f6ccbfd8a86e52665b56751403fd4e2513ad071e2b3f36bab73f86273d1ead';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 22:16:57 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Jun 2019 23:21:28 GMT
CMD ["gradle"]
# Mon, 17 Jun 2019 23:21:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 17 Jun 2019 23:21:36 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Mon, 17 Jun 2019 23:21:38 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 17 Jun 2019 23:21:39 GMT
WORKDIR /home/gradle
# Mon, 17 Jun 2019 23:23:00 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 23:23:04 GMT
ENV GRADLE_VERSION=5.4.1
# Mon, 17 Jun 2019 23:23:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Mon, 17 Jun 2019 23:23:15 GMT
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
	-	`sha256:dc74f575ff930b02b460222a502abc89b8e1943e8b314b02cd5eb9a16dc5e0a0`  
		Last Modified: Mon, 17 Jun 2019 22:18:49 GMT  
		Size: 102.1 MB (102053907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdeb4feba0fea58cae59eb4f25a42913588e54ba96c3b2dfa06e19bf12d3ab51`  
		Last Modified: Mon, 17 Jun 2019 23:26:19 GMT  
		Size: 4.5 KB (4521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4e86a35eddfecf9bdd64ae1ffcb77e16d1e330e38868ecd48f07e83e4ca03d`  
		Last Modified: Mon, 17 Jun 2019 23:26:37 GMT  
		Size: 59.6 MB (59598460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922b273217f14ace4903c8d5f80c2fa58432fda2b80a493539dc197c57006196`  
		Last Modified: Mon, 17 Jun 2019 23:26:29 GMT  
		Size: 87.1 MB (87093851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jdk8` - linux; s390x

```console
$ docker pull gradle@sha256:7f0ee769f47bf589d81b6ee8af78228c4f182defae644429679d214d99d566b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.1 MB (276066586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e889c0bc84452eb0f57d70be4e4294a61f9a637506c30b48b1bb71c4c7b42d8`
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
# Mon, 17 Jun 2019 21:42:09 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 21:42:18 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='6596a6276ec2da86193cfafee242e1538cf54f6afb5d16b41dfb9e65ceeefce7';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='2aa7a1b82471e2219a539280fafbb098f672adf55c3f5250f41f9d5c2584314f';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='09f6ccbfd8a86e52665b56751403fd4e2513ad071e2b3f36bab73f86273d1ead';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 21:42:19 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Jun 2019 22:17:19 GMT
CMD ["gradle"]
# Mon, 17 Jun 2019 22:17:20 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 17 Jun 2019 22:17:21 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Mon, 17 Jun 2019 22:17:21 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 17 Jun 2019 22:17:21 GMT
WORKDIR /home/gradle
# Mon, 17 Jun 2019 22:17:47 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 22:17:48 GMT
ENV GRADLE_VERSION=5.4.1
# Mon, 17 Jun 2019 22:17:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Mon, 17 Jun 2019 22:17:52 GMT
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
	-	`sha256:c092edc8fad3b5399f6ef4af658b84d6b7f29d63ca8c53f37fd61ac699c6bac9`  
		Last Modified: Mon, 17 Jun 2019 21:44:09 GMT  
		Size: 100.6 MB (100572741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5ddbc3c74c1f34f997d407b5f89cfecd5ec6f00afd0a64e9e298fee50c2ac2`  
		Last Modified: Mon, 17 Jun 2019 22:19:14 GMT  
		Size: 4.5 KB (4490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b0ead5b5cf93d1ae2fb456965b8ba00bc53b1cfcf86705b72741b06d729eab`  
		Last Modified: Mon, 17 Jun 2019 22:19:25 GMT  
		Size: 50.6 MB (50565678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27d46fb01843b7b309b514fa9a9b244997c75f11da584dc98302a3d8827a444`  
		Last Modified: Mon, 17 Jun 2019 22:19:21 GMT  
		Size: 87.1 MB (87093757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre`

```console
$ docker pull gradle@sha256:6ced7e1ef993006b8277d43132304f20e44794ff9ddb9fcdb90826a087990e43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le
	-	linux; s390x

### `gradle:jre` - linux; amd64

```console
$ docker pull gradle@sha256:b01a1e8f634162d02e37dea5bbe4fe19f64dc5a32edb976a24240e6aac098d8e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.8 MB (218790402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96864d5913bc010b9aa8a9fad5cc5d4714b6d8289c990c8e07112c90e345b375`
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
# Mon, 17 Jun 2019 22:19:28 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 22:19:52 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='7e09a9939c0baff8f24277df71844dc121f0bdfa855c2a02fb557e0d3438b9c5';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='90554726525b4acb38dae6f1f958711476e5484ff593a0666f43f2a044bb070a';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='96d24d94c022b3e414b612cae8829244329d71ad2cce790f099c020f33247e7e';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 22:19:53 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jun 2019 01:26:29 GMT
CMD ["gradle"]
# Tue, 18 Jun 2019 01:26:29 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Jun 2019 01:26:30 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Tue, 18 Jun 2019 01:26:30 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Jun 2019 01:26:30 GMT
WORKDIR /home/gradle
# Tue, 18 Jun 2019 01:27:03 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 01:27:04 GMT
ENV GRADLE_VERSION=5.4.1
# Tue, 18 Jun 2019 01:27:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Tue, 18 Jun 2019 01:27:12 GMT
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
	-	`sha256:7dceef744034b9c1ebda80f9bb8ac2328b67a3b5dd5bfd2b434270158a65c9da`  
		Last Modified: Mon, 17 Jun 2019 22:21:39 GMT  
		Size: 41.2 MB (41213310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1794aac93249393412d01decea0cfc967752e3a52648f44f4ddf5e881b649f`  
		Last Modified: Tue, 18 Jun 2019 01:28:27 GMT  
		Size: 4.5 KB (4487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf534951ee0b1fb403a55a65591f724e91f17a287ed13328f35d6e74c3d8460`  
		Last Modified: Tue, 18 Jun 2019 01:28:47 GMT  
		Size: 51.0 MB (51027406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf675532a693fab6ef14b2dabc2a567c28d5b977706f2352b3480c898472f38`  
		Last Modified: Tue, 18 Jun 2019 01:28:38 GMT  
		Size: 87.1 MB (87093748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre` - linux; ppc64le

```console
$ docker pull gradle@sha256:4e03cd0592d7c5b0e24164dc979a09497f1108969cb56f33c4e64c8bd3d86521
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.3 MB (230300048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9613f2083df97c237a83e3d778f904c3b2f255a2113a5c6866e419730cee0021`
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
# Mon, 17 Jun 2019 22:16:36 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 22:17:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='7e09a9939c0baff8f24277df71844dc121f0bdfa855c2a02fb557e0d3438b9c5';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='90554726525b4acb38dae6f1f958711476e5484ff593a0666f43f2a044bb070a';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='96d24d94c022b3e414b612cae8829244329d71ad2cce790f099c020f33247e7e';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 22:17:20 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Jun 2019 23:23:24 GMT
CMD ["gradle"]
# Mon, 17 Jun 2019 23:23:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 17 Jun 2019 23:23:31 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Mon, 17 Jun 2019 23:23:33 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 17 Jun 2019 23:23:35 GMT
WORKDIR /home/gradle
# Mon, 17 Jun 2019 23:25:24 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 23:25:28 GMT
ENV GRADLE_VERSION=5.4.1
# Mon, 17 Jun 2019 23:25:30 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Mon, 17 Jun 2019 23:25:39 GMT
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
	-	`sha256:e24ade711a95cc655ad5073d5a9804e3cb695359688f8eb07dba75e27a111a74`  
		Last Modified: Mon, 17 Jun 2019 22:19:12 GMT  
		Size: 40.3 MB (40274286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2862fe486cb5da6618d65f799f514e2e035d852a23e527a4f81b4e85307cf69`  
		Last Modified: Mon, 17 Jun 2019 23:27:12 GMT  
		Size: 4.5 KB (4520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc5d8bf045a10eadff3cfb40939e9619a4fdeccf706a0cf778b3fdb69522eae`  
		Last Modified: Mon, 17 Jun 2019 23:27:30 GMT  
		Size: 59.6 MB (59600639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee796a68c96176ceaee374a02ffe27e25bb72516721d5837cf1959b8ff25daf8`  
		Last Modified: Mon, 17 Jun 2019 23:27:22 GMT  
		Size: 87.1 MB (87093828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre` - linux; s390x

```console
$ docker pull gradle@sha256:5116536036cd4f4445e77f038d2853b962510ca04c810c8c6836d6d8b692fac1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.4 MB (214406821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57499856bcabda19d2e05939de5fc6340a6cd369f25e6fab3f72b58df5629be7`
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
# Mon, 17 Jun 2019 21:42:09 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 21:42:27 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='7e09a9939c0baff8f24277df71844dc121f0bdfa855c2a02fb557e0d3438b9c5';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='90554726525b4acb38dae6f1f958711476e5484ff593a0666f43f2a044bb070a';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='96d24d94c022b3e414b612cae8829244329d71ad2cce790f099c020f33247e7e';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 21:42:27 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Jun 2019 22:17:59 GMT
CMD ["gradle"]
# Mon, 17 Jun 2019 22:17:59 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 17 Jun 2019 22:18:00 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Mon, 17 Jun 2019 22:18:00 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 17 Jun 2019 22:18:01 GMT
WORKDIR /home/gradle
# Mon, 17 Jun 2019 22:18:30 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 22:18:31 GMT
ENV GRADLE_VERSION=5.4.1
# Mon, 17 Jun 2019 22:18:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Mon, 17 Jun 2019 22:18:35 GMT
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
	-	`sha256:5e09b82e1f8177c05e0964c7fbea0ee237118720085a56e1a21ffd2fdba92482`  
		Last Modified: Mon, 17 Jun 2019 21:44:23 GMT  
		Size: 38.9 MB (38912389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:863864003200ba226055e52a38179c50641ebafdc76debb10925293fca6a4b4d`  
		Last Modified: Mon, 17 Jun 2019 22:19:38 GMT  
		Size: 4.5 KB (4491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac04171c7edb7da1e4354ce47ba1c527fdbd6a7c2cbdbde80ae838de75c250f`  
		Last Modified: Mon, 17 Jun 2019 22:19:48 GMT  
		Size: 50.6 MB (50566295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1ecee28237d6120b6481066f57f51c96cc92794ece847f18ac3c2c0a17bc8a`  
		Last Modified: Mon, 17 Jun 2019 22:19:46 GMT  
		Size: 87.1 MB (87093726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre12`

```console
$ docker pull gradle@sha256:d228170fc89023a59d46b6229c79c2825a3cfc1a116b79704c36f1eac674a3ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le
	-	linux; s390x

### `gradle:jre12` - linux; amd64

```console
$ docker pull gradle@sha256:b99be7dc867b8db6ea3f673c3067772d0bf1b6c5820afe0d7c108df0b1138600
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **225.5 MB (225462373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e9645e3a56cf0f677f2f628f9b43d7c156133fdeea95021c5a783463cab0389`
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
# Fri, 24 May 2019 23:45:01 GMT
ENV JAVA_VERSION=jdk-12.0.1+12
# Fri, 24 May 2019 23:45:28 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='0007442c929de09104749fa4c945dfde476cbeab27122b5705d1a2c56d0efac4';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jre_ppc64le_linux_hotspot_12.0.1_12.tar.gz';          ;;        s390x)          ESUM='161464b6d2fd68afdf41c54aa326049ff2ad777d6a13c0694cee2cf9b0aafa52';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jre_s390x_linux_hotspot_12.0.1_12.tar.gz';          ;;        amd64|x86_64)          ESUM='85b3c4065b1540f1d0dbe533955a199e54a0cbe7bd6e1111e59d54e68b2f5b43';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jre_x64_linux_hotspot_12.0.1_12.tar.gz';          ;;        aarch64|arm64)          ESUM='c6fa30f2351a8c981be018c16941dac16c21bfdf86474dc586baaf166b3bc00c';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jre_aarch64_linux_hotspot_12.0.1_12.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Fri, 24 May 2019 23:45:29 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 01 Jun 2019 00:30:22 GMT
CMD ["gradle"]
# Sat, 01 Jun 2019 00:30:22 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 01 Jun 2019 00:30:24 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 01 Jun 2019 00:30:24 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 01 Jun 2019 00:30:25 GMT
WORKDIR /home/gradle
# Thu, 06 Jun 2019 22:22:27 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jun 2019 22:22:28 GMT
ENV GRADLE_VERSION=5.4.1
# Thu, 06 Jun 2019 22:22:28 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Thu, 06 Jun 2019 22:22:33 GMT
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
	-	`sha256:0a7d43d263ecb9e79397e3867e8ccf310720d2b0a94f2651b333c3394eddcd91`  
		Last Modified: Fri, 24 May 2019 23:48:43 GMT  
		Size: 47.9 MB (47883616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b03f39b04da609efbcd589fcb8def5c307bc273e668d983f366258d31e075c`  
		Last Modified: Sat, 01 Jun 2019 00:32:25 GMT  
		Size: 4.5 KB (4485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00429253f317b376457bda0583fea1fee0b6d2a8c9c2c9abbf02be31768bdc0`  
		Last Modified: Thu, 06 Jun 2019 22:24:22 GMT  
		Size: 51.0 MB (51029105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c74a0728ad9a49942e1fb68811e16bc9aba1459b6d03cd27fd2dd4d1a8eaecc`  
		Last Modified: Thu, 06 Jun 2019 22:24:30 GMT  
		Size: 87.1 MB (87093716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre12` - linux; ppc64le

```console
$ docker pull gradle@sha256:1fd64fe845d06db496cfc46ea01aba9d32a3f1ab7ac03315086c2055c52a8be2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.0 MB (234040260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86dc6a277555506e0eaff80971b1ebfc562c80317161f5c64be0dcd881376f37`
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
# Thu, 30 May 2019 14:54:03 GMT
ENV JAVA_VERSION=jdk-12.0.1+12
# Thu, 30 May 2019 14:55:00 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='0007442c929de09104749fa4c945dfde476cbeab27122b5705d1a2c56d0efac4';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jre_ppc64le_linux_hotspot_12.0.1_12.tar.gz';          ;;        s390x)          ESUM='161464b6d2fd68afdf41c54aa326049ff2ad777d6a13c0694cee2cf9b0aafa52';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jre_s390x_linux_hotspot_12.0.1_12.tar.gz';          ;;        amd64|x86_64)          ESUM='85b3c4065b1540f1d0dbe533955a199e54a0cbe7bd6e1111e59d54e68b2f5b43';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jre_x64_linux_hotspot_12.0.1_12.tar.gz';          ;;        aarch64|arm64)          ESUM='c6fa30f2351a8c981be018c16941dac16c21bfdf86474dc586baaf166b3bc00c';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jre_aarch64_linux_hotspot_12.0.1_12.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Thu, 30 May 2019 14:55:05 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 01 Jun 2019 00:47:32 GMT
CMD ["gradle"]
# Sat, 01 Jun 2019 00:47:35 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 01 Jun 2019 00:47:45 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 01 Jun 2019 00:47:49 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 01 Jun 2019 00:47:53 GMT
WORKDIR /home/gradle
# Thu, 06 Jun 2019 22:41:30 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jun 2019 22:41:33 GMT
ENV GRADLE_VERSION=5.4.1
# Thu, 06 Jun 2019 22:41:37 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Thu, 06 Jun 2019 22:41:46 GMT
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
	-	`sha256:8c6b1710c2abedc98178cd6a3a07a048c4d6a5c9009d5e8119fd274dd9256a7a`  
		Last Modified: Thu, 30 May 2019 15:04:46 GMT  
		Size: 44.0 MB (44028971 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd927578c2b05b7c4e2284d229feba69110fc767861094a4aabbf1a0559f9bb4`  
		Last Modified: Sat, 01 Jun 2019 00:51:32 GMT  
		Size: 4.5 KB (4527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22465a75cea68ebca19f62dca1ff2557b7af09640b95a327e7bd4c52d739686e`  
		Last Modified: Thu, 06 Jun 2019 22:45:34 GMT  
		Size: 59.6 MB (59586163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad4f47978eefaba141d0eae3c6bbcca3046a77c6a3ee91eaae0a342e49303fe3`  
		Last Modified: Thu, 06 Jun 2019 22:45:27 GMT  
		Size: 87.1 MB (87093824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre12` - linux; s390x

```console
$ docker pull gradle@sha256:90ab03cc63da3bb714c80ad472bcae1b305b78607e6af2bda26ce9772ab6b881
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.3 MB (219269569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef55ebc7da95f2bda060b5e18aa91333bc16e916cb6014c6c74f7f3562f68293`
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
# Fri, 24 May 2019 23:40:43 GMT
ENV JAVA_VERSION=jdk-12.0.1+12
# Fri, 24 May 2019 23:40:56 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='0007442c929de09104749fa4c945dfde476cbeab27122b5705d1a2c56d0efac4';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jre_ppc64le_linux_hotspot_12.0.1_12.tar.gz';          ;;        s390x)          ESUM='161464b6d2fd68afdf41c54aa326049ff2ad777d6a13c0694cee2cf9b0aafa52';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jre_s390x_linux_hotspot_12.0.1_12.tar.gz';          ;;        amd64|x86_64)          ESUM='85b3c4065b1540f1d0dbe533955a199e54a0cbe7bd6e1111e59d54e68b2f5b43';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jre_x64_linux_hotspot_12.0.1_12.tar.gz';          ;;        aarch64|arm64)          ESUM='c6fa30f2351a8c981be018c16941dac16c21bfdf86474dc586baaf166b3bc00c';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk12-binaries/releases/download/jdk-12.0.1%2B12/OpenJDK12U-jre_aarch64_linux_hotspot_12.0.1_12.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Fri, 24 May 2019 23:40:56 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 01 Jun 2019 00:42:46 GMT
CMD ["gradle"]
# Sat, 01 Jun 2019 00:42:47 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 01 Jun 2019 00:42:48 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Sat, 01 Jun 2019 00:42:48 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 01 Jun 2019 00:42:48 GMT
WORKDIR /home/gradle
# Thu, 06 Jun 2019 22:46:18 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Thu, 06 Jun 2019 22:46:19 GMT
ENV GRADLE_VERSION=5.4.1
# Thu, 06 Jun 2019 22:46:19 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Thu, 06 Jun 2019 22:46:24 GMT
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
	-	`sha256:a86ec8cf2777320cadf57b6b993bbb362dcc370722e5311ccb1c577e4ba2bd3a`  
		Last Modified: Fri, 24 May 2019 23:43:58 GMT  
		Size: 43.8 MB (43785544 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b4d079dbf1c7fd44ec42fdf0e75bcb081830e2e0c887963b818b3eda45611e`  
		Last Modified: Sat, 01 Jun 2019 00:44:21 GMT  
		Size: 4.5 KB (4491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c581503f02d3e2b1d39eab7b72774180a601f73907c6ff15c2e8282b42faea37`  
		Last Modified: Thu, 06 Jun 2019 22:48:32 GMT  
		Size: 50.6 MB (50555896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42c16aee08c94ca19292c971f965d78c0f776aa95bf8c3814f5c8923d72c375`  
		Last Modified: Thu, 06 Jun 2019 22:48:23 GMT  
		Size: 87.1 MB (87093718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:jre8`

```console
$ docker pull gradle@sha256:6ced7e1ef993006b8277d43132304f20e44794ff9ddb9fcdb90826a087990e43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le
	-	linux; s390x

### `gradle:jre8` - linux; amd64

```console
$ docker pull gradle@sha256:b01a1e8f634162d02e37dea5bbe4fe19f64dc5a32edb976a24240e6aac098d8e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.8 MB (218790402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96864d5913bc010b9aa8a9fad5cc5d4714b6d8289c990c8e07112c90e345b375`
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
# Mon, 17 Jun 2019 22:19:28 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 22:19:52 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='7e09a9939c0baff8f24277df71844dc121f0bdfa855c2a02fb557e0d3438b9c5';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='90554726525b4acb38dae6f1f958711476e5484ff593a0666f43f2a044bb070a';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='96d24d94c022b3e414b612cae8829244329d71ad2cce790f099c020f33247e7e';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 22:19:53 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jun 2019 01:26:29 GMT
CMD ["gradle"]
# Tue, 18 Jun 2019 01:26:29 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Jun 2019 01:26:30 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Tue, 18 Jun 2019 01:26:30 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Jun 2019 01:26:30 GMT
WORKDIR /home/gradle
# Tue, 18 Jun 2019 01:27:03 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 01:27:04 GMT
ENV GRADLE_VERSION=5.4.1
# Tue, 18 Jun 2019 01:27:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Tue, 18 Jun 2019 01:27:12 GMT
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
	-	`sha256:7dceef744034b9c1ebda80f9bb8ac2328b67a3b5dd5bfd2b434270158a65c9da`  
		Last Modified: Mon, 17 Jun 2019 22:21:39 GMT  
		Size: 41.2 MB (41213310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c1794aac93249393412d01decea0cfc967752e3a52648f44f4ddf5e881b649f`  
		Last Modified: Tue, 18 Jun 2019 01:28:27 GMT  
		Size: 4.5 KB (4487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecf534951ee0b1fb403a55a65591f724e91f17a287ed13328f35d6e74c3d8460`  
		Last Modified: Tue, 18 Jun 2019 01:28:47 GMT  
		Size: 51.0 MB (51027406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf675532a693fab6ef14b2dabc2a567c28d5b977706f2352b3480c898472f38`  
		Last Modified: Tue, 18 Jun 2019 01:28:38 GMT  
		Size: 87.1 MB (87093748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre8` - linux; ppc64le

```console
$ docker pull gradle@sha256:4e03cd0592d7c5b0e24164dc979a09497f1108969cb56f33c4e64c8bd3d86521
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.3 MB (230300048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9613f2083df97c237a83e3d778f904c3b2f255a2113a5c6866e419730cee0021`
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
# Mon, 17 Jun 2019 22:16:36 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 22:17:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='7e09a9939c0baff8f24277df71844dc121f0bdfa855c2a02fb557e0d3438b9c5';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='90554726525b4acb38dae6f1f958711476e5484ff593a0666f43f2a044bb070a';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='96d24d94c022b3e414b612cae8829244329d71ad2cce790f099c020f33247e7e';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 22:17:20 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Jun 2019 23:23:24 GMT
CMD ["gradle"]
# Mon, 17 Jun 2019 23:23:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 17 Jun 2019 23:23:31 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Mon, 17 Jun 2019 23:23:33 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 17 Jun 2019 23:23:35 GMT
WORKDIR /home/gradle
# Mon, 17 Jun 2019 23:25:24 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 23:25:28 GMT
ENV GRADLE_VERSION=5.4.1
# Mon, 17 Jun 2019 23:25:30 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Mon, 17 Jun 2019 23:25:39 GMT
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
	-	`sha256:e24ade711a95cc655ad5073d5a9804e3cb695359688f8eb07dba75e27a111a74`  
		Last Modified: Mon, 17 Jun 2019 22:19:12 GMT  
		Size: 40.3 MB (40274286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2862fe486cb5da6618d65f799f514e2e035d852a23e527a4f81b4e85307cf69`  
		Last Modified: Mon, 17 Jun 2019 23:27:12 GMT  
		Size: 4.5 KB (4520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dc5d8bf045a10eadff3cfb40939e9619a4fdeccf706a0cf778b3fdb69522eae`  
		Last Modified: Mon, 17 Jun 2019 23:27:30 GMT  
		Size: 59.6 MB (59600639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee796a68c96176ceaee374a02ffe27e25bb72516721d5837cf1959b8ff25daf8`  
		Last Modified: Mon, 17 Jun 2019 23:27:22 GMT  
		Size: 87.1 MB (87093828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:jre8` - linux; s390x

```console
$ docker pull gradle@sha256:5116536036cd4f4445e77f038d2853b962510ca04c810c8c6836d6d8b692fac1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.4 MB (214406821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57499856bcabda19d2e05939de5fc6340a6cd369f25e6fab3f72b58df5629be7`
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
# Mon, 17 Jun 2019 21:42:09 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 21:42:27 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='7e09a9939c0baff8f24277df71844dc121f0bdfa855c2a02fb557e0d3438b9c5';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='90554726525b4acb38dae6f1f958711476e5484ff593a0666f43f2a044bb070a';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='96d24d94c022b3e414b612cae8829244329d71ad2cce790f099c020f33247e7e';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jre_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 21:42:27 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Jun 2019 22:17:59 GMT
CMD ["gradle"]
# Mon, 17 Jun 2019 22:17:59 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 17 Jun 2019 22:18:00 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Mon, 17 Jun 2019 22:18:00 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 17 Jun 2019 22:18:01 GMT
WORKDIR /home/gradle
# Mon, 17 Jun 2019 22:18:30 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 22:18:31 GMT
ENV GRADLE_VERSION=5.4.1
# Mon, 17 Jun 2019 22:18:31 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Mon, 17 Jun 2019 22:18:35 GMT
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
	-	`sha256:5e09b82e1f8177c05e0964c7fbea0ee237118720085a56e1a21ffd2fdba92482`  
		Last Modified: Mon, 17 Jun 2019 21:44:23 GMT  
		Size: 38.9 MB (38912389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:863864003200ba226055e52a38179c50641ebafdc76debb10925293fca6a4b4d`  
		Last Modified: Mon, 17 Jun 2019 22:19:38 GMT  
		Size: 4.5 KB (4491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ac04171c7edb7da1e4354ce47ba1c527fdbd6a7c2cbdbde80ae838de75c250f`  
		Last Modified: Mon, 17 Jun 2019 22:19:48 GMT  
		Size: 50.6 MB (50566295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d1ecee28237d6120b6481066f57f51c96cc92794ece847f18ac3c2c0a17bc8a`  
		Last Modified: Mon, 17 Jun 2019 22:19:46 GMT  
		Size: 87.1 MB (87093726 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `gradle:latest`

```console
$ docker pull gradle@sha256:10d52a03c47aca08b368567398677520d445f31065cd95f7a1f2c260f6ec9280
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; ppc64le
	-	linux; s390x

### `gradle:latest` - linux; amd64

```console
$ docker pull gradle@sha256:9a965fa800ec4f4c7ff0455cb9d58bff529820a803606cd0a890b51495e68ec7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.5 MB (282466512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:461f5d50d440951ab14d3da681639453b643721bf909c638083e762afda95553`
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
# Mon, 17 Jun 2019 22:19:28 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 22:19:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='6596a6276ec2da86193cfafee242e1538cf54f6afb5d16b41dfb9e65ceeefce7';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='2aa7a1b82471e2219a539280fafbb098f672adf55c3f5250f41f9d5c2584314f';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='09f6ccbfd8a86e52665b56751403fd4e2513ad071e2b3f36bab73f86273d1ead';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 22:19:40 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Jun 2019 01:25:27 GMT
CMD ["gradle"]
# Tue, 18 Jun 2019 01:25:27 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Jun 2019 01:25:29 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Tue, 18 Jun 2019 01:25:29 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Jun 2019 01:25:29 GMT
WORKDIR /home/gradle
# Tue, 18 Jun 2019 01:26:16 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Tue, 18 Jun 2019 01:26:17 GMT
ENV GRADLE_VERSION=5.4.1
# Tue, 18 Jun 2019 01:26:17 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Tue, 18 Jun 2019 01:26:25 GMT
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
	-	`sha256:d07684a552aa5387e8186149929acc86a89295a071f46f343bb93d02cb6f1792`  
		Last Modified: Mon, 17 Jun 2019 22:21:19 GMT  
		Size: 104.9 MB (104889025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b990ce758aadbe1f52c55880077ee6e0f5d1c7cf4610c8e7c91f2e4ed421bd`  
		Last Modified: Tue, 18 Jun 2019 01:27:56 GMT  
		Size: 4.5 KB (4488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ee4dde05529bbd27ffd20b5d0f334f1c83bdde80d063c510632be2d40c27254`  
		Last Modified: Tue, 18 Jun 2019 01:28:13 GMT  
		Size: 51.0 MB (51027820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce451706ea31bfefc1974c3e570c1fe36eced9bbdfecf060d1d65610f24d9736`  
		Last Modified: Tue, 18 Jun 2019 01:28:07 GMT  
		Size: 87.1 MB (87093728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:latest` - linux; ppc64le

```console
$ docker pull gradle@sha256:9f8fc9441cae7e88a7babf847045fa289ff9731f47867662e0715f760cd4a8bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.1 MB (292077514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9853645d5b3c0c98fb379ab0ec7b0ffc6967431497e9a8808deed45382c1409a`
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
# Mon, 17 Jun 2019 22:16:36 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 22:16:53 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='6596a6276ec2da86193cfafee242e1538cf54f6afb5d16b41dfb9e65ceeefce7';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='2aa7a1b82471e2219a539280fafbb098f672adf55c3f5250f41f9d5c2584314f';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='09f6ccbfd8a86e52665b56751403fd4e2513ad071e2b3f36bab73f86273d1ead';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 22:16:57 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Jun 2019 23:21:28 GMT
CMD ["gradle"]
# Mon, 17 Jun 2019 23:21:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 17 Jun 2019 23:21:36 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Mon, 17 Jun 2019 23:21:38 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 17 Jun 2019 23:21:39 GMT
WORKDIR /home/gradle
# Mon, 17 Jun 2019 23:23:00 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 23:23:04 GMT
ENV GRADLE_VERSION=5.4.1
# Mon, 17 Jun 2019 23:23:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Mon, 17 Jun 2019 23:23:15 GMT
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
	-	`sha256:dc74f575ff930b02b460222a502abc89b8e1943e8b314b02cd5eb9a16dc5e0a0`  
		Last Modified: Mon, 17 Jun 2019 22:18:49 GMT  
		Size: 102.1 MB (102053907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdeb4feba0fea58cae59eb4f25a42913588e54ba96c3b2dfa06e19bf12d3ab51`  
		Last Modified: Mon, 17 Jun 2019 23:26:19 GMT  
		Size: 4.5 KB (4521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4e86a35eddfecf9bdd64ae1ffcb77e16d1e330e38868ecd48f07e83e4ca03d`  
		Last Modified: Mon, 17 Jun 2019 23:26:37 GMT  
		Size: 59.6 MB (59598460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922b273217f14ace4903c8d5f80c2fa58432fda2b80a493539dc197c57006196`  
		Last Modified: Mon, 17 Jun 2019 23:26:29 GMT  
		Size: 87.1 MB (87093851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `gradle:latest` - linux; s390x

```console
$ docker pull gradle@sha256:7f0ee769f47bf589d81b6ee8af78228c4f182defae644429679d214d99d566b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.1 MB (276066586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e889c0bc84452eb0f57d70be4e4294a61f9a637506c30b48b1bb71c4c7b42d8`
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
# Mon, 17 Jun 2019 21:42:09 GMT
ENV JAVA_VERSION=jdk8u212-b04
# Mon, 17 Jun 2019 21:42:18 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        ppc64el|ppc64le)          ESUM='6596a6276ec2da86193cfafee242e1538cf54f6afb5d16b41dfb9e65ceeefce7';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u212b04.tar.gz';          ;;        s390x)          ESUM='2aa7a1b82471e2219a539280fafbb098f672adf55c3f5250f41f9d5c2584314f';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_s390x_linux_hotspot_8u212b04.tar.gz';          ;;        amd64|x86_64)          ESUM='09f6ccbfd8a86e52665b56751403fd4e2513ad071e2b3f36bab73f86273d1ead';          BINARY_URL='https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u212-b04/OpenJDK8U-jdk_x64_linux_hotspot_8u212b04.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz;
# Mon, 17 Jun 2019 21:42:19 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Jun 2019 22:17:19 GMT
CMD ["gradle"]
# Mon, 17 Jun 2019 22:17:20 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 17 Jun 2019 22:17:21 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln -s /home/gradle/.gradle /root/.gradle
# Mon, 17 Jun 2019 22:17:21 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 17 Jun 2019 22:17:21 GMT
WORKDIR /home/gradle
# Mon, 17 Jun 2019 22:17:47 GMT
RUN apt-get update     && apt-get install --yes --no-install-recommends         fontconfig         unzip         wget                 bzr         git         mercurial         openssh-client         subversion     && rm -rf /var/lib/apt/lists/*
# Mon, 17 Jun 2019 22:17:48 GMT
ENV GRADLE_VERSION=5.4.1
# Mon, 17 Jun 2019 22:17:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=7bdbad1e4f54f13c8a78abc00c26d44dd8709d4aedb704d913fb1bb78ac025dc
# Mon, 17 Jun 2019 22:17:52 GMT
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
	-	`sha256:c092edc8fad3b5399f6ef4af658b84d6b7f29d63ca8c53f37fd61ac699c6bac9`  
		Last Modified: Mon, 17 Jun 2019 21:44:09 GMT  
		Size: 100.6 MB (100572741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b5ddbc3c74c1f34f997d407b5f89cfecd5ec6f00afd0a64e9e298fee50c2ac2`  
		Last Modified: Mon, 17 Jun 2019 22:19:14 GMT  
		Size: 4.5 KB (4490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21b0ead5b5cf93d1ae2fb456965b8ba00bc53b1cfcf86705b72741b06d729eab`  
		Last Modified: Mon, 17 Jun 2019 22:19:25 GMT  
		Size: 50.6 MB (50565678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c27d46fb01843b7b309b514fa9a9b244997c75f11da584dc98302a3d8827a444`  
		Last Modified: Mon, 17 Jun 2019 22:19:21 GMT  
		Size: 87.1 MB (87093757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
