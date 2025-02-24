<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `nuxeo`

-	[`nuxeo:10`](#nuxeo10)
-	[`nuxeo:10.10`](#nuxeo1010)
-	[`nuxeo:7`](#nuxeo7)
-	[`nuxeo:7.10`](#nuxeo710)
-	[`nuxeo:8`](#nuxeo8)
-	[`nuxeo:8.10`](#nuxeo810)
-	[`nuxeo:9`](#nuxeo9)
-	[`nuxeo:9.10`](#nuxeo910)
-	[`nuxeo:FT`](#nuxeoft)
-	[`nuxeo:latest`](#nuxeolatest)
-	[`nuxeo:LTS`](#nuxeolts)
-	[`nuxeo:LTS-2015`](#nuxeolts-2015)
-	[`nuxeo:LTS-2016`](#nuxeolts-2016)
-	[`nuxeo:LTS-2017`](#nuxeolts-2017)
-	[`nuxeo:LTS-2019`](#nuxeolts-2019)

## `nuxeo:10`

```console
$ docker pull nuxeo@sha256:20c0d8230c50c07be892d19410a7c0223c34a4d1c8999e163af684d5ec6f199e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:10` - linux; amd64

```console
$ docker pull nuxeo@sha256:7edc471d5d198041db75b430843bfca09e622d435b10c528d62b2dfc301305e6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **889.5 MB (889476249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe672baa47f477c98d9a20c7d101fb6cd7f6b0795aca6d22919f9085b12038f0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:30:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:18:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:18:07 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 07:19:41 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Tue, 11 Jun 2019 07:19:41 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 07:19:43 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 11 Jun 2019 07:19:43 GMT
ENV JAVA_VERSION=8u212-b04
# Tue, 11 Jun 2019 07:19:43 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-
# Tue, 11 Jun 2019 07:19:44 GMT
ENV JAVA_URL_VERSION=8u212b04
# Tue, 11 Jun 2019 07:19:58 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac -version; 	java -version
# Tue, 11 Jun 2019 16:13:48 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 11 Jun 2019 16:20:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 16:20:14 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 11 Jun 2019 16:20:15 GMT
ENV NUXEO_USER=nuxeo
# Tue, 11 Jun 2019 16:20:15 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 11 Jun 2019 16:20:15 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 11 Jun 2019 16:22:18 GMT
ARG NUXEO_VERSION=10.10
# Tue, 11 Jun 2019 16:22:18 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip
# Tue, 11 Jun 2019 16:22:18 GMT
ARG NUXEO_MD5=90ef2ac005020e880b6277510800c30c
# Tue, 11 Jun 2019 16:22:20 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 11 Jun 2019 16:23:04 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init     && chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Tue, 11 Jun 2019 16:23:05 GMT
COPY dir:d28c2b4bdf31f5817cba5496caa3161d743da596ec68186e0c444ede39dd58ac in /opt/nuxeo/server/templates/docker 
# Tue, 11 Jun 2019 16:23:05 GMT
COPY file:dbaa7cc62ad81fbafea7350f8e1ec2045fdc4a962bcfd145d777fefaf7205910 in /etc/nuxeo/nuxeo.conf.template 
# Tue, 11 Jun 2019 16:23:05 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 11 Jun 2019 16:23:07 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 11 Jun 2019 16:23:07 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 16:23:08 GMT
WORKDIR /opt/nuxeo/server
# Tue, 11 Jun 2019 16:23:08 GMT
COPY file:97cc30e1ff0452e9f8e463882c4544e2dc446201ab67f037426aee9cbd1e212a in / 
# Tue, 11 Jun 2019 16:23:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 16:23:09 GMT
EXPOSE 8080
# Tue, 11 Jun 2019 16:23:09 GMT
CMD ["nuxeoctl" "console"]
# Tue, 11 Jun 2019 16:23:09 GMT
USER 1000
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372744b62d49eba993652ee4a1201801fe278b687d85489101e07e7b9a4900e0`  
		Last Modified: Tue, 11 Jun 2019 00:38:26 GMT  
		Size: 50.1 MB (50065949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb72767f9beb4c9a164221d641a9472027a69c6e8762cb6a1474cc26365874fc`  
		Last Modified: Tue, 11 Jun 2019 07:22:52 GMT  
		Size: 4.9 MB (4932129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe571af508a610cb1935be3108457302dccf8a7d2290a655177d69bdd704065`  
		Last Modified: Tue, 11 Jun 2019 07:24:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6725074325eeb7aa9c6026f724d3f7a366fdb48420ab4d04f980e97ed9043b`  
		Last Modified: Tue, 11 Jun 2019 07:24:40 GMT  
		Size: 104.0 MB (103998216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240ab4743f288e2e5e789280294dd67ae775a45e35dd2c8a5015c8587293f69f`  
		Last Modified: Tue, 11 Jun 2019 16:27:17 GMT  
		Size: 314.4 MB (314444591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478cdc38d92886ae244f8c510bad9e78f49019e94038ecc7dea403bef91f9a61`  
		Last Modified: Tue, 11 Jun 2019 16:28:08 GMT  
		Size: 4.4 KB (4413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfe19a2f6baaa7955639f0015c418407b02cd279b996587232cef7246dfffce7`  
		Last Modified: Tue, 11 Jun 2019 16:28:39 GMT  
		Size: 355.6 MB (355562036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a86c6a59d3c6abe065e06144cdf732f9672b93feda72a1e00b59f7712e47f593`  
		Last Modified: Tue, 11 Jun 2019 16:28:07 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb8a2e93f0bb17607340eab40b928a09956f0cabcfeb1eda8cd7653f2472083`  
		Last Modified: Tue, 11 Jun 2019 16:28:07 GMT  
		Size: 986.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76781e3fd0521968c20932e938a0d5087ea83b71d996ff0a70b409ac6bc4e88`  
		Last Modified: Tue, 11 Jun 2019 16:28:07 GMT  
		Size: 1.8 KB (1813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26b16783ba46f61b834000576f58277d9c142db9dc57bb0c6407e5ced297dd2`  
		Last Modified: Tue, 11 Jun 2019 16:28:07 GMT  
		Size: 1.0 KB (1020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:10.10`

```console
$ docker pull nuxeo@sha256:20c0d8230c50c07be892d19410a7c0223c34a4d1c8999e163af684d5ec6f199e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:10.10` - linux; amd64

```console
$ docker pull nuxeo@sha256:7edc471d5d198041db75b430843bfca09e622d435b10c528d62b2dfc301305e6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **889.5 MB (889476249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe672baa47f477c98d9a20c7d101fb6cd7f6b0795aca6d22919f9085b12038f0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:30:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:18:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:18:07 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 07:19:41 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Tue, 11 Jun 2019 07:19:41 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 07:19:43 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 11 Jun 2019 07:19:43 GMT
ENV JAVA_VERSION=8u212-b04
# Tue, 11 Jun 2019 07:19:43 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-
# Tue, 11 Jun 2019 07:19:44 GMT
ENV JAVA_URL_VERSION=8u212b04
# Tue, 11 Jun 2019 07:19:58 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac -version; 	java -version
# Tue, 11 Jun 2019 16:13:48 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 11 Jun 2019 16:20:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 16:20:14 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 11 Jun 2019 16:20:15 GMT
ENV NUXEO_USER=nuxeo
# Tue, 11 Jun 2019 16:20:15 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 11 Jun 2019 16:20:15 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 11 Jun 2019 16:22:18 GMT
ARG NUXEO_VERSION=10.10
# Tue, 11 Jun 2019 16:22:18 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip
# Tue, 11 Jun 2019 16:22:18 GMT
ARG NUXEO_MD5=90ef2ac005020e880b6277510800c30c
# Tue, 11 Jun 2019 16:22:20 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 11 Jun 2019 16:23:04 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init     && chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Tue, 11 Jun 2019 16:23:05 GMT
COPY dir:d28c2b4bdf31f5817cba5496caa3161d743da596ec68186e0c444ede39dd58ac in /opt/nuxeo/server/templates/docker 
# Tue, 11 Jun 2019 16:23:05 GMT
COPY file:dbaa7cc62ad81fbafea7350f8e1ec2045fdc4a962bcfd145d777fefaf7205910 in /etc/nuxeo/nuxeo.conf.template 
# Tue, 11 Jun 2019 16:23:05 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 11 Jun 2019 16:23:07 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 11 Jun 2019 16:23:07 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 16:23:08 GMT
WORKDIR /opt/nuxeo/server
# Tue, 11 Jun 2019 16:23:08 GMT
COPY file:97cc30e1ff0452e9f8e463882c4544e2dc446201ab67f037426aee9cbd1e212a in / 
# Tue, 11 Jun 2019 16:23:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 16:23:09 GMT
EXPOSE 8080
# Tue, 11 Jun 2019 16:23:09 GMT
CMD ["nuxeoctl" "console"]
# Tue, 11 Jun 2019 16:23:09 GMT
USER 1000
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372744b62d49eba993652ee4a1201801fe278b687d85489101e07e7b9a4900e0`  
		Last Modified: Tue, 11 Jun 2019 00:38:26 GMT  
		Size: 50.1 MB (50065949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb72767f9beb4c9a164221d641a9472027a69c6e8762cb6a1474cc26365874fc`  
		Last Modified: Tue, 11 Jun 2019 07:22:52 GMT  
		Size: 4.9 MB (4932129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe571af508a610cb1935be3108457302dccf8a7d2290a655177d69bdd704065`  
		Last Modified: Tue, 11 Jun 2019 07:24:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6725074325eeb7aa9c6026f724d3f7a366fdb48420ab4d04f980e97ed9043b`  
		Last Modified: Tue, 11 Jun 2019 07:24:40 GMT  
		Size: 104.0 MB (103998216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240ab4743f288e2e5e789280294dd67ae775a45e35dd2c8a5015c8587293f69f`  
		Last Modified: Tue, 11 Jun 2019 16:27:17 GMT  
		Size: 314.4 MB (314444591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478cdc38d92886ae244f8c510bad9e78f49019e94038ecc7dea403bef91f9a61`  
		Last Modified: Tue, 11 Jun 2019 16:28:08 GMT  
		Size: 4.4 KB (4413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfe19a2f6baaa7955639f0015c418407b02cd279b996587232cef7246dfffce7`  
		Last Modified: Tue, 11 Jun 2019 16:28:39 GMT  
		Size: 355.6 MB (355562036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a86c6a59d3c6abe065e06144cdf732f9672b93feda72a1e00b59f7712e47f593`  
		Last Modified: Tue, 11 Jun 2019 16:28:07 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb8a2e93f0bb17607340eab40b928a09956f0cabcfeb1eda8cd7653f2472083`  
		Last Modified: Tue, 11 Jun 2019 16:28:07 GMT  
		Size: 986.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76781e3fd0521968c20932e938a0d5087ea83b71d996ff0a70b409ac6bc4e88`  
		Last Modified: Tue, 11 Jun 2019 16:28:07 GMT  
		Size: 1.8 KB (1813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26b16783ba46f61b834000576f58277d9c142db9dc57bb0c6407e5ced297dd2`  
		Last Modified: Tue, 11 Jun 2019 16:28:07 GMT  
		Size: 1.0 KB (1020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:7`

```console
$ docker pull nuxeo@sha256:f4a9371b57b861b3d7f3acb0d9c1120cec1d1c0f1a875ed843a567baaf007718
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:7` - linux; amd64

```console
$ docker pull nuxeo@sha256:141a6c1ddaba1dbad8c600737473c3d8b83634ac96ec6213bf488d1df1292d23
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1090961049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:685c81742b4604bf926c5cbf49b374c4e8791c1e14dc19eab8a7fc25b8c7527d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:30:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:18:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:18:07 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 07:19:41 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Tue, 11 Jun 2019 07:19:41 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 07:19:43 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 11 Jun 2019 07:19:43 GMT
ENV JAVA_VERSION=8u212-b04
# Tue, 11 Jun 2019 07:19:43 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-
# Tue, 11 Jun 2019 07:19:44 GMT
ENV JAVA_URL_VERSION=8u212b04
# Tue, 11 Jun 2019 07:19:58 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac -version; 	java -version
# Tue, 11 Jun 2019 16:13:48 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 11 Jun 2019 16:16:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 16:16:45 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 11 Jun 2019 16:16:45 GMT
ENV NUXEO_USER=nuxeo
# Tue, 11 Jun 2019 16:16:45 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 11 Jun 2019 16:16:45 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 11 Jun 2019 16:16:46 GMT
ARG NUXEO_VERSION=7.10
# Tue, 11 Jun 2019 16:16:46 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip
# Tue, 11 Jun 2019 16:16:46 GMT
ARG NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Tue, 11 Jun 2019 16:16:46 GMT
ENV LAUNCHER_DEBUG=-Djvmcheck=nofail
# Tue, 11 Jun 2019 16:16:48 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 11 Jun 2019 16:17:21 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Tue, 11 Jun 2019 16:17:28 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Tue, 11 Jun 2019 16:17:29 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d     && chmod g=u /etc/passwd
# Tue, 11 Jun 2019 16:17:30 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 16:17:30 GMT
WORKDIR /opt/nuxeo/server
# Tue, 11 Jun 2019 16:17:30 GMT
COPY file:9560db752e0d728d2bb67749bc399b34de55ac127e1fda9bab6523a33ac2fd8c in / 
# Tue, 11 Jun 2019 16:17:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 16:17:31 GMT
EXPOSE 8080
# Tue, 11 Jun 2019 16:17:31 GMT
CMD ["nuxeoctl" "console"]
# Tue, 11 Jun 2019 16:17:31 GMT
USER 1000
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372744b62d49eba993652ee4a1201801fe278b687d85489101e07e7b9a4900e0`  
		Last Modified: Tue, 11 Jun 2019 00:38:26 GMT  
		Size: 50.1 MB (50065949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb72767f9beb4c9a164221d641a9472027a69c6e8762cb6a1474cc26365874fc`  
		Last Modified: Tue, 11 Jun 2019 07:22:52 GMT  
		Size: 4.9 MB (4932129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe571af508a610cb1935be3108457302dccf8a7d2290a655177d69bdd704065`  
		Last Modified: Tue, 11 Jun 2019 07:24:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6725074325eeb7aa9c6026f724d3f7a366fdb48420ab4d04f980e97ed9043b`  
		Last Modified: Tue, 11 Jun 2019 07:24:40 GMT  
		Size: 104.0 MB (103998216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae9bc22d810e5d78c41483cfa6cb94c925785de835f6904e82724125a9782878`  
		Last Modified: Tue, 11 Jun 2019 16:25:31 GMT  
		Size: 310.6 MB (310575296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b50b34ba25ecbcbac2e622a6f96d0e6aee8196999b04cc249232e6140695ae`  
		Last Modified: Tue, 11 Jun 2019 16:23:36 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baba1c1c77751571233a75ff87a880f2caafb1b998613832a16cec7aa24eb436`  
		Last Modified: Tue, 11 Jun 2019 16:24:26 GMT  
		Size: 280.5 MB (280457970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:347263d249c815e6424aa4b32da76f45733972ebc2cb18499118430041e94865`  
		Last Modified: Tue, 11 Jun 2019 16:24:24 GMT  
		Size: 280.5 MB (280459878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:088127ce3d48393c50b12e128be5cb89262825022203c5bd9be9c1490be7e066`  
		Last Modified: Tue, 11 Jun 2019 16:23:36 GMT  
		Size: 821.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb49f97c2fad5dc87ade902f24435e68e9791daa96bd30bc3cdffadc6ceb5f3`  
		Last Modified: Tue, 11 Jun 2019 16:23:36 GMT  
		Size: 1.6 KB (1559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:7.10`

```console
$ docker pull nuxeo@sha256:f4a9371b57b861b3d7f3acb0d9c1120cec1d1c0f1a875ed843a567baaf007718
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:7.10` - linux; amd64

```console
$ docker pull nuxeo@sha256:141a6c1ddaba1dbad8c600737473c3d8b83634ac96ec6213bf488d1df1292d23
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1090961049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:685c81742b4604bf926c5cbf49b374c4e8791c1e14dc19eab8a7fc25b8c7527d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:30:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:18:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:18:07 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 07:19:41 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Tue, 11 Jun 2019 07:19:41 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 07:19:43 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 11 Jun 2019 07:19:43 GMT
ENV JAVA_VERSION=8u212-b04
# Tue, 11 Jun 2019 07:19:43 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-
# Tue, 11 Jun 2019 07:19:44 GMT
ENV JAVA_URL_VERSION=8u212b04
# Tue, 11 Jun 2019 07:19:58 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac -version; 	java -version
# Tue, 11 Jun 2019 16:13:48 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 11 Jun 2019 16:16:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 16:16:45 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 11 Jun 2019 16:16:45 GMT
ENV NUXEO_USER=nuxeo
# Tue, 11 Jun 2019 16:16:45 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 11 Jun 2019 16:16:45 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 11 Jun 2019 16:16:46 GMT
ARG NUXEO_VERSION=7.10
# Tue, 11 Jun 2019 16:16:46 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip
# Tue, 11 Jun 2019 16:16:46 GMT
ARG NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Tue, 11 Jun 2019 16:16:46 GMT
ENV LAUNCHER_DEBUG=-Djvmcheck=nofail
# Tue, 11 Jun 2019 16:16:48 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 11 Jun 2019 16:17:21 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Tue, 11 Jun 2019 16:17:28 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Tue, 11 Jun 2019 16:17:29 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d     && chmod g=u /etc/passwd
# Tue, 11 Jun 2019 16:17:30 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 16:17:30 GMT
WORKDIR /opt/nuxeo/server
# Tue, 11 Jun 2019 16:17:30 GMT
COPY file:9560db752e0d728d2bb67749bc399b34de55ac127e1fda9bab6523a33ac2fd8c in / 
# Tue, 11 Jun 2019 16:17:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 16:17:31 GMT
EXPOSE 8080
# Tue, 11 Jun 2019 16:17:31 GMT
CMD ["nuxeoctl" "console"]
# Tue, 11 Jun 2019 16:17:31 GMT
USER 1000
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372744b62d49eba993652ee4a1201801fe278b687d85489101e07e7b9a4900e0`  
		Last Modified: Tue, 11 Jun 2019 00:38:26 GMT  
		Size: 50.1 MB (50065949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb72767f9beb4c9a164221d641a9472027a69c6e8762cb6a1474cc26365874fc`  
		Last Modified: Tue, 11 Jun 2019 07:22:52 GMT  
		Size: 4.9 MB (4932129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe571af508a610cb1935be3108457302dccf8a7d2290a655177d69bdd704065`  
		Last Modified: Tue, 11 Jun 2019 07:24:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6725074325eeb7aa9c6026f724d3f7a366fdb48420ab4d04f980e97ed9043b`  
		Last Modified: Tue, 11 Jun 2019 07:24:40 GMT  
		Size: 104.0 MB (103998216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae9bc22d810e5d78c41483cfa6cb94c925785de835f6904e82724125a9782878`  
		Last Modified: Tue, 11 Jun 2019 16:25:31 GMT  
		Size: 310.6 MB (310575296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b50b34ba25ecbcbac2e622a6f96d0e6aee8196999b04cc249232e6140695ae`  
		Last Modified: Tue, 11 Jun 2019 16:23:36 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baba1c1c77751571233a75ff87a880f2caafb1b998613832a16cec7aa24eb436`  
		Last Modified: Tue, 11 Jun 2019 16:24:26 GMT  
		Size: 280.5 MB (280457970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:347263d249c815e6424aa4b32da76f45733972ebc2cb18499118430041e94865`  
		Last Modified: Tue, 11 Jun 2019 16:24:24 GMT  
		Size: 280.5 MB (280459878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:088127ce3d48393c50b12e128be5cb89262825022203c5bd9be9c1490be7e066`  
		Last Modified: Tue, 11 Jun 2019 16:23:36 GMT  
		Size: 821.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb49f97c2fad5dc87ade902f24435e68e9791daa96bd30bc3cdffadc6ceb5f3`  
		Last Modified: Tue, 11 Jun 2019 16:23:36 GMT  
		Size: 1.6 KB (1559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:8`

```console
$ docker pull nuxeo@sha256:95933a4d9eb89d290d95003e714103c6a4dd75c353f80c41e4159235fa96de38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:8` - linux; amd64

```console
$ docker pull nuxeo@sha256:b25c37930b0f1c21797f71e63a459e65f8221f31996fa818bf238032e3b1fb77
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **803.5 MB (803536929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c86cdf17bbceb788fa12aca05fd5b33a532c9642299c302c699d7835f337360b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:30:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:18:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:18:07 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 07:19:41 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Tue, 11 Jun 2019 07:19:41 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 07:19:43 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 11 Jun 2019 07:19:43 GMT
ENV JAVA_VERSION=8u212-b04
# Tue, 11 Jun 2019 07:19:43 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-
# Tue, 11 Jun 2019 07:19:44 GMT
ENV JAVA_URL_VERSION=8u212b04
# Tue, 11 Jun 2019 07:19:58 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac -version; 	java -version
# Tue, 11 Jun 2019 16:13:48 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 11 Jun 2019 16:20:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 16:20:14 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 11 Jun 2019 16:20:15 GMT
ENV NUXEO_USER=nuxeo
# Tue, 11 Jun 2019 16:20:15 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 11 Jun 2019 16:20:15 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 11 Jun 2019 16:20:16 GMT
ARG NUXEO_VERSION=8.10
# Tue, 11 Jun 2019 16:20:16 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip
# Tue, 11 Jun 2019 16:20:16 GMT
ARG NUXEO_MD5=29e67a19bba54099093b51d892926be1
# Tue, 11 Jun 2019 16:20:18 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 11 Jun 2019 16:20:52 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Tue, 11 Jun 2019 16:20:53 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d     && chmod g=u /etc/passwd
# Tue, 11 Jun 2019 16:20:53 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 16:20:54 GMT
WORKDIR /opt/nuxeo/server
# Tue, 11 Jun 2019 16:20:54 GMT
COPY file:bb9febfdc3a76dbd4a80d559b47951e49fca7137ad3b76ce7b7293512f63b257 in / 
# Tue, 11 Jun 2019 16:20:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 16:20:55 GMT
EXPOSE 8080
# Tue, 11 Jun 2019 16:20:55 GMT
CMD ["nuxeoctl" "console"]
# Tue, 11 Jun 2019 16:20:55 GMT
USER 1000
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372744b62d49eba993652ee4a1201801fe278b687d85489101e07e7b9a4900e0`  
		Last Modified: Tue, 11 Jun 2019 00:38:26 GMT  
		Size: 50.1 MB (50065949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb72767f9beb4c9a164221d641a9472027a69c6e8762cb6a1474cc26365874fc`  
		Last Modified: Tue, 11 Jun 2019 07:22:52 GMT  
		Size: 4.9 MB (4932129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe571af508a610cb1935be3108457302dccf8a7d2290a655177d69bdd704065`  
		Last Modified: Tue, 11 Jun 2019 07:24:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6725074325eeb7aa9c6026f724d3f7a366fdb48420ab4d04f980e97ed9043b`  
		Last Modified: Tue, 11 Jun 2019 07:24:40 GMT  
		Size: 104.0 MB (103998216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240ab4743f288e2e5e789280294dd67ae775a45e35dd2c8a5015c8587293f69f`  
		Last Modified: Tue, 11 Jun 2019 16:27:17 GMT  
		Size: 314.4 MB (314444591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f3813bedd28f78778f5b7df01962fe2e32018d9fa7ca3edbcea36fea310848f`  
		Last Modified: Tue, 11 Jun 2019 16:25:42 GMT  
		Size: 4.4 KB (4413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913b4be74c87b2e8b560bbad8653cb1353b3e998b74d99cef3007dccfa7589ee`  
		Last Modified: Tue, 11 Jun 2019 16:26:12 GMT  
		Size: 269.6 MB (269624435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b289e3172eb13dcd976541aae73d34773e1320b797b9e2b7a7b06e6ee75f7cdc`  
		Last Modified: Tue, 11 Jun 2019 16:25:42 GMT  
		Size: 817.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819509b86713d19a2e6772d6f23d16d575e8d345a0b8659841585780af4941ee`  
		Last Modified: Tue, 11 Jun 2019 16:25:42 GMT  
		Size: 1.6 KB (1560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:8.10`

```console
$ docker pull nuxeo@sha256:95933a4d9eb89d290d95003e714103c6a4dd75c353f80c41e4159235fa96de38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:8.10` - linux; amd64

```console
$ docker pull nuxeo@sha256:b25c37930b0f1c21797f71e63a459e65f8221f31996fa818bf238032e3b1fb77
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **803.5 MB (803536929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c86cdf17bbceb788fa12aca05fd5b33a532c9642299c302c699d7835f337360b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:30:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:18:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:18:07 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 07:19:41 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Tue, 11 Jun 2019 07:19:41 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 07:19:43 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 11 Jun 2019 07:19:43 GMT
ENV JAVA_VERSION=8u212-b04
# Tue, 11 Jun 2019 07:19:43 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-
# Tue, 11 Jun 2019 07:19:44 GMT
ENV JAVA_URL_VERSION=8u212b04
# Tue, 11 Jun 2019 07:19:58 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac -version; 	java -version
# Tue, 11 Jun 2019 16:13:48 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 11 Jun 2019 16:20:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 16:20:14 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 11 Jun 2019 16:20:15 GMT
ENV NUXEO_USER=nuxeo
# Tue, 11 Jun 2019 16:20:15 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 11 Jun 2019 16:20:15 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 11 Jun 2019 16:20:16 GMT
ARG NUXEO_VERSION=8.10
# Tue, 11 Jun 2019 16:20:16 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip
# Tue, 11 Jun 2019 16:20:16 GMT
ARG NUXEO_MD5=29e67a19bba54099093b51d892926be1
# Tue, 11 Jun 2019 16:20:18 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 11 Jun 2019 16:20:52 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Tue, 11 Jun 2019 16:20:53 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d     && chmod g=u /etc/passwd
# Tue, 11 Jun 2019 16:20:53 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 16:20:54 GMT
WORKDIR /opt/nuxeo/server
# Tue, 11 Jun 2019 16:20:54 GMT
COPY file:bb9febfdc3a76dbd4a80d559b47951e49fca7137ad3b76ce7b7293512f63b257 in / 
# Tue, 11 Jun 2019 16:20:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 16:20:55 GMT
EXPOSE 8080
# Tue, 11 Jun 2019 16:20:55 GMT
CMD ["nuxeoctl" "console"]
# Tue, 11 Jun 2019 16:20:55 GMT
USER 1000
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372744b62d49eba993652ee4a1201801fe278b687d85489101e07e7b9a4900e0`  
		Last Modified: Tue, 11 Jun 2019 00:38:26 GMT  
		Size: 50.1 MB (50065949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb72767f9beb4c9a164221d641a9472027a69c6e8762cb6a1474cc26365874fc`  
		Last Modified: Tue, 11 Jun 2019 07:22:52 GMT  
		Size: 4.9 MB (4932129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe571af508a610cb1935be3108457302dccf8a7d2290a655177d69bdd704065`  
		Last Modified: Tue, 11 Jun 2019 07:24:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6725074325eeb7aa9c6026f724d3f7a366fdb48420ab4d04f980e97ed9043b`  
		Last Modified: Tue, 11 Jun 2019 07:24:40 GMT  
		Size: 104.0 MB (103998216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240ab4743f288e2e5e789280294dd67ae775a45e35dd2c8a5015c8587293f69f`  
		Last Modified: Tue, 11 Jun 2019 16:27:17 GMT  
		Size: 314.4 MB (314444591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f3813bedd28f78778f5b7df01962fe2e32018d9fa7ca3edbcea36fea310848f`  
		Last Modified: Tue, 11 Jun 2019 16:25:42 GMT  
		Size: 4.4 KB (4413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913b4be74c87b2e8b560bbad8653cb1353b3e998b74d99cef3007dccfa7589ee`  
		Last Modified: Tue, 11 Jun 2019 16:26:12 GMT  
		Size: 269.6 MB (269624435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b289e3172eb13dcd976541aae73d34773e1320b797b9e2b7a7b06e6ee75f7cdc`  
		Last Modified: Tue, 11 Jun 2019 16:25:42 GMT  
		Size: 817.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819509b86713d19a2e6772d6f23d16d575e8d345a0b8659841585780af4941ee`  
		Last Modified: Tue, 11 Jun 2019 16:25:42 GMT  
		Size: 1.6 KB (1560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:9`

```console
$ docker pull nuxeo@sha256:eaa8a3aef6783e5a70cbe63623e0395589358eeccbc51c74786aee23eb9ad230
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:9` - linux; amd64

```console
$ docker pull nuxeo@sha256:8f39ebe11580badd07c86799341f4decaa11f55ac8ab0bdc8a10089279d30d6c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **919.1 MB (919070615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c3a33cf4b3baa58fe47dd834aa017afef6da38b358a19ec2c3412d911e95926`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:30:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:18:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:18:07 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 07:19:41 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Tue, 11 Jun 2019 07:19:41 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 07:19:43 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 11 Jun 2019 07:19:43 GMT
ENV JAVA_VERSION=8u212-b04
# Tue, 11 Jun 2019 07:19:43 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-
# Tue, 11 Jun 2019 07:19:44 GMT
ENV JAVA_URL_VERSION=8u212b04
# Tue, 11 Jun 2019 07:19:58 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac -version; 	java -version
# Tue, 11 Jun 2019 16:13:48 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 11 Jun 2019 16:20:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 16:20:14 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 11 Jun 2019 16:20:15 GMT
ENV NUXEO_USER=nuxeo
# Tue, 11 Jun 2019 16:20:15 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 11 Jun 2019 16:20:15 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 11 Jun 2019 16:21:03 GMT
ARG NUXEO_VERSION=9.10
# Tue, 11 Jun 2019 16:21:04 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip
# Tue, 11 Jun 2019 16:21:04 GMT
ARG NUXEO_MD5=327d23bbd5558565694027b11c0dd82a
# Tue, 11 Jun 2019 16:21:05 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 11 Jun 2019 16:21:58 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init     && chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Tue, 11 Jun 2019 16:21:59 GMT
COPY dir:1d4b19e1e35500d85eafcc58364498b9325f119ce19917cefc60c7ad98e600e7 in /opt/nuxeo/server/templates/docker 
# Tue, 11 Jun 2019 16:21:59 GMT
COPY file:8f1eb15b3cc87be8784ed6bc39c958a3a06d1e375bda2ce728f297d14d74d526 in /etc/nuxeo/nuxeo.conf.template 
# Tue, 11 Jun 2019 16:22:00 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 11 Jun 2019 16:22:01 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 11 Jun 2019 16:22:02 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 16:22:02 GMT
WORKDIR /opt/nuxeo/server
# Tue, 11 Jun 2019 16:22:02 GMT
COPY file:97cc30e1ff0452e9f8e463882c4544e2dc446201ab67f037426aee9cbd1e212a in / 
# Tue, 11 Jun 2019 16:22:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 16:22:03 GMT
EXPOSE 8080
# Tue, 11 Jun 2019 16:22:03 GMT
CMD ["nuxeoctl" "console"]
# Tue, 11 Jun 2019 16:22:03 GMT
USER 1000
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372744b62d49eba993652ee4a1201801fe278b687d85489101e07e7b9a4900e0`  
		Last Modified: Tue, 11 Jun 2019 00:38:26 GMT  
		Size: 50.1 MB (50065949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb72767f9beb4c9a164221d641a9472027a69c6e8762cb6a1474cc26365874fc`  
		Last Modified: Tue, 11 Jun 2019 07:22:52 GMT  
		Size: 4.9 MB (4932129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe571af508a610cb1935be3108457302dccf8a7d2290a655177d69bdd704065`  
		Last Modified: Tue, 11 Jun 2019 07:24:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6725074325eeb7aa9c6026f724d3f7a366fdb48420ab4d04f980e97ed9043b`  
		Last Modified: Tue, 11 Jun 2019 07:24:40 GMT  
		Size: 104.0 MB (103998216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240ab4743f288e2e5e789280294dd67ae775a45e35dd2c8a5015c8587293f69f`  
		Last Modified: Tue, 11 Jun 2019 16:27:17 GMT  
		Size: 314.4 MB (314444591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d143c7ccd710327ee50b7b3dcada537dead4aa094afa31bb6e8db991353688b`  
		Last Modified: Tue, 11 Jun 2019 16:27:26 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b58187b764eba91c27e10b8eba377383b672838ac985ed25831f6f6178e07135`  
		Last Modified: Tue, 11 Jun 2019 16:27:59 GMT  
		Size: 385.2 MB (385156006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611ede22ad14ef8943ca803709ca2f99323deade781909dc74fe7ae7d6b5472a`  
		Last Modified: Tue, 11 Jun 2019 16:27:25 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93a65e0b053720950122f75b9f55dd3c0d3daf5ff29d6a9ffc99a0f9add4b3ca`  
		Last Modified: Tue, 11 Jun 2019 16:27:25 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f9a2e9bac4020203e8154a92168275978023b3264571b5ca0f7fdd952e17a17`  
		Last Modified: Tue, 11 Jun 2019 16:27:25 GMT  
		Size: 1.8 KB (1848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2bfdc51d77f4896b3526109b8526b0046f0636acf4e4ae4e4a34d80cd874a4f`  
		Last Modified: Tue, 11 Jun 2019 16:27:25 GMT  
		Size: 1.0 KB (1020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:9.10`

```console
$ docker pull nuxeo@sha256:eaa8a3aef6783e5a70cbe63623e0395589358eeccbc51c74786aee23eb9ad230
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:9.10` - linux; amd64

```console
$ docker pull nuxeo@sha256:8f39ebe11580badd07c86799341f4decaa11f55ac8ab0bdc8a10089279d30d6c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **919.1 MB (919070615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c3a33cf4b3baa58fe47dd834aa017afef6da38b358a19ec2c3412d911e95926`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:30:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:18:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:18:07 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 07:19:41 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Tue, 11 Jun 2019 07:19:41 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 07:19:43 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 11 Jun 2019 07:19:43 GMT
ENV JAVA_VERSION=8u212-b04
# Tue, 11 Jun 2019 07:19:43 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-
# Tue, 11 Jun 2019 07:19:44 GMT
ENV JAVA_URL_VERSION=8u212b04
# Tue, 11 Jun 2019 07:19:58 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac -version; 	java -version
# Tue, 11 Jun 2019 16:13:48 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 11 Jun 2019 16:20:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 16:20:14 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 11 Jun 2019 16:20:15 GMT
ENV NUXEO_USER=nuxeo
# Tue, 11 Jun 2019 16:20:15 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 11 Jun 2019 16:20:15 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 11 Jun 2019 16:21:03 GMT
ARG NUXEO_VERSION=9.10
# Tue, 11 Jun 2019 16:21:04 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip
# Tue, 11 Jun 2019 16:21:04 GMT
ARG NUXEO_MD5=327d23bbd5558565694027b11c0dd82a
# Tue, 11 Jun 2019 16:21:05 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 11 Jun 2019 16:21:58 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init     && chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Tue, 11 Jun 2019 16:21:59 GMT
COPY dir:1d4b19e1e35500d85eafcc58364498b9325f119ce19917cefc60c7ad98e600e7 in /opt/nuxeo/server/templates/docker 
# Tue, 11 Jun 2019 16:21:59 GMT
COPY file:8f1eb15b3cc87be8784ed6bc39c958a3a06d1e375bda2ce728f297d14d74d526 in /etc/nuxeo/nuxeo.conf.template 
# Tue, 11 Jun 2019 16:22:00 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 11 Jun 2019 16:22:01 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 11 Jun 2019 16:22:02 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 16:22:02 GMT
WORKDIR /opt/nuxeo/server
# Tue, 11 Jun 2019 16:22:02 GMT
COPY file:97cc30e1ff0452e9f8e463882c4544e2dc446201ab67f037426aee9cbd1e212a in / 
# Tue, 11 Jun 2019 16:22:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 16:22:03 GMT
EXPOSE 8080
# Tue, 11 Jun 2019 16:22:03 GMT
CMD ["nuxeoctl" "console"]
# Tue, 11 Jun 2019 16:22:03 GMT
USER 1000
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372744b62d49eba993652ee4a1201801fe278b687d85489101e07e7b9a4900e0`  
		Last Modified: Tue, 11 Jun 2019 00:38:26 GMT  
		Size: 50.1 MB (50065949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb72767f9beb4c9a164221d641a9472027a69c6e8762cb6a1474cc26365874fc`  
		Last Modified: Tue, 11 Jun 2019 07:22:52 GMT  
		Size: 4.9 MB (4932129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe571af508a610cb1935be3108457302dccf8a7d2290a655177d69bdd704065`  
		Last Modified: Tue, 11 Jun 2019 07:24:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6725074325eeb7aa9c6026f724d3f7a366fdb48420ab4d04f980e97ed9043b`  
		Last Modified: Tue, 11 Jun 2019 07:24:40 GMT  
		Size: 104.0 MB (103998216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240ab4743f288e2e5e789280294dd67ae775a45e35dd2c8a5015c8587293f69f`  
		Last Modified: Tue, 11 Jun 2019 16:27:17 GMT  
		Size: 314.4 MB (314444591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d143c7ccd710327ee50b7b3dcada537dead4aa094afa31bb6e8db991353688b`  
		Last Modified: Tue, 11 Jun 2019 16:27:26 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b58187b764eba91c27e10b8eba377383b672838ac985ed25831f6f6178e07135`  
		Last Modified: Tue, 11 Jun 2019 16:27:59 GMT  
		Size: 385.2 MB (385156006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611ede22ad14ef8943ca803709ca2f99323deade781909dc74fe7ae7d6b5472a`  
		Last Modified: Tue, 11 Jun 2019 16:27:25 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93a65e0b053720950122f75b9f55dd3c0d3daf5ff29d6a9ffc99a0f9add4b3ca`  
		Last Modified: Tue, 11 Jun 2019 16:27:25 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f9a2e9bac4020203e8154a92168275978023b3264571b5ca0f7fdd952e17a17`  
		Last Modified: Tue, 11 Jun 2019 16:27:25 GMT  
		Size: 1.8 KB (1848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2bfdc51d77f4896b3526109b8526b0046f0636acf4e4ae4e4a34d80cd874a4f`  
		Last Modified: Tue, 11 Jun 2019 16:27:25 GMT  
		Size: 1.0 KB (1020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:FT`

```console
$ docker pull nuxeo@sha256:20c0d8230c50c07be892d19410a7c0223c34a4d1c8999e163af684d5ec6f199e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:FT` - linux; amd64

```console
$ docker pull nuxeo@sha256:7edc471d5d198041db75b430843bfca09e622d435b10c528d62b2dfc301305e6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **889.5 MB (889476249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe672baa47f477c98d9a20c7d101fb6cd7f6b0795aca6d22919f9085b12038f0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:30:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:18:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:18:07 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 07:19:41 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Tue, 11 Jun 2019 07:19:41 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 07:19:43 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 11 Jun 2019 07:19:43 GMT
ENV JAVA_VERSION=8u212-b04
# Tue, 11 Jun 2019 07:19:43 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-
# Tue, 11 Jun 2019 07:19:44 GMT
ENV JAVA_URL_VERSION=8u212b04
# Tue, 11 Jun 2019 07:19:58 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac -version; 	java -version
# Tue, 11 Jun 2019 16:13:48 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 11 Jun 2019 16:20:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 16:20:14 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 11 Jun 2019 16:20:15 GMT
ENV NUXEO_USER=nuxeo
# Tue, 11 Jun 2019 16:20:15 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 11 Jun 2019 16:20:15 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 11 Jun 2019 16:22:18 GMT
ARG NUXEO_VERSION=10.10
# Tue, 11 Jun 2019 16:22:18 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip
# Tue, 11 Jun 2019 16:22:18 GMT
ARG NUXEO_MD5=90ef2ac005020e880b6277510800c30c
# Tue, 11 Jun 2019 16:22:20 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 11 Jun 2019 16:23:04 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init     && chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Tue, 11 Jun 2019 16:23:05 GMT
COPY dir:d28c2b4bdf31f5817cba5496caa3161d743da596ec68186e0c444ede39dd58ac in /opt/nuxeo/server/templates/docker 
# Tue, 11 Jun 2019 16:23:05 GMT
COPY file:dbaa7cc62ad81fbafea7350f8e1ec2045fdc4a962bcfd145d777fefaf7205910 in /etc/nuxeo/nuxeo.conf.template 
# Tue, 11 Jun 2019 16:23:05 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 11 Jun 2019 16:23:07 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 11 Jun 2019 16:23:07 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 16:23:08 GMT
WORKDIR /opt/nuxeo/server
# Tue, 11 Jun 2019 16:23:08 GMT
COPY file:97cc30e1ff0452e9f8e463882c4544e2dc446201ab67f037426aee9cbd1e212a in / 
# Tue, 11 Jun 2019 16:23:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 16:23:09 GMT
EXPOSE 8080
# Tue, 11 Jun 2019 16:23:09 GMT
CMD ["nuxeoctl" "console"]
# Tue, 11 Jun 2019 16:23:09 GMT
USER 1000
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372744b62d49eba993652ee4a1201801fe278b687d85489101e07e7b9a4900e0`  
		Last Modified: Tue, 11 Jun 2019 00:38:26 GMT  
		Size: 50.1 MB (50065949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb72767f9beb4c9a164221d641a9472027a69c6e8762cb6a1474cc26365874fc`  
		Last Modified: Tue, 11 Jun 2019 07:22:52 GMT  
		Size: 4.9 MB (4932129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe571af508a610cb1935be3108457302dccf8a7d2290a655177d69bdd704065`  
		Last Modified: Tue, 11 Jun 2019 07:24:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6725074325eeb7aa9c6026f724d3f7a366fdb48420ab4d04f980e97ed9043b`  
		Last Modified: Tue, 11 Jun 2019 07:24:40 GMT  
		Size: 104.0 MB (103998216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240ab4743f288e2e5e789280294dd67ae775a45e35dd2c8a5015c8587293f69f`  
		Last Modified: Tue, 11 Jun 2019 16:27:17 GMT  
		Size: 314.4 MB (314444591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478cdc38d92886ae244f8c510bad9e78f49019e94038ecc7dea403bef91f9a61`  
		Last Modified: Tue, 11 Jun 2019 16:28:08 GMT  
		Size: 4.4 KB (4413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfe19a2f6baaa7955639f0015c418407b02cd279b996587232cef7246dfffce7`  
		Last Modified: Tue, 11 Jun 2019 16:28:39 GMT  
		Size: 355.6 MB (355562036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a86c6a59d3c6abe065e06144cdf732f9672b93feda72a1e00b59f7712e47f593`  
		Last Modified: Tue, 11 Jun 2019 16:28:07 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb8a2e93f0bb17607340eab40b928a09956f0cabcfeb1eda8cd7653f2472083`  
		Last Modified: Tue, 11 Jun 2019 16:28:07 GMT  
		Size: 986.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76781e3fd0521968c20932e938a0d5087ea83b71d996ff0a70b409ac6bc4e88`  
		Last Modified: Tue, 11 Jun 2019 16:28:07 GMT  
		Size: 1.8 KB (1813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26b16783ba46f61b834000576f58277d9c142db9dc57bb0c6407e5ced297dd2`  
		Last Modified: Tue, 11 Jun 2019 16:28:07 GMT  
		Size: 1.0 KB (1020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:latest`

```console
$ docker pull nuxeo@sha256:20c0d8230c50c07be892d19410a7c0223c34a4d1c8999e163af684d5ec6f199e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:latest` - linux; amd64

```console
$ docker pull nuxeo@sha256:7edc471d5d198041db75b430843bfca09e622d435b10c528d62b2dfc301305e6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **889.5 MB (889476249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe672baa47f477c98d9a20c7d101fb6cd7f6b0795aca6d22919f9085b12038f0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:30:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:18:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:18:07 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 07:19:41 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Tue, 11 Jun 2019 07:19:41 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 07:19:43 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 11 Jun 2019 07:19:43 GMT
ENV JAVA_VERSION=8u212-b04
# Tue, 11 Jun 2019 07:19:43 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-
# Tue, 11 Jun 2019 07:19:44 GMT
ENV JAVA_URL_VERSION=8u212b04
# Tue, 11 Jun 2019 07:19:58 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac -version; 	java -version
# Tue, 11 Jun 2019 16:13:48 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 11 Jun 2019 16:20:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 16:20:14 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 11 Jun 2019 16:20:15 GMT
ENV NUXEO_USER=nuxeo
# Tue, 11 Jun 2019 16:20:15 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 11 Jun 2019 16:20:15 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 11 Jun 2019 16:22:18 GMT
ARG NUXEO_VERSION=10.10
# Tue, 11 Jun 2019 16:22:18 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip
# Tue, 11 Jun 2019 16:22:18 GMT
ARG NUXEO_MD5=90ef2ac005020e880b6277510800c30c
# Tue, 11 Jun 2019 16:22:20 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 11 Jun 2019 16:23:04 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init     && chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Tue, 11 Jun 2019 16:23:05 GMT
COPY dir:d28c2b4bdf31f5817cba5496caa3161d743da596ec68186e0c444ede39dd58ac in /opt/nuxeo/server/templates/docker 
# Tue, 11 Jun 2019 16:23:05 GMT
COPY file:dbaa7cc62ad81fbafea7350f8e1ec2045fdc4a962bcfd145d777fefaf7205910 in /etc/nuxeo/nuxeo.conf.template 
# Tue, 11 Jun 2019 16:23:05 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 11 Jun 2019 16:23:07 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 11 Jun 2019 16:23:07 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 16:23:08 GMT
WORKDIR /opt/nuxeo/server
# Tue, 11 Jun 2019 16:23:08 GMT
COPY file:97cc30e1ff0452e9f8e463882c4544e2dc446201ab67f037426aee9cbd1e212a in / 
# Tue, 11 Jun 2019 16:23:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 16:23:09 GMT
EXPOSE 8080
# Tue, 11 Jun 2019 16:23:09 GMT
CMD ["nuxeoctl" "console"]
# Tue, 11 Jun 2019 16:23:09 GMT
USER 1000
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372744b62d49eba993652ee4a1201801fe278b687d85489101e07e7b9a4900e0`  
		Last Modified: Tue, 11 Jun 2019 00:38:26 GMT  
		Size: 50.1 MB (50065949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb72767f9beb4c9a164221d641a9472027a69c6e8762cb6a1474cc26365874fc`  
		Last Modified: Tue, 11 Jun 2019 07:22:52 GMT  
		Size: 4.9 MB (4932129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe571af508a610cb1935be3108457302dccf8a7d2290a655177d69bdd704065`  
		Last Modified: Tue, 11 Jun 2019 07:24:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6725074325eeb7aa9c6026f724d3f7a366fdb48420ab4d04f980e97ed9043b`  
		Last Modified: Tue, 11 Jun 2019 07:24:40 GMT  
		Size: 104.0 MB (103998216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240ab4743f288e2e5e789280294dd67ae775a45e35dd2c8a5015c8587293f69f`  
		Last Modified: Tue, 11 Jun 2019 16:27:17 GMT  
		Size: 314.4 MB (314444591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478cdc38d92886ae244f8c510bad9e78f49019e94038ecc7dea403bef91f9a61`  
		Last Modified: Tue, 11 Jun 2019 16:28:08 GMT  
		Size: 4.4 KB (4413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfe19a2f6baaa7955639f0015c418407b02cd279b996587232cef7246dfffce7`  
		Last Modified: Tue, 11 Jun 2019 16:28:39 GMT  
		Size: 355.6 MB (355562036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a86c6a59d3c6abe065e06144cdf732f9672b93feda72a1e00b59f7712e47f593`  
		Last Modified: Tue, 11 Jun 2019 16:28:07 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb8a2e93f0bb17607340eab40b928a09956f0cabcfeb1eda8cd7653f2472083`  
		Last Modified: Tue, 11 Jun 2019 16:28:07 GMT  
		Size: 986.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76781e3fd0521968c20932e938a0d5087ea83b71d996ff0a70b409ac6bc4e88`  
		Last Modified: Tue, 11 Jun 2019 16:28:07 GMT  
		Size: 1.8 KB (1813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26b16783ba46f61b834000576f58277d9c142db9dc57bb0c6407e5ced297dd2`  
		Last Modified: Tue, 11 Jun 2019 16:28:07 GMT  
		Size: 1.0 KB (1020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS`

```console
$ docker pull nuxeo@sha256:20c0d8230c50c07be892d19410a7c0223c34a4d1c8999e163af684d5ec6f199e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:LTS` - linux; amd64

```console
$ docker pull nuxeo@sha256:7edc471d5d198041db75b430843bfca09e622d435b10c528d62b2dfc301305e6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **889.5 MB (889476249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe672baa47f477c98d9a20c7d101fb6cd7f6b0795aca6d22919f9085b12038f0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:30:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:18:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:18:07 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 07:19:41 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Tue, 11 Jun 2019 07:19:41 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 07:19:43 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 11 Jun 2019 07:19:43 GMT
ENV JAVA_VERSION=8u212-b04
# Tue, 11 Jun 2019 07:19:43 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-
# Tue, 11 Jun 2019 07:19:44 GMT
ENV JAVA_URL_VERSION=8u212b04
# Tue, 11 Jun 2019 07:19:58 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac -version; 	java -version
# Tue, 11 Jun 2019 16:13:48 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 11 Jun 2019 16:20:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 16:20:14 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 11 Jun 2019 16:20:15 GMT
ENV NUXEO_USER=nuxeo
# Tue, 11 Jun 2019 16:20:15 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 11 Jun 2019 16:20:15 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 11 Jun 2019 16:22:18 GMT
ARG NUXEO_VERSION=10.10
# Tue, 11 Jun 2019 16:22:18 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip
# Tue, 11 Jun 2019 16:22:18 GMT
ARG NUXEO_MD5=90ef2ac005020e880b6277510800c30c
# Tue, 11 Jun 2019 16:22:20 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 11 Jun 2019 16:23:04 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init     && chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Tue, 11 Jun 2019 16:23:05 GMT
COPY dir:d28c2b4bdf31f5817cba5496caa3161d743da596ec68186e0c444ede39dd58ac in /opt/nuxeo/server/templates/docker 
# Tue, 11 Jun 2019 16:23:05 GMT
COPY file:dbaa7cc62ad81fbafea7350f8e1ec2045fdc4a962bcfd145d777fefaf7205910 in /etc/nuxeo/nuxeo.conf.template 
# Tue, 11 Jun 2019 16:23:05 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 11 Jun 2019 16:23:07 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 11 Jun 2019 16:23:07 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 16:23:08 GMT
WORKDIR /opt/nuxeo/server
# Tue, 11 Jun 2019 16:23:08 GMT
COPY file:97cc30e1ff0452e9f8e463882c4544e2dc446201ab67f037426aee9cbd1e212a in / 
# Tue, 11 Jun 2019 16:23:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 16:23:09 GMT
EXPOSE 8080
# Tue, 11 Jun 2019 16:23:09 GMT
CMD ["nuxeoctl" "console"]
# Tue, 11 Jun 2019 16:23:09 GMT
USER 1000
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372744b62d49eba993652ee4a1201801fe278b687d85489101e07e7b9a4900e0`  
		Last Modified: Tue, 11 Jun 2019 00:38:26 GMT  
		Size: 50.1 MB (50065949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb72767f9beb4c9a164221d641a9472027a69c6e8762cb6a1474cc26365874fc`  
		Last Modified: Tue, 11 Jun 2019 07:22:52 GMT  
		Size: 4.9 MB (4932129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe571af508a610cb1935be3108457302dccf8a7d2290a655177d69bdd704065`  
		Last Modified: Tue, 11 Jun 2019 07:24:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6725074325eeb7aa9c6026f724d3f7a366fdb48420ab4d04f980e97ed9043b`  
		Last Modified: Tue, 11 Jun 2019 07:24:40 GMT  
		Size: 104.0 MB (103998216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240ab4743f288e2e5e789280294dd67ae775a45e35dd2c8a5015c8587293f69f`  
		Last Modified: Tue, 11 Jun 2019 16:27:17 GMT  
		Size: 314.4 MB (314444591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478cdc38d92886ae244f8c510bad9e78f49019e94038ecc7dea403bef91f9a61`  
		Last Modified: Tue, 11 Jun 2019 16:28:08 GMT  
		Size: 4.4 KB (4413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfe19a2f6baaa7955639f0015c418407b02cd279b996587232cef7246dfffce7`  
		Last Modified: Tue, 11 Jun 2019 16:28:39 GMT  
		Size: 355.6 MB (355562036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a86c6a59d3c6abe065e06144cdf732f9672b93feda72a1e00b59f7712e47f593`  
		Last Modified: Tue, 11 Jun 2019 16:28:07 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb8a2e93f0bb17607340eab40b928a09956f0cabcfeb1eda8cd7653f2472083`  
		Last Modified: Tue, 11 Jun 2019 16:28:07 GMT  
		Size: 986.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76781e3fd0521968c20932e938a0d5087ea83b71d996ff0a70b409ac6bc4e88`  
		Last Modified: Tue, 11 Jun 2019 16:28:07 GMT  
		Size: 1.8 KB (1813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26b16783ba46f61b834000576f58277d9c142db9dc57bb0c6407e5ced297dd2`  
		Last Modified: Tue, 11 Jun 2019 16:28:07 GMT  
		Size: 1.0 KB (1020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS-2015`

```console
$ docker pull nuxeo@sha256:f4a9371b57b861b3d7f3acb0d9c1120cec1d1c0f1a875ed843a567baaf007718
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:LTS-2015` - linux; amd64

```console
$ docker pull nuxeo@sha256:141a6c1ddaba1dbad8c600737473c3d8b83634ac96ec6213bf488d1df1292d23
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1090961049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:685c81742b4604bf926c5cbf49b374c4e8791c1e14dc19eab8a7fc25b8c7527d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:30:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:18:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:18:07 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 07:19:41 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Tue, 11 Jun 2019 07:19:41 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 07:19:43 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 11 Jun 2019 07:19:43 GMT
ENV JAVA_VERSION=8u212-b04
# Tue, 11 Jun 2019 07:19:43 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-
# Tue, 11 Jun 2019 07:19:44 GMT
ENV JAVA_URL_VERSION=8u212b04
# Tue, 11 Jun 2019 07:19:58 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac -version; 	java -version
# Tue, 11 Jun 2019 16:13:48 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 11 Jun 2019 16:16:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 16:16:45 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 11 Jun 2019 16:16:45 GMT
ENV NUXEO_USER=nuxeo
# Tue, 11 Jun 2019 16:16:45 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 11 Jun 2019 16:16:45 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 11 Jun 2019 16:16:46 GMT
ARG NUXEO_VERSION=7.10
# Tue, 11 Jun 2019 16:16:46 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip
# Tue, 11 Jun 2019 16:16:46 GMT
ARG NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Tue, 11 Jun 2019 16:16:46 GMT
ENV LAUNCHER_DEBUG=-Djvmcheck=nofail
# Tue, 11 Jun 2019 16:16:48 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 11 Jun 2019 16:17:21 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Tue, 11 Jun 2019 16:17:28 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Tue, 11 Jun 2019 16:17:29 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d     && chmod g=u /etc/passwd
# Tue, 11 Jun 2019 16:17:30 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 16:17:30 GMT
WORKDIR /opt/nuxeo/server
# Tue, 11 Jun 2019 16:17:30 GMT
COPY file:9560db752e0d728d2bb67749bc399b34de55ac127e1fda9bab6523a33ac2fd8c in / 
# Tue, 11 Jun 2019 16:17:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 16:17:31 GMT
EXPOSE 8080
# Tue, 11 Jun 2019 16:17:31 GMT
CMD ["nuxeoctl" "console"]
# Tue, 11 Jun 2019 16:17:31 GMT
USER 1000
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372744b62d49eba993652ee4a1201801fe278b687d85489101e07e7b9a4900e0`  
		Last Modified: Tue, 11 Jun 2019 00:38:26 GMT  
		Size: 50.1 MB (50065949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb72767f9beb4c9a164221d641a9472027a69c6e8762cb6a1474cc26365874fc`  
		Last Modified: Tue, 11 Jun 2019 07:22:52 GMT  
		Size: 4.9 MB (4932129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe571af508a610cb1935be3108457302dccf8a7d2290a655177d69bdd704065`  
		Last Modified: Tue, 11 Jun 2019 07:24:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6725074325eeb7aa9c6026f724d3f7a366fdb48420ab4d04f980e97ed9043b`  
		Last Modified: Tue, 11 Jun 2019 07:24:40 GMT  
		Size: 104.0 MB (103998216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae9bc22d810e5d78c41483cfa6cb94c925785de835f6904e82724125a9782878`  
		Last Modified: Tue, 11 Jun 2019 16:25:31 GMT  
		Size: 310.6 MB (310575296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0b50b34ba25ecbcbac2e622a6f96d0e6aee8196999b04cc249232e6140695ae`  
		Last Modified: Tue, 11 Jun 2019 16:23:36 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baba1c1c77751571233a75ff87a880f2caafb1b998613832a16cec7aa24eb436`  
		Last Modified: Tue, 11 Jun 2019 16:24:26 GMT  
		Size: 280.5 MB (280457970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:347263d249c815e6424aa4b32da76f45733972ebc2cb18499118430041e94865`  
		Last Modified: Tue, 11 Jun 2019 16:24:24 GMT  
		Size: 280.5 MB (280459878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:088127ce3d48393c50b12e128be5cb89262825022203c5bd9be9c1490be7e066`  
		Last Modified: Tue, 11 Jun 2019 16:23:36 GMT  
		Size: 821.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcb49f97c2fad5dc87ade902f24435e68e9791daa96bd30bc3cdffadc6ceb5f3`  
		Last Modified: Tue, 11 Jun 2019 16:23:36 GMT  
		Size: 1.6 KB (1559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS-2016`

```console
$ docker pull nuxeo@sha256:95933a4d9eb89d290d95003e714103c6a4dd75c353f80c41e4159235fa96de38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:LTS-2016` - linux; amd64

```console
$ docker pull nuxeo@sha256:b25c37930b0f1c21797f71e63a459e65f8221f31996fa818bf238032e3b1fb77
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **803.5 MB (803536929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c86cdf17bbceb788fa12aca05fd5b33a532c9642299c302c699d7835f337360b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:30:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:18:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:18:07 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 07:19:41 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Tue, 11 Jun 2019 07:19:41 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 07:19:43 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 11 Jun 2019 07:19:43 GMT
ENV JAVA_VERSION=8u212-b04
# Tue, 11 Jun 2019 07:19:43 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-
# Tue, 11 Jun 2019 07:19:44 GMT
ENV JAVA_URL_VERSION=8u212b04
# Tue, 11 Jun 2019 07:19:58 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac -version; 	java -version
# Tue, 11 Jun 2019 16:13:48 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 11 Jun 2019 16:20:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 16:20:14 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 11 Jun 2019 16:20:15 GMT
ENV NUXEO_USER=nuxeo
# Tue, 11 Jun 2019 16:20:15 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 11 Jun 2019 16:20:15 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 11 Jun 2019 16:20:16 GMT
ARG NUXEO_VERSION=8.10
# Tue, 11 Jun 2019 16:20:16 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip
# Tue, 11 Jun 2019 16:20:16 GMT
ARG NUXEO_MD5=29e67a19bba54099093b51d892926be1
# Tue, 11 Jun 2019 16:20:18 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 11 Jun 2019 16:20:52 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Tue, 11 Jun 2019 16:20:53 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d     && chmod g=u /etc/passwd
# Tue, 11 Jun 2019 16:20:53 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 16:20:54 GMT
WORKDIR /opt/nuxeo/server
# Tue, 11 Jun 2019 16:20:54 GMT
COPY file:bb9febfdc3a76dbd4a80d559b47951e49fca7137ad3b76ce7b7293512f63b257 in / 
# Tue, 11 Jun 2019 16:20:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 16:20:55 GMT
EXPOSE 8080
# Tue, 11 Jun 2019 16:20:55 GMT
CMD ["nuxeoctl" "console"]
# Tue, 11 Jun 2019 16:20:55 GMT
USER 1000
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372744b62d49eba993652ee4a1201801fe278b687d85489101e07e7b9a4900e0`  
		Last Modified: Tue, 11 Jun 2019 00:38:26 GMT  
		Size: 50.1 MB (50065949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb72767f9beb4c9a164221d641a9472027a69c6e8762cb6a1474cc26365874fc`  
		Last Modified: Tue, 11 Jun 2019 07:22:52 GMT  
		Size: 4.9 MB (4932129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe571af508a610cb1935be3108457302dccf8a7d2290a655177d69bdd704065`  
		Last Modified: Tue, 11 Jun 2019 07:24:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6725074325eeb7aa9c6026f724d3f7a366fdb48420ab4d04f980e97ed9043b`  
		Last Modified: Tue, 11 Jun 2019 07:24:40 GMT  
		Size: 104.0 MB (103998216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240ab4743f288e2e5e789280294dd67ae775a45e35dd2c8a5015c8587293f69f`  
		Last Modified: Tue, 11 Jun 2019 16:27:17 GMT  
		Size: 314.4 MB (314444591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f3813bedd28f78778f5b7df01962fe2e32018d9fa7ca3edbcea36fea310848f`  
		Last Modified: Tue, 11 Jun 2019 16:25:42 GMT  
		Size: 4.4 KB (4413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:913b4be74c87b2e8b560bbad8653cb1353b3e998b74d99cef3007dccfa7589ee`  
		Last Modified: Tue, 11 Jun 2019 16:26:12 GMT  
		Size: 269.6 MB (269624435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b289e3172eb13dcd976541aae73d34773e1320b797b9e2b7a7b06e6ee75f7cdc`  
		Last Modified: Tue, 11 Jun 2019 16:25:42 GMT  
		Size: 817.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:819509b86713d19a2e6772d6f23d16d575e8d345a0b8659841585780af4941ee`  
		Last Modified: Tue, 11 Jun 2019 16:25:42 GMT  
		Size: 1.6 KB (1560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS-2017`

```console
$ docker pull nuxeo@sha256:eaa8a3aef6783e5a70cbe63623e0395589358eeccbc51c74786aee23eb9ad230
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:LTS-2017` - linux; amd64

```console
$ docker pull nuxeo@sha256:8f39ebe11580badd07c86799341f4decaa11f55ac8ab0bdc8a10089279d30d6c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **919.1 MB (919070615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c3a33cf4b3baa58fe47dd834aa017afef6da38b358a19ec2c3412d911e95926`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:30:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:18:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:18:07 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 07:19:41 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Tue, 11 Jun 2019 07:19:41 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 07:19:43 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 11 Jun 2019 07:19:43 GMT
ENV JAVA_VERSION=8u212-b04
# Tue, 11 Jun 2019 07:19:43 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-
# Tue, 11 Jun 2019 07:19:44 GMT
ENV JAVA_URL_VERSION=8u212b04
# Tue, 11 Jun 2019 07:19:58 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac -version; 	java -version
# Tue, 11 Jun 2019 16:13:48 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 11 Jun 2019 16:20:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 16:20:14 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 11 Jun 2019 16:20:15 GMT
ENV NUXEO_USER=nuxeo
# Tue, 11 Jun 2019 16:20:15 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 11 Jun 2019 16:20:15 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 11 Jun 2019 16:21:03 GMT
ARG NUXEO_VERSION=9.10
# Tue, 11 Jun 2019 16:21:04 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip
# Tue, 11 Jun 2019 16:21:04 GMT
ARG NUXEO_MD5=327d23bbd5558565694027b11c0dd82a
# Tue, 11 Jun 2019 16:21:05 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 11 Jun 2019 16:21:58 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init     && chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Tue, 11 Jun 2019 16:21:59 GMT
COPY dir:1d4b19e1e35500d85eafcc58364498b9325f119ce19917cefc60c7ad98e600e7 in /opt/nuxeo/server/templates/docker 
# Tue, 11 Jun 2019 16:21:59 GMT
COPY file:8f1eb15b3cc87be8784ed6bc39c958a3a06d1e375bda2ce728f297d14d74d526 in /etc/nuxeo/nuxeo.conf.template 
# Tue, 11 Jun 2019 16:22:00 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 11 Jun 2019 16:22:01 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 11 Jun 2019 16:22:02 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 16:22:02 GMT
WORKDIR /opt/nuxeo/server
# Tue, 11 Jun 2019 16:22:02 GMT
COPY file:97cc30e1ff0452e9f8e463882c4544e2dc446201ab67f037426aee9cbd1e212a in / 
# Tue, 11 Jun 2019 16:22:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 16:22:03 GMT
EXPOSE 8080
# Tue, 11 Jun 2019 16:22:03 GMT
CMD ["nuxeoctl" "console"]
# Tue, 11 Jun 2019 16:22:03 GMT
USER 1000
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372744b62d49eba993652ee4a1201801fe278b687d85489101e07e7b9a4900e0`  
		Last Modified: Tue, 11 Jun 2019 00:38:26 GMT  
		Size: 50.1 MB (50065949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb72767f9beb4c9a164221d641a9472027a69c6e8762cb6a1474cc26365874fc`  
		Last Modified: Tue, 11 Jun 2019 07:22:52 GMT  
		Size: 4.9 MB (4932129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe571af508a610cb1935be3108457302dccf8a7d2290a655177d69bdd704065`  
		Last Modified: Tue, 11 Jun 2019 07:24:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6725074325eeb7aa9c6026f724d3f7a366fdb48420ab4d04f980e97ed9043b`  
		Last Modified: Tue, 11 Jun 2019 07:24:40 GMT  
		Size: 104.0 MB (103998216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240ab4743f288e2e5e789280294dd67ae775a45e35dd2c8a5015c8587293f69f`  
		Last Modified: Tue, 11 Jun 2019 16:27:17 GMT  
		Size: 314.4 MB (314444591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d143c7ccd710327ee50b7b3dcada537dead4aa094afa31bb6e8db991353688b`  
		Last Modified: Tue, 11 Jun 2019 16:27:26 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b58187b764eba91c27e10b8eba377383b672838ac985ed25831f6f6178e07135`  
		Last Modified: Tue, 11 Jun 2019 16:27:59 GMT  
		Size: 385.2 MB (385156006 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611ede22ad14ef8943ca803709ca2f99323deade781909dc74fe7ae7d6b5472a`  
		Last Modified: Tue, 11 Jun 2019 16:27:25 GMT  
		Size: 612.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93a65e0b053720950122f75b9f55dd3c0d3daf5ff29d6a9ffc99a0f9add4b3ca`  
		Last Modified: Tue, 11 Jun 2019 16:27:25 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f9a2e9bac4020203e8154a92168275978023b3264571b5ca0f7fdd952e17a17`  
		Last Modified: Tue, 11 Jun 2019 16:27:25 GMT  
		Size: 1.8 KB (1848 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2bfdc51d77f4896b3526109b8526b0046f0636acf4e4ae4e4a34d80cd874a4f`  
		Last Modified: Tue, 11 Jun 2019 16:27:25 GMT  
		Size: 1.0 KB (1020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS-2019`

```console
$ docker pull nuxeo@sha256:20c0d8230c50c07be892d19410a7c0223c34a4d1c8999e163af684d5ec6f199e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:LTS-2019` - linux; amd64

```console
$ docker pull nuxeo@sha256:7edc471d5d198041db75b430843bfca09e622d435b10c528d62b2dfc301305e6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **889.5 MB (889476249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe672baa47f477c98d9a20c7d101fb6cd7f6b0795aca6d22919f9085b12038f0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:30:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:18:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 				ca-certificates p11-kit 				fontconfig libfreetype6 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 07:18:07 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 07:19:41 GMT
ENV JAVA_HOME=/usr/local/openjdk-8
# Tue, 11 Jun 2019 07:19:41 GMT
ENV PATH=/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 07:19:43 GMT
RUN { echo '#/bin/sh'; echo 'echo "$JAVA_HOME"'; } > /usr/local/bin/docker-java-home && chmod +x /usr/local/bin/docker-java-home && [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 11 Jun 2019 07:19:43 GMT
ENV JAVA_VERSION=8u212-b04
# Tue, 11 Jun 2019 07:19:43 GMT
ENV JAVA_BASE_URL=https://github.com/AdoptOpenJDK/openjdk8-upstream-binaries/releases/download/jdk8u212-b04/OpenJDK8U-
# Tue, 11 Jun 2019 07:19:44 GMT
ENV JAVA_URL_VERSION=8u212b04
# Tue, 11 Jun 2019 07:19:58 GMT
RUN set -eux; 		dpkgArch="$(dpkg --print-architecture)"; 	case "$dpkgArch" in 		amd64) upstreamArch='x64' ;; 		arm64) upstreamArch='aarch64' ;; 		*) echo >&2 "error: unsupported architecture: $dpkgArch" ;; 	esac; 		wget -O openjdk.tgz.asc "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz.sign"; 	wget -O openjdk.tgz "${JAVA_BASE_URL}${upstreamArch}_linux_${JAVA_URL_VERSION}.tar.gz" --progress=dot:giga; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys CA5F11C6CE22644D42C6AC4492EF8D39DC13168F; 	gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys EAC843EBD3EFDB98CC772FADA5CD6035332FA671; 	gpg --batch --list-sigs --keyid-format 0xLONG CA5F11C6CE22644D42C6AC4492EF8D39DC13168F | grep '0xA5CD6035332FA671' | grep 'Andrew Haley'; 	gpg --batch --verify openjdk.tgz.asc openjdk.tgz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		mkdir -p "$JAVA_HOME"; 	tar --extract 		--file openjdk.tgz 		--directory "$JAVA_HOME" 		--strip-components 1 		--no-same-owner 	; 	rm openjdk.tgz*; 			{ 		echo '#!/usr/bin/env bash'; 		echo 'set -Eeuo pipefail'; 		echo 'if ! [ -d "$JAVA_HOME" ]; then echo >&2 "error: missing JAVA_HOME environment variable"; exit 1; fi'; 		echo 'cacertsFile=; for f in "$JAVA_HOME/lib/security/cacerts" "$JAVA_HOME/jre/lib/security/cacerts"; do if [ -e "$f" ]; then cacertsFile="$f"; break; fi; done'; 		echo 'if [ -z "$cacertsFile" ] || ! [ -f "$cacertsFile" ]; then echo >&2 "error: failed to find cacerts file in $JAVA_HOME"; exit 1; fi'; 		echo 'trust extract --overwrite --format=java-cacerts --filter=ca-anchors --purpose=server-auth "$cacertsFile"'; 	} > /etc/ca-certificates/update.d/docker-openjdk; 	chmod +x /etc/ca-certificates/update.d/docker-openjdk; 	/etc/ca-certificates/update.d/docker-openjdk; 		find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf; 	ldconfig; 		javac -version; 	java -version
# Tue, 11 Jun 2019 16:13:48 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 11 Jun 2019 16:20:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 16:20:14 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 11 Jun 2019 16:20:15 GMT
ENV NUXEO_USER=nuxeo
# Tue, 11 Jun 2019 16:20:15 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 11 Jun 2019 16:20:15 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 11 Jun 2019 16:22:18 GMT
ARG NUXEO_VERSION=10.10
# Tue, 11 Jun 2019 16:22:18 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip
# Tue, 11 Jun 2019 16:22:18 GMT
ARG NUXEO_MD5=90ef2ac005020e880b6277510800c30c
# Tue, 11 Jun 2019 16:22:20 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 11 Jun 2019 16:23:04 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init     && chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Tue, 11 Jun 2019 16:23:05 GMT
COPY dir:d28c2b4bdf31f5817cba5496caa3161d743da596ec68186e0c444ede39dd58ac in /opt/nuxeo/server/templates/docker 
# Tue, 11 Jun 2019 16:23:05 GMT
COPY file:dbaa7cc62ad81fbafea7350f8e1ec2045fdc4a962bcfd145d777fefaf7205910 in /etc/nuxeo/nuxeo.conf.template 
# Tue, 11 Jun 2019 16:23:05 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 11 Jun 2019 16:23:07 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 11 Jun 2019 16:23:07 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/openjdk-8/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 16:23:08 GMT
WORKDIR /opt/nuxeo/server
# Tue, 11 Jun 2019 16:23:08 GMT
COPY file:97cc30e1ff0452e9f8e463882c4544e2dc446201ab67f037426aee9cbd1e212a in / 
# Tue, 11 Jun 2019 16:23:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Jun 2019 16:23:09 GMT
EXPOSE 8080
# Tue, 11 Jun 2019 16:23:09 GMT
CMD ["nuxeoctl" "console"]
# Tue, 11 Jun 2019 16:23:09 GMT
USER 1000
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372744b62d49eba993652ee4a1201801fe278b687d85489101e07e7b9a4900e0`  
		Last Modified: Tue, 11 Jun 2019 00:38:26 GMT  
		Size: 50.1 MB (50065949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb72767f9beb4c9a164221d641a9472027a69c6e8762cb6a1474cc26365874fc`  
		Last Modified: Tue, 11 Jun 2019 07:22:52 GMT  
		Size: 4.9 MB (4932129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fe571af508a610cb1935be3108457302dccf8a7d2290a655177d69bdd704065`  
		Last Modified: Tue, 11 Jun 2019 07:24:18 GMT  
		Size: 221.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6725074325eeb7aa9c6026f724d3f7a366fdb48420ab4d04f980e97ed9043b`  
		Last Modified: Tue, 11 Jun 2019 07:24:40 GMT  
		Size: 104.0 MB (103998216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240ab4743f288e2e5e789280294dd67ae775a45e35dd2c8a5015c8587293f69f`  
		Last Modified: Tue, 11 Jun 2019 16:27:17 GMT  
		Size: 314.4 MB (314444591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:478cdc38d92886ae244f8c510bad9e78f49019e94038ecc7dea403bef91f9a61`  
		Last Modified: Tue, 11 Jun 2019 16:28:08 GMT  
		Size: 4.4 KB (4413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfe19a2f6baaa7955639f0015c418407b02cd279b996587232cef7246dfffce7`  
		Last Modified: Tue, 11 Jun 2019 16:28:39 GMT  
		Size: 355.6 MB (355562036 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a86c6a59d3c6abe065e06144cdf732f9672b93feda72a1e00b59f7712e47f593`  
		Last Modified: Tue, 11 Jun 2019 16:28:07 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bb8a2e93f0bb17607340eab40b928a09956f0cabcfeb1eda8cd7653f2472083`  
		Last Modified: Tue, 11 Jun 2019 16:28:07 GMT  
		Size: 986.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d76781e3fd0521968c20932e938a0d5087ea83b71d996ff0a70b409ac6bc4e88`  
		Last Modified: Tue, 11 Jun 2019 16:28:07 GMT  
		Size: 1.8 KB (1813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f26b16783ba46f61b834000576f58277d9c142db9dc57bb0c6407e5ced297dd2`  
		Last Modified: Tue, 11 Jun 2019 16:28:07 GMT  
		Size: 1.0 KB (1020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
