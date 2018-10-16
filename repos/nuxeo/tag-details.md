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
$ docker pull nuxeo@sha256:ceef986a828df79cf2b32c0a696b6560669ad99b3754077c5a25ccdf275c4c11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:10` - linux; amd64

```console
$ docker pull nuxeo@sha256:11e09e427e3811f5aca34320f42514f7f4da7e9429761449b92a0901fdfcf356
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 GB (1207590507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:601c1c181c283432fbb0aa2ea6f064c833b429c93758eb53008d4e24021086ad`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 01:01:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:25:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_VERSION=8u181
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 16 Oct 2018 05:25:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 16 Oct 2018 05:26:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 05:26:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 Oct 2018 17:47:32 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 16 Oct 2018 17:53:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 17:54:08 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 16 Oct 2018 17:54:08 GMT
ENV NUXEO_USER=nuxeo
# Tue, 16 Oct 2018 17:54:08 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 16 Oct 2018 17:54:08 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 16 Oct 2018 17:58:39 GMT
ARG NUXEO_VERSION=10.2
# Tue, 16 Oct 2018 17:58:39 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip
# Tue, 16 Oct 2018 17:58:39 GMT
ARG NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01
# Tue, 16 Oct 2018 17:58:41 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01 NUXEO_VERSION=10.2
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 16 Oct 2018 17:59:14 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01 NUXEO_VERSION=10.2
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Tue, 16 Oct 2018 17:59:15 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Tue, 16 Oct 2018 17:59:16 GMT
COPY file:4bef2f1f6b4ee418c784459e2fef01d05a75976842dfa0d5708e86cff319a87c in /etc/nuxeo/nuxeo.conf.template 
# Tue, 16 Oct 2018 17:59:16 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 16 Oct 2018 17:59:26 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01 NUXEO_VERSION=10.2
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 16 Oct 2018 17:59:38 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 17:59:39 GMT
WORKDIR /opt/nuxeo/server
# Tue, 16 Oct 2018 17:59:39 GMT
COPY file:b68c33898a1effa6e7ec54fb18544cb92f685f85aba3f75cfa01d1939dcc4680 in / 
# Tue, 16 Oct 2018 17:59:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 17:59:40 GMT
EXPOSE 8080/tcp
# Tue, 16 Oct 2018 17:59:40 GMT
EXPOSE 8787/tcp
# Tue, 16 Oct 2018 17:59:41 GMT
CMD ["nuxeoctl" "console"]
# Tue, 16 Oct 2018 17:59:41 GMT
USER [1000]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a587a86c9dcb9df6584180042becf21e36ecd8b460a761711227b4b06889a005`  
		Last Modified: Tue, 16 Oct 2018 01:14:38 GMT  
		Size: 50.1 MB (50065549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c7ee7ef122c78bdcb4087b1245788dfee5b7d7d796b8310bc75e5d02c4c067`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 892.3 KB (892344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c0dad691e9a2190a036b437280130e383481f0e0d5e4516a0d14de690ee0eb`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367a6a68b113cde265568261ba36f477c49ff982418a561fb85d9730b5aac9a3`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28351dec2f89f7318a7aa1b3941608f822580ffc822d6cd3205f26a39620dcb5`  
		Last Modified: Tue, 16 Oct 2018 05:54:51 GMT  
		Size: 134.0 MB (133992059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa52db486a37c500d18ca2f13053418efb23340bb21f4f9b5c9d7cf33d97f65`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 246.7 KB (246702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9342416bb04e3356c4a7f3cdb5d4ccf1fbe53e19e24df239ae8fd2906d9a164`  
		Last Modified: Tue, 16 Oct 2018 18:02:44 GMT  
		Size: 243.0 MB (242973377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f77c70d81be8cfceec20c25b3208af48b0635d605150dbe6b95484bdefe6963`  
		Last Modified: Tue, 16 Oct 2018 18:07:09 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b50d827bec1196cf9711f07b55f4460d81a83cbc8e57544b13614060b114622`  
		Last Modified: Tue, 16 Oct 2018 18:07:57 GMT  
		Size: 359.5 MB (359511645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:497c8fc47f0ba8d8379f97fb095e0bce2fb60d8ed3ea515fa04fd0e4a4a60259`  
		Last Modified: Tue, 16 Oct 2018 18:07:07 GMT  
		Size: 610.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07b823d3168a8dc488633a1151a967b391f59f72ebf1400e3acc41e327ed2254`  
		Last Modified: Tue, 16 Oct 2018 18:07:08 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d9e665b23d4ae7f04f002024f7d2b2eeec7c4fbee418466d197d01588d9edc`  
		Last Modified: Tue, 16 Oct 2018 18:07:58 GMT  
		Size: 359.5 MB (359515388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a8c9e28acd3b9c92b75f8c51989448606d9201e3c9b3ca81913f00e4117e0be`  
		Last Modified: Tue, 16 Oct 2018 18:07:07 GMT  
		Size: 1.0 KB (1021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:10.1`

```console
$ docker pull nuxeo@sha256:8d6094bd606e6c88f46a4d96932a6c4151123368f2b4e096e921ad1c2b62601f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:10.1` - linux; amd64

```console
$ docker pull nuxeo@sha256:99a8fa780696710a085b4cfc4000a05113ccab531cd05572e691945fb21df479
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1395201821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4bd692614d9065685ec5814b4fd8fc3123c2598e0ee2319c3c3d386b1155e5a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 01:01:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:25:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_VERSION=8u181
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 16 Oct 2018 05:25:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 16 Oct 2018 05:26:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 05:26:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 Oct 2018 17:47:32 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 16 Oct 2018 17:53:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 17:54:08 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 16 Oct 2018 17:54:08 GMT
ENV NUXEO_USER=nuxeo
# Tue, 16 Oct 2018 17:54:08 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 16 Oct 2018 17:54:08 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 16 Oct 2018 17:56:34 GMT
ARG NUXEO_VERSION=10.1
# Tue, 16 Oct 2018 17:56:34 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip
# Tue, 16 Oct 2018 17:56:34 GMT
ARG NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162
# Tue, 16 Oct 2018 17:56:38 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162 NUXEO_VERSION=10.1
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 16 Oct 2018 17:57:47 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162 NUXEO_VERSION=10.1
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Tue, 16 Oct 2018 17:58:03 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Tue, 16 Oct 2018 17:58:03 GMT
COPY file:4bef2f1f6b4ee418c784459e2fef01d05a75976842dfa0d5708e86cff319a87c in /etc/nuxeo/nuxeo.conf.template 
# Tue, 16 Oct 2018 17:58:04 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 16 Oct 2018 17:58:15 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162 NUXEO_VERSION=10.1
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 16 Oct 2018 17:58:15 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 17:58:16 GMT
WORKDIR /opt/nuxeo/server
# Tue, 16 Oct 2018 17:58:16 GMT
COPY file:749f7de88227793c0214c52f0deb9d353a9a98ccf05c06ddca1eaafa3fae3e51 in / 
# Tue, 16 Oct 2018 17:58:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 17:58:17 GMT
EXPOSE 8080/tcp
# Tue, 16 Oct 2018 17:58:20 GMT
EXPOSE 8787/tcp
# Tue, 16 Oct 2018 17:58:21 GMT
CMD ["nuxeoctl" "console"]
# Tue, 16 Oct 2018 17:58:21 GMT
USER [1000]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a587a86c9dcb9df6584180042becf21e36ecd8b460a761711227b4b06889a005`  
		Last Modified: Tue, 16 Oct 2018 01:14:38 GMT  
		Size: 50.1 MB (50065549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c7ee7ef122c78bdcb4087b1245788dfee5b7d7d796b8310bc75e5d02c4c067`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 892.3 KB (892344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c0dad691e9a2190a036b437280130e383481f0e0d5e4516a0d14de690ee0eb`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367a6a68b113cde265568261ba36f477c49ff982418a561fb85d9730b5aac9a3`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28351dec2f89f7318a7aa1b3941608f822580ffc822d6cd3205f26a39620dcb5`  
		Last Modified: Tue, 16 Oct 2018 05:54:51 GMT  
		Size: 134.0 MB (133992059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa52db486a37c500d18ca2f13053418efb23340bb21f4f9b5c9d7cf33d97f65`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 246.7 KB (246702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9342416bb04e3356c4a7f3cdb5d4ccf1fbe53e19e24df239ae8fd2906d9a164`  
		Last Modified: Tue, 16 Oct 2018 18:02:44 GMT  
		Size: 243.0 MB (242973377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f61149b14fe9663d8687739362dd81f8c79f9b36aea31643ece5dbef8d15096`  
		Last Modified: Tue, 16 Oct 2018 18:05:43 GMT  
		Size: 4.4 KB (4431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4076d1f9c83ec6fcc353f60111b2c44d66f4186881f195b612997120415a866`  
		Last Modified: Tue, 16 Oct 2018 18:06:43 GMT  
		Size: 453.3 MB (453316773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b10d519af197c8ad6707e04cd12bb0b42b02f8f4c95b5c269ad9532193262339`  
		Last Modified: Tue, 16 Oct 2018 18:05:42 GMT  
		Size: 607.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c20c31551f84bfcb6ebcbfec6977c8edd1d8fc9958624be3a4aa338c82d5ab8`  
		Last Modified: Tue, 16 Oct 2018 18:05:42 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08425df45f0d98de17fe7361054900dc25009d7b834906296dfc50e0013641d1`  
		Last Modified: Tue, 16 Oct 2018 18:06:44 GMT  
		Size: 453.3 MB (453321527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2af215e449567ffde7a895ec4a76149a80aae514808f337f223cfa10e576386`  
		Last Modified: Tue, 16 Oct 2018 18:05:42 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:10.2`

```console
$ docker pull nuxeo@sha256:ceef986a828df79cf2b32c0a696b6560669ad99b3754077c5a25ccdf275c4c11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:10.2` - linux; amd64

```console
$ docker pull nuxeo@sha256:11e09e427e3811f5aca34320f42514f7f4da7e9429761449b92a0901fdfcf356
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 GB (1207590507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:601c1c181c283432fbb0aa2ea6f064c833b429c93758eb53008d4e24021086ad`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 01:01:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:25:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_VERSION=8u181
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 16 Oct 2018 05:25:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 16 Oct 2018 05:26:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 05:26:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 Oct 2018 17:47:32 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 16 Oct 2018 17:53:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 17:54:08 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 16 Oct 2018 17:54:08 GMT
ENV NUXEO_USER=nuxeo
# Tue, 16 Oct 2018 17:54:08 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 16 Oct 2018 17:54:08 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 16 Oct 2018 17:58:39 GMT
ARG NUXEO_VERSION=10.2
# Tue, 16 Oct 2018 17:58:39 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip
# Tue, 16 Oct 2018 17:58:39 GMT
ARG NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01
# Tue, 16 Oct 2018 17:58:41 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01 NUXEO_VERSION=10.2
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 16 Oct 2018 17:59:14 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01 NUXEO_VERSION=10.2
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Tue, 16 Oct 2018 17:59:15 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Tue, 16 Oct 2018 17:59:16 GMT
COPY file:4bef2f1f6b4ee418c784459e2fef01d05a75976842dfa0d5708e86cff319a87c in /etc/nuxeo/nuxeo.conf.template 
# Tue, 16 Oct 2018 17:59:16 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 16 Oct 2018 17:59:26 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01 NUXEO_VERSION=10.2
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 16 Oct 2018 17:59:38 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 17:59:39 GMT
WORKDIR /opt/nuxeo/server
# Tue, 16 Oct 2018 17:59:39 GMT
COPY file:b68c33898a1effa6e7ec54fb18544cb92f685f85aba3f75cfa01d1939dcc4680 in / 
# Tue, 16 Oct 2018 17:59:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 17:59:40 GMT
EXPOSE 8080/tcp
# Tue, 16 Oct 2018 17:59:40 GMT
EXPOSE 8787/tcp
# Tue, 16 Oct 2018 17:59:41 GMT
CMD ["nuxeoctl" "console"]
# Tue, 16 Oct 2018 17:59:41 GMT
USER [1000]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a587a86c9dcb9df6584180042becf21e36ecd8b460a761711227b4b06889a005`  
		Last Modified: Tue, 16 Oct 2018 01:14:38 GMT  
		Size: 50.1 MB (50065549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c7ee7ef122c78bdcb4087b1245788dfee5b7d7d796b8310bc75e5d02c4c067`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 892.3 KB (892344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c0dad691e9a2190a036b437280130e383481f0e0d5e4516a0d14de690ee0eb`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367a6a68b113cde265568261ba36f477c49ff982418a561fb85d9730b5aac9a3`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28351dec2f89f7318a7aa1b3941608f822580ffc822d6cd3205f26a39620dcb5`  
		Last Modified: Tue, 16 Oct 2018 05:54:51 GMT  
		Size: 134.0 MB (133992059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa52db486a37c500d18ca2f13053418efb23340bb21f4f9b5c9d7cf33d97f65`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 246.7 KB (246702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9342416bb04e3356c4a7f3cdb5d4ccf1fbe53e19e24df239ae8fd2906d9a164`  
		Last Modified: Tue, 16 Oct 2018 18:02:44 GMT  
		Size: 243.0 MB (242973377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f77c70d81be8cfceec20c25b3208af48b0635d605150dbe6b95484bdefe6963`  
		Last Modified: Tue, 16 Oct 2018 18:07:09 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b50d827bec1196cf9711f07b55f4460d81a83cbc8e57544b13614060b114622`  
		Last Modified: Tue, 16 Oct 2018 18:07:57 GMT  
		Size: 359.5 MB (359511645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:497c8fc47f0ba8d8379f97fb095e0bce2fb60d8ed3ea515fa04fd0e4a4a60259`  
		Last Modified: Tue, 16 Oct 2018 18:07:07 GMT  
		Size: 610.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07b823d3168a8dc488633a1151a967b391f59f72ebf1400e3acc41e327ed2254`  
		Last Modified: Tue, 16 Oct 2018 18:07:08 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d9e665b23d4ae7f04f002024f7d2b2eeec7c4fbee418466d197d01588d9edc`  
		Last Modified: Tue, 16 Oct 2018 18:07:58 GMT  
		Size: 359.5 MB (359515388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a8c9e28acd3b9c92b75f8c51989448606d9201e3c9b3ca81913f00e4117e0be`  
		Last Modified: Tue, 16 Oct 2018 18:07:07 GMT  
		Size: 1.0 KB (1021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:7`

```console
$ docker pull nuxeo@sha256:593a1739b8f27e760e3fe2312c2e6165cd623b60ad1faf7329e36879279f2ecf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:7` - linux; amd64

```console
$ docker pull nuxeo@sha256:33f0121ec27de3bc706f9abb31a51c05c86438cc85623a7176be2a84e1b1c6b6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1045598670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aeafaafc83076db26832466c81b7bafa102ea617e989d5cd082f0b1fcc2629c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 01:01:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:25:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_VERSION=8u181
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 16 Oct 2018 05:25:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 16 Oct 2018 05:26:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 05:26:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 Oct 2018 17:47:32 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 16 Oct 2018 17:49:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 17:49:14 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 16 Oct 2018 17:49:15 GMT
ENV NUXEO_USER=nuxeo
# Tue, 16 Oct 2018 17:49:15 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 16 Oct 2018 17:49:15 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 16 Oct 2018 17:49:15 GMT
ARG NUXEO_VERSION=7.10
# Tue, 16 Oct 2018 17:49:16 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip
# Tue, 16 Oct 2018 17:49:25 GMT
ARG NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Tue, 16 Oct 2018 17:49:25 GMT
ENV LAUNCHER_DEBUG=-Djvmcheck=nofail
# Tue, 16 Oct 2018 17:49:26 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 16 Oct 2018 17:50:31 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Tue, 16 Oct 2018 17:50:52 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Tue, 16 Oct 2018 17:51:04 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d     && chmod g=u /etc/passwd
# Tue, 16 Oct 2018 17:51:18 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 17:51:19 GMT
WORKDIR /opt/nuxeo/server
# Tue, 16 Oct 2018 17:51:20 GMT
COPY file:d2e9011e964c7e8fc295cc55d2bc9d33c6539862e1297e7fe97dbee68beb9269 in / 
# Tue, 16 Oct 2018 17:51:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 17:51:35 GMT
EXPOSE 8080/tcp
# Tue, 16 Oct 2018 17:51:36 GMT
EXPOSE 8787/tcp
# Tue, 16 Oct 2018 17:51:36 GMT
CMD ["nuxeoctl" "console"]
# Tue, 16 Oct 2018 17:51:36 GMT
USER [1000]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a587a86c9dcb9df6584180042becf21e36ecd8b460a761711227b4b06889a005`  
		Last Modified: Tue, 16 Oct 2018 01:14:38 GMT  
		Size: 50.1 MB (50065549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c7ee7ef122c78bdcb4087b1245788dfee5b7d7d796b8310bc75e5d02c4c067`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 892.3 KB (892344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c0dad691e9a2190a036b437280130e383481f0e0d5e4516a0d14de690ee0eb`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367a6a68b113cde265568261ba36f477c49ff982418a561fb85d9730b5aac9a3`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28351dec2f89f7318a7aa1b3941608f822580ffc822d6cd3205f26a39620dcb5`  
		Last Modified: Tue, 16 Oct 2018 05:54:51 GMT  
		Size: 134.0 MB (133992059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa52db486a37c500d18ca2f13053418efb23340bb21f4f9b5c9d7cf33d97f65`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 246.7 KB (246702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b4134ce30cbb92649c0e3ed2bdd011fda7c93bb57c036d53aa8eb145c2c81d`  
		Last Modified: Tue, 16 Oct 2018 18:01:11 GMT  
		Size: 239.1 MB (239090997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b882d09fbb65ba1538a0be70a7c054877cd6b65c13dbe60891fdb7a9073ea5`  
		Last Modified: Tue, 16 Oct 2018 18:00:05 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac9aae871f13df0042df20496fcf424867416182507d41bb5fafbc2908101131`  
		Last Modified: Tue, 16 Oct 2018 18:00:41 GMT  
		Size: 280.5 MB (280457935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1853154e0435b403d6fc6f0a08b6b7cbaaa88a6cac1bad47637b92e1ef9c038`  
		Last Modified: Tue, 16 Oct 2018 18:00:45 GMT  
		Size: 280.5 MB (280459902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d63b16193760c0a133a56a6190a7969d5e6423f49624f076e27f7f41dc13e14`  
		Last Modified: Tue, 16 Oct 2018 18:00:06 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78f8af655b926e2c875f98a8f122205026f51734f2f7c932acdcf32538fbb303`  
		Last Modified: Tue, 16 Oct 2018 18:00:06 GMT  
		Size: 1.6 KB (1559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:7.10`

```console
$ docker pull nuxeo@sha256:593a1739b8f27e760e3fe2312c2e6165cd623b60ad1faf7329e36879279f2ecf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:7.10` - linux; amd64

```console
$ docker pull nuxeo@sha256:33f0121ec27de3bc706f9abb31a51c05c86438cc85623a7176be2a84e1b1c6b6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1045598670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aeafaafc83076db26832466c81b7bafa102ea617e989d5cd082f0b1fcc2629c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 01:01:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:25:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_VERSION=8u181
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 16 Oct 2018 05:25:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 16 Oct 2018 05:26:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 05:26:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 Oct 2018 17:47:32 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 16 Oct 2018 17:49:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 17:49:14 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 16 Oct 2018 17:49:15 GMT
ENV NUXEO_USER=nuxeo
# Tue, 16 Oct 2018 17:49:15 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 16 Oct 2018 17:49:15 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 16 Oct 2018 17:49:15 GMT
ARG NUXEO_VERSION=7.10
# Tue, 16 Oct 2018 17:49:16 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip
# Tue, 16 Oct 2018 17:49:25 GMT
ARG NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Tue, 16 Oct 2018 17:49:25 GMT
ENV LAUNCHER_DEBUG=-Djvmcheck=nofail
# Tue, 16 Oct 2018 17:49:26 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 16 Oct 2018 17:50:31 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Tue, 16 Oct 2018 17:50:52 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Tue, 16 Oct 2018 17:51:04 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d     && chmod g=u /etc/passwd
# Tue, 16 Oct 2018 17:51:18 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 17:51:19 GMT
WORKDIR /opt/nuxeo/server
# Tue, 16 Oct 2018 17:51:20 GMT
COPY file:d2e9011e964c7e8fc295cc55d2bc9d33c6539862e1297e7fe97dbee68beb9269 in / 
# Tue, 16 Oct 2018 17:51:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 17:51:35 GMT
EXPOSE 8080/tcp
# Tue, 16 Oct 2018 17:51:36 GMT
EXPOSE 8787/tcp
# Tue, 16 Oct 2018 17:51:36 GMT
CMD ["nuxeoctl" "console"]
# Tue, 16 Oct 2018 17:51:36 GMT
USER [1000]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a587a86c9dcb9df6584180042becf21e36ecd8b460a761711227b4b06889a005`  
		Last Modified: Tue, 16 Oct 2018 01:14:38 GMT  
		Size: 50.1 MB (50065549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c7ee7ef122c78bdcb4087b1245788dfee5b7d7d796b8310bc75e5d02c4c067`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 892.3 KB (892344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c0dad691e9a2190a036b437280130e383481f0e0d5e4516a0d14de690ee0eb`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367a6a68b113cde265568261ba36f477c49ff982418a561fb85d9730b5aac9a3`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28351dec2f89f7318a7aa1b3941608f822580ffc822d6cd3205f26a39620dcb5`  
		Last Modified: Tue, 16 Oct 2018 05:54:51 GMT  
		Size: 134.0 MB (133992059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa52db486a37c500d18ca2f13053418efb23340bb21f4f9b5c9d7cf33d97f65`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 246.7 KB (246702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b4134ce30cbb92649c0e3ed2bdd011fda7c93bb57c036d53aa8eb145c2c81d`  
		Last Modified: Tue, 16 Oct 2018 18:01:11 GMT  
		Size: 239.1 MB (239090997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b882d09fbb65ba1538a0be70a7c054877cd6b65c13dbe60891fdb7a9073ea5`  
		Last Modified: Tue, 16 Oct 2018 18:00:05 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac9aae871f13df0042df20496fcf424867416182507d41bb5fafbc2908101131`  
		Last Modified: Tue, 16 Oct 2018 18:00:41 GMT  
		Size: 280.5 MB (280457935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1853154e0435b403d6fc6f0a08b6b7cbaaa88a6cac1bad47637b92e1ef9c038`  
		Last Modified: Tue, 16 Oct 2018 18:00:45 GMT  
		Size: 280.5 MB (280459902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d63b16193760c0a133a56a6190a7969d5e6423f49624f076e27f7f41dc13e14`  
		Last Modified: Tue, 16 Oct 2018 18:00:06 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78f8af655b926e2c875f98a8f122205026f51734f2f7c932acdcf32538fbb303`  
		Last Modified: Tue, 16 Oct 2018 18:00:06 GMT  
		Size: 1.6 KB (1559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:8`

```console
$ docker pull nuxeo@sha256:4538e942e084f25116e1d10c11ffe45062c66311df47181461a4ae92ffbbcc33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:8` - linux; amd64

```console
$ docker pull nuxeo@sha256:38a91e1cc5e56b3ab8b1ddd8129b4aad9bcb76e7e41780ccd154c080fe79ed96
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1027809661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:943b92c791d176c1883e6699f2051504288b1282e29e709cecc2307073e527ca`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 01:01:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:25:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_VERSION=8u181
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 16 Oct 2018 05:25:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 16 Oct 2018 05:26:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 05:26:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 Oct 2018 17:47:32 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 16 Oct 2018 17:53:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 17:54:08 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 16 Oct 2018 17:54:08 GMT
ENV NUXEO_USER=nuxeo
# Tue, 16 Oct 2018 17:54:08 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 16 Oct 2018 17:54:08 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 16 Oct 2018 17:54:09 GMT
ARG NUXEO_VERSION=8.10
# Tue, 16 Oct 2018 17:54:09 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip
# Tue, 16 Oct 2018 17:54:09 GMT
ARG NUXEO_MD5=29e67a19bba54099093b51d892926be1
# Tue, 16 Oct 2018 17:54:11 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 16 Oct 2018 17:54:51 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Tue, 16 Oct 2018 17:54:57 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Tue, 16 Oct 2018 17:54:58 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d     && chmod g=u /etc/passwd
# Tue, 16 Oct 2018 17:54:58 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 17:54:58 GMT
WORKDIR /opt/nuxeo/server
# Tue, 16 Oct 2018 17:54:59 GMT
COPY file:d2e9011e964c7e8fc295cc55d2bc9d33c6539862e1297e7fe97dbee68beb9269 in / 
# Tue, 16 Oct 2018 17:54:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 17:54:59 GMT
EXPOSE 8080/tcp
# Tue, 16 Oct 2018 17:55:00 GMT
EXPOSE 8787/tcp
# Tue, 16 Oct 2018 17:55:00 GMT
CMD ["nuxeoctl" "console"]
# Tue, 16 Oct 2018 17:55:00 GMT
USER [1000]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a587a86c9dcb9df6584180042becf21e36ecd8b460a761711227b4b06889a005`  
		Last Modified: Tue, 16 Oct 2018 01:14:38 GMT  
		Size: 50.1 MB (50065549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c7ee7ef122c78bdcb4087b1245788dfee5b7d7d796b8310bc75e5d02c4c067`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 892.3 KB (892344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c0dad691e9a2190a036b437280130e383481f0e0d5e4516a0d14de690ee0eb`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367a6a68b113cde265568261ba36f477c49ff982418a561fb85d9730b5aac9a3`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28351dec2f89f7318a7aa1b3941608f822580ffc822d6cd3205f26a39620dcb5`  
		Last Modified: Tue, 16 Oct 2018 05:54:51 GMT  
		Size: 134.0 MB (133992059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa52db486a37c500d18ca2f13053418efb23340bb21f4f9b5c9d7cf33d97f65`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 246.7 KB (246702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9342416bb04e3356c4a7f3cdb5d4ccf1fbe53e19e24df239ae8fd2906d9a164`  
		Last Modified: Tue, 16 Oct 2018 18:02:44 GMT  
		Size: 243.0 MB (242973377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e08384f3cbb3f402df44fc86e4136b95692d5bfb4168c8aa6e0931103b5328a`  
		Last Modified: Tue, 16 Oct 2018 18:01:46 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c597f09c9b28e062a01834b9a582b9b215c944fa69130df699179c893e16a91`  
		Last Modified: Tue, 16 Oct 2018 18:02:34 GMT  
		Size: 269.6 MB (269622080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1aedf3a1668cb92779d8889857faf366bd15795f3a1cdf60307d14cf696d24`  
		Last Modified: Tue, 16 Oct 2018 18:02:16 GMT  
		Size: 269.6 MB (269624374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b0ec75c9f943fc25e6b83d9df0ccce87c066338323cc0bf87d3d3ffe398d66`  
		Last Modified: Tue, 16 Oct 2018 18:01:46 GMT  
		Size: 818.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b05415cb96f4425f8e05bdf95f244b244ccaa7f2187e38501219fa56e8275d`  
		Last Modified: Tue, 16 Oct 2018 18:01:46 GMT  
		Size: 1.6 KB (1559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:8.10`

```console
$ docker pull nuxeo@sha256:4538e942e084f25116e1d10c11ffe45062c66311df47181461a4ae92ffbbcc33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:8.10` - linux; amd64

```console
$ docker pull nuxeo@sha256:38a91e1cc5e56b3ab8b1ddd8129b4aad9bcb76e7e41780ccd154c080fe79ed96
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1027809661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:943b92c791d176c1883e6699f2051504288b1282e29e709cecc2307073e527ca`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 01:01:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:25:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_VERSION=8u181
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 16 Oct 2018 05:25:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 16 Oct 2018 05:26:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 05:26:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 Oct 2018 17:47:32 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 16 Oct 2018 17:53:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 17:54:08 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 16 Oct 2018 17:54:08 GMT
ENV NUXEO_USER=nuxeo
# Tue, 16 Oct 2018 17:54:08 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 16 Oct 2018 17:54:08 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 16 Oct 2018 17:54:09 GMT
ARG NUXEO_VERSION=8.10
# Tue, 16 Oct 2018 17:54:09 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip
# Tue, 16 Oct 2018 17:54:09 GMT
ARG NUXEO_MD5=29e67a19bba54099093b51d892926be1
# Tue, 16 Oct 2018 17:54:11 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 16 Oct 2018 17:54:51 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Tue, 16 Oct 2018 17:54:57 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Tue, 16 Oct 2018 17:54:58 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d     && chmod g=u /etc/passwd
# Tue, 16 Oct 2018 17:54:58 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 17:54:58 GMT
WORKDIR /opt/nuxeo/server
# Tue, 16 Oct 2018 17:54:59 GMT
COPY file:d2e9011e964c7e8fc295cc55d2bc9d33c6539862e1297e7fe97dbee68beb9269 in / 
# Tue, 16 Oct 2018 17:54:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 17:54:59 GMT
EXPOSE 8080/tcp
# Tue, 16 Oct 2018 17:55:00 GMT
EXPOSE 8787/tcp
# Tue, 16 Oct 2018 17:55:00 GMT
CMD ["nuxeoctl" "console"]
# Tue, 16 Oct 2018 17:55:00 GMT
USER [1000]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a587a86c9dcb9df6584180042becf21e36ecd8b460a761711227b4b06889a005`  
		Last Modified: Tue, 16 Oct 2018 01:14:38 GMT  
		Size: 50.1 MB (50065549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c7ee7ef122c78bdcb4087b1245788dfee5b7d7d796b8310bc75e5d02c4c067`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 892.3 KB (892344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c0dad691e9a2190a036b437280130e383481f0e0d5e4516a0d14de690ee0eb`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367a6a68b113cde265568261ba36f477c49ff982418a561fb85d9730b5aac9a3`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28351dec2f89f7318a7aa1b3941608f822580ffc822d6cd3205f26a39620dcb5`  
		Last Modified: Tue, 16 Oct 2018 05:54:51 GMT  
		Size: 134.0 MB (133992059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa52db486a37c500d18ca2f13053418efb23340bb21f4f9b5c9d7cf33d97f65`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 246.7 KB (246702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9342416bb04e3356c4a7f3cdb5d4ccf1fbe53e19e24df239ae8fd2906d9a164`  
		Last Modified: Tue, 16 Oct 2018 18:02:44 GMT  
		Size: 243.0 MB (242973377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e08384f3cbb3f402df44fc86e4136b95692d5bfb4168c8aa6e0931103b5328a`  
		Last Modified: Tue, 16 Oct 2018 18:01:46 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c597f09c9b28e062a01834b9a582b9b215c944fa69130df699179c893e16a91`  
		Last Modified: Tue, 16 Oct 2018 18:02:34 GMT  
		Size: 269.6 MB (269622080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1aedf3a1668cb92779d8889857faf366bd15795f3a1cdf60307d14cf696d24`  
		Last Modified: Tue, 16 Oct 2018 18:02:16 GMT  
		Size: 269.6 MB (269624374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b0ec75c9f943fc25e6b83d9df0ccce87c066338323cc0bf87d3d3ffe398d66`  
		Last Modified: Tue, 16 Oct 2018 18:01:46 GMT  
		Size: 818.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b05415cb96f4425f8e05bdf95f244b244ccaa7f2187e38501219fa56e8275d`  
		Last Modified: Tue, 16 Oct 2018 18:01:46 GMT  
		Size: 1.6 KB (1559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:9`

```console
$ docker pull nuxeo@sha256:bee2f4ee9702612079f7bf3e89e7c19f982c654b99b627e6b2d7d96614d28219
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:9` - linux; amd64

```console
$ docker pull nuxeo@sha256:12fbd20ac8e2b9ba38d1e3c30d24f58f6509d151daf64710c920b82c84143380
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1258883445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb513bcb150b07a748537f8f4424846785113fcd7386f5c81b0b35084f95bfaf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 01:01:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:25:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_VERSION=8u181
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 16 Oct 2018 05:25:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 16 Oct 2018 05:26:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 05:26:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 Oct 2018 17:47:32 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 16 Oct 2018 17:53:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 17:54:08 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 16 Oct 2018 17:54:08 GMT
ENV NUXEO_USER=nuxeo
# Tue, 16 Oct 2018 17:54:08 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 16 Oct 2018 17:54:08 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 16 Oct 2018 17:55:11 GMT
ARG NUXEO_VERSION=9.10
# Tue, 16 Oct 2018 17:55:11 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip
# Tue, 16 Oct 2018 17:55:11 GMT
ARG NUXEO_MD5=327d23bbd5558565694027b11c0dd82a
# Tue, 16 Oct 2018 17:55:12 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 16 Oct 2018 17:56:03 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Tue, 16 Oct 2018 17:56:03 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Tue, 16 Oct 2018 17:56:04 GMT
COPY file:4bef2f1f6b4ee418c784459e2fef01d05a75976842dfa0d5708e86cff319a87c in /etc/nuxeo/nuxeo.conf.template 
# Tue, 16 Oct 2018 17:56:04 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 16 Oct 2018 17:56:12 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 16 Oct 2018 17:56:13 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 17:56:13 GMT
WORKDIR /opt/nuxeo/server
# Tue, 16 Oct 2018 17:56:13 GMT
COPY file:b68c33898a1effa6e7ec54fb18544cb92f685f85aba3f75cfa01d1939dcc4680 in / 
# Tue, 16 Oct 2018 17:56:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 17:56:22 GMT
EXPOSE 8080/tcp
# Tue, 16 Oct 2018 17:56:23 GMT
EXPOSE 8787/tcp
# Tue, 16 Oct 2018 17:56:23 GMT
CMD ["nuxeoctl" "console"]
# Tue, 16 Oct 2018 17:56:23 GMT
USER [1000]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a587a86c9dcb9df6584180042becf21e36ecd8b460a761711227b4b06889a005`  
		Last Modified: Tue, 16 Oct 2018 01:14:38 GMT  
		Size: 50.1 MB (50065549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c7ee7ef122c78bdcb4087b1245788dfee5b7d7d796b8310bc75e5d02c4c067`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 892.3 KB (892344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c0dad691e9a2190a036b437280130e383481f0e0d5e4516a0d14de690ee0eb`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367a6a68b113cde265568261ba36f477c49ff982418a561fb85d9730b5aac9a3`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28351dec2f89f7318a7aa1b3941608f822580ffc822d6cd3205f26a39620dcb5`  
		Last Modified: Tue, 16 Oct 2018 05:54:51 GMT  
		Size: 134.0 MB (133992059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa52db486a37c500d18ca2f13053418efb23340bb21f4f9b5c9d7cf33d97f65`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 246.7 KB (246702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9342416bb04e3356c4a7f3cdb5d4ccf1fbe53e19e24df239ae8fd2906d9a164`  
		Last Modified: Tue, 16 Oct 2018 18:02:44 GMT  
		Size: 243.0 MB (242973377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea66b0169adc22af60e9fc3d8246a7508d70e34ba4f95744a9b9754561836b8a`  
		Last Modified: Tue, 16 Oct 2018 18:03:29 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b59eca295237af6bf62ec5a37e589e2e6f2407dae34d4a363c089f961bff2bfb`  
		Last Modified: Tue, 16 Oct 2018 18:04:22 GMT  
		Size: 385.2 MB (385158402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:527afbca1cc5a76d1e9cc506766f2da51576febfaa81f42ae194ea5e05b30c49`  
		Last Modified: Tue, 16 Oct 2018 18:03:28 GMT  
		Size: 607.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed769e8603d9e186af67873532b6499bb7dee2363e7927fa89502db5e8262fee`  
		Last Modified: Tue, 16 Oct 2018 18:03:28 GMT  
		Size: 1.0 KB (1020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d09a04949f3b53900561866dd07b3e01b4074c1eee56bfdb1cb1b463c1274f`  
		Last Modified: Tue, 16 Oct 2018 18:04:20 GMT  
		Size: 385.2 MB (385161564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9ebddc56d0f8f7f000a66afc66f1e84011d69aca3cfa15636817f67efd560e`  
		Last Modified: Tue, 16 Oct 2018 18:03:28 GMT  
		Size: 1.0 KB (1022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:9.10`

```console
$ docker pull nuxeo@sha256:bee2f4ee9702612079f7bf3e89e7c19f982c654b99b627e6b2d7d96614d28219
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:9.10` - linux; amd64

```console
$ docker pull nuxeo@sha256:12fbd20ac8e2b9ba38d1e3c30d24f58f6509d151daf64710c920b82c84143380
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1258883445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb513bcb150b07a748537f8f4424846785113fcd7386f5c81b0b35084f95bfaf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 01:01:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:25:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_VERSION=8u181
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 16 Oct 2018 05:25:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 16 Oct 2018 05:26:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 05:26:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 Oct 2018 17:47:32 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 16 Oct 2018 17:53:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 17:54:08 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 16 Oct 2018 17:54:08 GMT
ENV NUXEO_USER=nuxeo
# Tue, 16 Oct 2018 17:54:08 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 16 Oct 2018 17:54:08 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 16 Oct 2018 17:55:11 GMT
ARG NUXEO_VERSION=9.10
# Tue, 16 Oct 2018 17:55:11 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip
# Tue, 16 Oct 2018 17:55:11 GMT
ARG NUXEO_MD5=327d23bbd5558565694027b11c0dd82a
# Tue, 16 Oct 2018 17:55:12 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 16 Oct 2018 17:56:03 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Tue, 16 Oct 2018 17:56:03 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Tue, 16 Oct 2018 17:56:04 GMT
COPY file:4bef2f1f6b4ee418c784459e2fef01d05a75976842dfa0d5708e86cff319a87c in /etc/nuxeo/nuxeo.conf.template 
# Tue, 16 Oct 2018 17:56:04 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 16 Oct 2018 17:56:12 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 16 Oct 2018 17:56:13 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 17:56:13 GMT
WORKDIR /opt/nuxeo/server
# Tue, 16 Oct 2018 17:56:13 GMT
COPY file:b68c33898a1effa6e7ec54fb18544cb92f685f85aba3f75cfa01d1939dcc4680 in / 
# Tue, 16 Oct 2018 17:56:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 17:56:22 GMT
EXPOSE 8080/tcp
# Tue, 16 Oct 2018 17:56:23 GMT
EXPOSE 8787/tcp
# Tue, 16 Oct 2018 17:56:23 GMT
CMD ["nuxeoctl" "console"]
# Tue, 16 Oct 2018 17:56:23 GMT
USER [1000]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a587a86c9dcb9df6584180042becf21e36ecd8b460a761711227b4b06889a005`  
		Last Modified: Tue, 16 Oct 2018 01:14:38 GMT  
		Size: 50.1 MB (50065549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c7ee7ef122c78bdcb4087b1245788dfee5b7d7d796b8310bc75e5d02c4c067`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 892.3 KB (892344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c0dad691e9a2190a036b437280130e383481f0e0d5e4516a0d14de690ee0eb`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367a6a68b113cde265568261ba36f477c49ff982418a561fb85d9730b5aac9a3`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28351dec2f89f7318a7aa1b3941608f822580ffc822d6cd3205f26a39620dcb5`  
		Last Modified: Tue, 16 Oct 2018 05:54:51 GMT  
		Size: 134.0 MB (133992059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa52db486a37c500d18ca2f13053418efb23340bb21f4f9b5c9d7cf33d97f65`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 246.7 KB (246702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9342416bb04e3356c4a7f3cdb5d4ccf1fbe53e19e24df239ae8fd2906d9a164`  
		Last Modified: Tue, 16 Oct 2018 18:02:44 GMT  
		Size: 243.0 MB (242973377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea66b0169adc22af60e9fc3d8246a7508d70e34ba4f95744a9b9754561836b8a`  
		Last Modified: Tue, 16 Oct 2018 18:03:29 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b59eca295237af6bf62ec5a37e589e2e6f2407dae34d4a363c089f961bff2bfb`  
		Last Modified: Tue, 16 Oct 2018 18:04:22 GMT  
		Size: 385.2 MB (385158402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:527afbca1cc5a76d1e9cc506766f2da51576febfaa81f42ae194ea5e05b30c49`  
		Last Modified: Tue, 16 Oct 2018 18:03:28 GMT  
		Size: 607.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed769e8603d9e186af67873532b6499bb7dee2363e7927fa89502db5e8262fee`  
		Last Modified: Tue, 16 Oct 2018 18:03:28 GMT  
		Size: 1.0 KB (1020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d09a04949f3b53900561866dd07b3e01b4074c1eee56bfdb1cb1b463c1274f`  
		Last Modified: Tue, 16 Oct 2018 18:04:20 GMT  
		Size: 385.2 MB (385161564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9ebddc56d0f8f7f000a66afc66f1e84011d69aca3cfa15636817f67efd560e`  
		Last Modified: Tue, 16 Oct 2018 18:03:28 GMT  
		Size: 1.0 KB (1022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:FT`

```console
$ docker pull nuxeo@sha256:ceef986a828df79cf2b32c0a696b6560669ad99b3754077c5a25ccdf275c4c11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:FT` - linux; amd64

```console
$ docker pull nuxeo@sha256:11e09e427e3811f5aca34320f42514f7f4da7e9429761449b92a0901fdfcf356
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 GB (1207590507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:601c1c181c283432fbb0aa2ea6f064c833b429c93758eb53008d4e24021086ad`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 01:01:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:25:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_VERSION=8u181
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 16 Oct 2018 05:25:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 16 Oct 2018 05:26:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 05:26:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 Oct 2018 17:47:32 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 16 Oct 2018 17:53:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 17:54:08 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 16 Oct 2018 17:54:08 GMT
ENV NUXEO_USER=nuxeo
# Tue, 16 Oct 2018 17:54:08 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 16 Oct 2018 17:54:08 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 16 Oct 2018 17:58:39 GMT
ARG NUXEO_VERSION=10.2
# Tue, 16 Oct 2018 17:58:39 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip
# Tue, 16 Oct 2018 17:58:39 GMT
ARG NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01
# Tue, 16 Oct 2018 17:58:41 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01 NUXEO_VERSION=10.2
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 16 Oct 2018 17:59:14 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01 NUXEO_VERSION=10.2
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Tue, 16 Oct 2018 17:59:15 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Tue, 16 Oct 2018 17:59:16 GMT
COPY file:4bef2f1f6b4ee418c784459e2fef01d05a75976842dfa0d5708e86cff319a87c in /etc/nuxeo/nuxeo.conf.template 
# Tue, 16 Oct 2018 17:59:16 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 16 Oct 2018 17:59:26 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01 NUXEO_VERSION=10.2
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 16 Oct 2018 17:59:38 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 17:59:39 GMT
WORKDIR /opt/nuxeo/server
# Tue, 16 Oct 2018 17:59:39 GMT
COPY file:b68c33898a1effa6e7ec54fb18544cb92f685f85aba3f75cfa01d1939dcc4680 in / 
# Tue, 16 Oct 2018 17:59:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 17:59:40 GMT
EXPOSE 8080/tcp
# Tue, 16 Oct 2018 17:59:40 GMT
EXPOSE 8787/tcp
# Tue, 16 Oct 2018 17:59:41 GMT
CMD ["nuxeoctl" "console"]
# Tue, 16 Oct 2018 17:59:41 GMT
USER [1000]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a587a86c9dcb9df6584180042becf21e36ecd8b460a761711227b4b06889a005`  
		Last Modified: Tue, 16 Oct 2018 01:14:38 GMT  
		Size: 50.1 MB (50065549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c7ee7ef122c78bdcb4087b1245788dfee5b7d7d796b8310bc75e5d02c4c067`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 892.3 KB (892344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c0dad691e9a2190a036b437280130e383481f0e0d5e4516a0d14de690ee0eb`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367a6a68b113cde265568261ba36f477c49ff982418a561fb85d9730b5aac9a3`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28351dec2f89f7318a7aa1b3941608f822580ffc822d6cd3205f26a39620dcb5`  
		Last Modified: Tue, 16 Oct 2018 05:54:51 GMT  
		Size: 134.0 MB (133992059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa52db486a37c500d18ca2f13053418efb23340bb21f4f9b5c9d7cf33d97f65`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 246.7 KB (246702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9342416bb04e3356c4a7f3cdb5d4ccf1fbe53e19e24df239ae8fd2906d9a164`  
		Last Modified: Tue, 16 Oct 2018 18:02:44 GMT  
		Size: 243.0 MB (242973377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f77c70d81be8cfceec20c25b3208af48b0635d605150dbe6b95484bdefe6963`  
		Last Modified: Tue, 16 Oct 2018 18:07:09 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b50d827bec1196cf9711f07b55f4460d81a83cbc8e57544b13614060b114622`  
		Last Modified: Tue, 16 Oct 2018 18:07:57 GMT  
		Size: 359.5 MB (359511645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:497c8fc47f0ba8d8379f97fb095e0bce2fb60d8ed3ea515fa04fd0e4a4a60259`  
		Last Modified: Tue, 16 Oct 2018 18:07:07 GMT  
		Size: 610.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07b823d3168a8dc488633a1151a967b391f59f72ebf1400e3acc41e327ed2254`  
		Last Modified: Tue, 16 Oct 2018 18:07:08 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d9e665b23d4ae7f04f002024f7d2b2eeec7c4fbee418466d197d01588d9edc`  
		Last Modified: Tue, 16 Oct 2018 18:07:58 GMT  
		Size: 359.5 MB (359515388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a8c9e28acd3b9c92b75f8c51989448606d9201e3c9b3ca81913f00e4117e0be`  
		Last Modified: Tue, 16 Oct 2018 18:07:07 GMT  
		Size: 1.0 KB (1021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:latest`

```console
$ docker pull nuxeo@sha256:ceef986a828df79cf2b32c0a696b6560669ad99b3754077c5a25ccdf275c4c11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:latest` - linux; amd64

```console
$ docker pull nuxeo@sha256:11e09e427e3811f5aca34320f42514f7f4da7e9429761449b92a0901fdfcf356
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 GB (1207590507 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:601c1c181c283432fbb0aa2ea6f064c833b429c93758eb53008d4e24021086ad`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 01:01:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:25:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_VERSION=8u181
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 16 Oct 2018 05:25:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 16 Oct 2018 05:26:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 05:26:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 Oct 2018 17:47:32 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 16 Oct 2018 17:53:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 17:54:08 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 16 Oct 2018 17:54:08 GMT
ENV NUXEO_USER=nuxeo
# Tue, 16 Oct 2018 17:54:08 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 16 Oct 2018 17:54:08 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 16 Oct 2018 17:58:39 GMT
ARG NUXEO_VERSION=10.2
# Tue, 16 Oct 2018 17:58:39 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip
# Tue, 16 Oct 2018 17:58:39 GMT
ARG NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01
# Tue, 16 Oct 2018 17:58:41 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01 NUXEO_VERSION=10.2
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 16 Oct 2018 17:59:14 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01 NUXEO_VERSION=10.2
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Tue, 16 Oct 2018 17:59:15 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Tue, 16 Oct 2018 17:59:16 GMT
COPY file:4bef2f1f6b4ee418c784459e2fef01d05a75976842dfa0d5708e86cff319a87c in /etc/nuxeo/nuxeo.conf.template 
# Tue, 16 Oct 2018 17:59:16 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 16 Oct 2018 17:59:26 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01 NUXEO_VERSION=10.2
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 16 Oct 2018 17:59:38 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 17:59:39 GMT
WORKDIR /opt/nuxeo/server
# Tue, 16 Oct 2018 17:59:39 GMT
COPY file:b68c33898a1effa6e7ec54fb18544cb92f685f85aba3f75cfa01d1939dcc4680 in / 
# Tue, 16 Oct 2018 17:59:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 17:59:40 GMT
EXPOSE 8080/tcp
# Tue, 16 Oct 2018 17:59:40 GMT
EXPOSE 8787/tcp
# Tue, 16 Oct 2018 17:59:41 GMT
CMD ["nuxeoctl" "console"]
# Tue, 16 Oct 2018 17:59:41 GMT
USER [1000]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a587a86c9dcb9df6584180042becf21e36ecd8b460a761711227b4b06889a005`  
		Last Modified: Tue, 16 Oct 2018 01:14:38 GMT  
		Size: 50.1 MB (50065549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c7ee7ef122c78bdcb4087b1245788dfee5b7d7d796b8310bc75e5d02c4c067`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 892.3 KB (892344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c0dad691e9a2190a036b437280130e383481f0e0d5e4516a0d14de690ee0eb`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367a6a68b113cde265568261ba36f477c49ff982418a561fb85d9730b5aac9a3`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28351dec2f89f7318a7aa1b3941608f822580ffc822d6cd3205f26a39620dcb5`  
		Last Modified: Tue, 16 Oct 2018 05:54:51 GMT  
		Size: 134.0 MB (133992059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa52db486a37c500d18ca2f13053418efb23340bb21f4f9b5c9d7cf33d97f65`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 246.7 KB (246702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9342416bb04e3356c4a7f3cdb5d4ccf1fbe53e19e24df239ae8fd2906d9a164`  
		Last Modified: Tue, 16 Oct 2018 18:02:44 GMT  
		Size: 243.0 MB (242973377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f77c70d81be8cfceec20c25b3208af48b0635d605150dbe6b95484bdefe6963`  
		Last Modified: Tue, 16 Oct 2018 18:07:09 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b50d827bec1196cf9711f07b55f4460d81a83cbc8e57544b13614060b114622`  
		Last Modified: Tue, 16 Oct 2018 18:07:57 GMT  
		Size: 359.5 MB (359511645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:497c8fc47f0ba8d8379f97fb095e0bce2fb60d8ed3ea515fa04fd0e4a4a60259`  
		Last Modified: Tue, 16 Oct 2018 18:07:07 GMT  
		Size: 610.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07b823d3168a8dc488633a1151a967b391f59f72ebf1400e3acc41e327ed2254`  
		Last Modified: Tue, 16 Oct 2018 18:07:08 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6d9e665b23d4ae7f04f002024f7d2b2eeec7c4fbee418466d197d01588d9edc`  
		Last Modified: Tue, 16 Oct 2018 18:07:58 GMT  
		Size: 359.5 MB (359515388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a8c9e28acd3b9c92b75f8c51989448606d9201e3c9b3ca81913f00e4117e0be`  
		Last Modified: Tue, 16 Oct 2018 18:07:07 GMT  
		Size: 1.0 KB (1021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS`

```console
$ docker pull nuxeo@sha256:bee2f4ee9702612079f7bf3e89e7c19f982c654b99b627e6b2d7d96614d28219
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:LTS` - linux; amd64

```console
$ docker pull nuxeo@sha256:12fbd20ac8e2b9ba38d1e3c30d24f58f6509d151daf64710c920b82c84143380
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1258883445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb513bcb150b07a748537f8f4424846785113fcd7386f5c81b0b35084f95bfaf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 01:01:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:25:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_VERSION=8u181
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 16 Oct 2018 05:25:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 16 Oct 2018 05:26:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 05:26:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 Oct 2018 17:47:32 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 16 Oct 2018 17:53:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 17:54:08 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 16 Oct 2018 17:54:08 GMT
ENV NUXEO_USER=nuxeo
# Tue, 16 Oct 2018 17:54:08 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 16 Oct 2018 17:54:08 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 16 Oct 2018 17:55:11 GMT
ARG NUXEO_VERSION=9.10
# Tue, 16 Oct 2018 17:55:11 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip
# Tue, 16 Oct 2018 17:55:11 GMT
ARG NUXEO_MD5=327d23bbd5558565694027b11c0dd82a
# Tue, 16 Oct 2018 17:55:12 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 16 Oct 2018 17:56:03 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Tue, 16 Oct 2018 17:56:03 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Tue, 16 Oct 2018 17:56:04 GMT
COPY file:4bef2f1f6b4ee418c784459e2fef01d05a75976842dfa0d5708e86cff319a87c in /etc/nuxeo/nuxeo.conf.template 
# Tue, 16 Oct 2018 17:56:04 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 16 Oct 2018 17:56:12 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 16 Oct 2018 17:56:13 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 17:56:13 GMT
WORKDIR /opt/nuxeo/server
# Tue, 16 Oct 2018 17:56:13 GMT
COPY file:b68c33898a1effa6e7ec54fb18544cb92f685f85aba3f75cfa01d1939dcc4680 in / 
# Tue, 16 Oct 2018 17:56:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 17:56:22 GMT
EXPOSE 8080/tcp
# Tue, 16 Oct 2018 17:56:23 GMT
EXPOSE 8787/tcp
# Tue, 16 Oct 2018 17:56:23 GMT
CMD ["nuxeoctl" "console"]
# Tue, 16 Oct 2018 17:56:23 GMT
USER [1000]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a587a86c9dcb9df6584180042becf21e36ecd8b460a761711227b4b06889a005`  
		Last Modified: Tue, 16 Oct 2018 01:14:38 GMT  
		Size: 50.1 MB (50065549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c7ee7ef122c78bdcb4087b1245788dfee5b7d7d796b8310bc75e5d02c4c067`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 892.3 KB (892344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c0dad691e9a2190a036b437280130e383481f0e0d5e4516a0d14de690ee0eb`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367a6a68b113cde265568261ba36f477c49ff982418a561fb85d9730b5aac9a3`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28351dec2f89f7318a7aa1b3941608f822580ffc822d6cd3205f26a39620dcb5`  
		Last Modified: Tue, 16 Oct 2018 05:54:51 GMT  
		Size: 134.0 MB (133992059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa52db486a37c500d18ca2f13053418efb23340bb21f4f9b5c9d7cf33d97f65`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 246.7 KB (246702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9342416bb04e3356c4a7f3cdb5d4ccf1fbe53e19e24df239ae8fd2906d9a164`  
		Last Modified: Tue, 16 Oct 2018 18:02:44 GMT  
		Size: 243.0 MB (242973377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea66b0169adc22af60e9fc3d8246a7508d70e34ba4f95744a9b9754561836b8a`  
		Last Modified: Tue, 16 Oct 2018 18:03:29 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b59eca295237af6bf62ec5a37e589e2e6f2407dae34d4a363c089f961bff2bfb`  
		Last Modified: Tue, 16 Oct 2018 18:04:22 GMT  
		Size: 385.2 MB (385158402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:527afbca1cc5a76d1e9cc506766f2da51576febfaa81f42ae194ea5e05b30c49`  
		Last Modified: Tue, 16 Oct 2018 18:03:28 GMT  
		Size: 607.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed769e8603d9e186af67873532b6499bb7dee2363e7927fa89502db5e8262fee`  
		Last Modified: Tue, 16 Oct 2018 18:03:28 GMT  
		Size: 1.0 KB (1020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d09a04949f3b53900561866dd07b3e01b4074c1eee56bfdb1cb1b463c1274f`  
		Last Modified: Tue, 16 Oct 2018 18:04:20 GMT  
		Size: 385.2 MB (385161564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9ebddc56d0f8f7f000a66afc66f1e84011d69aca3cfa15636817f67efd560e`  
		Last Modified: Tue, 16 Oct 2018 18:03:28 GMT  
		Size: 1.0 KB (1022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS-2015`

```console
$ docker pull nuxeo@sha256:593a1739b8f27e760e3fe2312c2e6165cd623b60ad1faf7329e36879279f2ecf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:LTS-2015` - linux; amd64

```console
$ docker pull nuxeo@sha256:33f0121ec27de3bc706f9abb31a51c05c86438cc85623a7176be2a84e1b1c6b6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1045598670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8aeafaafc83076db26832466c81b7bafa102ea617e989d5cd082f0b1fcc2629c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 01:01:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:25:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_VERSION=8u181
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 16 Oct 2018 05:25:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 16 Oct 2018 05:26:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 05:26:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 Oct 2018 17:47:32 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 16 Oct 2018 17:49:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 17:49:14 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 16 Oct 2018 17:49:15 GMT
ENV NUXEO_USER=nuxeo
# Tue, 16 Oct 2018 17:49:15 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 16 Oct 2018 17:49:15 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 16 Oct 2018 17:49:15 GMT
ARG NUXEO_VERSION=7.10
# Tue, 16 Oct 2018 17:49:16 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip
# Tue, 16 Oct 2018 17:49:25 GMT
ARG NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Tue, 16 Oct 2018 17:49:25 GMT
ENV LAUNCHER_DEBUG=-Djvmcheck=nofail
# Tue, 16 Oct 2018 17:49:26 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 16 Oct 2018 17:50:31 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Tue, 16 Oct 2018 17:50:52 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Tue, 16 Oct 2018 17:51:04 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d     && chmod g=u /etc/passwd
# Tue, 16 Oct 2018 17:51:18 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 17:51:19 GMT
WORKDIR /opt/nuxeo/server
# Tue, 16 Oct 2018 17:51:20 GMT
COPY file:d2e9011e964c7e8fc295cc55d2bc9d33c6539862e1297e7fe97dbee68beb9269 in / 
# Tue, 16 Oct 2018 17:51:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 17:51:35 GMT
EXPOSE 8080/tcp
# Tue, 16 Oct 2018 17:51:36 GMT
EXPOSE 8787/tcp
# Tue, 16 Oct 2018 17:51:36 GMT
CMD ["nuxeoctl" "console"]
# Tue, 16 Oct 2018 17:51:36 GMT
USER [1000]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a587a86c9dcb9df6584180042becf21e36ecd8b460a761711227b4b06889a005`  
		Last Modified: Tue, 16 Oct 2018 01:14:38 GMT  
		Size: 50.1 MB (50065549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c7ee7ef122c78bdcb4087b1245788dfee5b7d7d796b8310bc75e5d02c4c067`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 892.3 KB (892344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c0dad691e9a2190a036b437280130e383481f0e0d5e4516a0d14de690ee0eb`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367a6a68b113cde265568261ba36f477c49ff982418a561fb85d9730b5aac9a3`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28351dec2f89f7318a7aa1b3941608f822580ffc822d6cd3205f26a39620dcb5`  
		Last Modified: Tue, 16 Oct 2018 05:54:51 GMT  
		Size: 134.0 MB (133992059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa52db486a37c500d18ca2f13053418efb23340bb21f4f9b5c9d7cf33d97f65`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 246.7 KB (246702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b4134ce30cbb92649c0e3ed2bdd011fda7c93bb57c036d53aa8eb145c2c81d`  
		Last Modified: Tue, 16 Oct 2018 18:01:11 GMT  
		Size: 239.1 MB (239090997 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10b882d09fbb65ba1538a0be70a7c054877cd6b65c13dbe60891fdb7a9073ea5`  
		Last Modified: Tue, 16 Oct 2018 18:00:05 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac9aae871f13df0042df20496fcf424867416182507d41bb5fafbc2908101131`  
		Last Modified: Tue, 16 Oct 2018 18:00:41 GMT  
		Size: 280.5 MB (280457935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1853154e0435b403d6fc6f0a08b6b7cbaaa88a6cac1bad47637b92e1ef9c038`  
		Last Modified: Tue, 16 Oct 2018 18:00:45 GMT  
		Size: 280.5 MB (280459902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d63b16193760c0a133a56a6190a7969d5e6423f49624f076e27f7f41dc13e14`  
		Last Modified: Tue, 16 Oct 2018 18:00:06 GMT  
		Size: 824.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78f8af655b926e2c875f98a8f122205026f51734f2f7c932acdcf32538fbb303`  
		Last Modified: Tue, 16 Oct 2018 18:00:06 GMT  
		Size: 1.6 KB (1559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS-2016`

```console
$ docker pull nuxeo@sha256:4538e942e084f25116e1d10c11ffe45062c66311df47181461a4ae92ffbbcc33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:LTS-2016` - linux; amd64

```console
$ docker pull nuxeo@sha256:38a91e1cc5e56b3ab8b1ddd8129b4aad9bcb76e7e41780ccd154c080fe79ed96
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1027809661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:943b92c791d176c1883e6699f2051504288b1282e29e709cecc2307073e527ca`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 01:01:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:25:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_VERSION=8u181
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 16 Oct 2018 05:25:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 16 Oct 2018 05:26:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 05:26:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 Oct 2018 17:47:32 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 16 Oct 2018 17:53:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 17:54:08 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 16 Oct 2018 17:54:08 GMT
ENV NUXEO_USER=nuxeo
# Tue, 16 Oct 2018 17:54:08 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 16 Oct 2018 17:54:08 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 16 Oct 2018 17:54:09 GMT
ARG NUXEO_VERSION=8.10
# Tue, 16 Oct 2018 17:54:09 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip
# Tue, 16 Oct 2018 17:54:09 GMT
ARG NUXEO_MD5=29e67a19bba54099093b51d892926be1
# Tue, 16 Oct 2018 17:54:11 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 16 Oct 2018 17:54:51 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Tue, 16 Oct 2018 17:54:57 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Tue, 16 Oct 2018 17:54:58 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d     && chmod g=u /etc/passwd
# Tue, 16 Oct 2018 17:54:58 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 17:54:58 GMT
WORKDIR /opt/nuxeo/server
# Tue, 16 Oct 2018 17:54:59 GMT
COPY file:d2e9011e964c7e8fc295cc55d2bc9d33c6539862e1297e7fe97dbee68beb9269 in / 
# Tue, 16 Oct 2018 17:54:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 17:54:59 GMT
EXPOSE 8080/tcp
# Tue, 16 Oct 2018 17:55:00 GMT
EXPOSE 8787/tcp
# Tue, 16 Oct 2018 17:55:00 GMT
CMD ["nuxeoctl" "console"]
# Tue, 16 Oct 2018 17:55:00 GMT
USER [1000]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a587a86c9dcb9df6584180042becf21e36ecd8b460a761711227b4b06889a005`  
		Last Modified: Tue, 16 Oct 2018 01:14:38 GMT  
		Size: 50.1 MB (50065549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c7ee7ef122c78bdcb4087b1245788dfee5b7d7d796b8310bc75e5d02c4c067`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 892.3 KB (892344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c0dad691e9a2190a036b437280130e383481f0e0d5e4516a0d14de690ee0eb`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367a6a68b113cde265568261ba36f477c49ff982418a561fb85d9730b5aac9a3`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28351dec2f89f7318a7aa1b3941608f822580ffc822d6cd3205f26a39620dcb5`  
		Last Modified: Tue, 16 Oct 2018 05:54:51 GMT  
		Size: 134.0 MB (133992059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa52db486a37c500d18ca2f13053418efb23340bb21f4f9b5c9d7cf33d97f65`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 246.7 KB (246702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9342416bb04e3356c4a7f3cdb5d4ccf1fbe53e19e24df239ae8fd2906d9a164`  
		Last Modified: Tue, 16 Oct 2018 18:02:44 GMT  
		Size: 243.0 MB (242973377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e08384f3cbb3f402df44fc86e4136b95692d5bfb4168c8aa6e0931103b5328a`  
		Last Modified: Tue, 16 Oct 2018 18:01:46 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c597f09c9b28e062a01834b9a582b9b215c944fa69130df699179c893e16a91`  
		Last Modified: Tue, 16 Oct 2018 18:02:34 GMT  
		Size: 269.6 MB (269622080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb1aedf3a1668cb92779d8889857faf366bd15795f3a1cdf60307d14cf696d24`  
		Last Modified: Tue, 16 Oct 2018 18:02:16 GMT  
		Size: 269.6 MB (269624374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6b0ec75c9f943fc25e6b83d9df0ccce87c066338323cc0bf87d3d3ffe398d66`  
		Last Modified: Tue, 16 Oct 2018 18:01:46 GMT  
		Size: 818.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28b05415cb96f4425f8e05bdf95f244b244ccaa7f2187e38501219fa56e8275d`  
		Last Modified: Tue, 16 Oct 2018 18:01:46 GMT  
		Size: 1.6 KB (1559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS-2017`

```console
$ docker pull nuxeo@sha256:bee2f4ee9702612079f7bf3e89e7c19f982c654b99b627e6b2d7d96614d28219
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:LTS-2017` - linux; amd64

```console
$ docker pull nuxeo@sha256:12fbd20ac8e2b9ba38d1e3c30d24f58f6509d151daf64710c920b82c84143380
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1258883445 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb513bcb150b07a748537f8f4424846785113fcd7386f5c81b0b35084f95bfaf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 01:01:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 05:25:16 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 05:25:16 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 16 Oct 2018 05:25:17 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_VERSION=8u181
# Tue, 16 Oct 2018 05:25:18 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-1~deb9u1
# Tue, 16 Oct 2018 05:25:18 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 16 Oct 2018 05:26:42 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 16 Oct 2018 05:26:45 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Tue, 16 Oct 2018 17:47:32 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Tue, 16 Oct 2018 17:53:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 17:54:08 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Tue, 16 Oct 2018 17:54:08 GMT
ENV NUXEO_USER=nuxeo
# Tue, 16 Oct 2018 17:54:08 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Tue, 16 Oct 2018 17:54:08 GMT
ENV HOME=/opt/nuxeo/server
# Tue, 16 Oct 2018 17:55:11 GMT
ARG NUXEO_VERSION=9.10
# Tue, 16 Oct 2018 17:55:11 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip
# Tue, 16 Oct 2018 17:55:11 GMT
ARG NUXEO_MD5=327d23bbd5558565694027b11c0dd82a
# Tue, 16 Oct 2018 17:55:12 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Tue, 16 Oct 2018 17:56:03 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Tue, 16 Oct 2018 17:56:03 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Tue, 16 Oct 2018 17:56:04 GMT
COPY file:4bef2f1f6b4ee418c784459e2fef01d05a75976842dfa0d5708e86cff319a87c in /etc/nuxeo/nuxeo.conf.template 
# Tue, 16 Oct 2018 17:56:04 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Tue, 16 Oct 2018 17:56:12 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Tue, 16 Oct 2018 17:56:13 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 17:56:13 GMT
WORKDIR /opt/nuxeo/server
# Tue, 16 Oct 2018 17:56:13 GMT
COPY file:b68c33898a1effa6e7ec54fb18544cb92f685f85aba3f75cfa01d1939dcc4680 in / 
# Tue, 16 Oct 2018 17:56:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 16 Oct 2018 17:56:22 GMT
EXPOSE 8080/tcp
# Tue, 16 Oct 2018 17:56:23 GMT
EXPOSE 8787/tcp
# Tue, 16 Oct 2018 17:56:23 GMT
CMD ["nuxeoctl" "console"]
# Tue, 16 Oct 2018 17:56:23 GMT
USER [1000]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a587a86c9dcb9df6584180042becf21e36ecd8b460a761711227b4b06889a005`  
		Last Modified: Tue, 16 Oct 2018 01:14:38 GMT  
		Size: 50.1 MB (50065549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c7ee7ef122c78bdcb4087b1245788dfee5b7d7d796b8310bc75e5d02c4c067`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 892.3 KB (892344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c0dad691e9a2190a036b437280130e383481f0e0d5e4516a0d14de690ee0eb`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:367a6a68b113cde265568261ba36f477c49ff982418a561fb85d9730b5aac9a3`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28351dec2f89f7318a7aa1b3941608f822580ffc822d6cd3205f26a39620dcb5`  
		Last Modified: Tue, 16 Oct 2018 05:54:51 GMT  
		Size: 134.0 MB (133992059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa52db486a37c500d18ca2f13053418efb23340bb21f4f9b5c9d7cf33d97f65`  
		Last Modified: Tue, 16 Oct 2018 05:54:18 GMT  
		Size: 246.7 KB (246702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9342416bb04e3356c4a7f3cdb5d4ccf1fbe53e19e24df239ae8fd2906d9a164`  
		Last Modified: Tue, 16 Oct 2018 18:02:44 GMT  
		Size: 243.0 MB (242973377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea66b0169adc22af60e9fc3d8246a7508d70e34ba4f95744a9b9754561836b8a`  
		Last Modified: Tue, 16 Oct 2018 18:03:29 GMT  
		Size: 4.4 KB (4416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b59eca295237af6bf62ec5a37e589e2e6f2407dae34d4a363c089f961bff2bfb`  
		Last Modified: Tue, 16 Oct 2018 18:04:22 GMT  
		Size: 385.2 MB (385158402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:527afbca1cc5a76d1e9cc506766f2da51576febfaa81f42ae194ea5e05b30c49`  
		Last Modified: Tue, 16 Oct 2018 18:03:28 GMT  
		Size: 607.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed769e8603d9e186af67873532b6499bb7dee2363e7927fa89502db5e8262fee`  
		Last Modified: Tue, 16 Oct 2018 18:03:28 GMT  
		Size: 1.0 KB (1020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54d09a04949f3b53900561866dd07b3e01b4074c1eee56bfdb1cb1b463c1274f`  
		Last Modified: Tue, 16 Oct 2018 18:04:20 GMT  
		Size: 385.2 MB (385161564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9ebddc56d0f8f7f000a66afc66f1e84011d69aca3cfa15636817f67efd560e`  
		Last Modified: Tue, 16 Oct 2018 18:03:28 GMT  
		Size: 1.0 KB (1022 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
