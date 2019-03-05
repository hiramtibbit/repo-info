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
$ docker pull nuxeo@sha256:ae9eb8702ea41ecb64574f9fa15da6ad63d2ac25f2880d2e8ec9599060688885
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `nuxeo:10` - linux; amd64

```console
$ docker pull nuxeo@sha256:4c4a06be9095cca84cebc0ec931219bf61b06c993a85d4963b3015630cab30d4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 GB (1199640233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e915a130e43ec6c67482fea5ff650abb3dbc12b0549dc4597cd0023c4445f806`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:35:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 02:35:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:59:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:03:23 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:03:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 04:04:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 14:32:21 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 05 Mar 2019 14:35:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:35:57 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 05 Mar 2019 14:35:57 GMT
ENV NUXEO_USER=nuxeo
# Tue, 05 Mar 2019 14:35:57 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 05 Mar 2019 14:35:58 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 05 Mar 2019 14:38:21 GMT
ARG NUXEO_VERSION=10.10
# Tue, 05 Mar 2019 14:38:21 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip
# Tue, 05 Mar 2019 14:38:21 GMT
ARG NUXEO_MD5=90ef2ac005020e880b6277510800c30c
# Tue, 05 Mar 2019 14:38:22 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 05 Mar 2019 14:39:01 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Tue, 05 Mar 2019 14:39:02 GMT
COPY dir:d28c2b4bdf31f5817cba5496caa3161d743da596ec68186e0c444ede39dd58ac in /opt/nuxeo/server/templates/docker 
# Tue, 05 Mar 2019 14:39:02 GMT
COPY file:dbaa7cc62ad81fbafea7350f8e1ec2045fdc4a962bcfd145d777fefaf7205910 in /etc/nuxeo/nuxeo.conf.template 
# Tue, 05 Mar 2019 14:39:02 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 05 Mar 2019 14:39:10 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 05 Mar 2019 14:39:11 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 14:39:11 GMT
WORKDIR /opt/nuxeo/server
# Tue, 05 Mar 2019 14:39:11 GMT
COPY file:d8f37458746cb2e17dae348b52babe8b858743784ee8dffc0c24d7026bf0e474 in / 
# Tue, 05 Mar 2019 14:39:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Mar 2019 14:39:12 GMT
EXPOSE 8080
# Tue, 05 Mar 2019 14:39:12 GMT
EXPOSE 8787
# Tue, 05 Mar 2019 14:39:12 GMT
CMD ["nuxeoctl" "console"]
# Tue, 05 Mar 2019 14:39:12 GMT
USER 1000
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0250231711a047a6e54e7107d7a3bfb0afd807f5f408d00be0d407c5b8395219`  
		Last Modified: Tue, 05 Mar 2019 02:43:42 GMT  
		Size: 10.8 MB (10781993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba9447437b5ee1da9b33b2e2d18add55a33d0b763075202e17cad7efd3ff8f`  
		Last Modified: Tue, 05 Mar 2019 02:43:41 GMT  
		Size: 4.3 MB (4340113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b4d327b352258a8208acc249d97d70cac3c5cda0cea4a08de4de3cb406d8e5`  
		Last Modified: Tue, 05 Mar 2019 02:43:57 GMT  
		Size: 50.1 MB (50065610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cddb9bb0d37c8247e709a0deea556c410b2c8f5f481eb3f70ee7624d41334fbf`  
		Last Modified: Tue, 05 Mar 2019 04:23:59 GMT  
		Size: 892.4 KB (892426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b535486c968ffbdf9f264ff4427502d75b637cea6a5b375ae4e8e63550621176`  
		Last Modified: Tue, 05 Mar 2019 04:26:31 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e976e6210c617c81b0b232554325eb2bda0385c3c10ffbf5f8f6d031deec4f`  
		Last Modified: Tue, 05 Mar 2019 04:26:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c11b10291d2a6a1af223d1892b22a25c11cd950117d699980479f8d061d56a`  
		Last Modified: Tue, 05 Mar 2019 04:26:59 GMT  
		Size: 134.0 MB (133975305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a1b97d3c091a9d316314b0057cc061951c6e92af45c11ecbeb9eb05d62228f`  
		Last Modified: Tue, 05 Mar 2019 14:42:08 GMT  
		Size: 243.1 MB (243116991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d84c2fe71b7f1aa7e29f97697fbf6172a6cf81bd08e8d57866b9749c84adf776`  
		Last Modified: Tue, 05 Mar 2019 14:43:28 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2d2e9dc656ffc0af9ac37662d6594a3578f6122882d6fbca968ef1b844ee03`  
		Last Modified: Tue, 05 Mar 2019 14:43:55 GMT  
		Size: 355.6 MB (355558725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4c7835a668f7cec9d165ad48792202d5b27824ffadd08b512d1eae7c62d7ef`  
		Last Modified: Tue, 05 Mar 2019 14:43:27 GMT  
		Size: 275.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4837fabd505f2aad6634c22227cc6db90bdeb9e74c65b060b3a6ac892e60ad1c`  
		Last Modified: Tue, 05 Mar 2019 14:43:27 GMT  
		Size: 989.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68c36770672d10fd21c45cfda55f164be7164f1cac62d4dca5ee629a7b6f9d6a`  
		Last Modified: Tue, 05 Mar 2019 14:43:55 GMT  
		Size: 355.6 MB (355559463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90247efaab7f832d8911cf6f113eafed5439c7431035da5243f5ce4a545f0414`  
		Last Modified: Tue, 05 Mar 2019 14:43:27 GMT  
		Size: 1.0 KB (1021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nuxeo:10` - linux; arm64 variant v8

```console
$ docker pull nuxeo@sha256:2ef656aa07ca146f2f0810f86c49f4d3c8a02997f4dad0727cf99ff4f7ba3842
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 GB (1170492872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c52d768e9ae4a629173d8a4e95c7f397089151bbd390f9fd07b1814dd91d8a94`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 05 Mar 2019 10:00:23 GMT
ADD file:7bdd35ab84858c7d5864b73a83750df5ac3db71ce3e586a7da68d50ed15904c8 in / 
# Tue, 05 Mar 2019 10:00:24 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:31:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:32:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 11:33:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:09:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:19:06 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 12:19:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 12:19:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 12:19:13 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 12:19:14 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 12:19:14 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 12:24:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 22:11:59 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 05 Mar 2019 22:25:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 22:25:56 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 05 Mar 2019 22:25:59 GMT
ENV NUXEO_USER=nuxeo
# Tue, 05 Mar 2019 22:26:01 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 05 Mar 2019 22:26:03 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 05 Mar 2019 22:26:05 GMT
ARG NUXEO_VERSION=10.10
# Tue, 05 Mar 2019 22:26:07 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip
# Tue, 05 Mar 2019 22:26:09 GMT
ARG NUXEO_MD5=90ef2ac005020e880b6277510800c30c
# Tue, 05 Mar 2019 22:26:19 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 05 Mar 2019 22:28:23 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Tue, 05 Mar 2019 22:28:24 GMT
COPY dir:d28c2b4bdf31f5817cba5496caa3161d743da596ec68186e0c444ede39dd58ac in /opt/nuxeo/server/templates/docker 
# Tue, 05 Mar 2019 22:28:24 GMT
COPY file:dbaa7cc62ad81fbafea7350f8e1ec2045fdc4a962bcfd145d777fefaf7205910 in /etc/nuxeo/nuxeo.conf.template 
# Tue, 05 Mar 2019 22:28:25 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 05 Mar 2019 22:30:39 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 05 Mar 2019 22:30:58 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 22:31:01 GMT
WORKDIR /opt/nuxeo/server
# Tue, 05 Mar 2019 22:31:04 GMT
COPY file:d8f37458746cb2e17dae348b52babe8b858743784ee8dffc0c24d7026bf0e474 in / 
# Tue, 05 Mar 2019 22:31:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Mar 2019 22:31:09 GMT
EXPOSE 8080
# Tue, 05 Mar 2019 22:31:13 GMT
EXPOSE 8787
# Tue, 05 Mar 2019 22:31:16 GMT
CMD ["nuxeoctl" "console"]
# Tue, 05 Mar 2019 22:31:18 GMT
USER 1000
```

-	Layers:
	-	`sha256:fe62b3d54b9c915735c759d5d36826088c3c05a73dec307a4ec4cb502ad034ff`  
		Last Modified: Tue, 05 Mar 2019 10:06:07 GMT  
		Size: 43.1 MB (43131855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a498920bfeb2353594e13055200f3227c4992da6fb9617197ee55ebd4a723c`  
		Last Modified: Tue, 05 Mar 2019 11:46:32 GMT  
		Size: 9.7 MB (9730480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb8191548b27dfce511beab0eb0f4a401e160544b2f893ba98c3dc794636c53`  
		Last Modified: Tue, 05 Mar 2019 11:46:30 GMT  
		Size: 4.1 MB (4094079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63fe741ca3c91de7331744358ee1d4543b1be55d55bdde318da27773bc8522fd`  
		Last Modified: Tue, 05 Mar 2019 11:47:01 GMT  
		Size: 48.0 MB (48007524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5dc26bf4ffb69ecf6efe772ab6577745218f6748ee6071b4685fce7be5572a`  
		Last Modified: Tue, 05 Mar 2019 12:34:00 GMT  
		Size: 877.6 KB (877625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6966a83281a055917dcad184786c9a46c10458a44048e12c19b6c68b3679de47`  
		Last Modified: Tue, 05 Mar 2019 12:37:13 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec721d1411ce9965c94a59bc3b9d47cdf8d1cfab86efee7b3530fc842acd42a0`  
		Last Modified: Tue, 05 Mar 2019 12:37:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbdb1a98f907f39ab775525ba3971dbe1c3c74c694fed8451108307fe903828c`  
		Last Modified: Tue, 05 Mar 2019 12:37:57 GMT  
		Size: 122.3 MB (122281116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba601d82e746688a16268341f0a7962ea080ef02853cea10849801d831db06e`  
		Last Modified: Tue, 05 Mar 2019 22:33:04 GMT  
		Size: 231.2 MB (231244804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e817a28aa25648bcdf46de6ac01d8cce6586ba69035bb3436b1a73d5cd8cdb`  
		Last Modified: Tue, 05 Mar 2019 22:31:43 GMT  
		Size: 4.4 KB (4438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9d907e473f2b279f8500dcd491a82b218a5b68e1af441f0bb8d6491dc2cc6f1`  
		Last Modified: Tue, 05 Mar 2019 22:33:14 GMT  
		Size: 355.6 MB (355558719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3424c1e6276534bd4e07edafbdab1dab24a0bc648dd07c1fae69cfecbb927e1`  
		Last Modified: Tue, 05 Mar 2019 22:31:41 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2859f8f1503e4d0425c46e06c1d9da31a10c8b2cd531ffea2c7a789b218a57fa`  
		Last Modified: Tue, 05 Mar 2019 22:31:41 GMT  
		Size: 988.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3474cb8b1600e4b2d7c5b4b42bdf1b4585332b76d255a7d45500a51d5deb5943`  
		Last Modified: Tue, 05 Mar 2019 22:32:30 GMT  
		Size: 355.6 MB (355559567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0757b3db0ec002e3af140e38db4b52b415264a6f6ed4d81c17dddd5260f665ef`  
		Last Modified: Tue, 05 Mar 2019 22:31:41 GMT  
		Size: 1.0 KB (1022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:10.10`

```console
$ docker pull nuxeo@sha256:ae9eb8702ea41ecb64574f9fa15da6ad63d2ac25f2880d2e8ec9599060688885
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `nuxeo:10.10` - linux; amd64

```console
$ docker pull nuxeo@sha256:4c4a06be9095cca84cebc0ec931219bf61b06c993a85d4963b3015630cab30d4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 GB (1199640233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e915a130e43ec6c67482fea5ff650abb3dbc12b0549dc4597cd0023c4445f806`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:35:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 02:35:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:59:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:03:23 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:03:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 04:04:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 14:32:21 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 05 Mar 2019 14:35:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:35:57 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 05 Mar 2019 14:35:57 GMT
ENV NUXEO_USER=nuxeo
# Tue, 05 Mar 2019 14:35:57 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 05 Mar 2019 14:35:58 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 05 Mar 2019 14:38:21 GMT
ARG NUXEO_VERSION=10.10
# Tue, 05 Mar 2019 14:38:21 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip
# Tue, 05 Mar 2019 14:38:21 GMT
ARG NUXEO_MD5=90ef2ac005020e880b6277510800c30c
# Tue, 05 Mar 2019 14:38:22 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 05 Mar 2019 14:39:01 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Tue, 05 Mar 2019 14:39:02 GMT
COPY dir:d28c2b4bdf31f5817cba5496caa3161d743da596ec68186e0c444ede39dd58ac in /opt/nuxeo/server/templates/docker 
# Tue, 05 Mar 2019 14:39:02 GMT
COPY file:dbaa7cc62ad81fbafea7350f8e1ec2045fdc4a962bcfd145d777fefaf7205910 in /etc/nuxeo/nuxeo.conf.template 
# Tue, 05 Mar 2019 14:39:02 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 05 Mar 2019 14:39:10 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 05 Mar 2019 14:39:11 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 14:39:11 GMT
WORKDIR /opt/nuxeo/server
# Tue, 05 Mar 2019 14:39:11 GMT
COPY file:d8f37458746cb2e17dae348b52babe8b858743784ee8dffc0c24d7026bf0e474 in / 
# Tue, 05 Mar 2019 14:39:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Mar 2019 14:39:12 GMT
EXPOSE 8080
# Tue, 05 Mar 2019 14:39:12 GMT
EXPOSE 8787
# Tue, 05 Mar 2019 14:39:12 GMT
CMD ["nuxeoctl" "console"]
# Tue, 05 Mar 2019 14:39:12 GMT
USER 1000
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0250231711a047a6e54e7107d7a3bfb0afd807f5f408d00be0d407c5b8395219`  
		Last Modified: Tue, 05 Mar 2019 02:43:42 GMT  
		Size: 10.8 MB (10781993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba9447437b5ee1da9b33b2e2d18add55a33d0b763075202e17cad7efd3ff8f`  
		Last Modified: Tue, 05 Mar 2019 02:43:41 GMT  
		Size: 4.3 MB (4340113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b4d327b352258a8208acc249d97d70cac3c5cda0cea4a08de4de3cb406d8e5`  
		Last Modified: Tue, 05 Mar 2019 02:43:57 GMT  
		Size: 50.1 MB (50065610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cddb9bb0d37c8247e709a0deea556c410b2c8f5f481eb3f70ee7624d41334fbf`  
		Last Modified: Tue, 05 Mar 2019 04:23:59 GMT  
		Size: 892.4 KB (892426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b535486c968ffbdf9f264ff4427502d75b637cea6a5b375ae4e8e63550621176`  
		Last Modified: Tue, 05 Mar 2019 04:26:31 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e976e6210c617c81b0b232554325eb2bda0385c3c10ffbf5f8f6d031deec4f`  
		Last Modified: Tue, 05 Mar 2019 04:26:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c11b10291d2a6a1af223d1892b22a25c11cd950117d699980479f8d061d56a`  
		Last Modified: Tue, 05 Mar 2019 04:26:59 GMT  
		Size: 134.0 MB (133975305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a1b97d3c091a9d316314b0057cc061951c6e92af45c11ecbeb9eb05d62228f`  
		Last Modified: Tue, 05 Mar 2019 14:42:08 GMT  
		Size: 243.1 MB (243116991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d84c2fe71b7f1aa7e29f97697fbf6172a6cf81bd08e8d57866b9749c84adf776`  
		Last Modified: Tue, 05 Mar 2019 14:43:28 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2d2e9dc656ffc0af9ac37662d6594a3578f6122882d6fbca968ef1b844ee03`  
		Last Modified: Tue, 05 Mar 2019 14:43:55 GMT  
		Size: 355.6 MB (355558725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4c7835a668f7cec9d165ad48792202d5b27824ffadd08b512d1eae7c62d7ef`  
		Last Modified: Tue, 05 Mar 2019 14:43:27 GMT  
		Size: 275.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4837fabd505f2aad6634c22227cc6db90bdeb9e74c65b060b3a6ac892e60ad1c`  
		Last Modified: Tue, 05 Mar 2019 14:43:27 GMT  
		Size: 989.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68c36770672d10fd21c45cfda55f164be7164f1cac62d4dca5ee629a7b6f9d6a`  
		Last Modified: Tue, 05 Mar 2019 14:43:55 GMT  
		Size: 355.6 MB (355559463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90247efaab7f832d8911cf6f113eafed5439c7431035da5243f5ce4a545f0414`  
		Last Modified: Tue, 05 Mar 2019 14:43:27 GMT  
		Size: 1.0 KB (1021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nuxeo:10.10` - linux; arm64 variant v8

```console
$ docker pull nuxeo@sha256:2ef656aa07ca146f2f0810f86c49f4d3c8a02997f4dad0727cf99ff4f7ba3842
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 GB (1170492872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c52d768e9ae4a629173d8a4e95c7f397089151bbd390f9fd07b1814dd91d8a94`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 05 Mar 2019 10:00:23 GMT
ADD file:7bdd35ab84858c7d5864b73a83750df5ac3db71ce3e586a7da68d50ed15904c8 in / 
# Tue, 05 Mar 2019 10:00:24 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:31:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:32:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 11:33:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:09:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:19:06 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 12:19:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 12:19:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 12:19:13 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 12:19:14 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 12:19:14 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 12:24:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 22:11:59 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 05 Mar 2019 22:25:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 22:25:56 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 05 Mar 2019 22:25:59 GMT
ENV NUXEO_USER=nuxeo
# Tue, 05 Mar 2019 22:26:01 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 05 Mar 2019 22:26:03 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 05 Mar 2019 22:26:05 GMT
ARG NUXEO_VERSION=10.10
# Tue, 05 Mar 2019 22:26:07 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip
# Tue, 05 Mar 2019 22:26:09 GMT
ARG NUXEO_MD5=90ef2ac005020e880b6277510800c30c
# Tue, 05 Mar 2019 22:26:19 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 05 Mar 2019 22:28:23 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Tue, 05 Mar 2019 22:28:24 GMT
COPY dir:d28c2b4bdf31f5817cba5496caa3161d743da596ec68186e0c444ede39dd58ac in /opt/nuxeo/server/templates/docker 
# Tue, 05 Mar 2019 22:28:24 GMT
COPY file:dbaa7cc62ad81fbafea7350f8e1ec2045fdc4a962bcfd145d777fefaf7205910 in /etc/nuxeo/nuxeo.conf.template 
# Tue, 05 Mar 2019 22:28:25 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 05 Mar 2019 22:30:39 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 05 Mar 2019 22:30:58 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 22:31:01 GMT
WORKDIR /opt/nuxeo/server
# Tue, 05 Mar 2019 22:31:04 GMT
COPY file:d8f37458746cb2e17dae348b52babe8b858743784ee8dffc0c24d7026bf0e474 in / 
# Tue, 05 Mar 2019 22:31:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Mar 2019 22:31:09 GMT
EXPOSE 8080
# Tue, 05 Mar 2019 22:31:13 GMT
EXPOSE 8787
# Tue, 05 Mar 2019 22:31:16 GMT
CMD ["nuxeoctl" "console"]
# Tue, 05 Mar 2019 22:31:18 GMT
USER 1000
```

-	Layers:
	-	`sha256:fe62b3d54b9c915735c759d5d36826088c3c05a73dec307a4ec4cb502ad034ff`  
		Last Modified: Tue, 05 Mar 2019 10:06:07 GMT  
		Size: 43.1 MB (43131855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a498920bfeb2353594e13055200f3227c4992da6fb9617197ee55ebd4a723c`  
		Last Modified: Tue, 05 Mar 2019 11:46:32 GMT  
		Size: 9.7 MB (9730480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb8191548b27dfce511beab0eb0f4a401e160544b2f893ba98c3dc794636c53`  
		Last Modified: Tue, 05 Mar 2019 11:46:30 GMT  
		Size: 4.1 MB (4094079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63fe741ca3c91de7331744358ee1d4543b1be55d55bdde318da27773bc8522fd`  
		Last Modified: Tue, 05 Mar 2019 11:47:01 GMT  
		Size: 48.0 MB (48007524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5dc26bf4ffb69ecf6efe772ab6577745218f6748ee6071b4685fce7be5572a`  
		Last Modified: Tue, 05 Mar 2019 12:34:00 GMT  
		Size: 877.6 KB (877625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6966a83281a055917dcad184786c9a46c10458a44048e12c19b6c68b3679de47`  
		Last Modified: Tue, 05 Mar 2019 12:37:13 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec721d1411ce9965c94a59bc3b9d47cdf8d1cfab86efee7b3530fc842acd42a0`  
		Last Modified: Tue, 05 Mar 2019 12:37:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbdb1a98f907f39ab775525ba3971dbe1c3c74c694fed8451108307fe903828c`  
		Last Modified: Tue, 05 Mar 2019 12:37:57 GMT  
		Size: 122.3 MB (122281116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba601d82e746688a16268341f0a7962ea080ef02853cea10849801d831db06e`  
		Last Modified: Tue, 05 Mar 2019 22:33:04 GMT  
		Size: 231.2 MB (231244804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e817a28aa25648bcdf46de6ac01d8cce6586ba69035bb3436b1a73d5cd8cdb`  
		Last Modified: Tue, 05 Mar 2019 22:31:43 GMT  
		Size: 4.4 KB (4438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9d907e473f2b279f8500dcd491a82b218a5b68e1af441f0bb8d6491dc2cc6f1`  
		Last Modified: Tue, 05 Mar 2019 22:33:14 GMT  
		Size: 355.6 MB (355558719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3424c1e6276534bd4e07edafbdab1dab24a0bc648dd07c1fae69cfecbb927e1`  
		Last Modified: Tue, 05 Mar 2019 22:31:41 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2859f8f1503e4d0425c46e06c1d9da31a10c8b2cd531ffea2c7a789b218a57fa`  
		Last Modified: Tue, 05 Mar 2019 22:31:41 GMT  
		Size: 988.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3474cb8b1600e4b2d7c5b4b42bdf1b4585332b76d255a7d45500a51d5deb5943`  
		Last Modified: Tue, 05 Mar 2019 22:32:30 GMT  
		Size: 355.6 MB (355559567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0757b3db0ec002e3af140e38db4b52b415264a6f6ed4d81c17dddd5260f665ef`  
		Last Modified: Tue, 05 Mar 2019 22:31:41 GMT  
		Size: 1.0 KB (1022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:7`

```console
$ docker pull nuxeo@sha256:9b2c6409d64652a15fcc779cdfd06d3f8ec3ce8422192bf2787d178805018d24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:7` - linux; amd64

```console
$ docker pull nuxeo@sha256:e295cda653409f82a7170290c359962b69e731f2a167e9cda503c94138dcb959
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1045555505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:474175901d528edb751db598a76a3280bb1d763e0012318d40e7caaf0ee7b79e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:35:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 02:35:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:59:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:03:23 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:03:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 04:04:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 14:32:21 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 05 Mar 2019 14:33:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:33:54 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 05 Mar 2019 14:33:55 GMT
ENV NUXEO_USER=nuxeo
# Tue, 05 Mar 2019 14:33:55 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 05 Mar 2019 14:33:55 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 05 Mar 2019 14:33:55 GMT
ARG NUXEO_VERSION=7.10
# Tue, 05 Mar 2019 14:33:55 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip
# Tue, 05 Mar 2019 14:33:56 GMT
ARG NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Tue, 05 Mar 2019 14:33:56 GMT
ENV LAUNCHER_DEBUG=-Djvmcheck=nofail
# Tue, 05 Mar 2019 14:33:57 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 05 Mar 2019 14:34:31 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Tue, 05 Mar 2019 14:34:39 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Tue, 05 Mar 2019 14:34:40 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d     && chmod g=u /etc/passwd
# Tue, 05 Mar 2019 14:34:41 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 14:34:41 GMT
WORKDIR /opt/nuxeo/server
# Tue, 05 Mar 2019 14:34:42 GMT
COPY file:b03749ac857d73dce5a6a9a97f2b99c07db8eccd08d95e8348f7f1eb81b70af8 in / 
# Tue, 05 Mar 2019 14:34:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Mar 2019 14:34:42 GMT
EXPOSE 8080
# Tue, 05 Mar 2019 14:34:43 GMT
EXPOSE 8787
# Tue, 05 Mar 2019 14:34:43 GMT
CMD ["nuxeoctl" "console"]
# Tue, 05 Mar 2019 14:34:43 GMT
USER 1000
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0250231711a047a6e54e7107d7a3bfb0afd807f5f408d00be0d407c5b8395219`  
		Last Modified: Tue, 05 Mar 2019 02:43:42 GMT  
		Size: 10.8 MB (10781993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba9447437b5ee1da9b33b2e2d18add55a33d0b763075202e17cad7efd3ff8f`  
		Last Modified: Tue, 05 Mar 2019 02:43:41 GMT  
		Size: 4.3 MB (4340113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b4d327b352258a8208acc249d97d70cac3c5cda0cea4a08de4de3cb406d8e5`  
		Last Modified: Tue, 05 Mar 2019 02:43:57 GMT  
		Size: 50.1 MB (50065610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cddb9bb0d37c8247e709a0deea556c410b2c8f5f481eb3f70ee7624d41334fbf`  
		Last Modified: Tue, 05 Mar 2019 04:23:59 GMT  
		Size: 892.4 KB (892426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b535486c968ffbdf9f264ff4427502d75b637cea6a5b375ae4e8e63550621176`  
		Last Modified: Tue, 05 Mar 2019 04:26:31 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e976e6210c617c81b0b232554325eb2bda0385c3c10ffbf5f8f6d031deec4f`  
		Last Modified: Tue, 05 Mar 2019 04:26:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c11b10291d2a6a1af223d1892b22a25c11cd950117d699980479f8d061d56a`  
		Last Modified: Tue, 05 Mar 2019 04:26:59 GMT  
		Size: 134.0 MB (133975305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5154973b8e9da91a63d8eb3b9735ab4a023050bf1b13eb6b8beafb8e43787126`  
		Last Modified: Tue, 05 Mar 2019 14:40:46 GMT  
		Size: 239.2 MB (239232520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeea56823cdf28e0e5e8e80052b13375996b5ad21c5f2434eadd4d4ded51cc9e`  
		Last Modified: Tue, 05 Mar 2019 14:39:32 GMT  
		Size: 4.4 KB (4413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86071aa335705c4993932c359c0710761a23095f8362dcef8840240152d4916b`  
		Last Modified: Tue, 05 Mar 2019 14:40:00 GMT  
		Size: 280.5 MB (280457927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6a1d7e9dbecdcdc54051aed742f6150038ef42dbe72116bfcb834f2ef86c6a`  
		Last Modified: Tue, 05 Mar 2019 14:40:00 GMT  
		Size: 280.5 MB (280459910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1beb6546dbf79417951c7c646f46030609e14a8bfc4efcf0b56481a8ede6038`  
		Last Modified: Tue, 05 Mar 2019 14:39:32 GMT  
		Size: 822.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c6099950ae1d13ca247b807b640bd148eed891d4a8876bb653623d6b34b869`  
		Last Modified: Tue, 05 Mar 2019 14:39:32 GMT  
		Size: 1.6 KB (1559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:7.10`

```console
$ docker pull nuxeo@sha256:9b2c6409d64652a15fcc779cdfd06d3f8ec3ce8422192bf2787d178805018d24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:7.10` - linux; amd64

```console
$ docker pull nuxeo@sha256:e295cda653409f82a7170290c359962b69e731f2a167e9cda503c94138dcb959
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1045555505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:474175901d528edb751db598a76a3280bb1d763e0012318d40e7caaf0ee7b79e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:35:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 02:35:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:59:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:03:23 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:03:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 04:04:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 14:32:21 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 05 Mar 2019 14:33:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:33:54 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 05 Mar 2019 14:33:55 GMT
ENV NUXEO_USER=nuxeo
# Tue, 05 Mar 2019 14:33:55 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 05 Mar 2019 14:33:55 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 05 Mar 2019 14:33:55 GMT
ARG NUXEO_VERSION=7.10
# Tue, 05 Mar 2019 14:33:55 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip
# Tue, 05 Mar 2019 14:33:56 GMT
ARG NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Tue, 05 Mar 2019 14:33:56 GMT
ENV LAUNCHER_DEBUG=-Djvmcheck=nofail
# Tue, 05 Mar 2019 14:33:57 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 05 Mar 2019 14:34:31 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Tue, 05 Mar 2019 14:34:39 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Tue, 05 Mar 2019 14:34:40 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d     && chmod g=u /etc/passwd
# Tue, 05 Mar 2019 14:34:41 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 14:34:41 GMT
WORKDIR /opt/nuxeo/server
# Tue, 05 Mar 2019 14:34:42 GMT
COPY file:b03749ac857d73dce5a6a9a97f2b99c07db8eccd08d95e8348f7f1eb81b70af8 in / 
# Tue, 05 Mar 2019 14:34:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Mar 2019 14:34:42 GMT
EXPOSE 8080
# Tue, 05 Mar 2019 14:34:43 GMT
EXPOSE 8787
# Tue, 05 Mar 2019 14:34:43 GMT
CMD ["nuxeoctl" "console"]
# Tue, 05 Mar 2019 14:34:43 GMT
USER 1000
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0250231711a047a6e54e7107d7a3bfb0afd807f5f408d00be0d407c5b8395219`  
		Last Modified: Tue, 05 Mar 2019 02:43:42 GMT  
		Size: 10.8 MB (10781993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba9447437b5ee1da9b33b2e2d18add55a33d0b763075202e17cad7efd3ff8f`  
		Last Modified: Tue, 05 Mar 2019 02:43:41 GMT  
		Size: 4.3 MB (4340113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b4d327b352258a8208acc249d97d70cac3c5cda0cea4a08de4de3cb406d8e5`  
		Last Modified: Tue, 05 Mar 2019 02:43:57 GMT  
		Size: 50.1 MB (50065610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cddb9bb0d37c8247e709a0deea556c410b2c8f5f481eb3f70ee7624d41334fbf`  
		Last Modified: Tue, 05 Mar 2019 04:23:59 GMT  
		Size: 892.4 KB (892426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b535486c968ffbdf9f264ff4427502d75b637cea6a5b375ae4e8e63550621176`  
		Last Modified: Tue, 05 Mar 2019 04:26:31 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e976e6210c617c81b0b232554325eb2bda0385c3c10ffbf5f8f6d031deec4f`  
		Last Modified: Tue, 05 Mar 2019 04:26:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c11b10291d2a6a1af223d1892b22a25c11cd950117d699980479f8d061d56a`  
		Last Modified: Tue, 05 Mar 2019 04:26:59 GMT  
		Size: 134.0 MB (133975305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5154973b8e9da91a63d8eb3b9735ab4a023050bf1b13eb6b8beafb8e43787126`  
		Last Modified: Tue, 05 Mar 2019 14:40:46 GMT  
		Size: 239.2 MB (239232520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeea56823cdf28e0e5e8e80052b13375996b5ad21c5f2434eadd4d4ded51cc9e`  
		Last Modified: Tue, 05 Mar 2019 14:39:32 GMT  
		Size: 4.4 KB (4413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86071aa335705c4993932c359c0710761a23095f8362dcef8840240152d4916b`  
		Last Modified: Tue, 05 Mar 2019 14:40:00 GMT  
		Size: 280.5 MB (280457927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6a1d7e9dbecdcdc54051aed742f6150038ef42dbe72116bfcb834f2ef86c6a`  
		Last Modified: Tue, 05 Mar 2019 14:40:00 GMT  
		Size: 280.5 MB (280459910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1beb6546dbf79417951c7c646f46030609e14a8bfc4efcf0b56481a8ede6038`  
		Last Modified: Tue, 05 Mar 2019 14:39:32 GMT  
		Size: 822.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c6099950ae1d13ca247b807b640bd148eed891d4a8876bb653623d6b34b869`  
		Last Modified: Tue, 05 Mar 2019 14:39:32 GMT  
		Size: 1.6 KB (1559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:8`

```console
$ docker pull nuxeo@sha256:48eb7140124487a3547e6d19542159c8a5dcfeacc992eeab91828e97f39325d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:8` - linux; amd64

```console
$ docker pull nuxeo@sha256:ddf803b8056320a8feeaf0ec703d483b3bd235897bb89d197b82a6ad37d8f7da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1027768616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f35e73ff286c7805b3ac76337e2ad7cfff573dfb6a0c2b9c63b23ab9b7c0ca8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:35:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 02:35:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:59:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:03:23 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:03:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 04:04:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 14:32:21 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 05 Mar 2019 14:35:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:35:57 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 05 Mar 2019 14:35:57 GMT
ENV NUXEO_USER=nuxeo
# Tue, 05 Mar 2019 14:35:57 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 05 Mar 2019 14:35:58 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 05 Mar 2019 14:35:58 GMT
ARG NUXEO_VERSION=8.10
# Tue, 05 Mar 2019 14:35:59 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip
# Tue, 05 Mar 2019 14:35:59 GMT
ARG NUXEO_MD5=29e67a19bba54099093b51d892926be1
# Tue, 05 Mar 2019 14:36:01 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 05 Mar 2019 14:36:57 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Tue, 05 Mar 2019 14:37:04 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Tue, 05 Mar 2019 14:37:06 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d     && chmod g=u /etc/passwd
# Tue, 05 Mar 2019 14:37:06 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 14:37:07 GMT
WORKDIR /opt/nuxeo/server
# Tue, 05 Mar 2019 14:37:07 GMT
COPY file:b03749ac857d73dce5a6a9a97f2b99c07db8eccd08d95e8348f7f1eb81b70af8 in / 
# Tue, 05 Mar 2019 14:37:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Mar 2019 14:37:08 GMT
EXPOSE 8080
# Tue, 05 Mar 2019 14:37:08 GMT
EXPOSE 8787
# Tue, 05 Mar 2019 14:37:09 GMT
CMD ["nuxeoctl" "console"]
# Tue, 05 Mar 2019 14:37:09 GMT
USER 1000
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0250231711a047a6e54e7107d7a3bfb0afd807f5f408d00be0d407c5b8395219`  
		Last Modified: Tue, 05 Mar 2019 02:43:42 GMT  
		Size: 10.8 MB (10781993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba9447437b5ee1da9b33b2e2d18add55a33d0b763075202e17cad7efd3ff8f`  
		Last Modified: Tue, 05 Mar 2019 02:43:41 GMT  
		Size: 4.3 MB (4340113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b4d327b352258a8208acc249d97d70cac3c5cda0cea4a08de4de3cb406d8e5`  
		Last Modified: Tue, 05 Mar 2019 02:43:57 GMT  
		Size: 50.1 MB (50065610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cddb9bb0d37c8247e709a0deea556c410b2c8f5f481eb3f70ee7624d41334fbf`  
		Last Modified: Tue, 05 Mar 2019 04:23:59 GMT  
		Size: 892.4 KB (892426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b535486c968ffbdf9f264ff4427502d75b637cea6a5b375ae4e8e63550621176`  
		Last Modified: Tue, 05 Mar 2019 04:26:31 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e976e6210c617c81b0b232554325eb2bda0385c3c10ffbf5f8f6d031deec4f`  
		Last Modified: Tue, 05 Mar 2019 04:26:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c11b10291d2a6a1af223d1892b22a25c11cd950117d699980479f8d061d56a`  
		Last Modified: Tue, 05 Mar 2019 04:26:59 GMT  
		Size: 134.0 MB (133975305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a1b97d3c091a9d316314b0057cc061951c6e92af45c11ecbeb9eb05d62228f`  
		Last Modified: Tue, 05 Mar 2019 14:42:08 GMT  
		Size: 243.1 MB (243116991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe35675fed101c53c50e94c6a91d5766c4efe7258dbc0e7d1dce8b30b0f83fd2`  
		Last Modified: Tue, 05 Mar 2019 14:40:53 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bd349c0c0620eccde0f7eafe7cce75d966950757b5276c727c3fdf1480d2cb`  
		Last Modified: Tue, 05 Mar 2019 14:41:32 GMT  
		Size: 269.6 MB (269622099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f598695dbb184a6eea7c10caa8c44463378fb92567ae1d2d29b0fcc280a5744`  
		Last Modified: Tue, 05 Mar 2019 14:41:33 GMT  
		Size: 269.6 MB (269624375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29ba11730eecf917009f336c9652c6c2e50936bfe0b6aa3dd73f4a9df98019b`  
		Last Modified: Tue, 05 Mar 2019 14:40:52 GMT  
		Size: 821.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7409aa84dfe1f75edfb69e0cff5b37620bea9455db831cef659dfba0feedb2d9`  
		Last Modified: Tue, 05 Mar 2019 14:40:52 GMT  
		Size: 1.6 KB (1559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:8.10`

```console
$ docker pull nuxeo@sha256:48eb7140124487a3547e6d19542159c8a5dcfeacc992eeab91828e97f39325d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:8.10` - linux; amd64

```console
$ docker pull nuxeo@sha256:ddf803b8056320a8feeaf0ec703d483b3bd235897bb89d197b82a6ad37d8f7da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1027768616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f35e73ff286c7805b3ac76337e2ad7cfff573dfb6a0c2b9c63b23ab9b7c0ca8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:35:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 02:35:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:59:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:03:23 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:03:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 04:04:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 14:32:21 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 05 Mar 2019 14:35:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:35:57 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 05 Mar 2019 14:35:57 GMT
ENV NUXEO_USER=nuxeo
# Tue, 05 Mar 2019 14:35:57 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 05 Mar 2019 14:35:58 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 05 Mar 2019 14:35:58 GMT
ARG NUXEO_VERSION=8.10
# Tue, 05 Mar 2019 14:35:59 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip
# Tue, 05 Mar 2019 14:35:59 GMT
ARG NUXEO_MD5=29e67a19bba54099093b51d892926be1
# Tue, 05 Mar 2019 14:36:01 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 05 Mar 2019 14:36:57 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Tue, 05 Mar 2019 14:37:04 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Tue, 05 Mar 2019 14:37:06 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d     && chmod g=u /etc/passwd
# Tue, 05 Mar 2019 14:37:06 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 14:37:07 GMT
WORKDIR /opt/nuxeo/server
# Tue, 05 Mar 2019 14:37:07 GMT
COPY file:b03749ac857d73dce5a6a9a97f2b99c07db8eccd08d95e8348f7f1eb81b70af8 in / 
# Tue, 05 Mar 2019 14:37:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Mar 2019 14:37:08 GMT
EXPOSE 8080
# Tue, 05 Mar 2019 14:37:08 GMT
EXPOSE 8787
# Tue, 05 Mar 2019 14:37:09 GMT
CMD ["nuxeoctl" "console"]
# Tue, 05 Mar 2019 14:37:09 GMT
USER 1000
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0250231711a047a6e54e7107d7a3bfb0afd807f5f408d00be0d407c5b8395219`  
		Last Modified: Tue, 05 Mar 2019 02:43:42 GMT  
		Size: 10.8 MB (10781993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba9447437b5ee1da9b33b2e2d18add55a33d0b763075202e17cad7efd3ff8f`  
		Last Modified: Tue, 05 Mar 2019 02:43:41 GMT  
		Size: 4.3 MB (4340113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b4d327b352258a8208acc249d97d70cac3c5cda0cea4a08de4de3cb406d8e5`  
		Last Modified: Tue, 05 Mar 2019 02:43:57 GMT  
		Size: 50.1 MB (50065610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cddb9bb0d37c8247e709a0deea556c410b2c8f5f481eb3f70ee7624d41334fbf`  
		Last Modified: Tue, 05 Mar 2019 04:23:59 GMT  
		Size: 892.4 KB (892426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b535486c968ffbdf9f264ff4427502d75b637cea6a5b375ae4e8e63550621176`  
		Last Modified: Tue, 05 Mar 2019 04:26:31 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e976e6210c617c81b0b232554325eb2bda0385c3c10ffbf5f8f6d031deec4f`  
		Last Modified: Tue, 05 Mar 2019 04:26:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c11b10291d2a6a1af223d1892b22a25c11cd950117d699980479f8d061d56a`  
		Last Modified: Tue, 05 Mar 2019 04:26:59 GMT  
		Size: 134.0 MB (133975305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a1b97d3c091a9d316314b0057cc061951c6e92af45c11ecbeb9eb05d62228f`  
		Last Modified: Tue, 05 Mar 2019 14:42:08 GMT  
		Size: 243.1 MB (243116991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe35675fed101c53c50e94c6a91d5766c4efe7258dbc0e7d1dce8b30b0f83fd2`  
		Last Modified: Tue, 05 Mar 2019 14:40:53 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bd349c0c0620eccde0f7eafe7cce75d966950757b5276c727c3fdf1480d2cb`  
		Last Modified: Tue, 05 Mar 2019 14:41:32 GMT  
		Size: 269.6 MB (269622099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f598695dbb184a6eea7c10caa8c44463378fb92567ae1d2d29b0fcc280a5744`  
		Last Modified: Tue, 05 Mar 2019 14:41:33 GMT  
		Size: 269.6 MB (269624375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29ba11730eecf917009f336c9652c6c2e50936bfe0b6aa3dd73f4a9df98019b`  
		Last Modified: Tue, 05 Mar 2019 14:40:52 GMT  
		Size: 821.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7409aa84dfe1f75edfb69e0cff5b37620bea9455db831cef659dfba0feedb2d9`  
		Last Modified: Tue, 05 Mar 2019 14:40:52 GMT  
		Size: 1.6 KB (1559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:9`

```console
$ docker pull nuxeo@sha256:7e3079dc88ea22170276ac6ba6c780a816f923bdc4dc6368b02bd86f54b4bbd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:9` - linux; amd64

```console
$ docker pull nuxeo@sha256:5ce852e630b7c2d41f6b2d01f3a83a5dd53c5145f610b88e6303cff4e3337379
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1258829003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35146eb427d61fb765f3f9697f3beab424f122260e60c193a970500849f896dc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:35:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 02:35:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:59:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:03:23 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:03:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 04:04:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 14:32:21 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 05 Mar 2019 14:35:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:35:57 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 05 Mar 2019 14:35:57 GMT
ENV NUXEO_USER=nuxeo
# Tue, 05 Mar 2019 14:35:57 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 05 Mar 2019 14:35:58 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 05 Mar 2019 14:37:19 GMT
ARG NUXEO_VERSION=9.10
# Tue, 05 Mar 2019 14:37:19 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip
# Tue, 05 Mar 2019 14:37:20 GMT
ARG NUXEO_MD5=327d23bbd5558565694027b11c0dd82a
# Tue, 05 Mar 2019 14:37:21 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 05 Mar 2019 14:38:04 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Tue, 05 Mar 2019 14:38:04 GMT
COPY dir:1d4b19e1e35500d85eafcc58364498b9325f119ce19917cefc60c7ad98e600e7 in /opt/nuxeo/server/templates/docker 
# Tue, 05 Mar 2019 14:38:05 GMT
COPY file:8f1eb15b3cc87be8784ed6bc39c958a3a06d1e375bda2ce728f297d14d74d526 in /etc/nuxeo/nuxeo.conf.template 
# Tue, 05 Mar 2019 14:38:05 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 05 Mar 2019 14:38:13 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 05 Mar 2019 14:38:14 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 14:38:14 GMT
WORKDIR /opt/nuxeo/server
# Tue, 05 Mar 2019 14:38:14 GMT
COPY file:d8f37458746cb2e17dae348b52babe8b858743784ee8dffc0c24d7026bf0e474 in / 
# Tue, 05 Mar 2019 14:38:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Mar 2019 14:38:15 GMT
EXPOSE 8080
# Tue, 05 Mar 2019 14:38:15 GMT
EXPOSE 8787
# Tue, 05 Mar 2019 14:38:15 GMT
CMD ["nuxeoctl" "console"]
# Tue, 05 Mar 2019 14:38:15 GMT
USER 1000
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0250231711a047a6e54e7107d7a3bfb0afd807f5f408d00be0d407c5b8395219`  
		Last Modified: Tue, 05 Mar 2019 02:43:42 GMT  
		Size: 10.8 MB (10781993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba9447437b5ee1da9b33b2e2d18add55a33d0b763075202e17cad7efd3ff8f`  
		Last Modified: Tue, 05 Mar 2019 02:43:41 GMT  
		Size: 4.3 MB (4340113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b4d327b352258a8208acc249d97d70cac3c5cda0cea4a08de4de3cb406d8e5`  
		Last Modified: Tue, 05 Mar 2019 02:43:57 GMT  
		Size: 50.1 MB (50065610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cddb9bb0d37c8247e709a0deea556c410b2c8f5f481eb3f70ee7624d41334fbf`  
		Last Modified: Tue, 05 Mar 2019 04:23:59 GMT  
		Size: 892.4 KB (892426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b535486c968ffbdf9f264ff4427502d75b637cea6a5b375ae4e8e63550621176`  
		Last Modified: Tue, 05 Mar 2019 04:26:31 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e976e6210c617c81b0b232554325eb2bda0385c3c10ffbf5f8f6d031deec4f`  
		Last Modified: Tue, 05 Mar 2019 04:26:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c11b10291d2a6a1af223d1892b22a25c11cd950117d699980479f8d061d56a`  
		Last Modified: Tue, 05 Mar 2019 04:26:59 GMT  
		Size: 134.0 MB (133975305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a1b97d3c091a9d316314b0057cc061951c6e92af45c11ecbeb9eb05d62228f`  
		Last Modified: Tue, 05 Mar 2019 14:42:08 GMT  
		Size: 243.1 MB (243116991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00da88979429a2c748a30111829142a73bf8561df022ea5b7b1a877a9804ee46`  
		Last Modified: Tue, 05 Mar 2019 14:42:14 GMT  
		Size: 4.4 KB (4418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccdadb4042414d1118084bab15f06736d7e1c821b9921a5ffa5cbdde18f12133`  
		Last Modified: Tue, 05 Mar 2019 14:43:00 GMT  
		Size: 385.2 MB (385151695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8487bd3a878e90444ed830c86c7fb404fc2596c0e425d9249dcfa1a0da46347`  
		Last Modified: Tue, 05 Mar 2019 14:42:13 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6339be45bc4f8f12861613fa7d4c0589106c9adcc007ae11ac41a6b9cec112b`  
		Last Modified: Tue, 05 Mar 2019 14:42:13 GMT  
		Size: 1.0 KB (1017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642a0d9d09d4799cce49c6ae61828414752bfe5d8ab4916d1127366cfae38349`  
		Last Modified: Tue, 05 Mar 2019 14:42:59 GMT  
		Size: 385.2 MB (385154898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fa9036280f800f858225dd9e20d3299be861249c2003f890ed91050de646215`  
		Last Modified: Tue, 05 Mar 2019 14:42:13 GMT  
		Size: 1.0 KB (1021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:9.10`

```console
$ docker pull nuxeo@sha256:7e3079dc88ea22170276ac6ba6c780a816f923bdc4dc6368b02bd86f54b4bbd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:9.10` - linux; amd64

```console
$ docker pull nuxeo@sha256:5ce852e630b7c2d41f6b2d01f3a83a5dd53c5145f610b88e6303cff4e3337379
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1258829003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35146eb427d61fb765f3f9697f3beab424f122260e60c193a970500849f896dc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:35:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 02:35:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:59:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:03:23 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:03:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 04:04:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 14:32:21 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 05 Mar 2019 14:35:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:35:57 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 05 Mar 2019 14:35:57 GMT
ENV NUXEO_USER=nuxeo
# Tue, 05 Mar 2019 14:35:57 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 05 Mar 2019 14:35:58 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 05 Mar 2019 14:37:19 GMT
ARG NUXEO_VERSION=9.10
# Tue, 05 Mar 2019 14:37:19 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip
# Tue, 05 Mar 2019 14:37:20 GMT
ARG NUXEO_MD5=327d23bbd5558565694027b11c0dd82a
# Tue, 05 Mar 2019 14:37:21 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 05 Mar 2019 14:38:04 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Tue, 05 Mar 2019 14:38:04 GMT
COPY dir:1d4b19e1e35500d85eafcc58364498b9325f119ce19917cefc60c7ad98e600e7 in /opt/nuxeo/server/templates/docker 
# Tue, 05 Mar 2019 14:38:05 GMT
COPY file:8f1eb15b3cc87be8784ed6bc39c958a3a06d1e375bda2ce728f297d14d74d526 in /etc/nuxeo/nuxeo.conf.template 
# Tue, 05 Mar 2019 14:38:05 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 05 Mar 2019 14:38:13 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 05 Mar 2019 14:38:14 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 14:38:14 GMT
WORKDIR /opt/nuxeo/server
# Tue, 05 Mar 2019 14:38:14 GMT
COPY file:d8f37458746cb2e17dae348b52babe8b858743784ee8dffc0c24d7026bf0e474 in / 
# Tue, 05 Mar 2019 14:38:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Mar 2019 14:38:15 GMT
EXPOSE 8080
# Tue, 05 Mar 2019 14:38:15 GMT
EXPOSE 8787
# Tue, 05 Mar 2019 14:38:15 GMT
CMD ["nuxeoctl" "console"]
# Tue, 05 Mar 2019 14:38:15 GMT
USER 1000
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0250231711a047a6e54e7107d7a3bfb0afd807f5f408d00be0d407c5b8395219`  
		Last Modified: Tue, 05 Mar 2019 02:43:42 GMT  
		Size: 10.8 MB (10781993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba9447437b5ee1da9b33b2e2d18add55a33d0b763075202e17cad7efd3ff8f`  
		Last Modified: Tue, 05 Mar 2019 02:43:41 GMT  
		Size: 4.3 MB (4340113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b4d327b352258a8208acc249d97d70cac3c5cda0cea4a08de4de3cb406d8e5`  
		Last Modified: Tue, 05 Mar 2019 02:43:57 GMT  
		Size: 50.1 MB (50065610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cddb9bb0d37c8247e709a0deea556c410b2c8f5f481eb3f70ee7624d41334fbf`  
		Last Modified: Tue, 05 Mar 2019 04:23:59 GMT  
		Size: 892.4 KB (892426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b535486c968ffbdf9f264ff4427502d75b637cea6a5b375ae4e8e63550621176`  
		Last Modified: Tue, 05 Mar 2019 04:26:31 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e976e6210c617c81b0b232554325eb2bda0385c3c10ffbf5f8f6d031deec4f`  
		Last Modified: Tue, 05 Mar 2019 04:26:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c11b10291d2a6a1af223d1892b22a25c11cd950117d699980479f8d061d56a`  
		Last Modified: Tue, 05 Mar 2019 04:26:59 GMT  
		Size: 134.0 MB (133975305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a1b97d3c091a9d316314b0057cc061951c6e92af45c11ecbeb9eb05d62228f`  
		Last Modified: Tue, 05 Mar 2019 14:42:08 GMT  
		Size: 243.1 MB (243116991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00da88979429a2c748a30111829142a73bf8561df022ea5b7b1a877a9804ee46`  
		Last Modified: Tue, 05 Mar 2019 14:42:14 GMT  
		Size: 4.4 KB (4418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccdadb4042414d1118084bab15f06736d7e1c821b9921a5ffa5cbdde18f12133`  
		Last Modified: Tue, 05 Mar 2019 14:43:00 GMT  
		Size: 385.2 MB (385151695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8487bd3a878e90444ed830c86c7fb404fc2596c0e425d9249dcfa1a0da46347`  
		Last Modified: Tue, 05 Mar 2019 14:42:13 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6339be45bc4f8f12861613fa7d4c0589106c9adcc007ae11ac41a6b9cec112b`  
		Last Modified: Tue, 05 Mar 2019 14:42:13 GMT  
		Size: 1.0 KB (1017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642a0d9d09d4799cce49c6ae61828414752bfe5d8ab4916d1127366cfae38349`  
		Last Modified: Tue, 05 Mar 2019 14:42:59 GMT  
		Size: 385.2 MB (385154898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fa9036280f800f858225dd9e20d3299be861249c2003f890ed91050de646215`  
		Last Modified: Tue, 05 Mar 2019 14:42:13 GMT  
		Size: 1.0 KB (1021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:FT`

```console
$ docker pull nuxeo@sha256:ae9eb8702ea41ecb64574f9fa15da6ad63d2ac25f2880d2e8ec9599060688885
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `nuxeo:FT` - linux; amd64

```console
$ docker pull nuxeo@sha256:4c4a06be9095cca84cebc0ec931219bf61b06c993a85d4963b3015630cab30d4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 GB (1199640233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e915a130e43ec6c67482fea5ff650abb3dbc12b0549dc4597cd0023c4445f806`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:35:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 02:35:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:59:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:03:23 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:03:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 04:04:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 14:32:21 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 05 Mar 2019 14:35:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:35:57 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 05 Mar 2019 14:35:57 GMT
ENV NUXEO_USER=nuxeo
# Tue, 05 Mar 2019 14:35:57 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 05 Mar 2019 14:35:58 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 05 Mar 2019 14:38:21 GMT
ARG NUXEO_VERSION=10.10
# Tue, 05 Mar 2019 14:38:21 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip
# Tue, 05 Mar 2019 14:38:21 GMT
ARG NUXEO_MD5=90ef2ac005020e880b6277510800c30c
# Tue, 05 Mar 2019 14:38:22 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 05 Mar 2019 14:39:01 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Tue, 05 Mar 2019 14:39:02 GMT
COPY dir:d28c2b4bdf31f5817cba5496caa3161d743da596ec68186e0c444ede39dd58ac in /opt/nuxeo/server/templates/docker 
# Tue, 05 Mar 2019 14:39:02 GMT
COPY file:dbaa7cc62ad81fbafea7350f8e1ec2045fdc4a962bcfd145d777fefaf7205910 in /etc/nuxeo/nuxeo.conf.template 
# Tue, 05 Mar 2019 14:39:02 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 05 Mar 2019 14:39:10 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 05 Mar 2019 14:39:11 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 14:39:11 GMT
WORKDIR /opt/nuxeo/server
# Tue, 05 Mar 2019 14:39:11 GMT
COPY file:d8f37458746cb2e17dae348b52babe8b858743784ee8dffc0c24d7026bf0e474 in / 
# Tue, 05 Mar 2019 14:39:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Mar 2019 14:39:12 GMT
EXPOSE 8080
# Tue, 05 Mar 2019 14:39:12 GMT
EXPOSE 8787
# Tue, 05 Mar 2019 14:39:12 GMT
CMD ["nuxeoctl" "console"]
# Tue, 05 Mar 2019 14:39:12 GMT
USER 1000
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0250231711a047a6e54e7107d7a3bfb0afd807f5f408d00be0d407c5b8395219`  
		Last Modified: Tue, 05 Mar 2019 02:43:42 GMT  
		Size: 10.8 MB (10781993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba9447437b5ee1da9b33b2e2d18add55a33d0b763075202e17cad7efd3ff8f`  
		Last Modified: Tue, 05 Mar 2019 02:43:41 GMT  
		Size: 4.3 MB (4340113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b4d327b352258a8208acc249d97d70cac3c5cda0cea4a08de4de3cb406d8e5`  
		Last Modified: Tue, 05 Mar 2019 02:43:57 GMT  
		Size: 50.1 MB (50065610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cddb9bb0d37c8247e709a0deea556c410b2c8f5f481eb3f70ee7624d41334fbf`  
		Last Modified: Tue, 05 Mar 2019 04:23:59 GMT  
		Size: 892.4 KB (892426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b535486c968ffbdf9f264ff4427502d75b637cea6a5b375ae4e8e63550621176`  
		Last Modified: Tue, 05 Mar 2019 04:26:31 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e976e6210c617c81b0b232554325eb2bda0385c3c10ffbf5f8f6d031deec4f`  
		Last Modified: Tue, 05 Mar 2019 04:26:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c11b10291d2a6a1af223d1892b22a25c11cd950117d699980479f8d061d56a`  
		Last Modified: Tue, 05 Mar 2019 04:26:59 GMT  
		Size: 134.0 MB (133975305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a1b97d3c091a9d316314b0057cc061951c6e92af45c11ecbeb9eb05d62228f`  
		Last Modified: Tue, 05 Mar 2019 14:42:08 GMT  
		Size: 243.1 MB (243116991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d84c2fe71b7f1aa7e29f97697fbf6172a6cf81bd08e8d57866b9749c84adf776`  
		Last Modified: Tue, 05 Mar 2019 14:43:28 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2d2e9dc656ffc0af9ac37662d6594a3578f6122882d6fbca968ef1b844ee03`  
		Last Modified: Tue, 05 Mar 2019 14:43:55 GMT  
		Size: 355.6 MB (355558725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4c7835a668f7cec9d165ad48792202d5b27824ffadd08b512d1eae7c62d7ef`  
		Last Modified: Tue, 05 Mar 2019 14:43:27 GMT  
		Size: 275.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4837fabd505f2aad6634c22227cc6db90bdeb9e74c65b060b3a6ac892e60ad1c`  
		Last Modified: Tue, 05 Mar 2019 14:43:27 GMT  
		Size: 989.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68c36770672d10fd21c45cfda55f164be7164f1cac62d4dca5ee629a7b6f9d6a`  
		Last Modified: Tue, 05 Mar 2019 14:43:55 GMT  
		Size: 355.6 MB (355559463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90247efaab7f832d8911cf6f113eafed5439c7431035da5243f5ce4a545f0414`  
		Last Modified: Tue, 05 Mar 2019 14:43:27 GMT  
		Size: 1.0 KB (1021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nuxeo:FT` - linux; arm64 variant v8

```console
$ docker pull nuxeo@sha256:2ef656aa07ca146f2f0810f86c49f4d3c8a02997f4dad0727cf99ff4f7ba3842
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 GB (1170492872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c52d768e9ae4a629173d8a4e95c7f397089151bbd390f9fd07b1814dd91d8a94`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 05 Mar 2019 10:00:23 GMT
ADD file:7bdd35ab84858c7d5864b73a83750df5ac3db71ce3e586a7da68d50ed15904c8 in / 
# Tue, 05 Mar 2019 10:00:24 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:31:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:32:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 11:33:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:09:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:19:06 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 12:19:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 12:19:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 12:19:13 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 12:19:14 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 12:19:14 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 12:24:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 22:11:59 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 05 Mar 2019 22:25:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 22:25:56 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 05 Mar 2019 22:25:59 GMT
ENV NUXEO_USER=nuxeo
# Tue, 05 Mar 2019 22:26:01 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 05 Mar 2019 22:26:03 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 05 Mar 2019 22:26:05 GMT
ARG NUXEO_VERSION=10.10
# Tue, 05 Mar 2019 22:26:07 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip
# Tue, 05 Mar 2019 22:26:09 GMT
ARG NUXEO_MD5=90ef2ac005020e880b6277510800c30c
# Tue, 05 Mar 2019 22:26:19 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 05 Mar 2019 22:28:23 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Tue, 05 Mar 2019 22:28:24 GMT
COPY dir:d28c2b4bdf31f5817cba5496caa3161d743da596ec68186e0c444ede39dd58ac in /opt/nuxeo/server/templates/docker 
# Tue, 05 Mar 2019 22:28:24 GMT
COPY file:dbaa7cc62ad81fbafea7350f8e1ec2045fdc4a962bcfd145d777fefaf7205910 in /etc/nuxeo/nuxeo.conf.template 
# Tue, 05 Mar 2019 22:28:25 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 05 Mar 2019 22:30:39 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 05 Mar 2019 22:30:58 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 22:31:01 GMT
WORKDIR /opt/nuxeo/server
# Tue, 05 Mar 2019 22:31:04 GMT
COPY file:d8f37458746cb2e17dae348b52babe8b858743784ee8dffc0c24d7026bf0e474 in / 
# Tue, 05 Mar 2019 22:31:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Mar 2019 22:31:09 GMT
EXPOSE 8080
# Tue, 05 Mar 2019 22:31:13 GMT
EXPOSE 8787
# Tue, 05 Mar 2019 22:31:16 GMT
CMD ["nuxeoctl" "console"]
# Tue, 05 Mar 2019 22:31:18 GMT
USER 1000
```

-	Layers:
	-	`sha256:fe62b3d54b9c915735c759d5d36826088c3c05a73dec307a4ec4cb502ad034ff`  
		Last Modified: Tue, 05 Mar 2019 10:06:07 GMT  
		Size: 43.1 MB (43131855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a498920bfeb2353594e13055200f3227c4992da6fb9617197ee55ebd4a723c`  
		Last Modified: Tue, 05 Mar 2019 11:46:32 GMT  
		Size: 9.7 MB (9730480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb8191548b27dfce511beab0eb0f4a401e160544b2f893ba98c3dc794636c53`  
		Last Modified: Tue, 05 Mar 2019 11:46:30 GMT  
		Size: 4.1 MB (4094079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63fe741ca3c91de7331744358ee1d4543b1be55d55bdde318da27773bc8522fd`  
		Last Modified: Tue, 05 Mar 2019 11:47:01 GMT  
		Size: 48.0 MB (48007524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5dc26bf4ffb69ecf6efe772ab6577745218f6748ee6071b4685fce7be5572a`  
		Last Modified: Tue, 05 Mar 2019 12:34:00 GMT  
		Size: 877.6 KB (877625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6966a83281a055917dcad184786c9a46c10458a44048e12c19b6c68b3679de47`  
		Last Modified: Tue, 05 Mar 2019 12:37:13 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec721d1411ce9965c94a59bc3b9d47cdf8d1cfab86efee7b3530fc842acd42a0`  
		Last Modified: Tue, 05 Mar 2019 12:37:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbdb1a98f907f39ab775525ba3971dbe1c3c74c694fed8451108307fe903828c`  
		Last Modified: Tue, 05 Mar 2019 12:37:57 GMT  
		Size: 122.3 MB (122281116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba601d82e746688a16268341f0a7962ea080ef02853cea10849801d831db06e`  
		Last Modified: Tue, 05 Mar 2019 22:33:04 GMT  
		Size: 231.2 MB (231244804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e817a28aa25648bcdf46de6ac01d8cce6586ba69035bb3436b1a73d5cd8cdb`  
		Last Modified: Tue, 05 Mar 2019 22:31:43 GMT  
		Size: 4.4 KB (4438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9d907e473f2b279f8500dcd491a82b218a5b68e1af441f0bb8d6491dc2cc6f1`  
		Last Modified: Tue, 05 Mar 2019 22:33:14 GMT  
		Size: 355.6 MB (355558719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3424c1e6276534bd4e07edafbdab1dab24a0bc648dd07c1fae69cfecbb927e1`  
		Last Modified: Tue, 05 Mar 2019 22:31:41 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2859f8f1503e4d0425c46e06c1d9da31a10c8b2cd531ffea2c7a789b218a57fa`  
		Last Modified: Tue, 05 Mar 2019 22:31:41 GMT  
		Size: 988.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3474cb8b1600e4b2d7c5b4b42bdf1b4585332b76d255a7d45500a51d5deb5943`  
		Last Modified: Tue, 05 Mar 2019 22:32:30 GMT  
		Size: 355.6 MB (355559567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0757b3db0ec002e3af140e38db4b52b415264a6f6ed4d81c17dddd5260f665ef`  
		Last Modified: Tue, 05 Mar 2019 22:31:41 GMT  
		Size: 1.0 KB (1022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:latest`

```console
$ docker pull nuxeo@sha256:ae9eb8702ea41ecb64574f9fa15da6ad63d2ac25f2880d2e8ec9599060688885
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `nuxeo:latest` - linux; amd64

```console
$ docker pull nuxeo@sha256:4c4a06be9095cca84cebc0ec931219bf61b06c993a85d4963b3015630cab30d4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 GB (1199640233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e915a130e43ec6c67482fea5ff650abb3dbc12b0549dc4597cd0023c4445f806`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:35:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 02:35:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:59:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:03:23 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:03:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 04:04:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 14:32:21 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 05 Mar 2019 14:35:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:35:57 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 05 Mar 2019 14:35:57 GMT
ENV NUXEO_USER=nuxeo
# Tue, 05 Mar 2019 14:35:57 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 05 Mar 2019 14:35:58 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 05 Mar 2019 14:38:21 GMT
ARG NUXEO_VERSION=10.10
# Tue, 05 Mar 2019 14:38:21 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip
# Tue, 05 Mar 2019 14:38:21 GMT
ARG NUXEO_MD5=90ef2ac005020e880b6277510800c30c
# Tue, 05 Mar 2019 14:38:22 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 05 Mar 2019 14:39:01 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Tue, 05 Mar 2019 14:39:02 GMT
COPY dir:d28c2b4bdf31f5817cba5496caa3161d743da596ec68186e0c444ede39dd58ac in /opt/nuxeo/server/templates/docker 
# Tue, 05 Mar 2019 14:39:02 GMT
COPY file:dbaa7cc62ad81fbafea7350f8e1ec2045fdc4a962bcfd145d777fefaf7205910 in /etc/nuxeo/nuxeo.conf.template 
# Tue, 05 Mar 2019 14:39:02 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 05 Mar 2019 14:39:10 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 05 Mar 2019 14:39:11 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 14:39:11 GMT
WORKDIR /opt/nuxeo/server
# Tue, 05 Mar 2019 14:39:11 GMT
COPY file:d8f37458746cb2e17dae348b52babe8b858743784ee8dffc0c24d7026bf0e474 in / 
# Tue, 05 Mar 2019 14:39:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Mar 2019 14:39:12 GMT
EXPOSE 8080
# Tue, 05 Mar 2019 14:39:12 GMT
EXPOSE 8787
# Tue, 05 Mar 2019 14:39:12 GMT
CMD ["nuxeoctl" "console"]
# Tue, 05 Mar 2019 14:39:12 GMT
USER 1000
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0250231711a047a6e54e7107d7a3bfb0afd807f5f408d00be0d407c5b8395219`  
		Last Modified: Tue, 05 Mar 2019 02:43:42 GMT  
		Size: 10.8 MB (10781993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba9447437b5ee1da9b33b2e2d18add55a33d0b763075202e17cad7efd3ff8f`  
		Last Modified: Tue, 05 Mar 2019 02:43:41 GMT  
		Size: 4.3 MB (4340113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b4d327b352258a8208acc249d97d70cac3c5cda0cea4a08de4de3cb406d8e5`  
		Last Modified: Tue, 05 Mar 2019 02:43:57 GMT  
		Size: 50.1 MB (50065610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cddb9bb0d37c8247e709a0deea556c410b2c8f5f481eb3f70ee7624d41334fbf`  
		Last Modified: Tue, 05 Mar 2019 04:23:59 GMT  
		Size: 892.4 KB (892426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b535486c968ffbdf9f264ff4427502d75b637cea6a5b375ae4e8e63550621176`  
		Last Modified: Tue, 05 Mar 2019 04:26:31 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e976e6210c617c81b0b232554325eb2bda0385c3c10ffbf5f8f6d031deec4f`  
		Last Modified: Tue, 05 Mar 2019 04:26:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c11b10291d2a6a1af223d1892b22a25c11cd950117d699980479f8d061d56a`  
		Last Modified: Tue, 05 Mar 2019 04:26:59 GMT  
		Size: 134.0 MB (133975305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a1b97d3c091a9d316314b0057cc061951c6e92af45c11ecbeb9eb05d62228f`  
		Last Modified: Tue, 05 Mar 2019 14:42:08 GMT  
		Size: 243.1 MB (243116991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d84c2fe71b7f1aa7e29f97697fbf6172a6cf81bd08e8d57866b9749c84adf776`  
		Last Modified: Tue, 05 Mar 2019 14:43:28 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2d2e9dc656ffc0af9ac37662d6594a3578f6122882d6fbca968ef1b844ee03`  
		Last Modified: Tue, 05 Mar 2019 14:43:55 GMT  
		Size: 355.6 MB (355558725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4c7835a668f7cec9d165ad48792202d5b27824ffadd08b512d1eae7c62d7ef`  
		Last Modified: Tue, 05 Mar 2019 14:43:27 GMT  
		Size: 275.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4837fabd505f2aad6634c22227cc6db90bdeb9e74c65b060b3a6ac892e60ad1c`  
		Last Modified: Tue, 05 Mar 2019 14:43:27 GMT  
		Size: 989.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68c36770672d10fd21c45cfda55f164be7164f1cac62d4dca5ee629a7b6f9d6a`  
		Last Modified: Tue, 05 Mar 2019 14:43:55 GMT  
		Size: 355.6 MB (355559463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90247efaab7f832d8911cf6f113eafed5439c7431035da5243f5ce4a545f0414`  
		Last Modified: Tue, 05 Mar 2019 14:43:27 GMT  
		Size: 1.0 KB (1021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nuxeo:latest` - linux; arm64 variant v8

```console
$ docker pull nuxeo@sha256:2ef656aa07ca146f2f0810f86c49f4d3c8a02997f4dad0727cf99ff4f7ba3842
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 GB (1170492872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c52d768e9ae4a629173d8a4e95c7f397089151bbd390f9fd07b1814dd91d8a94`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 05 Mar 2019 10:00:23 GMT
ADD file:7bdd35ab84858c7d5864b73a83750df5ac3db71ce3e586a7da68d50ed15904c8 in / 
# Tue, 05 Mar 2019 10:00:24 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:31:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:32:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 11:33:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:09:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:19:06 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 12:19:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 12:19:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 12:19:13 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 12:19:14 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 12:19:14 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 12:24:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 22:11:59 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 05 Mar 2019 22:25:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 22:25:56 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 05 Mar 2019 22:25:59 GMT
ENV NUXEO_USER=nuxeo
# Tue, 05 Mar 2019 22:26:01 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 05 Mar 2019 22:26:03 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 05 Mar 2019 22:26:05 GMT
ARG NUXEO_VERSION=10.10
# Tue, 05 Mar 2019 22:26:07 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip
# Tue, 05 Mar 2019 22:26:09 GMT
ARG NUXEO_MD5=90ef2ac005020e880b6277510800c30c
# Tue, 05 Mar 2019 22:26:19 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 05 Mar 2019 22:28:23 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Tue, 05 Mar 2019 22:28:24 GMT
COPY dir:d28c2b4bdf31f5817cba5496caa3161d743da596ec68186e0c444ede39dd58ac in /opt/nuxeo/server/templates/docker 
# Tue, 05 Mar 2019 22:28:24 GMT
COPY file:dbaa7cc62ad81fbafea7350f8e1ec2045fdc4a962bcfd145d777fefaf7205910 in /etc/nuxeo/nuxeo.conf.template 
# Tue, 05 Mar 2019 22:28:25 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 05 Mar 2019 22:30:39 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 05 Mar 2019 22:30:58 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 22:31:01 GMT
WORKDIR /opt/nuxeo/server
# Tue, 05 Mar 2019 22:31:04 GMT
COPY file:d8f37458746cb2e17dae348b52babe8b858743784ee8dffc0c24d7026bf0e474 in / 
# Tue, 05 Mar 2019 22:31:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Mar 2019 22:31:09 GMT
EXPOSE 8080
# Tue, 05 Mar 2019 22:31:13 GMT
EXPOSE 8787
# Tue, 05 Mar 2019 22:31:16 GMT
CMD ["nuxeoctl" "console"]
# Tue, 05 Mar 2019 22:31:18 GMT
USER 1000
```

-	Layers:
	-	`sha256:fe62b3d54b9c915735c759d5d36826088c3c05a73dec307a4ec4cb502ad034ff`  
		Last Modified: Tue, 05 Mar 2019 10:06:07 GMT  
		Size: 43.1 MB (43131855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a498920bfeb2353594e13055200f3227c4992da6fb9617197ee55ebd4a723c`  
		Last Modified: Tue, 05 Mar 2019 11:46:32 GMT  
		Size: 9.7 MB (9730480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb8191548b27dfce511beab0eb0f4a401e160544b2f893ba98c3dc794636c53`  
		Last Modified: Tue, 05 Mar 2019 11:46:30 GMT  
		Size: 4.1 MB (4094079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63fe741ca3c91de7331744358ee1d4543b1be55d55bdde318da27773bc8522fd`  
		Last Modified: Tue, 05 Mar 2019 11:47:01 GMT  
		Size: 48.0 MB (48007524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5dc26bf4ffb69ecf6efe772ab6577745218f6748ee6071b4685fce7be5572a`  
		Last Modified: Tue, 05 Mar 2019 12:34:00 GMT  
		Size: 877.6 KB (877625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6966a83281a055917dcad184786c9a46c10458a44048e12c19b6c68b3679de47`  
		Last Modified: Tue, 05 Mar 2019 12:37:13 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec721d1411ce9965c94a59bc3b9d47cdf8d1cfab86efee7b3530fc842acd42a0`  
		Last Modified: Tue, 05 Mar 2019 12:37:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbdb1a98f907f39ab775525ba3971dbe1c3c74c694fed8451108307fe903828c`  
		Last Modified: Tue, 05 Mar 2019 12:37:57 GMT  
		Size: 122.3 MB (122281116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba601d82e746688a16268341f0a7962ea080ef02853cea10849801d831db06e`  
		Last Modified: Tue, 05 Mar 2019 22:33:04 GMT  
		Size: 231.2 MB (231244804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e817a28aa25648bcdf46de6ac01d8cce6586ba69035bb3436b1a73d5cd8cdb`  
		Last Modified: Tue, 05 Mar 2019 22:31:43 GMT  
		Size: 4.4 KB (4438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9d907e473f2b279f8500dcd491a82b218a5b68e1af441f0bb8d6491dc2cc6f1`  
		Last Modified: Tue, 05 Mar 2019 22:33:14 GMT  
		Size: 355.6 MB (355558719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3424c1e6276534bd4e07edafbdab1dab24a0bc648dd07c1fae69cfecbb927e1`  
		Last Modified: Tue, 05 Mar 2019 22:31:41 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2859f8f1503e4d0425c46e06c1d9da31a10c8b2cd531ffea2c7a789b218a57fa`  
		Last Modified: Tue, 05 Mar 2019 22:31:41 GMT  
		Size: 988.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3474cb8b1600e4b2d7c5b4b42bdf1b4585332b76d255a7d45500a51d5deb5943`  
		Last Modified: Tue, 05 Mar 2019 22:32:30 GMT  
		Size: 355.6 MB (355559567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0757b3db0ec002e3af140e38db4b52b415264a6f6ed4d81c17dddd5260f665ef`  
		Last Modified: Tue, 05 Mar 2019 22:31:41 GMT  
		Size: 1.0 KB (1022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS`

```console
$ docker pull nuxeo@sha256:ae9eb8702ea41ecb64574f9fa15da6ad63d2ac25f2880d2e8ec9599060688885
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `nuxeo:LTS` - linux; amd64

```console
$ docker pull nuxeo@sha256:4c4a06be9095cca84cebc0ec931219bf61b06c993a85d4963b3015630cab30d4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 GB (1199640233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e915a130e43ec6c67482fea5ff650abb3dbc12b0549dc4597cd0023c4445f806`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:35:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 02:35:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:59:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:03:23 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:03:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 04:04:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 14:32:21 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 05 Mar 2019 14:35:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:35:57 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 05 Mar 2019 14:35:57 GMT
ENV NUXEO_USER=nuxeo
# Tue, 05 Mar 2019 14:35:57 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 05 Mar 2019 14:35:58 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 05 Mar 2019 14:38:21 GMT
ARG NUXEO_VERSION=10.10
# Tue, 05 Mar 2019 14:38:21 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip
# Tue, 05 Mar 2019 14:38:21 GMT
ARG NUXEO_MD5=90ef2ac005020e880b6277510800c30c
# Tue, 05 Mar 2019 14:38:22 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 05 Mar 2019 14:39:01 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Tue, 05 Mar 2019 14:39:02 GMT
COPY dir:d28c2b4bdf31f5817cba5496caa3161d743da596ec68186e0c444ede39dd58ac in /opt/nuxeo/server/templates/docker 
# Tue, 05 Mar 2019 14:39:02 GMT
COPY file:dbaa7cc62ad81fbafea7350f8e1ec2045fdc4a962bcfd145d777fefaf7205910 in /etc/nuxeo/nuxeo.conf.template 
# Tue, 05 Mar 2019 14:39:02 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 05 Mar 2019 14:39:10 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 05 Mar 2019 14:39:11 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 14:39:11 GMT
WORKDIR /opt/nuxeo/server
# Tue, 05 Mar 2019 14:39:11 GMT
COPY file:d8f37458746cb2e17dae348b52babe8b858743784ee8dffc0c24d7026bf0e474 in / 
# Tue, 05 Mar 2019 14:39:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Mar 2019 14:39:12 GMT
EXPOSE 8080
# Tue, 05 Mar 2019 14:39:12 GMT
EXPOSE 8787
# Tue, 05 Mar 2019 14:39:12 GMT
CMD ["nuxeoctl" "console"]
# Tue, 05 Mar 2019 14:39:12 GMT
USER 1000
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0250231711a047a6e54e7107d7a3bfb0afd807f5f408d00be0d407c5b8395219`  
		Last Modified: Tue, 05 Mar 2019 02:43:42 GMT  
		Size: 10.8 MB (10781993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba9447437b5ee1da9b33b2e2d18add55a33d0b763075202e17cad7efd3ff8f`  
		Last Modified: Tue, 05 Mar 2019 02:43:41 GMT  
		Size: 4.3 MB (4340113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b4d327b352258a8208acc249d97d70cac3c5cda0cea4a08de4de3cb406d8e5`  
		Last Modified: Tue, 05 Mar 2019 02:43:57 GMT  
		Size: 50.1 MB (50065610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cddb9bb0d37c8247e709a0deea556c410b2c8f5f481eb3f70ee7624d41334fbf`  
		Last Modified: Tue, 05 Mar 2019 04:23:59 GMT  
		Size: 892.4 KB (892426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b535486c968ffbdf9f264ff4427502d75b637cea6a5b375ae4e8e63550621176`  
		Last Modified: Tue, 05 Mar 2019 04:26:31 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e976e6210c617c81b0b232554325eb2bda0385c3c10ffbf5f8f6d031deec4f`  
		Last Modified: Tue, 05 Mar 2019 04:26:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c11b10291d2a6a1af223d1892b22a25c11cd950117d699980479f8d061d56a`  
		Last Modified: Tue, 05 Mar 2019 04:26:59 GMT  
		Size: 134.0 MB (133975305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a1b97d3c091a9d316314b0057cc061951c6e92af45c11ecbeb9eb05d62228f`  
		Last Modified: Tue, 05 Mar 2019 14:42:08 GMT  
		Size: 243.1 MB (243116991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d84c2fe71b7f1aa7e29f97697fbf6172a6cf81bd08e8d57866b9749c84adf776`  
		Last Modified: Tue, 05 Mar 2019 14:43:28 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2d2e9dc656ffc0af9ac37662d6594a3578f6122882d6fbca968ef1b844ee03`  
		Last Modified: Tue, 05 Mar 2019 14:43:55 GMT  
		Size: 355.6 MB (355558725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4c7835a668f7cec9d165ad48792202d5b27824ffadd08b512d1eae7c62d7ef`  
		Last Modified: Tue, 05 Mar 2019 14:43:27 GMT  
		Size: 275.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4837fabd505f2aad6634c22227cc6db90bdeb9e74c65b060b3a6ac892e60ad1c`  
		Last Modified: Tue, 05 Mar 2019 14:43:27 GMT  
		Size: 989.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68c36770672d10fd21c45cfda55f164be7164f1cac62d4dca5ee629a7b6f9d6a`  
		Last Modified: Tue, 05 Mar 2019 14:43:55 GMT  
		Size: 355.6 MB (355559463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90247efaab7f832d8911cf6f113eafed5439c7431035da5243f5ce4a545f0414`  
		Last Modified: Tue, 05 Mar 2019 14:43:27 GMT  
		Size: 1.0 KB (1021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nuxeo:LTS` - linux; arm64 variant v8

```console
$ docker pull nuxeo@sha256:2ef656aa07ca146f2f0810f86c49f4d3c8a02997f4dad0727cf99ff4f7ba3842
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 GB (1170492872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c52d768e9ae4a629173d8a4e95c7f397089151bbd390f9fd07b1814dd91d8a94`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 05 Mar 2019 10:00:23 GMT
ADD file:7bdd35ab84858c7d5864b73a83750df5ac3db71ce3e586a7da68d50ed15904c8 in / 
# Tue, 05 Mar 2019 10:00:24 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:31:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:32:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 11:33:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:09:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:19:06 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 12:19:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 12:19:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 12:19:13 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 12:19:14 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 12:19:14 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 12:24:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 22:11:59 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 05 Mar 2019 22:25:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 22:25:56 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 05 Mar 2019 22:25:59 GMT
ENV NUXEO_USER=nuxeo
# Tue, 05 Mar 2019 22:26:01 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 05 Mar 2019 22:26:03 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 05 Mar 2019 22:26:05 GMT
ARG NUXEO_VERSION=10.10
# Tue, 05 Mar 2019 22:26:07 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip
# Tue, 05 Mar 2019 22:26:09 GMT
ARG NUXEO_MD5=90ef2ac005020e880b6277510800c30c
# Tue, 05 Mar 2019 22:26:19 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 05 Mar 2019 22:28:23 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Tue, 05 Mar 2019 22:28:24 GMT
COPY dir:d28c2b4bdf31f5817cba5496caa3161d743da596ec68186e0c444ede39dd58ac in /opt/nuxeo/server/templates/docker 
# Tue, 05 Mar 2019 22:28:24 GMT
COPY file:dbaa7cc62ad81fbafea7350f8e1ec2045fdc4a962bcfd145d777fefaf7205910 in /etc/nuxeo/nuxeo.conf.template 
# Tue, 05 Mar 2019 22:28:25 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 05 Mar 2019 22:30:39 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 05 Mar 2019 22:30:58 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 22:31:01 GMT
WORKDIR /opt/nuxeo/server
# Tue, 05 Mar 2019 22:31:04 GMT
COPY file:d8f37458746cb2e17dae348b52babe8b858743784ee8dffc0c24d7026bf0e474 in / 
# Tue, 05 Mar 2019 22:31:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Mar 2019 22:31:09 GMT
EXPOSE 8080
# Tue, 05 Mar 2019 22:31:13 GMT
EXPOSE 8787
# Tue, 05 Mar 2019 22:31:16 GMT
CMD ["nuxeoctl" "console"]
# Tue, 05 Mar 2019 22:31:18 GMT
USER 1000
```

-	Layers:
	-	`sha256:fe62b3d54b9c915735c759d5d36826088c3c05a73dec307a4ec4cb502ad034ff`  
		Last Modified: Tue, 05 Mar 2019 10:06:07 GMT  
		Size: 43.1 MB (43131855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a498920bfeb2353594e13055200f3227c4992da6fb9617197ee55ebd4a723c`  
		Last Modified: Tue, 05 Mar 2019 11:46:32 GMT  
		Size: 9.7 MB (9730480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb8191548b27dfce511beab0eb0f4a401e160544b2f893ba98c3dc794636c53`  
		Last Modified: Tue, 05 Mar 2019 11:46:30 GMT  
		Size: 4.1 MB (4094079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63fe741ca3c91de7331744358ee1d4543b1be55d55bdde318da27773bc8522fd`  
		Last Modified: Tue, 05 Mar 2019 11:47:01 GMT  
		Size: 48.0 MB (48007524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5dc26bf4ffb69ecf6efe772ab6577745218f6748ee6071b4685fce7be5572a`  
		Last Modified: Tue, 05 Mar 2019 12:34:00 GMT  
		Size: 877.6 KB (877625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6966a83281a055917dcad184786c9a46c10458a44048e12c19b6c68b3679de47`  
		Last Modified: Tue, 05 Mar 2019 12:37:13 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec721d1411ce9965c94a59bc3b9d47cdf8d1cfab86efee7b3530fc842acd42a0`  
		Last Modified: Tue, 05 Mar 2019 12:37:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbdb1a98f907f39ab775525ba3971dbe1c3c74c694fed8451108307fe903828c`  
		Last Modified: Tue, 05 Mar 2019 12:37:57 GMT  
		Size: 122.3 MB (122281116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba601d82e746688a16268341f0a7962ea080ef02853cea10849801d831db06e`  
		Last Modified: Tue, 05 Mar 2019 22:33:04 GMT  
		Size: 231.2 MB (231244804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e817a28aa25648bcdf46de6ac01d8cce6586ba69035bb3436b1a73d5cd8cdb`  
		Last Modified: Tue, 05 Mar 2019 22:31:43 GMT  
		Size: 4.4 KB (4438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9d907e473f2b279f8500dcd491a82b218a5b68e1af441f0bb8d6491dc2cc6f1`  
		Last Modified: Tue, 05 Mar 2019 22:33:14 GMT  
		Size: 355.6 MB (355558719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3424c1e6276534bd4e07edafbdab1dab24a0bc648dd07c1fae69cfecbb927e1`  
		Last Modified: Tue, 05 Mar 2019 22:31:41 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2859f8f1503e4d0425c46e06c1d9da31a10c8b2cd531ffea2c7a789b218a57fa`  
		Last Modified: Tue, 05 Mar 2019 22:31:41 GMT  
		Size: 988.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3474cb8b1600e4b2d7c5b4b42bdf1b4585332b76d255a7d45500a51d5deb5943`  
		Last Modified: Tue, 05 Mar 2019 22:32:30 GMT  
		Size: 355.6 MB (355559567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0757b3db0ec002e3af140e38db4b52b415264a6f6ed4d81c17dddd5260f665ef`  
		Last Modified: Tue, 05 Mar 2019 22:31:41 GMT  
		Size: 1.0 KB (1022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS-2015`

```console
$ docker pull nuxeo@sha256:9b2c6409d64652a15fcc779cdfd06d3f8ec3ce8422192bf2787d178805018d24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:LTS-2015` - linux; amd64

```console
$ docker pull nuxeo@sha256:e295cda653409f82a7170290c359962b69e731f2a167e9cda503c94138dcb959
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1045555505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:474175901d528edb751db598a76a3280bb1d763e0012318d40e7caaf0ee7b79e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:35:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 02:35:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:59:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:03:23 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:03:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 04:04:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 14:32:21 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 05 Mar 2019 14:33:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:33:54 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 05 Mar 2019 14:33:55 GMT
ENV NUXEO_USER=nuxeo
# Tue, 05 Mar 2019 14:33:55 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 05 Mar 2019 14:33:55 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 05 Mar 2019 14:33:55 GMT
ARG NUXEO_VERSION=7.10
# Tue, 05 Mar 2019 14:33:55 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip
# Tue, 05 Mar 2019 14:33:56 GMT
ARG NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Tue, 05 Mar 2019 14:33:56 GMT
ENV LAUNCHER_DEBUG=-Djvmcheck=nofail
# Tue, 05 Mar 2019 14:33:57 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 05 Mar 2019 14:34:31 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Tue, 05 Mar 2019 14:34:39 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Tue, 05 Mar 2019 14:34:40 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d     && chmod g=u /etc/passwd
# Tue, 05 Mar 2019 14:34:41 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 14:34:41 GMT
WORKDIR /opt/nuxeo/server
# Tue, 05 Mar 2019 14:34:42 GMT
COPY file:b03749ac857d73dce5a6a9a97f2b99c07db8eccd08d95e8348f7f1eb81b70af8 in / 
# Tue, 05 Mar 2019 14:34:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Mar 2019 14:34:42 GMT
EXPOSE 8080
# Tue, 05 Mar 2019 14:34:43 GMT
EXPOSE 8787
# Tue, 05 Mar 2019 14:34:43 GMT
CMD ["nuxeoctl" "console"]
# Tue, 05 Mar 2019 14:34:43 GMT
USER 1000
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0250231711a047a6e54e7107d7a3bfb0afd807f5f408d00be0d407c5b8395219`  
		Last Modified: Tue, 05 Mar 2019 02:43:42 GMT  
		Size: 10.8 MB (10781993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba9447437b5ee1da9b33b2e2d18add55a33d0b763075202e17cad7efd3ff8f`  
		Last Modified: Tue, 05 Mar 2019 02:43:41 GMT  
		Size: 4.3 MB (4340113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b4d327b352258a8208acc249d97d70cac3c5cda0cea4a08de4de3cb406d8e5`  
		Last Modified: Tue, 05 Mar 2019 02:43:57 GMT  
		Size: 50.1 MB (50065610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cddb9bb0d37c8247e709a0deea556c410b2c8f5f481eb3f70ee7624d41334fbf`  
		Last Modified: Tue, 05 Mar 2019 04:23:59 GMT  
		Size: 892.4 KB (892426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b535486c968ffbdf9f264ff4427502d75b637cea6a5b375ae4e8e63550621176`  
		Last Modified: Tue, 05 Mar 2019 04:26:31 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e976e6210c617c81b0b232554325eb2bda0385c3c10ffbf5f8f6d031deec4f`  
		Last Modified: Tue, 05 Mar 2019 04:26:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c11b10291d2a6a1af223d1892b22a25c11cd950117d699980479f8d061d56a`  
		Last Modified: Tue, 05 Mar 2019 04:26:59 GMT  
		Size: 134.0 MB (133975305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5154973b8e9da91a63d8eb3b9735ab4a023050bf1b13eb6b8beafb8e43787126`  
		Last Modified: Tue, 05 Mar 2019 14:40:46 GMT  
		Size: 239.2 MB (239232520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeea56823cdf28e0e5e8e80052b13375996b5ad21c5f2434eadd4d4ded51cc9e`  
		Last Modified: Tue, 05 Mar 2019 14:39:32 GMT  
		Size: 4.4 KB (4413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86071aa335705c4993932c359c0710761a23095f8362dcef8840240152d4916b`  
		Last Modified: Tue, 05 Mar 2019 14:40:00 GMT  
		Size: 280.5 MB (280457927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe6a1d7e9dbecdcdc54051aed742f6150038ef42dbe72116bfcb834f2ef86c6a`  
		Last Modified: Tue, 05 Mar 2019 14:40:00 GMT  
		Size: 280.5 MB (280459910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1beb6546dbf79417951c7c646f46030609e14a8bfc4efcf0b56481a8ede6038`  
		Last Modified: Tue, 05 Mar 2019 14:39:32 GMT  
		Size: 822.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c6099950ae1d13ca247b807b640bd148eed891d4a8876bb653623d6b34b869`  
		Last Modified: Tue, 05 Mar 2019 14:39:32 GMT  
		Size: 1.6 KB (1559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS-2016`

```console
$ docker pull nuxeo@sha256:48eb7140124487a3547e6d19542159c8a5dcfeacc992eeab91828e97f39325d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:LTS-2016` - linux; amd64

```console
$ docker pull nuxeo@sha256:ddf803b8056320a8feeaf0ec703d483b3bd235897bb89d197b82a6ad37d8f7da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1027768616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f35e73ff286c7805b3ac76337e2ad7cfff573dfb6a0c2b9c63b23ab9b7c0ca8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:35:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 02:35:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:59:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:03:23 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:03:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 04:04:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 14:32:21 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 05 Mar 2019 14:35:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:35:57 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 05 Mar 2019 14:35:57 GMT
ENV NUXEO_USER=nuxeo
# Tue, 05 Mar 2019 14:35:57 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 05 Mar 2019 14:35:58 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 05 Mar 2019 14:35:58 GMT
ARG NUXEO_VERSION=8.10
# Tue, 05 Mar 2019 14:35:59 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip
# Tue, 05 Mar 2019 14:35:59 GMT
ARG NUXEO_MD5=29e67a19bba54099093b51d892926be1
# Tue, 05 Mar 2019 14:36:01 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 05 Mar 2019 14:36:57 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Tue, 05 Mar 2019 14:37:04 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Tue, 05 Mar 2019 14:37:06 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d     && chmod g=u /etc/passwd
# Tue, 05 Mar 2019 14:37:06 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 14:37:07 GMT
WORKDIR /opt/nuxeo/server
# Tue, 05 Mar 2019 14:37:07 GMT
COPY file:b03749ac857d73dce5a6a9a97f2b99c07db8eccd08d95e8348f7f1eb81b70af8 in / 
# Tue, 05 Mar 2019 14:37:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Mar 2019 14:37:08 GMT
EXPOSE 8080
# Tue, 05 Mar 2019 14:37:08 GMT
EXPOSE 8787
# Tue, 05 Mar 2019 14:37:09 GMT
CMD ["nuxeoctl" "console"]
# Tue, 05 Mar 2019 14:37:09 GMT
USER 1000
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0250231711a047a6e54e7107d7a3bfb0afd807f5f408d00be0d407c5b8395219`  
		Last Modified: Tue, 05 Mar 2019 02:43:42 GMT  
		Size: 10.8 MB (10781993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba9447437b5ee1da9b33b2e2d18add55a33d0b763075202e17cad7efd3ff8f`  
		Last Modified: Tue, 05 Mar 2019 02:43:41 GMT  
		Size: 4.3 MB (4340113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b4d327b352258a8208acc249d97d70cac3c5cda0cea4a08de4de3cb406d8e5`  
		Last Modified: Tue, 05 Mar 2019 02:43:57 GMT  
		Size: 50.1 MB (50065610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cddb9bb0d37c8247e709a0deea556c410b2c8f5f481eb3f70ee7624d41334fbf`  
		Last Modified: Tue, 05 Mar 2019 04:23:59 GMT  
		Size: 892.4 KB (892426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b535486c968ffbdf9f264ff4427502d75b637cea6a5b375ae4e8e63550621176`  
		Last Modified: Tue, 05 Mar 2019 04:26:31 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e976e6210c617c81b0b232554325eb2bda0385c3c10ffbf5f8f6d031deec4f`  
		Last Modified: Tue, 05 Mar 2019 04:26:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c11b10291d2a6a1af223d1892b22a25c11cd950117d699980479f8d061d56a`  
		Last Modified: Tue, 05 Mar 2019 04:26:59 GMT  
		Size: 134.0 MB (133975305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a1b97d3c091a9d316314b0057cc061951c6e92af45c11ecbeb9eb05d62228f`  
		Last Modified: Tue, 05 Mar 2019 14:42:08 GMT  
		Size: 243.1 MB (243116991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe35675fed101c53c50e94c6a91d5766c4efe7258dbc0e7d1dce8b30b0f83fd2`  
		Last Modified: Tue, 05 Mar 2019 14:40:53 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45bd349c0c0620eccde0f7eafe7cce75d966950757b5276c727c3fdf1480d2cb`  
		Last Modified: Tue, 05 Mar 2019 14:41:32 GMT  
		Size: 269.6 MB (269622099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f598695dbb184a6eea7c10caa8c44463378fb92567ae1d2d29b0fcc280a5744`  
		Last Modified: Tue, 05 Mar 2019 14:41:33 GMT  
		Size: 269.6 MB (269624375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e29ba11730eecf917009f336c9652c6c2e50936bfe0b6aa3dd73f4a9df98019b`  
		Last Modified: Tue, 05 Mar 2019 14:40:52 GMT  
		Size: 821.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7409aa84dfe1f75edfb69e0cff5b37620bea9455db831cef659dfba0feedb2d9`  
		Last Modified: Tue, 05 Mar 2019 14:40:52 GMT  
		Size: 1.6 KB (1559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS-2017`

```console
$ docker pull nuxeo@sha256:7e3079dc88ea22170276ac6ba6c780a816f923bdc4dc6368b02bd86f54b4bbd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:LTS-2017` - linux; amd64

```console
$ docker pull nuxeo@sha256:5ce852e630b7c2d41f6b2d01f3a83a5dd53c5145f610b88e6303cff4e3337379
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1258829003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35146eb427d61fb765f3f9697f3beab424f122260e60c193a970500849f896dc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:35:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 02:35:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:59:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:03:23 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:03:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 04:04:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 14:32:21 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 05 Mar 2019 14:35:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:35:57 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 05 Mar 2019 14:35:57 GMT
ENV NUXEO_USER=nuxeo
# Tue, 05 Mar 2019 14:35:57 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 05 Mar 2019 14:35:58 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 05 Mar 2019 14:37:19 GMT
ARG NUXEO_VERSION=9.10
# Tue, 05 Mar 2019 14:37:19 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip
# Tue, 05 Mar 2019 14:37:20 GMT
ARG NUXEO_MD5=327d23bbd5558565694027b11c0dd82a
# Tue, 05 Mar 2019 14:37:21 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 05 Mar 2019 14:38:04 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Tue, 05 Mar 2019 14:38:04 GMT
COPY dir:1d4b19e1e35500d85eafcc58364498b9325f119ce19917cefc60c7ad98e600e7 in /opt/nuxeo/server/templates/docker 
# Tue, 05 Mar 2019 14:38:05 GMT
COPY file:8f1eb15b3cc87be8784ed6bc39c958a3a06d1e375bda2ce728f297d14d74d526 in /etc/nuxeo/nuxeo.conf.template 
# Tue, 05 Mar 2019 14:38:05 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 05 Mar 2019 14:38:13 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 05 Mar 2019 14:38:14 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 14:38:14 GMT
WORKDIR /opt/nuxeo/server
# Tue, 05 Mar 2019 14:38:14 GMT
COPY file:d8f37458746cb2e17dae348b52babe8b858743784ee8dffc0c24d7026bf0e474 in / 
# Tue, 05 Mar 2019 14:38:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Mar 2019 14:38:15 GMT
EXPOSE 8080
# Tue, 05 Mar 2019 14:38:15 GMT
EXPOSE 8787
# Tue, 05 Mar 2019 14:38:15 GMT
CMD ["nuxeoctl" "console"]
# Tue, 05 Mar 2019 14:38:15 GMT
USER 1000
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0250231711a047a6e54e7107d7a3bfb0afd807f5f408d00be0d407c5b8395219`  
		Last Modified: Tue, 05 Mar 2019 02:43:42 GMT  
		Size: 10.8 MB (10781993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba9447437b5ee1da9b33b2e2d18add55a33d0b763075202e17cad7efd3ff8f`  
		Last Modified: Tue, 05 Mar 2019 02:43:41 GMT  
		Size: 4.3 MB (4340113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b4d327b352258a8208acc249d97d70cac3c5cda0cea4a08de4de3cb406d8e5`  
		Last Modified: Tue, 05 Mar 2019 02:43:57 GMT  
		Size: 50.1 MB (50065610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cddb9bb0d37c8247e709a0deea556c410b2c8f5f481eb3f70ee7624d41334fbf`  
		Last Modified: Tue, 05 Mar 2019 04:23:59 GMT  
		Size: 892.4 KB (892426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b535486c968ffbdf9f264ff4427502d75b637cea6a5b375ae4e8e63550621176`  
		Last Modified: Tue, 05 Mar 2019 04:26:31 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e976e6210c617c81b0b232554325eb2bda0385c3c10ffbf5f8f6d031deec4f`  
		Last Modified: Tue, 05 Mar 2019 04:26:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c11b10291d2a6a1af223d1892b22a25c11cd950117d699980479f8d061d56a`  
		Last Modified: Tue, 05 Mar 2019 04:26:59 GMT  
		Size: 134.0 MB (133975305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a1b97d3c091a9d316314b0057cc061951c6e92af45c11ecbeb9eb05d62228f`  
		Last Modified: Tue, 05 Mar 2019 14:42:08 GMT  
		Size: 243.1 MB (243116991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00da88979429a2c748a30111829142a73bf8561df022ea5b7b1a877a9804ee46`  
		Last Modified: Tue, 05 Mar 2019 14:42:14 GMT  
		Size: 4.4 KB (4418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccdadb4042414d1118084bab15f06736d7e1c821b9921a5ffa5cbdde18f12133`  
		Last Modified: Tue, 05 Mar 2019 14:43:00 GMT  
		Size: 385.2 MB (385151695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8487bd3a878e90444ed830c86c7fb404fc2596c0e425d9249dcfa1a0da46347`  
		Last Modified: Tue, 05 Mar 2019 14:42:13 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6339be45bc4f8f12861613fa7d4c0589106c9adcc007ae11ac41a6b9cec112b`  
		Last Modified: Tue, 05 Mar 2019 14:42:13 GMT  
		Size: 1.0 KB (1017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642a0d9d09d4799cce49c6ae61828414752bfe5d8ab4916d1127366cfae38349`  
		Last Modified: Tue, 05 Mar 2019 14:42:59 GMT  
		Size: 385.2 MB (385154898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fa9036280f800f858225dd9e20d3299be861249c2003f890ed91050de646215`  
		Last Modified: Tue, 05 Mar 2019 14:42:13 GMT  
		Size: 1.0 KB (1021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS-2019`

```console
$ docker pull nuxeo@sha256:ae9eb8702ea41ecb64574f9fa15da6ad63d2ac25f2880d2e8ec9599060688885
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `nuxeo:LTS-2019` - linux; amd64

```console
$ docker pull nuxeo@sha256:4c4a06be9095cca84cebc0ec931219bf61b06c993a85d4963b3015630cab30d4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 GB (1199640233 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e915a130e43ec6c67482fea5ff650abb3dbc12b0549dc4597cd0023c4445f806`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 04 Mar 2019 23:22:10 GMT
ADD file:e4bdc12117ee95eaa94b89f258164dd42f9828c7c5c4332a608707187ccb470a in / 
# Mon, 04 Mar 2019 23:22:10 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:35:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:35:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 02:35:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 03:59:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 04:03:23 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 04:03:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 04:03:25 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 04:04:10 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 14:32:21 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 05 Mar 2019 14:35:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:35:57 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 05 Mar 2019 14:35:57 GMT
ENV NUXEO_USER=nuxeo
# Tue, 05 Mar 2019 14:35:57 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 05 Mar 2019 14:35:58 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 05 Mar 2019 14:38:21 GMT
ARG NUXEO_VERSION=10.10
# Tue, 05 Mar 2019 14:38:21 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip
# Tue, 05 Mar 2019 14:38:21 GMT
ARG NUXEO_MD5=90ef2ac005020e880b6277510800c30c
# Tue, 05 Mar 2019 14:38:22 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 05 Mar 2019 14:39:01 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Tue, 05 Mar 2019 14:39:02 GMT
COPY dir:d28c2b4bdf31f5817cba5496caa3161d743da596ec68186e0c444ede39dd58ac in /opt/nuxeo/server/templates/docker 
# Tue, 05 Mar 2019 14:39:02 GMT
COPY file:dbaa7cc62ad81fbafea7350f8e1ec2045fdc4a962bcfd145d777fefaf7205910 in /etc/nuxeo/nuxeo.conf.template 
# Tue, 05 Mar 2019 14:39:02 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 05 Mar 2019 14:39:10 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 05 Mar 2019 14:39:11 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 14:39:11 GMT
WORKDIR /opt/nuxeo/server
# Tue, 05 Mar 2019 14:39:11 GMT
COPY file:d8f37458746cb2e17dae348b52babe8b858743784ee8dffc0c24d7026bf0e474 in / 
# Tue, 05 Mar 2019 14:39:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Mar 2019 14:39:12 GMT
EXPOSE 8080
# Tue, 05 Mar 2019 14:39:12 GMT
EXPOSE 8787
# Tue, 05 Mar 2019 14:39:12 GMT
CMD ["nuxeoctl" "console"]
# Tue, 05 Mar 2019 14:39:12 GMT
USER 1000
```

-	Layers:
	-	`sha256:22dbe790f71562dfd3d49406b1dfd1e85e50f3dd7cb2e97b3918376ca39cae4e`  
		Last Modified: Mon, 04 Mar 2019 23:26:18 GMT  
		Size: 45.3 MB (45342528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0250231711a047a6e54e7107d7a3bfb0afd807f5f408d00be0d407c5b8395219`  
		Last Modified: Tue, 05 Mar 2019 02:43:42 GMT  
		Size: 10.8 MB (10781993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fba9447437b5ee1da9b33b2e2d18add55a33d0b763075202e17cad7efd3ff8f`  
		Last Modified: Tue, 05 Mar 2019 02:43:41 GMT  
		Size: 4.3 MB (4340113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2b4d327b352258a8208acc249d97d70cac3c5cda0cea4a08de4de3cb406d8e5`  
		Last Modified: Tue, 05 Mar 2019 02:43:57 GMT  
		Size: 50.1 MB (50065610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cddb9bb0d37c8247e709a0deea556c410b2c8f5f481eb3f70ee7624d41334fbf`  
		Last Modified: Tue, 05 Mar 2019 04:23:59 GMT  
		Size: 892.4 KB (892426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b535486c968ffbdf9f264ff4427502d75b637cea6a5b375ae4e8e63550621176`  
		Last Modified: Tue, 05 Mar 2019 04:26:31 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3e976e6210c617c81b0b232554325eb2bda0385c3c10ffbf5f8f6d031deec4f`  
		Last Modified: Tue, 05 Mar 2019 04:26:31 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2c11b10291d2a6a1af223d1892b22a25c11cd950117d699980479f8d061d56a`  
		Last Modified: Tue, 05 Mar 2019 04:26:59 GMT  
		Size: 134.0 MB (133975305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6a1b97d3c091a9d316314b0057cc061951c6e92af45c11ecbeb9eb05d62228f`  
		Last Modified: Tue, 05 Mar 2019 14:42:08 GMT  
		Size: 243.1 MB (243116991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d84c2fe71b7f1aa7e29f97697fbf6172a6cf81bd08e8d57866b9749c84adf776`  
		Last Modified: Tue, 05 Mar 2019 14:43:28 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f2d2e9dc656ffc0af9ac37662d6594a3578f6122882d6fbca968ef1b844ee03`  
		Last Modified: Tue, 05 Mar 2019 14:43:55 GMT  
		Size: 355.6 MB (355558725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4c7835a668f7cec9d165ad48792202d5b27824ffadd08b512d1eae7c62d7ef`  
		Last Modified: Tue, 05 Mar 2019 14:43:27 GMT  
		Size: 275.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4837fabd505f2aad6634c22227cc6db90bdeb9e74c65b060b3a6ac892e60ad1c`  
		Last Modified: Tue, 05 Mar 2019 14:43:27 GMT  
		Size: 989.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68c36770672d10fd21c45cfda55f164be7164f1cac62d4dca5ee629a7b6f9d6a`  
		Last Modified: Tue, 05 Mar 2019 14:43:55 GMT  
		Size: 355.6 MB (355559463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90247efaab7f832d8911cf6f113eafed5439c7431035da5243f5ce4a545f0414`  
		Last Modified: Tue, 05 Mar 2019 14:43:27 GMT  
		Size: 1.0 KB (1021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `nuxeo:LTS-2019` - linux; arm64 variant v8

```console
$ docker pull nuxeo@sha256:2ef656aa07ca146f2f0810f86c49f4d3c8a02997f4dad0727cf99ff4f7ba3842
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 GB (1170492872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c52d768e9ae4a629173d8a4e95c7f397089151bbd390f9fd07b1814dd91d8a94`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 05 Mar 2019 10:00:23 GMT
ADD file:7bdd35ab84858c7d5864b73a83750df5ac3db71ce3e586a7da68d50ed15904c8 in / 
# Tue, 05 Mar 2019 10:00:24 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 11:31:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 11:32:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 11:33:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:09:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 12:19:06 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 12:19:08 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Mar 2019 12:19:10 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 05 Mar 2019 12:19:13 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 05 Mar 2019 12:19:14 GMT
ENV JAVA_VERSION=8u181
# Tue, 05 Mar 2019 12:19:14 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Tue, 05 Mar 2019 12:24:03 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 05 Mar 2019 22:11:59 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 05 Mar 2019 22:25:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 22:25:56 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 05 Mar 2019 22:25:59 GMT
ENV NUXEO_USER=nuxeo
# Tue, 05 Mar 2019 22:26:01 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 05 Mar 2019 22:26:03 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 05 Mar 2019 22:26:05 GMT
ARG NUXEO_VERSION=10.10
# Tue, 05 Mar 2019 22:26:07 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip
# Tue, 05 Mar 2019 22:26:09 GMT
ARG NUXEO_MD5=90ef2ac005020e880b6277510800c30c
# Tue, 05 Mar 2019 22:26:19 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 05 Mar 2019 22:28:23 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Tue, 05 Mar 2019 22:28:24 GMT
COPY dir:d28c2b4bdf31f5817cba5496caa3161d743da596ec68186e0c444ede39dd58ac in /opt/nuxeo/server/templates/docker 
# Tue, 05 Mar 2019 22:28:24 GMT
COPY file:dbaa7cc62ad81fbafea7350f8e1ec2045fdc4a962bcfd145d777fefaf7205910 in /etc/nuxeo/nuxeo.conf.template 
# Tue, 05 Mar 2019 22:28:25 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 05 Mar 2019 22:30:39 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.10/nuxeo-server-10.10-tomcat.zip NUXEO_MD5=90ef2ac005020e880b6277510800c30c NUXEO_VERSION=10.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 05 Mar 2019 22:30:58 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 22:31:01 GMT
WORKDIR /opt/nuxeo/server
# Tue, 05 Mar 2019 22:31:04 GMT
COPY file:d8f37458746cb2e17dae348b52babe8b858743784ee8dffc0c24d7026bf0e474 in / 
# Tue, 05 Mar 2019 22:31:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 05 Mar 2019 22:31:09 GMT
EXPOSE 8080
# Tue, 05 Mar 2019 22:31:13 GMT
EXPOSE 8787
# Tue, 05 Mar 2019 22:31:16 GMT
CMD ["nuxeoctl" "console"]
# Tue, 05 Mar 2019 22:31:18 GMT
USER 1000
```

-	Layers:
	-	`sha256:fe62b3d54b9c915735c759d5d36826088c3c05a73dec307a4ec4cb502ad034ff`  
		Last Modified: Tue, 05 Mar 2019 10:06:07 GMT  
		Size: 43.1 MB (43131855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08a498920bfeb2353594e13055200f3227c4992da6fb9617197ee55ebd4a723c`  
		Last Modified: Tue, 05 Mar 2019 11:46:32 GMT  
		Size: 9.7 MB (9730480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bb8191548b27dfce511beab0eb0f4a401e160544b2f893ba98c3dc794636c53`  
		Last Modified: Tue, 05 Mar 2019 11:46:30 GMT  
		Size: 4.1 MB (4094079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63fe741ca3c91de7331744358ee1d4543b1be55d55bdde318da27773bc8522fd`  
		Last Modified: Tue, 05 Mar 2019 11:47:01 GMT  
		Size: 48.0 MB (48007524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5dc26bf4ffb69ecf6efe772ab6577745218f6748ee6071b4685fce7be5572a`  
		Last Modified: Tue, 05 Mar 2019 12:34:00 GMT  
		Size: 877.6 KB (877625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6966a83281a055917dcad184786c9a46c10458a44048e12c19b6c68b3679de47`  
		Last Modified: Tue, 05 Mar 2019 12:37:13 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec721d1411ce9965c94a59bc3b9d47cdf8d1cfab86efee7b3530fc842acd42a0`  
		Last Modified: Tue, 05 Mar 2019 12:37:13 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbdb1a98f907f39ab775525ba3971dbe1c3c74c694fed8451108307fe903828c`  
		Last Modified: Tue, 05 Mar 2019 12:37:57 GMT  
		Size: 122.3 MB (122281116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dba601d82e746688a16268341f0a7962ea080ef02853cea10849801d831db06e`  
		Last Modified: Tue, 05 Mar 2019 22:33:04 GMT  
		Size: 231.2 MB (231244804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19e817a28aa25648bcdf46de6ac01d8cce6586ba69035bb3436b1a73d5cd8cdb`  
		Last Modified: Tue, 05 Mar 2019 22:31:43 GMT  
		Size: 4.4 KB (4438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9d907e473f2b279f8500dcd491a82b218a5b68e1af441f0bb8d6491dc2cc6f1`  
		Last Modified: Tue, 05 Mar 2019 22:33:14 GMT  
		Size: 355.6 MB (355558719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3424c1e6276534bd4e07edafbdab1dab24a0bc648dd07c1fae69cfecbb927e1`  
		Last Modified: Tue, 05 Mar 2019 22:31:41 GMT  
		Size: 276.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2859f8f1503e4d0425c46e06c1d9da31a10c8b2cd531ffea2c7a789b218a57fa`  
		Last Modified: Tue, 05 Mar 2019 22:31:41 GMT  
		Size: 988.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3474cb8b1600e4b2d7c5b4b42bdf1b4585332b76d255a7d45500a51d5deb5943`  
		Last Modified: Tue, 05 Mar 2019 22:32:30 GMT  
		Size: 355.6 MB (355559567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0757b3db0ec002e3af140e38db4b52b415264a6f6ed4d81c17dddd5260f665ef`  
		Last Modified: Tue, 05 Mar 2019 22:31:41 GMT  
		Size: 1.0 KB (1022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
