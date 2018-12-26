<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `nuxeo`

-	[`nuxeo:10`](#nuxeo10)
-	[`nuxeo:10.1`](#nuxeo101)
-	[`nuxeo:10.2`](#nuxeo102)
-	[`nuxeo:10.3`](#nuxeo103)
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
$ docker pull nuxeo@sha256:112ca2e8f1a42087b357387491ac9621216db809c6ad5eb74c54814a479c5c21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:10` - linux; amd64

```console
$ docker pull nuxeo@sha256:90697054db8f689d1be2473e0ce750642adec9cb69e4fbf3a51183fa375504b9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 GB (1203064988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cb4ccf34f6ac36e3bbc1c0f8ff230c42ad66df2296c17b6ee3ae323fd46c365`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:52 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 14:57:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 14:57:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 14:57:56 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 26 Dec 2018 08:33:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 10:18:39 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 26 Dec 2018 10:22:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 10:22:14 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Wed, 26 Dec 2018 10:22:14 GMT
ENV NUXEO_USER=nuxeo
# Wed, 26 Dec 2018 10:22:14 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 26 Dec 2018 10:22:14 GMT
ENV HOME=/opt/nuxeo/server
# Wed, 26 Dec 2018 10:25:37 GMT
ARG NUXEO_VERSION=10.3
# Wed, 26 Dec 2018 10:25:37 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.3/nuxeo-server-10.3-tomcat.zip
# Wed, 26 Dec 2018 10:25:37 GMT
ARG NUXEO_MD5=e2f32f59ce6aebe06c5ac4c1971b1787
# Wed, 26 Dec 2018 10:25:38 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.3/nuxeo-server-10.3-tomcat.zip NUXEO_MD5=e2f32f59ce6aebe06c5ac4c1971b1787 NUXEO_VERSION=10.3
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 26 Dec 2018 10:26:10 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.3/nuxeo-server-10.3-tomcat.zip NUXEO_MD5=e2f32f59ce6aebe06c5ac4c1971b1787 NUXEO_VERSION=10.3
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Wed, 26 Dec 2018 10:26:10 GMT
COPY dir:1d4b19e1e35500d85eafcc58364498b9325f119ce19917cefc60c7ad98e600e7 in /opt/nuxeo/server/templates/docker 
# Wed, 26 Dec 2018 10:26:10 GMT
COPY file:8f1eb15b3cc87be8784ed6bc39c958a3a06d1e375bda2ce728f297d14d74d526 in /etc/nuxeo/nuxeo.conf.template 
# Wed, 26 Dec 2018 10:26:10 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Wed, 26 Dec 2018 10:26:17 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.3/nuxeo-server-10.3-tomcat.zip NUXEO_MD5=e2f32f59ce6aebe06c5ac4c1971b1787 NUXEO_VERSION=10.3
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Wed, 26 Dec 2018 10:26:18 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 10:26:18 GMT
WORKDIR /opt/nuxeo/server
# Wed, 26 Dec 2018 10:26:18 GMT
COPY file:d8f37458746cb2e17dae348b52babe8b858743784ee8dffc0c24d7026bf0e474 in / 
# Wed, 26 Dec 2018 10:26:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 10:26:18 GMT
EXPOSE 8080
# Wed, 26 Dec 2018 10:26:19 GMT
EXPOSE 8787
# Wed, 26 Dec 2018 10:26:19 GMT
CMD ["nuxeoctl" "console"]
# Wed, 26 Dec 2018 10:26:19 GMT
USER 1000
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da6b28682cfe6db721c143309125728417dca93643b3d8d4c22ae7fbb4eb940`  
		Last Modified: Fri, 16 Nov 2018 15:56:15 GMT  
		Size: 892.4 KB (892364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203f1094a1e2165da6f6ec505e8cffb8853d3c72a8088f41c25218121f883b0a`  
		Last Modified: Fri, 16 Nov 2018 15:56:14 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee38d9f85cf610794355dc0458445408ded4d648cbc45984cd259611a8a72cc3`  
		Last Modified: Fri, 16 Nov 2018 15:56:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebdd07b685f5edae77834586ddb9e56b434f4fe4e5b17ed164656595e34e8fbf`  
		Last Modified: Wed, 26 Dec 2018 08:40:22 GMT  
		Size: 134.0 MB (133976353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6cc909f393f940a3a842a9979461d645792d6305af3757edf7b69071349730`  
		Last Modified: Wed, 26 Dec 2018 10:28:33 GMT  
		Size: 255.1 MB (255085285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2182187867c0cac859cea4bfdaaaa8717d4fa600bd55d4f4581f27168ccbd2`  
		Last Modified: Wed, 26 Dec 2018 10:30:20 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea83fd155304aeaf71abbcdb4bff1c894ae5a8f365c2fdb9d84a2936e41331f2`  
		Last Modified: Wed, 26 Dec 2018 10:30:41 GMT  
		Size: 351.3 MB (351319257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868e9c95ff42d24ac5337dd99cd10404ee35fdf1de3c932ae10485da2b54b428`  
		Last Modified: Wed, 26 Dec 2018 10:30:18 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06bb23caa0d7af3bf0846c95a0fb1cba8a7a3a31b59d2a48e02f1aad64371dcc`  
		Last Modified: Wed, 26 Dec 2018 10:30:18 GMT  
		Size: 1.0 KB (1015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db8c9af2cf8b3cb8d766b7a3cf87705d691fad605d93eeaaf5b9531f79a470e`  
		Last Modified: Wed, 26 Dec 2018 10:30:41 GMT  
		Size: 351.3 MB (351320540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2c2053e2d7429088d1712f3b5535cbfc31d2e0b0ae8e164011bd678012de3b`  
		Last Modified: Wed, 26 Dec 2018 10:30:19 GMT  
		Size: 1.0 KB (1021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:10.1`

```console
$ docker pull nuxeo@sha256:f0e755ac06025b82dc60536a00211b98d197d4af5a2053daeff0951d290ec820
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:10.1` - linux; amd64

```console
$ docker pull nuxeo@sha256:5398493d477325c85ab9d959bf8ed4b0718afe6993a7ad63fcb6f9c435227c7a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1407058239 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:749cee65d10baad75f1d024ed939611ec1b01c879b2a111b719800fceecc8a6c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:52 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 14:57:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 14:57:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 14:57:56 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 26 Dec 2018 08:33:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 10:18:39 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 26 Dec 2018 10:22:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 10:22:14 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Wed, 26 Dec 2018 10:22:14 GMT
ENV NUXEO_USER=nuxeo
# Wed, 26 Dec 2018 10:22:14 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 26 Dec 2018 10:22:14 GMT
ENV HOME=/opt/nuxeo/server
# Wed, 26 Dec 2018 10:23:50 GMT
ARG NUXEO_VERSION=10.1
# Wed, 26 Dec 2018 10:23:50 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip
# Wed, 26 Dec 2018 10:23:50 GMT
ARG NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162
# Wed, 26 Dec 2018 10:23:51 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162 NUXEO_VERSION=10.1
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 26 Dec 2018 10:24:29 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162 NUXEO_VERSION=10.1
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Wed, 26 Dec 2018 10:24:30 GMT
COPY dir:1d4b19e1e35500d85eafcc58364498b9325f119ce19917cefc60c7ad98e600e7 in /opt/nuxeo/server/templates/docker 
# Wed, 26 Dec 2018 10:24:30 GMT
COPY file:8f1eb15b3cc87be8784ed6bc39c958a3a06d1e375bda2ce728f297d14d74d526 in /etc/nuxeo/nuxeo.conf.template 
# Wed, 26 Dec 2018 10:24:30 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Wed, 26 Dec 2018 10:24:39 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162 NUXEO_VERSION=10.1
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Wed, 26 Dec 2018 10:24:39 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 10:24:39 GMT
WORKDIR /opt/nuxeo/server
# Wed, 26 Dec 2018 10:24:40 GMT
COPY file:e422458a6454ca6cf5b0b82a9c38544c4d1186fa0a39f04ae9aa9aea1361043c in / 
# Wed, 26 Dec 2018 10:24:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 10:24:40 GMT
EXPOSE 8080
# Wed, 26 Dec 2018 10:24:40 GMT
EXPOSE 8787
# Wed, 26 Dec 2018 10:24:40 GMT
CMD ["nuxeoctl" "console"]
# Wed, 26 Dec 2018 10:24:41 GMT
USER 1000
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da6b28682cfe6db721c143309125728417dca93643b3d8d4c22ae7fbb4eb940`  
		Last Modified: Fri, 16 Nov 2018 15:56:15 GMT  
		Size: 892.4 KB (892364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203f1094a1e2165da6f6ec505e8cffb8853d3c72a8088f41c25218121f883b0a`  
		Last Modified: Fri, 16 Nov 2018 15:56:14 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee38d9f85cf610794355dc0458445408ded4d648cbc45984cd259611a8a72cc3`  
		Last Modified: Fri, 16 Nov 2018 15:56:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebdd07b685f5edae77834586ddb9e56b434f4fe4e5b17ed164656595e34e8fbf`  
		Last Modified: Wed, 26 Dec 2018 08:40:22 GMT  
		Size: 134.0 MB (133976353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6cc909f393f940a3a842a9979461d645792d6305af3757edf7b69071349730`  
		Last Modified: Wed, 26 Dec 2018 10:28:33 GMT  
		Size: 255.1 MB (255085285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17f4966dd6bffb59459e7a87c54ad6cd095e8630c0a5722d2ef2758ca52993ce`  
		Last Modified: Wed, 26 Dec 2018 10:29:12 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa45a314df54249c2e08546b3ad3a4a0c7ab6b476647dbad1f6550c4806d3f3`  
		Last Modified: Wed, 26 Dec 2018 10:29:38 GMT  
		Size: 453.3 MB (453314485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13eab3d50e022e481be76e3506fbbd092a1f5ecae755ebffc084b5a3d329d04e`  
		Last Modified: Wed, 26 Dec 2018 10:29:11 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:900fb3f6f9b50b044fd7d2fad409da9ee7ac904166395596025c9f09218676a3`  
		Last Modified: Wed, 26 Dec 2018 10:29:11 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56e12c608ff2edeb17ed896cc0dbbe6cf9126f3611f1c4110a23a270fac398d0`  
		Last Modified: Wed, 26 Dec 2018 10:29:39 GMT  
		Size: 453.3 MB (453318511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aba66025eeb3f47b66c0c38fa92f449b3557277e7f6690a2488ffb21c22381aa`  
		Last Modified: Wed, 26 Dec 2018 10:29:11 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:10.2`

```console
$ docker pull nuxeo@sha256:40190680a7b9492dc1c42d921d60181bcb5923e19c7987fd8dcd880fd701d6b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:10.2` - linux; amd64

```console
$ docker pull nuxeo@sha256:0979d4f3e82cef3c58a3f12e794a59515568be504ce60b2c168f03df353a826d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 GB (1219447006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7a84e7851168015fe2a16f069c9aceacfafe0302cd6774ba7a1a3d84e2a8cb0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:52 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 14:57:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 14:57:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 14:57:56 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 26 Dec 2018 08:33:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 10:18:39 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 26 Dec 2018 10:22:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 10:22:14 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Wed, 26 Dec 2018 10:22:14 GMT
ENV NUXEO_USER=nuxeo
# Wed, 26 Dec 2018 10:22:14 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 26 Dec 2018 10:22:14 GMT
ENV HOME=/opt/nuxeo/server
# Wed, 26 Dec 2018 10:24:53 GMT
ARG NUXEO_VERSION=10.2
# Wed, 26 Dec 2018 10:24:53 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip
# Wed, 26 Dec 2018 10:24:53 GMT
ARG NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01
# Wed, 26 Dec 2018 10:24:54 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01 NUXEO_VERSION=10.2
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 26 Dec 2018 10:25:24 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01 NUXEO_VERSION=10.2
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Wed, 26 Dec 2018 10:25:25 GMT
COPY dir:1d4b19e1e35500d85eafcc58364498b9325f119ce19917cefc60c7ad98e600e7 in /opt/nuxeo/server/templates/docker 
# Wed, 26 Dec 2018 10:25:25 GMT
COPY file:8f1eb15b3cc87be8784ed6bc39c958a3a06d1e375bda2ce728f297d14d74d526 in /etc/nuxeo/nuxeo.conf.template 
# Wed, 26 Dec 2018 10:25:25 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Wed, 26 Dec 2018 10:25:32 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01 NUXEO_VERSION=10.2
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Wed, 26 Dec 2018 10:25:33 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 10:25:33 GMT
WORKDIR /opt/nuxeo/server
# Wed, 26 Dec 2018 10:25:33 GMT
COPY file:d8f37458746cb2e17dae348b52babe8b858743784ee8dffc0c24d7026bf0e474 in / 
# Wed, 26 Dec 2018 10:25:33 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 10:25:33 GMT
EXPOSE 8080
# Wed, 26 Dec 2018 10:25:33 GMT
EXPOSE 8787
# Wed, 26 Dec 2018 10:25:34 GMT
CMD ["nuxeoctl" "console"]
# Wed, 26 Dec 2018 10:25:34 GMT
USER 1000
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da6b28682cfe6db721c143309125728417dca93643b3d8d4c22ae7fbb4eb940`  
		Last Modified: Fri, 16 Nov 2018 15:56:15 GMT  
		Size: 892.4 KB (892364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203f1094a1e2165da6f6ec505e8cffb8853d3c72a8088f41c25218121f883b0a`  
		Last Modified: Fri, 16 Nov 2018 15:56:14 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee38d9f85cf610794355dc0458445408ded4d648cbc45984cd259611a8a72cc3`  
		Last Modified: Fri, 16 Nov 2018 15:56:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebdd07b685f5edae77834586ddb9e56b434f4fe4e5b17ed164656595e34e8fbf`  
		Last Modified: Wed, 26 Dec 2018 08:40:22 GMT  
		Size: 134.0 MB (133976353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6cc909f393f940a3a842a9979461d645792d6305af3757edf7b69071349730`  
		Last Modified: Wed, 26 Dec 2018 10:28:33 GMT  
		Size: 255.1 MB (255085285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fb18316324eb77f81bc9e4cd0a7ce26b3bd35a1975a67e85e68cb86162e4b11`  
		Last Modified: Wed, 26 Dec 2018 10:29:48 GMT  
		Size: 4.4 KB (4411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760dc001b80b59cfa86500e2d7382897fdcb6997b89fd9aa63c1484ff4418994`  
		Last Modified: Wed, 26 Dec 2018 10:30:14 GMT  
		Size: 359.5 MB (359508205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1506c25444f6429ec7e5813e85d8b6f58f75f3b92bd25f3e836b06ef2fbac10d`  
		Last Modified: Wed, 26 Dec 2018 10:29:47 GMT  
		Size: 607.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a22bda142734e709689285c7fcb6678f8f7bee67ccfa4c5fc9164eb822ff13e3`  
		Last Modified: Wed, 26 Dec 2018 10:29:47 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5adfa0096cb4edd828d95954ddc473dbbc1c459c05496e7de5c40d5011a026`  
		Last Modified: Wed, 26 Dec 2018 10:30:09 GMT  
		Size: 359.5 MB (359513612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690ec8f2b8ad701f8238022e9fa9451f181bf43f084fe8cbf732bd7ad6f67b57`  
		Last Modified: Wed, 26 Dec 2018 10:29:47 GMT  
		Size: 1.0 KB (1021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:10.3`

```console
$ docker pull nuxeo@sha256:112ca2e8f1a42087b357387491ac9621216db809c6ad5eb74c54814a479c5c21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:10.3` - linux; amd64

```console
$ docker pull nuxeo@sha256:90697054db8f689d1be2473e0ce750642adec9cb69e4fbf3a51183fa375504b9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 GB (1203064988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cb4ccf34f6ac36e3bbc1c0f8ff230c42ad66df2296c17b6ee3ae323fd46c365`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:52 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 14:57:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 14:57:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 14:57:56 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 26 Dec 2018 08:33:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 10:18:39 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 26 Dec 2018 10:22:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 10:22:14 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Wed, 26 Dec 2018 10:22:14 GMT
ENV NUXEO_USER=nuxeo
# Wed, 26 Dec 2018 10:22:14 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 26 Dec 2018 10:22:14 GMT
ENV HOME=/opt/nuxeo/server
# Wed, 26 Dec 2018 10:25:37 GMT
ARG NUXEO_VERSION=10.3
# Wed, 26 Dec 2018 10:25:37 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.3/nuxeo-server-10.3-tomcat.zip
# Wed, 26 Dec 2018 10:25:37 GMT
ARG NUXEO_MD5=e2f32f59ce6aebe06c5ac4c1971b1787
# Wed, 26 Dec 2018 10:25:38 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.3/nuxeo-server-10.3-tomcat.zip NUXEO_MD5=e2f32f59ce6aebe06c5ac4c1971b1787 NUXEO_VERSION=10.3
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 26 Dec 2018 10:26:10 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.3/nuxeo-server-10.3-tomcat.zip NUXEO_MD5=e2f32f59ce6aebe06c5ac4c1971b1787 NUXEO_VERSION=10.3
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Wed, 26 Dec 2018 10:26:10 GMT
COPY dir:1d4b19e1e35500d85eafcc58364498b9325f119ce19917cefc60c7ad98e600e7 in /opt/nuxeo/server/templates/docker 
# Wed, 26 Dec 2018 10:26:10 GMT
COPY file:8f1eb15b3cc87be8784ed6bc39c958a3a06d1e375bda2ce728f297d14d74d526 in /etc/nuxeo/nuxeo.conf.template 
# Wed, 26 Dec 2018 10:26:10 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Wed, 26 Dec 2018 10:26:17 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.3/nuxeo-server-10.3-tomcat.zip NUXEO_MD5=e2f32f59ce6aebe06c5ac4c1971b1787 NUXEO_VERSION=10.3
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Wed, 26 Dec 2018 10:26:18 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 10:26:18 GMT
WORKDIR /opt/nuxeo/server
# Wed, 26 Dec 2018 10:26:18 GMT
COPY file:d8f37458746cb2e17dae348b52babe8b858743784ee8dffc0c24d7026bf0e474 in / 
# Wed, 26 Dec 2018 10:26:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 10:26:18 GMT
EXPOSE 8080
# Wed, 26 Dec 2018 10:26:19 GMT
EXPOSE 8787
# Wed, 26 Dec 2018 10:26:19 GMT
CMD ["nuxeoctl" "console"]
# Wed, 26 Dec 2018 10:26:19 GMT
USER 1000
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da6b28682cfe6db721c143309125728417dca93643b3d8d4c22ae7fbb4eb940`  
		Last Modified: Fri, 16 Nov 2018 15:56:15 GMT  
		Size: 892.4 KB (892364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203f1094a1e2165da6f6ec505e8cffb8853d3c72a8088f41c25218121f883b0a`  
		Last Modified: Fri, 16 Nov 2018 15:56:14 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee38d9f85cf610794355dc0458445408ded4d648cbc45984cd259611a8a72cc3`  
		Last Modified: Fri, 16 Nov 2018 15:56:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebdd07b685f5edae77834586ddb9e56b434f4fe4e5b17ed164656595e34e8fbf`  
		Last Modified: Wed, 26 Dec 2018 08:40:22 GMT  
		Size: 134.0 MB (133976353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6cc909f393f940a3a842a9979461d645792d6305af3757edf7b69071349730`  
		Last Modified: Wed, 26 Dec 2018 10:28:33 GMT  
		Size: 255.1 MB (255085285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2182187867c0cac859cea4bfdaaaa8717d4fa600bd55d4f4581f27168ccbd2`  
		Last Modified: Wed, 26 Dec 2018 10:30:20 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea83fd155304aeaf71abbcdb4bff1c894ae5a8f365c2fdb9d84a2936e41331f2`  
		Last Modified: Wed, 26 Dec 2018 10:30:41 GMT  
		Size: 351.3 MB (351319257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868e9c95ff42d24ac5337dd99cd10404ee35fdf1de3c932ae10485da2b54b428`  
		Last Modified: Wed, 26 Dec 2018 10:30:18 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06bb23caa0d7af3bf0846c95a0fb1cba8a7a3a31b59d2a48e02f1aad64371dcc`  
		Last Modified: Wed, 26 Dec 2018 10:30:18 GMT  
		Size: 1.0 KB (1015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db8c9af2cf8b3cb8d766b7a3cf87705d691fad605d93eeaaf5b9531f79a470e`  
		Last Modified: Wed, 26 Dec 2018 10:30:41 GMT  
		Size: 351.3 MB (351320540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2c2053e2d7429088d1712f3b5535cbfc31d2e0b0ae8e164011bd678012de3b`  
		Last Modified: Wed, 26 Dec 2018 10:30:19 GMT  
		Size: 1.0 KB (1021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:7`

```console
$ docker pull nuxeo@sha256:81e7a1c0d55559bc927b840ea31f131a8d914d48768f98c719a4a92dce5f1d0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:7` - linux; amd64

```console
$ docker pull nuxeo@sha256:f7075d668f754971ece0dd1b471e44829a22db57b40eed8b42f673e8bff23ee9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1057462356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2070faf362feb23a9bfe6b11d2d31b0a236145d2ea31aec684d9b6ade00f57c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:52 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 14:57:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 14:57:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 14:57:56 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 26 Dec 2018 08:33:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 10:18:39 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 26 Dec 2018 10:20:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 10:20:12 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Wed, 26 Dec 2018 10:20:13 GMT
ENV NUXEO_USER=nuxeo
# Wed, 26 Dec 2018 10:20:13 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 26 Dec 2018 10:20:13 GMT
ENV HOME=/opt/nuxeo/server
# Wed, 26 Dec 2018 10:20:13 GMT
ARG NUXEO_VERSION=7.10
# Wed, 26 Dec 2018 10:20:13 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip
# Wed, 26 Dec 2018 10:20:13 GMT
ARG NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Wed, 26 Dec 2018 10:20:14 GMT
ENV LAUNCHER_DEBUG=-Djvmcheck=nofail
# Wed, 26 Dec 2018 10:20:14 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 26 Dec 2018 10:20:44 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Wed, 26 Dec 2018 10:20:52 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Wed, 26 Dec 2018 10:20:53 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d     && chmod g=u /etc/passwd
# Wed, 26 Dec 2018 10:20:53 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 10:20:54 GMT
WORKDIR /opt/nuxeo/server
# Wed, 26 Dec 2018 10:20:54 GMT
COPY file:b03749ac857d73dce5a6a9a97f2b99c07db8eccd08d95e8348f7f1eb81b70af8 in / 
# Wed, 26 Dec 2018 10:20:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 10:20:54 GMT
EXPOSE 8080
# Wed, 26 Dec 2018 10:20:54 GMT
EXPOSE 8787
# Wed, 26 Dec 2018 10:20:54 GMT
CMD ["nuxeoctl" "console"]
# Wed, 26 Dec 2018 10:20:55 GMT
USER 1000
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da6b28682cfe6db721c143309125728417dca93643b3d8d4c22ae7fbb4eb940`  
		Last Modified: Fri, 16 Nov 2018 15:56:15 GMT  
		Size: 892.4 KB (892364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203f1094a1e2165da6f6ec505e8cffb8853d3c72a8088f41c25218121f883b0a`  
		Last Modified: Fri, 16 Nov 2018 15:56:14 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee38d9f85cf610794355dc0458445408ded4d648cbc45984cd259611a8a72cc3`  
		Last Modified: Fri, 16 Nov 2018 15:56:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebdd07b685f5edae77834586ddb9e56b434f4fe4e5b17ed164656595e34e8fbf`  
		Last Modified: Wed, 26 Dec 2018 08:40:22 GMT  
		Size: 134.0 MB (133976353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5478846c9e79a6f60752b84763ce27e09fe0c7833ae6cf17fefd1c2f83fef51b`  
		Last Modified: Wed, 26 Dec 2018 10:27:32 GMT  
		Size: 251.2 MB (251204892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc5a1ebfecfe0bc66a4e86a858c544692ae5233ece23449bd87a40ec89496f22`  
		Last Modified: Wed, 26 Dec 2018 10:26:39 GMT  
		Size: 4.4 KB (4418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9b5786d2300ef2aad041773a66344e2de6aa46f7e068ada8d170a0bf41bd4e`  
		Last Modified: Wed, 26 Dec 2018 10:27:00 GMT  
		Size: 280.5 MB (280457932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab92233e25342c9294d3988fd8985594a19ee45419fb5c73c7e6baf182dc890`  
		Last Modified: Wed, 26 Dec 2018 10:27:02 GMT  
		Size: 280.5 MB (280459878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9229e0cae2b93b071b8d6d673f32fcb549833f959fa5702f951d8962f4e7af7d`  
		Last Modified: Wed, 26 Dec 2018 10:26:37 GMT  
		Size: 825.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6fd1b233626bec3172888fc4cc994a1bdd869665595a43e7e0a8979bf7347ae`  
		Last Modified: Wed, 26 Dec 2018 10:26:37 GMT  
		Size: 1.6 KB (1559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:7.10`

```console
$ docker pull nuxeo@sha256:81e7a1c0d55559bc927b840ea31f131a8d914d48768f98c719a4a92dce5f1d0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:7.10` - linux; amd64

```console
$ docker pull nuxeo@sha256:f7075d668f754971ece0dd1b471e44829a22db57b40eed8b42f673e8bff23ee9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1057462356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2070faf362feb23a9bfe6b11d2d31b0a236145d2ea31aec684d9b6ade00f57c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:52 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 14:57:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 14:57:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 14:57:56 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 26 Dec 2018 08:33:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 10:18:39 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 26 Dec 2018 10:20:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 10:20:12 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Wed, 26 Dec 2018 10:20:13 GMT
ENV NUXEO_USER=nuxeo
# Wed, 26 Dec 2018 10:20:13 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 26 Dec 2018 10:20:13 GMT
ENV HOME=/opt/nuxeo/server
# Wed, 26 Dec 2018 10:20:13 GMT
ARG NUXEO_VERSION=7.10
# Wed, 26 Dec 2018 10:20:13 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip
# Wed, 26 Dec 2018 10:20:13 GMT
ARG NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Wed, 26 Dec 2018 10:20:14 GMT
ENV LAUNCHER_DEBUG=-Djvmcheck=nofail
# Wed, 26 Dec 2018 10:20:14 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 26 Dec 2018 10:20:44 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Wed, 26 Dec 2018 10:20:52 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Wed, 26 Dec 2018 10:20:53 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d     && chmod g=u /etc/passwd
# Wed, 26 Dec 2018 10:20:53 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 10:20:54 GMT
WORKDIR /opt/nuxeo/server
# Wed, 26 Dec 2018 10:20:54 GMT
COPY file:b03749ac857d73dce5a6a9a97f2b99c07db8eccd08d95e8348f7f1eb81b70af8 in / 
# Wed, 26 Dec 2018 10:20:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 10:20:54 GMT
EXPOSE 8080
# Wed, 26 Dec 2018 10:20:54 GMT
EXPOSE 8787
# Wed, 26 Dec 2018 10:20:54 GMT
CMD ["nuxeoctl" "console"]
# Wed, 26 Dec 2018 10:20:55 GMT
USER 1000
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da6b28682cfe6db721c143309125728417dca93643b3d8d4c22ae7fbb4eb940`  
		Last Modified: Fri, 16 Nov 2018 15:56:15 GMT  
		Size: 892.4 KB (892364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203f1094a1e2165da6f6ec505e8cffb8853d3c72a8088f41c25218121f883b0a`  
		Last Modified: Fri, 16 Nov 2018 15:56:14 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee38d9f85cf610794355dc0458445408ded4d648cbc45984cd259611a8a72cc3`  
		Last Modified: Fri, 16 Nov 2018 15:56:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebdd07b685f5edae77834586ddb9e56b434f4fe4e5b17ed164656595e34e8fbf`  
		Last Modified: Wed, 26 Dec 2018 08:40:22 GMT  
		Size: 134.0 MB (133976353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5478846c9e79a6f60752b84763ce27e09fe0c7833ae6cf17fefd1c2f83fef51b`  
		Last Modified: Wed, 26 Dec 2018 10:27:32 GMT  
		Size: 251.2 MB (251204892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc5a1ebfecfe0bc66a4e86a858c544692ae5233ece23449bd87a40ec89496f22`  
		Last Modified: Wed, 26 Dec 2018 10:26:39 GMT  
		Size: 4.4 KB (4418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9b5786d2300ef2aad041773a66344e2de6aa46f7e068ada8d170a0bf41bd4e`  
		Last Modified: Wed, 26 Dec 2018 10:27:00 GMT  
		Size: 280.5 MB (280457932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab92233e25342c9294d3988fd8985594a19ee45419fb5c73c7e6baf182dc890`  
		Last Modified: Wed, 26 Dec 2018 10:27:02 GMT  
		Size: 280.5 MB (280459878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9229e0cae2b93b071b8d6d673f32fcb549833f959fa5702f951d8962f4e7af7d`  
		Last Modified: Wed, 26 Dec 2018 10:26:37 GMT  
		Size: 825.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6fd1b233626bec3172888fc4cc994a1bdd869665595a43e7e0a8979bf7347ae`  
		Last Modified: Wed, 26 Dec 2018 10:26:37 GMT  
		Size: 1.6 KB (1559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:8`

```console
$ docker pull nuxeo@sha256:563127d48214f77451692cc0ce1ac91af025cfa5e0102cb8fe03785bce7bbbf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:8` - linux; amd64

```console
$ docker pull nuxeo@sha256:a3de6f058f70062de0a1303488fcbf8e2da8df59f9aacb0e4b93cbb6400ee3b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1039671450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91a8649a8ee5cf84ee1e1b32f15f35178a0264872a9456c7c25823c86a432cc8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:52 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 14:57:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 14:57:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 14:57:56 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 26 Dec 2018 08:33:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 10:18:39 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 26 Dec 2018 10:22:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 10:22:14 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Wed, 26 Dec 2018 10:22:14 GMT
ENV NUXEO_USER=nuxeo
# Wed, 26 Dec 2018 10:22:14 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 26 Dec 2018 10:22:14 GMT
ENV HOME=/opt/nuxeo/server
# Wed, 26 Dec 2018 10:22:15 GMT
ARG NUXEO_VERSION=8.10
# Wed, 26 Dec 2018 10:22:15 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip
# Wed, 26 Dec 2018 10:22:15 GMT
ARG NUXEO_MD5=29e67a19bba54099093b51d892926be1
# Wed, 26 Dec 2018 10:22:16 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 26 Dec 2018 10:22:45 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Wed, 26 Dec 2018 10:22:50 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Wed, 26 Dec 2018 10:22:51 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d     && chmod g=u /etc/passwd
# Wed, 26 Dec 2018 10:22:51 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 10:22:51 GMT
WORKDIR /opt/nuxeo/server
# Wed, 26 Dec 2018 10:22:52 GMT
COPY file:b03749ac857d73dce5a6a9a97f2b99c07db8eccd08d95e8348f7f1eb81b70af8 in / 
# Wed, 26 Dec 2018 10:22:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 10:22:52 GMT
EXPOSE 8080
# Wed, 26 Dec 2018 10:22:52 GMT
EXPOSE 8787
# Wed, 26 Dec 2018 10:22:52 GMT
CMD ["nuxeoctl" "console"]
# Wed, 26 Dec 2018 10:22:52 GMT
USER 1000
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da6b28682cfe6db721c143309125728417dca93643b3d8d4c22ae7fbb4eb940`  
		Last Modified: Fri, 16 Nov 2018 15:56:15 GMT  
		Size: 892.4 KB (892364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203f1094a1e2165da6f6ec505e8cffb8853d3c72a8088f41c25218121f883b0a`  
		Last Modified: Fri, 16 Nov 2018 15:56:14 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee38d9f85cf610794355dc0458445408ded4d648cbc45984cd259611a8a72cc3`  
		Last Modified: Fri, 16 Nov 2018 15:56:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebdd07b685f5edae77834586ddb9e56b434f4fe4e5b17ed164656595e34e8fbf`  
		Last Modified: Wed, 26 Dec 2018 08:40:22 GMT  
		Size: 134.0 MB (133976353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6cc909f393f940a3a842a9979461d645792d6305af3757edf7b69071349730`  
		Last Modified: Wed, 26 Dec 2018 10:28:33 GMT  
		Size: 255.1 MB (255085285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed11de488d6a72957ac470cd9745ec3d6bf31582b4f5c37383e3281fb24e5303`  
		Last Modified: Wed, 26 Dec 2018 10:27:40 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f3df2df13ca168834ae94b6374c3ad92d9cca4d87d2644f2f9b05f596c9ac9`  
		Last Modified: Wed, 26 Dec 2018 10:28:02 GMT  
		Size: 269.6 MB (269622104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5560145b24cfd211f0146c5a9e21eae0a9a63e6820a129706b5edb2b6c494807`  
		Last Modified: Wed, 26 Dec 2018 10:28:08 GMT  
		Size: 269.6 MB (269624412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f9271d8bf7bfce5ce5a09468becc0699ac60876663caa43e3295e0563206c9`  
		Last Modified: Wed, 26 Dec 2018 10:27:41 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6446c477c2351be623acb0d69495db73ed1d6f9173df9389f9d39d71414f9234`  
		Last Modified: Wed, 26 Dec 2018 10:27:41 GMT  
		Size: 1.6 KB (1559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:8.10`

```console
$ docker pull nuxeo@sha256:563127d48214f77451692cc0ce1ac91af025cfa5e0102cb8fe03785bce7bbbf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:8.10` - linux; amd64

```console
$ docker pull nuxeo@sha256:a3de6f058f70062de0a1303488fcbf8e2da8df59f9aacb0e4b93cbb6400ee3b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1039671450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91a8649a8ee5cf84ee1e1b32f15f35178a0264872a9456c7c25823c86a432cc8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:52 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 14:57:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 14:57:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 14:57:56 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 26 Dec 2018 08:33:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 10:18:39 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 26 Dec 2018 10:22:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 10:22:14 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Wed, 26 Dec 2018 10:22:14 GMT
ENV NUXEO_USER=nuxeo
# Wed, 26 Dec 2018 10:22:14 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 26 Dec 2018 10:22:14 GMT
ENV HOME=/opt/nuxeo/server
# Wed, 26 Dec 2018 10:22:15 GMT
ARG NUXEO_VERSION=8.10
# Wed, 26 Dec 2018 10:22:15 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip
# Wed, 26 Dec 2018 10:22:15 GMT
ARG NUXEO_MD5=29e67a19bba54099093b51d892926be1
# Wed, 26 Dec 2018 10:22:16 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 26 Dec 2018 10:22:45 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Wed, 26 Dec 2018 10:22:50 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Wed, 26 Dec 2018 10:22:51 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d     && chmod g=u /etc/passwd
# Wed, 26 Dec 2018 10:22:51 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 10:22:51 GMT
WORKDIR /opt/nuxeo/server
# Wed, 26 Dec 2018 10:22:52 GMT
COPY file:b03749ac857d73dce5a6a9a97f2b99c07db8eccd08d95e8348f7f1eb81b70af8 in / 
# Wed, 26 Dec 2018 10:22:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 10:22:52 GMT
EXPOSE 8080
# Wed, 26 Dec 2018 10:22:52 GMT
EXPOSE 8787
# Wed, 26 Dec 2018 10:22:52 GMT
CMD ["nuxeoctl" "console"]
# Wed, 26 Dec 2018 10:22:52 GMT
USER 1000
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da6b28682cfe6db721c143309125728417dca93643b3d8d4c22ae7fbb4eb940`  
		Last Modified: Fri, 16 Nov 2018 15:56:15 GMT  
		Size: 892.4 KB (892364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203f1094a1e2165da6f6ec505e8cffb8853d3c72a8088f41c25218121f883b0a`  
		Last Modified: Fri, 16 Nov 2018 15:56:14 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee38d9f85cf610794355dc0458445408ded4d648cbc45984cd259611a8a72cc3`  
		Last Modified: Fri, 16 Nov 2018 15:56:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebdd07b685f5edae77834586ddb9e56b434f4fe4e5b17ed164656595e34e8fbf`  
		Last Modified: Wed, 26 Dec 2018 08:40:22 GMT  
		Size: 134.0 MB (133976353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6cc909f393f940a3a842a9979461d645792d6305af3757edf7b69071349730`  
		Last Modified: Wed, 26 Dec 2018 10:28:33 GMT  
		Size: 255.1 MB (255085285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed11de488d6a72957ac470cd9745ec3d6bf31582b4f5c37383e3281fb24e5303`  
		Last Modified: Wed, 26 Dec 2018 10:27:40 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f3df2df13ca168834ae94b6374c3ad92d9cca4d87d2644f2f9b05f596c9ac9`  
		Last Modified: Wed, 26 Dec 2018 10:28:02 GMT  
		Size: 269.6 MB (269622104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5560145b24cfd211f0146c5a9e21eae0a9a63e6820a129706b5edb2b6c494807`  
		Last Modified: Wed, 26 Dec 2018 10:28:08 GMT  
		Size: 269.6 MB (269624412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f9271d8bf7bfce5ce5a09468becc0699ac60876663caa43e3295e0563206c9`  
		Last Modified: Wed, 26 Dec 2018 10:27:41 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6446c477c2351be623acb0d69495db73ed1d6f9173df9389f9d39d71414f9234`  
		Last Modified: Wed, 26 Dec 2018 10:27:41 GMT  
		Size: 1.6 KB (1559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:9`

```console
$ docker pull nuxeo@sha256:4fa2ef96f233bac43865bff66da4dea4fec36f3a98ff7333b6920610ac17e0ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:9` - linux; amd64

```console
$ docker pull nuxeo@sha256:0ed345bc72d70d4817516892a395d5c35dd6519009ac777785296c1bdb872c28
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1270731529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e544c37ad49363e314d41195421459aaadae990b616d376cdfea4870464690c4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:52 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 14:57:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 14:57:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 14:57:56 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 26 Dec 2018 08:33:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 10:18:39 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 26 Dec 2018 10:22:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 10:22:14 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Wed, 26 Dec 2018 10:22:14 GMT
ENV NUXEO_USER=nuxeo
# Wed, 26 Dec 2018 10:22:14 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 26 Dec 2018 10:22:14 GMT
ENV HOME=/opt/nuxeo/server
# Wed, 26 Dec 2018 10:23:06 GMT
ARG NUXEO_VERSION=9.10
# Wed, 26 Dec 2018 10:23:06 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip
# Wed, 26 Dec 2018 10:23:06 GMT
ARG NUXEO_MD5=327d23bbd5558565694027b11c0dd82a
# Wed, 26 Dec 2018 10:23:07 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 26 Dec 2018 10:23:37 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Wed, 26 Dec 2018 10:23:37 GMT
COPY dir:1d4b19e1e35500d85eafcc58364498b9325f119ce19917cefc60c7ad98e600e7 in /opt/nuxeo/server/templates/docker 
# Wed, 26 Dec 2018 10:23:37 GMT
COPY file:8f1eb15b3cc87be8784ed6bc39c958a3a06d1e375bda2ce728f297d14d74d526 in /etc/nuxeo/nuxeo.conf.template 
# Wed, 26 Dec 2018 10:23:37 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Wed, 26 Dec 2018 10:23:44 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Wed, 26 Dec 2018 10:23:45 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 10:23:45 GMT
WORKDIR /opt/nuxeo/server
# Wed, 26 Dec 2018 10:23:45 GMT
COPY file:d8f37458746cb2e17dae348b52babe8b858743784ee8dffc0c24d7026bf0e474 in / 
# Wed, 26 Dec 2018 10:23:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 10:23:45 GMT
EXPOSE 8080
# Wed, 26 Dec 2018 10:23:46 GMT
EXPOSE 8787
# Wed, 26 Dec 2018 10:23:46 GMT
CMD ["nuxeoctl" "console"]
# Wed, 26 Dec 2018 10:23:46 GMT
USER 1000
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da6b28682cfe6db721c143309125728417dca93643b3d8d4c22ae7fbb4eb940`  
		Last Modified: Fri, 16 Nov 2018 15:56:15 GMT  
		Size: 892.4 KB (892364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203f1094a1e2165da6f6ec505e8cffb8853d3c72a8088f41c25218121f883b0a`  
		Last Modified: Fri, 16 Nov 2018 15:56:14 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee38d9f85cf610794355dc0458445408ded4d648cbc45984cd259611a8a72cc3`  
		Last Modified: Fri, 16 Nov 2018 15:56:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebdd07b685f5edae77834586ddb9e56b434f4fe4e5b17ed164656595e34e8fbf`  
		Last Modified: Wed, 26 Dec 2018 08:40:22 GMT  
		Size: 134.0 MB (133976353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6cc909f393f940a3a842a9979461d645792d6305af3757edf7b69071349730`  
		Last Modified: Wed, 26 Dec 2018 10:28:33 GMT  
		Size: 255.1 MB (255085285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933fc12c1c90612ba371f768ec874a5664520bb192737f427d05af132240ac55`  
		Last Modified: Wed, 26 Dec 2018 10:28:39 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:578876ed3d22d0c02f6fee8cfb46ea3876165549ab1483322f5c8ab3fdfa5d06`  
		Last Modified: Wed, 26 Dec 2018 10:29:02 GMT  
		Size: 385.2 MB (385151569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67c3284150f4f19d89c1232f634855e3dd9b1f66e67770ae541061f9237e5471`  
		Last Modified: Wed, 26 Dec 2018 10:28:38 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ac6e1029f5483cc331998a686948d3a37b1ce35bbace503f1fad5dfaa458ee`  
		Last Modified: Wed, 26 Dec 2018 10:28:38 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e18287bc2029155922e3c2937cef98e1d0558df12e61004dd27c763ddd933a8e`  
		Last Modified: Wed, 26 Dec 2018 10:29:04 GMT  
		Size: 385.2 MB (385154768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba1990fad3dbb93d500dee66256971a1e3587af1c3ce20374007875998cfe1d`  
		Last Modified: Wed, 26 Dec 2018 10:28:38 GMT  
		Size: 1.0 KB (1022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:9.10`

```console
$ docker pull nuxeo@sha256:4fa2ef96f233bac43865bff66da4dea4fec36f3a98ff7333b6920610ac17e0ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:9.10` - linux; amd64

```console
$ docker pull nuxeo@sha256:0ed345bc72d70d4817516892a395d5c35dd6519009ac777785296c1bdb872c28
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1270731529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e544c37ad49363e314d41195421459aaadae990b616d376cdfea4870464690c4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:52 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 14:57:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 14:57:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 14:57:56 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 26 Dec 2018 08:33:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 10:18:39 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 26 Dec 2018 10:22:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 10:22:14 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Wed, 26 Dec 2018 10:22:14 GMT
ENV NUXEO_USER=nuxeo
# Wed, 26 Dec 2018 10:22:14 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 26 Dec 2018 10:22:14 GMT
ENV HOME=/opt/nuxeo/server
# Wed, 26 Dec 2018 10:23:06 GMT
ARG NUXEO_VERSION=9.10
# Wed, 26 Dec 2018 10:23:06 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip
# Wed, 26 Dec 2018 10:23:06 GMT
ARG NUXEO_MD5=327d23bbd5558565694027b11c0dd82a
# Wed, 26 Dec 2018 10:23:07 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 26 Dec 2018 10:23:37 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Wed, 26 Dec 2018 10:23:37 GMT
COPY dir:1d4b19e1e35500d85eafcc58364498b9325f119ce19917cefc60c7ad98e600e7 in /opt/nuxeo/server/templates/docker 
# Wed, 26 Dec 2018 10:23:37 GMT
COPY file:8f1eb15b3cc87be8784ed6bc39c958a3a06d1e375bda2ce728f297d14d74d526 in /etc/nuxeo/nuxeo.conf.template 
# Wed, 26 Dec 2018 10:23:37 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Wed, 26 Dec 2018 10:23:44 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Wed, 26 Dec 2018 10:23:45 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 10:23:45 GMT
WORKDIR /opt/nuxeo/server
# Wed, 26 Dec 2018 10:23:45 GMT
COPY file:d8f37458746cb2e17dae348b52babe8b858743784ee8dffc0c24d7026bf0e474 in / 
# Wed, 26 Dec 2018 10:23:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 10:23:45 GMT
EXPOSE 8080
# Wed, 26 Dec 2018 10:23:46 GMT
EXPOSE 8787
# Wed, 26 Dec 2018 10:23:46 GMT
CMD ["nuxeoctl" "console"]
# Wed, 26 Dec 2018 10:23:46 GMT
USER 1000
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da6b28682cfe6db721c143309125728417dca93643b3d8d4c22ae7fbb4eb940`  
		Last Modified: Fri, 16 Nov 2018 15:56:15 GMT  
		Size: 892.4 KB (892364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203f1094a1e2165da6f6ec505e8cffb8853d3c72a8088f41c25218121f883b0a`  
		Last Modified: Fri, 16 Nov 2018 15:56:14 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee38d9f85cf610794355dc0458445408ded4d648cbc45984cd259611a8a72cc3`  
		Last Modified: Fri, 16 Nov 2018 15:56:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebdd07b685f5edae77834586ddb9e56b434f4fe4e5b17ed164656595e34e8fbf`  
		Last Modified: Wed, 26 Dec 2018 08:40:22 GMT  
		Size: 134.0 MB (133976353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6cc909f393f940a3a842a9979461d645792d6305af3757edf7b69071349730`  
		Last Modified: Wed, 26 Dec 2018 10:28:33 GMT  
		Size: 255.1 MB (255085285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933fc12c1c90612ba371f768ec874a5664520bb192737f427d05af132240ac55`  
		Last Modified: Wed, 26 Dec 2018 10:28:39 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:578876ed3d22d0c02f6fee8cfb46ea3876165549ab1483322f5c8ab3fdfa5d06`  
		Last Modified: Wed, 26 Dec 2018 10:29:02 GMT  
		Size: 385.2 MB (385151569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67c3284150f4f19d89c1232f634855e3dd9b1f66e67770ae541061f9237e5471`  
		Last Modified: Wed, 26 Dec 2018 10:28:38 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ac6e1029f5483cc331998a686948d3a37b1ce35bbace503f1fad5dfaa458ee`  
		Last Modified: Wed, 26 Dec 2018 10:28:38 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e18287bc2029155922e3c2937cef98e1d0558df12e61004dd27c763ddd933a8e`  
		Last Modified: Wed, 26 Dec 2018 10:29:04 GMT  
		Size: 385.2 MB (385154768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba1990fad3dbb93d500dee66256971a1e3587af1c3ce20374007875998cfe1d`  
		Last Modified: Wed, 26 Dec 2018 10:28:38 GMT  
		Size: 1.0 KB (1022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:FT`

```console
$ docker pull nuxeo@sha256:112ca2e8f1a42087b357387491ac9621216db809c6ad5eb74c54814a479c5c21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:FT` - linux; amd64

```console
$ docker pull nuxeo@sha256:90697054db8f689d1be2473e0ce750642adec9cb69e4fbf3a51183fa375504b9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 GB (1203064988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cb4ccf34f6ac36e3bbc1c0f8ff230c42ad66df2296c17b6ee3ae323fd46c365`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:52 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 14:57:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 14:57:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 14:57:56 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 26 Dec 2018 08:33:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 10:18:39 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 26 Dec 2018 10:22:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 10:22:14 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Wed, 26 Dec 2018 10:22:14 GMT
ENV NUXEO_USER=nuxeo
# Wed, 26 Dec 2018 10:22:14 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 26 Dec 2018 10:22:14 GMT
ENV HOME=/opt/nuxeo/server
# Wed, 26 Dec 2018 10:25:37 GMT
ARG NUXEO_VERSION=10.3
# Wed, 26 Dec 2018 10:25:37 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.3/nuxeo-server-10.3-tomcat.zip
# Wed, 26 Dec 2018 10:25:37 GMT
ARG NUXEO_MD5=e2f32f59ce6aebe06c5ac4c1971b1787
# Wed, 26 Dec 2018 10:25:38 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.3/nuxeo-server-10.3-tomcat.zip NUXEO_MD5=e2f32f59ce6aebe06c5ac4c1971b1787 NUXEO_VERSION=10.3
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 26 Dec 2018 10:26:10 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.3/nuxeo-server-10.3-tomcat.zip NUXEO_MD5=e2f32f59ce6aebe06c5ac4c1971b1787 NUXEO_VERSION=10.3
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Wed, 26 Dec 2018 10:26:10 GMT
COPY dir:1d4b19e1e35500d85eafcc58364498b9325f119ce19917cefc60c7ad98e600e7 in /opt/nuxeo/server/templates/docker 
# Wed, 26 Dec 2018 10:26:10 GMT
COPY file:8f1eb15b3cc87be8784ed6bc39c958a3a06d1e375bda2ce728f297d14d74d526 in /etc/nuxeo/nuxeo.conf.template 
# Wed, 26 Dec 2018 10:26:10 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Wed, 26 Dec 2018 10:26:17 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.3/nuxeo-server-10.3-tomcat.zip NUXEO_MD5=e2f32f59ce6aebe06c5ac4c1971b1787 NUXEO_VERSION=10.3
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Wed, 26 Dec 2018 10:26:18 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 10:26:18 GMT
WORKDIR /opt/nuxeo/server
# Wed, 26 Dec 2018 10:26:18 GMT
COPY file:d8f37458746cb2e17dae348b52babe8b858743784ee8dffc0c24d7026bf0e474 in / 
# Wed, 26 Dec 2018 10:26:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 10:26:18 GMT
EXPOSE 8080
# Wed, 26 Dec 2018 10:26:19 GMT
EXPOSE 8787
# Wed, 26 Dec 2018 10:26:19 GMT
CMD ["nuxeoctl" "console"]
# Wed, 26 Dec 2018 10:26:19 GMT
USER 1000
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da6b28682cfe6db721c143309125728417dca93643b3d8d4c22ae7fbb4eb940`  
		Last Modified: Fri, 16 Nov 2018 15:56:15 GMT  
		Size: 892.4 KB (892364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203f1094a1e2165da6f6ec505e8cffb8853d3c72a8088f41c25218121f883b0a`  
		Last Modified: Fri, 16 Nov 2018 15:56:14 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee38d9f85cf610794355dc0458445408ded4d648cbc45984cd259611a8a72cc3`  
		Last Modified: Fri, 16 Nov 2018 15:56:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebdd07b685f5edae77834586ddb9e56b434f4fe4e5b17ed164656595e34e8fbf`  
		Last Modified: Wed, 26 Dec 2018 08:40:22 GMT  
		Size: 134.0 MB (133976353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6cc909f393f940a3a842a9979461d645792d6305af3757edf7b69071349730`  
		Last Modified: Wed, 26 Dec 2018 10:28:33 GMT  
		Size: 255.1 MB (255085285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2182187867c0cac859cea4bfdaaaa8717d4fa600bd55d4f4581f27168ccbd2`  
		Last Modified: Wed, 26 Dec 2018 10:30:20 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea83fd155304aeaf71abbcdb4bff1c894ae5a8f365c2fdb9d84a2936e41331f2`  
		Last Modified: Wed, 26 Dec 2018 10:30:41 GMT  
		Size: 351.3 MB (351319257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868e9c95ff42d24ac5337dd99cd10404ee35fdf1de3c932ae10485da2b54b428`  
		Last Modified: Wed, 26 Dec 2018 10:30:18 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06bb23caa0d7af3bf0846c95a0fb1cba8a7a3a31b59d2a48e02f1aad64371dcc`  
		Last Modified: Wed, 26 Dec 2018 10:30:18 GMT  
		Size: 1.0 KB (1015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db8c9af2cf8b3cb8d766b7a3cf87705d691fad605d93eeaaf5b9531f79a470e`  
		Last Modified: Wed, 26 Dec 2018 10:30:41 GMT  
		Size: 351.3 MB (351320540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2c2053e2d7429088d1712f3b5535cbfc31d2e0b0ae8e164011bd678012de3b`  
		Last Modified: Wed, 26 Dec 2018 10:30:19 GMT  
		Size: 1.0 KB (1021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:latest`

```console
$ docker pull nuxeo@sha256:112ca2e8f1a42087b357387491ac9621216db809c6ad5eb74c54814a479c5c21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:latest` - linux; amd64

```console
$ docker pull nuxeo@sha256:90697054db8f689d1be2473e0ce750642adec9cb69e4fbf3a51183fa375504b9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 GB (1203064988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5cb4ccf34f6ac36e3bbc1c0f8ff230c42ad66df2296c17b6ee3ae323fd46c365`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:52 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 14:57:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 14:57:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 14:57:56 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 26 Dec 2018 08:33:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 10:18:39 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 26 Dec 2018 10:22:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 10:22:14 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Wed, 26 Dec 2018 10:22:14 GMT
ENV NUXEO_USER=nuxeo
# Wed, 26 Dec 2018 10:22:14 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 26 Dec 2018 10:22:14 GMT
ENV HOME=/opt/nuxeo/server
# Wed, 26 Dec 2018 10:25:37 GMT
ARG NUXEO_VERSION=10.3
# Wed, 26 Dec 2018 10:25:37 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.3/nuxeo-server-10.3-tomcat.zip
# Wed, 26 Dec 2018 10:25:37 GMT
ARG NUXEO_MD5=e2f32f59ce6aebe06c5ac4c1971b1787
# Wed, 26 Dec 2018 10:25:38 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.3/nuxeo-server-10.3-tomcat.zip NUXEO_MD5=e2f32f59ce6aebe06c5ac4c1971b1787 NUXEO_VERSION=10.3
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 26 Dec 2018 10:26:10 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.3/nuxeo-server-10.3-tomcat.zip NUXEO_MD5=e2f32f59ce6aebe06c5ac4c1971b1787 NUXEO_VERSION=10.3
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Wed, 26 Dec 2018 10:26:10 GMT
COPY dir:1d4b19e1e35500d85eafcc58364498b9325f119ce19917cefc60c7ad98e600e7 in /opt/nuxeo/server/templates/docker 
# Wed, 26 Dec 2018 10:26:10 GMT
COPY file:8f1eb15b3cc87be8784ed6bc39c958a3a06d1e375bda2ce728f297d14d74d526 in /etc/nuxeo/nuxeo.conf.template 
# Wed, 26 Dec 2018 10:26:10 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Wed, 26 Dec 2018 10:26:17 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.3/nuxeo-server-10.3-tomcat.zip NUXEO_MD5=e2f32f59ce6aebe06c5ac4c1971b1787 NUXEO_VERSION=10.3
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Wed, 26 Dec 2018 10:26:18 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 10:26:18 GMT
WORKDIR /opt/nuxeo/server
# Wed, 26 Dec 2018 10:26:18 GMT
COPY file:d8f37458746cb2e17dae348b52babe8b858743784ee8dffc0c24d7026bf0e474 in / 
# Wed, 26 Dec 2018 10:26:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 10:26:18 GMT
EXPOSE 8080
# Wed, 26 Dec 2018 10:26:19 GMT
EXPOSE 8787
# Wed, 26 Dec 2018 10:26:19 GMT
CMD ["nuxeoctl" "console"]
# Wed, 26 Dec 2018 10:26:19 GMT
USER 1000
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da6b28682cfe6db721c143309125728417dca93643b3d8d4c22ae7fbb4eb940`  
		Last Modified: Fri, 16 Nov 2018 15:56:15 GMT  
		Size: 892.4 KB (892364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203f1094a1e2165da6f6ec505e8cffb8853d3c72a8088f41c25218121f883b0a`  
		Last Modified: Fri, 16 Nov 2018 15:56:14 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee38d9f85cf610794355dc0458445408ded4d648cbc45984cd259611a8a72cc3`  
		Last Modified: Fri, 16 Nov 2018 15:56:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebdd07b685f5edae77834586ddb9e56b434f4fe4e5b17ed164656595e34e8fbf`  
		Last Modified: Wed, 26 Dec 2018 08:40:22 GMT  
		Size: 134.0 MB (133976353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6cc909f393f940a3a842a9979461d645792d6305af3757edf7b69071349730`  
		Last Modified: Wed, 26 Dec 2018 10:28:33 GMT  
		Size: 255.1 MB (255085285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f2182187867c0cac859cea4bfdaaaa8717d4fa600bd55d4f4581f27168ccbd2`  
		Last Modified: Wed, 26 Dec 2018 10:30:20 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea83fd155304aeaf71abbcdb4bff1c894ae5a8f365c2fdb9d84a2936e41331f2`  
		Last Modified: Wed, 26 Dec 2018 10:30:41 GMT  
		Size: 351.3 MB (351319257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868e9c95ff42d24ac5337dd99cd10404ee35fdf1de3c932ae10485da2b54b428`  
		Last Modified: Wed, 26 Dec 2018 10:30:18 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06bb23caa0d7af3bf0846c95a0fb1cba8a7a3a31b59d2a48e02f1aad64371dcc`  
		Last Modified: Wed, 26 Dec 2018 10:30:18 GMT  
		Size: 1.0 KB (1015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db8c9af2cf8b3cb8d766b7a3cf87705d691fad605d93eeaaf5b9531f79a470e`  
		Last Modified: Wed, 26 Dec 2018 10:30:41 GMT  
		Size: 351.3 MB (351320540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2c2053e2d7429088d1712f3b5535cbfc31d2e0b0ae8e164011bd678012de3b`  
		Last Modified: Wed, 26 Dec 2018 10:30:19 GMT  
		Size: 1.0 KB (1021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS`

```console
$ docker pull nuxeo@sha256:4fa2ef96f233bac43865bff66da4dea4fec36f3a98ff7333b6920610ac17e0ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:LTS` - linux; amd64

```console
$ docker pull nuxeo@sha256:0ed345bc72d70d4817516892a395d5c35dd6519009ac777785296c1bdb872c28
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1270731529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e544c37ad49363e314d41195421459aaadae990b616d376cdfea4870464690c4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:52 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 14:57:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 14:57:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 14:57:56 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 26 Dec 2018 08:33:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 10:18:39 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 26 Dec 2018 10:22:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 10:22:14 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Wed, 26 Dec 2018 10:22:14 GMT
ENV NUXEO_USER=nuxeo
# Wed, 26 Dec 2018 10:22:14 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 26 Dec 2018 10:22:14 GMT
ENV HOME=/opt/nuxeo/server
# Wed, 26 Dec 2018 10:23:06 GMT
ARG NUXEO_VERSION=9.10
# Wed, 26 Dec 2018 10:23:06 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip
# Wed, 26 Dec 2018 10:23:06 GMT
ARG NUXEO_MD5=327d23bbd5558565694027b11c0dd82a
# Wed, 26 Dec 2018 10:23:07 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 26 Dec 2018 10:23:37 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Wed, 26 Dec 2018 10:23:37 GMT
COPY dir:1d4b19e1e35500d85eafcc58364498b9325f119ce19917cefc60c7ad98e600e7 in /opt/nuxeo/server/templates/docker 
# Wed, 26 Dec 2018 10:23:37 GMT
COPY file:8f1eb15b3cc87be8784ed6bc39c958a3a06d1e375bda2ce728f297d14d74d526 in /etc/nuxeo/nuxeo.conf.template 
# Wed, 26 Dec 2018 10:23:37 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Wed, 26 Dec 2018 10:23:44 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Wed, 26 Dec 2018 10:23:45 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 10:23:45 GMT
WORKDIR /opt/nuxeo/server
# Wed, 26 Dec 2018 10:23:45 GMT
COPY file:d8f37458746cb2e17dae348b52babe8b858743784ee8dffc0c24d7026bf0e474 in / 
# Wed, 26 Dec 2018 10:23:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 10:23:45 GMT
EXPOSE 8080
# Wed, 26 Dec 2018 10:23:46 GMT
EXPOSE 8787
# Wed, 26 Dec 2018 10:23:46 GMT
CMD ["nuxeoctl" "console"]
# Wed, 26 Dec 2018 10:23:46 GMT
USER 1000
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da6b28682cfe6db721c143309125728417dca93643b3d8d4c22ae7fbb4eb940`  
		Last Modified: Fri, 16 Nov 2018 15:56:15 GMT  
		Size: 892.4 KB (892364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203f1094a1e2165da6f6ec505e8cffb8853d3c72a8088f41c25218121f883b0a`  
		Last Modified: Fri, 16 Nov 2018 15:56:14 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee38d9f85cf610794355dc0458445408ded4d648cbc45984cd259611a8a72cc3`  
		Last Modified: Fri, 16 Nov 2018 15:56:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebdd07b685f5edae77834586ddb9e56b434f4fe4e5b17ed164656595e34e8fbf`  
		Last Modified: Wed, 26 Dec 2018 08:40:22 GMT  
		Size: 134.0 MB (133976353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6cc909f393f940a3a842a9979461d645792d6305af3757edf7b69071349730`  
		Last Modified: Wed, 26 Dec 2018 10:28:33 GMT  
		Size: 255.1 MB (255085285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933fc12c1c90612ba371f768ec874a5664520bb192737f427d05af132240ac55`  
		Last Modified: Wed, 26 Dec 2018 10:28:39 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:578876ed3d22d0c02f6fee8cfb46ea3876165549ab1483322f5c8ab3fdfa5d06`  
		Last Modified: Wed, 26 Dec 2018 10:29:02 GMT  
		Size: 385.2 MB (385151569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67c3284150f4f19d89c1232f634855e3dd9b1f66e67770ae541061f9237e5471`  
		Last Modified: Wed, 26 Dec 2018 10:28:38 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ac6e1029f5483cc331998a686948d3a37b1ce35bbace503f1fad5dfaa458ee`  
		Last Modified: Wed, 26 Dec 2018 10:28:38 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e18287bc2029155922e3c2937cef98e1d0558df12e61004dd27c763ddd933a8e`  
		Last Modified: Wed, 26 Dec 2018 10:29:04 GMT  
		Size: 385.2 MB (385154768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba1990fad3dbb93d500dee66256971a1e3587af1c3ce20374007875998cfe1d`  
		Last Modified: Wed, 26 Dec 2018 10:28:38 GMT  
		Size: 1.0 KB (1022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS-2015`

```console
$ docker pull nuxeo@sha256:81e7a1c0d55559bc927b840ea31f131a8d914d48768f98c719a4a92dce5f1d0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:LTS-2015` - linux; amd64

```console
$ docker pull nuxeo@sha256:f7075d668f754971ece0dd1b471e44829a22db57b40eed8b42f673e8bff23ee9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.1 GB (1057462356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2070faf362feb23a9bfe6b11d2d31b0a236145d2ea31aec684d9b6ade00f57c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:52 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 14:57:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 14:57:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 14:57:56 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 26 Dec 2018 08:33:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 10:18:39 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 26 Dec 2018 10:20:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 10:20:12 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Wed, 26 Dec 2018 10:20:13 GMT
ENV NUXEO_USER=nuxeo
# Wed, 26 Dec 2018 10:20:13 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 26 Dec 2018 10:20:13 GMT
ENV HOME=/opt/nuxeo/server
# Wed, 26 Dec 2018 10:20:13 GMT
ARG NUXEO_VERSION=7.10
# Wed, 26 Dec 2018 10:20:13 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip
# Wed, 26 Dec 2018 10:20:13 GMT
ARG NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Wed, 26 Dec 2018 10:20:14 GMT
ENV LAUNCHER_DEBUG=-Djvmcheck=nofail
# Wed, 26 Dec 2018 10:20:14 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 26 Dec 2018 10:20:44 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Wed, 26 Dec 2018 10:20:52 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Wed, 26 Dec 2018 10:20:53 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d     && chmod g=u /etc/passwd
# Wed, 26 Dec 2018 10:20:53 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 10:20:54 GMT
WORKDIR /opt/nuxeo/server
# Wed, 26 Dec 2018 10:20:54 GMT
COPY file:b03749ac857d73dce5a6a9a97f2b99c07db8eccd08d95e8348f7f1eb81b70af8 in / 
# Wed, 26 Dec 2018 10:20:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 10:20:54 GMT
EXPOSE 8080
# Wed, 26 Dec 2018 10:20:54 GMT
EXPOSE 8787
# Wed, 26 Dec 2018 10:20:54 GMT
CMD ["nuxeoctl" "console"]
# Wed, 26 Dec 2018 10:20:55 GMT
USER 1000
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da6b28682cfe6db721c143309125728417dca93643b3d8d4c22ae7fbb4eb940`  
		Last Modified: Fri, 16 Nov 2018 15:56:15 GMT  
		Size: 892.4 KB (892364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203f1094a1e2165da6f6ec505e8cffb8853d3c72a8088f41c25218121f883b0a`  
		Last Modified: Fri, 16 Nov 2018 15:56:14 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee38d9f85cf610794355dc0458445408ded4d648cbc45984cd259611a8a72cc3`  
		Last Modified: Fri, 16 Nov 2018 15:56:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebdd07b685f5edae77834586ddb9e56b434f4fe4e5b17ed164656595e34e8fbf`  
		Last Modified: Wed, 26 Dec 2018 08:40:22 GMT  
		Size: 134.0 MB (133976353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5478846c9e79a6f60752b84763ce27e09fe0c7833ae6cf17fefd1c2f83fef51b`  
		Last Modified: Wed, 26 Dec 2018 10:27:32 GMT  
		Size: 251.2 MB (251204892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc5a1ebfecfe0bc66a4e86a858c544692ae5233ece23449bd87a40ec89496f22`  
		Last Modified: Wed, 26 Dec 2018 10:26:39 GMT  
		Size: 4.4 KB (4418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9b5786d2300ef2aad041773a66344e2de6aa46f7e068ada8d170a0bf41bd4e`  
		Last Modified: Wed, 26 Dec 2018 10:27:00 GMT  
		Size: 280.5 MB (280457932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab92233e25342c9294d3988fd8985594a19ee45419fb5c73c7e6baf182dc890`  
		Last Modified: Wed, 26 Dec 2018 10:27:02 GMT  
		Size: 280.5 MB (280459878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9229e0cae2b93b071b8d6d673f32fcb549833f959fa5702f951d8962f4e7af7d`  
		Last Modified: Wed, 26 Dec 2018 10:26:37 GMT  
		Size: 825.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6fd1b233626bec3172888fc4cc994a1bdd869665595a43e7e0a8979bf7347ae`  
		Last Modified: Wed, 26 Dec 2018 10:26:37 GMT  
		Size: 1.6 KB (1559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS-2016`

```console
$ docker pull nuxeo@sha256:563127d48214f77451692cc0ce1ac91af025cfa5e0102cb8fe03785bce7bbbf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:LTS-2016` - linux; amd64

```console
$ docker pull nuxeo@sha256:a3de6f058f70062de0a1303488fcbf8e2da8df59f9aacb0e4b93cbb6400ee3b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1039671450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91a8649a8ee5cf84ee1e1b32f15f35178a0264872a9456c7c25823c86a432cc8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:52 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 14:57:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 14:57:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 14:57:56 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 26 Dec 2018 08:33:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 10:18:39 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 26 Dec 2018 10:22:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 10:22:14 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Wed, 26 Dec 2018 10:22:14 GMT
ENV NUXEO_USER=nuxeo
# Wed, 26 Dec 2018 10:22:14 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 26 Dec 2018 10:22:14 GMT
ENV HOME=/opt/nuxeo/server
# Wed, 26 Dec 2018 10:22:15 GMT
ARG NUXEO_VERSION=8.10
# Wed, 26 Dec 2018 10:22:15 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip
# Wed, 26 Dec 2018 10:22:15 GMT
ARG NUXEO_MD5=29e67a19bba54099093b51d892926be1
# Wed, 26 Dec 2018 10:22:16 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 26 Dec 2018 10:22:45 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Wed, 26 Dec 2018 10:22:50 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Wed, 26 Dec 2018 10:22:51 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d     && chmod g=u /etc/passwd
# Wed, 26 Dec 2018 10:22:51 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 10:22:51 GMT
WORKDIR /opt/nuxeo/server
# Wed, 26 Dec 2018 10:22:52 GMT
COPY file:b03749ac857d73dce5a6a9a97f2b99c07db8eccd08d95e8348f7f1eb81b70af8 in / 
# Wed, 26 Dec 2018 10:22:52 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 10:22:52 GMT
EXPOSE 8080
# Wed, 26 Dec 2018 10:22:52 GMT
EXPOSE 8787
# Wed, 26 Dec 2018 10:22:52 GMT
CMD ["nuxeoctl" "console"]
# Wed, 26 Dec 2018 10:22:52 GMT
USER 1000
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da6b28682cfe6db721c143309125728417dca93643b3d8d4c22ae7fbb4eb940`  
		Last Modified: Fri, 16 Nov 2018 15:56:15 GMT  
		Size: 892.4 KB (892364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203f1094a1e2165da6f6ec505e8cffb8853d3c72a8088f41c25218121f883b0a`  
		Last Modified: Fri, 16 Nov 2018 15:56:14 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee38d9f85cf610794355dc0458445408ded4d648cbc45984cd259611a8a72cc3`  
		Last Modified: Fri, 16 Nov 2018 15:56:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebdd07b685f5edae77834586ddb9e56b434f4fe4e5b17ed164656595e34e8fbf`  
		Last Modified: Wed, 26 Dec 2018 08:40:22 GMT  
		Size: 134.0 MB (133976353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6cc909f393f940a3a842a9979461d645792d6305af3757edf7b69071349730`  
		Last Modified: Wed, 26 Dec 2018 10:28:33 GMT  
		Size: 255.1 MB (255085285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed11de488d6a72957ac470cd9745ec3d6bf31582b4f5c37383e3281fb24e5303`  
		Last Modified: Wed, 26 Dec 2018 10:27:40 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31f3df2df13ca168834ae94b6374c3ad92d9cca4d87d2644f2f9b05f596c9ac9`  
		Last Modified: Wed, 26 Dec 2018 10:28:02 GMT  
		Size: 269.6 MB (269622104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5560145b24cfd211f0146c5a9e21eae0a9a63e6820a129706b5edb2b6c494807`  
		Last Modified: Wed, 26 Dec 2018 10:28:08 GMT  
		Size: 269.6 MB (269624412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f9271d8bf7bfce5ce5a09468becc0699ac60876663caa43e3295e0563206c9`  
		Last Modified: Wed, 26 Dec 2018 10:27:41 GMT  
		Size: 823.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6446c477c2351be623acb0d69495db73ed1d6f9173df9389f9d39d71414f9234`  
		Last Modified: Wed, 26 Dec 2018 10:27:41 GMT  
		Size: 1.6 KB (1559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS-2017`

```console
$ docker pull nuxeo@sha256:4fa2ef96f233bac43865bff66da4dea4fec36f3a98ff7333b6920610ac17e0ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:LTS-2017` - linux; amd64

```console
$ docker pull nuxeo@sha256:0ed345bc72d70d4817516892a395d5c35dd6519009ac777785296c1bdb872c28
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1270731529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e544c37ad49363e314d41195421459aaadae990b616d376cdfea4870464690c4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 14:57:52 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 14:57:53 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 16 Nov 2018 14:57:54 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_HOME=/docker-java-home
# Fri, 16 Nov 2018 14:57:55 GMT
ENV JAVA_VERSION=8u181
# Fri, 16 Nov 2018 14:57:56 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Wed, 26 Dec 2018 08:33:46 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 26 Dec 2018 10:18:39 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 26 Dec 2018 10:22:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Wed, 26 Dec 2018 10:22:14 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Wed, 26 Dec 2018 10:22:14 GMT
ENV NUXEO_USER=nuxeo
# Wed, 26 Dec 2018 10:22:14 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 26 Dec 2018 10:22:14 GMT
ENV HOME=/opt/nuxeo/server
# Wed, 26 Dec 2018 10:23:06 GMT
ARG NUXEO_VERSION=9.10
# Wed, 26 Dec 2018 10:23:06 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip
# Wed, 26 Dec 2018 10:23:06 GMT
ARG NUXEO_MD5=327d23bbd5558565694027b11c0dd82a
# Wed, 26 Dec 2018 10:23:07 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 26 Dec 2018 10:23:37 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Wed, 26 Dec 2018 10:23:37 GMT
COPY dir:1d4b19e1e35500d85eafcc58364498b9325f119ce19917cefc60c7ad98e600e7 in /opt/nuxeo/server/templates/docker 
# Wed, 26 Dec 2018 10:23:37 GMT
COPY file:8f1eb15b3cc87be8784ed6bc39c958a3a06d1e375bda2ce728f297d14d74d526 in /etc/nuxeo/nuxeo.conf.template 
# Wed, 26 Dec 2018 10:23:37 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Wed, 26 Dec 2018 10:23:44 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Wed, 26 Dec 2018 10:23:45 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 26 Dec 2018 10:23:45 GMT
WORKDIR /opt/nuxeo/server
# Wed, 26 Dec 2018 10:23:45 GMT
COPY file:d8f37458746cb2e17dae348b52babe8b858743784ee8dffc0c24d7026bf0e474 in / 
# Wed, 26 Dec 2018 10:23:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 26 Dec 2018 10:23:45 GMT
EXPOSE 8080
# Wed, 26 Dec 2018 10:23:46 GMT
EXPOSE 8787
# Wed, 26 Dec 2018 10:23:46 GMT
CMD ["nuxeoctl" "console"]
# Wed, 26 Dec 2018 10:23:46 GMT
USER 1000
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9da6b28682cfe6db721c143309125728417dca93643b3d8d4c22ae7fbb4eb940`  
		Last Modified: Fri, 16 Nov 2018 15:56:15 GMT  
		Size: 892.4 KB (892364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203f1094a1e2165da6f6ec505e8cffb8853d3c72a8088f41c25218121f883b0a`  
		Last Modified: Fri, 16 Nov 2018 15:56:14 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee38d9f85cf610794355dc0458445408ded4d648cbc45984cd259611a8a72cc3`  
		Last Modified: Fri, 16 Nov 2018 15:56:17 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebdd07b685f5edae77834586ddb9e56b434f4fe4e5b17ed164656595e34e8fbf`  
		Last Modified: Wed, 26 Dec 2018 08:40:22 GMT  
		Size: 134.0 MB (133976353 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6cc909f393f940a3a842a9979461d645792d6305af3757edf7b69071349730`  
		Last Modified: Wed, 26 Dec 2018 10:28:33 GMT  
		Size: 255.1 MB (255085285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:933fc12c1c90612ba371f768ec874a5664520bb192737f427d05af132240ac55`  
		Last Modified: Wed, 26 Dec 2018 10:28:39 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:578876ed3d22d0c02f6fee8cfb46ea3876165549ab1483322f5c8ab3fdfa5d06`  
		Last Modified: Wed, 26 Dec 2018 10:29:02 GMT  
		Size: 385.2 MB (385151569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67c3284150f4f19d89c1232f634855e3dd9b1f66e67770ae541061f9237e5471`  
		Last Modified: Wed, 26 Dec 2018 10:28:38 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ac6e1029f5483cc331998a686948d3a37b1ce35bbace503f1fad5dfaa458ee`  
		Last Modified: Wed, 26 Dec 2018 10:28:38 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e18287bc2029155922e3c2937cef98e1d0558df12e61004dd27c763ddd933a8e`  
		Last Modified: Wed, 26 Dec 2018 10:29:04 GMT  
		Size: 385.2 MB (385154768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba1990fad3dbb93d500dee66256971a1e3587af1c3ce20374007875998cfe1d`  
		Last Modified: Wed, 26 Dec 2018 10:28:38 GMT  
		Size: 1.0 KB (1022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
