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
$ docker pull nuxeo@sha256:0bedab7ec162d0776e9ce6f1a49526722d961be38882f8ce67056f6289af17c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:10` - linux; amd64

```console
$ docker pull nuxeo@sha256:fca8f26a370786c8c0068e28cbe7cac368c8416d9e86a69554acd711bf7d4441
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 GB (1191122294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:465fe915bbc1a14a2b66e551258fa675229e7b4e091beaacb00382b5be753011`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 00:04:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:52:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:56:41 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:56:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:57:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 10:28:37 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Sat, 29 Dec 2018 10:32:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:32:41 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Sat, 29 Dec 2018 10:32:41 GMT
ENV NUXEO_USER=nuxeo
# Sat, 29 Dec 2018 10:32:41 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Sat, 29 Dec 2018 10:32:41 GMT
ENV HOME=/opt/nuxeo/server
# Sat, 29 Dec 2018 10:36:23 GMT
ARG NUXEO_VERSION=10.3
# Sat, 29 Dec 2018 10:36:23 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.3/nuxeo-server-10.3-tomcat.zip
# Sat, 29 Dec 2018 10:36:23 GMT
ARG NUXEO_MD5=e2f32f59ce6aebe06c5ac4c1971b1787
# Sat, 29 Dec 2018 10:36:25 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.3/nuxeo-server-10.3-tomcat.zip NUXEO_MD5=e2f32f59ce6aebe06c5ac4c1971b1787 NUXEO_VERSION=10.3
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Sat, 29 Dec 2018 10:37:00 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.3/nuxeo-server-10.3-tomcat.zip NUXEO_MD5=e2f32f59ce6aebe06c5ac4c1971b1787 NUXEO_VERSION=10.3
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Sat, 29 Dec 2018 10:37:01 GMT
COPY dir:1d4b19e1e35500d85eafcc58364498b9325f119ce19917cefc60c7ad98e600e7 in /opt/nuxeo/server/templates/docker 
# Sat, 29 Dec 2018 10:37:01 GMT
COPY file:8f1eb15b3cc87be8784ed6bc39c958a3a06d1e375bda2ce728f297d14d74d526 in /etc/nuxeo/nuxeo.conf.template 
# Sat, 29 Dec 2018 10:37:01 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Sat, 29 Dec 2018 10:37:10 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.3/nuxeo-server-10.3-tomcat.zip NUXEO_MD5=e2f32f59ce6aebe06c5ac4c1971b1787 NUXEO_VERSION=10.3
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Sat, 29 Dec 2018 10:37:11 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 10:37:11 GMT
WORKDIR /opt/nuxeo/server
# Sat, 29 Dec 2018 10:37:11 GMT
COPY file:d8f37458746cb2e17dae348b52babe8b858743784ee8dffc0c24d7026bf0e474 in / 
# Sat, 29 Dec 2018 10:37:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 10:37:12 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 10:37:12 GMT
EXPOSE 8787
# Sat, 29 Dec 2018 10:37:12 GMT
CMD ["nuxeoctl" "console"]
# Sat, 29 Dec 2018 10:37:12 GMT
USER 1000
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045b51e26e750443c84216071a1367a7aae0b76245800629dc04934628b4b1ea`  
		Last Modified: Sat, 29 Dec 2018 00:22:00 GMT  
		Size: 50.1 MB (50062697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e50f3a5916063721a472d949e4708f7ef54cd00ea07336c43cc1b192f5a30c`  
		Last Modified: Sat, 29 Dec 2018 03:21:36 GMT  
		Size: 892.3 KB (892281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c546cdc7ce4fc7024f36d943e72738660870cf6eddd1491e1f7afe7739ea9d`  
		Last Modified: Sat, 29 Dec 2018 03:24:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b0460146c0de06889859885b2591dbb2c6b8d29b4163c3d9d0782b8b3e360b`  
		Last Modified: Sat, 29 Dec 2018 03:24:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428095c4a908303a8f98178b90d393c8b4cddaafa1b67d50e71d369adc680294`  
		Last Modified: Sat, 29 Dec 2018 03:24:53 GMT  
		Size: 134.0 MB (133975764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8d15cdd87675321b7cdc7a98628f4767690c2684ce42feb3bf6fed6edb5f93`  
		Last Modified: Sat, 29 Dec 2018 10:39:57 GMT  
		Size: 243.1 MB (243099484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb832ab9cb92d7dbf782093d478e80ff7d16e413d3370cd62edced7bbf0f9d19`  
		Last Modified: Sat, 29 Dec 2018 10:42:16 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d208e05c2cf3a4119cce65fad2e511ead92b8a4e42e036864dda8a368e30485e`  
		Last Modified: Sat, 29 Dec 2018 10:42:46 GMT  
		Size: 351.3 MB (351319347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c6a69aba0fa00f767e87ccf74255f459455f7d3eb6dc39d16867cff034f042`  
		Last Modified: Sat, 29 Dec 2018 10:42:15 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b45eb45f31ebe5fcd4a3c01e1f19b0334105a916b153974e0c379adfb587f0e`  
		Last Modified: Sat, 29 Dec 2018 10:42:16 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11cb24ae8e3028a51d4aa9b6acae4a517045648bb46eaadc9d067dab54fc5895`  
		Last Modified: Sat, 29 Dec 2018 10:42:59 GMT  
		Size: 351.3 MB (351320557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ff5b369e23ad2c9b2416012e6899877258298a220ef57f93c8635ca6e33f01`  
		Last Modified: Sat, 29 Dec 2018 10:42:16 GMT  
		Size: 1.0 KB (1021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:10.1`

```console
$ docker pull nuxeo@sha256:a25dd4456da11fe45a78539cad0d7c5271a981f996bd1ded4d6df35139d4b9b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:10.1` - linux; amd64

```console
$ docker pull nuxeo@sha256:ede760b1f8f24399531b93d349af22a5e6306616d33ed6ba80cb76ceed7000c9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1395115281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:482285ebb3b0ef3275faba2b3c0c8a7af710c5912283f490b57b5891530ddf39`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 00:04:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:52:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:56:41 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:56:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:57:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 10:28:37 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Sat, 29 Dec 2018 10:32:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:32:41 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Sat, 29 Dec 2018 10:32:41 GMT
ENV NUXEO_USER=nuxeo
# Sat, 29 Dec 2018 10:32:41 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Sat, 29 Dec 2018 10:32:41 GMT
ENV HOME=/opt/nuxeo/server
# Sat, 29 Dec 2018 10:34:28 GMT
ARG NUXEO_VERSION=10.1
# Sat, 29 Dec 2018 10:34:28 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip
# Sat, 29 Dec 2018 10:34:28 GMT
ARG NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162
# Sat, 29 Dec 2018 10:34:29 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162 NUXEO_VERSION=10.1
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Sat, 29 Dec 2018 10:35:10 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162 NUXEO_VERSION=10.1
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Sat, 29 Dec 2018 10:35:10 GMT
COPY dir:1d4b19e1e35500d85eafcc58364498b9325f119ce19917cefc60c7ad98e600e7 in /opt/nuxeo/server/templates/docker 
# Sat, 29 Dec 2018 10:35:10 GMT
COPY file:8f1eb15b3cc87be8784ed6bc39c958a3a06d1e375bda2ce728f297d14d74d526 in /etc/nuxeo/nuxeo.conf.template 
# Sat, 29 Dec 2018 10:35:11 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Sat, 29 Dec 2018 10:35:20 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162 NUXEO_VERSION=10.1
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Sat, 29 Dec 2018 10:35:20 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 10:35:21 GMT
WORKDIR /opt/nuxeo/server
# Sat, 29 Dec 2018 10:35:21 GMT
COPY file:e422458a6454ca6cf5b0b82a9c38544c4d1186fa0a39f04ae9aa9aea1361043c in / 
# Sat, 29 Dec 2018 10:35:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 10:35:21 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 10:35:21 GMT
EXPOSE 8787
# Sat, 29 Dec 2018 10:35:22 GMT
CMD ["nuxeoctl" "console"]
# Sat, 29 Dec 2018 10:35:22 GMT
USER 1000
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045b51e26e750443c84216071a1367a7aae0b76245800629dc04934628b4b1ea`  
		Last Modified: Sat, 29 Dec 2018 00:22:00 GMT  
		Size: 50.1 MB (50062697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e50f3a5916063721a472d949e4708f7ef54cd00ea07336c43cc1b192f5a30c`  
		Last Modified: Sat, 29 Dec 2018 03:21:36 GMT  
		Size: 892.3 KB (892281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c546cdc7ce4fc7024f36d943e72738660870cf6eddd1491e1f7afe7739ea9d`  
		Last Modified: Sat, 29 Dec 2018 03:24:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b0460146c0de06889859885b2591dbb2c6b8d29b4163c3d9d0782b8b3e360b`  
		Last Modified: Sat, 29 Dec 2018 03:24:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428095c4a908303a8f98178b90d393c8b4cddaafa1b67d50e71d369adc680294`  
		Last Modified: Sat, 29 Dec 2018 03:24:53 GMT  
		Size: 134.0 MB (133975764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8d15cdd87675321b7cdc7a98628f4767690c2684ce42feb3bf6fed6edb5f93`  
		Last Modified: Sat, 29 Dec 2018 10:39:57 GMT  
		Size: 243.1 MB (243099484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:793a145b2f389b41d118d114a7de7520e3b3299a47fcfa5f3e5be0828d5018da`  
		Last Modified: Sat, 29 Dec 2018 10:40:50 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d2a31ea4f269bc095808392db70bf45778d61ceb94eaec69551d67f773f4021`  
		Last Modified: Sat, 29 Dec 2018 10:41:28 GMT  
		Size: 453.3 MB (453314357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dbe88e59b711700f020b031327772424fdaf8d8833e8deb0dd9985fa125328e`  
		Last Modified: Sat, 29 Dec 2018 10:40:49 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d19be226a0b32fa24ec170f91a62d4525a88551e433e8da68b6e421a3802fe0b`  
		Last Modified: Sat, 29 Dec 2018 10:40:49 GMT  
		Size: 1.0 KB (1015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ee85b4c3868af4e63f0684a2293c7e4f3e8c3af7ced1c6339280e26a3e206e9`  
		Last Modified: Sat, 29 Dec 2018 10:41:28 GMT  
		Size: 453.3 MB (453318491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8a83da1b464e497b4178c44115da05fcce47872a8567be8395141ea9c268dda`  
		Last Modified: Sat, 29 Dec 2018 10:40:49 GMT  
		Size: 1.1 KB (1066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:10.2`

```console
$ docker pull nuxeo@sha256:a960a56e820f8ac2dab19bf3115b223ec236602dd8b0ee96c8a0475b322c25bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:10.2` - linux; amd64

```console
$ docker pull nuxeo@sha256:3a4d83368c65e2f0ad1f2e96f62a8eb876f09ffbf267543bf0b9de42c737730a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 GB (1207504121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:384161578caf984a69e22d0ed7028345a4423e949e33bfe0b390ca7d1179cb90`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 00:04:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:52:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:56:41 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:56:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:57:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 10:28:37 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Sat, 29 Dec 2018 10:32:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:32:41 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Sat, 29 Dec 2018 10:32:41 GMT
ENV NUXEO_USER=nuxeo
# Sat, 29 Dec 2018 10:32:41 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Sat, 29 Dec 2018 10:32:41 GMT
ENV HOME=/opt/nuxeo/server
# Sat, 29 Dec 2018 10:35:29 GMT
ARG NUXEO_VERSION=10.2
# Sat, 29 Dec 2018 10:35:30 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip
# Sat, 29 Dec 2018 10:35:30 GMT
ARG NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01
# Sat, 29 Dec 2018 10:35:31 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01 NUXEO_VERSION=10.2
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Sat, 29 Dec 2018 10:36:04 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01 NUXEO_VERSION=10.2
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Sat, 29 Dec 2018 10:36:05 GMT
COPY dir:1d4b19e1e35500d85eafcc58364498b9325f119ce19917cefc60c7ad98e600e7 in /opt/nuxeo/server/templates/docker 
# Sat, 29 Dec 2018 10:36:05 GMT
COPY file:8f1eb15b3cc87be8784ed6bc39c958a3a06d1e375bda2ce728f297d14d74d526 in /etc/nuxeo/nuxeo.conf.template 
# Sat, 29 Dec 2018 10:36:05 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Sat, 29 Dec 2018 10:36:14 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.2/nuxeo-server-10.2-tomcat.zip NUXEO_MD5=0e7fd86c27a06ada60d698fdc2063a01 NUXEO_VERSION=10.2
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Sat, 29 Dec 2018 10:36:15 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 10:36:15 GMT
WORKDIR /opt/nuxeo/server
# Sat, 29 Dec 2018 10:36:15 GMT
COPY file:d8f37458746cb2e17dae348b52babe8b858743784ee8dffc0c24d7026bf0e474 in / 
# Sat, 29 Dec 2018 10:36:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 10:36:16 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 10:36:16 GMT
EXPOSE 8787
# Sat, 29 Dec 2018 10:36:16 GMT
CMD ["nuxeoctl" "console"]
# Sat, 29 Dec 2018 10:36:16 GMT
USER 1000
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045b51e26e750443c84216071a1367a7aae0b76245800629dc04934628b4b1ea`  
		Last Modified: Sat, 29 Dec 2018 00:22:00 GMT  
		Size: 50.1 MB (50062697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e50f3a5916063721a472d949e4708f7ef54cd00ea07336c43cc1b192f5a30c`  
		Last Modified: Sat, 29 Dec 2018 03:21:36 GMT  
		Size: 892.3 KB (892281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c546cdc7ce4fc7024f36d943e72738660870cf6eddd1491e1f7afe7739ea9d`  
		Last Modified: Sat, 29 Dec 2018 03:24:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b0460146c0de06889859885b2591dbb2c6b8d29b4163c3d9d0782b8b3e360b`  
		Last Modified: Sat, 29 Dec 2018 03:24:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428095c4a908303a8f98178b90d393c8b4cddaafa1b67d50e71d369adc680294`  
		Last Modified: Sat, 29 Dec 2018 03:24:53 GMT  
		Size: 134.0 MB (133975764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8d15cdd87675321b7cdc7a98628f4767690c2684ce42feb3bf6fed6edb5f93`  
		Last Modified: Sat, 29 Dec 2018 10:39:57 GMT  
		Size: 243.1 MB (243099484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a416ec221a4606b5f2a36a23124458674535f216eff28967dc6bd79cc7b746e`  
		Last Modified: Sat, 29 Dec 2018 10:41:35 GMT  
		Size: 4.4 KB (4418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6756051910f12001d7b282e083fbe77a554b3598d90d75b6cbbadabd7e929086`  
		Last Modified: Sat, 29 Dec 2018 10:42:05 GMT  
		Size: 359.5 MB (359508275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24fce38044b64be62f6e0c7a2842162acefe244cda40b2b392d47687c3ec8d3b`  
		Last Modified: Sat, 29 Dec 2018 10:41:34 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87a36f10590d76cf95715ff860e813ba0d086ac4ac657cab6d48dd3ba6c7ec0`  
		Last Modified: Sat, 29 Dec 2018 10:41:34 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40d7306f5b9d98bdd8967226b92869f408c3bfcdfd79835f3390e79c3066fb50`  
		Last Modified: Sat, 29 Dec 2018 10:42:06 GMT  
		Size: 359.5 MB (359513455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6a2b8f91ac4e5e0c0a2dc556fdcd96618c8a2a167fdaf7ba160911ed34f950`  
		Last Modified: Sat, 29 Dec 2018 10:41:34 GMT  
		Size: 1.0 KB (1020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:10.3`

```console
$ docker pull nuxeo@sha256:0bedab7ec162d0776e9ce6f1a49526722d961be38882f8ce67056f6289af17c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:10.3` - linux; amd64

```console
$ docker pull nuxeo@sha256:fca8f26a370786c8c0068e28cbe7cac368c8416d9e86a69554acd711bf7d4441
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 GB (1191122294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:465fe915bbc1a14a2b66e551258fa675229e7b4e091beaacb00382b5be753011`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 00:04:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:52:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:56:41 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:56:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:57:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 10:28:37 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Sat, 29 Dec 2018 10:32:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:32:41 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Sat, 29 Dec 2018 10:32:41 GMT
ENV NUXEO_USER=nuxeo
# Sat, 29 Dec 2018 10:32:41 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Sat, 29 Dec 2018 10:32:41 GMT
ENV HOME=/opt/nuxeo/server
# Sat, 29 Dec 2018 10:36:23 GMT
ARG NUXEO_VERSION=10.3
# Sat, 29 Dec 2018 10:36:23 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.3/nuxeo-server-10.3-tomcat.zip
# Sat, 29 Dec 2018 10:36:23 GMT
ARG NUXEO_MD5=e2f32f59ce6aebe06c5ac4c1971b1787
# Sat, 29 Dec 2018 10:36:25 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.3/nuxeo-server-10.3-tomcat.zip NUXEO_MD5=e2f32f59ce6aebe06c5ac4c1971b1787 NUXEO_VERSION=10.3
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Sat, 29 Dec 2018 10:37:00 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.3/nuxeo-server-10.3-tomcat.zip NUXEO_MD5=e2f32f59ce6aebe06c5ac4c1971b1787 NUXEO_VERSION=10.3
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Sat, 29 Dec 2018 10:37:01 GMT
COPY dir:1d4b19e1e35500d85eafcc58364498b9325f119ce19917cefc60c7ad98e600e7 in /opt/nuxeo/server/templates/docker 
# Sat, 29 Dec 2018 10:37:01 GMT
COPY file:8f1eb15b3cc87be8784ed6bc39c958a3a06d1e375bda2ce728f297d14d74d526 in /etc/nuxeo/nuxeo.conf.template 
# Sat, 29 Dec 2018 10:37:01 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Sat, 29 Dec 2018 10:37:10 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.3/nuxeo-server-10.3-tomcat.zip NUXEO_MD5=e2f32f59ce6aebe06c5ac4c1971b1787 NUXEO_VERSION=10.3
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Sat, 29 Dec 2018 10:37:11 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 10:37:11 GMT
WORKDIR /opt/nuxeo/server
# Sat, 29 Dec 2018 10:37:11 GMT
COPY file:d8f37458746cb2e17dae348b52babe8b858743784ee8dffc0c24d7026bf0e474 in / 
# Sat, 29 Dec 2018 10:37:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 10:37:12 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 10:37:12 GMT
EXPOSE 8787
# Sat, 29 Dec 2018 10:37:12 GMT
CMD ["nuxeoctl" "console"]
# Sat, 29 Dec 2018 10:37:12 GMT
USER 1000
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045b51e26e750443c84216071a1367a7aae0b76245800629dc04934628b4b1ea`  
		Last Modified: Sat, 29 Dec 2018 00:22:00 GMT  
		Size: 50.1 MB (50062697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e50f3a5916063721a472d949e4708f7ef54cd00ea07336c43cc1b192f5a30c`  
		Last Modified: Sat, 29 Dec 2018 03:21:36 GMT  
		Size: 892.3 KB (892281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c546cdc7ce4fc7024f36d943e72738660870cf6eddd1491e1f7afe7739ea9d`  
		Last Modified: Sat, 29 Dec 2018 03:24:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b0460146c0de06889859885b2591dbb2c6b8d29b4163c3d9d0782b8b3e360b`  
		Last Modified: Sat, 29 Dec 2018 03:24:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428095c4a908303a8f98178b90d393c8b4cddaafa1b67d50e71d369adc680294`  
		Last Modified: Sat, 29 Dec 2018 03:24:53 GMT  
		Size: 134.0 MB (133975764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8d15cdd87675321b7cdc7a98628f4767690c2684ce42feb3bf6fed6edb5f93`  
		Last Modified: Sat, 29 Dec 2018 10:39:57 GMT  
		Size: 243.1 MB (243099484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb832ab9cb92d7dbf782093d478e80ff7d16e413d3370cd62edced7bbf0f9d19`  
		Last Modified: Sat, 29 Dec 2018 10:42:16 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d208e05c2cf3a4119cce65fad2e511ead92b8a4e42e036864dda8a368e30485e`  
		Last Modified: Sat, 29 Dec 2018 10:42:46 GMT  
		Size: 351.3 MB (351319347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c6a69aba0fa00f767e87ccf74255f459455f7d3eb6dc39d16867cff034f042`  
		Last Modified: Sat, 29 Dec 2018 10:42:15 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b45eb45f31ebe5fcd4a3c01e1f19b0334105a916b153974e0c379adfb587f0e`  
		Last Modified: Sat, 29 Dec 2018 10:42:16 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11cb24ae8e3028a51d4aa9b6acae4a517045648bb46eaadc9d067dab54fc5895`  
		Last Modified: Sat, 29 Dec 2018 10:42:59 GMT  
		Size: 351.3 MB (351320557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ff5b369e23ad2c9b2416012e6899877258298a220ef57f93c8635ca6e33f01`  
		Last Modified: Sat, 29 Dec 2018 10:42:16 GMT  
		Size: 1.0 KB (1021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:7`

```console
$ docker pull nuxeo@sha256:6ee2a46a36e12af56657204ddb3bc091ef2f5fd3ea4c790526eda73b3f79b371
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:7` - linux; amd64

```console
$ docker pull nuxeo@sha256:dc8d920e80f70265eee3a66431e3c79eafeb0979dd55cc6722deab729790ccfd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1045532102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af0c3ef7ffc3b6de5a0aaeb0c29b7e350cd1d7f91ed5c309dc17eef2961fe3c4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 00:04:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:52:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:56:41 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:56:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:57:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 10:28:37 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Sat, 29 Dec 2018 10:30:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:30:33 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Sat, 29 Dec 2018 10:30:33 GMT
ENV NUXEO_USER=nuxeo
# Sat, 29 Dec 2018 10:30:34 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Sat, 29 Dec 2018 10:30:34 GMT
ENV HOME=/opt/nuxeo/server
# Sat, 29 Dec 2018 10:30:34 GMT
ARG NUXEO_VERSION=7.10
# Sat, 29 Dec 2018 10:30:34 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip
# Sat, 29 Dec 2018 10:30:35 GMT
ARG NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Sat, 29 Dec 2018 10:30:35 GMT
ENV LAUNCHER_DEBUG=-Djvmcheck=nofail
# Sat, 29 Dec 2018 10:30:36 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Sat, 29 Dec 2018 10:31:06 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Sat, 29 Dec 2018 10:31:13 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Sat, 29 Dec 2018 10:31:15 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d     && chmod g=u /etc/passwd
# Sat, 29 Dec 2018 10:31:15 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 10:31:15 GMT
WORKDIR /opt/nuxeo/server
# Sat, 29 Dec 2018 10:31:15 GMT
COPY file:b03749ac857d73dce5a6a9a97f2b99c07db8eccd08d95e8348f7f1eb81b70af8 in / 
# Sat, 29 Dec 2018 10:31:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 10:31:16 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 10:31:16 GMT
EXPOSE 8787
# Sat, 29 Dec 2018 10:31:16 GMT
CMD ["nuxeoctl" "console"]
# Sat, 29 Dec 2018 10:31:17 GMT
USER 1000
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045b51e26e750443c84216071a1367a7aae0b76245800629dc04934628b4b1ea`  
		Last Modified: Sat, 29 Dec 2018 00:22:00 GMT  
		Size: 50.1 MB (50062697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e50f3a5916063721a472d949e4708f7ef54cd00ea07336c43cc1b192f5a30c`  
		Last Modified: Sat, 29 Dec 2018 03:21:36 GMT  
		Size: 892.3 KB (892281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c546cdc7ce4fc7024f36d943e72738660870cf6eddd1491e1f7afe7739ea9d`  
		Last Modified: Sat, 29 Dec 2018 03:24:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b0460146c0de06889859885b2591dbb2c6b8d29b4163c3d9d0782b8b3e360b`  
		Last Modified: Sat, 29 Dec 2018 03:24:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428095c4a908303a8f98178b90d393c8b4cddaafa1b67d50e71d369adc680294`  
		Last Modified: Sat, 29 Dec 2018 03:24:53 GMT  
		Size: 134.0 MB (133975764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d919c5ea863e68dd953d672cba02a95251538e5a44b5ef76699af1a2ab2d9d86`  
		Last Modified: Sat, 29 Dec 2018 10:38:42 GMT  
		Size: 239.2 MB (239231657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:830abb03f198a177bb57fbb48465329de3464f90cc58d9c18de9057689214ceb`  
		Last Modified: Sat, 29 Dec 2018 10:37:37 GMT  
		Size: 4.4 KB (4418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46287b569af5f85117890895844dda8f81925176758c6439105394ca35306c4`  
		Last Modified: Sat, 29 Dec 2018 10:38:03 GMT  
		Size: 280.5 MB (280457912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f73c762ffcfce5f32aa1ecb12b89242dde22c8b9f5614218309a8438b3a58cb8`  
		Last Modified: Sat, 29 Dec 2018 10:38:04 GMT  
		Size: 280.5 MB (280459894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5882d18889af988789dbbe749f08cae036529dc2567fa19e56db77510e0e326e`  
		Last Modified: Sat, 29 Dec 2018 10:37:35 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c68364064968a060e92db1d2daec1ad913ec52b34698d4b2a384c04cb66521`  
		Last Modified: Sat, 29 Dec 2018 10:37:35 GMT  
		Size: 1.6 KB (1559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:7.10`

```console
$ docker pull nuxeo@sha256:6ee2a46a36e12af56657204ddb3bc091ef2f5fd3ea4c790526eda73b3f79b371
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:7.10` - linux; amd64

```console
$ docker pull nuxeo@sha256:dc8d920e80f70265eee3a66431e3c79eafeb0979dd55cc6722deab729790ccfd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1045532102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af0c3ef7ffc3b6de5a0aaeb0c29b7e350cd1d7f91ed5c309dc17eef2961fe3c4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 00:04:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:52:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:56:41 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:56:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:57:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 10:28:37 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Sat, 29 Dec 2018 10:30:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:30:33 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Sat, 29 Dec 2018 10:30:33 GMT
ENV NUXEO_USER=nuxeo
# Sat, 29 Dec 2018 10:30:34 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Sat, 29 Dec 2018 10:30:34 GMT
ENV HOME=/opt/nuxeo/server
# Sat, 29 Dec 2018 10:30:34 GMT
ARG NUXEO_VERSION=7.10
# Sat, 29 Dec 2018 10:30:34 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip
# Sat, 29 Dec 2018 10:30:35 GMT
ARG NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Sat, 29 Dec 2018 10:30:35 GMT
ENV LAUNCHER_DEBUG=-Djvmcheck=nofail
# Sat, 29 Dec 2018 10:30:36 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Sat, 29 Dec 2018 10:31:06 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Sat, 29 Dec 2018 10:31:13 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Sat, 29 Dec 2018 10:31:15 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d     && chmod g=u /etc/passwd
# Sat, 29 Dec 2018 10:31:15 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 10:31:15 GMT
WORKDIR /opt/nuxeo/server
# Sat, 29 Dec 2018 10:31:15 GMT
COPY file:b03749ac857d73dce5a6a9a97f2b99c07db8eccd08d95e8348f7f1eb81b70af8 in / 
# Sat, 29 Dec 2018 10:31:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 10:31:16 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 10:31:16 GMT
EXPOSE 8787
# Sat, 29 Dec 2018 10:31:16 GMT
CMD ["nuxeoctl" "console"]
# Sat, 29 Dec 2018 10:31:17 GMT
USER 1000
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045b51e26e750443c84216071a1367a7aae0b76245800629dc04934628b4b1ea`  
		Last Modified: Sat, 29 Dec 2018 00:22:00 GMT  
		Size: 50.1 MB (50062697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e50f3a5916063721a472d949e4708f7ef54cd00ea07336c43cc1b192f5a30c`  
		Last Modified: Sat, 29 Dec 2018 03:21:36 GMT  
		Size: 892.3 KB (892281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c546cdc7ce4fc7024f36d943e72738660870cf6eddd1491e1f7afe7739ea9d`  
		Last Modified: Sat, 29 Dec 2018 03:24:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b0460146c0de06889859885b2591dbb2c6b8d29b4163c3d9d0782b8b3e360b`  
		Last Modified: Sat, 29 Dec 2018 03:24:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428095c4a908303a8f98178b90d393c8b4cddaafa1b67d50e71d369adc680294`  
		Last Modified: Sat, 29 Dec 2018 03:24:53 GMT  
		Size: 134.0 MB (133975764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d919c5ea863e68dd953d672cba02a95251538e5a44b5ef76699af1a2ab2d9d86`  
		Last Modified: Sat, 29 Dec 2018 10:38:42 GMT  
		Size: 239.2 MB (239231657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:830abb03f198a177bb57fbb48465329de3464f90cc58d9c18de9057689214ceb`  
		Last Modified: Sat, 29 Dec 2018 10:37:37 GMT  
		Size: 4.4 KB (4418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46287b569af5f85117890895844dda8f81925176758c6439105394ca35306c4`  
		Last Modified: Sat, 29 Dec 2018 10:38:03 GMT  
		Size: 280.5 MB (280457912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f73c762ffcfce5f32aa1ecb12b89242dde22c8b9f5614218309a8438b3a58cb8`  
		Last Modified: Sat, 29 Dec 2018 10:38:04 GMT  
		Size: 280.5 MB (280459894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5882d18889af988789dbbe749f08cae036529dc2567fa19e56db77510e0e326e`  
		Last Modified: Sat, 29 Dec 2018 10:37:35 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c68364064968a060e92db1d2daec1ad913ec52b34698d4b2a384c04cb66521`  
		Last Modified: Sat, 29 Dec 2018 10:37:35 GMT  
		Size: 1.6 KB (1559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:8`

```console
$ docker pull nuxeo@sha256:a4a0f6f1d25d9872fd4f977a1467609dff2eea4b54fefa9d5ff58bf4e78227b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:8` - linux; amd64

```console
$ docker pull nuxeo@sha256:cea180357cb7996e6c4a3f1fe5d01feed253152d3e965e5eb5809982a02b5e4f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1027728646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01dbe439a2138c54073bc0f2a407eace8eaada8dc8b07c5bcbec550193c0551`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 00:04:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:52:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:56:41 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:56:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:57:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 10:28:37 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Sat, 29 Dec 2018 10:32:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:32:41 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Sat, 29 Dec 2018 10:32:41 GMT
ENV NUXEO_USER=nuxeo
# Sat, 29 Dec 2018 10:32:41 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Sat, 29 Dec 2018 10:32:41 GMT
ENV HOME=/opt/nuxeo/server
# Sat, 29 Dec 2018 10:32:42 GMT
ARG NUXEO_VERSION=8.10
# Sat, 29 Dec 2018 10:32:42 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip
# Sat, 29 Dec 2018 10:32:42 GMT
ARG NUXEO_MD5=29e67a19bba54099093b51d892926be1
# Sat, 29 Dec 2018 10:32:43 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Sat, 29 Dec 2018 10:33:12 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Sat, 29 Dec 2018 10:33:19 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Sat, 29 Dec 2018 10:33:20 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d     && chmod g=u /etc/passwd
# Sat, 29 Dec 2018 10:33:20 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 10:33:20 GMT
WORKDIR /opt/nuxeo/server
# Sat, 29 Dec 2018 10:33:20 GMT
COPY file:b03749ac857d73dce5a6a9a97f2b99c07db8eccd08d95e8348f7f1eb81b70af8 in / 
# Sat, 29 Dec 2018 10:33:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 10:33:22 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 10:33:22 GMT
EXPOSE 8787
# Sat, 29 Dec 2018 10:33:23 GMT
CMD ["nuxeoctl" "console"]
# Sat, 29 Dec 2018 10:33:23 GMT
USER 1000
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045b51e26e750443c84216071a1367a7aae0b76245800629dc04934628b4b1ea`  
		Last Modified: Sat, 29 Dec 2018 00:22:00 GMT  
		Size: 50.1 MB (50062697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e50f3a5916063721a472d949e4708f7ef54cd00ea07336c43cc1b192f5a30c`  
		Last Modified: Sat, 29 Dec 2018 03:21:36 GMT  
		Size: 892.3 KB (892281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c546cdc7ce4fc7024f36d943e72738660870cf6eddd1491e1f7afe7739ea9d`  
		Last Modified: Sat, 29 Dec 2018 03:24:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b0460146c0de06889859885b2591dbb2c6b8d29b4163c3d9d0782b8b3e360b`  
		Last Modified: Sat, 29 Dec 2018 03:24:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428095c4a908303a8f98178b90d393c8b4cddaafa1b67d50e71d369adc680294`  
		Last Modified: Sat, 29 Dec 2018 03:24:53 GMT  
		Size: 134.0 MB (133975764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8d15cdd87675321b7cdc7a98628f4767690c2684ce42feb3bf6fed6edb5f93`  
		Last Modified: Sat, 29 Dec 2018 10:39:57 GMT  
		Size: 243.1 MB (243099484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c56e2e408719bb901490679e4347f4f99841f1ba672d85ceaac8860244e7732`  
		Last Modified: Sat, 29 Dec 2018 10:38:50 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c01a0371ad813f359e9bd17ed6006dbb95dc1c97cd3e84cd4ab9b7e1fa67f28`  
		Last Modified: Sat, 29 Dec 2018 10:39:16 GMT  
		Size: 269.6 MB (269622127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd66bd7a9afbd143b34fe97589d129c49881d54ea11afe8aaf92b26b298c58f9`  
		Last Modified: Sat, 29 Dec 2018 10:39:15 GMT  
		Size: 269.6 MB (269624397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5888dadf7a17427e4d147b221826d0b2d87689f6196ab3f9416f1b24679b74`  
		Last Modified: Sat, 29 Dec 2018 10:38:50 GMT  
		Size: 817.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87dda9bac7f2852031c2a528d62c5d599358972b85f16e1dfca06e79ba611620`  
		Last Modified: Sat, 29 Dec 2018 10:38:50 GMT  
		Size: 1.6 KB (1559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:8.10`

```console
$ docker pull nuxeo@sha256:a4a0f6f1d25d9872fd4f977a1467609dff2eea4b54fefa9d5ff58bf4e78227b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:8.10` - linux; amd64

```console
$ docker pull nuxeo@sha256:cea180357cb7996e6c4a3f1fe5d01feed253152d3e965e5eb5809982a02b5e4f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1027728646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01dbe439a2138c54073bc0f2a407eace8eaada8dc8b07c5bcbec550193c0551`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 00:04:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:52:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:56:41 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:56:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:57:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 10:28:37 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Sat, 29 Dec 2018 10:32:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:32:41 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Sat, 29 Dec 2018 10:32:41 GMT
ENV NUXEO_USER=nuxeo
# Sat, 29 Dec 2018 10:32:41 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Sat, 29 Dec 2018 10:32:41 GMT
ENV HOME=/opt/nuxeo/server
# Sat, 29 Dec 2018 10:32:42 GMT
ARG NUXEO_VERSION=8.10
# Sat, 29 Dec 2018 10:32:42 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip
# Sat, 29 Dec 2018 10:32:42 GMT
ARG NUXEO_MD5=29e67a19bba54099093b51d892926be1
# Sat, 29 Dec 2018 10:32:43 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Sat, 29 Dec 2018 10:33:12 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Sat, 29 Dec 2018 10:33:19 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Sat, 29 Dec 2018 10:33:20 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d     && chmod g=u /etc/passwd
# Sat, 29 Dec 2018 10:33:20 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 10:33:20 GMT
WORKDIR /opt/nuxeo/server
# Sat, 29 Dec 2018 10:33:20 GMT
COPY file:b03749ac857d73dce5a6a9a97f2b99c07db8eccd08d95e8348f7f1eb81b70af8 in / 
# Sat, 29 Dec 2018 10:33:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 10:33:22 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 10:33:22 GMT
EXPOSE 8787
# Sat, 29 Dec 2018 10:33:23 GMT
CMD ["nuxeoctl" "console"]
# Sat, 29 Dec 2018 10:33:23 GMT
USER 1000
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045b51e26e750443c84216071a1367a7aae0b76245800629dc04934628b4b1ea`  
		Last Modified: Sat, 29 Dec 2018 00:22:00 GMT  
		Size: 50.1 MB (50062697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e50f3a5916063721a472d949e4708f7ef54cd00ea07336c43cc1b192f5a30c`  
		Last Modified: Sat, 29 Dec 2018 03:21:36 GMT  
		Size: 892.3 KB (892281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c546cdc7ce4fc7024f36d943e72738660870cf6eddd1491e1f7afe7739ea9d`  
		Last Modified: Sat, 29 Dec 2018 03:24:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b0460146c0de06889859885b2591dbb2c6b8d29b4163c3d9d0782b8b3e360b`  
		Last Modified: Sat, 29 Dec 2018 03:24:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428095c4a908303a8f98178b90d393c8b4cddaafa1b67d50e71d369adc680294`  
		Last Modified: Sat, 29 Dec 2018 03:24:53 GMT  
		Size: 134.0 MB (133975764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8d15cdd87675321b7cdc7a98628f4767690c2684ce42feb3bf6fed6edb5f93`  
		Last Modified: Sat, 29 Dec 2018 10:39:57 GMT  
		Size: 243.1 MB (243099484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c56e2e408719bb901490679e4347f4f99841f1ba672d85ceaac8860244e7732`  
		Last Modified: Sat, 29 Dec 2018 10:38:50 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c01a0371ad813f359e9bd17ed6006dbb95dc1c97cd3e84cd4ab9b7e1fa67f28`  
		Last Modified: Sat, 29 Dec 2018 10:39:16 GMT  
		Size: 269.6 MB (269622127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd66bd7a9afbd143b34fe97589d129c49881d54ea11afe8aaf92b26b298c58f9`  
		Last Modified: Sat, 29 Dec 2018 10:39:15 GMT  
		Size: 269.6 MB (269624397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5888dadf7a17427e4d147b221826d0b2d87689f6196ab3f9416f1b24679b74`  
		Last Modified: Sat, 29 Dec 2018 10:38:50 GMT  
		Size: 817.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87dda9bac7f2852031c2a528d62c5d599358972b85f16e1dfca06e79ba611620`  
		Last Modified: Sat, 29 Dec 2018 10:38:50 GMT  
		Size: 1.6 KB (1559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:9`

```console
$ docker pull nuxeo@sha256:e8baf471e396a487ddb410edf59a6aaf3f6855d6ed0eb775db4a9a8460d7d758
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:9` - linux; amd64

```console
$ docker pull nuxeo@sha256:57e8dc04fa8bfee92cb1f4928918240a774383476b7ad56aa3274ebdf7702cbd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1258788886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2168fb550fa925fd769e898d08ce8cdecf612f44915d2881367db598ee2c0a20`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 00:04:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:52:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:56:41 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:56:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:57:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 10:28:37 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Sat, 29 Dec 2018 10:32:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:32:41 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Sat, 29 Dec 2018 10:32:41 GMT
ENV NUXEO_USER=nuxeo
# Sat, 29 Dec 2018 10:32:41 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Sat, 29 Dec 2018 10:32:41 GMT
ENV HOME=/opt/nuxeo/server
# Sat, 29 Dec 2018 10:33:35 GMT
ARG NUXEO_VERSION=9.10
# Sat, 29 Dec 2018 10:33:35 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip
# Sat, 29 Dec 2018 10:33:35 GMT
ARG NUXEO_MD5=327d23bbd5558565694027b11c0dd82a
# Sat, 29 Dec 2018 10:33:36 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Sat, 29 Dec 2018 10:34:12 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Sat, 29 Dec 2018 10:34:13 GMT
COPY dir:1d4b19e1e35500d85eafcc58364498b9325f119ce19917cefc60c7ad98e600e7 in /opt/nuxeo/server/templates/docker 
# Sat, 29 Dec 2018 10:34:13 GMT
COPY file:8f1eb15b3cc87be8784ed6bc39c958a3a06d1e375bda2ce728f297d14d74d526 in /etc/nuxeo/nuxeo.conf.template 
# Sat, 29 Dec 2018 10:34:13 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Sat, 29 Dec 2018 10:34:21 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Sat, 29 Dec 2018 10:34:21 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 10:34:22 GMT
WORKDIR /opt/nuxeo/server
# Sat, 29 Dec 2018 10:34:22 GMT
COPY file:d8f37458746cb2e17dae348b52babe8b858743784ee8dffc0c24d7026bf0e474 in / 
# Sat, 29 Dec 2018 10:34:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 10:34:22 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 10:34:22 GMT
EXPOSE 8787
# Sat, 29 Dec 2018 10:34:23 GMT
CMD ["nuxeoctl" "console"]
# Sat, 29 Dec 2018 10:34:23 GMT
USER 1000
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045b51e26e750443c84216071a1367a7aae0b76245800629dc04934628b4b1ea`  
		Last Modified: Sat, 29 Dec 2018 00:22:00 GMT  
		Size: 50.1 MB (50062697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e50f3a5916063721a472d949e4708f7ef54cd00ea07336c43cc1b192f5a30c`  
		Last Modified: Sat, 29 Dec 2018 03:21:36 GMT  
		Size: 892.3 KB (892281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c546cdc7ce4fc7024f36d943e72738660870cf6eddd1491e1f7afe7739ea9d`  
		Last Modified: Sat, 29 Dec 2018 03:24:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b0460146c0de06889859885b2591dbb2c6b8d29b4163c3d9d0782b8b3e360b`  
		Last Modified: Sat, 29 Dec 2018 03:24:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428095c4a908303a8f98178b90d393c8b4cddaafa1b67d50e71d369adc680294`  
		Last Modified: Sat, 29 Dec 2018 03:24:53 GMT  
		Size: 134.0 MB (133975764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8d15cdd87675321b7cdc7a98628f4767690c2684ce42feb3bf6fed6edb5f93`  
		Last Modified: Sat, 29 Dec 2018 10:39:57 GMT  
		Size: 243.1 MB (243099484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5c440d61b3e982844ac456333dbf6614e66b1d7928e796e0577ad7bb15c7bd`  
		Last Modified: Sat, 29 Dec 2018 10:40:08 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577ee1d814bc46a064f91efa7e4cfa5255eece6e7bd2f21c5470bdd2356baddb`  
		Last Modified: Sat, 29 Dec 2018 10:40:40 GMT  
		Size: 385.2 MB (385151698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73c33c70385d7061c8f6d833910a5d271e7f799451cf52d7aafef9c29f9d0f9`  
		Last Modified: Sat, 29 Dec 2018 10:40:07 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178896ab27bb9eda477bf88096f6f960ec0644ae50ce6d5d318e739c64808b84`  
		Last Modified: Sat, 29 Dec 2018 10:40:07 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da71eee81bff28fb92549d3c31740000eddcc7e471af27c4c4371cb9b8bca3e5`  
		Last Modified: Sat, 29 Dec 2018 10:40:40 GMT  
		Size: 385.2 MB (385154799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b977d11cf67168cd0cac5935ae1eac141e5cf0aed149f63e1ed431440401231c`  
		Last Modified: Sat, 29 Dec 2018 10:40:07 GMT  
		Size: 1.0 KB (1021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:9.10`

```console
$ docker pull nuxeo@sha256:e8baf471e396a487ddb410edf59a6aaf3f6855d6ed0eb775db4a9a8460d7d758
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:9.10` - linux; amd64

```console
$ docker pull nuxeo@sha256:57e8dc04fa8bfee92cb1f4928918240a774383476b7ad56aa3274ebdf7702cbd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1258788886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2168fb550fa925fd769e898d08ce8cdecf612f44915d2881367db598ee2c0a20`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 00:04:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:52:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:56:41 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:56:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:57:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 10:28:37 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Sat, 29 Dec 2018 10:32:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:32:41 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Sat, 29 Dec 2018 10:32:41 GMT
ENV NUXEO_USER=nuxeo
# Sat, 29 Dec 2018 10:32:41 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Sat, 29 Dec 2018 10:32:41 GMT
ENV HOME=/opt/nuxeo/server
# Sat, 29 Dec 2018 10:33:35 GMT
ARG NUXEO_VERSION=9.10
# Sat, 29 Dec 2018 10:33:35 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip
# Sat, 29 Dec 2018 10:33:35 GMT
ARG NUXEO_MD5=327d23bbd5558565694027b11c0dd82a
# Sat, 29 Dec 2018 10:33:36 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Sat, 29 Dec 2018 10:34:12 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Sat, 29 Dec 2018 10:34:13 GMT
COPY dir:1d4b19e1e35500d85eafcc58364498b9325f119ce19917cefc60c7ad98e600e7 in /opt/nuxeo/server/templates/docker 
# Sat, 29 Dec 2018 10:34:13 GMT
COPY file:8f1eb15b3cc87be8784ed6bc39c958a3a06d1e375bda2ce728f297d14d74d526 in /etc/nuxeo/nuxeo.conf.template 
# Sat, 29 Dec 2018 10:34:13 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Sat, 29 Dec 2018 10:34:21 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Sat, 29 Dec 2018 10:34:21 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 10:34:22 GMT
WORKDIR /opt/nuxeo/server
# Sat, 29 Dec 2018 10:34:22 GMT
COPY file:d8f37458746cb2e17dae348b52babe8b858743784ee8dffc0c24d7026bf0e474 in / 
# Sat, 29 Dec 2018 10:34:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 10:34:22 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 10:34:22 GMT
EXPOSE 8787
# Sat, 29 Dec 2018 10:34:23 GMT
CMD ["nuxeoctl" "console"]
# Sat, 29 Dec 2018 10:34:23 GMT
USER 1000
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045b51e26e750443c84216071a1367a7aae0b76245800629dc04934628b4b1ea`  
		Last Modified: Sat, 29 Dec 2018 00:22:00 GMT  
		Size: 50.1 MB (50062697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e50f3a5916063721a472d949e4708f7ef54cd00ea07336c43cc1b192f5a30c`  
		Last Modified: Sat, 29 Dec 2018 03:21:36 GMT  
		Size: 892.3 KB (892281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c546cdc7ce4fc7024f36d943e72738660870cf6eddd1491e1f7afe7739ea9d`  
		Last Modified: Sat, 29 Dec 2018 03:24:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b0460146c0de06889859885b2591dbb2c6b8d29b4163c3d9d0782b8b3e360b`  
		Last Modified: Sat, 29 Dec 2018 03:24:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428095c4a908303a8f98178b90d393c8b4cddaafa1b67d50e71d369adc680294`  
		Last Modified: Sat, 29 Dec 2018 03:24:53 GMT  
		Size: 134.0 MB (133975764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8d15cdd87675321b7cdc7a98628f4767690c2684ce42feb3bf6fed6edb5f93`  
		Last Modified: Sat, 29 Dec 2018 10:39:57 GMT  
		Size: 243.1 MB (243099484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5c440d61b3e982844ac456333dbf6614e66b1d7928e796e0577ad7bb15c7bd`  
		Last Modified: Sat, 29 Dec 2018 10:40:08 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577ee1d814bc46a064f91efa7e4cfa5255eece6e7bd2f21c5470bdd2356baddb`  
		Last Modified: Sat, 29 Dec 2018 10:40:40 GMT  
		Size: 385.2 MB (385151698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73c33c70385d7061c8f6d833910a5d271e7f799451cf52d7aafef9c29f9d0f9`  
		Last Modified: Sat, 29 Dec 2018 10:40:07 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178896ab27bb9eda477bf88096f6f960ec0644ae50ce6d5d318e739c64808b84`  
		Last Modified: Sat, 29 Dec 2018 10:40:07 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da71eee81bff28fb92549d3c31740000eddcc7e471af27c4c4371cb9b8bca3e5`  
		Last Modified: Sat, 29 Dec 2018 10:40:40 GMT  
		Size: 385.2 MB (385154799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b977d11cf67168cd0cac5935ae1eac141e5cf0aed149f63e1ed431440401231c`  
		Last Modified: Sat, 29 Dec 2018 10:40:07 GMT  
		Size: 1.0 KB (1021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:FT`

```console
$ docker pull nuxeo@sha256:0bedab7ec162d0776e9ce6f1a49526722d961be38882f8ce67056f6289af17c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:FT` - linux; amd64

```console
$ docker pull nuxeo@sha256:fca8f26a370786c8c0068e28cbe7cac368c8416d9e86a69554acd711bf7d4441
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 GB (1191122294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:465fe915bbc1a14a2b66e551258fa675229e7b4e091beaacb00382b5be753011`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 00:04:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:52:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:56:41 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:56:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:57:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 10:28:37 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Sat, 29 Dec 2018 10:32:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:32:41 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Sat, 29 Dec 2018 10:32:41 GMT
ENV NUXEO_USER=nuxeo
# Sat, 29 Dec 2018 10:32:41 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Sat, 29 Dec 2018 10:32:41 GMT
ENV HOME=/opt/nuxeo/server
# Sat, 29 Dec 2018 10:36:23 GMT
ARG NUXEO_VERSION=10.3
# Sat, 29 Dec 2018 10:36:23 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.3/nuxeo-server-10.3-tomcat.zip
# Sat, 29 Dec 2018 10:36:23 GMT
ARG NUXEO_MD5=e2f32f59ce6aebe06c5ac4c1971b1787
# Sat, 29 Dec 2018 10:36:25 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.3/nuxeo-server-10.3-tomcat.zip NUXEO_MD5=e2f32f59ce6aebe06c5ac4c1971b1787 NUXEO_VERSION=10.3
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Sat, 29 Dec 2018 10:37:00 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.3/nuxeo-server-10.3-tomcat.zip NUXEO_MD5=e2f32f59ce6aebe06c5ac4c1971b1787 NUXEO_VERSION=10.3
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Sat, 29 Dec 2018 10:37:01 GMT
COPY dir:1d4b19e1e35500d85eafcc58364498b9325f119ce19917cefc60c7ad98e600e7 in /opt/nuxeo/server/templates/docker 
# Sat, 29 Dec 2018 10:37:01 GMT
COPY file:8f1eb15b3cc87be8784ed6bc39c958a3a06d1e375bda2ce728f297d14d74d526 in /etc/nuxeo/nuxeo.conf.template 
# Sat, 29 Dec 2018 10:37:01 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Sat, 29 Dec 2018 10:37:10 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.3/nuxeo-server-10.3-tomcat.zip NUXEO_MD5=e2f32f59ce6aebe06c5ac4c1971b1787 NUXEO_VERSION=10.3
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Sat, 29 Dec 2018 10:37:11 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 10:37:11 GMT
WORKDIR /opt/nuxeo/server
# Sat, 29 Dec 2018 10:37:11 GMT
COPY file:d8f37458746cb2e17dae348b52babe8b858743784ee8dffc0c24d7026bf0e474 in / 
# Sat, 29 Dec 2018 10:37:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 10:37:12 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 10:37:12 GMT
EXPOSE 8787
# Sat, 29 Dec 2018 10:37:12 GMT
CMD ["nuxeoctl" "console"]
# Sat, 29 Dec 2018 10:37:12 GMT
USER 1000
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045b51e26e750443c84216071a1367a7aae0b76245800629dc04934628b4b1ea`  
		Last Modified: Sat, 29 Dec 2018 00:22:00 GMT  
		Size: 50.1 MB (50062697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e50f3a5916063721a472d949e4708f7ef54cd00ea07336c43cc1b192f5a30c`  
		Last Modified: Sat, 29 Dec 2018 03:21:36 GMT  
		Size: 892.3 KB (892281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c546cdc7ce4fc7024f36d943e72738660870cf6eddd1491e1f7afe7739ea9d`  
		Last Modified: Sat, 29 Dec 2018 03:24:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b0460146c0de06889859885b2591dbb2c6b8d29b4163c3d9d0782b8b3e360b`  
		Last Modified: Sat, 29 Dec 2018 03:24:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428095c4a908303a8f98178b90d393c8b4cddaafa1b67d50e71d369adc680294`  
		Last Modified: Sat, 29 Dec 2018 03:24:53 GMT  
		Size: 134.0 MB (133975764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8d15cdd87675321b7cdc7a98628f4767690c2684ce42feb3bf6fed6edb5f93`  
		Last Modified: Sat, 29 Dec 2018 10:39:57 GMT  
		Size: 243.1 MB (243099484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb832ab9cb92d7dbf782093d478e80ff7d16e413d3370cd62edced7bbf0f9d19`  
		Last Modified: Sat, 29 Dec 2018 10:42:16 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d208e05c2cf3a4119cce65fad2e511ead92b8a4e42e036864dda8a368e30485e`  
		Last Modified: Sat, 29 Dec 2018 10:42:46 GMT  
		Size: 351.3 MB (351319347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c6a69aba0fa00f767e87ccf74255f459455f7d3eb6dc39d16867cff034f042`  
		Last Modified: Sat, 29 Dec 2018 10:42:15 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b45eb45f31ebe5fcd4a3c01e1f19b0334105a916b153974e0c379adfb587f0e`  
		Last Modified: Sat, 29 Dec 2018 10:42:16 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11cb24ae8e3028a51d4aa9b6acae4a517045648bb46eaadc9d067dab54fc5895`  
		Last Modified: Sat, 29 Dec 2018 10:42:59 GMT  
		Size: 351.3 MB (351320557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ff5b369e23ad2c9b2416012e6899877258298a220ef57f93c8635ca6e33f01`  
		Last Modified: Sat, 29 Dec 2018 10:42:16 GMT  
		Size: 1.0 KB (1021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:latest`

```console
$ docker pull nuxeo@sha256:0bedab7ec162d0776e9ce6f1a49526722d961be38882f8ce67056f6289af17c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:latest` - linux; amd64

```console
$ docker pull nuxeo@sha256:fca8f26a370786c8c0068e28cbe7cac368c8416d9e86a69554acd711bf7d4441
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 GB (1191122294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:465fe915bbc1a14a2b66e551258fa675229e7b4e091beaacb00382b5be753011`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 00:04:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:52:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:56:41 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:56:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:57:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 10:28:37 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Sat, 29 Dec 2018 10:32:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:32:41 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Sat, 29 Dec 2018 10:32:41 GMT
ENV NUXEO_USER=nuxeo
# Sat, 29 Dec 2018 10:32:41 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Sat, 29 Dec 2018 10:32:41 GMT
ENV HOME=/opt/nuxeo/server
# Sat, 29 Dec 2018 10:36:23 GMT
ARG NUXEO_VERSION=10.3
# Sat, 29 Dec 2018 10:36:23 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.3/nuxeo-server-10.3-tomcat.zip
# Sat, 29 Dec 2018 10:36:23 GMT
ARG NUXEO_MD5=e2f32f59ce6aebe06c5ac4c1971b1787
# Sat, 29 Dec 2018 10:36:25 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.3/nuxeo-server-10.3-tomcat.zip NUXEO_MD5=e2f32f59ce6aebe06c5ac4c1971b1787 NUXEO_VERSION=10.3
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Sat, 29 Dec 2018 10:37:00 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.3/nuxeo-server-10.3-tomcat.zip NUXEO_MD5=e2f32f59ce6aebe06c5ac4c1971b1787 NUXEO_VERSION=10.3
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Sat, 29 Dec 2018 10:37:01 GMT
COPY dir:1d4b19e1e35500d85eafcc58364498b9325f119ce19917cefc60c7ad98e600e7 in /opt/nuxeo/server/templates/docker 
# Sat, 29 Dec 2018 10:37:01 GMT
COPY file:8f1eb15b3cc87be8784ed6bc39c958a3a06d1e375bda2ce728f297d14d74d526 in /etc/nuxeo/nuxeo.conf.template 
# Sat, 29 Dec 2018 10:37:01 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Sat, 29 Dec 2018 10:37:10 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.3/nuxeo-server-10.3-tomcat.zip NUXEO_MD5=e2f32f59ce6aebe06c5ac4c1971b1787 NUXEO_VERSION=10.3
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Sat, 29 Dec 2018 10:37:11 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 10:37:11 GMT
WORKDIR /opt/nuxeo/server
# Sat, 29 Dec 2018 10:37:11 GMT
COPY file:d8f37458746cb2e17dae348b52babe8b858743784ee8dffc0c24d7026bf0e474 in / 
# Sat, 29 Dec 2018 10:37:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 10:37:12 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 10:37:12 GMT
EXPOSE 8787
# Sat, 29 Dec 2018 10:37:12 GMT
CMD ["nuxeoctl" "console"]
# Sat, 29 Dec 2018 10:37:12 GMT
USER 1000
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045b51e26e750443c84216071a1367a7aae0b76245800629dc04934628b4b1ea`  
		Last Modified: Sat, 29 Dec 2018 00:22:00 GMT  
		Size: 50.1 MB (50062697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e50f3a5916063721a472d949e4708f7ef54cd00ea07336c43cc1b192f5a30c`  
		Last Modified: Sat, 29 Dec 2018 03:21:36 GMT  
		Size: 892.3 KB (892281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c546cdc7ce4fc7024f36d943e72738660870cf6eddd1491e1f7afe7739ea9d`  
		Last Modified: Sat, 29 Dec 2018 03:24:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b0460146c0de06889859885b2591dbb2c6b8d29b4163c3d9d0782b8b3e360b`  
		Last Modified: Sat, 29 Dec 2018 03:24:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428095c4a908303a8f98178b90d393c8b4cddaafa1b67d50e71d369adc680294`  
		Last Modified: Sat, 29 Dec 2018 03:24:53 GMT  
		Size: 134.0 MB (133975764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8d15cdd87675321b7cdc7a98628f4767690c2684ce42feb3bf6fed6edb5f93`  
		Last Modified: Sat, 29 Dec 2018 10:39:57 GMT  
		Size: 243.1 MB (243099484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb832ab9cb92d7dbf782093d478e80ff7d16e413d3370cd62edced7bbf0f9d19`  
		Last Modified: Sat, 29 Dec 2018 10:42:16 GMT  
		Size: 4.4 KB (4417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d208e05c2cf3a4119cce65fad2e511ead92b8a4e42e036864dda8a368e30485e`  
		Last Modified: Sat, 29 Dec 2018 10:42:46 GMT  
		Size: 351.3 MB (351319347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9c6a69aba0fa00f767e87ccf74255f459455f7d3eb6dc39d16867cff034f042`  
		Last Modified: Sat, 29 Dec 2018 10:42:15 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b45eb45f31ebe5fcd4a3c01e1f19b0334105a916b153974e0c379adfb587f0e`  
		Last Modified: Sat, 29 Dec 2018 10:42:16 GMT  
		Size: 1.0 KB (1012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11cb24ae8e3028a51d4aa9b6acae4a517045648bb46eaadc9d067dab54fc5895`  
		Last Modified: Sat, 29 Dec 2018 10:42:59 GMT  
		Size: 351.3 MB (351320557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ff5b369e23ad2c9b2416012e6899877258298a220ef57f93c8635ca6e33f01`  
		Last Modified: Sat, 29 Dec 2018 10:42:16 GMT  
		Size: 1.0 KB (1021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS`

```console
$ docker pull nuxeo@sha256:e8baf471e396a487ddb410edf59a6aaf3f6855d6ed0eb775db4a9a8460d7d758
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:LTS` - linux; amd64

```console
$ docker pull nuxeo@sha256:57e8dc04fa8bfee92cb1f4928918240a774383476b7ad56aa3274ebdf7702cbd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1258788886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2168fb550fa925fd769e898d08ce8cdecf612f44915d2881367db598ee2c0a20`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 00:04:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:52:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:56:41 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:56:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:57:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 10:28:37 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Sat, 29 Dec 2018 10:32:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:32:41 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Sat, 29 Dec 2018 10:32:41 GMT
ENV NUXEO_USER=nuxeo
# Sat, 29 Dec 2018 10:32:41 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Sat, 29 Dec 2018 10:32:41 GMT
ENV HOME=/opt/nuxeo/server
# Sat, 29 Dec 2018 10:33:35 GMT
ARG NUXEO_VERSION=9.10
# Sat, 29 Dec 2018 10:33:35 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip
# Sat, 29 Dec 2018 10:33:35 GMT
ARG NUXEO_MD5=327d23bbd5558565694027b11c0dd82a
# Sat, 29 Dec 2018 10:33:36 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Sat, 29 Dec 2018 10:34:12 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Sat, 29 Dec 2018 10:34:13 GMT
COPY dir:1d4b19e1e35500d85eafcc58364498b9325f119ce19917cefc60c7ad98e600e7 in /opt/nuxeo/server/templates/docker 
# Sat, 29 Dec 2018 10:34:13 GMT
COPY file:8f1eb15b3cc87be8784ed6bc39c958a3a06d1e375bda2ce728f297d14d74d526 in /etc/nuxeo/nuxeo.conf.template 
# Sat, 29 Dec 2018 10:34:13 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Sat, 29 Dec 2018 10:34:21 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Sat, 29 Dec 2018 10:34:21 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 10:34:22 GMT
WORKDIR /opt/nuxeo/server
# Sat, 29 Dec 2018 10:34:22 GMT
COPY file:d8f37458746cb2e17dae348b52babe8b858743784ee8dffc0c24d7026bf0e474 in / 
# Sat, 29 Dec 2018 10:34:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 10:34:22 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 10:34:22 GMT
EXPOSE 8787
# Sat, 29 Dec 2018 10:34:23 GMT
CMD ["nuxeoctl" "console"]
# Sat, 29 Dec 2018 10:34:23 GMT
USER 1000
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045b51e26e750443c84216071a1367a7aae0b76245800629dc04934628b4b1ea`  
		Last Modified: Sat, 29 Dec 2018 00:22:00 GMT  
		Size: 50.1 MB (50062697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e50f3a5916063721a472d949e4708f7ef54cd00ea07336c43cc1b192f5a30c`  
		Last Modified: Sat, 29 Dec 2018 03:21:36 GMT  
		Size: 892.3 KB (892281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c546cdc7ce4fc7024f36d943e72738660870cf6eddd1491e1f7afe7739ea9d`  
		Last Modified: Sat, 29 Dec 2018 03:24:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b0460146c0de06889859885b2591dbb2c6b8d29b4163c3d9d0782b8b3e360b`  
		Last Modified: Sat, 29 Dec 2018 03:24:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428095c4a908303a8f98178b90d393c8b4cddaafa1b67d50e71d369adc680294`  
		Last Modified: Sat, 29 Dec 2018 03:24:53 GMT  
		Size: 134.0 MB (133975764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8d15cdd87675321b7cdc7a98628f4767690c2684ce42feb3bf6fed6edb5f93`  
		Last Modified: Sat, 29 Dec 2018 10:39:57 GMT  
		Size: 243.1 MB (243099484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5c440d61b3e982844ac456333dbf6614e66b1d7928e796e0577ad7bb15c7bd`  
		Last Modified: Sat, 29 Dec 2018 10:40:08 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577ee1d814bc46a064f91efa7e4cfa5255eece6e7bd2f21c5470bdd2356baddb`  
		Last Modified: Sat, 29 Dec 2018 10:40:40 GMT  
		Size: 385.2 MB (385151698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73c33c70385d7061c8f6d833910a5d271e7f799451cf52d7aafef9c29f9d0f9`  
		Last Modified: Sat, 29 Dec 2018 10:40:07 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178896ab27bb9eda477bf88096f6f960ec0644ae50ce6d5d318e739c64808b84`  
		Last Modified: Sat, 29 Dec 2018 10:40:07 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da71eee81bff28fb92549d3c31740000eddcc7e471af27c4c4371cb9b8bca3e5`  
		Last Modified: Sat, 29 Dec 2018 10:40:40 GMT  
		Size: 385.2 MB (385154799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b977d11cf67168cd0cac5935ae1eac141e5cf0aed149f63e1ed431440401231c`  
		Last Modified: Sat, 29 Dec 2018 10:40:07 GMT  
		Size: 1.0 KB (1021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS-2015`

```console
$ docker pull nuxeo@sha256:6ee2a46a36e12af56657204ddb3bc091ef2f5fd3ea4c790526eda73b3f79b371
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:LTS-2015` - linux; amd64

```console
$ docker pull nuxeo@sha256:dc8d920e80f70265eee3a66431e3c79eafeb0979dd55cc6722deab729790ccfd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1045532102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af0c3ef7ffc3b6de5a0aaeb0c29b7e350cd1d7f91ed5c309dc17eef2961fe3c4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 00:04:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:52:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:56:41 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:56:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:57:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 10:28:37 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Sat, 29 Dec 2018 10:30:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:30:33 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Sat, 29 Dec 2018 10:30:33 GMT
ENV NUXEO_USER=nuxeo
# Sat, 29 Dec 2018 10:30:34 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Sat, 29 Dec 2018 10:30:34 GMT
ENV HOME=/opt/nuxeo/server
# Sat, 29 Dec 2018 10:30:34 GMT
ARG NUXEO_VERSION=7.10
# Sat, 29 Dec 2018 10:30:34 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip
# Sat, 29 Dec 2018 10:30:35 GMT
ARG NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Sat, 29 Dec 2018 10:30:35 GMT
ENV LAUNCHER_DEBUG=-Djvmcheck=nofail
# Sat, 29 Dec 2018 10:30:36 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Sat, 29 Dec 2018 10:31:06 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Sat, 29 Dec 2018 10:31:13 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Sat, 29 Dec 2018 10:31:15 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d     && chmod g=u /etc/passwd
# Sat, 29 Dec 2018 10:31:15 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 10:31:15 GMT
WORKDIR /opt/nuxeo/server
# Sat, 29 Dec 2018 10:31:15 GMT
COPY file:b03749ac857d73dce5a6a9a97f2b99c07db8eccd08d95e8348f7f1eb81b70af8 in / 
# Sat, 29 Dec 2018 10:31:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 10:31:16 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 10:31:16 GMT
EXPOSE 8787
# Sat, 29 Dec 2018 10:31:16 GMT
CMD ["nuxeoctl" "console"]
# Sat, 29 Dec 2018 10:31:17 GMT
USER 1000
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045b51e26e750443c84216071a1367a7aae0b76245800629dc04934628b4b1ea`  
		Last Modified: Sat, 29 Dec 2018 00:22:00 GMT  
		Size: 50.1 MB (50062697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e50f3a5916063721a472d949e4708f7ef54cd00ea07336c43cc1b192f5a30c`  
		Last Modified: Sat, 29 Dec 2018 03:21:36 GMT  
		Size: 892.3 KB (892281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c546cdc7ce4fc7024f36d943e72738660870cf6eddd1491e1f7afe7739ea9d`  
		Last Modified: Sat, 29 Dec 2018 03:24:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b0460146c0de06889859885b2591dbb2c6b8d29b4163c3d9d0782b8b3e360b`  
		Last Modified: Sat, 29 Dec 2018 03:24:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428095c4a908303a8f98178b90d393c8b4cddaafa1b67d50e71d369adc680294`  
		Last Modified: Sat, 29 Dec 2018 03:24:53 GMT  
		Size: 134.0 MB (133975764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d919c5ea863e68dd953d672cba02a95251538e5a44b5ef76699af1a2ab2d9d86`  
		Last Modified: Sat, 29 Dec 2018 10:38:42 GMT  
		Size: 239.2 MB (239231657 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:830abb03f198a177bb57fbb48465329de3464f90cc58d9c18de9057689214ceb`  
		Last Modified: Sat, 29 Dec 2018 10:37:37 GMT  
		Size: 4.4 KB (4418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b46287b569af5f85117890895844dda8f81925176758c6439105394ca35306c4`  
		Last Modified: Sat, 29 Dec 2018 10:38:03 GMT  
		Size: 280.5 MB (280457912 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f73c762ffcfce5f32aa1ecb12b89242dde22c8b9f5614218309a8438b3a58cb8`  
		Last Modified: Sat, 29 Dec 2018 10:38:04 GMT  
		Size: 280.5 MB (280459894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5882d18889af988789dbbe749f08cae036529dc2567fa19e56db77510e0e326e`  
		Last Modified: Sat, 29 Dec 2018 10:37:35 GMT  
		Size: 815.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c68364064968a060e92db1d2daec1ad913ec52b34698d4b2a384c04cb66521`  
		Last Modified: Sat, 29 Dec 2018 10:37:35 GMT  
		Size: 1.6 KB (1559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS-2016`

```console
$ docker pull nuxeo@sha256:a4a0f6f1d25d9872fd4f977a1467609dff2eea4b54fefa9d5ff58bf4e78227b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:LTS-2016` - linux; amd64

```console
$ docker pull nuxeo@sha256:cea180357cb7996e6c4a3f1fe5d01feed253152d3e965e5eb5809982a02b5e4f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1027728646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a01dbe439a2138c54073bc0f2a407eace8eaada8dc8b07c5bcbec550193c0551`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 00:04:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:52:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:56:41 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:56:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:57:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 10:28:37 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Sat, 29 Dec 2018 10:32:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:32:41 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Sat, 29 Dec 2018 10:32:41 GMT
ENV NUXEO_USER=nuxeo
# Sat, 29 Dec 2018 10:32:41 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Sat, 29 Dec 2018 10:32:41 GMT
ENV HOME=/opt/nuxeo/server
# Sat, 29 Dec 2018 10:32:42 GMT
ARG NUXEO_VERSION=8.10
# Sat, 29 Dec 2018 10:32:42 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip
# Sat, 29 Dec 2018 10:32:42 GMT
ARG NUXEO_MD5=29e67a19bba54099093b51d892926be1
# Sat, 29 Dec 2018 10:32:43 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Sat, 29 Dec 2018 10:33:12 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Sat, 29 Dec 2018 10:33:19 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Sat, 29 Dec 2018 10:33:20 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d     && chmod g=u /etc/passwd
# Sat, 29 Dec 2018 10:33:20 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 10:33:20 GMT
WORKDIR /opt/nuxeo/server
# Sat, 29 Dec 2018 10:33:20 GMT
COPY file:b03749ac857d73dce5a6a9a97f2b99c07db8eccd08d95e8348f7f1eb81b70af8 in / 
# Sat, 29 Dec 2018 10:33:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 10:33:22 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 10:33:22 GMT
EXPOSE 8787
# Sat, 29 Dec 2018 10:33:23 GMT
CMD ["nuxeoctl" "console"]
# Sat, 29 Dec 2018 10:33:23 GMT
USER 1000
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045b51e26e750443c84216071a1367a7aae0b76245800629dc04934628b4b1ea`  
		Last Modified: Sat, 29 Dec 2018 00:22:00 GMT  
		Size: 50.1 MB (50062697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e50f3a5916063721a472d949e4708f7ef54cd00ea07336c43cc1b192f5a30c`  
		Last Modified: Sat, 29 Dec 2018 03:21:36 GMT  
		Size: 892.3 KB (892281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c546cdc7ce4fc7024f36d943e72738660870cf6eddd1491e1f7afe7739ea9d`  
		Last Modified: Sat, 29 Dec 2018 03:24:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b0460146c0de06889859885b2591dbb2c6b8d29b4163c3d9d0782b8b3e360b`  
		Last Modified: Sat, 29 Dec 2018 03:24:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428095c4a908303a8f98178b90d393c8b4cddaafa1b67d50e71d369adc680294`  
		Last Modified: Sat, 29 Dec 2018 03:24:53 GMT  
		Size: 134.0 MB (133975764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8d15cdd87675321b7cdc7a98628f4767690c2684ce42feb3bf6fed6edb5f93`  
		Last Modified: Sat, 29 Dec 2018 10:39:57 GMT  
		Size: 243.1 MB (243099484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c56e2e408719bb901490679e4347f4f99841f1ba672d85ceaac8860244e7732`  
		Last Modified: Sat, 29 Dec 2018 10:38:50 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c01a0371ad813f359e9bd17ed6006dbb95dc1c97cd3e84cd4ab9b7e1fa67f28`  
		Last Modified: Sat, 29 Dec 2018 10:39:16 GMT  
		Size: 269.6 MB (269622127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd66bd7a9afbd143b34fe97589d129c49881d54ea11afe8aaf92b26b298c58f9`  
		Last Modified: Sat, 29 Dec 2018 10:39:15 GMT  
		Size: 269.6 MB (269624397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5888dadf7a17427e4d147b221826d0b2d87689f6196ab3f9416f1b24679b74`  
		Last Modified: Sat, 29 Dec 2018 10:38:50 GMT  
		Size: 817.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87dda9bac7f2852031c2a528d62c5d599358972b85f16e1dfca06e79ba611620`  
		Last Modified: Sat, 29 Dec 2018 10:38:50 GMT  
		Size: 1.6 KB (1559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS-2017`

```console
$ docker pull nuxeo@sha256:e8baf471e396a487ddb410edf59a6aaf3f6855d6ed0eb775db4a9a8460d7d758
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:LTS-2017` - linux; amd64

```console
$ docker pull nuxeo@sha256:57e8dc04fa8bfee92cb1f4928918240a774383476b7ad56aa3274ebdf7702cbd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1258788886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2168fb550fa925fd769e898d08ce8cdecf612f44915d2881367db598ee2c0a20`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Fri, 28 Dec 2018 23:29:37 GMT
ADD file:da71baf0d22cb2ede91c5e3ff959607e47459a9d7bda220a62a3da362b0e59ea in / 
# Fri, 28 Dec 2018 23:29:38 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:04:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:04:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 00:04:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:52:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 02:56:41 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 02:56:42 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_HOME=/docker-java-home
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_VERSION=8u181
# Sat, 29 Dec 2018 02:56:43 GMT
ENV JAVA_DEBIAN_VERSION=8u181-b13-2~deb9u1
# Sat, 29 Dec 2018 02:57:39 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Sat, 29 Dec 2018 10:28:37 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Sat, 29 Dec 2018 10:32:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice     ffmpeg     x264  && rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:32:41 GMT
RUN find / -perm 6000 -type f -exec chmod a-s {} \; || true
# Sat, 29 Dec 2018 10:32:41 GMT
ENV NUXEO_USER=nuxeo
# Sat, 29 Dec 2018 10:32:41 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Sat, 29 Dec 2018 10:32:41 GMT
ENV HOME=/opt/nuxeo/server
# Sat, 29 Dec 2018 10:33:35 GMT
ARG NUXEO_VERSION=9.10
# Sat, 29 Dec 2018 10:33:35 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip
# Sat, 29 Dec 2018 10:33:35 GMT
ARG NUXEO_MD5=327d23bbd5558565694027b11c0dd82a
# Sat, 29 Dec 2018 10:33:36 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Sat, 29 Dec 2018 10:34:12 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Sat, 29 Dec 2018 10:34:13 GMT
COPY dir:1d4b19e1e35500d85eafcc58364498b9325f119ce19917cefc60c7ad98e600e7 in /opt/nuxeo/server/templates/docker 
# Sat, 29 Dec 2018 10:34:13 GMT
COPY file:8f1eb15b3cc87be8784ed6bc39c958a3a06d1e375bda2ce728f297d14d74d526 in /etc/nuxeo/nuxeo.conf.template 
# Sat, 29 Dec 2018 10:34:13 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Sat, 29 Dec 2018 10:34:21 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d      && chmod g=u /etc/passwd
# Sat, 29 Dec 2018 10:34:21 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 10:34:22 GMT
WORKDIR /opt/nuxeo/server
# Sat, 29 Dec 2018 10:34:22 GMT
COPY file:d8f37458746cb2e17dae348b52babe8b858743784ee8dffc0c24d7026bf0e474 in / 
# Sat, 29 Dec 2018 10:34:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sat, 29 Dec 2018 10:34:22 GMT
EXPOSE 8080
# Sat, 29 Dec 2018 10:34:22 GMT
EXPOSE 8787
# Sat, 29 Dec 2018 10:34:23 GMT
CMD ["nuxeoctl" "console"]
# Sat, 29 Dec 2018 10:34:23 GMT
USER 1000
```

-	Layers:
	-	`sha256:cd8eada9c7bb496eb685fc6d2198c33db7cb05daf0fde42e4cf5bf0127cbdf38`  
		Last Modified: Fri, 28 Dec 2018 23:35:50 GMT  
		Size: 45.3 MB (45323792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2677faec825930a8844845f55454ee0495ceb5bea9fc904d5b3125de863dc1d`  
		Last Modified: Sat, 29 Dec 2018 00:21:34 GMT  
		Size: 10.8 MB (10780911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcce419a96b1219a265bf7a933d66b585a6f8d73448533f3833c73ad49fb5e88`  
		Last Modified: Sat, 29 Dec 2018 00:21:30 GMT  
		Size: 4.3 MB (4340024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:045b51e26e750443c84216071a1367a7aae0b76245800629dc04934628b4b1ea`  
		Last Modified: Sat, 29 Dec 2018 00:22:00 GMT  
		Size: 50.1 MB (50062697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88e50f3a5916063721a472d949e4708f7ef54cd00ea07336c43cc1b192f5a30c`  
		Last Modified: Sat, 29 Dec 2018 03:21:36 GMT  
		Size: 892.3 KB (892281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c546cdc7ce4fc7024f36d943e72738660870cf6eddd1491e1f7afe7739ea9d`  
		Last Modified: Sat, 29 Dec 2018 03:24:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73b0460146c0de06889859885b2591dbb2c6b8d29b4163c3d9d0782b8b3e360b`  
		Last Modified: Sat, 29 Dec 2018 03:24:22 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:428095c4a908303a8f98178b90d393c8b4cddaafa1b67d50e71d369adc680294`  
		Last Modified: Sat, 29 Dec 2018 03:24:53 GMT  
		Size: 134.0 MB (133975764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c8d15cdd87675321b7cdc7a98628f4767690c2684ce42feb3bf6fed6edb5f93`  
		Last Modified: Sat, 29 Dec 2018 10:39:57 GMT  
		Size: 243.1 MB (243099484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db5c440d61b3e982844ac456333dbf6614e66b1d7928e796e0577ad7bb15c7bd`  
		Last Modified: Sat, 29 Dec 2018 10:40:08 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577ee1d814bc46a064f91efa7e4cfa5255eece6e7bd2f21c5470bdd2356baddb`  
		Last Modified: Sat, 29 Dec 2018 10:40:40 GMT  
		Size: 385.2 MB (385151698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73c33c70385d7061c8f6d833910a5d271e7f799451cf52d7aafef9c29f9d0f9`  
		Last Modified: Sat, 29 Dec 2018 10:40:07 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:178896ab27bb9eda477bf88096f6f960ec0644ae50ce6d5d318e739c64808b84`  
		Last Modified: Sat, 29 Dec 2018 10:40:07 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da71eee81bff28fb92549d3c31740000eddcc7e471af27c4c4371cb9b8bca3e5`  
		Last Modified: Sat, 29 Dec 2018 10:40:40 GMT  
		Size: 385.2 MB (385154799 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b977d11cf67168cd0cac5935ae1eac141e5cf0aed149f63e1ed431440401231c`  
		Last Modified: Sat, 29 Dec 2018 10:40:07 GMT  
		Size: 1.0 KB (1021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
