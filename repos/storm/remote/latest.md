## `storm:latest`

```console
$ docker pull storm@sha256:748bf4e74ac289ccb6e3b0caf66149b264f4c8bf12f69a8c1eeba8cbe1d44114
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `storm:latest` - linux; amd64

```console
$ docker pull storm@sha256:cd297de7e6a52b74d76255734322e3726dc63dc31d7e1d0e2bda89745dc9cdda
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.1 MB (238138883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a6cc1b02261a6b8265bfc641b0b82609a8ae63a8ec513fb6ae11ab0d941630b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:52 GMT
ADD file:2a1fc9351afe35698918545b2d466d9805c2e8afcec52f916785ee65bbafeced in / 
# Wed, 30 Jan 2019 22:19:52 GMT
CMD ["/bin/sh"]
# Tue, 05 Feb 2019 20:39:38 GMT
ENV LANG=C.UTF-8
# Tue, 05 Feb 2019 20:39:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Tue, 05 Feb 2019 20:39:59 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_VERSION=8u191
# Tue, 05 Feb 2019 20:39:59 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Tue, 05 Feb 2019 20:40:03 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Tue, 05 Feb 2019 22:25:49 GMT
RUN apk add --no-cache     bash     python     su-exec
# Tue, 05 Feb 2019 22:25:49 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Tue, 05 Feb 2019 22:25:50 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Tue, 05 Feb 2019 22:25:50 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Tue, 05 Feb 2019 22:26:18 GMT
ARG DISTRO_NAME=apache-storm-1.2.2
# Tue, 05 Feb 2019 22:26:31 GMT
# ARGS: DISTRO_NAME=apache-storm-1.2.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Tue, 05 Feb 2019 22:26:32 GMT
WORKDIR /apache-storm-1.2.2
# Tue, 05 Feb 2019 22:26:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.2.2/bin
# Tue, 05 Feb 2019 22:26:32 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Tue, 05 Feb 2019 22:26:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:6c40cc604d8e4c121adcb6b0bfe8bb038815c350980090e74aa5a6423f8f82c0`  
		Last Modified: Wed, 30 Jan 2019 22:21:08 GMT  
		Size: 2.8 MB (2754728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e78b803852394d2b9aaa3ce93b0f2502b0bf8e063b1fa79734de0fc8ee55ee6e`  
		Last Modified: Tue, 05 Feb 2019 20:45:24 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f41fe1b6eee3555498a7e15b3bf048a7ec274302a92d0c8b34fda111c780fdcf`  
		Last Modified: Tue, 05 Feb 2019 20:45:56 GMT  
		Size: 54.9 MB (54922733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c6a1b4bd4fd5eaeb07bb0bb2c44cdbdefeff16ab7289e4281238f87bf8df66`  
		Last Modified: Tue, 05 Feb 2019 22:26:42 GMT  
		Size: 11.6 MB (11602078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf3e054741eec4a12920db3cebfe0d9844fc88e2254338ccae64a8692099eb1`  
		Last Modified: Tue, 05 Feb 2019 22:26:39 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11e0946dd11d346648dedc7654d189dc3eda15dd96f08c29ddd856459788dba3`  
		Last Modified: Tue, 05 Feb 2019 22:27:23 GMT  
		Size: 168.9 MB (168857399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2741c13479a7f95a9b1107bd4d6dd81672078d2719db9196856e93797752665`  
		Last Modified: Tue, 05 Feb 2019 22:27:09 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:latest` - linux; arm variant v6

```console
$ docker pull storm@sha256:dd61f4bff91decd3d598cac739f623fbc72f15d45814c8b905a5d1d2c9c06cf8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.8 MB (234752401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04a592b6e7c7a4affed634e7082066694e60c7bfc5215b99337f2efcb5dfabb3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:54:13 GMT
ENV LANG=C.UTF-8
# Fri, 21 Dec 2018 09:54:14 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 21 Dec 2018 09:54:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 21 Dec 2018 09:54:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 11 Jan 2019 08:52:43 GMT
ENV JAVA_VERSION=8u191
# Fri, 11 Jan 2019 08:52:44 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 11 Jan 2019 08:52:49 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 11 Jan 2019 09:49:13 GMT
RUN apk add --no-cache     bash     python     su-exec
# Fri, 11 Jan 2019 09:49:14 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Fri, 11 Jan 2019 09:49:15 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Fri, 11 Jan 2019 09:49:16 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Fri, 11 Jan 2019 09:50:52 GMT
ARG DISTRO_NAME=apache-storm-1.2.2
# Fri, 11 Jan 2019 09:51:17 GMT
# ARGS: DISTRO_NAME=apache-storm-1.2.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 11 Jan 2019 09:51:18 GMT
WORKDIR /apache-storm-1.2.2
# Fri, 11 Jan 2019 09:51:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.2.2/bin
# Fri, 11 Jan 2019 09:51:19 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Fri, 11 Jan 2019 09:51:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db946754b322adc3ac60fe5714a9c65ff7c92700903efa2f530018cbf95e2746`  
		Last Modified: Fri, 21 Dec 2018 09:55:28 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b747ae367a283db1307b30d3b9264cb69c982ab55c9ca7a7671811919ac10ea5`  
		Last Modified: Fri, 11 Jan 2019 08:53:50 GMT  
		Size: 52.3 MB (52326802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:854ea4df795cf13008885e59e64465378f5f49e99c60b356e025de862be6c2d1`  
		Last Modified: Fri, 11 Jan 2019 09:51:36 GMT  
		Size: 11.4 MB (11423345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2239fe2e6f5317c60ebaff7bc1c3f92a2411440e7113c4555a20a6d16c61a0`  
		Last Modified: Fri, 11 Jan 2019 09:51:31 GMT  
		Size: 1.4 KB (1354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2350fbbbb610b481625380bbcd9c54b8faba0ddc77a54d9ec5a1d8c3f01c0dcf`  
		Last Modified: Fri, 11 Jan 2019 09:52:42 GMT  
		Size: 168.9 MB (168854288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a420982e724d484c0ab979d8ebdb6bc6b3cb38684f548c544b5d8061240020e`  
		Last Modified: Fri, 11 Jan 2019 09:52:18 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:latest` - linux; arm64 variant v8

```console
$ docker pull storm@sha256:b77e12f726a6c9682782aedcb26b0d6d89d6e5a1629a343beeaccea85f36a516
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.0 MB (238019012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75d3c4a52599f65ce3e034b33ef69cf853d5009141b19137e8a0b10ea378623c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Thu, 31 Jan 2019 09:40:55 GMT
ADD file:3c5f57c6644886bbb8164b9aa4cd60e233be7da48b7194a04963a8e7de058e28 in / 
# Thu, 31 Jan 2019 09:40:56 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:40:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 12:20:55 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 12:21:00 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 12:31:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 12:32:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 12:32:04 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 12:32:07 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 12:32:21 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Feb 2019 08:02:48 GMT
RUN apk add --no-cache     bash     python     su-exec
# Thu, 07 Feb 2019 08:02:48 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Thu, 07 Feb 2019 08:02:50 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Thu, 07 Feb 2019 08:02:51 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Thu, 07 Feb 2019 08:04:15 GMT
ARG DISTRO_NAME=apache-storm-1.2.2
# Thu, 07 Feb 2019 08:04:59 GMT
# ARGS: DISTRO_NAME=apache-storm-1.2.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 07 Feb 2019 08:05:00 GMT
WORKDIR /apache-storm-1.2.2
# Thu, 07 Feb 2019 08:05:01 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.2.2/bin
# Thu, 07 Feb 2019 08:05:02 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Thu, 07 Feb 2019 08:05:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:ee02fa18913c824d1d1c9b680f1a43dad343b9d6c086a6bc62e3361c3d3a2d63`  
		Last Modified: Thu, 31 Jan 2019 09:41:23 GMT  
		Size: 2.7 MB (2687895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afafa41235ea57b01b00eba47de1574777073a79c1d592c5709dfcbb3bd51f2a`  
		Last Modified: Thu, 31 Jan 2019 09:41:21 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4dbd37ccf7cb48097dfc245c4c6f892eaf16d2ad47a0478302cf24d0a74911`  
		Last Modified: Wed, 06 Feb 2019 12:42:42 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a4c22261364cc479c308d041f6881688678f61995139006fbd24aa898f98a7f`  
		Last Modified: Wed, 06 Feb 2019 12:45:02 GMT  
		Size: 54.9 MB (54863256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96611c01c861e74167d96df7d22536e145bd765c788667fe11c609c5568db8f`  
		Last Modified: Thu, 07 Feb 2019 08:05:27 GMT  
		Size: 11.6 MB (11609424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e69f7d1572b9396db9bcbb603f47bb274d19f1906403f5f3768c894061480ed`  
		Last Modified: Thu, 07 Feb 2019 08:05:15 GMT  
		Size: 1.3 KB (1294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0e82525a7af5b25579ecb64bdd2760e08fbf2a158fbf4d2c2ff64c16d7bbece`  
		Last Modified: Thu, 07 Feb 2019 08:07:06 GMT  
		Size: 168.9 MB (168856312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:040cbd1a82140c981dfb74275bd3b7de8073d06efc3c358fc7832fe8461138db`  
		Last Modified: Thu, 07 Feb 2019 08:06:41 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:latest` - linux; 386

```console
$ docker pull storm@sha256:a9251c993446e4dc2f363990e688085022051e217bd8822b9704e3f1571d8ef5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.9 MB (238882473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:468cc7ea1a4a58fa4a3171a2056c3388284f3f67115a2dab3e155adfac28c626`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Thu, 31 Jan 2019 11:38:57 GMT
ADD file:738a04760a9f9a1cd919954db42a0da78c644e7024240160c54723bf1dd479e9 in / 
# Thu, 31 Jan 2019 11:38:57 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 11:38:57 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 13:21:09 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 13:21:11 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 13:22:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 13:22:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 13:22:08 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 13:22:08 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 13:22:13 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Feb 2019 06:54:57 GMT
RUN apk add --no-cache     bash     python     su-exec
# Thu, 07 Feb 2019 06:54:57 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Thu, 07 Feb 2019 06:54:58 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Thu, 07 Feb 2019 06:54:58 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Thu, 07 Feb 2019 06:55:33 GMT
ARG DISTRO_NAME=apache-storm-1.2.2
# Thu, 07 Feb 2019 06:55:49 GMT
# ARGS: DISTRO_NAME=apache-storm-1.2.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 07 Feb 2019 06:55:49 GMT
WORKDIR /apache-storm-1.2.2
# Thu, 07 Feb 2019 06:55:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.2.2/bin
# Thu, 07 Feb 2019 06:55:50 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Thu, 07 Feb 2019 06:55:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:bcb4f889a459d231e71d88c93174eec5edef928ab1e2481f8b0074076ee934a6`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 2.7 MB (2749336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4099db9edcf638f20df22a899890483f7c152af59ca7a2de9c3b24c53c509e7`  
		Last Modified: Thu, 31 Jan 2019 11:39:11 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0f3d3b48a17ae1a2bcad376e638afbdf982a8d5949595c2e4a4007f4db3d0c`  
		Last Modified: Wed, 06 Feb 2019 13:42:46 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6f750ad7f5e8d95553682c05697501d8d94a636946715800825169fb5974036`  
		Last Modified: Wed, 06 Feb 2019 13:43:57 GMT  
		Size: 55.6 MB (55551309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8faafd42eecb6cc47848e7e26b43a1af793da220028f1bbed427394c99f06235`  
		Last Modified: Thu, 07 Feb 2019 06:56:02 GMT  
		Size: 11.7 MB (11722946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42896cf2b91f1efbe0f0493b528710f8a9fe153941ea8dde0419de4687e5bc2`  
		Last Modified: Thu, 07 Feb 2019 06:55:57 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f05ba614f009598c57d34570173a3c75a2e242f9d9eb358c2ecd075cc49afe8d`  
		Last Modified: Thu, 07 Feb 2019 06:56:46 GMT  
		Size: 168.9 MB (168856761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f2633b284bf7f45a0b6b1808247b619ce92a502fe1b22e59268f5a6c759c9d5`  
		Last Modified: Thu, 07 Feb 2019 06:56:32 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:latest` - linux; ppc64le

```console
$ docker pull storm@sha256:c8f0c8e61c8dedbf7feec5e04bbdda141f4ea8eb3ec7c6c235eb19c73591d76a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238963064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee8b472c9f3ed626ac8e009997f6666cfadff4af1b1cf95ab6814d8769d00676`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Thu, 31 Jan 2019 09:21:00 GMT
ADD file:22eef5b6e842546e68660322c07723d9794ca0eb45ac3acf95381e2591f455c6 in / 
# Thu, 31 Jan 2019 09:21:01 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 09:21:02 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 11:30:19 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 11:30:24 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 11:32:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 11:32:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 11:32:43 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 11:32:45 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 11:32:56 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 07 Feb 2019 01:13:13 GMT
RUN apk add --no-cache     bash     python     su-exec
# Thu, 07 Feb 2019 01:13:17 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Thu, 07 Feb 2019 01:13:22 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Thu, 07 Feb 2019 01:13:23 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Thu, 07 Feb 2019 01:15:42 GMT
ARG DISTRO_NAME=apache-storm-1.2.2
# Thu, 07 Feb 2019 01:17:08 GMT
# ARGS: DISTRO_NAME=apache-storm-1.2.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 07 Feb 2019 01:17:12 GMT
WORKDIR /apache-storm-1.2.2
# Thu, 07 Feb 2019 01:17:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.2.2/bin
# Thu, 07 Feb 2019 01:17:14 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Thu, 07 Feb 2019 01:17:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:3261f066f954b13c338d7bebabcc22a2a4037bfe4c6989b60595b13ac629445f`  
		Last Modified: Thu, 31 Jan 2019 09:21:21 GMT  
		Size: 2.8 MB (2778665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff5f92c7db4d11f3356e3243a8a330a8eb64fcde5310599933270ad96a2e3dc`  
		Last Modified: Thu, 31 Jan 2019 09:21:22 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ffc70c988f1eca134348f8c977a0a8eca65b127503f8a7d6561fd73acaf47f`  
		Last Modified: Wed, 06 Feb 2019 11:40:41 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf79593b1c96e6feabee87ffa86fac13485dfb07d9c3ee56aa9894c479e939c`  
		Last Modified: Wed, 06 Feb 2019 11:41:49 GMT  
		Size: 55.5 MB (55503724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1823392311531cdae86c79290037da38212788c55d4b68526d875baadb9cb57b`  
		Last Modified: Thu, 07 Feb 2019 01:17:32 GMT  
		Size: 11.8 MB (11821109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a2f2ba4b6cfe3df600560ec3194bc17824e3225e087735df9adf99f449a6c7`  
		Last Modified: Thu, 07 Feb 2019 01:17:29 GMT  
		Size: 1.4 KB (1357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bde56aedc4cbe7a04e0374cac90a35f93a89642d0de98149a40adfb319bfc3a5`  
		Last Modified: Thu, 07 Feb 2019 01:18:34 GMT  
		Size: 168.9 MB (168857377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:080478c88cdf8cae85f9d5d06d09226a7716ad2c16a9bbb32b069b9d35a93446`  
		Last Modified: Thu, 07 Feb 2019 01:18:21 GMT  
		Size: 418.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:latest` - linux; s390x

```console
$ docker pull storm@sha256:c065e7cdfe0dcb166a81512f964a96e97fb61f254c9f9d8f839c470c8cd7a0f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.7 MB (236682251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:655f624c2ac2f13e77652832fbbd2db6f417147c4e1b49f1754bfb4386e56c3c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Thu, 31 Jan 2019 12:41:43 GMT
ADD file:fdc9dcc7d932bb46a3992371288a0f80814bfb29ae8c8f1d860b6aabf0e9f893 in / 
# Thu, 31 Jan 2019 12:41:44 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Thu, 31 Jan 2019 12:41:44 GMT
CMD ["/bin/sh"]
# Wed, 06 Feb 2019 13:20:18 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 13:20:18 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Wed, 06 Feb 2019 13:20:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Wed, 06 Feb 2019 13:20:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 06 Feb 2019 13:20:56 GMT
ENV JAVA_VERSION=8u191
# Wed, 06 Feb 2019 13:20:57 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Wed, 06 Feb 2019 13:20:59 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 06 Feb 2019 18:11:19 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 06 Feb 2019 18:11:19 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Wed, 06 Feb 2019 18:11:20 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Wed, 06 Feb 2019 18:11:20 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 06 Feb 2019 18:11:52 GMT
ARG DISTRO_NAME=apache-storm-1.2.2
# Wed, 06 Feb 2019 18:12:02 GMT
# ARGS: DISTRO_NAME=apache-storm-1.2.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Wed, 06 Feb 2019 18:12:02 GMT
WORKDIR /apache-storm-1.2.2
# Wed, 06 Feb 2019 18:12:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.2.2/bin
# Wed, 06 Feb 2019 18:12:02 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Wed, 06 Feb 2019 18:12:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:11396e2e564eba3ffa05ba6ea52a711025650a7cfe1387d6a59fdd9a90f2e024`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 2.5 MB (2541348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e33c309129e1ab066f8f8e65929ab8246c5ae9ec293c9522c706fa70dfa0a4c6`  
		Last Modified: Thu, 31 Jan 2019 12:42:01 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99d1a7308c276b4bfe36b12f01b7c57f79adfc7eb55e0263fd725e1308d13412`  
		Last Modified: Wed, 06 Feb 2019 13:25:05 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af546122d628f916df18308eef518892c9e8d4560ed0bb582389244f015942d6`  
		Last Modified: Wed, 06 Feb 2019 13:25:42 GMT  
		Size: 53.6 MB (53587740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f383ddc9bb7286a9726f674c03e88956a5c8ea6e6cff1d5230537f9cdd7677`  
		Last Modified: Wed, 06 Feb 2019 18:12:15 GMT  
		Size: 11.7 MB (11694733 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab14b361fad5858951bcda0e467c35a06605c8a2d96914ad9c58134c0e83a23`  
		Last Modified: Wed, 06 Feb 2019 18:12:12 GMT  
		Size: 1.3 KB (1291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f464ca4ad57d34153d1609e4818133a908d78a899996bd6bc3cb753e84c7c26`  
		Last Modified: Wed, 06 Feb 2019 18:12:51 GMT  
		Size: 168.9 MB (168856310 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9f15ac3b7fc63db860e52006caed2a4dfa5068bca20377d545c0277feb2fe1f`  
		Last Modified: Wed, 06 Feb 2019 18:12:40 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
