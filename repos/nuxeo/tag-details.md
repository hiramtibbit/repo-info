<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `nuxeo`

-	[`nuxeo:10`](#nuxeo10)
-	[`nuxeo:10.1`](#nuxeo101)
-	[`nuxeo:10.2`](#nuxeo102)
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

## `nuxeo:10`

```console
$ docker pull nuxeo@sha256:454bc9e4f4693e143b8437cba9cbd79471622b08e5dca6a8c05160d94b4be299
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:10` - linux; amd64

```console
$ docker pull nuxeo@sha256:dc969fc30f81125f9845a8fbf8cfedeb2fbfbcc4278954a8e51b15fbc156e335
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 GB (1207587075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:226ebf7b963417c94b8983778c0fb978fb0c9ed0b93826d8b43960e04026fd05`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 03:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:16:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:16:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:16:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:16:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:16:58 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 14 Aug 2018 20:32:09 GMT
ENV JAVA_VERSION=8u181
# Tue, 14 Aug 2018 20:32:10 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 14 Aug 2018 20:32:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 14 Aug 2018 20:33:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 14 Aug 2018 20:33:22 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 14 Aug 2018 23:39:33 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 14 Aug 2018 23:44:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 23:44:51 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 14 Aug 2018 23:44:51 GMT
ENV NUXEO_USER=nuxeo
# Tue, 14 Aug 2018 23:44:52 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 14 Aug 2018 23:44:52 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 14 Aug 2018 23:49:41 GMT
ARG NUXEO_VERSION=10.2
# Tue, 14 Aug 2018 23:49:41 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip
# Tue, 14 Aug 2018 23:49:41 GMT
ARG NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01
# Tue, 14 Aug 2018 23:49:42 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01 NUXEO_VERSION=10.2
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 14 Aug 2018 23:50:23 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01 NUXEO_VERSION=10.2
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Tue, 14 Aug 2018 23:50:24 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Tue, 14 Aug 2018 23:50:24 GMT
COPY file:4bef2f1f6b4ee418c784459e2fef01d05a75976842dfa0d5708e86cff319a87c in /etc/nuxeo/nuxeo.conf.template 
# Tue, 14 Aug 2018 23:50:24 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 14 Aug 2018 23:50:33 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01 NUXEO_VERSION=10.2
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 14 Aug 2018 23:50:44 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 23:50:45 GMT
WORKDIR /opt/nuxeo/server
# Mon, 27 Aug 2018 20:52:31 GMT
COPY file:b68c33898a1effa6e7ec54fb18544cb92f685f85aba3f75cfa01d1939dcc4680 in / 
# Mon, 27 Aug 2018 20:52:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Aug 2018 20:52:31 GMT
EXPOSE 8080/tcp
# Mon, 27 Aug 2018 20:52:32 GMT
EXPOSE 8787/tcp
# Mon, 27 Aug 2018 20:52:32 GMT
CMD ["nuxeoctl" "console"]
# Mon, 27 Aug 2018 20:52:32 GMT
USER [1000]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4eee24d4dacb41c21411e0477a741655303cdc48b18a948632c31f0f3a70bb8`  
		Last Modified: Tue, 17 Jul 2018 03:54:59 GMT  
		Size: 50.1 MB (50064642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c58988e753d7a34080c68b53f7c27229d8f8fa80b9940c34d5cf77a9a2df10a0`  
		Last Modified: Tue, 17 Jul 2018 06:55:01 GMT  
		Size: 892.4 KB (892350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794a04897db9ebf95b1f6430cd4d4051bd227a5f0698b18404ccd4c59e43273d`  
		Last Modified: Tue, 17 Jul 2018 06:55:00 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fcfa476f730980d7a89f5ea34dd29c0c58e7cfe62652584e3adc38106e30ee`  
		Last Modified: Tue, 17 Jul 2018 06:54:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806029475e0cd4fad9d906385681d719017da9ae333e87ab7e14d8eb8f8eae79`  
		Last Modified: Tue, 14 Aug 2018 20:39:01 GMT  
		Size: 134.0 MB (133988934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67959b355155f692cb7147128e4b67da87d6c66ec26615f174e606dfd4145cbc`  
		Last Modified: Tue, 14 Aug 2018 20:38:22 GMT  
		Size: 246.7 KB (246692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd906e9285e54348c8ea1b6b14b1a45a206f6de52ed6b94f2af33c0bd7f8a3b`  
		Last Modified: Tue, 14 Aug 2018 23:55:14 GMT  
		Size: 243.0 MB (242973597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947ea1b1a8e10cc63d49bc3232fa874f649c7e45cbea330318f0542e1d3407b4`  
		Last Modified: Wed, 15 Aug 2018 00:00:50 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a922a9e90fb93a1123d923c386112f051deb2507c2011cf488618c823bc3d71`  
		Last Modified: Wed, 15 Aug 2018 00:01:25 GMT  
		Size: 359.5 MB (359511699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848b4ee0954ac099c34d1637cf98feed9d816233ab9b029d1f9d2baaa37875f9`  
		Last Modified: Wed, 15 Aug 2018 00:00:48 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:406aab784711a13db11465f86b0084ea54b936b7c388f270cbcc18bdc8477e25`  
		Last Modified: Wed, 15 Aug 2018 00:00:48 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c53661bc4abc80a6d4914c1cc67a5535f0eb874e286b0d21d630bd905bb499c7`  
		Last Modified: Wed, 15 Aug 2018 00:01:25 GMT  
		Size: 359.5 MB (359515407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be26305e66f84cf123fb1a71b0afc4e5667cc609c9d1febe45809c6c1f45dd27`  
		Last Modified: Mon, 27 Aug 2018 20:54:48 GMT  
		Size: 1.0 KB (1022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:10.1`

```console
$ docker pull nuxeo@sha256:0083b153d50cccf4d4fe81736e5835f0aebc627f2ba72a24029aee00d20e4315
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:10.1` - linux; amd64

```console
$ docker pull nuxeo@sha256:72fd981a09fd3bc2e78a7e2b076ed578e2ad05c147b9e7daa010c7b9209117f8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1395198354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:121c012f23b6e2010121aefddc7466aae5ac21a74c5ee616a799953c73dab6ad`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 03:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:16:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:16:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:16:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:16:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:16:58 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 14 Aug 2018 20:32:09 GMT
ENV JAVA_VERSION=8u181
# Tue, 14 Aug 2018 20:32:10 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 14 Aug 2018 20:32:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 14 Aug 2018 20:33:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 14 Aug 2018 20:33:22 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 14 Aug 2018 23:39:33 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 14 Aug 2018 23:44:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 23:44:51 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 14 Aug 2018 23:44:51 GMT
ENV NUXEO_USER=nuxeo
# Tue, 14 Aug 2018 23:44:52 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 14 Aug 2018 23:44:52 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 14 Aug 2018 23:48:01 GMT
ARG NUXEO_VERSION=10.1
# Tue, 14 Aug 2018 23:48:02 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip
# Tue, 14 Aug 2018 23:48:02 GMT
ARG NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162
# Tue, 14 Aug 2018 23:48:03 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162 NUXEO_VERSION=10.1
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 14 Aug 2018 23:48:55 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162 NUXEO_VERSION=10.1
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Tue, 14 Aug 2018 23:49:07 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Tue, 14 Aug 2018 23:49:07 GMT
COPY file:4bef2f1f6b4ee418c784459e2fef01d05a75976842dfa0d5708e86cff319a87c in /etc/nuxeo/nuxeo.conf.template 
# Tue, 14 Aug 2018 23:49:08 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 14 Aug 2018 23:49:18 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162 NUXEO_VERSION=10.1
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 14 Aug 2018 23:49:19 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 23:49:19 GMT
WORKDIR /opt/nuxeo/server
# Tue, 14 Aug 2018 23:49:19 GMT
COPY file:749f7de88227793c0214c52f0deb9d353a9a98ccf05c06ddca1eaafa3fae3e51 in / 
# Tue, 14 Aug 2018 23:49:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 Aug 2018 23:49:20 GMT
EXPOSE 8080/tcp
# Tue, 14 Aug 2018 23:49:20 GMT
EXPOSE 8787/tcp
# Tue, 14 Aug 2018 23:49:20 GMT
CMD ["nuxeoctl" "console"]
# Tue, 14 Aug 2018 23:49:21 GMT
USER [1000]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4eee24d4dacb41c21411e0477a741655303cdc48b18a948632c31f0f3a70bb8`  
		Last Modified: Tue, 17 Jul 2018 03:54:59 GMT  
		Size: 50.1 MB (50064642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c58988e753d7a34080c68b53f7c27229d8f8fa80b9940c34d5cf77a9a2df10a0`  
		Last Modified: Tue, 17 Jul 2018 06:55:01 GMT  
		Size: 892.4 KB (892350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794a04897db9ebf95b1f6430cd4d4051bd227a5f0698b18404ccd4c59e43273d`  
		Last Modified: Tue, 17 Jul 2018 06:55:00 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fcfa476f730980d7a89f5ea34dd29c0c58e7cfe62652584e3adc38106e30ee`  
		Last Modified: Tue, 17 Jul 2018 06:54:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806029475e0cd4fad9d906385681d719017da9ae333e87ab7e14d8eb8f8eae79`  
		Last Modified: Tue, 14 Aug 2018 20:39:01 GMT  
		Size: 134.0 MB (133988934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67959b355155f692cb7147128e4b67da87d6c66ec26615f174e606dfd4145cbc`  
		Last Modified: Tue, 14 Aug 2018 20:38:22 GMT  
		Size: 246.7 KB (246692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd906e9285e54348c8ea1b6b14b1a45a206f6de52ed6b94f2af33c0bd7f8a3b`  
		Last Modified: Tue, 14 Aug 2018 23:55:14 GMT  
		Size: 243.0 MB (242973597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76992103fbf7ead1ef6393ac7ddbee9b7bdb4db200b1444fd3a504be1da94041`  
		Last Modified: Tue, 14 Aug 2018 23:59:37 GMT  
		Size: 4.4 KB (4411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29938dd6ee74583d8ca3da064779617feecb04564235c2aa4f0809781adc5cd2`  
		Last Modified: Wed, 15 Aug 2018 00:00:19 GMT  
		Size: 453.3 MB (453316796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8991d036eec82bfff48426ea56f7982250d439fea703f52384115ee072cb16`  
		Last Modified: Tue, 14 Aug 2018 23:59:35 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f92aa97f8f96410f2c36e815502b36ae627751a9a7e39ece8ae4b3f3ca7664f`  
		Last Modified: Tue, 14 Aug 2018 23:59:35 GMT  
		Size: 1.0 KB (1015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb0ececcb7cc5b707776097db1a72c271939794223e58cf34b85f48cb3fe0702`  
		Last Modified: Wed, 15 Aug 2018 00:00:22 GMT  
		Size: 453.3 MB (453321557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:243dee4233c2256f0960a094ad6550f53efbe725bb5e1d7aba45e8da9ef0a644`  
		Last Modified: Tue, 14 Aug 2018 23:59:34 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:10.2`

```console
$ docker pull nuxeo@sha256:454bc9e4f4693e143b8437cba9cbd79471622b08e5dca6a8c05160d94b4be299
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:10.2` - linux; amd64

```console
$ docker pull nuxeo@sha256:dc969fc30f81125f9845a8fbf8cfedeb2fbfbcc4278954a8e51b15fbc156e335
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 GB (1207587075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:226ebf7b963417c94b8983778c0fb978fb0c9ed0b93826d8b43960e04026fd05`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 03:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:16:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:16:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:16:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:16:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:16:58 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 14 Aug 2018 20:32:09 GMT
ENV JAVA_VERSION=8u181
# Tue, 14 Aug 2018 20:32:10 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 14 Aug 2018 20:32:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 14 Aug 2018 20:33:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 14 Aug 2018 20:33:22 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 14 Aug 2018 23:39:33 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 14 Aug 2018 23:44:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 23:44:51 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 14 Aug 2018 23:44:51 GMT
ENV NUXEO_USER=nuxeo
# Tue, 14 Aug 2018 23:44:52 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 14 Aug 2018 23:44:52 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 14 Aug 2018 23:49:41 GMT
ARG NUXEO_VERSION=10.2
# Tue, 14 Aug 2018 23:49:41 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip
# Tue, 14 Aug 2018 23:49:41 GMT
ARG NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01
# Tue, 14 Aug 2018 23:49:42 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01 NUXEO_VERSION=10.2
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 14 Aug 2018 23:50:23 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01 NUXEO_VERSION=10.2
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Tue, 14 Aug 2018 23:50:24 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Tue, 14 Aug 2018 23:50:24 GMT
COPY file:4bef2f1f6b4ee418c784459e2fef01d05a75976842dfa0d5708e86cff319a87c in /etc/nuxeo/nuxeo.conf.template 
# Tue, 14 Aug 2018 23:50:24 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 14 Aug 2018 23:50:33 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01 NUXEO_VERSION=10.2
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 14 Aug 2018 23:50:44 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 23:50:45 GMT
WORKDIR /opt/nuxeo/server
# Mon, 27 Aug 2018 20:52:31 GMT
COPY file:b68c33898a1effa6e7ec54fb18544cb92f685f85aba3f75cfa01d1939dcc4680 in / 
# Mon, 27 Aug 2018 20:52:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Aug 2018 20:52:31 GMT
EXPOSE 8080/tcp
# Mon, 27 Aug 2018 20:52:32 GMT
EXPOSE 8787/tcp
# Mon, 27 Aug 2018 20:52:32 GMT
CMD ["nuxeoctl" "console"]
# Mon, 27 Aug 2018 20:52:32 GMT
USER [1000]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4eee24d4dacb41c21411e0477a741655303cdc48b18a948632c31f0f3a70bb8`  
		Last Modified: Tue, 17 Jul 2018 03:54:59 GMT  
		Size: 50.1 MB (50064642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c58988e753d7a34080c68b53f7c27229d8f8fa80b9940c34d5cf77a9a2df10a0`  
		Last Modified: Tue, 17 Jul 2018 06:55:01 GMT  
		Size: 892.4 KB (892350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794a04897db9ebf95b1f6430cd4d4051bd227a5f0698b18404ccd4c59e43273d`  
		Last Modified: Tue, 17 Jul 2018 06:55:00 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fcfa476f730980d7a89f5ea34dd29c0c58e7cfe62652584e3adc38106e30ee`  
		Last Modified: Tue, 17 Jul 2018 06:54:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806029475e0cd4fad9d906385681d719017da9ae333e87ab7e14d8eb8f8eae79`  
		Last Modified: Tue, 14 Aug 2018 20:39:01 GMT  
		Size: 134.0 MB (133988934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67959b355155f692cb7147128e4b67da87d6c66ec26615f174e606dfd4145cbc`  
		Last Modified: Tue, 14 Aug 2018 20:38:22 GMT  
		Size: 246.7 KB (246692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd906e9285e54348c8ea1b6b14b1a45a206f6de52ed6b94f2af33c0bd7f8a3b`  
		Last Modified: Tue, 14 Aug 2018 23:55:14 GMT  
		Size: 243.0 MB (242973597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947ea1b1a8e10cc63d49bc3232fa874f649c7e45cbea330318f0542e1d3407b4`  
		Last Modified: Wed, 15 Aug 2018 00:00:50 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a922a9e90fb93a1123d923c386112f051deb2507c2011cf488618c823bc3d71`  
		Last Modified: Wed, 15 Aug 2018 00:01:25 GMT  
		Size: 359.5 MB (359511699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848b4ee0954ac099c34d1637cf98feed9d816233ab9b029d1f9d2baaa37875f9`  
		Last Modified: Wed, 15 Aug 2018 00:00:48 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:406aab784711a13db11465f86b0084ea54b936b7c388f270cbcc18bdc8477e25`  
		Last Modified: Wed, 15 Aug 2018 00:00:48 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c53661bc4abc80a6d4914c1cc67a5535f0eb874e286b0d21d630bd905bb499c7`  
		Last Modified: Wed, 15 Aug 2018 00:01:25 GMT  
		Size: 359.5 MB (359515407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be26305e66f84cf123fb1a71b0afc4e5667cc609c9d1febe45809c6c1f45dd27`  
		Last Modified: Mon, 27 Aug 2018 20:54:48 GMT  
		Size: 1.0 KB (1022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:7`

```console
$ docker pull nuxeo@sha256:c64c19229e86097f4f086cb3216347e60163912c81388da142aef6df7f3544e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:7` - linux; amd64

```console
$ docker pull nuxeo@sha256:6305d6b49180899829f36d4091e24bf661473c9d08cf6ff154fd21b5ca5d303b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1045572173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12b653bf57b49b1b15346ca58e1ad8c4c63e70aab359d78b0902a6f45df7d756`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 03:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:16:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:16:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:16:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:16:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:16:58 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 14 Aug 2018 20:32:09 GMT
ENV JAVA_VERSION=8u181
# Tue, 14 Aug 2018 20:32:10 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 14 Aug 2018 20:32:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 14 Aug 2018 20:33:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 14 Aug 2018 20:33:22 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 14 Aug 2018 23:39:33 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 14 Aug 2018 23:41:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 23:41:48 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 14 Aug 2018 23:41:49 GMT
ENV NUXEO_USER=nuxeo
# Tue, 14 Aug 2018 23:41:49 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 14 Aug 2018 23:41:49 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 14 Aug 2018 23:41:49 GMT
ARG NUXEO_VERSION=7.10
# Tue, 14 Aug 2018 23:41:50 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip
# Tue, 14 Aug 2018 23:41:50 GMT
ARG NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Tue, 14 Aug 2018 23:41:50 GMT
ENV LAUNCHER_DEBUG=-Djvmcheck=nofail
# Tue, 14 Aug 2018 23:41:51 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 14 Aug 2018 23:42:29 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Tue, 14 Aug 2018 23:42:35 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Tue, 14 Aug 2018 23:42:36 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d     && chmod g=u /etc/passwd
# Tue, 14 Aug 2018 23:42:37 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 23:42:37 GMT
WORKDIR /opt/nuxeo/server
# Tue, 14 Aug 2018 23:42:38 GMT
COPY file:d2e9011e964c7e8fc295cc55d2bc9d33c6539862e1297e7fe97dbee68beb9269 in / 
# Tue, 14 Aug 2018 23:42:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 Aug 2018 23:42:39 GMT
EXPOSE 8080/tcp
# Tue, 14 Aug 2018 23:42:39 GMT
EXPOSE 8787/tcp
# Tue, 14 Aug 2018 23:42:39 GMT
CMD ["nuxeoctl" "console"]
# Tue, 14 Aug 2018 23:42:40 GMT
USER [1000]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4eee24d4dacb41c21411e0477a741655303cdc48b18a948632c31f0f3a70bb8`  
		Last Modified: Tue, 17 Jul 2018 03:54:59 GMT  
		Size: 50.1 MB (50064642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c58988e753d7a34080c68b53f7c27229d8f8fa80b9940c34d5cf77a9a2df10a0`  
		Last Modified: Tue, 17 Jul 2018 06:55:01 GMT  
		Size: 892.4 KB (892350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794a04897db9ebf95b1f6430cd4d4051bd227a5f0698b18404ccd4c59e43273d`  
		Last Modified: Tue, 17 Jul 2018 06:55:00 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fcfa476f730980d7a89f5ea34dd29c0c58e7cfe62652584e3adc38106e30ee`  
		Last Modified: Tue, 17 Jul 2018 06:54:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806029475e0cd4fad9d906385681d719017da9ae333e87ab7e14d8eb8f8eae79`  
		Last Modified: Tue, 14 Aug 2018 20:39:01 GMT  
		Size: 134.0 MB (133988934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67959b355155f692cb7147128e4b67da87d6c66ec26615f174e606dfd4145cbc`  
		Last Modified: Tue, 14 Aug 2018 20:38:22 GMT  
		Size: 246.7 KB (246692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1e4cad77f2e5fa911197c91bff1d0b4d26a1170342309b381bb1975dcbafbc`  
		Last Modified: Tue, 14 Aug 2018 23:52:36 GMT  
		Size: 239.1 MB (239068267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4e4e5e47deef6a95159043df34f5d2b9f223e352a93f962ecd7d6ff570c4881`  
		Last Modified: Tue, 14 Aug 2018 23:51:18 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8680295b4bb2f7a2bf4a907cc08bee6136463328f19d7e26f6156f74c0e193ec`  
		Last Modified: Tue, 14 Aug 2018 23:51:49 GMT  
		Size: 280.5 MB (280457924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:524c951ecb844ba522408deb1b4cf67fdcc8c17914b75b3304d4f7d8fc03ff6d`  
		Last Modified: Tue, 14 Aug 2018 23:51:46 GMT  
		Size: 280.5 MB (280459878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4dfa1cfe9f76e5a67092e12de7dbb2a25e516a8dbb13967372c3e26f1e9cd3`  
		Last Modified: Tue, 14 Aug 2018 23:51:18 GMT  
		Size: 817.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e49ebaf65b6ac7530894d3efae1faab8ee733c4c243852562b7cda7a0780065`  
		Last Modified: Tue, 14 Aug 2018 23:51:18 GMT  
		Size: 1.6 KB (1559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:7.10`

```console
$ docker pull nuxeo@sha256:c64c19229e86097f4f086cb3216347e60163912c81388da142aef6df7f3544e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:7.10` - linux; amd64

```console
$ docker pull nuxeo@sha256:6305d6b49180899829f36d4091e24bf661473c9d08cf6ff154fd21b5ca5d303b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1045572173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12b653bf57b49b1b15346ca58e1ad8c4c63e70aab359d78b0902a6f45df7d756`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 03:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:16:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:16:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:16:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:16:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:16:58 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 14 Aug 2018 20:32:09 GMT
ENV JAVA_VERSION=8u181
# Tue, 14 Aug 2018 20:32:10 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 14 Aug 2018 20:32:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 14 Aug 2018 20:33:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 14 Aug 2018 20:33:22 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 14 Aug 2018 23:39:33 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 14 Aug 2018 23:41:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 23:41:48 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 14 Aug 2018 23:41:49 GMT
ENV NUXEO_USER=nuxeo
# Tue, 14 Aug 2018 23:41:49 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 14 Aug 2018 23:41:49 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 14 Aug 2018 23:41:49 GMT
ARG NUXEO_VERSION=7.10
# Tue, 14 Aug 2018 23:41:50 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip
# Tue, 14 Aug 2018 23:41:50 GMT
ARG NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Tue, 14 Aug 2018 23:41:50 GMT
ENV LAUNCHER_DEBUG=-Djvmcheck=nofail
# Tue, 14 Aug 2018 23:41:51 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 14 Aug 2018 23:42:29 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Tue, 14 Aug 2018 23:42:35 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Tue, 14 Aug 2018 23:42:36 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d     && chmod g=u /etc/passwd
# Tue, 14 Aug 2018 23:42:37 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 23:42:37 GMT
WORKDIR /opt/nuxeo/server
# Tue, 14 Aug 2018 23:42:38 GMT
COPY file:d2e9011e964c7e8fc295cc55d2bc9d33c6539862e1297e7fe97dbee68beb9269 in / 
# Tue, 14 Aug 2018 23:42:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 Aug 2018 23:42:39 GMT
EXPOSE 8080/tcp
# Tue, 14 Aug 2018 23:42:39 GMT
EXPOSE 8787/tcp
# Tue, 14 Aug 2018 23:42:39 GMT
CMD ["nuxeoctl" "console"]
# Tue, 14 Aug 2018 23:42:40 GMT
USER [1000]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4eee24d4dacb41c21411e0477a741655303cdc48b18a948632c31f0f3a70bb8`  
		Last Modified: Tue, 17 Jul 2018 03:54:59 GMT  
		Size: 50.1 MB (50064642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c58988e753d7a34080c68b53f7c27229d8f8fa80b9940c34d5cf77a9a2df10a0`  
		Last Modified: Tue, 17 Jul 2018 06:55:01 GMT  
		Size: 892.4 KB (892350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794a04897db9ebf95b1f6430cd4d4051bd227a5f0698b18404ccd4c59e43273d`  
		Last Modified: Tue, 17 Jul 2018 06:55:00 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fcfa476f730980d7a89f5ea34dd29c0c58e7cfe62652584e3adc38106e30ee`  
		Last Modified: Tue, 17 Jul 2018 06:54:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806029475e0cd4fad9d906385681d719017da9ae333e87ab7e14d8eb8f8eae79`  
		Last Modified: Tue, 14 Aug 2018 20:39:01 GMT  
		Size: 134.0 MB (133988934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67959b355155f692cb7147128e4b67da87d6c66ec26615f174e606dfd4145cbc`  
		Last Modified: Tue, 14 Aug 2018 20:38:22 GMT  
		Size: 246.7 KB (246692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1e4cad77f2e5fa911197c91bff1d0b4d26a1170342309b381bb1975dcbafbc`  
		Last Modified: Tue, 14 Aug 2018 23:52:36 GMT  
		Size: 239.1 MB (239068267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4e4e5e47deef6a95159043df34f5d2b9f223e352a93f962ecd7d6ff570c4881`  
		Last Modified: Tue, 14 Aug 2018 23:51:18 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8680295b4bb2f7a2bf4a907cc08bee6136463328f19d7e26f6156f74c0e193ec`  
		Last Modified: Tue, 14 Aug 2018 23:51:49 GMT  
		Size: 280.5 MB (280457924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:524c951ecb844ba522408deb1b4cf67fdcc8c17914b75b3304d4f7d8fc03ff6d`  
		Last Modified: Tue, 14 Aug 2018 23:51:46 GMT  
		Size: 280.5 MB (280459878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4dfa1cfe9f76e5a67092e12de7dbb2a25e516a8dbb13967372c3e26f1e9cd3`  
		Last Modified: Tue, 14 Aug 2018 23:51:18 GMT  
		Size: 817.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e49ebaf65b6ac7530894d3efae1faab8ee733c4c243852562b7cda7a0780065`  
		Last Modified: Tue, 14 Aug 2018 23:51:18 GMT  
		Size: 1.6 KB (1559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:8`

```console
$ docker pull nuxeo@sha256:8846b25dd56d345147b3ff454dd5879ae80fa08719d4e302f9cedc28db390f33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:8` - linux; amd64

```console
$ docker pull nuxeo@sha256:b1264c57471a5373cc7722ac9b6a2f8ae11215aa79236ac0817ef347a5cb6223
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1027806207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1aeb350b62dbb99714dbe2f822e1b61206d348da7901cd6c64ce3016ea0da72`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 03:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:16:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:16:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:16:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:16:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:16:58 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 14 Aug 2018 20:32:09 GMT
ENV JAVA_VERSION=8u181
# Tue, 14 Aug 2018 20:32:10 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 14 Aug 2018 20:32:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 14 Aug 2018 20:33:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 14 Aug 2018 20:33:22 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 14 Aug 2018 23:39:33 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 14 Aug 2018 23:44:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 23:44:51 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 14 Aug 2018 23:44:51 GMT
ENV NUXEO_USER=nuxeo
# Tue, 14 Aug 2018 23:44:52 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 14 Aug 2018 23:44:52 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 14 Aug 2018 23:44:52 GMT
ARG NUXEO_VERSION=8.10
# Tue, 14 Aug 2018 23:44:52 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip
# Tue, 14 Aug 2018 23:44:53 GMT
ARG NUXEO_MD5=29e67a19bba54099093b51d892926be1
# Tue, 14 Aug 2018 23:44:54 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 14 Aug 2018 23:45:29 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Tue, 14 Aug 2018 23:45:36 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Tue, 14 Aug 2018 23:45:37 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d     && chmod g=u /etc/passwd
# Tue, 14 Aug 2018 23:45:37 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 23:45:37 GMT
WORKDIR /opt/nuxeo/server
# Tue, 14 Aug 2018 23:45:38 GMT
COPY file:d2e9011e964c7e8fc295cc55d2bc9d33c6539862e1297e7fe97dbee68beb9269 in / 
# Tue, 14 Aug 2018 23:45:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 Aug 2018 23:45:38 GMT
EXPOSE 8080/tcp
# Tue, 14 Aug 2018 23:45:39 GMT
EXPOSE 8787/tcp
# Tue, 14 Aug 2018 23:45:39 GMT
CMD ["nuxeoctl" "console"]
# Tue, 14 Aug 2018 23:45:39 GMT
USER [1000]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4eee24d4dacb41c21411e0477a741655303cdc48b18a948632c31f0f3a70bb8`  
		Last Modified: Tue, 17 Jul 2018 03:54:59 GMT  
		Size: 50.1 MB (50064642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c58988e753d7a34080c68b53f7c27229d8f8fa80b9940c34d5cf77a9a2df10a0`  
		Last Modified: Tue, 17 Jul 2018 06:55:01 GMT  
		Size: 892.4 KB (892350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794a04897db9ebf95b1f6430cd4d4051bd227a5f0698b18404ccd4c59e43273d`  
		Last Modified: Tue, 17 Jul 2018 06:55:00 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fcfa476f730980d7a89f5ea34dd29c0c58e7cfe62652584e3adc38106e30ee`  
		Last Modified: Tue, 17 Jul 2018 06:54:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806029475e0cd4fad9d906385681d719017da9ae333e87ab7e14d8eb8f8eae79`  
		Last Modified: Tue, 14 Aug 2018 20:39:01 GMT  
		Size: 134.0 MB (133988934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67959b355155f692cb7147128e4b67da87d6c66ec26615f174e606dfd4145cbc`  
		Last Modified: Tue, 14 Aug 2018 20:38:22 GMT  
		Size: 246.7 KB (246692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd906e9285e54348c8ea1b6b14b1a45a206f6de52ed6b94f2af33c0bd7f8a3b`  
		Last Modified: Tue, 14 Aug 2018 23:55:14 GMT  
		Size: 243.0 MB (242973597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9880dcde97d3d5757da83d4b1bd15f0c997fcf773ab99e44a42b624bf7f41e9`  
		Last Modified: Tue, 14 Aug 2018 23:53:56 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30f220f9b41d85f1cfa7eb61994015c9233a539de47138462021ca6ca2dca4c1`  
		Last Modified: Tue, 14 Aug 2018 23:54:23 GMT  
		Size: 269.6 MB (269622096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8e38369d96d0264382128769d585e6f10beb0f0ad5847bc5ca0247ab2d340b`  
		Last Modified: Tue, 14 Aug 2018 23:54:27 GMT  
		Size: 269.6 MB (269624409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db67ea3b520820d2a03182b3c6666fcd114b5a52bf6ef8eddf128808753fc70`  
		Last Modified: Tue, 14 Aug 2018 23:53:58 GMT  
		Size: 817.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d706a628acbe52e4782fc6cc6a9d6c7c677834dc3f829480d4faa31356c09752`  
		Last Modified: Tue, 14 Aug 2018 23:53:56 GMT  
		Size: 1.6 KB (1560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:8.10`

```console
$ docker pull nuxeo@sha256:8846b25dd56d345147b3ff454dd5879ae80fa08719d4e302f9cedc28db390f33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:8.10` - linux; amd64

```console
$ docker pull nuxeo@sha256:b1264c57471a5373cc7722ac9b6a2f8ae11215aa79236ac0817ef347a5cb6223
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1027806207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1aeb350b62dbb99714dbe2f822e1b61206d348da7901cd6c64ce3016ea0da72`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 03:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:16:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:16:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:16:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:16:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:16:58 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 14 Aug 2018 20:32:09 GMT
ENV JAVA_VERSION=8u181
# Tue, 14 Aug 2018 20:32:10 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 14 Aug 2018 20:32:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 14 Aug 2018 20:33:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 14 Aug 2018 20:33:22 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 14 Aug 2018 23:39:33 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 14 Aug 2018 23:44:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 23:44:51 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 14 Aug 2018 23:44:51 GMT
ENV NUXEO_USER=nuxeo
# Tue, 14 Aug 2018 23:44:52 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 14 Aug 2018 23:44:52 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 14 Aug 2018 23:44:52 GMT
ARG NUXEO_VERSION=8.10
# Tue, 14 Aug 2018 23:44:52 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip
# Tue, 14 Aug 2018 23:44:53 GMT
ARG NUXEO_MD5=29e67a19bba54099093b51d892926be1
# Tue, 14 Aug 2018 23:44:54 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 14 Aug 2018 23:45:29 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Tue, 14 Aug 2018 23:45:36 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Tue, 14 Aug 2018 23:45:37 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d     && chmod g=u /etc/passwd
# Tue, 14 Aug 2018 23:45:37 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 23:45:37 GMT
WORKDIR /opt/nuxeo/server
# Tue, 14 Aug 2018 23:45:38 GMT
COPY file:d2e9011e964c7e8fc295cc55d2bc9d33c6539862e1297e7fe97dbee68beb9269 in / 
# Tue, 14 Aug 2018 23:45:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 Aug 2018 23:45:38 GMT
EXPOSE 8080/tcp
# Tue, 14 Aug 2018 23:45:39 GMT
EXPOSE 8787/tcp
# Tue, 14 Aug 2018 23:45:39 GMT
CMD ["nuxeoctl" "console"]
# Tue, 14 Aug 2018 23:45:39 GMT
USER [1000]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4eee24d4dacb41c21411e0477a741655303cdc48b18a948632c31f0f3a70bb8`  
		Last Modified: Tue, 17 Jul 2018 03:54:59 GMT  
		Size: 50.1 MB (50064642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c58988e753d7a34080c68b53f7c27229d8f8fa80b9940c34d5cf77a9a2df10a0`  
		Last Modified: Tue, 17 Jul 2018 06:55:01 GMT  
		Size: 892.4 KB (892350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794a04897db9ebf95b1f6430cd4d4051bd227a5f0698b18404ccd4c59e43273d`  
		Last Modified: Tue, 17 Jul 2018 06:55:00 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fcfa476f730980d7a89f5ea34dd29c0c58e7cfe62652584e3adc38106e30ee`  
		Last Modified: Tue, 17 Jul 2018 06:54:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806029475e0cd4fad9d906385681d719017da9ae333e87ab7e14d8eb8f8eae79`  
		Last Modified: Tue, 14 Aug 2018 20:39:01 GMT  
		Size: 134.0 MB (133988934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67959b355155f692cb7147128e4b67da87d6c66ec26615f174e606dfd4145cbc`  
		Last Modified: Tue, 14 Aug 2018 20:38:22 GMT  
		Size: 246.7 KB (246692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd906e9285e54348c8ea1b6b14b1a45a206f6de52ed6b94f2af33c0bd7f8a3b`  
		Last Modified: Tue, 14 Aug 2018 23:55:14 GMT  
		Size: 243.0 MB (242973597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9880dcde97d3d5757da83d4b1bd15f0c997fcf773ab99e44a42b624bf7f41e9`  
		Last Modified: Tue, 14 Aug 2018 23:53:56 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30f220f9b41d85f1cfa7eb61994015c9233a539de47138462021ca6ca2dca4c1`  
		Last Modified: Tue, 14 Aug 2018 23:54:23 GMT  
		Size: 269.6 MB (269622096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8e38369d96d0264382128769d585e6f10beb0f0ad5847bc5ca0247ab2d340b`  
		Last Modified: Tue, 14 Aug 2018 23:54:27 GMT  
		Size: 269.6 MB (269624409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db67ea3b520820d2a03182b3c6666fcd114b5a52bf6ef8eddf128808753fc70`  
		Last Modified: Tue, 14 Aug 2018 23:53:58 GMT  
		Size: 817.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d706a628acbe52e4782fc6cc6a9d6c7c677834dc3f829480d4faa31356c09752`  
		Last Modified: Tue, 14 Aug 2018 23:53:56 GMT  
		Size: 1.6 KB (1560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:9`

```console
$ docker pull nuxeo@sha256:c22a536417a5e928994ebf07e312661a944eb28cb02610544df42645bdbfc0d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:9` - linux; amd64

```console
$ docker pull nuxeo@sha256:62ff90ef41a6931302b052fc9cb3826beb6ddc6734fac09312e87a49d87a7f91
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1258879968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bd8d39d61281b249b47ccc284c6a066208bc94ac193f74d2af0739877ca72f1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 03:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:16:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:16:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:16:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:16:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:16:58 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 14 Aug 2018 20:32:09 GMT
ENV JAVA_VERSION=8u181
# Tue, 14 Aug 2018 20:32:10 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 14 Aug 2018 20:32:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 14 Aug 2018 20:33:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 14 Aug 2018 20:33:22 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 14 Aug 2018 23:39:33 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 14 Aug 2018 23:44:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 23:44:51 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 14 Aug 2018 23:44:51 GMT
ENV NUXEO_USER=nuxeo
# Tue, 14 Aug 2018 23:44:52 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 14 Aug 2018 23:44:52 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 14 Aug 2018 23:46:20 GMT
ARG NUXEO_VERSION=9.10
# Tue, 14 Aug 2018 23:46:21 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip
# Tue, 14 Aug 2018 23:46:21 GMT
ARG NUXEO_MD5=327d23bbd5558565694027b11c0dd82a
# Tue, 14 Aug 2018 23:46:22 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 14 Aug 2018 23:47:05 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Tue, 14 Aug 2018 23:47:05 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Tue, 14 Aug 2018 23:47:06 GMT
COPY file:4bef2f1f6b4ee418c784459e2fef01d05a75976842dfa0d5708e86cff319a87c in /etc/nuxeo/nuxeo.conf.template 
# Tue, 14 Aug 2018 23:47:06 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 14 Aug 2018 23:47:16 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 14 Aug 2018 23:47:17 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 23:47:17 GMT
WORKDIR /opt/nuxeo/server
# Mon, 27 Aug 2018 20:52:08 GMT
COPY file:b68c33898a1effa6e7ec54fb18544cb92f685f85aba3f75cfa01d1939dcc4680 in / 
# Mon, 27 Aug 2018 20:52:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Aug 2018 20:52:09 GMT
EXPOSE 8080/tcp
# Mon, 27 Aug 2018 20:52:09 GMT
EXPOSE 8787/tcp
# Mon, 27 Aug 2018 20:52:09 GMT
CMD ["nuxeoctl" "console"]
# Mon, 27 Aug 2018 20:52:10 GMT
USER [1000]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4eee24d4dacb41c21411e0477a741655303cdc48b18a948632c31f0f3a70bb8`  
		Last Modified: Tue, 17 Jul 2018 03:54:59 GMT  
		Size: 50.1 MB (50064642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c58988e753d7a34080c68b53f7c27229d8f8fa80b9940c34d5cf77a9a2df10a0`  
		Last Modified: Tue, 17 Jul 2018 06:55:01 GMT  
		Size: 892.4 KB (892350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794a04897db9ebf95b1f6430cd4d4051bd227a5f0698b18404ccd4c59e43273d`  
		Last Modified: Tue, 17 Jul 2018 06:55:00 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fcfa476f730980d7a89f5ea34dd29c0c58e7cfe62652584e3adc38106e30ee`  
		Last Modified: Tue, 17 Jul 2018 06:54:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806029475e0cd4fad9d906385681d719017da9ae333e87ab7e14d8eb8f8eae79`  
		Last Modified: Tue, 14 Aug 2018 20:39:01 GMT  
		Size: 134.0 MB (133988934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67959b355155f692cb7147128e4b67da87d6c66ec26615f174e606dfd4145cbc`  
		Last Modified: Tue, 14 Aug 2018 20:38:22 GMT  
		Size: 246.7 KB (246692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd906e9285e54348c8ea1b6b14b1a45a206f6de52ed6b94f2af33c0bd7f8a3b`  
		Last Modified: Tue, 14 Aug 2018 23:55:14 GMT  
		Size: 243.0 MB (242973597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ab5a3a36db9bc9b96e3077a8e46e888b6081cec4abbacda15549cfe2a333f0`  
		Last Modified: Tue, 14 Aug 2018 23:56:48 GMT  
		Size: 4.4 KB (4413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f53b8261aca824cf7d4dd9e0153e0b33d9c2753083a290e4cea50db6d19ed5d`  
		Last Modified: Tue, 14 Aug 2018 23:57:23 GMT  
		Size: 385.2 MB (385158405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c412242dae6daa4e39a30991983eb8652cee34e64af440abcbac2cbc3e96d93b`  
		Last Modified: Tue, 14 Aug 2018 23:56:46 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7639a335c097512935f795773137615755bbfa2cb7efa6fe8a52679791feb9e`  
		Last Modified: Tue, 14 Aug 2018 23:56:47 GMT  
		Size: 1.0 KB (1015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f184b09aee2d60a232e6429f7a717c69d68308e5af1bc3b34ebdf1b6d0355e`  
		Last Modified: Tue, 14 Aug 2018 23:57:23 GMT  
		Size: 385.2 MB (385161597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2324de53832167d8fc61fc0212d9c74fcaffcf3d8af54f424fbd488afe9fd9aa`  
		Last Modified: Mon, 27 Aug 2018 20:53:06 GMT  
		Size: 1.0 KB (1021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:9.10`

```console
$ docker pull nuxeo@sha256:c22a536417a5e928994ebf07e312661a944eb28cb02610544df42645bdbfc0d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:9.10` - linux; amd64

```console
$ docker pull nuxeo@sha256:62ff90ef41a6931302b052fc9cb3826beb6ddc6734fac09312e87a49d87a7f91
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1258879968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bd8d39d61281b249b47ccc284c6a066208bc94ac193f74d2af0739877ca72f1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 03:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:16:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:16:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:16:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:16:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:16:58 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 14 Aug 2018 20:32:09 GMT
ENV JAVA_VERSION=8u181
# Tue, 14 Aug 2018 20:32:10 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 14 Aug 2018 20:32:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 14 Aug 2018 20:33:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 14 Aug 2018 20:33:22 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 14 Aug 2018 23:39:33 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 14 Aug 2018 23:44:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 23:44:51 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 14 Aug 2018 23:44:51 GMT
ENV NUXEO_USER=nuxeo
# Tue, 14 Aug 2018 23:44:52 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 14 Aug 2018 23:44:52 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 14 Aug 2018 23:46:20 GMT
ARG NUXEO_VERSION=9.10
# Tue, 14 Aug 2018 23:46:21 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip
# Tue, 14 Aug 2018 23:46:21 GMT
ARG NUXEO_MD5=327d23bbd5558565694027b11c0dd82a
# Tue, 14 Aug 2018 23:46:22 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 14 Aug 2018 23:47:05 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Tue, 14 Aug 2018 23:47:05 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Tue, 14 Aug 2018 23:47:06 GMT
COPY file:4bef2f1f6b4ee418c784459e2fef01d05a75976842dfa0d5708e86cff319a87c in /etc/nuxeo/nuxeo.conf.template 
# Tue, 14 Aug 2018 23:47:06 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 14 Aug 2018 23:47:16 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 14 Aug 2018 23:47:17 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 23:47:17 GMT
WORKDIR /opt/nuxeo/server
# Mon, 27 Aug 2018 20:52:08 GMT
COPY file:b68c33898a1effa6e7ec54fb18544cb92f685f85aba3f75cfa01d1939dcc4680 in / 
# Mon, 27 Aug 2018 20:52:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Aug 2018 20:52:09 GMT
EXPOSE 8080/tcp
# Mon, 27 Aug 2018 20:52:09 GMT
EXPOSE 8787/tcp
# Mon, 27 Aug 2018 20:52:09 GMT
CMD ["nuxeoctl" "console"]
# Mon, 27 Aug 2018 20:52:10 GMT
USER [1000]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4eee24d4dacb41c21411e0477a741655303cdc48b18a948632c31f0f3a70bb8`  
		Last Modified: Tue, 17 Jul 2018 03:54:59 GMT  
		Size: 50.1 MB (50064642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c58988e753d7a34080c68b53f7c27229d8f8fa80b9940c34d5cf77a9a2df10a0`  
		Last Modified: Tue, 17 Jul 2018 06:55:01 GMT  
		Size: 892.4 KB (892350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794a04897db9ebf95b1f6430cd4d4051bd227a5f0698b18404ccd4c59e43273d`  
		Last Modified: Tue, 17 Jul 2018 06:55:00 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fcfa476f730980d7a89f5ea34dd29c0c58e7cfe62652584e3adc38106e30ee`  
		Last Modified: Tue, 17 Jul 2018 06:54:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806029475e0cd4fad9d906385681d719017da9ae333e87ab7e14d8eb8f8eae79`  
		Last Modified: Tue, 14 Aug 2018 20:39:01 GMT  
		Size: 134.0 MB (133988934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67959b355155f692cb7147128e4b67da87d6c66ec26615f174e606dfd4145cbc`  
		Last Modified: Tue, 14 Aug 2018 20:38:22 GMT  
		Size: 246.7 KB (246692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd906e9285e54348c8ea1b6b14b1a45a206f6de52ed6b94f2af33c0bd7f8a3b`  
		Last Modified: Tue, 14 Aug 2018 23:55:14 GMT  
		Size: 243.0 MB (242973597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ab5a3a36db9bc9b96e3077a8e46e888b6081cec4abbacda15549cfe2a333f0`  
		Last Modified: Tue, 14 Aug 2018 23:56:48 GMT  
		Size: 4.4 KB (4413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f53b8261aca824cf7d4dd9e0153e0b33d9c2753083a290e4cea50db6d19ed5d`  
		Last Modified: Tue, 14 Aug 2018 23:57:23 GMT  
		Size: 385.2 MB (385158405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c412242dae6daa4e39a30991983eb8652cee34e64af440abcbac2cbc3e96d93b`  
		Last Modified: Tue, 14 Aug 2018 23:56:46 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7639a335c097512935f795773137615755bbfa2cb7efa6fe8a52679791feb9e`  
		Last Modified: Tue, 14 Aug 2018 23:56:47 GMT  
		Size: 1.0 KB (1015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f184b09aee2d60a232e6429f7a717c69d68308e5af1bc3b34ebdf1b6d0355e`  
		Last Modified: Tue, 14 Aug 2018 23:57:23 GMT  
		Size: 385.2 MB (385161597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2324de53832167d8fc61fc0212d9c74fcaffcf3d8af54f424fbd488afe9fd9aa`  
		Last Modified: Mon, 27 Aug 2018 20:53:06 GMT  
		Size: 1.0 KB (1021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:FT`

```console
$ docker pull nuxeo@sha256:454bc9e4f4693e143b8437cba9cbd79471622b08e5dca6a8c05160d94b4be299
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:FT` - linux; amd64

```console
$ docker pull nuxeo@sha256:dc969fc30f81125f9845a8fbf8cfedeb2fbfbcc4278954a8e51b15fbc156e335
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 GB (1207587075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:226ebf7b963417c94b8983778c0fb978fb0c9ed0b93826d8b43960e04026fd05`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 03:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:16:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:16:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:16:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:16:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:16:58 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 14 Aug 2018 20:32:09 GMT
ENV JAVA_VERSION=8u181
# Tue, 14 Aug 2018 20:32:10 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 14 Aug 2018 20:32:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 14 Aug 2018 20:33:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 14 Aug 2018 20:33:22 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 14 Aug 2018 23:39:33 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 14 Aug 2018 23:44:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 23:44:51 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 14 Aug 2018 23:44:51 GMT
ENV NUXEO_USER=nuxeo
# Tue, 14 Aug 2018 23:44:52 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 14 Aug 2018 23:44:52 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 14 Aug 2018 23:49:41 GMT
ARG NUXEO_VERSION=10.2
# Tue, 14 Aug 2018 23:49:41 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip
# Tue, 14 Aug 2018 23:49:41 GMT
ARG NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01
# Tue, 14 Aug 2018 23:49:42 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01 NUXEO_VERSION=10.2
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 14 Aug 2018 23:50:23 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01 NUXEO_VERSION=10.2
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Tue, 14 Aug 2018 23:50:24 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Tue, 14 Aug 2018 23:50:24 GMT
COPY file:4bef2f1f6b4ee418c784459e2fef01d05a75976842dfa0d5708e86cff319a87c in /etc/nuxeo/nuxeo.conf.template 
# Tue, 14 Aug 2018 23:50:24 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 14 Aug 2018 23:50:33 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01 NUXEO_VERSION=10.2
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 14 Aug 2018 23:50:44 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 23:50:45 GMT
WORKDIR /opt/nuxeo/server
# Mon, 27 Aug 2018 20:52:31 GMT
COPY file:b68c33898a1effa6e7ec54fb18544cb92f685f85aba3f75cfa01d1939dcc4680 in / 
# Mon, 27 Aug 2018 20:52:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Aug 2018 20:52:31 GMT
EXPOSE 8080/tcp
# Mon, 27 Aug 2018 20:52:32 GMT
EXPOSE 8787/tcp
# Mon, 27 Aug 2018 20:52:32 GMT
CMD ["nuxeoctl" "console"]
# Mon, 27 Aug 2018 20:52:32 GMT
USER [1000]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4eee24d4dacb41c21411e0477a741655303cdc48b18a948632c31f0f3a70bb8`  
		Last Modified: Tue, 17 Jul 2018 03:54:59 GMT  
		Size: 50.1 MB (50064642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c58988e753d7a34080c68b53f7c27229d8f8fa80b9940c34d5cf77a9a2df10a0`  
		Last Modified: Tue, 17 Jul 2018 06:55:01 GMT  
		Size: 892.4 KB (892350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794a04897db9ebf95b1f6430cd4d4051bd227a5f0698b18404ccd4c59e43273d`  
		Last Modified: Tue, 17 Jul 2018 06:55:00 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fcfa476f730980d7a89f5ea34dd29c0c58e7cfe62652584e3adc38106e30ee`  
		Last Modified: Tue, 17 Jul 2018 06:54:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806029475e0cd4fad9d906385681d719017da9ae333e87ab7e14d8eb8f8eae79`  
		Last Modified: Tue, 14 Aug 2018 20:39:01 GMT  
		Size: 134.0 MB (133988934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67959b355155f692cb7147128e4b67da87d6c66ec26615f174e606dfd4145cbc`  
		Last Modified: Tue, 14 Aug 2018 20:38:22 GMT  
		Size: 246.7 KB (246692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd906e9285e54348c8ea1b6b14b1a45a206f6de52ed6b94f2af33c0bd7f8a3b`  
		Last Modified: Tue, 14 Aug 2018 23:55:14 GMT  
		Size: 243.0 MB (242973597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947ea1b1a8e10cc63d49bc3232fa874f649c7e45cbea330318f0542e1d3407b4`  
		Last Modified: Wed, 15 Aug 2018 00:00:50 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a922a9e90fb93a1123d923c386112f051deb2507c2011cf488618c823bc3d71`  
		Last Modified: Wed, 15 Aug 2018 00:01:25 GMT  
		Size: 359.5 MB (359511699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848b4ee0954ac099c34d1637cf98feed9d816233ab9b029d1f9d2baaa37875f9`  
		Last Modified: Wed, 15 Aug 2018 00:00:48 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:406aab784711a13db11465f86b0084ea54b936b7c388f270cbcc18bdc8477e25`  
		Last Modified: Wed, 15 Aug 2018 00:00:48 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c53661bc4abc80a6d4914c1cc67a5535f0eb874e286b0d21d630bd905bb499c7`  
		Last Modified: Wed, 15 Aug 2018 00:01:25 GMT  
		Size: 359.5 MB (359515407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be26305e66f84cf123fb1a71b0afc4e5667cc609c9d1febe45809c6c1f45dd27`  
		Last Modified: Mon, 27 Aug 2018 20:54:48 GMT  
		Size: 1.0 KB (1022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:latest`

```console
$ docker pull nuxeo@sha256:454bc9e4f4693e143b8437cba9cbd79471622b08e5dca6a8c05160d94b4be299
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:latest` - linux; amd64

```console
$ docker pull nuxeo@sha256:dc969fc30f81125f9845a8fbf8cfedeb2fbfbcc4278954a8e51b15fbc156e335
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 GB (1207587075 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:226ebf7b963417c94b8983778c0fb978fb0c9ed0b93826d8b43960e04026fd05`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 03:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:16:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:16:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:16:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:16:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:16:58 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 14 Aug 2018 20:32:09 GMT
ENV JAVA_VERSION=8u181
# Tue, 14 Aug 2018 20:32:10 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 14 Aug 2018 20:32:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 14 Aug 2018 20:33:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 14 Aug 2018 20:33:22 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 14 Aug 2018 23:39:33 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 14 Aug 2018 23:44:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 23:44:51 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 14 Aug 2018 23:44:51 GMT
ENV NUXEO_USER=nuxeo
# Tue, 14 Aug 2018 23:44:52 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 14 Aug 2018 23:44:52 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 14 Aug 2018 23:49:41 GMT
ARG NUXEO_VERSION=10.2
# Tue, 14 Aug 2018 23:49:41 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip
# Tue, 14 Aug 2018 23:49:41 GMT
ARG NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01
# Tue, 14 Aug 2018 23:49:42 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01 NUXEO_VERSION=10.2
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 14 Aug 2018 23:50:23 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01 NUXEO_VERSION=10.2
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Tue, 14 Aug 2018 23:50:24 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Tue, 14 Aug 2018 23:50:24 GMT
COPY file:4bef2f1f6b4ee418c784459e2fef01d05a75976842dfa0d5708e86cff319a87c in /etc/nuxeo/nuxeo.conf.template 
# Tue, 14 Aug 2018 23:50:24 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 14 Aug 2018 23:50:33 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01 NUXEO_VERSION=10.2
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 14 Aug 2018 23:50:44 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 23:50:45 GMT
WORKDIR /opt/nuxeo/server
# Mon, 27 Aug 2018 20:52:31 GMT
COPY file:b68c33898a1effa6e7ec54fb18544cb92f685f85aba3f75cfa01d1939dcc4680 in / 
# Mon, 27 Aug 2018 20:52:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Aug 2018 20:52:31 GMT
EXPOSE 8080/tcp
# Mon, 27 Aug 2018 20:52:32 GMT
EXPOSE 8787/tcp
# Mon, 27 Aug 2018 20:52:32 GMT
CMD ["nuxeoctl" "console"]
# Mon, 27 Aug 2018 20:52:32 GMT
USER [1000]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4eee24d4dacb41c21411e0477a741655303cdc48b18a948632c31f0f3a70bb8`  
		Last Modified: Tue, 17 Jul 2018 03:54:59 GMT  
		Size: 50.1 MB (50064642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c58988e753d7a34080c68b53f7c27229d8f8fa80b9940c34d5cf77a9a2df10a0`  
		Last Modified: Tue, 17 Jul 2018 06:55:01 GMT  
		Size: 892.4 KB (892350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794a04897db9ebf95b1f6430cd4d4051bd227a5f0698b18404ccd4c59e43273d`  
		Last Modified: Tue, 17 Jul 2018 06:55:00 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fcfa476f730980d7a89f5ea34dd29c0c58e7cfe62652584e3adc38106e30ee`  
		Last Modified: Tue, 17 Jul 2018 06:54:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806029475e0cd4fad9d906385681d719017da9ae333e87ab7e14d8eb8f8eae79`  
		Last Modified: Tue, 14 Aug 2018 20:39:01 GMT  
		Size: 134.0 MB (133988934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67959b355155f692cb7147128e4b67da87d6c66ec26615f174e606dfd4145cbc`  
		Last Modified: Tue, 14 Aug 2018 20:38:22 GMT  
		Size: 246.7 KB (246692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd906e9285e54348c8ea1b6b14b1a45a206f6de52ed6b94f2af33c0bd7f8a3b`  
		Last Modified: Tue, 14 Aug 2018 23:55:14 GMT  
		Size: 243.0 MB (242973597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947ea1b1a8e10cc63d49bc3232fa874f649c7e45cbea330318f0542e1d3407b4`  
		Last Modified: Wed, 15 Aug 2018 00:00:50 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a922a9e90fb93a1123d923c386112f051deb2507c2011cf488618c823bc3d71`  
		Last Modified: Wed, 15 Aug 2018 00:01:25 GMT  
		Size: 359.5 MB (359511699 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848b4ee0954ac099c34d1637cf98feed9d816233ab9b029d1f9d2baaa37875f9`  
		Last Modified: Wed, 15 Aug 2018 00:00:48 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:406aab784711a13db11465f86b0084ea54b936b7c388f270cbcc18bdc8477e25`  
		Last Modified: Wed, 15 Aug 2018 00:00:48 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c53661bc4abc80a6d4914c1cc67a5535f0eb874e286b0d21d630bd905bb499c7`  
		Last Modified: Wed, 15 Aug 2018 00:01:25 GMT  
		Size: 359.5 MB (359515407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be26305e66f84cf123fb1a71b0afc4e5667cc609c9d1febe45809c6c1f45dd27`  
		Last Modified: Mon, 27 Aug 2018 20:54:48 GMT  
		Size: 1.0 KB (1022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS`

```console
$ docker pull nuxeo@sha256:c22a536417a5e928994ebf07e312661a944eb28cb02610544df42645bdbfc0d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:LTS` - linux; amd64

```console
$ docker pull nuxeo@sha256:62ff90ef41a6931302b052fc9cb3826beb6ddc6734fac09312e87a49d87a7f91
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1258879968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bd8d39d61281b249b47ccc284c6a066208bc94ac193f74d2af0739877ca72f1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 03:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:16:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:16:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:16:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:16:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:16:58 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 14 Aug 2018 20:32:09 GMT
ENV JAVA_VERSION=8u181
# Tue, 14 Aug 2018 20:32:10 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 14 Aug 2018 20:32:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 14 Aug 2018 20:33:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 14 Aug 2018 20:33:22 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 14 Aug 2018 23:39:33 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 14 Aug 2018 23:44:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 23:44:51 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 14 Aug 2018 23:44:51 GMT
ENV NUXEO_USER=nuxeo
# Tue, 14 Aug 2018 23:44:52 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 14 Aug 2018 23:44:52 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 14 Aug 2018 23:46:20 GMT
ARG NUXEO_VERSION=9.10
# Tue, 14 Aug 2018 23:46:21 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip
# Tue, 14 Aug 2018 23:46:21 GMT
ARG NUXEO_MD5=327d23bbd5558565694027b11c0dd82a
# Tue, 14 Aug 2018 23:46:22 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 14 Aug 2018 23:47:05 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Tue, 14 Aug 2018 23:47:05 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Tue, 14 Aug 2018 23:47:06 GMT
COPY file:4bef2f1f6b4ee418c784459e2fef01d05a75976842dfa0d5708e86cff319a87c in /etc/nuxeo/nuxeo.conf.template 
# Tue, 14 Aug 2018 23:47:06 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 14 Aug 2018 23:47:16 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 14 Aug 2018 23:47:17 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 23:47:17 GMT
WORKDIR /opt/nuxeo/server
# Mon, 27 Aug 2018 20:52:08 GMT
COPY file:b68c33898a1effa6e7ec54fb18544cb92f685f85aba3f75cfa01d1939dcc4680 in / 
# Mon, 27 Aug 2018 20:52:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Aug 2018 20:52:09 GMT
EXPOSE 8080/tcp
# Mon, 27 Aug 2018 20:52:09 GMT
EXPOSE 8787/tcp
# Mon, 27 Aug 2018 20:52:09 GMT
CMD ["nuxeoctl" "console"]
# Mon, 27 Aug 2018 20:52:10 GMT
USER [1000]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4eee24d4dacb41c21411e0477a741655303cdc48b18a948632c31f0f3a70bb8`  
		Last Modified: Tue, 17 Jul 2018 03:54:59 GMT  
		Size: 50.1 MB (50064642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c58988e753d7a34080c68b53f7c27229d8f8fa80b9940c34d5cf77a9a2df10a0`  
		Last Modified: Tue, 17 Jul 2018 06:55:01 GMT  
		Size: 892.4 KB (892350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794a04897db9ebf95b1f6430cd4d4051bd227a5f0698b18404ccd4c59e43273d`  
		Last Modified: Tue, 17 Jul 2018 06:55:00 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fcfa476f730980d7a89f5ea34dd29c0c58e7cfe62652584e3adc38106e30ee`  
		Last Modified: Tue, 17 Jul 2018 06:54:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806029475e0cd4fad9d906385681d719017da9ae333e87ab7e14d8eb8f8eae79`  
		Last Modified: Tue, 14 Aug 2018 20:39:01 GMT  
		Size: 134.0 MB (133988934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67959b355155f692cb7147128e4b67da87d6c66ec26615f174e606dfd4145cbc`  
		Last Modified: Tue, 14 Aug 2018 20:38:22 GMT  
		Size: 246.7 KB (246692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd906e9285e54348c8ea1b6b14b1a45a206f6de52ed6b94f2af33c0bd7f8a3b`  
		Last Modified: Tue, 14 Aug 2018 23:55:14 GMT  
		Size: 243.0 MB (242973597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ab5a3a36db9bc9b96e3077a8e46e888b6081cec4abbacda15549cfe2a333f0`  
		Last Modified: Tue, 14 Aug 2018 23:56:48 GMT  
		Size: 4.4 KB (4413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f53b8261aca824cf7d4dd9e0153e0b33d9c2753083a290e4cea50db6d19ed5d`  
		Last Modified: Tue, 14 Aug 2018 23:57:23 GMT  
		Size: 385.2 MB (385158405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c412242dae6daa4e39a30991983eb8652cee34e64af440abcbac2cbc3e96d93b`  
		Last Modified: Tue, 14 Aug 2018 23:56:46 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7639a335c097512935f795773137615755bbfa2cb7efa6fe8a52679791feb9e`  
		Last Modified: Tue, 14 Aug 2018 23:56:47 GMT  
		Size: 1.0 KB (1015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f184b09aee2d60a232e6429f7a717c69d68308e5af1bc3b34ebdf1b6d0355e`  
		Last Modified: Tue, 14 Aug 2018 23:57:23 GMT  
		Size: 385.2 MB (385161597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2324de53832167d8fc61fc0212d9c74fcaffcf3d8af54f424fbd488afe9fd9aa`  
		Last Modified: Mon, 27 Aug 2018 20:53:06 GMT  
		Size: 1.0 KB (1021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS-2015`

```console
$ docker pull nuxeo@sha256:c64c19229e86097f4f086cb3216347e60163912c81388da142aef6df7f3544e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:LTS-2015` - linux; amd64

```console
$ docker pull nuxeo@sha256:6305d6b49180899829f36d4091e24bf661473c9d08cf6ff154fd21b5ca5d303b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1045572173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12b653bf57b49b1b15346ca58e1ad8c4c63e70aab359d78b0902a6f45df7d756`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 03:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:16:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:16:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:16:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:16:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:16:58 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 14 Aug 2018 20:32:09 GMT
ENV JAVA_VERSION=8u181
# Tue, 14 Aug 2018 20:32:10 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 14 Aug 2018 20:32:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 14 Aug 2018 20:33:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 14 Aug 2018 20:33:22 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 14 Aug 2018 23:39:33 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 14 Aug 2018 23:41:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 23:41:48 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 14 Aug 2018 23:41:49 GMT
ENV NUXEO_USER=nuxeo
# Tue, 14 Aug 2018 23:41:49 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 14 Aug 2018 23:41:49 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 14 Aug 2018 23:41:49 GMT
ARG NUXEO_VERSION=7.10
# Tue, 14 Aug 2018 23:41:50 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip
# Tue, 14 Aug 2018 23:41:50 GMT
ARG NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Tue, 14 Aug 2018 23:41:50 GMT
ENV LAUNCHER_DEBUG=-Djvmcheck=nofail
# Tue, 14 Aug 2018 23:41:51 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 14 Aug 2018 23:42:29 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Tue, 14 Aug 2018 23:42:35 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Tue, 14 Aug 2018 23:42:36 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d     && chmod g=u /etc/passwd
# Tue, 14 Aug 2018 23:42:37 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 23:42:37 GMT
WORKDIR /opt/nuxeo/server
# Tue, 14 Aug 2018 23:42:38 GMT
COPY file:d2e9011e964c7e8fc295cc55d2bc9d33c6539862e1297e7fe97dbee68beb9269 in / 
# Tue, 14 Aug 2018 23:42:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 Aug 2018 23:42:39 GMT
EXPOSE 8080/tcp
# Tue, 14 Aug 2018 23:42:39 GMT
EXPOSE 8787/tcp
# Tue, 14 Aug 2018 23:42:39 GMT
CMD ["nuxeoctl" "console"]
# Tue, 14 Aug 2018 23:42:40 GMT
USER [1000]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4eee24d4dacb41c21411e0477a741655303cdc48b18a948632c31f0f3a70bb8`  
		Last Modified: Tue, 17 Jul 2018 03:54:59 GMT  
		Size: 50.1 MB (50064642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c58988e753d7a34080c68b53f7c27229d8f8fa80b9940c34d5cf77a9a2df10a0`  
		Last Modified: Tue, 17 Jul 2018 06:55:01 GMT  
		Size: 892.4 KB (892350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794a04897db9ebf95b1f6430cd4d4051bd227a5f0698b18404ccd4c59e43273d`  
		Last Modified: Tue, 17 Jul 2018 06:55:00 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fcfa476f730980d7a89f5ea34dd29c0c58e7cfe62652584e3adc38106e30ee`  
		Last Modified: Tue, 17 Jul 2018 06:54:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806029475e0cd4fad9d906385681d719017da9ae333e87ab7e14d8eb8f8eae79`  
		Last Modified: Tue, 14 Aug 2018 20:39:01 GMT  
		Size: 134.0 MB (133988934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67959b355155f692cb7147128e4b67da87d6c66ec26615f174e606dfd4145cbc`  
		Last Modified: Tue, 14 Aug 2018 20:38:22 GMT  
		Size: 246.7 KB (246692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1e4cad77f2e5fa911197c91bff1d0b4d26a1170342309b381bb1975dcbafbc`  
		Last Modified: Tue, 14 Aug 2018 23:52:36 GMT  
		Size: 239.1 MB (239068267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4e4e5e47deef6a95159043df34f5d2b9f223e352a93f962ecd7d6ff570c4881`  
		Last Modified: Tue, 14 Aug 2018 23:51:18 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8680295b4bb2f7a2bf4a907cc08bee6136463328f19d7e26f6156f74c0e193ec`  
		Last Modified: Tue, 14 Aug 2018 23:51:49 GMT  
		Size: 280.5 MB (280457924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:524c951ecb844ba522408deb1b4cf67fdcc8c17914b75b3304d4f7d8fc03ff6d`  
		Last Modified: Tue, 14 Aug 2018 23:51:46 GMT  
		Size: 280.5 MB (280459878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a4dfa1cfe9f76e5a67092e12de7dbb2a25e516a8dbb13967372c3e26f1e9cd3`  
		Last Modified: Tue, 14 Aug 2018 23:51:18 GMT  
		Size: 817.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e49ebaf65b6ac7530894d3efae1faab8ee733c4c243852562b7cda7a0780065`  
		Last Modified: Tue, 14 Aug 2018 23:51:18 GMT  
		Size: 1.6 KB (1559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS-2016`

```console
$ docker pull nuxeo@sha256:8846b25dd56d345147b3ff454dd5879ae80fa08719d4e302f9cedc28db390f33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:LTS-2016` - linux; amd64

```console
$ docker pull nuxeo@sha256:b1264c57471a5373cc7722ac9b6a2f8ae11215aa79236ac0817ef347a5cb6223
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1027806207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1aeb350b62dbb99714dbe2f822e1b61206d348da7901cd6c64ce3016ea0da72`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 03:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:16:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:16:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:16:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:16:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:16:58 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 14 Aug 2018 20:32:09 GMT
ENV JAVA_VERSION=8u181
# Tue, 14 Aug 2018 20:32:10 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 14 Aug 2018 20:32:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 14 Aug 2018 20:33:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 14 Aug 2018 20:33:22 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 14 Aug 2018 23:39:33 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 14 Aug 2018 23:44:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 23:44:51 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 14 Aug 2018 23:44:51 GMT
ENV NUXEO_USER=nuxeo
# Tue, 14 Aug 2018 23:44:52 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 14 Aug 2018 23:44:52 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 14 Aug 2018 23:44:52 GMT
ARG NUXEO_VERSION=8.10
# Tue, 14 Aug 2018 23:44:52 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip
# Tue, 14 Aug 2018 23:44:53 GMT
ARG NUXEO_MD5=29e67a19bba54099093b51d892926be1
# Tue, 14 Aug 2018 23:44:54 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 14 Aug 2018 23:45:29 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Tue, 14 Aug 2018 23:45:36 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Tue, 14 Aug 2018 23:45:37 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d     && chmod g=u /etc/passwd
# Tue, 14 Aug 2018 23:45:37 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 23:45:37 GMT
WORKDIR /opt/nuxeo/server
# Tue, 14 Aug 2018 23:45:38 GMT
COPY file:d2e9011e964c7e8fc295cc55d2bc9d33c6539862e1297e7fe97dbee68beb9269 in / 
# Tue, 14 Aug 2018 23:45:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 Aug 2018 23:45:38 GMT
EXPOSE 8080/tcp
# Tue, 14 Aug 2018 23:45:39 GMT
EXPOSE 8787/tcp
# Tue, 14 Aug 2018 23:45:39 GMT
CMD ["nuxeoctl" "console"]
# Tue, 14 Aug 2018 23:45:39 GMT
USER [1000]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4eee24d4dacb41c21411e0477a741655303cdc48b18a948632c31f0f3a70bb8`  
		Last Modified: Tue, 17 Jul 2018 03:54:59 GMT  
		Size: 50.1 MB (50064642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c58988e753d7a34080c68b53f7c27229d8f8fa80b9940c34d5cf77a9a2df10a0`  
		Last Modified: Tue, 17 Jul 2018 06:55:01 GMT  
		Size: 892.4 KB (892350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794a04897db9ebf95b1f6430cd4d4051bd227a5f0698b18404ccd4c59e43273d`  
		Last Modified: Tue, 17 Jul 2018 06:55:00 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fcfa476f730980d7a89f5ea34dd29c0c58e7cfe62652584e3adc38106e30ee`  
		Last Modified: Tue, 17 Jul 2018 06:54:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806029475e0cd4fad9d906385681d719017da9ae333e87ab7e14d8eb8f8eae79`  
		Last Modified: Tue, 14 Aug 2018 20:39:01 GMT  
		Size: 134.0 MB (133988934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67959b355155f692cb7147128e4b67da87d6c66ec26615f174e606dfd4145cbc`  
		Last Modified: Tue, 14 Aug 2018 20:38:22 GMT  
		Size: 246.7 KB (246692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd906e9285e54348c8ea1b6b14b1a45a206f6de52ed6b94f2af33c0bd7f8a3b`  
		Last Modified: Tue, 14 Aug 2018 23:55:14 GMT  
		Size: 243.0 MB (242973597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9880dcde97d3d5757da83d4b1bd15f0c997fcf773ab99e44a42b624bf7f41e9`  
		Last Modified: Tue, 14 Aug 2018 23:53:56 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30f220f9b41d85f1cfa7eb61994015c9233a539de47138462021ca6ca2dca4c1`  
		Last Modified: Tue, 14 Aug 2018 23:54:23 GMT  
		Size: 269.6 MB (269622096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee8e38369d96d0264382128769d585e6f10beb0f0ad5847bc5ca0247ab2d340b`  
		Last Modified: Tue, 14 Aug 2018 23:54:27 GMT  
		Size: 269.6 MB (269624409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2db67ea3b520820d2a03182b3c6666fcd114b5a52bf6ef8eddf128808753fc70`  
		Last Modified: Tue, 14 Aug 2018 23:53:58 GMT  
		Size: 817.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d706a628acbe52e4782fc6cc6a9d6c7c677834dc3f829480d4faa31356c09752`  
		Last Modified: Tue, 14 Aug 2018 23:53:56 GMT  
		Size: 1.6 KB (1560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS-2017`

```console
$ docker pull nuxeo@sha256:c22a536417a5e928994ebf07e312661a944eb28cb02610544df42645bdbfc0d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:LTS-2017` - linux; amd64

```console
$ docker pull nuxeo@sha256:62ff90ef41a6931302b052fc9cb3826beb6ddc6734fac09312e87a49d87a7f91
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1258879968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bd8d39d61281b249b47ccc284c6a066208bc94ac193f74d2af0739877ca72f1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 03:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:16:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 06:16:56 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 06:16:57 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 17 Jul 2018 06:16:58 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 17 Jul 2018 06:16:58 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 14 Aug 2018 20:32:09 GMT
ENV JAVA_VERSION=8u181
# Tue, 14 Aug 2018 20:32:10 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 14 Aug 2018 20:32:10 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 14 Aug 2018 20:33:19 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 14 Aug 2018 20:33:22 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 14 Aug 2018 23:39:33 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 14 Aug 2018 23:44:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 14 Aug 2018 23:44:51 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 14 Aug 2018 23:44:51 GMT
ENV NUXEO_USER=nuxeo
# Tue, 14 Aug 2018 23:44:52 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 14 Aug 2018 23:44:52 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 14 Aug 2018 23:46:20 GMT
ARG NUXEO_VERSION=9.10
# Tue, 14 Aug 2018 23:46:21 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip
# Tue, 14 Aug 2018 23:46:21 GMT
ARG NUXEO_MD5=327d23bbd5558565694027b11c0dd82a
# Tue, 14 Aug 2018 23:46:22 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 14 Aug 2018 23:47:05 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Tue, 14 Aug 2018 23:47:05 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Tue, 14 Aug 2018 23:47:06 GMT
COPY file:4bef2f1f6b4ee418c784459e2fef01d05a75976842dfa0d5708e86cff319a87c in /etc/nuxeo/nuxeo.conf.template 
# Tue, 14 Aug 2018 23:47:06 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 14 Aug 2018 23:47:16 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 14 Aug 2018 23:47:17 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Aug 2018 23:47:17 GMT
WORKDIR /opt/nuxeo/server
# Mon, 27 Aug 2018 20:52:08 GMT
COPY file:b68c33898a1effa6e7ec54fb18544cb92f685f85aba3f75cfa01d1939dcc4680 in / 
# Mon, 27 Aug 2018 20:52:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 27 Aug 2018 20:52:09 GMT
EXPOSE 8080/tcp
# Mon, 27 Aug 2018 20:52:09 GMT
EXPOSE 8787/tcp
# Mon, 27 Aug 2018 20:52:09 GMT
CMD ["nuxeoctl" "console"]
# Mon, 27 Aug 2018 20:52:10 GMT
USER [1000]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4eee24d4dacb41c21411e0477a741655303cdc48b18a948632c31f0f3a70bb8`  
		Last Modified: Tue, 17 Jul 2018 03:54:59 GMT  
		Size: 50.1 MB (50064642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c58988e753d7a34080c68b53f7c27229d8f8fa80b9940c34d5cf77a9a2df10a0`  
		Last Modified: Tue, 17 Jul 2018 06:55:01 GMT  
		Size: 892.4 KB (892350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:794a04897db9ebf95b1f6430cd4d4051bd227a5f0698b18404ccd4c59e43273d`  
		Last Modified: Tue, 17 Jul 2018 06:55:00 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70fcfa476f730980d7a89f5ea34dd29c0c58e7cfe62652584e3adc38106e30ee`  
		Last Modified: Tue, 17 Jul 2018 06:54:59 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:806029475e0cd4fad9d906385681d719017da9ae333e87ab7e14d8eb8f8eae79`  
		Last Modified: Tue, 14 Aug 2018 20:39:01 GMT  
		Size: 134.0 MB (133988934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67959b355155f692cb7147128e4b67da87d6c66ec26615f174e606dfd4145cbc`  
		Last Modified: Tue, 14 Aug 2018 20:38:22 GMT  
		Size: 246.7 KB (246692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cd906e9285e54348c8ea1b6b14b1a45a206f6de52ed6b94f2af33c0bd7f8a3b`  
		Last Modified: Tue, 14 Aug 2018 23:55:14 GMT  
		Size: 243.0 MB (242973597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ab5a3a36db9bc9b96e3077a8e46e888b6081cec4abbacda15549cfe2a333f0`  
		Last Modified: Tue, 14 Aug 2018 23:56:48 GMT  
		Size: 4.4 KB (4413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f53b8261aca824cf7d4dd9e0153e0b33d9c2753083a290e4cea50db6d19ed5d`  
		Last Modified: Tue, 14 Aug 2018 23:57:23 GMT  
		Size: 385.2 MB (385158405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c412242dae6daa4e39a30991983eb8652cee34e64af440abcbac2cbc3e96d93b`  
		Last Modified: Tue, 14 Aug 2018 23:56:46 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7639a335c097512935f795773137615755bbfa2cb7efa6fe8a52679791feb9e`  
		Last Modified: Tue, 14 Aug 2018 23:56:47 GMT  
		Size: 1.0 KB (1015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f184b09aee2d60a232e6429f7a717c69d68308e5af1bc3b34ebdf1b6d0355e`  
		Last Modified: Tue, 14 Aug 2018 23:57:23 GMT  
		Size: 385.2 MB (385161597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2324de53832167d8fc61fc0212d9c74fcaffcf3d8af54f424fbd488afe9fd9aa`  
		Last Modified: Mon, 27 Aug 2018 20:53:06 GMT  
		Size: 1.0 KB (1021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
