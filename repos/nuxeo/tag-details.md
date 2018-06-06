<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `nuxeo`

-	[`nuxeo:10.1`](#nuxeo101)
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

## `nuxeo:10.1`

```console
$ docker pull nuxeo@sha256:8d3b2c84c5cb62829235a23f44abb9baaf96a44b01c7e732ba092cb59030fc11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:10.1` - linux; amd64

```console
$ docker pull nuxeo@sha256:453151e3dca1caf7ac842b192fd5ecda90400e9b7118c826bf0e27ef21adb7bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1391312717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fa4d6fc765a0f7bb45103671c57e21545aad03f255bd04839ad943d79366368`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Jun 2018 23:14:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 01:55:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 01:55:55 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:55:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 01:55:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 01:56:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 01:56:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 06 Jun 2018 04:07:20 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 06 Jun 2018 04:19:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice  && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 04:19:06 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Wed, 06 Jun 2018 04:19:06 GMT
ENV NUXEO_USER=nuxeo
# Wed, 06 Jun 2018 04:19:06 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 06 Jun 2018 04:35:33 GMT
ARG NUXEO_VERSION=10.1
# Wed, 06 Jun 2018 04:35:33 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip
# Wed, 06 Jun 2018 04:35:33 GMT
ARG NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162
# Wed, 06 Jun 2018 04:35:34 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162 NUXEO_VERSION=10.1
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 06 Jun 2018 04:45:34 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162 NUXEO_VERSION=10.1
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Wed, 06 Jun 2018 04:45:34 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Wed, 06 Jun 2018 04:45:34 GMT
COPY file:4bef2f1f6b4ee418c784459e2fef01d05a75976842dfa0d5708e86cff319a87c in /etc/nuxeo/nuxeo.conf.template 
# Wed, 06 Jun 2018 04:45:35 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Wed, 06 Jun 2018 04:45:45 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162 NUXEO_VERSION=10.1
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Wed, 06 Jun 2018 04:45:45 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 04:45:45 GMT
WORKDIR /opt/nuxeo/server
# Wed, 06 Jun 2018 04:45:46 GMT
COPY file:5057d5491002404db3522403ba90b8ddf8a263804907b8458cb34d92c265678b in / 
# Wed, 06 Jun 2018 04:45:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 06 Jun 2018 04:45:46 GMT
EXPOSE 8080/tcp
# Wed, 06 Jun 2018 04:45:46 GMT
EXPOSE 8787/tcp
# Wed, 06 Jun 2018 04:45:46 GMT
CMD ["nuxeoctl" "console"]
# Wed, 06 Jun 2018 04:45:47 GMT
USER [1000]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2aa70286b89febc36370098220c9b2960cc67c03375c9df4e82736519f1e8a`  
		Last Modified: Tue, 05 Jun 2018 23:42:32 GMT  
		Size: 50.1 MB (50063911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:276ddd61a47bf599ce5a661fc1c028903efd982c1aeed6f206e521215c24f054`  
		Last Modified: Wed, 06 Jun 2018 02:16:12 GMT  
		Size: 892.5 KB (892508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c60f2a0b5512e9dc45835e4d02930ca36905378bab4cd52c22378017da1419a`  
		Last Modified: Wed, 06 Jun 2018 02:16:09 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4abbe5585c9b201f4cc15964582b4085018f86bbd6dfd1223c9b4fb3ed6420b1`  
		Last Modified: Wed, 06 Jun 2018 02:16:09 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaeb39f0b473ec0d40a97e515dad235a0a0998ac33a3909f7a6554ff6527234d`  
		Last Modified: Wed, 06 Jun 2018 02:16:49 GMT  
		Size: 134.0 MB (133972730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ec96bfaf1628b8d5fc8b7cd38c422f89e802a9986d910851745f30e043daa4`  
		Last Modified: Wed, 06 Jun 2018 02:16:11 GMT  
		Size: 272.1 KB (272090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270212c50bab8145ba6a8d3a981cf0fdeeae43211ac258f533a25a4265cc474d`  
		Last Modified: Wed, 06 Jun 2018 04:49:27 GMT  
		Size: 239.0 MB (239038975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e46c46c9b01c3e96366ee2ad0d3d2a4e9bd191f66c8341cf7847447008225793`  
		Last Modified: Wed, 06 Jun 2018 04:51:43 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9827ec5a74b5bf4f2529cb80af22bfe7c10bf26070b0db78e64739d63bb50f60`  
		Last Modified: Wed, 06 Jun 2018 04:53:39 GMT  
		Size: 453.3 MB (453316634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd24697f092d70dd2d3b033f577898a5e9f31afe896cc930921c59bb192faa4`  
		Last Modified: Wed, 06 Jun 2018 04:51:40 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:865ee73097e5bbda680c696c49a29e3e00c9c348b753e39146c4486dcf1b3361`  
		Last Modified: Wed, 06 Jun 2018 04:51:40 GMT  
		Size: 1.0 KB (1015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad9c4b2325fb87d1616a8c9e8d4e37e8b417ed1d82226e26f155b94faa19e1f`  
		Last Modified: Wed, 06 Jun 2018 04:53:08 GMT  
		Size: 453.3 MB (453320294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28046156f07a0dd4222c7338a39b9d4024cebd10b06ed6917a7e722647023fc3`  
		Last Modified: Wed, 06 Jun 2018 04:51:40 GMT  
		Size: 927.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:7`

```console
$ docker pull nuxeo@sha256:c44247f544596a396d9b6ed72b94d32fadc71d28e17d416346922b7b9ed30a75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:7` - linux; amd64

```console
$ docker pull nuxeo@sha256:5218070a5aa0f7cb481899429140c139a940310539f01544f44ece63280efdbe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1045594133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1ce6fb2e10e2ab53f364ec6133e0820da24188d606ce90791cb2c7de8f56faf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Jun 2018 23:14:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 01:55:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 01:55:55 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:55:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 01:55:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 01:56:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 01:56:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 06 Jun 2018 04:07:20 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 06 Jun 2018 04:09:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 04:09:34 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Wed, 06 Jun 2018 04:09:34 GMT
ENV NUXEO_USER=nuxeo
# Wed, 06 Jun 2018 04:09:34 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 06 Jun 2018 04:09:34 GMT
ARG NUXEO_VERSION=7.10
# Wed, 06 Jun 2018 04:09:34 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip
# Wed, 06 Jun 2018 04:09:35 GMT
ARG NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Wed, 06 Jun 2018 04:09:35 GMT
ENV LAUNCHER_DEBUG=-Djvmcheck=nofail
# Wed, 06 Jun 2018 04:09:35 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 06 Jun 2018 04:17:26 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Wed, 06 Jun 2018 04:17:34 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Wed, 06 Jun 2018 04:17:35 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Wed, 06 Jun 2018 04:17:36 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 04:17:36 GMT
WORKDIR /opt/nuxeo/server
# Wed, 06 Jun 2018 04:17:36 GMT
COPY file:485ff0a6674b97f711e5be4a1ec900fc1002c363c00770d8b1c5809a76ccfc32 in / 
# Wed, 06 Jun 2018 04:17:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 06 Jun 2018 04:17:36 GMT
EXPOSE 8080/tcp
# Wed, 06 Jun 2018 04:17:36 GMT
EXPOSE 8787/tcp
# Wed, 06 Jun 2018 04:17:37 GMT
CMD ["nuxeoctl" "console"]
# Wed, 06 Jun 2018 04:17:37 GMT
USER [1000]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2aa70286b89febc36370098220c9b2960cc67c03375c9df4e82736519f1e8a`  
		Last Modified: Tue, 05 Jun 2018 23:42:32 GMT  
		Size: 50.1 MB (50063911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:276ddd61a47bf599ce5a661fc1c028903efd982c1aeed6f206e521215c24f054`  
		Last Modified: Wed, 06 Jun 2018 02:16:12 GMT  
		Size: 892.5 KB (892508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c60f2a0b5512e9dc45835e4d02930ca36905378bab4cd52c22378017da1419a`  
		Last Modified: Wed, 06 Jun 2018 02:16:09 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4abbe5585c9b201f4cc15964582b4085018f86bbd6dfd1223c9b4fb3ed6420b1`  
		Last Modified: Wed, 06 Jun 2018 02:16:09 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaeb39f0b473ec0d40a97e515dad235a0a0998ac33a3909f7a6554ff6527234d`  
		Last Modified: Wed, 06 Jun 2018 02:16:49 GMT  
		Size: 134.0 MB (133972730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ec96bfaf1628b8d5fc8b7cd38c422f89e802a9986d910851745f30e043daa4`  
		Last Modified: Wed, 06 Jun 2018 02:16:11 GMT  
		Size: 272.1 KB (272090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f30f13c9d65a6972da2fa79e9a227bdb52babdbd56d19e5308a92ad13ee55c78`  
		Last Modified: Wed, 06 Jun 2018 04:47:32 GMT  
		Size: 239.0 MB (239040382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aed81bed869cb854bf7fdc925181b6758f8b6a05fb83ac8adc85e8ec5474b70`  
		Last Modified: Wed, 06 Jun 2018 04:46:05 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39dd45200487a59556861777bef7aa429fd6ce9b0bef5b7a2323f39a9c7b5cf2`  
		Last Modified: Wed, 06 Jun 2018 04:47:16 GMT  
		Size: 280.5 MB (280457920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a483314f881187357ac2a48fc4965db741a52a52de05103818546de458d072b`  
		Last Modified: Wed, 06 Jun 2018 04:47:24 GMT  
		Size: 280.5 MB (280459887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:194800f653541de8ee81be6724fbfd1a71b50ac59af9411788da5ff5d738b0d4`  
		Last Modified: Wed, 06 Jun 2018 04:46:05 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5d8e8341b3c7c13bb1ee9cc9affc3f7c58c749049cddd633f9f5861921755c3`  
		Last Modified: Wed, 06 Jun 2018 04:46:05 GMT  
		Size: 1.4 KB (1428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:7.10`

```console
$ docker pull nuxeo@sha256:c44247f544596a396d9b6ed72b94d32fadc71d28e17d416346922b7b9ed30a75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:7.10` - linux; amd64

```console
$ docker pull nuxeo@sha256:5218070a5aa0f7cb481899429140c139a940310539f01544f44ece63280efdbe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1045594133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1ce6fb2e10e2ab53f364ec6133e0820da24188d606ce90791cb2c7de8f56faf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Jun 2018 23:14:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 01:55:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 01:55:55 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:55:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 01:55:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 01:56:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 01:56:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 06 Jun 2018 04:07:20 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 06 Jun 2018 04:09:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 04:09:34 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Wed, 06 Jun 2018 04:09:34 GMT
ENV NUXEO_USER=nuxeo
# Wed, 06 Jun 2018 04:09:34 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 06 Jun 2018 04:09:34 GMT
ARG NUXEO_VERSION=7.10
# Wed, 06 Jun 2018 04:09:34 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip
# Wed, 06 Jun 2018 04:09:35 GMT
ARG NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Wed, 06 Jun 2018 04:09:35 GMT
ENV LAUNCHER_DEBUG=-Djvmcheck=nofail
# Wed, 06 Jun 2018 04:09:35 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 06 Jun 2018 04:17:26 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Wed, 06 Jun 2018 04:17:34 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Wed, 06 Jun 2018 04:17:35 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Wed, 06 Jun 2018 04:17:36 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 04:17:36 GMT
WORKDIR /opt/nuxeo/server
# Wed, 06 Jun 2018 04:17:36 GMT
COPY file:485ff0a6674b97f711e5be4a1ec900fc1002c363c00770d8b1c5809a76ccfc32 in / 
# Wed, 06 Jun 2018 04:17:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 06 Jun 2018 04:17:36 GMT
EXPOSE 8080/tcp
# Wed, 06 Jun 2018 04:17:36 GMT
EXPOSE 8787/tcp
# Wed, 06 Jun 2018 04:17:37 GMT
CMD ["nuxeoctl" "console"]
# Wed, 06 Jun 2018 04:17:37 GMT
USER [1000]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2aa70286b89febc36370098220c9b2960cc67c03375c9df4e82736519f1e8a`  
		Last Modified: Tue, 05 Jun 2018 23:42:32 GMT  
		Size: 50.1 MB (50063911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:276ddd61a47bf599ce5a661fc1c028903efd982c1aeed6f206e521215c24f054`  
		Last Modified: Wed, 06 Jun 2018 02:16:12 GMT  
		Size: 892.5 KB (892508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c60f2a0b5512e9dc45835e4d02930ca36905378bab4cd52c22378017da1419a`  
		Last Modified: Wed, 06 Jun 2018 02:16:09 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4abbe5585c9b201f4cc15964582b4085018f86bbd6dfd1223c9b4fb3ed6420b1`  
		Last Modified: Wed, 06 Jun 2018 02:16:09 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaeb39f0b473ec0d40a97e515dad235a0a0998ac33a3909f7a6554ff6527234d`  
		Last Modified: Wed, 06 Jun 2018 02:16:49 GMT  
		Size: 134.0 MB (133972730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ec96bfaf1628b8d5fc8b7cd38c422f89e802a9986d910851745f30e043daa4`  
		Last Modified: Wed, 06 Jun 2018 02:16:11 GMT  
		Size: 272.1 KB (272090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f30f13c9d65a6972da2fa79e9a227bdb52babdbd56d19e5308a92ad13ee55c78`  
		Last Modified: Wed, 06 Jun 2018 04:47:32 GMT  
		Size: 239.0 MB (239040382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aed81bed869cb854bf7fdc925181b6758f8b6a05fb83ac8adc85e8ec5474b70`  
		Last Modified: Wed, 06 Jun 2018 04:46:05 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39dd45200487a59556861777bef7aa429fd6ce9b0bef5b7a2323f39a9c7b5cf2`  
		Last Modified: Wed, 06 Jun 2018 04:47:16 GMT  
		Size: 280.5 MB (280457920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a483314f881187357ac2a48fc4965db741a52a52de05103818546de458d072b`  
		Last Modified: Wed, 06 Jun 2018 04:47:24 GMT  
		Size: 280.5 MB (280459887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:194800f653541de8ee81be6724fbfd1a71b50ac59af9411788da5ff5d738b0d4`  
		Last Modified: Wed, 06 Jun 2018 04:46:05 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5d8e8341b3c7c13bb1ee9cc9affc3f7c58c749049cddd633f9f5861921755c3`  
		Last Modified: Wed, 06 Jun 2018 04:46:05 GMT  
		Size: 1.4 KB (1428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:8`

```console
$ docker pull nuxeo@sha256:8af878c84aa159ad96ab044bd87778aac6243dca372b2e6a2779010f193d13cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:8` - linux; amd64

```console
$ docker pull nuxeo@sha256:93279271888057bfaf466c669da0ee5f5bdf939d7ce0fe9a8526c520108cce3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1023921407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a74d542e4453c56a33d782a259e5a0c64591cf2146c0bd07c351d1e0466a940`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Jun 2018 23:14:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 01:55:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 01:55:55 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:55:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 01:55:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 01:56:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 01:56:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 06 Jun 2018 04:07:20 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 06 Jun 2018 04:19:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice  && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 04:19:06 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Wed, 06 Jun 2018 04:19:06 GMT
ENV NUXEO_USER=nuxeo
# Wed, 06 Jun 2018 04:19:06 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 06 Jun 2018 04:19:06 GMT
ARG NUXEO_VERSION=8.10
# Wed, 06 Jun 2018 04:19:06 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip
# Wed, 06 Jun 2018 04:19:07 GMT
ARG NUXEO_MD5=29e67a19bba54099093b51d892926be1
# Wed, 06 Jun 2018 04:19:07 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 06 Jun 2018 04:26:45 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Wed, 06 Jun 2018 04:26:52 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Wed, 06 Jun 2018 04:26:52 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Wed, 06 Jun 2018 04:26:52 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 04:26:53 GMT
WORKDIR /opt/nuxeo/server
# Wed, 06 Jun 2018 04:26:53 GMT
COPY file:485ff0a6674b97f711e5be4a1ec900fc1002c363c00770d8b1c5809a76ccfc32 in / 
# Wed, 06 Jun 2018 04:26:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 06 Jun 2018 04:26:53 GMT
EXPOSE 8080/tcp
# Wed, 06 Jun 2018 04:26:53 GMT
EXPOSE 8787/tcp
# Wed, 06 Jun 2018 04:26:54 GMT
CMD ["nuxeoctl" "console"]
# Wed, 06 Jun 2018 04:26:54 GMT
USER [1000]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2aa70286b89febc36370098220c9b2960cc67c03375c9df4e82736519f1e8a`  
		Last Modified: Tue, 05 Jun 2018 23:42:32 GMT  
		Size: 50.1 MB (50063911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:276ddd61a47bf599ce5a661fc1c028903efd982c1aeed6f206e521215c24f054`  
		Last Modified: Wed, 06 Jun 2018 02:16:12 GMT  
		Size: 892.5 KB (892508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c60f2a0b5512e9dc45835e4d02930ca36905378bab4cd52c22378017da1419a`  
		Last Modified: Wed, 06 Jun 2018 02:16:09 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4abbe5585c9b201f4cc15964582b4085018f86bbd6dfd1223c9b4fb3ed6420b1`  
		Last Modified: Wed, 06 Jun 2018 02:16:09 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaeb39f0b473ec0d40a97e515dad235a0a0998ac33a3909f7a6554ff6527234d`  
		Last Modified: Wed, 06 Jun 2018 02:16:49 GMT  
		Size: 134.0 MB (133972730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ec96bfaf1628b8d5fc8b7cd38c422f89e802a9986d910851745f30e043daa4`  
		Last Modified: Wed, 06 Jun 2018 02:16:11 GMT  
		Size: 272.1 KB (272090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270212c50bab8145ba6a8d3a981cf0fdeeae43211ac258f533a25a4265cc474d`  
		Last Modified: Wed, 06 Jun 2018 04:49:27 GMT  
		Size: 239.0 MB (239038975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05162c8062b2b7a7d06b0dd2a87e363c1f1a66f9b99bd9bd524cc222224f3a26`  
		Last Modified: Wed, 06 Jun 2018 04:47:56 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ea74aa857b542fe1f4ee70a5b9401e1001c108efee6d4ef3541b4c4d6cd90d`  
		Last Modified: Wed, 06 Jun 2018 04:49:24 GMT  
		Size: 269.6 MB (269622079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92657ec2ba58436676ee0bdaa1a5ead7f661dd309646116c3a1979eab290fe7d`  
		Last Modified: Wed, 06 Jun 2018 04:49:09 GMT  
		Size: 269.6 MB (269624405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fd370f2b2c9bf27cb2dcb11f751763098512de1700fff03603774a47b435f40`  
		Last Modified: Wed, 06 Jun 2018 04:47:57 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbd3a2074a526ad3ecb3225702c50feb497e8c2d7cacb6d18d50780a141c2cdd`  
		Last Modified: Wed, 06 Jun 2018 04:47:58 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:8.10`

```console
$ docker pull nuxeo@sha256:8af878c84aa159ad96ab044bd87778aac6243dca372b2e6a2779010f193d13cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:8.10` - linux; amd64

```console
$ docker pull nuxeo@sha256:93279271888057bfaf466c669da0ee5f5bdf939d7ce0fe9a8526c520108cce3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1023921407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a74d542e4453c56a33d782a259e5a0c64591cf2146c0bd07c351d1e0466a940`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Jun 2018 23:14:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 01:55:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 01:55:55 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:55:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 01:55:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 01:56:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 01:56:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 06 Jun 2018 04:07:20 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 06 Jun 2018 04:19:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice  && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 04:19:06 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Wed, 06 Jun 2018 04:19:06 GMT
ENV NUXEO_USER=nuxeo
# Wed, 06 Jun 2018 04:19:06 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 06 Jun 2018 04:19:06 GMT
ARG NUXEO_VERSION=8.10
# Wed, 06 Jun 2018 04:19:06 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip
# Wed, 06 Jun 2018 04:19:07 GMT
ARG NUXEO_MD5=29e67a19bba54099093b51d892926be1
# Wed, 06 Jun 2018 04:19:07 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 06 Jun 2018 04:26:45 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Wed, 06 Jun 2018 04:26:52 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Wed, 06 Jun 2018 04:26:52 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Wed, 06 Jun 2018 04:26:52 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 04:26:53 GMT
WORKDIR /opt/nuxeo/server
# Wed, 06 Jun 2018 04:26:53 GMT
COPY file:485ff0a6674b97f711e5be4a1ec900fc1002c363c00770d8b1c5809a76ccfc32 in / 
# Wed, 06 Jun 2018 04:26:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 06 Jun 2018 04:26:53 GMT
EXPOSE 8080/tcp
# Wed, 06 Jun 2018 04:26:53 GMT
EXPOSE 8787/tcp
# Wed, 06 Jun 2018 04:26:54 GMT
CMD ["nuxeoctl" "console"]
# Wed, 06 Jun 2018 04:26:54 GMT
USER [1000]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2aa70286b89febc36370098220c9b2960cc67c03375c9df4e82736519f1e8a`  
		Last Modified: Tue, 05 Jun 2018 23:42:32 GMT  
		Size: 50.1 MB (50063911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:276ddd61a47bf599ce5a661fc1c028903efd982c1aeed6f206e521215c24f054`  
		Last Modified: Wed, 06 Jun 2018 02:16:12 GMT  
		Size: 892.5 KB (892508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c60f2a0b5512e9dc45835e4d02930ca36905378bab4cd52c22378017da1419a`  
		Last Modified: Wed, 06 Jun 2018 02:16:09 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4abbe5585c9b201f4cc15964582b4085018f86bbd6dfd1223c9b4fb3ed6420b1`  
		Last Modified: Wed, 06 Jun 2018 02:16:09 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaeb39f0b473ec0d40a97e515dad235a0a0998ac33a3909f7a6554ff6527234d`  
		Last Modified: Wed, 06 Jun 2018 02:16:49 GMT  
		Size: 134.0 MB (133972730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ec96bfaf1628b8d5fc8b7cd38c422f89e802a9986d910851745f30e043daa4`  
		Last Modified: Wed, 06 Jun 2018 02:16:11 GMT  
		Size: 272.1 KB (272090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270212c50bab8145ba6a8d3a981cf0fdeeae43211ac258f533a25a4265cc474d`  
		Last Modified: Wed, 06 Jun 2018 04:49:27 GMT  
		Size: 239.0 MB (239038975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05162c8062b2b7a7d06b0dd2a87e363c1f1a66f9b99bd9bd524cc222224f3a26`  
		Last Modified: Wed, 06 Jun 2018 04:47:56 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ea74aa857b542fe1f4ee70a5b9401e1001c108efee6d4ef3541b4c4d6cd90d`  
		Last Modified: Wed, 06 Jun 2018 04:49:24 GMT  
		Size: 269.6 MB (269622079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92657ec2ba58436676ee0bdaa1a5ead7f661dd309646116c3a1979eab290fe7d`  
		Last Modified: Wed, 06 Jun 2018 04:49:09 GMT  
		Size: 269.6 MB (269624405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fd370f2b2c9bf27cb2dcb11f751763098512de1700fff03603774a47b435f40`  
		Last Modified: Wed, 06 Jun 2018 04:47:57 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbd3a2074a526ad3ecb3225702c50feb497e8c2d7cacb6d18d50780a141c2cdd`  
		Last Modified: Wed, 06 Jun 2018 04:47:58 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:9`

```console
$ docker pull nuxeo@sha256:46a7bb93a6f7bf3f812548deca3ad7e27121aa86b2fd5b29e8835d088693a3db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:9` - linux; amd64

```console
$ docker pull nuxeo@sha256:094d834a615acd9146aa809d35b3bec2252fe92cf606daa971cb7700f3f86966
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1254994522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8b948454582d6262de81912c62f997b8ebed3a33d2a75b8956ada419a4d70d8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Jun 2018 23:14:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 01:55:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 01:55:55 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:55:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 01:55:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 01:56:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 01:56:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 06 Jun 2018 04:07:20 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 06 Jun 2018 04:19:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice  && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 04:19:06 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Wed, 06 Jun 2018 04:19:06 GMT
ENV NUXEO_USER=nuxeo
# Wed, 06 Jun 2018 04:19:06 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 06 Jun 2018 04:27:09 GMT
ARG NUXEO_VERSION=9.10
# Wed, 06 Jun 2018 04:27:09 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip
# Wed, 06 Jun 2018 04:27:09 GMT
ARG NUXEO_MD5=327d23bbd5558565694027b11c0dd82a
# Wed, 06 Jun 2018 04:27:10 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 06 Jun 2018 04:35:16 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Wed, 06 Jun 2018 04:35:16 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Wed, 06 Jun 2018 04:35:16 GMT
COPY file:4bef2f1f6b4ee418c784459e2fef01d05a75976842dfa0d5708e86cff319a87c in /etc/nuxeo/nuxeo.conf.template 
# Wed, 06 Jun 2018 04:35:17 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Wed, 06 Jun 2018 04:35:26 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Wed, 06 Jun 2018 04:35:26 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 04:35:26 GMT
WORKDIR /opt/nuxeo/server
# Wed, 06 Jun 2018 04:35:26 GMT
COPY file:5057d5491002404db3522403ba90b8ddf8a263804907b8458cb34d92c265678b in / 
# Wed, 06 Jun 2018 04:35:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 06 Jun 2018 04:35:27 GMT
EXPOSE 8080/tcp
# Wed, 06 Jun 2018 04:35:27 GMT
EXPOSE 8787/tcp
# Wed, 06 Jun 2018 04:35:27 GMT
CMD ["nuxeoctl" "console"]
# Wed, 06 Jun 2018 04:35:27 GMT
USER [1000]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2aa70286b89febc36370098220c9b2960cc67c03375c9df4e82736519f1e8a`  
		Last Modified: Tue, 05 Jun 2018 23:42:32 GMT  
		Size: 50.1 MB (50063911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:276ddd61a47bf599ce5a661fc1c028903efd982c1aeed6f206e521215c24f054`  
		Last Modified: Wed, 06 Jun 2018 02:16:12 GMT  
		Size: 892.5 KB (892508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c60f2a0b5512e9dc45835e4d02930ca36905378bab4cd52c22378017da1419a`  
		Last Modified: Wed, 06 Jun 2018 02:16:09 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4abbe5585c9b201f4cc15964582b4085018f86bbd6dfd1223c9b4fb3ed6420b1`  
		Last Modified: Wed, 06 Jun 2018 02:16:09 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaeb39f0b473ec0d40a97e515dad235a0a0998ac33a3909f7a6554ff6527234d`  
		Last Modified: Wed, 06 Jun 2018 02:16:49 GMT  
		Size: 134.0 MB (133972730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ec96bfaf1628b8d5fc8b7cd38c422f89e802a9986d910851745f30e043daa4`  
		Last Modified: Wed, 06 Jun 2018 02:16:11 GMT  
		Size: 272.1 KB (272090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270212c50bab8145ba6a8d3a981cf0fdeeae43211ac258f533a25a4265cc474d`  
		Last Modified: Wed, 06 Jun 2018 04:49:27 GMT  
		Size: 239.0 MB (239038975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c061d78332912f18580b5c470f5faf53676302de96b0af77197ff2ab4c9f4893`  
		Last Modified: Wed, 06 Jun 2018 04:49:54 GMT  
		Size: 4.4 KB (4418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12e0c23547cd455141f263b2cb421789c5f66ceca344dd754042c99a0f91839`  
		Last Modified: Wed, 06 Jun 2018 04:51:06 GMT  
		Size: 385.2 MB (385158387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a308298cdb5dc03ef6a445e19d0facfc5bcef98243bacdd90d0fee09bd0d04`  
		Last Modified: Wed, 06 Jun 2018 04:49:52 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd867598f99950c593f04eeb05463e0f0d11e46042f72453f519571f039372e2`  
		Last Modified: Wed, 06 Jun 2018 04:49:52 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:810fd52133f8867cb1f9a3852bdf92609f30b42047a5a3b7f961fe07dbb14560`  
		Last Modified: Wed, 06 Jun 2018 04:50:54 GMT  
		Size: 385.2 MB (385160344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:764a54425f13ba06e2c4c62cd127503d0ef93c3077f295678c6bfeeb59bbc26b`  
		Last Modified: Wed, 06 Jun 2018 04:49:52 GMT  
		Size: 927.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:9.10`

```console
$ docker pull nuxeo@sha256:46a7bb93a6f7bf3f812548deca3ad7e27121aa86b2fd5b29e8835d088693a3db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:9.10` - linux; amd64

```console
$ docker pull nuxeo@sha256:094d834a615acd9146aa809d35b3bec2252fe92cf606daa971cb7700f3f86966
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1254994522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8b948454582d6262de81912c62f997b8ebed3a33d2a75b8956ada419a4d70d8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Jun 2018 23:14:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 01:55:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 01:55:55 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:55:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 01:55:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 01:56:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 01:56:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 06 Jun 2018 04:07:20 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 06 Jun 2018 04:19:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice  && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 04:19:06 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Wed, 06 Jun 2018 04:19:06 GMT
ENV NUXEO_USER=nuxeo
# Wed, 06 Jun 2018 04:19:06 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 06 Jun 2018 04:27:09 GMT
ARG NUXEO_VERSION=9.10
# Wed, 06 Jun 2018 04:27:09 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip
# Wed, 06 Jun 2018 04:27:09 GMT
ARG NUXEO_MD5=327d23bbd5558565694027b11c0dd82a
# Wed, 06 Jun 2018 04:27:10 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 06 Jun 2018 04:35:16 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Wed, 06 Jun 2018 04:35:16 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Wed, 06 Jun 2018 04:35:16 GMT
COPY file:4bef2f1f6b4ee418c784459e2fef01d05a75976842dfa0d5708e86cff319a87c in /etc/nuxeo/nuxeo.conf.template 
# Wed, 06 Jun 2018 04:35:17 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Wed, 06 Jun 2018 04:35:26 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Wed, 06 Jun 2018 04:35:26 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 04:35:26 GMT
WORKDIR /opt/nuxeo/server
# Wed, 06 Jun 2018 04:35:26 GMT
COPY file:5057d5491002404db3522403ba90b8ddf8a263804907b8458cb34d92c265678b in / 
# Wed, 06 Jun 2018 04:35:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 06 Jun 2018 04:35:27 GMT
EXPOSE 8080/tcp
# Wed, 06 Jun 2018 04:35:27 GMT
EXPOSE 8787/tcp
# Wed, 06 Jun 2018 04:35:27 GMT
CMD ["nuxeoctl" "console"]
# Wed, 06 Jun 2018 04:35:27 GMT
USER [1000]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2aa70286b89febc36370098220c9b2960cc67c03375c9df4e82736519f1e8a`  
		Last Modified: Tue, 05 Jun 2018 23:42:32 GMT  
		Size: 50.1 MB (50063911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:276ddd61a47bf599ce5a661fc1c028903efd982c1aeed6f206e521215c24f054`  
		Last Modified: Wed, 06 Jun 2018 02:16:12 GMT  
		Size: 892.5 KB (892508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c60f2a0b5512e9dc45835e4d02930ca36905378bab4cd52c22378017da1419a`  
		Last Modified: Wed, 06 Jun 2018 02:16:09 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4abbe5585c9b201f4cc15964582b4085018f86bbd6dfd1223c9b4fb3ed6420b1`  
		Last Modified: Wed, 06 Jun 2018 02:16:09 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaeb39f0b473ec0d40a97e515dad235a0a0998ac33a3909f7a6554ff6527234d`  
		Last Modified: Wed, 06 Jun 2018 02:16:49 GMT  
		Size: 134.0 MB (133972730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ec96bfaf1628b8d5fc8b7cd38c422f89e802a9986d910851745f30e043daa4`  
		Last Modified: Wed, 06 Jun 2018 02:16:11 GMT  
		Size: 272.1 KB (272090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270212c50bab8145ba6a8d3a981cf0fdeeae43211ac258f533a25a4265cc474d`  
		Last Modified: Wed, 06 Jun 2018 04:49:27 GMT  
		Size: 239.0 MB (239038975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c061d78332912f18580b5c470f5faf53676302de96b0af77197ff2ab4c9f4893`  
		Last Modified: Wed, 06 Jun 2018 04:49:54 GMT  
		Size: 4.4 KB (4418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12e0c23547cd455141f263b2cb421789c5f66ceca344dd754042c99a0f91839`  
		Last Modified: Wed, 06 Jun 2018 04:51:06 GMT  
		Size: 385.2 MB (385158387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a308298cdb5dc03ef6a445e19d0facfc5bcef98243bacdd90d0fee09bd0d04`  
		Last Modified: Wed, 06 Jun 2018 04:49:52 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd867598f99950c593f04eeb05463e0f0d11e46042f72453f519571f039372e2`  
		Last Modified: Wed, 06 Jun 2018 04:49:52 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:810fd52133f8867cb1f9a3852bdf92609f30b42047a5a3b7f961fe07dbb14560`  
		Last Modified: Wed, 06 Jun 2018 04:50:54 GMT  
		Size: 385.2 MB (385160344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:764a54425f13ba06e2c4c62cd127503d0ef93c3077f295678c6bfeeb59bbc26b`  
		Last Modified: Wed, 06 Jun 2018 04:49:52 GMT  
		Size: 927.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:FT`

```console
$ docker pull nuxeo@sha256:8d3b2c84c5cb62829235a23f44abb9baaf96a44b01c7e732ba092cb59030fc11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:FT` - linux; amd64

```console
$ docker pull nuxeo@sha256:453151e3dca1caf7ac842b192fd5ecda90400e9b7118c826bf0e27ef21adb7bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1391312717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fa4d6fc765a0f7bb45103671c57e21545aad03f255bd04839ad943d79366368`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Jun 2018 23:14:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 01:55:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 01:55:55 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:55:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 01:55:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 01:56:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 01:56:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 06 Jun 2018 04:07:20 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 06 Jun 2018 04:19:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice  && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 04:19:06 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Wed, 06 Jun 2018 04:19:06 GMT
ENV NUXEO_USER=nuxeo
# Wed, 06 Jun 2018 04:19:06 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 06 Jun 2018 04:35:33 GMT
ARG NUXEO_VERSION=10.1
# Wed, 06 Jun 2018 04:35:33 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip
# Wed, 06 Jun 2018 04:35:33 GMT
ARG NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162
# Wed, 06 Jun 2018 04:35:34 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162 NUXEO_VERSION=10.1
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 06 Jun 2018 04:45:34 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162 NUXEO_VERSION=10.1
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Wed, 06 Jun 2018 04:45:34 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Wed, 06 Jun 2018 04:45:34 GMT
COPY file:4bef2f1f6b4ee418c784459e2fef01d05a75976842dfa0d5708e86cff319a87c in /etc/nuxeo/nuxeo.conf.template 
# Wed, 06 Jun 2018 04:45:35 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Wed, 06 Jun 2018 04:45:45 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162 NUXEO_VERSION=10.1
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Wed, 06 Jun 2018 04:45:45 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 04:45:45 GMT
WORKDIR /opt/nuxeo/server
# Wed, 06 Jun 2018 04:45:46 GMT
COPY file:5057d5491002404db3522403ba90b8ddf8a263804907b8458cb34d92c265678b in / 
# Wed, 06 Jun 2018 04:45:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 06 Jun 2018 04:45:46 GMT
EXPOSE 8080/tcp
# Wed, 06 Jun 2018 04:45:46 GMT
EXPOSE 8787/tcp
# Wed, 06 Jun 2018 04:45:46 GMT
CMD ["nuxeoctl" "console"]
# Wed, 06 Jun 2018 04:45:47 GMT
USER [1000]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2aa70286b89febc36370098220c9b2960cc67c03375c9df4e82736519f1e8a`  
		Last Modified: Tue, 05 Jun 2018 23:42:32 GMT  
		Size: 50.1 MB (50063911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:276ddd61a47bf599ce5a661fc1c028903efd982c1aeed6f206e521215c24f054`  
		Last Modified: Wed, 06 Jun 2018 02:16:12 GMT  
		Size: 892.5 KB (892508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c60f2a0b5512e9dc45835e4d02930ca36905378bab4cd52c22378017da1419a`  
		Last Modified: Wed, 06 Jun 2018 02:16:09 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4abbe5585c9b201f4cc15964582b4085018f86bbd6dfd1223c9b4fb3ed6420b1`  
		Last Modified: Wed, 06 Jun 2018 02:16:09 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaeb39f0b473ec0d40a97e515dad235a0a0998ac33a3909f7a6554ff6527234d`  
		Last Modified: Wed, 06 Jun 2018 02:16:49 GMT  
		Size: 134.0 MB (133972730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ec96bfaf1628b8d5fc8b7cd38c422f89e802a9986d910851745f30e043daa4`  
		Last Modified: Wed, 06 Jun 2018 02:16:11 GMT  
		Size: 272.1 KB (272090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270212c50bab8145ba6a8d3a981cf0fdeeae43211ac258f533a25a4265cc474d`  
		Last Modified: Wed, 06 Jun 2018 04:49:27 GMT  
		Size: 239.0 MB (239038975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e46c46c9b01c3e96366ee2ad0d3d2a4e9bd191f66c8341cf7847447008225793`  
		Last Modified: Wed, 06 Jun 2018 04:51:43 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9827ec5a74b5bf4f2529cb80af22bfe7c10bf26070b0db78e64739d63bb50f60`  
		Last Modified: Wed, 06 Jun 2018 04:53:39 GMT  
		Size: 453.3 MB (453316634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd24697f092d70dd2d3b033f577898a5e9f31afe896cc930921c59bb192faa4`  
		Last Modified: Wed, 06 Jun 2018 04:51:40 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:865ee73097e5bbda680c696c49a29e3e00c9c348b753e39146c4486dcf1b3361`  
		Last Modified: Wed, 06 Jun 2018 04:51:40 GMT  
		Size: 1.0 KB (1015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad9c4b2325fb87d1616a8c9e8d4e37e8b417ed1d82226e26f155b94faa19e1f`  
		Last Modified: Wed, 06 Jun 2018 04:53:08 GMT  
		Size: 453.3 MB (453320294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28046156f07a0dd4222c7338a39b9d4024cebd10b06ed6917a7e722647023fc3`  
		Last Modified: Wed, 06 Jun 2018 04:51:40 GMT  
		Size: 927.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:latest`

```console
$ docker pull nuxeo@sha256:8d3b2c84c5cb62829235a23f44abb9baaf96a44b01c7e732ba092cb59030fc11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:latest` - linux; amd64

```console
$ docker pull nuxeo@sha256:453151e3dca1caf7ac842b192fd5ecda90400e9b7118c826bf0e27ef21adb7bf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1391312717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fa4d6fc765a0f7bb45103671c57e21545aad03f255bd04839ad943d79366368`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Jun 2018 23:14:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 01:55:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 01:55:55 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:55:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 01:55:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 01:56:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 01:56:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 06 Jun 2018 04:07:20 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 06 Jun 2018 04:19:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice  && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 04:19:06 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Wed, 06 Jun 2018 04:19:06 GMT
ENV NUXEO_USER=nuxeo
# Wed, 06 Jun 2018 04:19:06 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 06 Jun 2018 04:35:33 GMT
ARG NUXEO_VERSION=10.1
# Wed, 06 Jun 2018 04:35:33 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip
# Wed, 06 Jun 2018 04:35:33 GMT
ARG NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162
# Wed, 06 Jun 2018 04:35:34 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162 NUXEO_VERSION=10.1
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 06 Jun 2018 04:45:34 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162 NUXEO_VERSION=10.1
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Wed, 06 Jun 2018 04:45:34 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Wed, 06 Jun 2018 04:45:34 GMT
COPY file:4bef2f1f6b4ee418c784459e2fef01d05a75976842dfa0d5708e86cff319a87c in /etc/nuxeo/nuxeo.conf.template 
# Wed, 06 Jun 2018 04:45:35 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Wed, 06 Jun 2018 04:45:45 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162 NUXEO_VERSION=10.1
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Wed, 06 Jun 2018 04:45:45 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 04:45:45 GMT
WORKDIR /opt/nuxeo/server
# Wed, 06 Jun 2018 04:45:46 GMT
COPY file:5057d5491002404db3522403ba90b8ddf8a263804907b8458cb34d92c265678b in / 
# Wed, 06 Jun 2018 04:45:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 06 Jun 2018 04:45:46 GMT
EXPOSE 8080/tcp
# Wed, 06 Jun 2018 04:45:46 GMT
EXPOSE 8787/tcp
# Wed, 06 Jun 2018 04:45:46 GMT
CMD ["nuxeoctl" "console"]
# Wed, 06 Jun 2018 04:45:47 GMT
USER [1000]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2aa70286b89febc36370098220c9b2960cc67c03375c9df4e82736519f1e8a`  
		Last Modified: Tue, 05 Jun 2018 23:42:32 GMT  
		Size: 50.1 MB (50063911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:276ddd61a47bf599ce5a661fc1c028903efd982c1aeed6f206e521215c24f054`  
		Last Modified: Wed, 06 Jun 2018 02:16:12 GMT  
		Size: 892.5 KB (892508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c60f2a0b5512e9dc45835e4d02930ca36905378bab4cd52c22378017da1419a`  
		Last Modified: Wed, 06 Jun 2018 02:16:09 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4abbe5585c9b201f4cc15964582b4085018f86bbd6dfd1223c9b4fb3ed6420b1`  
		Last Modified: Wed, 06 Jun 2018 02:16:09 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaeb39f0b473ec0d40a97e515dad235a0a0998ac33a3909f7a6554ff6527234d`  
		Last Modified: Wed, 06 Jun 2018 02:16:49 GMT  
		Size: 134.0 MB (133972730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ec96bfaf1628b8d5fc8b7cd38c422f89e802a9986d910851745f30e043daa4`  
		Last Modified: Wed, 06 Jun 2018 02:16:11 GMT  
		Size: 272.1 KB (272090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270212c50bab8145ba6a8d3a981cf0fdeeae43211ac258f533a25a4265cc474d`  
		Last Modified: Wed, 06 Jun 2018 04:49:27 GMT  
		Size: 239.0 MB (239038975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e46c46c9b01c3e96366ee2ad0d3d2a4e9bd191f66c8341cf7847447008225793`  
		Last Modified: Wed, 06 Jun 2018 04:51:43 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9827ec5a74b5bf4f2529cb80af22bfe7c10bf26070b0db78e64739d63bb50f60`  
		Last Modified: Wed, 06 Jun 2018 04:53:39 GMT  
		Size: 453.3 MB (453316634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dd24697f092d70dd2d3b033f577898a5e9f31afe896cc930921c59bb192faa4`  
		Last Modified: Wed, 06 Jun 2018 04:51:40 GMT  
		Size: 608.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:865ee73097e5bbda680c696c49a29e3e00c9c348b753e39146c4486dcf1b3361`  
		Last Modified: Wed, 06 Jun 2018 04:51:40 GMT  
		Size: 1.0 KB (1015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ad9c4b2325fb87d1616a8c9e8d4e37e8b417ed1d82226e26f155b94faa19e1f`  
		Last Modified: Wed, 06 Jun 2018 04:53:08 GMT  
		Size: 453.3 MB (453320294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28046156f07a0dd4222c7338a39b9d4024cebd10b06ed6917a7e722647023fc3`  
		Last Modified: Wed, 06 Jun 2018 04:51:40 GMT  
		Size: 927.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS`

```console
$ docker pull nuxeo@sha256:46a7bb93a6f7bf3f812548deca3ad7e27121aa86b2fd5b29e8835d088693a3db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:LTS` - linux; amd64

```console
$ docker pull nuxeo@sha256:094d834a615acd9146aa809d35b3bec2252fe92cf606daa971cb7700f3f86966
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1254994522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8b948454582d6262de81912c62f997b8ebed3a33d2a75b8956ada419a4d70d8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Jun 2018 23:14:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 01:55:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 01:55:55 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:55:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 01:55:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 01:56:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 01:56:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 06 Jun 2018 04:07:20 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 06 Jun 2018 04:19:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice  && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 04:19:06 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Wed, 06 Jun 2018 04:19:06 GMT
ENV NUXEO_USER=nuxeo
# Wed, 06 Jun 2018 04:19:06 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 06 Jun 2018 04:27:09 GMT
ARG NUXEO_VERSION=9.10
# Wed, 06 Jun 2018 04:27:09 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip
# Wed, 06 Jun 2018 04:27:09 GMT
ARG NUXEO_MD5=327d23bbd5558565694027b11c0dd82a
# Wed, 06 Jun 2018 04:27:10 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 06 Jun 2018 04:35:16 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Wed, 06 Jun 2018 04:35:16 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Wed, 06 Jun 2018 04:35:16 GMT
COPY file:4bef2f1f6b4ee418c784459e2fef01d05a75976842dfa0d5708e86cff319a87c in /etc/nuxeo/nuxeo.conf.template 
# Wed, 06 Jun 2018 04:35:17 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Wed, 06 Jun 2018 04:35:26 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Wed, 06 Jun 2018 04:35:26 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 04:35:26 GMT
WORKDIR /opt/nuxeo/server
# Wed, 06 Jun 2018 04:35:26 GMT
COPY file:5057d5491002404db3522403ba90b8ddf8a263804907b8458cb34d92c265678b in / 
# Wed, 06 Jun 2018 04:35:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 06 Jun 2018 04:35:27 GMT
EXPOSE 8080/tcp
# Wed, 06 Jun 2018 04:35:27 GMT
EXPOSE 8787/tcp
# Wed, 06 Jun 2018 04:35:27 GMT
CMD ["nuxeoctl" "console"]
# Wed, 06 Jun 2018 04:35:27 GMT
USER [1000]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2aa70286b89febc36370098220c9b2960cc67c03375c9df4e82736519f1e8a`  
		Last Modified: Tue, 05 Jun 2018 23:42:32 GMT  
		Size: 50.1 MB (50063911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:276ddd61a47bf599ce5a661fc1c028903efd982c1aeed6f206e521215c24f054`  
		Last Modified: Wed, 06 Jun 2018 02:16:12 GMT  
		Size: 892.5 KB (892508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c60f2a0b5512e9dc45835e4d02930ca36905378bab4cd52c22378017da1419a`  
		Last Modified: Wed, 06 Jun 2018 02:16:09 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4abbe5585c9b201f4cc15964582b4085018f86bbd6dfd1223c9b4fb3ed6420b1`  
		Last Modified: Wed, 06 Jun 2018 02:16:09 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaeb39f0b473ec0d40a97e515dad235a0a0998ac33a3909f7a6554ff6527234d`  
		Last Modified: Wed, 06 Jun 2018 02:16:49 GMT  
		Size: 134.0 MB (133972730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ec96bfaf1628b8d5fc8b7cd38c422f89e802a9986d910851745f30e043daa4`  
		Last Modified: Wed, 06 Jun 2018 02:16:11 GMT  
		Size: 272.1 KB (272090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270212c50bab8145ba6a8d3a981cf0fdeeae43211ac258f533a25a4265cc474d`  
		Last Modified: Wed, 06 Jun 2018 04:49:27 GMT  
		Size: 239.0 MB (239038975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c061d78332912f18580b5c470f5faf53676302de96b0af77197ff2ab4c9f4893`  
		Last Modified: Wed, 06 Jun 2018 04:49:54 GMT  
		Size: 4.4 KB (4418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12e0c23547cd455141f263b2cb421789c5f66ceca344dd754042c99a0f91839`  
		Last Modified: Wed, 06 Jun 2018 04:51:06 GMT  
		Size: 385.2 MB (385158387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a308298cdb5dc03ef6a445e19d0facfc5bcef98243bacdd90d0fee09bd0d04`  
		Last Modified: Wed, 06 Jun 2018 04:49:52 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd867598f99950c593f04eeb05463e0f0d11e46042f72453f519571f039372e2`  
		Last Modified: Wed, 06 Jun 2018 04:49:52 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:810fd52133f8867cb1f9a3852bdf92609f30b42047a5a3b7f961fe07dbb14560`  
		Last Modified: Wed, 06 Jun 2018 04:50:54 GMT  
		Size: 385.2 MB (385160344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:764a54425f13ba06e2c4c62cd127503d0ef93c3077f295678c6bfeeb59bbc26b`  
		Last Modified: Wed, 06 Jun 2018 04:49:52 GMT  
		Size: 927.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS-2015`

```console
$ docker pull nuxeo@sha256:c44247f544596a396d9b6ed72b94d32fadc71d28e17d416346922b7b9ed30a75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:LTS-2015` - linux; amd64

```console
$ docker pull nuxeo@sha256:5218070a5aa0f7cb481899429140c139a940310539f01544f44ece63280efdbe
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1045594133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1ce6fb2e10e2ab53f364ec6133e0820da24188d606ce90791cb2c7de8f56faf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Jun 2018 23:14:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 01:55:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 01:55:55 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:55:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 01:55:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 01:56:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 01:56:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 06 Jun 2018 04:07:20 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 06 Jun 2018 04:09:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 04:09:34 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Wed, 06 Jun 2018 04:09:34 GMT
ENV NUXEO_USER=nuxeo
# Wed, 06 Jun 2018 04:09:34 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 06 Jun 2018 04:09:34 GMT
ARG NUXEO_VERSION=7.10
# Wed, 06 Jun 2018 04:09:34 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip
# Wed, 06 Jun 2018 04:09:35 GMT
ARG NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Wed, 06 Jun 2018 04:09:35 GMT
ENV LAUNCHER_DEBUG=-Djvmcheck=nofail
# Wed, 06 Jun 2018 04:09:35 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 06 Jun 2018 04:17:26 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Wed, 06 Jun 2018 04:17:34 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Wed, 06 Jun 2018 04:17:35 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Wed, 06 Jun 2018 04:17:36 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 04:17:36 GMT
WORKDIR /opt/nuxeo/server
# Wed, 06 Jun 2018 04:17:36 GMT
COPY file:485ff0a6674b97f711e5be4a1ec900fc1002c363c00770d8b1c5809a76ccfc32 in / 
# Wed, 06 Jun 2018 04:17:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 06 Jun 2018 04:17:36 GMT
EXPOSE 8080/tcp
# Wed, 06 Jun 2018 04:17:36 GMT
EXPOSE 8787/tcp
# Wed, 06 Jun 2018 04:17:37 GMT
CMD ["nuxeoctl" "console"]
# Wed, 06 Jun 2018 04:17:37 GMT
USER [1000]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2aa70286b89febc36370098220c9b2960cc67c03375c9df4e82736519f1e8a`  
		Last Modified: Tue, 05 Jun 2018 23:42:32 GMT  
		Size: 50.1 MB (50063911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:276ddd61a47bf599ce5a661fc1c028903efd982c1aeed6f206e521215c24f054`  
		Last Modified: Wed, 06 Jun 2018 02:16:12 GMT  
		Size: 892.5 KB (892508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c60f2a0b5512e9dc45835e4d02930ca36905378bab4cd52c22378017da1419a`  
		Last Modified: Wed, 06 Jun 2018 02:16:09 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4abbe5585c9b201f4cc15964582b4085018f86bbd6dfd1223c9b4fb3ed6420b1`  
		Last Modified: Wed, 06 Jun 2018 02:16:09 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaeb39f0b473ec0d40a97e515dad235a0a0998ac33a3909f7a6554ff6527234d`  
		Last Modified: Wed, 06 Jun 2018 02:16:49 GMT  
		Size: 134.0 MB (133972730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ec96bfaf1628b8d5fc8b7cd38c422f89e802a9986d910851745f30e043daa4`  
		Last Modified: Wed, 06 Jun 2018 02:16:11 GMT  
		Size: 272.1 KB (272090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f30f13c9d65a6972da2fa79e9a227bdb52babdbd56d19e5308a92ad13ee55c78`  
		Last Modified: Wed, 06 Jun 2018 04:47:32 GMT  
		Size: 239.0 MB (239040382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5aed81bed869cb854bf7fdc925181b6758f8b6a05fb83ac8adc85e8ec5474b70`  
		Last Modified: Wed, 06 Jun 2018 04:46:05 GMT  
		Size: 4.4 KB (4415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39dd45200487a59556861777bef7aa429fd6ce9b0bef5b7a2323f39a9c7b5cf2`  
		Last Modified: Wed, 06 Jun 2018 04:47:16 GMT  
		Size: 280.5 MB (280457920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a483314f881187357ac2a48fc4965db741a52a52de05103818546de458d072b`  
		Last Modified: Wed, 06 Jun 2018 04:47:24 GMT  
		Size: 280.5 MB (280459887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:194800f653541de8ee81be6724fbfd1a71b50ac59af9411788da5ff5d738b0d4`  
		Last Modified: Wed, 06 Jun 2018 04:46:05 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5d8e8341b3c7c13bb1ee9cc9affc3f7c58c749049cddd633f9f5861921755c3`  
		Last Modified: Wed, 06 Jun 2018 04:46:05 GMT  
		Size: 1.4 KB (1428 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS-2016`

```console
$ docker pull nuxeo@sha256:8af878c84aa159ad96ab044bd87778aac6243dca372b2e6a2779010f193d13cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:LTS-2016` - linux; amd64

```console
$ docker pull nuxeo@sha256:93279271888057bfaf466c669da0ee5f5bdf939d7ce0fe9a8526c520108cce3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1023921407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a74d542e4453c56a33d782a259e5a0c64591cf2146c0bd07c351d1e0466a940`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Jun 2018 23:14:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 01:55:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 01:55:55 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:55:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 01:55:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 01:56:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 01:56:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 06 Jun 2018 04:07:20 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 06 Jun 2018 04:19:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice  && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 04:19:06 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Wed, 06 Jun 2018 04:19:06 GMT
ENV NUXEO_USER=nuxeo
# Wed, 06 Jun 2018 04:19:06 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 06 Jun 2018 04:19:06 GMT
ARG NUXEO_VERSION=8.10
# Wed, 06 Jun 2018 04:19:06 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip
# Wed, 06 Jun 2018 04:19:07 GMT
ARG NUXEO_MD5=29e67a19bba54099093b51d892926be1
# Wed, 06 Jun 2018 04:19:07 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 06 Jun 2018 04:26:45 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Wed, 06 Jun 2018 04:26:52 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Wed, 06 Jun 2018 04:26:52 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Wed, 06 Jun 2018 04:26:52 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 04:26:53 GMT
WORKDIR /opt/nuxeo/server
# Wed, 06 Jun 2018 04:26:53 GMT
COPY file:485ff0a6674b97f711e5be4a1ec900fc1002c363c00770d8b1c5809a76ccfc32 in / 
# Wed, 06 Jun 2018 04:26:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 06 Jun 2018 04:26:53 GMT
EXPOSE 8080/tcp
# Wed, 06 Jun 2018 04:26:53 GMT
EXPOSE 8787/tcp
# Wed, 06 Jun 2018 04:26:54 GMT
CMD ["nuxeoctl" "console"]
# Wed, 06 Jun 2018 04:26:54 GMT
USER [1000]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2aa70286b89febc36370098220c9b2960cc67c03375c9df4e82736519f1e8a`  
		Last Modified: Tue, 05 Jun 2018 23:42:32 GMT  
		Size: 50.1 MB (50063911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:276ddd61a47bf599ce5a661fc1c028903efd982c1aeed6f206e521215c24f054`  
		Last Modified: Wed, 06 Jun 2018 02:16:12 GMT  
		Size: 892.5 KB (892508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c60f2a0b5512e9dc45835e4d02930ca36905378bab4cd52c22378017da1419a`  
		Last Modified: Wed, 06 Jun 2018 02:16:09 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4abbe5585c9b201f4cc15964582b4085018f86bbd6dfd1223c9b4fb3ed6420b1`  
		Last Modified: Wed, 06 Jun 2018 02:16:09 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaeb39f0b473ec0d40a97e515dad235a0a0998ac33a3909f7a6554ff6527234d`  
		Last Modified: Wed, 06 Jun 2018 02:16:49 GMT  
		Size: 134.0 MB (133972730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ec96bfaf1628b8d5fc8b7cd38c422f89e802a9986d910851745f30e043daa4`  
		Last Modified: Wed, 06 Jun 2018 02:16:11 GMT  
		Size: 272.1 KB (272090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270212c50bab8145ba6a8d3a981cf0fdeeae43211ac258f533a25a4265cc474d`  
		Last Modified: Wed, 06 Jun 2018 04:49:27 GMT  
		Size: 239.0 MB (239038975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05162c8062b2b7a7d06b0dd2a87e363c1f1a66f9b99bd9bd524cc222224f3a26`  
		Last Modified: Wed, 06 Jun 2018 04:47:56 GMT  
		Size: 4.4 KB (4414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51ea74aa857b542fe1f4ee70a5b9401e1001c108efee6d4ef3541b4c4d6cd90d`  
		Last Modified: Wed, 06 Jun 2018 04:49:24 GMT  
		Size: 269.6 MB (269622079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92657ec2ba58436676ee0bdaa1a5ead7f661dd309646116c3a1979eab290fe7d`  
		Last Modified: Wed, 06 Jun 2018 04:49:09 GMT  
		Size: 269.6 MB (269624405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fd370f2b2c9bf27cb2dcb11f751763098512de1700fff03603774a47b435f40`  
		Last Modified: Wed, 06 Jun 2018 04:47:57 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbd3a2074a526ad3ecb3225702c50feb497e8c2d7cacb6d18d50780a141c2cdd`  
		Last Modified: Wed, 06 Jun 2018 04:47:58 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS-2017`

```console
$ docker pull nuxeo@sha256:46a7bb93a6f7bf3f812548deca3ad7e27121aa86b2fd5b29e8835d088693a3db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:LTS-2017` - linux; amd64

```console
$ docker pull nuxeo@sha256:094d834a615acd9146aa809d35b3bec2252fe92cf606daa971cb7700f3f86966
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1254994522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8b948454582d6262de81912c62f997b8ebed3a33d2a75b8956ada419a4d70d8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Sat, 28 Apr 2018 07:08:53 GMT
ADD file:9572fdb59dfbb9b032f3331bbc2a08b31e0aef5fbde44c8f2008d22bf5290cf2 in / 
# Sat, 28 Apr 2018 07:08:53 GMT
CMD ["bash"]
# Tue, 05 Jun 2018 23:13:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Jun 2018 23:13:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Jun 2018 23:14:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 01:55:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 01:55:55 GMT
ENV LANG=C.UTF-8
# Wed, 06 Jun 2018 01:55:56 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_HOME=/docker-java-home
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_VERSION=8u171
# Wed, 06 Jun 2018 01:55:57 GMT
ENV JAVA_DEBIAN_VERSION=8u171-b11-1~deb9u1
# Wed, 06 Jun 2018 01:55:57 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Wed, 06 Jun 2018 01:56:45 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y --no-install-recommends 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Wed, 06 Jun 2018 01:56:47 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 06 Jun 2018 04:07:20 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 06 Jun 2018 04:19:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice  && rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 04:19:06 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Wed, 06 Jun 2018 04:19:06 GMT
ENV NUXEO_USER=nuxeo
# Wed, 06 Jun 2018 04:19:06 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 06 Jun 2018 04:27:09 GMT
ARG NUXEO_VERSION=9.10
# Wed, 06 Jun 2018 04:27:09 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip
# Wed, 06 Jun 2018 04:27:09 GMT
ARG NUXEO_MD5=327d23bbd5558565694027b11c0dd82a
# Wed, 06 Jun 2018 04:27:10 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 06 Jun 2018 04:35:16 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Wed, 06 Jun 2018 04:35:16 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Wed, 06 Jun 2018 04:35:16 GMT
COPY file:4bef2f1f6b4ee418c784459e2fef01d05a75976842dfa0d5708e86cff319a87c in /etc/nuxeo/nuxeo.conf.template 
# Wed, 06 Jun 2018 04:35:17 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Wed, 06 Jun 2018 04:35:26 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Wed, 06 Jun 2018 04:35:26 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Jun 2018 04:35:26 GMT
WORKDIR /opt/nuxeo/server
# Wed, 06 Jun 2018 04:35:26 GMT
COPY file:5057d5491002404db3522403ba90b8ddf8a263804907b8458cb34d92c265678b in / 
# Wed, 06 Jun 2018 04:35:27 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 06 Jun 2018 04:35:27 GMT
EXPOSE 8080/tcp
# Wed, 06 Jun 2018 04:35:27 GMT
EXPOSE 8787/tcp
# Wed, 06 Jun 2018 04:35:27 GMT
CMD ["nuxeoctl" "console"]
# Wed, 06 Jun 2018 04:35:27 GMT
USER [1000]
```

-	Layers:
	-	`sha256:cc1a78bfd46becbfc3abb8a74d9a70a0e0dc7a5809bbd12e814f9382db003707`  
		Last Modified: Sat, 28 Apr 2018 09:27:54 GMT  
		Size: 45.3 MB (45318159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2c05365ee2a2245bb9f6786bc88aa12bf64da676a52668424437826d0f0cb92`  
		Last Modified: Tue, 05 Jun 2018 23:41:58 GMT  
		Size: 10.8 MB (10774184 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:231cb0e216d30ea48044d44d37fba016eb67eca9b19b29a741d95775359d3533`  
		Last Modified: Tue, 05 Jun 2018 23:41:55 GMT  
		Size: 4.3 MB (4335886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d2aa70286b89febc36370098220c9b2960cc67c03375c9df4e82736519f1e8a`  
		Last Modified: Tue, 05 Jun 2018 23:42:32 GMT  
		Size: 50.1 MB (50063911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:276ddd61a47bf599ce5a661fc1c028903efd982c1aeed6f206e521215c24f054`  
		Last Modified: Wed, 06 Jun 2018 02:16:12 GMT  
		Size: 892.5 KB (892508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c60f2a0b5512e9dc45835e4d02930ca36905378bab4cd52c22378017da1419a`  
		Last Modified: Wed, 06 Jun 2018 02:16:09 GMT  
		Size: 249.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4abbe5585c9b201f4cc15964582b4085018f86bbd6dfd1223c9b4fb3ed6420b1`  
		Last Modified: Wed, 06 Jun 2018 02:16:09 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaeb39f0b473ec0d40a97e515dad235a0a0998ac33a3909f7a6554ff6527234d`  
		Last Modified: Wed, 06 Jun 2018 02:16:49 GMT  
		Size: 134.0 MB (133972730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1ec96bfaf1628b8d5fc8b7cd38c422f89e802a9986d910851745f30e043daa4`  
		Last Modified: Wed, 06 Jun 2018 02:16:11 GMT  
		Size: 272.1 KB (272090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:270212c50bab8145ba6a8d3a981cf0fdeeae43211ac258f533a25a4265cc474d`  
		Last Modified: Wed, 06 Jun 2018 04:49:27 GMT  
		Size: 239.0 MB (239038975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c061d78332912f18580b5c470f5faf53676302de96b0af77197ff2ab4c9f4893`  
		Last Modified: Wed, 06 Jun 2018 04:49:54 GMT  
		Size: 4.4 KB (4418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12e0c23547cd455141f263b2cb421789c5f66ceca344dd754042c99a0f91839`  
		Last Modified: Wed, 06 Jun 2018 04:51:06 GMT  
		Size: 385.2 MB (385158387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a308298cdb5dc03ef6a445e19d0facfc5bcef98243bacdd90d0fee09bd0d04`  
		Last Modified: Wed, 06 Jun 2018 04:49:52 GMT  
		Size: 609.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd867598f99950c593f04eeb05463e0f0d11e46042f72453f519571f039372e2`  
		Last Modified: Wed, 06 Jun 2018 04:49:52 GMT  
		Size: 1.0 KB (1013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:810fd52133f8867cb1f9a3852bdf92609f30b42047a5a3b7f961fe07dbb14560`  
		Last Modified: Wed, 06 Jun 2018 04:50:54 GMT  
		Size: 385.2 MB (385160344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:764a54425f13ba06e2c4c62cd127503d0ef93c3077f295678c6bfeeb59bbc26b`  
		Last Modified: Wed, 06 Jun 2018 04:49:52 GMT  
		Size: 927.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
