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
$ docker pull nuxeo@sha256:6e8992869c2b23a50453def867fecb3959307abf1504a359d09807b45fe92d4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:10.1` - linux; amd64

```console
$ docker pull nuxeo@sha256:c0810964b5c6bd8779841a38703f88355b2a190be64e3c1484e054826edb37f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1394983592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30caab9bd7df68ccec74c378f49b48f96a1b5bb326335fe2bd53bba9eae83397`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 27 Mar 2018 20:24:28 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 27 Mar 2018 20:24:29 GMT
ENV JAVA_VERSION=8u162
# Tue, 27 Mar 2018 20:24:29 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 27 Mar 2018 20:24:29 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 27 Mar 2018 20:25:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 27 Mar 2018 20:25:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 28 Mar 2018 03:04:14 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 28 Mar 2018 03:26:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice  && rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 03:26:51 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Wed, 28 Mar 2018 03:26:52 GMT
ENV NUXEO_USER=nuxeo
# Wed, 28 Mar 2018 03:26:52 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 28 Mar 2018 03:56:09 GMT
ARG NUXEO_VERSION=10.1
# Wed, 28 Mar 2018 03:56:09 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip
# Wed, 28 Mar 2018 03:56:09 GMT
ARG NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162
# Wed, 28 Mar 2018 03:56:11 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162 NUXEO_VERSION=10.1
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 28 Mar 2018 03:57:03 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162 NUXEO_VERSION=10.1
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Wed, 28 Mar 2018 03:57:03 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Wed, 28 Mar 2018 03:57:03 GMT
COPY file:4bef2f1f6b4ee418c784459e2fef01d05a75976842dfa0d5708e86cff319a87c in /etc/nuxeo/nuxeo.conf.template 
# Wed, 28 Mar 2018 03:57:04 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Wed, 28 Mar 2018 03:57:14 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162 NUXEO_VERSION=10.1
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Wed, 28 Mar 2018 03:57:15 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Mar 2018 03:57:15 GMT
WORKDIR /opt/nuxeo/server
# Wed, 28 Mar 2018 03:57:15 GMT
COPY file:5057d5491002404db3522403ba90b8ddf8a263804907b8458cb34d92c265678b in / 
# Wed, 28 Mar 2018 03:57:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Mar 2018 03:57:16 GMT
EXPOSE 8080/tcp
# Wed, 28 Mar 2018 03:57:16 GMT
EXPOSE 8787/tcp
# Wed, 28 Mar 2018 03:57:16 GMT
CMD ["nuxeoctl" "console"]
# Wed, 28 Mar 2018 03:57:16 GMT
USER [1000]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ad3b24382b8d524ba08be997a8f95f66ca3939719530a4d56aae5e07bb90be`  
		Last Modified: Tue, 27 Mar 2018 21:49:48 GMT  
		Size: 173.3 MB (173257049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776df9bf9f1b917b5274bcadb090db5a8e1218b8701fd53582e69d3df360115c`  
		Last Modified: Tue, 27 Mar 2018 21:49:13 GMT  
		Size: 272.1 KB (272072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85af4ce72de662edab5ab89b0f4a913175e11672ce5d13b078b645df3d626b45`  
		Last Modified: Wed, 28 Mar 2018 04:20:13 GMT  
		Size: 253.4 MB (253379385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dea0eefa1079819d51fea131a46008ecc1ace37fc144851ab1fa6a8c13f375e`  
		Last Modified: Wed, 28 Mar 2018 04:55:36 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa1096aaed2fcd021d28a780c669fc1275702d72869bd68bb2e58e687f34f2d`  
		Last Modified: Wed, 28 Mar 2018 04:56:05 GMT  
		Size: 453.3 MB (453316664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5aaae0673a65b0630b89b8de392fb0debeb211490984c8612f329c73cb1669`  
		Last Modified: Wed, 28 Mar 2018 04:55:34 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026dc593baf50238685a84a46bd43759b55629940f5c198c51416eb2a2971cb1`  
		Last Modified: Wed, 28 Mar 2018 04:55:34 GMT  
		Size: 1.0 KB (1015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1583c103fb43f8c5507e7c6b7b0e983bd89c283dadce94a21dff5232ec150fe`  
		Last Modified: Wed, 28 Mar 2018 04:56:10 GMT  
		Size: 453.3 MB (453320119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d63f5d350ad579472a0980a8f9e28ae3b489b4a2fb096c85ff22bbd38b765dba`  
		Last Modified: Wed, 28 Mar 2018 04:55:34 GMT  
		Size: 928.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:7`

```console
$ docker pull nuxeo@sha256:e620149216fd256eabfeee6f2ffe94dcc92fc9828bc989e6265ab87334701574
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:7` - linux; amd64

```console
$ docker pull nuxeo@sha256:6b3d0140d94c0910b3621914773387f162c7507730a0fe2d0932d116f5dfe61e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1049263132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c8bef502a7e929a3dbd4a7eaac06b5ecdf58aad1ee5d2c44dd5a22e65cbc356`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 27 Mar 2018 20:24:28 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 27 Mar 2018 20:24:29 GMT
ENV JAVA_VERSION=8u162
# Tue, 27 Mar 2018 20:24:29 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 27 Mar 2018 20:24:29 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 27 Mar 2018 20:25:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 27 Mar 2018 20:25:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 28 Mar 2018 03:04:14 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 28 Mar 2018 03:05:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 03:05:34 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Wed, 28 Mar 2018 03:05:34 GMT
ENV NUXEO_USER=nuxeo
# Wed, 28 Mar 2018 03:05:35 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 28 Mar 2018 03:05:35 GMT
ARG NUXEO_VERSION=7.10
# Wed, 28 Mar 2018 03:05:35 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip
# Wed, 28 Mar 2018 03:05:36 GMT
ARG NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Wed, 28 Mar 2018 03:05:36 GMT
ENV LAUNCHER_DEBUG=-Djvmcheck=nofail
# Wed, 28 Mar 2018 03:05:37 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 28 Mar 2018 03:06:11 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Wed, 28 Mar 2018 03:06:18 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Wed, 28 Mar 2018 03:06:19 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Wed, 28 Mar 2018 03:06:19 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Mar 2018 03:06:20 GMT
WORKDIR /opt/nuxeo/server
# Wed, 28 Mar 2018 03:06:20 GMT
COPY file:485ff0a6674b97f711e5be4a1ec900fc1002c363c00770d8b1c5809a76ccfc32 in / 
# Wed, 28 Mar 2018 03:06:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Mar 2018 03:06:21 GMT
EXPOSE 8080/tcp
# Wed, 28 Mar 2018 03:06:21 GMT
EXPOSE 8787/tcp
# Wed, 28 Mar 2018 03:06:21 GMT
CMD ["nuxeoctl" "console"]
# Wed, 28 Mar 2018 03:06:22 GMT
USER [1000]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ad3b24382b8d524ba08be997a8f95f66ca3939719530a4d56aae5e07bb90be`  
		Last Modified: Tue, 27 Mar 2018 21:49:48 GMT  
		Size: 173.3 MB (173257049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776df9bf9f1b917b5274bcadb090db5a8e1218b8701fd53582e69d3df360115c`  
		Last Modified: Tue, 27 Mar 2018 21:49:13 GMT  
		Size: 272.1 KB (272072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24b395e14c93d02daf1f66d28807d3e26f9c17db662f2acf7f62ecc0dd29fa8`  
		Last Modified: Wed, 28 Mar 2018 04:06:23 GMT  
		Size: 253.4 MB (253378759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c06016be247119d87e1682afd47554b9f5242a6bf290654c2ca6daf3a19008`  
		Last Modified: Wed, 28 Mar 2018 04:05:27 GMT  
		Size: 4.4 KB (4409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f09a41e02bc8456c068e195011992b920c26cb44a50ded7d0e7b3788b9202123`  
		Last Modified: Wed, 28 Mar 2018 04:05:48 GMT  
		Size: 280.5 MB (280457928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7249450976341cbeab28074a4606ac0161c558e7786bde82cb056fe5cbc1f333`  
		Last Modified: Wed, 28 Mar 2018 04:05:48 GMT  
		Size: 280.5 MB (280459891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f8b11f771ae6e5103f5c2f216a398603a200c9e61502c00f5cc4aff636ac36`  
		Last Modified: Wed, 28 Mar 2018 04:05:27 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0265699ac1e05f7800f81e3368efecf8bab5738c4ace4eadba2d6e7b2182781c`  
		Last Modified: Wed, 28 Mar 2018 04:05:27 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:7.10`

```console
$ docker pull nuxeo@sha256:e620149216fd256eabfeee6f2ffe94dcc92fc9828bc989e6265ab87334701574
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:7.10` - linux; amd64

```console
$ docker pull nuxeo@sha256:6b3d0140d94c0910b3621914773387f162c7507730a0fe2d0932d116f5dfe61e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1049263132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c8bef502a7e929a3dbd4a7eaac06b5ecdf58aad1ee5d2c44dd5a22e65cbc356`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 27 Mar 2018 20:24:28 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 27 Mar 2018 20:24:29 GMT
ENV JAVA_VERSION=8u162
# Tue, 27 Mar 2018 20:24:29 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 27 Mar 2018 20:24:29 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 27 Mar 2018 20:25:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 27 Mar 2018 20:25:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 28 Mar 2018 03:04:14 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 28 Mar 2018 03:05:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 03:05:34 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Wed, 28 Mar 2018 03:05:34 GMT
ENV NUXEO_USER=nuxeo
# Wed, 28 Mar 2018 03:05:35 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 28 Mar 2018 03:05:35 GMT
ARG NUXEO_VERSION=7.10
# Wed, 28 Mar 2018 03:05:35 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip
# Wed, 28 Mar 2018 03:05:36 GMT
ARG NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Wed, 28 Mar 2018 03:05:36 GMT
ENV LAUNCHER_DEBUG=-Djvmcheck=nofail
# Wed, 28 Mar 2018 03:05:37 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 28 Mar 2018 03:06:11 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Wed, 28 Mar 2018 03:06:18 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Wed, 28 Mar 2018 03:06:19 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Wed, 28 Mar 2018 03:06:19 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Mar 2018 03:06:20 GMT
WORKDIR /opt/nuxeo/server
# Wed, 28 Mar 2018 03:06:20 GMT
COPY file:485ff0a6674b97f711e5be4a1ec900fc1002c363c00770d8b1c5809a76ccfc32 in / 
# Wed, 28 Mar 2018 03:06:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Mar 2018 03:06:21 GMT
EXPOSE 8080/tcp
# Wed, 28 Mar 2018 03:06:21 GMT
EXPOSE 8787/tcp
# Wed, 28 Mar 2018 03:06:21 GMT
CMD ["nuxeoctl" "console"]
# Wed, 28 Mar 2018 03:06:22 GMT
USER [1000]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ad3b24382b8d524ba08be997a8f95f66ca3939719530a4d56aae5e07bb90be`  
		Last Modified: Tue, 27 Mar 2018 21:49:48 GMT  
		Size: 173.3 MB (173257049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776df9bf9f1b917b5274bcadb090db5a8e1218b8701fd53582e69d3df360115c`  
		Last Modified: Tue, 27 Mar 2018 21:49:13 GMT  
		Size: 272.1 KB (272072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24b395e14c93d02daf1f66d28807d3e26f9c17db662f2acf7f62ecc0dd29fa8`  
		Last Modified: Wed, 28 Mar 2018 04:06:23 GMT  
		Size: 253.4 MB (253378759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c06016be247119d87e1682afd47554b9f5242a6bf290654c2ca6daf3a19008`  
		Last Modified: Wed, 28 Mar 2018 04:05:27 GMT  
		Size: 4.4 KB (4409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f09a41e02bc8456c068e195011992b920c26cb44a50ded7d0e7b3788b9202123`  
		Last Modified: Wed, 28 Mar 2018 04:05:48 GMT  
		Size: 280.5 MB (280457928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7249450976341cbeab28074a4606ac0161c558e7786bde82cb056fe5cbc1f333`  
		Last Modified: Wed, 28 Mar 2018 04:05:48 GMT  
		Size: 280.5 MB (280459891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f8b11f771ae6e5103f5c2f216a398603a200c9e61502c00f5cc4aff636ac36`  
		Last Modified: Wed, 28 Mar 2018 04:05:27 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0265699ac1e05f7800f81e3368efecf8bab5738c4ace4eadba2d6e7b2182781c`  
		Last Modified: Wed, 28 Mar 2018 04:05:27 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:8`

```console
$ docker pull nuxeo@sha256:fbef33deaa57ac7256506a18686272fb67b5a44f761258329c1ec84c05b17581
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:8` - linux; amd64

```console
$ docker pull nuxeo@sha256:d66deb21a7438b22ea19434666c2b89fdbcf9e919c4c917ce93b7288e8b58b94
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1027592430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b696141205e3a41b61c32fc817ae5c85822a51d8dde8c06e22757577513f892b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 27 Mar 2018 20:24:28 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 27 Mar 2018 20:24:29 GMT
ENV JAVA_VERSION=8u162
# Tue, 27 Mar 2018 20:24:29 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 27 Mar 2018 20:24:29 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 27 Mar 2018 20:25:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 27 Mar 2018 20:25:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 28 Mar 2018 03:04:14 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 28 Mar 2018 03:26:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice  && rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 03:26:51 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Wed, 28 Mar 2018 03:26:52 GMT
ENV NUXEO_USER=nuxeo
# Wed, 28 Mar 2018 03:26:52 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 28 Mar 2018 03:26:52 GMT
ARG NUXEO_VERSION=8.10
# Wed, 28 Mar 2018 03:26:52 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip
# Wed, 28 Mar 2018 03:26:53 GMT
ARG NUXEO_MD5=29e67a19bba54099093b51d892926be1
# Wed, 28 Mar 2018 03:26:53 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 28 Mar 2018 03:27:29 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Wed, 28 Mar 2018 03:27:36 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Wed, 28 Mar 2018 03:27:37 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Wed, 28 Mar 2018 03:27:38 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Mar 2018 03:27:38 GMT
WORKDIR /opt/nuxeo/server
# Wed, 28 Mar 2018 03:27:38 GMT
COPY file:485ff0a6674b97f711e5be4a1ec900fc1002c363c00770d8b1c5809a76ccfc32 in / 
# Wed, 28 Mar 2018 03:27:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Mar 2018 03:27:39 GMT
EXPOSE 8080/tcp
# Wed, 28 Mar 2018 03:27:39 GMT
EXPOSE 8787/tcp
# Wed, 28 Mar 2018 03:27:39 GMT
CMD ["nuxeoctl" "console"]
# Wed, 28 Mar 2018 03:27:39 GMT
USER [1000]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ad3b24382b8d524ba08be997a8f95f66ca3939719530a4d56aae5e07bb90be`  
		Last Modified: Tue, 27 Mar 2018 21:49:48 GMT  
		Size: 173.3 MB (173257049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776df9bf9f1b917b5274bcadb090db5a8e1218b8701fd53582e69d3df360115c`  
		Last Modified: Tue, 27 Mar 2018 21:49:13 GMT  
		Size: 272.1 KB (272072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85af4ce72de662edab5ab89b0f4a913175e11672ce5d13b078b645df3d626b45`  
		Last Modified: Wed, 28 Mar 2018 04:20:13 GMT  
		Size: 253.4 MB (253379385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93a9f776fb2f1f6613474fc97b5b022a5eaf2c8d781dc41205e8dd45de11eb4e`  
		Last Modified: Wed, 28 Mar 2018 04:19:17 GMT  
		Size: 4.4 KB (4407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67d393dbfba62a3524e4f02d35d7b39e09bb2f1308e99ab0ac4f4814f687e99`  
		Last Modified: Wed, 28 Mar 2018 04:19:38 GMT  
		Size: 269.6 MB (269622106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe250a3be86dd0d117daaf0d56d974e36aca66ae6bfe1fb0998785fe15b9d97`  
		Last Modified: Wed, 28 Mar 2018 04:19:40 GMT  
		Size: 269.6 MB (269624386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb0ae3803410e6f281e94808709ae3a283d5ab29450e01a4f3af5a3215fe513`  
		Last Modified: Wed, 28 Mar 2018 04:19:17 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77336af2aa5e56960c6bafff64508370773cd7850e6459c522f1361af51ae400`  
		Last Modified: Wed, 28 Mar 2018 04:19:18 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:8.10`

```console
$ docker pull nuxeo@sha256:fbef33deaa57ac7256506a18686272fb67b5a44f761258329c1ec84c05b17581
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:8.10` - linux; amd64

```console
$ docker pull nuxeo@sha256:d66deb21a7438b22ea19434666c2b89fdbcf9e919c4c917ce93b7288e8b58b94
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1027592430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b696141205e3a41b61c32fc817ae5c85822a51d8dde8c06e22757577513f892b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 27 Mar 2018 20:24:28 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 27 Mar 2018 20:24:29 GMT
ENV JAVA_VERSION=8u162
# Tue, 27 Mar 2018 20:24:29 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 27 Mar 2018 20:24:29 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 27 Mar 2018 20:25:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 27 Mar 2018 20:25:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 28 Mar 2018 03:04:14 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 28 Mar 2018 03:26:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice  && rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 03:26:51 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Wed, 28 Mar 2018 03:26:52 GMT
ENV NUXEO_USER=nuxeo
# Wed, 28 Mar 2018 03:26:52 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 28 Mar 2018 03:26:52 GMT
ARG NUXEO_VERSION=8.10
# Wed, 28 Mar 2018 03:26:52 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip
# Wed, 28 Mar 2018 03:26:53 GMT
ARG NUXEO_MD5=29e67a19bba54099093b51d892926be1
# Wed, 28 Mar 2018 03:26:53 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 28 Mar 2018 03:27:29 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Wed, 28 Mar 2018 03:27:36 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Wed, 28 Mar 2018 03:27:37 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Wed, 28 Mar 2018 03:27:38 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Mar 2018 03:27:38 GMT
WORKDIR /opt/nuxeo/server
# Wed, 28 Mar 2018 03:27:38 GMT
COPY file:485ff0a6674b97f711e5be4a1ec900fc1002c363c00770d8b1c5809a76ccfc32 in / 
# Wed, 28 Mar 2018 03:27:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Mar 2018 03:27:39 GMT
EXPOSE 8080/tcp
# Wed, 28 Mar 2018 03:27:39 GMT
EXPOSE 8787/tcp
# Wed, 28 Mar 2018 03:27:39 GMT
CMD ["nuxeoctl" "console"]
# Wed, 28 Mar 2018 03:27:39 GMT
USER [1000]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ad3b24382b8d524ba08be997a8f95f66ca3939719530a4d56aae5e07bb90be`  
		Last Modified: Tue, 27 Mar 2018 21:49:48 GMT  
		Size: 173.3 MB (173257049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776df9bf9f1b917b5274bcadb090db5a8e1218b8701fd53582e69d3df360115c`  
		Last Modified: Tue, 27 Mar 2018 21:49:13 GMT  
		Size: 272.1 KB (272072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85af4ce72de662edab5ab89b0f4a913175e11672ce5d13b078b645df3d626b45`  
		Last Modified: Wed, 28 Mar 2018 04:20:13 GMT  
		Size: 253.4 MB (253379385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93a9f776fb2f1f6613474fc97b5b022a5eaf2c8d781dc41205e8dd45de11eb4e`  
		Last Modified: Wed, 28 Mar 2018 04:19:17 GMT  
		Size: 4.4 KB (4407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67d393dbfba62a3524e4f02d35d7b39e09bb2f1308e99ab0ac4f4814f687e99`  
		Last Modified: Wed, 28 Mar 2018 04:19:38 GMT  
		Size: 269.6 MB (269622106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe250a3be86dd0d117daaf0d56d974e36aca66ae6bfe1fb0998785fe15b9d97`  
		Last Modified: Wed, 28 Mar 2018 04:19:40 GMT  
		Size: 269.6 MB (269624386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb0ae3803410e6f281e94808709ae3a283d5ab29450e01a4f3af5a3215fe513`  
		Last Modified: Wed, 28 Mar 2018 04:19:17 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77336af2aa5e56960c6bafff64508370773cd7850e6459c522f1361af51ae400`  
		Last Modified: Wed, 28 Mar 2018 04:19:18 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:9`

```console
$ docker pull nuxeo@sha256:711a922f688a1859e84c51f15c02d70710e7cac22b399a7e3857bea85eba3995
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:9` - linux; amd64

```console
$ docker pull nuxeo@sha256:cb2db58398550b43cb82c9de4fd3e59a992ddeebdb10642730ce462bb7b53100
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1258665560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6196fbb6c6da8223cf198508d8e6d6922f434226f047f1bca127f0acae49cf41`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 27 Mar 2018 20:24:28 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 27 Mar 2018 20:24:29 GMT
ENV JAVA_VERSION=8u162
# Tue, 27 Mar 2018 20:24:29 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 27 Mar 2018 20:24:29 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 27 Mar 2018 20:25:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 27 Mar 2018 20:25:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 28 Mar 2018 03:04:14 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 28 Mar 2018 03:26:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice  && rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 03:26:51 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Wed, 28 Mar 2018 03:26:52 GMT
ENV NUXEO_USER=nuxeo
# Wed, 28 Mar 2018 03:26:52 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 28 Mar 2018 03:42:21 GMT
ARG NUXEO_VERSION=9.10
# Wed, 28 Mar 2018 03:42:21 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip
# Wed, 28 Mar 2018 03:42:21 GMT
ARG NUXEO_MD5=327d23bbd5558565694027b11c0dd82a
# Wed, 28 Mar 2018 03:42:23 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 28 Mar 2018 03:43:05 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Wed, 28 Mar 2018 03:43:05 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Wed, 28 Mar 2018 03:43:06 GMT
COPY file:4bef2f1f6b4ee418c784459e2fef01d05a75976842dfa0d5708e86cff319a87c in /etc/nuxeo/nuxeo.conf.template 
# Wed, 28 Mar 2018 03:43:06 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Wed, 28 Mar 2018 03:43:15 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Wed, 28 Mar 2018 03:43:15 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Mar 2018 03:43:15 GMT
WORKDIR /opt/nuxeo/server
# Wed, 28 Mar 2018 03:43:16 GMT
COPY file:5057d5491002404db3522403ba90b8ddf8a263804907b8458cb34d92c265678b in / 
# Wed, 28 Mar 2018 03:43:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Mar 2018 03:43:16 GMT
EXPOSE 8080/tcp
# Wed, 28 Mar 2018 03:43:16 GMT
EXPOSE 8787/tcp
# Wed, 28 Mar 2018 03:43:16 GMT
CMD ["nuxeoctl" "console"]
# Wed, 28 Mar 2018 03:43:17 GMT
USER [1000]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ad3b24382b8d524ba08be997a8f95f66ca3939719530a4d56aae5e07bb90be`  
		Last Modified: Tue, 27 Mar 2018 21:49:48 GMT  
		Size: 173.3 MB (173257049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776df9bf9f1b917b5274bcadb090db5a8e1218b8701fd53582e69d3df360115c`  
		Last Modified: Tue, 27 Mar 2018 21:49:13 GMT  
		Size: 272.1 KB (272072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85af4ce72de662edab5ab89b0f4a913175e11672ce5d13b078b645df3d626b45`  
		Last Modified: Wed, 28 Mar 2018 04:20:13 GMT  
		Size: 253.4 MB (253379385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31c2fddbdfdfaee88d67b66e11b51e517c7173b01562299c7bd8a38f9328c97b`  
		Last Modified: Wed, 28 Mar 2018 04:38:58 GMT  
		Size: 4.4 KB (4408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcf2ac09701eee14e6ede8a5d179de2d73ab10948be972f20b81c8a6208b7031`  
		Last Modified: Wed, 28 Mar 2018 04:39:53 GMT  
		Size: 385.2 MB (385158405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46271daca3f2d062f4a9fd3cc71de6dbdbea2e6a9019bd1b73b157db75e17749`  
		Last Modified: Wed, 28 Mar 2018 04:38:56 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82170f9abae9c2954164f0544015bac52e8c276d67b5eda475cf22d3a4aad294`  
		Last Modified: Wed, 28 Mar 2018 04:38:56 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080d557a111f488b083e4a2413d2a676d3ea931fb40e0fb3bde0ca7fe313b6d4`  
		Last Modified: Wed, 28 Mar 2018 04:39:22 GMT  
		Size: 385.2 MB (385160351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1076e9620d4da05ef4ddb12f63aa484dcdfa6b66cb387001cc08047d7ee0c2`  
		Last Modified: Wed, 28 Mar 2018 04:38:56 GMT  
		Size: 927.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:9.10`

```console
$ docker pull nuxeo@sha256:711a922f688a1859e84c51f15c02d70710e7cac22b399a7e3857bea85eba3995
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:9.10` - linux; amd64

```console
$ docker pull nuxeo@sha256:cb2db58398550b43cb82c9de4fd3e59a992ddeebdb10642730ce462bb7b53100
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1258665560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6196fbb6c6da8223cf198508d8e6d6922f434226f047f1bca127f0acae49cf41`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 27 Mar 2018 20:24:28 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 27 Mar 2018 20:24:29 GMT
ENV JAVA_VERSION=8u162
# Tue, 27 Mar 2018 20:24:29 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 27 Mar 2018 20:24:29 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 27 Mar 2018 20:25:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 27 Mar 2018 20:25:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 28 Mar 2018 03:04:14 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 28 Mar 2018 03:26:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice  && rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 03:26:51 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Wed, 28 Mar 2018 03:26:52 GMT
ENV NUXEO_USER=nuxeo
# Wed, 28 Mar 2018 03:26:52 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 28 Mar 2018 03:42:21 GMT
ARG NUXEO_VERSION=9.10
# Wed, 28 Mar 2018 03:42:21 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip
# Wed, 28 Mar 2018 03:42:21 GMT
ARG NUXEO_MD5=327d23bbd5558565694027b11c0dd82a
# Wed, 28 Mar 2018 03:42:23 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 28 Mar 2018 03:43:05 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Wed, 28 Mar 2018 03:43:05 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Wed, 28 Mar 2018 03:43:06 GMT
COPY file:4bef2f1f6b4ee418c784459e2fef01d05a75976842dfa0d5708e86cff319a87c in /etc/nuxeo/nuxeo.conf.template 
# Wed, 28 Mar 2018 03:43:06 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Wed, 28 Mar 2018 03:43:15 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Wed, 28 Mar 2018 03:43:15 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Mar 2018 03:43:15 GMT
WORKDIR /opt/nuxeo/server
# Wed, 28 Mar 2018 03:43:16 GMT
COPY file:5057d5491002404db3522403ba90b8ddf8a263804907b8458cb34d92c265678b in / 
# Wed, 28 Mar 2018 03:43:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Mar 2018 03:43:16 GMT
EXPOSE 8080/tcp
# Wed, 28 Mar 2018 03:43:16 GMT
EXPOSE 8787/tcp
# Wed, 28 Mar 2018 03:43:16 GMT
CMD ["nuxeoctl" "console"]
# Wed, 28 Mar 2018 03:43:17 GMT
USER [1000]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ad3b24382b8d524ba08be997a8f95f66ca3939719530a4d56aae5e07bb90be`  
		Last Modified: Tue, 27 Mar 2018 21:49:48 GMT  
		Size: 173.3 MB (173257049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776df9bf9f1b917b5274bcadb090db5a8e1218b8701fd53582e69d3df360115c`  
		Last Modified: Tue, 27 Mar 2018 21:49:13 GMT  
		Size: 272.1 KB (272072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85af4ce72de662edab5ab89b0f4a913175e11672ce5d13b078b645df3d626b45`  
		Last Modified: Wed, 28 Mar 2018 04:20:13 GMT  
		Size: 253.4 MB (253379385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31c2fddbdfdfaee88d67b66e11b51e517c7173b01562299c7bd8a38f9328c97b`  
		Last Modified: Wed, 28 Mar 2018 04:38:58 GMT  
		Size: 4.4 KB (4408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcf2ac09701eee14e6ede8a5d179de2d73ab10948be972f20b81c8a6208b7031`  
		Last Modified: Wed, 28 Mar 2018 04:39:53 GMT  
		Size: 385.2 MB (385158405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46271daca3f2d062f4a9fd3cc71de6dbdbea2e6a9019bd1b73b157db75e17749`  
		Last Modified: Wed, 28 Mar 2018 04:38:56 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82170f9abae9c2954164f0544015bac52e8c276d67b5eda475cf22d3a4aad294`  
		Last Modified: Wed, 28 Mar 2018 04:38:56 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080d557a111f488b083e4a2413d2a676d3ea931fb40e0fb3bde0ca7fe313b6d4`  
		Last Modified: Wed, 28 Mar 2018 04:39:22 GMT  
		Size: 385.2 MB (385160351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1076e9620d4da05ef4ddb12f63aa484dcdfa6b66cb387001cc08047d7ee0c2`  
		Last Modified: Wed, 28 Mar 2018 04:38:56 GMT  
		Size: 927.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:FT`

```console
$ docker pull nuxeo@sha256:6e8992869c2b23a50453def867fecb3959307abf1504a359d09807b45fe92d4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:FT` - linux; amd64

```console
$ docker pull nuxeo@sha256:c0810964b5c6bd8779841a38703f88355b2a190be64e3c1484e054826edb37f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1394983592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30caab9bd7df68ccec74c378f49b48f96a1b5bb326335fe2bd53bba9eae83397`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 27 Mar 2018 20:24:28 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 27 Mar 2018 20:24:29 GMT
ENV JAVA_VERSION=8u162
# Tue, 27 Mar 2018 20:24:29 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 27 Mar 2018 20:24:29 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 27 Mar 2018 20:25:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 27 Mar 2018 20:25:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 28 Mar 2018 03:04:14 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 28 Mar 2018 03:26:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice  && rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 03:26:51 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Wed, 28 Mar 2018 03:26:52 GMT
ENV NUXEO_USER=nuxeo
# Wed, 28 Mar 2018 03:26:52 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 28 Mar 2018 03:56:09 GMT
ARG NUXEO_VERSION=10.1
# Wed, 28 Mar 2018 03:56:09 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip
# Wed, 28 Mar 2018 03:56:09 GMT
ARG NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162
# Wed, 28 Mar 2018 03:56:11 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162 NUXEO_VERSION=10.1
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 28 Mar 2018 03:57:03 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162 NUXEO_VERSION=10.1
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Wed, 28 Mar 2018 03:57:03 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Wed, 28 Mar 2018 03:57:03 GMT
COPY file:4bef2f1f6b4ee418c784459e2fef01d05a75976842dfa0d5708e86cff319a87c in /etc/nuxeo/nuxeo.conf.template 
# Wed, 28 Mar 2018 03:57:04 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Wed, 28 Mar 2018 03:57:14 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162 NUXEO_VERSION=10.1
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Wed, 28 Mar 2018 03:57:15 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Mar 2018 03:57:15 GMT
WORKDIR /opt/nuxeo/server
# Wed, 28 Mar 2018 03:57:15 GMT
COPY file:5057d5491002404db3522403ba90b8ddf8a263804907b8458cb34d92c265678b in / 
# Wed, 28 Mar 2018 03:57:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Mar 2018 03:57:16 GMT
EXPOSE 8080/tcp
# Wed, 28 Mar 2018 03:57:16 GMT
EXPOSE 8787/tcp
# Wed, 28 Mar 2018 03:57:16 GMT
CMD ["nuxeoctl" "console"]
# Wed, 28 Mar 2018 03:57:16 GMT
USER [1000]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ad3b24382b8d524ba08be997a8f95f66ca3939719530a4d56aae5e07bb90be`  
		Last Modified: Tue, 27 Mar 2018 21:49:48 GMT  
		Size: 173.3 MB (173257049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776df9bf9f1b917b5274bcadb090db5a8e1218b8701fd53582e69d3df360115c`  
		Last Modified: Tue, 27 Mar 2018 21:49:13 GMT  
		Size: 272.1 KB (272072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85af4ce72de662edab5ab89b0f4a913175e11672ce5d13b078b645df3d626b45`  
		Last Modified: Wed, 28 Mar 2018 04:20:13 GMT  
		Size: 253.4 MB (253379385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dea0eefa1079819d51fea131a46008ecc1ace37fc144851ab1fa6a8c13f375e`  
		Last Modified: Wed, 28 Mar 2018 04:55:36 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa1096aaed2fcd021d28a780c669fc1275702d72869bd68bb2e58e687f34f2d`  
		Last Modified: Wed, 28 Mar 2018 04:56:05 GMT  
		Size: 453.3 MB (453316664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5aaae0673a65b0630b89b8de392fb0debeb211490984c8612f329c73cb1669`  
		Last Modified: Wed, 28 Mar 2018 04:55:34 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026dc593baf50238685a84a46bd43759b55629940f5c198c51416eb2a2971cb1`  
		Last Modified: Wed, 28 Mar 2018 04:55:34 GMT  
		Size: 1.0 KB (1015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1583c103fb43f8c5507e7c6b7b0e983bd89c283dadce94a21dff5232ec150fe`  
		Last Modified: Wed, 28 Mar 2018 04:56:10 GMT  
		Size: 453.3 MB (453320119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d63f5d350ad579472a0980a8f9e28ae3b489b4a2fb096c85ff22bbd38b765dba`  
		Last Modified: Wed, 28 Mar 2018 04:55:34 GMT  
		Size: 928.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:latest`

```console
$ docker pull nuxeo@sha256:6e8992869c2b23a50453def867fecb3959307abf1504a359d09807b45fe92d4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:latest` - linux; amd64

```console
$ docker pull nuxeo@sha256:c0810964b5c6bd8779841a38703f88355b2a190be64e3c1484e054826edb37f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.4 GB (1394983592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30caab9bd7df68ccec74c378f49b48f96a1b5bb326335fe2bd53bba9eae83397`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 27 Mar 2018 20:24:28 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 27 Mar 2018 20:24:29 GMT
ENV JAVA_VERSION=8u162
# Tue, 27 Mar 2018 20:24:29 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 27 Mar 2018 20:24:29 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 27 Mar 2018 20:25:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 27 Mar 2018 20:25:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 28 Mar 2018 03:04:14 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 28 Mar 2018 03:26:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice  && rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 03:26:51 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Wed, 28 Mar 2018 03:26:52 GMT
ENV NUXEO_USER=nuxeo
# Wed, 28 Mar 2018 03:26:52 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 28 Mar 2018 03:56:09 GMT
ARG NUXEO_VERSION=10.1
# Wed, 28 Mar 2018 03:56:09 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip
# Wed, 28 Mar 2018 03:56:09 GMT
ARG NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162
# Wed, 28 Mar 2018 03:56:11 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162 NUXEO_VERSION=10.1
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 28 Mar 2018 03:57:03 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162 NUXEO_VERSION=10.1
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Wed, 28 Mar 2018 03:57:03 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Wed, 28 Mar 2018 03:57:03 GMT
COPY file:4bef2f1f6b4ee418c784459e2fef01d05a75976842dfa0d5708e86cff319a87c in /etc/nuxeo/nuxeo.conf.template 
# Wed, 28 Mar 2018 03:57:04 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Wed, 28 Mar 2018 03:57:14 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-10.1/nuxeo-server-10.1-tomcat.zip NUXEO_MD5=862ca124c294c2c7be57af0b8cdc5162 NUXEO_VERSION=10.1
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Wed, 28 Mar 2018 03:57:15 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Mar 2018 03:57:15 GMT
WORKDIR /opt/nuxeo/server
# Wed, 28 Mar 2018 03:57:15 GMT
COPY file:5057d5491002404db3522403ba90b8ddf8a263804907b8458cb34d92c265678b in / 
# Wed, 28 Mar 2018 03:57:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Mar 2018 03:57:16 GMT
EXPOSE 8080/tcp
# Wed, 28 Mar 2018 03:57:16 GMT
EXPOSE 8787/tcp
# Wed, 28 Mar 2018 03:57:16 GMT
CMD ["nuxeoctl" "console"]
# Wed, 28 Mar 2018 03:57:16 GMT
USER [1000]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ad3b24382b8d524ba08be997a8f95f66ca3939719530a4d56aae5e07bb90be`  
		Last Modified: Tue, 27 Mar 2018 21:49:48 GMT  
		Size: 173.3 MB (173257049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776df9bf9f1b917b5274bcadb090db5a8e1218b8701fd53582e69d3df360115c`  
		Last Modified: Tue, 27 Mar 2018 21:49:13 GMT  
		Size: 272.1 KB (272072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85af4ce72de662edab5ab89b0f4a913175e11672ce5d13b078b645df3d626b45`  
		Last Modified: Wed, 28 Mar 2018 04:20:13 GMT  
		Size: 253.4 MB (253379385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4dea0eefa1079819d51fea131a46008ecc1ace37fc144851ab1fa6a8c13f375e`  
		Last Modified: Wed, 28 Mar 2018 04:55:36 GMT  
		Size: 4.4 KB (4412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfa1096aaed2fcd021d28a780c669fc1275702d72869bd68bb2e58e687f34f2d`  
		Last Modified: Wed, 28 Mar 2018 04:56:05 GMT  
		Size: 453.3 MB (453316664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5aaae0673a65b0630b89b8de392fb0debeb211490984c8612f329c73cb1669`  
		Last Modified: Wed, 28 Mar 2018 04:55:34 GMT  
		Size: 605.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:026dc593baf50238685a84a46bd43759b55629940f5c198c51416eb2a2971cb1`  
		Last Modified: Wed, 28 Mar 2018 04:55:34 GMT  
		Size: 1.0 KB (1015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1583c103fb43f8c5507e7c6b7b0e983bd89c283dadce94a21dff5232ec150fe`  
		Last Modified: Wed, 28 Mar 2018 04:56:10 GMT  
		Size: 453.3 MB (453320119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d63f5d350ad579472a0980a8f9e28ae3b489b4a2fb096c85ff22bbd38b765dba`  
		Last Modified: Wed, 28 Mar 2018 04:55:34 GMT  
		Size: 928.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS`

```console
$ docker pull nuxeo@sha256:711a922f688a1859e84c51f15c02d70710e7cac22b399a7e3857bea85eba3995
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:LTS` - linux; amd64

```console
$ docker pull nuxeo@sha256:cb2db58398550b43cb82c9de4fd3e59a992ddeebdb10642730ce462bb7b53100
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1258665560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6196fbb6c6da8223cf198508d8e6d6922f434226f047f1bca127f0acae49cf41`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 27 Mar 2018 20:24:28 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 27 Mar 2018 20:24:29 GMT
ENV JAVA_VERSION=8u162
# Tue, 27 Mar 2018 20:24:29 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 27 Mar 2018 20:24:29 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 27 Mar 2018 20:25:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 27 Mar 2018 20:25:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 28 Mar 2018 03:04:14 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 28 Mar 2018 03:26:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice  && rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 03:26:51 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Wed, 28 Mar 2018 03:26:52 GMT
ENV NUXEO_USER=nuxeo
# Wed, 28 Mar 2018 03:26:52 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 28 Mar 2018 03:42:21 GMT
ARG NUXEO_VERSION=9.10
# Wed, 28 Mar 2018 03:42:21 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip
# Wed, 28 Mar 2018 03:42:21 GMT
ARG NUXEO_MD5=327d23bbd5558565694027b11c0dd82a
# Wed, 28 Mar 2018 03:42:23 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 28 Mar 2018 03:43:05 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Wed, 28 Mar 2018 03:43:05 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Wed, 28 Mar 2018 03:43:06 GMT
COPY file:4bef2f1f6b4ee418c784459e2fef01d05a75976842dfa0d5708e86cff319a87c in /etc/nuxeo/nuxeo.conf.template 
# Wed, 28 Mar 2018 03:43:06 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Wed, 28 Mar 2018 03:43:15 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Wed, 28 Mar 2018 03:43:15 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Mar 2018 03:43:15 GMT
WORKDIR /opt/nuxeo/server
# Wed, 28 Mar 2018 03:43:16 GMT
COPY file:5057d5491002404db3522403ba90b8ddf8a263804907b8458cb34d92c265678b in / 
# Wed, 28 Mar 2018 03:43:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Mar 2018 03:43:16 GMT
EXPOSE 8080/tcp
# Wed, 28 Mar 2018 03:43:16 GMT
EXPOSE 8787/tcp
# Wed, 28 Mar 2018 03:43:16 GMT
CMD ["nuxeoctl" "console"]
# Wed, 28 Mar 2018 03:43:17 GMT
USER [1000]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ad3b24382b8d524ba08be997a8f95f66ca3939719530a4d56aae5e07bb90be`  
		Last Modified: Tue, 27 Mar 2018 21:49:48 GMT  
		Size: 173.3 MB (173257049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776df9bf9f1b917b5274bcadb090db5a8e1218b8701fd53582e69d3df360115c`  
		Last Modified: Tue, 27 Mar 2018 21:49:13 GMT  
		Size: 272.1 KB (272072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85af4ce72de662edab5ab89b0f4a913175e11672ce5d13b078b645df3d626b45`  
		Last Modified: Wed, 28 Mar 2018 04:20:13 GMT  
		Size: 253.4 MB (253379385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31c2fddbdfdfaee88d67b66e11b51e517c7173b01562299c7bd8a38f9328c97b`  
		Last Modified: Wed, 28 Mar 2018 04:38:58 GMT  
		Size: 4.4 KB (4408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcf2ac09701eee14e6ede8a5d179de2d73ab10948be972f20b81c8a6208b7031`  
		Last Modified: Wed, 28 Mar 2018 04:39:53 GMT  
		Size: 385.2 MB (385158405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46271daca3f2d062f4a9fd3cc71de6dbdbea2e6a9019bd1b73b157db75e17749`  
		Last Modified: Wed, 28 Mar 2018 04:38:56 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82170f9abae9c2954164f0544015bac52e8c276d67b5eda475cf22d3a4aad294`  
		Last Modified: Wed, 28 Mar 2018 04:38:56 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080d557a111f488b083e4a2413d2a676d3ea931fb40e0fb3bde0ca7fe313b6d4`  
		Last Modified: Wed, 28 Mar 2018 04:39:22 GMT  
		Size: 385.2 MB (385160351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1076e9620d4da05ef4ddb12f63aa484dcdfa6b66cb387001cc08047d7ee0c2`  
		Last Modified: Wed, 28 Mar 2018 04:38:56 GMT  
		Size: 927.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS-2015`

```console
$ docker pull nuxeo@sha256:e620149216fd256eabfeee6f2ffe94dcc92fc9828bc989e6265ab87334701574
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:LTS-2015` - linux; amd64

```console
$ docker pull nuxeo@sha256:6b3d0140d94c0910b3621914773387f162c7507730a0fe2d0932d116f5dfe61e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1049263132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c8bef502a7e929a3dbd4a7eaac06b5ecdf58aad1ee5d2c44dd5a22e65cbc356`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 27 Mar 2018 20:24:28 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 27 Mar 2018 20:24:29 GMT
ENV JAVA_VERSION=8u162
# Tue, 27 Mar 2018 20:24:29 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 27 Mar 2018 20:24:29 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 27 Mar 2018 20:25:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 27 Mar 2018 20:25:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 28 Mar 2018 03:04:14 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 28 Mar 2018 03:05:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libreoffice     libwpd-tools     exiftool     ghostscript  && rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 03:05:34 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Wed, 28 Mar 2018 03:05:34 GMT
ENV NUXEO_USER=nuxeo
# Wed, 28 Mar 2018 03:05:35 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 28 Mar 2018 03:05:35 GMT
ARG NUXEO_VERSION=7.10
# Wed, 28 Mar 2018 03:05:35 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip
# Wed, 28 Mar 2018 03:05:36 GMT
ARG NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2
# Wed, 28 Mar 2018 03:05:36 GMT
ENV LAUNCHER_DEBUG=-Djvmcheck=nofail
# Wed, 28 Mar 2018 03:05:37 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 28 Mar 2018 03:06:11 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Wed, 28 Mar 2018 03:06:18 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Wed, 28 Mar 2018 03:06:19 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-7.10/nuxeo-cap-7.10-tomcat.zip NUXEO_MD5=de2084b1a6fab4b1c8fb769903b044f2 NUXEO_VERSION=7.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Wed, 28 Mar 2018 03:06:19 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Mar 2018 03:06:20 GMT
WORKDIR /opt/nuxeo/server
# Wed, 28 Mar 2018 03:06:20 GMT
COPY file:485ff0a6674b97f711e5be4a1ec900fc1002c363c00770d8b1c5809a76ccfc32 in / 
# Wed, 28 Mar 2018 03:06:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Mar 2018 03:06:21 GMT
EXPOSE 8080/tcp
# Wed, 28 Mar 2018 03:06:21 GMT
EXPOSE 8787/tcp
# Wed, 28 Mar 2018 03:06:21 GMT
CMD ["nuxeoctl" "console"]
# Wed, 28 Mar 2018 03:06:22 GMT
USER [1000]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ad3b24382b8d524ba08be997a8f95f66ca3939719530a4d56aae5e07bb90be`  
		Last Modified: Tue, 27 Mar 2018 21:49:48 GMT  
		Size: 173.3 MB (173257049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776df9bf9f1b917b5274bcadb090db5a8e1218b8701fd53582e69d3df360115c`  
		Last Modified: Tue, 27 Mar 2018 21:49:13 GMT  
		Size: 272.1 KB (272072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24b395e14c93d02daf1f66d28807d3e26f9c17db662f2acf7f62ecc0dd29fa8`  
		Last Modified: Wed, 28 Mar 2018 04:06:23 GMT  
		Size: 253.4 MB (253378759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2c06016be247119d87e1682afd47554b9f5242a6bf290654c2ca6daf3a19008`  
		Last Modified: Wed, 28 Mar 2018 04:05:27 GMT  
		Size: 4.4 KB (4409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f09a41e02bc8456c068e195011992b920c26cb44a50ded7d0e7b3788b9202123`  
		Last Modified: Wed, 28 Mar 2018 04:05:48 GMT  
		Size: 280.5 MB (280457928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7249450976341cbeab28074a4606ac0161c558e7786bde82cb056fe5cbc1f333`  
		Last Modified: Wed, 28 Mar 2018 04:05:48 GMT  
		Size: 280.5 MB (280459891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f8b11f771ae6e5103f5c2f216a398603a200c9e61502c00f5cc4aff636ac36`  
		Last Modified: Wed, 28 Mar 2018 04:05:27 GMT  
		Size: 250.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0265699ac1e05f7800f81e3368efecf8bab5738c4ace4eadba2d6e7b2182781c`  
		Last Modified: Wed, 28 Mar 2018 04:05:27 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS-2016`

```console
$ docker pull nuxeo@sha256:fbef33deaa57ac7256506a18686272fb67b5a44f761258329c1ec84c05b17581
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:LTS-2016` - linux; amd64

```console
$ docker pull nuxeo@sha256:d66deb21a7438b22ea19434666c2b89fdbcf9e919c4c917ce93b7288e8b58b94
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.0 GB (1027592430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b696141205e3a41b61c32fc817ae5c85822a51d8dde8c06e22757577513f892b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 27 Mar 2018 20:24:28 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 27 Mar 2018 20:24:29 GMT
ENV JAVA_VERSION=8u162
# Tue, 27 Mar 2018 20:24:29 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 27 Mar 2018 20:24:29 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 27 Mar 2018 20:25:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 27 Mar 2018 20:25:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 28 Mar 2018 03:04:14 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 28 Mar 2018 03:26:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice  && rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 03:26:51 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Wed, 28 Mar 2018 03:26:52 GMT
ENV NUXEO_USER=nuxeo
# Wed, 28 Mar 2018 03:26:52 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 28 Mar 2018 03:26:52 GMT
ARG NUXEO_VERSION=8.10
# Wed, 28 Mar 2018 03:26:52 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip
# Wed, 28 Mar 2018 03:26:53 GMT
ARG NUXEO_MD5=29e67a19bba54099093b51d892926be1
# Wed, 28 Mar 2018 03:26:53 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 28 Mar 2018 03:27:29 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh
# Wed, 28 Mar 2018 03:27:36 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME
# Wed, 28 Mar 2018 03:27:37 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-8.10/nuxeo-server-8.10-tomcat.zip NUXEO_MD5=29e67a19bba54099093b51d892926be1 NUXEO_VERSION=8.10
RUN mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Wed, 28 Mar 2018 03:27:38 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Mar 2018 03:27:38 GMT
WORKDIR /opt/nuxeo/server
# Wed, 28 Mar 2018 03:27:38 GMT
COPY file:485ff0a6674b97f711e5be4a1ec900fc1002c363c00770d8b1c5809a76ccfc32 in / 
# Wed, 28 Mar 2018 03:27:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Mar 2018 03:27:39 GMT
EXPOSE 8080/tcp
# Wed, 28 Mar 2018 03:27:39 GMT
EXPOSE 8787/tcp
# Wed, 28 Mar 2018 03:27:39 GMT
CMD ["nuxeoctl" "console"]
# Wed, 28 Mar 2018 03:27:39 GMT
USER [1000]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ad3b24382b8d524ba08be997a8f95f66ca3939719530a4d56aae5e07bb90be`  
		Last Modified: Tue, 27 Mar 2018 21:49:48 GMT  
		Size: 173.3 MB (173257049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776df9bf9f1b917b5274bcadb090db5a8e1218b8701fd53582e69d3df360115c`  
		Last Modified: Tue, 27 Mar 2018 21:49:13 GMT  
		Size: 272.1 KB (272072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85af4ce72de662edab5ab89b0f4a913175e11672ce5d13b078b645df3d626b45`  
		Last Modified: Wed, 28 Mar 2018 04:20:13 GMT  
		Size: 253.4 MB (253379385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93a9f776fb2f1f6613474fc97b5b022a5eaf2c8d781dc41205e8dd45de11eb4e`  
		Last Modified: Wed, 28 Mar 2018 04:19:17 GMT  
		Size: 4.4 KB (4407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c67d393dbfba62a3524e4f02d35d7b39e09bb2f1308e99ab0ac4f4814f687e99`  
		Last Modified: Wed, 28 Mar 2018 04:19:38 GMT  
		Size: 269.6 MB (269622106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fe250a3be86dd0d117daaf0d56d974e36aca66ae6bfe1fb0998785fe15b9d97`  
		Last Modified: Wed, 28 Mar 2018 04:19:40 GMT  
		Size: 269.6 MB (269624386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fb0ae3803410e6f281e94808709ae3a283d5ab29450e01a4f3af5a3215fe513`  
		Last Modified: Wed, 28 Mar 2018 04:19:17 GMT  
		Size: 251.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77336af2aa5e56960c6bafff64508370773cd7850e6459c522f1361af51ae400`  
		Last Modified: Wed, 28 Mar 2018 04:19:18 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `nuxeo:LTS-2017`

```console
$ docker pull nuxeo@sha256:711a922f688a1859e84c51f15c02d70710e7cac22b399a7e3857bea85eba3995
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `nuxeo:LTS-2017` - linux; amd64

```console
$ docker pull nuxeo@sha256:cb2db58398550b43cb82c9de4fd3e59a992ddeebdb10642730ce462bb7b53100
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.3 GB (1258665560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6196fbb6c6da8223cf198508d8e6d6922f434226f047f1bca127f0acae49cf41`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["nuxeoctl","console"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 10:50:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzip2 		unzip 		xz-utils 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 10:50:22 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 10:50:23 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 14 Mar 2018 10:50:24 GMT
RUN ln -svT "/usr/lib/jvm/java-8-openjdk-$(dpkg --print-architecture)" /docker-java-home
# Tue, 27 Mar 2018 20:24:28 GMT
ENV JAVA_HOME=/docker-java-home
# Tue, 27 Mar 2018 20:24:29 GMT
ENV JAVA_VERSION=8u162
# Tue, 27 Mar 2018 20:24:29 GMT
ENV JAVA_DEBIAN_VERSION=8u162-b12-1~deb9u1
# Tue, 27 Mar 2018 20:24:29 GMT
ENV CA_CERTIFICATES_JAVA_VERSION=20170531+nmu1
# Tue, 27 Mar 2018 20:25:50 GMT
RUN set -ex; 		if [ ! -d /usr/share/man/man1 ]; then 		mkdir -p /usr/share/man/man1; 	fi; 		apt-get update; 	apt-get install -y 		openjdk-8-jdk="$JAVA_DEBIAN_VERSION" 		ca-certificates-java="$CA_CERTIFICATES_JAVA_VERSION" 	; 	rm -rf /var/lib/apt/lists/*; 		[ "$(readlink -f "$JAVA_HOME")" = "$(docker-java-home)" ]; 		update-alternatives --get-selections | awk -v home="$(readlink -f "$JAVA_HOME")" 'index($3, home) == 1 { $2 = "manual"; print | "update-alternatives --set-selections" }'; 	update-alternatives --query java | grep -q 'Status: manual'
# Tue, 27 Mar 2018 20:25:52 GMT
RUN /var/lib/dpkg/info/ca-certificates-java.postinst configure
# Wed, 28 Mar 2018 03:04:14 GMT
MAINTAINER Nuxeo <packagers@nuxeo.com>
# Wed, 28 Mar 2018 03:26:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends     perl     locales     pwgen     imagemagick     ffmpeg2theora     ufraw     poppler-utils     libwpd-tools     exiftool     ghostscript     libreoffice  && rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 03:26:51 GMT
RUN find / -perm +6000 -type f -exec chmod a-s {} \; || true
# Wed, 28 Mar 2018 03:26:52 GMT
ENV NUXEO_USER=nuxeo
# Wed, 28 Mar 2018 03:26:52 GMT
ENV NUXEO_HOME=/opt/nuxeo/server
# Wed, 28 Mar 2018 03:42:21 GMT
ARG NUXEO_VERSION=9.10
# Wed, 28 Mar 2018 03:42:21 GMT
ARG NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip
# Wed, 28 Mar 2018 03:42:21 GMT
ARG NUXEO_MD5=327d23bbd5558565694027b11c0dd82a
# Wed, 28 Mar 2018 03:42:23 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN useradd -m -d /home/$NUXEO_USER -u 1000 -s /bin/bash $NUXEO_USER
# Wed, 28 Mar 2018 03:43:05 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN curl -fsSL "${NUXEO_DIST_URL}" -o /tmp/nuxeo-distribution-tomcat.zip     && if [ $NUXEO_VERSION != "master" ]; then echo "$NUXEO_MD5 /tmp/nuxeo-distribution-tomcat.zip" | md5sum -c -; fi     && mkdir -p /tmp/nuxeo-distribution $(dirname $NUXEO_HOME)     && unzip -q -d /tmp/nuxeo-distribution /tmp/nuxeo-distribution-tomcat.zip     && DISTDIR=$(/bin/ls /tmp/nuxeo-distribution | head -n 1)     && mv /tmp/nuxeo-distribution/$DISTDIR $NUXEO_HOME     && sed -i -e "s/^org.nuxeo.distribution.package.*/org.nuxeo.distribution.package=docker/" $NUXEO_HOME/templates/common/config/distribution.properties     && rm -rf /tmp/nuxeo-distribution*     && chmod +x $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && chmod g+rwX $NUXEO_HOME/bin/*ctl $NUXEO_HOME/bin/*.sh     && $NUXEO_HOME/bin/nuxeoctl mp-init
# Wed, 28 Mar 2018 03:43:05 GMT
COPY dir:6ff2a7cd59ae46215c04b0ef5347f96b1b3912245284bfcfc0080b9d688f08f0 in /opt/nuxeo/server/templates/docker 
# Wed, 28 Mar 2018 03:43:06 GMT
COPY file:4bef2f1f6b4ee418c784459e2fef01d05a75976842dfa0d5708e86cff319a87c in /etc/nuxeo/nuxeo.conf.template 
# Wed, 28 Mar 2018 03:43:06 GMT
ENV NUXEO_CONF=/etc/nuxeo/nuxeo.conf
# Wed, 28 Mar 2018 03:43:15 GMT
# ARGS: NUXEO_DIST_URL=http://community.nuxeo.com/static/releases/nuxeo-9.10/nuxeo-server-9.10-tomcat.zip NUXEO_MD5=327d23bbd5558565694027b11c0dd82a NUXEO_VERSION=9.10
RUN chown -R 1000:0 $NUXEO_HOME && chmod -R g+rwX $NUXEO_HOME     && chown -R 1000:0 /etc/nuxeo && chmod g+rwX /etc/nuxeo && rm -f $NUXEO_HOME/bin/nuxeo.conf     && mkdir -p /var/lib/nuxeo/data     && chown -R 1000:0 /var/lib/nuxeo/data && chmod -R g+rwX /var/lib/nuxeo/data     && mkdir -p /var/log/nuxeo     && chown -R 1000:0 /var/log/nuxeo && chmod -R g+rwX /var/log/nuxeo     && mkdir -p /var/run/nuxeo     && chown -R 1000:0 /var/run/nuxeo && chmod -R g+rwX /var/run/nuxeo     && mkdir -p /docker-entrypoint-initnuxeo.d     && chown -R 1000:0 /docker-entrypoint-initnuxeo.d && chmod -R g+rwX /docker-entrypoint-initnuxeo.d
# Wed, 28 Mar 2018 03:43:15 GMT
ENV PATH=/opt/nuxeo/server/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Mar 2018 03:43:15 GMT
WORKDIR /opt/nuxeo/server
# Wed, 28 Mar 2018 03:43:16 GMT
COPY file:5057d5491002404db3522403ba90b8ddf8a263804907b8458cb34d92c265678b in / 
# Wed, 28 Mar 2018 03:43:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 28 Mar 2018 03:43:16 GMT
EXPOSE 8080/tcp
# Wed, 28 Mar 2018 03:43:16 GMT
EXPOSE 8787/tcp
# Wed, 28 Mar 2018 03:43:16 GMT
CMD ["nuxeoctl" "console"]
# Wed, 28 Mar 2018 03:43:17 GMT
USER [1000]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bcc3741ab1482834b5abfa57c8bfe63e5375639e204249c938c93911ddd0bfc`  
		Last Modified: Wed, 14 Mar 2018 12:45:46 GMT  
		Size: 852.4 KB (852384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421d624d778db5daa314016821187843c7f159cf08964f0ac0d4d8e0c35bf485`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26ad58237506b8fe6e1491f9aed7aba2672afa561e19af378379e984ace8e645`  
		Last Modified: Wed, 14 Mar 2018 12:45:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88ad3b24382b8d524ba08be997a8f95f66ca3939719530a4d56aae5e07bb90be`  
		Last Modified: Tue, 27 Mar 2018 21:49:48 GMT  
		Size: 173.3 MB (173257049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:776df9bf9f1b917b5274bcadb090db5a8e1218b8701fd53582e69d3df360115c`  
		Last Modified: Tue, 27 Mar 2018 21:49:13 GMT  
		Size: 272.1 KB (272072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85af4ce72de662edab5ab89b0f4a913175e11672ce5d13b078b645df3d626b45`  
		Last Modified: Wed, 28 Mar 2018 04:20:13 GMT  
		Size: 253.4 MB (253379385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31c2fddbdfdfaee88d67b66e11b51e517c7173b01562299c7bd8a38f9328c97b`  
		Last Modified: Wed, 28 Mar 2018 04:38:58 GMT  
		Size: 4.4 KB (4408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcf2ac09701eee14e6ede8a5d179de2d73ab10948be972f20b81c8a6208b7031`  
		Last Modified: Wed, 28 Mar 2018 04:39:53 GMT  
		Size: 385.2 MB (385158405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46271daca3f2d062f4a9fd3cc71de6dbdbea2e6a9019bd1b73b157db75e17749`  
		Last Modified: Wed, 28 Mar 2018 04:38:56 GMT  
		Size: 606.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82170f9abae9c2954164f0544015bac52e8c276d67b5eda475cf22d3a4aad294`  
		Last Modified: Wed, 28 Mar 2018 04:38:56 GMT  
		Size: 1.0 KB (1014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080d557a111f488b083e4a2413d2a676d3ea931fb40e0fb3bde0ca7fe313b6d4`  
		Last Modified: Wed, 28 Mar 2018 04:39:22 GMT  
		Size: 385.2 MB (385160351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee1076e9620d4da05ef4ddb12f63aa484dcdfa6b66cb387001cc08047d7ee0c2`  
		Last Modified: Wed, 28 Mar 2018 04:38:56 GMT  
		Size: 927.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
