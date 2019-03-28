<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `storm`

-	[`storm:1.0`](#storm10)
-	[`storm:1.0.6`](#storm106)
-	[`storm:1.1`](#storm11)
-	[`storm:1.1.3`](#storm113)
-	[`storm:1.2`](#storm12)
-	[`storm:1.2.2`](#storm122)
-	[`storm:latest`](#stormlatest)

## `storm:1.0`

```console
$ docker pull storm@sha256:6ea5c73213dd412061d998f5a2679d586ab7d9a2e6794318f8e5fddb61e759bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `storm:1.0` - linux; amd64

```console
$ docker pull storm@sha256:9d3891ce3778cf5eee21ea46b53799eed75fd063a78434dfcb075302e6235671
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.6 MB (262585397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:787b9d4f54be8eb07402d47e80b1744c91fd65e2de7229d8bdc0f1db0c9b1625`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 02:13:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Mar 2019 23:29:04 GMT
ENV JAVA_VERSION=8u201
# Wed, 27 Mar 2019 23:29:05 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Wed, 27 Mar 2019 23:29:09 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Mar 2019 23:29:10 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 00:33:07 GMT
RUN apk add --no-cache     bash     python     su-exec
# Thu, 28 Mar 2019 00:33:07 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Thu, 28 Mar 2019 00:33:09 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Thu, 28 Mar 2019 00:33:09 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Thu, 28 Mar 2019 00:33:10 GMT
ARG DISTRO_NAME=apache-storm-1.0.6
# Thu, 28 Mar 2019 00:33:30 GMT
# ARGS: DISTRO_NAME=apache-storm-1.0.6 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 28 Mar 2019 00:33:30 GMT
WORKDIR /apache-storm-1.0.6
# Thu, 28 Mar 2019 00:33:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.0.6/bin
# Thu, 28 Mar 2019 00:33:30 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Thu, 28 Mar 2019 00:33:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866c822999cc5862e60f784434873bd291ef9a7ac6e9199a5d1d19eea22fe17`  
		Last Modified: Fri, 08 Mar 2019 02:15:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf419f3f41ff266b1903731d3ff085a6855171b7fd823a93d15cd052dc73a0ea`  
		Last Modified: Wed, 27 Mar 2019 23:47:37 GMT  
		Size: 52.7 MB (52739115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88430b15d43fccea92a728c80080963cf49cb06c31f196900ecbe56e0a85c007`  
		Last Modified: Wed, 27 Mar 2019 23:47:30 GMT  
		Size: 2.2 MB (2221565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3c7edb5dcadb6449ea542dd0a320f101b6656777a7ecbe4ca74b7e4c37086e`  
		Last Modified: Thu, 28 Mar 2019 00:34:22 GMT  
		Size: 11.6 MB (11602055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c98aa9a0a672aea95cbf4be1c2bbf766057b2f283180cb19c770a9fdc8a6320e`  
		Last Modified: Thu, 28 Mar 2019 00:34:19 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a4d18045e19676267ac6e4bd43782f684b7fb01d8741cb0e034b2a888e1d3aa`  
		Last Modified: Thu, 28 Mar 2019 00:34:34 GMT  
		Size: 193.3 MB (193265981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce13f6025d293be7bfa94e370470397ee5977631f539b797eacf0d5aafc756ae`  
		Last Modified: Thu, 28 Mar 2019 00:34:19 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.0` - linux; arm variant v6

```console
$ docker pull storm@sha256:db12346ff999933887a740798b7607d25d0857abd3c6773a49e7c01fa71cbd16
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.5 MB (259530833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72c5196f6107fca91d49dc780a5c6842c277238e59637d6c96fe1ffe9036d68f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:39:53 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:39:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:40:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:40:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 04:40:08 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 04:40:08 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 04:40:13 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 06:36:47 GMT
RUN apk add --no-cache     bash     python     su-exec
# Fri, 08 Mar 2019 06:36:48 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Fri, 08 Mar 2019 06:36:49 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Fri, 08 Mar 2019 06:36:50 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Fri, 08 Mar 2019 06:36:50 GMT
ARG DISTRO_NAME=apache-storm-1.0.6
# Fri, 08 Mar 2019 06:38:59 GMT
# ARGS: DISTRO_NAME=apache-storm-1.0.6 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 08 Mar 2019 06:39:00 GMT
WORKDIR /apache-storm-1.0.6
# Fri, 08 Mar 2019 06:39:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.0.6/bin
# Fri, 08 Mar 2019 06:39:01 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Fri, 08 Mar 2019 06:39:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb8e265594b5112bd474ac92c9c83497fc535a27624c2798c8817a01b28328c`  
		Last Modified: Fri, 08 Mar 2019 04:41:11 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f437760c09bd73230093ad3dd719c2d7b0e4b013869d13c73129fcb1e70e1e8a`  
		Last Modified: Fri, 08 Mar 2019 04:41:46 GMT  
		Size: 52.3 MB (52316587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9733c33ff678048dcc5a1ef48ff735977526d4f222af1dfc6f222e18633a0e4`  
		Last Modified: Fri, 08 Mar 2019 06:42:24 GMT  
		Size: 11.4 MB (11405858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613f79394ba14fae9bb858adb3cec885e3794710d9f03856665f774273b0b965`  
		Last Modified: Fri, 08 Mar 2019 06:42:19 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780bbc730996a7f8f973280459bbf46f0cbdddcfcc56516a8e29f288d20fd4e0`  
		Last Modified: Fri, 08 Mar 2019 06:42:46 GMT  
		Size: 193.3 MB (193265695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b71c36a28ae8ff8252643f33566169a4644d0cdd3829b8e1de6e0f5d287b08`  
		Last Modified: Fri, 08 Mar 2019 06:42:19 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.0` - linux; arm64 variant v8

```console
$ docker pull storm@sha256:d6652d14859a89b6dcfe1ac0d49d8ac96c8d7a7471256053841087697308e86d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.4 MB (262427438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b4b59a3ad79be1373185012f47f196a7ebab2cb9bea38eb023c5f80cf6c8076`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 09:49:55 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 09:49:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 09:50:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 09:50:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 09:50:49 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 09:50:50 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 09:51:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 13:23:37 GMT
RUN apk add --no-cache     bash     python     su-exec
# Fri, 08 Mar 2019 13:23:38 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Fri, 08 Mar 2019 13:23:41 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Fri, 08 Mar 2019 13:23:42 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Fri, 08 Mar 2019 13:23:43 GMT
ARG DISTRO_NAME=apache-storm-1.0.6
# Fri, 08 Mar 2019 13:24:27 GMT
# ARGS: DISTRO_NAME=apache-storm-1.0.6 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 08 Mar 2019 13:24:27 GMT
WORKDIR /apache-storm-1.0.6
# Fri, 08 Mar 2019 13:24:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.0.6/bin
# Fri, 08 Mar 2019 13:24:29 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Fri, 08 Mar 2019 13:24:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dc35c571266c194f6068f0540d063943a44ec79726311c42950083e6ab2460`  
		Last Modified: Fri, 08 Mar 2019 09:55:35 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a0e92b48a3a7e439bc2c9a12c51191b28bfcf8bf3cd4bed485084963934e9f2`  
		Last Modified: Fri, 08 Mar 2019 09:57:49 GMT  
		Size: 54.9 MB (54863172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ceaee7073925adaa2f92b644ef4906b937f41b88c774638fd345b82a94dd22`  
		Last Modified: Fri, 08 Mar 2019 13:26:17 GMT  
		Size: 11.6 MB (11609443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a301b4d6bf05245690fb9fd1425b38d6cb293f56ac146b9b31bbe94d9e9161`  
		Last Modified: Fri, 08 Mar 2019 13:26:09 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3014c538b5b1d9978ccdcf0e6b6b7871cd473adf3c102dd55b11a29990ed700f`  
		Last Modified: Fri, 08 Mar 2019 13:26:38 GMT  
		Size: 193.3 MB (193264930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f412e180e80902a745ad8ef26873d6317a904bf93e8964762b9558cc10048225`  
		Last Modified: Fri, 08 Mar 2019 13:26:09 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.0` - linux; 386

```console
$ docker pull storm@sha256:98d61fabb457ce822e7e7e801660743ae8539673fad1b1def36148018974c093
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.3 MB (263310261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74de6a6827e33da53737f7bf48b970ab4224ae60696c6d8c30251cf2299eb72c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:52:02 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 06:52:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 06:52:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 06:52:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 01:00:58 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 01:00:58 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 01:01:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 01:01:03 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 01:21:20 GMT
RUN apk add --no-cache     bash     python     su-exec
# Thu, 28 Mar 2019 01:21:20 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Thu, 28 Mar 2019 01:21:21 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Thu, 28 Mar 2019 01:21:21 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Thu, 28 Mar 2019 01:21:21 GMT
ARG DISTRO_NAME=apache-storm-1.0.6
# Thu, 28 Mar 2019 01:21:48 GMT
# ARGS: DISTRO_NAME=apache-storm-1.0.6 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 28 Mar 2019 01:21:48 GMT
WORKDIR /apache-storm-1.0.6
# Thu, 28 Mar 2019 01:21:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.0.6/bin
# Thu, 28 Mar 2019 01:21:49 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Thu, 28 Mar 2019 01:21:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe95f117badec568caa0381ef010c1d9df00d3c0870ebab8187a0017d68c5f8b`  
		Last Modified: Fri, 08 Mar 2019 06:53:37 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9976f4b52d6d29fb39677efd0fb01778ff46cb26cc4d357a67003fdbde4ee910`  
		Last Modified: Thu, 28 Mar 2019 01:18:53 GMT  
		Size: 53.2 MB (53175691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0533fd93d55b543cbcb5f415482cc1aab7b763461c9a22e9e0c41f5a95ec71c9`  
		Last Modified: Thu, 28 Mar 2019 01:18:46 GMT  
		Size: 2.4 MB (2394852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7419c215eaabd055ea7f1295820a8bdb98b38918b4a8beced844980941d855da`  
		Last Modified: Thu, 28 Mar 2019 01:22:49 GMT  
		Size: 11.7 MB (11723138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79ead299483d930f81075c06f17856f4fd0ff69720f8447cd31dab4ebd04566f`  
		Last Modified: Thu, 28 Mar 2019 01:22:44 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a04178a7c80ccc74262baf23a8cb009130ae3fc38818f6ad4a79cd8f626f58`  
		Last Modified: Thu, 28 Mar 2019 01:23:03 GMT  
		Size: 193.3 MB (193265272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f1213e6d7a82847d51d79e2e231ce6f829ce6289989c772852a0a6898b62eb`  
		Last Modified: Thu, 28 Mar 2019 01:22:44 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.0` - linux; ppc64le

```console
$ docker pull storm@sha256:d987f6d730d127ed1964c5a19e2005f24db4e7b09422c9c4d9c2217509727d88
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.4 MB (263371499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12598f57d0c5bece8feafb13124be829ecbe8a304bc5d2163a115d8183ca7d0b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:13:23 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:13:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:14:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:14:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 04:14:06 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 04:14:07 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 04:14:14 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 08:13:09 GMT
RUN apk add --no-cache     bash     python     su-exec
# Fri, 08 Mar 2019 08:13:11 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Fri, 08 Mar 2019 08:13:18 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Fri, 08 Mar 2019 08:13:21 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Fri, 08 Mar 2019 08:13:23 GMT
ARG DISTRO_NAME=apache-storm-1.0.6
# Fri, 08 Mar 2019 08:13:43 GMT
# ARGS: DISTRO_NAME=apache-storm-1.0.6 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 08 Mar 2019 08:13:48 GMT
WORKDIR /apache-storm-1.0.6
# Fri, 08 Mar 2019 08:13:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.0.6/bin
# Fri, 08 Mar 2019 08:13:54 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Fri, 08 Mar 2019 08:13:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b37b96605d1a56e30ef6132daa2faa08064df25ac1042a5b799c96028716bf7`  
		Last Modified: Fri, 08 Mar 2019 04:17:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f9e479942ab40414f57c40400e46690c9e3fa041ee89b911ecc82d3df13ed6`  
		Last Modified: Fri, 08 Mar 2019 04:17:58 GMT  
		Size: 55.5 MB (55503663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd884378ad35bcf5efadca07c05ac3be5fa5e86503299de67c93af1eff8f346`  
		Last Modified: Fri, 08 Mar 2019 08:19:51 GMT  
		Size: 11.8 MB (11821172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a1281012e2e9fe177c0c441b5ac12009f6a4db90dddb43b5bacdfc0f519359`  
		Last Modified: Fri, 08 Mar 2019 08:19:47 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:062e2f34086620fa32552fe85e9088432b00897fc85cb607c6fa0f59b4e5341e`  
		Last Modified: Fri, 08 Mar 2019 08:20:03 GMT  
		Size: 193.3 MB (193266007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d8ff60939925dc152426d7fdd9e6b231993ee0c9e536c884c9746a5641886d`  
		Last Modified: Fri, 08 Mar 2019 08:19:47 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.0` - linux; s390x

```console
$ docker pull storm@sha256:70b1c57fcb87fa9f9230ccd18bf4346df80429d5ee27fb347d196b541c2ff9fd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v1+json`
-	Total Size: **261.1 MB (261090584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `d681f4c18091f787d15d68b995dd78c69071e06bbb2d69e57c1143821ce66bed`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:02:40 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:02:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:02:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:02:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 04:02:57 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 04:02:57 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 04:02:59 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 06:19:52 GMT
RUN apk add --no-cache     bash     python     su-exec
# Fri, 08 Mar 2019 06:19:53 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Fri, 08 Mar 2019 06:19:54 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Fri, 08 Mar 2019 06:19:54 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Fri, 08 Mar 2019 06:19:54 GMT
ARG DISTRO_NAME=apache-storm-1.0.6
# Fri, 08 Mar 2019 06:20:04 GMT
# ARGS: DISTRO_NAME=apache-storm-1.0.6 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 08 Mar 2019 06:20:05 GMT
WORKDIR /apache-storm-1.0.6
# Fri, 08 Mar 2019 06:20:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.0.6/bin
# Fri, 08 Mar 2019 06:20:05 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Fri, 08 Mar 2019 06:20:05 GMT
RUN ["\/bin\/sh","-c","#(nop) ","ENTRYPOINT [\"\/docker-entrypoint.sh\"]"]
```

-	Layers:
	-	`sha256:a3ed95caeb02ffe68cdd9fd84406680ae93d633cb16422d00e8a7c22955b46d4`  
		Last Modified: Sat, 14 Nov 2015 09:09:44 GMT  
		Size: 32.0 B  
		MIME: application/octet-stream
	-	`sha256:2efb459eb01647f297c6415252b335b49f4560544a16770210eed5346d414778`  
		Last Modified: Fri, 08 Mar 2019 06:20:43 GMT  
		Size: 416.0 B  
		MIME: application/octet-stream
	-	`sha256:d36ef95428bb0663d909f76abdd7077fd28e8eb59c455fbbac4db883408a993a`  
		Last Modified: Fri, 08 Mar 2019 06:20:55 GMT  
		Size: 193.3 MB (193264881 bytes)  
		MIME: application/octet-stream
	-	`sha256:58b80ae4463be8e678f499609f440db39f1172b398d0825377b260859f587c63`  
		Last Modified: Fri, 08 Mar 2019 06:20:43 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/octet-stream
	-	`sha256:d22cd3cdf197da095a6aa44d86914497701dc15d4657bc195113237411bea2e2`  
		Last Modified: Fri, 08 Mar 2019 06:20:46 GMT  
		Size: 11.7 MB (11694705 bytes)  
		MIME: application/octet-stream
	-	`sha256:ac265199f8ca9e617cd7b18ea5c6a78f28aa2b82c1b71e28007fed5a24621c49`  
		Last Modified: Fri, 08 Mar 2019 04:04:53 GMT  
		Size: 53.6 MB (53587707 bytes)  
		MIME: application/octet-stream
	-	`sha256:5fc974726c47232f0d4a4664c4fe09841c9a948a3e4a56abfe98770208fcc645`  
		Last Modified: Fri, 08 Mar 2019 04:04:06 GMT  
		Size: 239.0 B  
		MIME: application/octet-stream
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/octet-stream

## `storm:1.0.6`

```console
$ docker pull storm@sha256:6ea5c73213dd412061d998f5a2679d586ab7d9a2e6794318f8e5fddb61e759bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `storm:1.0.6` - linux; amd64

```console
$ docker pull storm@sha256:9d3891ce3778cf5eee21ea46b53799eed75fd063a78434dfcb075302e6235671
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.6 MB (262585397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:787b9d4f54be8eb07402d47e80b1744c91fd65e2de7229d8bdc0f1db0c9b1625`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 02:13:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Mar 2019 23:29:04 GMT
ENV JAVA_VERSION=8u201
# Wed, 27 Mar 2019 23:29:05 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Wed, 27 Mar 2019 23:29:09 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Mar 2019 23:29:10 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 00:33:07 GMT
RUN apk add --no-cache     bash     python     su-exec
# Thu, 28 Mar 2019 00:33:07 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Thu, 28 Mar 2019 00:33:09 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Thu, 28 Mar 2019 00:33:09 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Thu, 28 Mar 2019 00:33:10 GMT
ARG DISTRO_NAME=apache-storm-1.0.6
# Thu, 28 Mar 2019 00:33:30 GMT
# ARGS: DISTRO_NAME=apache-storm-1.0.6 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 28 Mar 2019 00:33:30 GMT
WORKDIR /apache-storm-1.0.6
# Thu, 28 Mar 2019 00:33:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.0.6/bin
# Thu, 28 Mar 2019 00:33:30 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Thu, 28 Mar 2019 00:33:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866c822999cc5862e60f784434873bd291ef9a7ac6e9199a5d1d19eea22fe17`  
		Last Modified: Fri, 08 Mar 2019 02:15:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf419f3f41ff266b1903731d3ff085a6855171b7fd823a93d15cd052dc73a0ea`  
		Last Modified: Wed, 27 Mar 2019 23:47:37 GMT  
		Size: 52.7 MB (52739115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88430b15d43fccea92a728c80080963cf49cb06c31f196900ecbe56e0a85c007`  
		Last Modified: Wed, 27 Mar 2019 23:47:30 GMT  
		Size: 2.2 MB (2221565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3c7edb5dcadb6449ea542dd0a320f101b6656777a7ecbe4ca74b7e4c37086e`  
		Last Modified: Thu, 28 Mar 2019 00:34:22 GMT  
		Size: 11.6 MB (11602055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c98aa9a0a672aea95cbf4be1c2bbf766057b2f283180cb19c770a9fdc8a6320e`  
		Last Modified: Thu, 28 Mar 2019 00:34:19 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a4d18045e19676267ac6e4bd43782f684b7fb01d8741cb0e034b2a888e1d3aa`  
		Last Modified: Thu, 28 Mar 2019 00:34:34 GMT  
		Size: 193.3 MB (193265981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce13f6025d293be7bfa94e370470397ee5977631f539b797eacf0d5aafc756ae`  
		Last Modified: Thu, 28 Mar 2019 00:34:19 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.0.6` - linux; arm variant v6

```console
$ docker pull storm@sha256:db12346ff999933887a740798b7607d25d0857abd3c6773a49e7c01fa71cbd16
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.5 MB (259530833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72c5196f6107fca91d49dc780a5c6842c277238e59637d6c96fe1ffe9036d68f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:39:53 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:39:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:40:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:40:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 04:40:08 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 04:40:08 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 04:40:13 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 06:36:47 GMT
RUN apk add --no-cache     bash     python     su-exec
# Fri, 08 Mar 2019 06:36:48 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Fri, 08 Mar 2019 06:36:49 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Fri, 08 Mar 2019 06:36:50 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Fri, 08 Mar 2019 06:36:50 GMT
ARG DISTRO_NAME=apache-storm-1.0.6
# Fri, 08 Mar 2019 06:38:59 GMT
# ARGS: DISTRO_NAME=apache-storm-1.0.6 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 08 Mar 2019 06:39:00 GMT
WORKDIR /apache-storm-1.0.6
# Fri, 08 Mar 2019 06:39:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.0.6/bin
# Fri, 08 Mar 2019 06:39:01 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Fri, 08 Mar 2019 06:39:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb8e265594b5112bd474ac92c9c83497fc535a27624c2798c8817a01b28328c`  
		Last Modified: Fri, 08 Mar 2019 04:41:11 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f437760c09bd73230093ad3dd719c2d7b0e4b013869d13c73129fcb1e70e1e8a`  
		Last Modified: Fri, 08 Mar 2019 04:41:46 GMT  
		Size: 52.3 MB (52316587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9733c33ff678048dcc5a1ef48ff735977526d4f222af1dfc6f222e18633a0e4`  
		Last Modified: Fri, 08 Mar 2019 06:42:24 GMT  
		Size: 11.4 MB (11405858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613f79394ba14fae9bb858adb3cec885e3794710d9f03856665f774273b0b965`  
		Last Modified: Fri, 08 Mar 2019 06:42:19 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780bbc730996a7f8f973280459bbf46f0cbdddcfcc56516a8e29f288d20fd4e0`  
		Last Modified: Fri, 08 Mar 2019 06:42:46 GMT  
		Size: 193.3 MB (193265695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b71c36a28ae8ff8252643f33566169a4644d0cdd3829b8e1de6e0f5d287b08`  
		Last Modified: Fri, 08 Mar 2019 06:42:19 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.0.6` - linux; arm64 variant v8

```console
$ docker pull storm@sha256:d6652d14859a89b6dcfe1ac0d49d8ac96c8d7a7471256053841087697308e86d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.4 MB (262427438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b4b59a3ad79be1373185012f47f196a7ebab2cb9bea38eb023c5f80cf6c8076`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 09:49:55 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 09:49:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 09:50:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 09:50:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 09:50:49 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 09:50:50 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 09:51:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 13:23:37 GMT
RUN apk add --no-cache     bash     python     su-exec
# Fri, 08 Mar 2019 13:23:38 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Fri, 08 Mar 2019 13:23:41 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Fri, 08 Mar 2019 13:23:42 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Fri, 08 Mar 2019 13:23:43 GMT
ARG DISTRO_NAME=apache-storm-1.0.6
# Fri, 08 Mar 2019 13:24:27 GMT
# ARGS: DISTRO_NAME=apache-storm-1.0.6 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 08 Mar 2019 13:24:27 GMT
WORKDIR /apache-storm-1.0.6
# Fri, 08 Mar 2019 13:24:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.0.6/bin
# Fri, 08 Mar 2019 13:24:29 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Fri, 08 Mar 2019 13:24:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dc35c571266c194f6068f0540d063943a44ec79726311c42950083e6ab2460`  
		Last Modified: Fri, 08 Mar 2019 09:55:35 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a0e92b48a3a7e439bc2c9a12c51191b28bfcf8bf3cd4bed485084963934e9f2`  
		Last Modified: Fri, 08 Mar 2019 09:57:49 GMT  
		Size: 54.9 MB (54863172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ceaee7073925adaa2f92b644ef4906b937f41b88c774638fd345b82a94dd22`  
		Last Modified: Fri, 08 Mar 2019 13:26:17 GMT  
		Size: 11.6 MB (11609443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a301b4d6bf05245690fb9fd1425b38d6cb293f56ac146b9b31bbe94d9e9161`  
		Last Modified: Fri, 08 Mar 2019 13:26:09 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3014c538b5b1d9978ccdcf0e6b6b7871cd473adf3c102dd55b11a29990ed700f`  
		Last Modified: Fri, 08 Mar 2019 13:26:38 GMT  
		Size: 193.3 MB (193264930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f412e180e80902a745ad8ef26873d6317a904bf93e8964762b9558cc10048225`  
		Last Modified: Fri, 08 Mar 2019 13:26:09 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.0.6` - linux; 386

```console
$ docker pull storm@sha256:98d61fabb457ce822e7e7e801660743ae8539673fad1b1def36148018974c093
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.3 MB (263310261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74de6a6827e33da53737f7bf48b970ab4224ae60696c6d8c30251cf2299eb72c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:52:02 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 06:52:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 06:52:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 06:52:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 01:00:58 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 01:00:58 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 01:01:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 01:01:03 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 01:21:20 GMT
RUN apk add --no-cache     bash     python     su-exec
# Thu, 28 Mar 2019 01:21:20 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Thu, 28 Mar 2019 01:21:21 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Thu, 28 Mar 2019 01:21:21 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Thu, 28 Mar 2019 01:21:21 GMT
ARG DISTRO_NAME=apache-storm-1.0.6
# Thu, 28 Mar 2019 01:21:48 GMT
# ARGS: DISTRO_NAME=apache-storm-1.0.6 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 28 Mar 2019 01:21:48 GMT
WORKDIR /apache-storm-1.0.6
# Thu, 28 Mar 2019 01:21:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.0.6/bin
# Thu, 28 Mar 2019 01:21:49 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Thu, 28 Mar 2019 01:21:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe95f117badec568caa0381ef010c1d9df00d3c0870ebab8187a0017d68c5f8b`  
		Last Modified: Fri, 08 Mar 2019 06:53:37 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9976f4b52d6d29fb39677efd0fb01778ff46cb26cc4d357a67003fdbde4ee910`  
		Last Modified: Thu, 28 Mar 2019 01:18:53 GMT  
		Size: 53.2 MB (53175691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0533fd93d55b543cbcb5f415482cc1aab7b763461c9a22e9e0c41f5a95ec71c9`  
		Last Modified: Thu, 28 Mar 2019 01:18:46 GMT  
		Size: 2.4 MB (2394852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7419c215eaabd055ea7f1295820a8bdb98b38918b4a8beced844980941d855da`  
		Last Modified: Thu, 28 Mar 2019 01:22:49 GMT  
		Size: 11.7 MB (11723138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79ead299483d930f81075c06f17856f4fd0ff69720f8447cd31dab4ebd04566f`  
		Last Modified: Thu, 28 Mar 2019 01:22:44 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46a04178a7c80ccc74262baf23a8cb009130ae3fc38818f6ad4a79cd8f626f58`  
		Last Modified: Thu, 28 Mar 2019 01:23:03 GMT  
		Size: 193.3 MB (193265272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f1213e6d7a82847d51d79e2e231ce6f829ce6289989c772852a0a6898b62eb`  
		Last Modified: Thu, 28 Mar 2019 01:22:44 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.0.6` - linux; ppc64le

```console
$ docker pull storm@sha256:d987f6d730d127ed1964c5a19e2005f24db4e7b09422c9c4d9c2217509727d88
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.4 MB (263371499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12598f57d0c5bece8feafb13124be829ecbe8a304bc5d2163a115d8183ca7d0b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:13:23 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:13:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:14:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:14:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 04:14:06 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 04:14:07 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 04:14:14 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 08:13:09 GMT
RUN apk add --no-cache     bash     python     su-exec
# Fri, 08 Mar 2019 08:13:11 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Fri, 08 Mar 2019 08:13:18 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Fri, 08 Mar 2019 08:13:21 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Fri, 08 Mar 2019 08:13:23 GMT
ARG DISTRO_NAME=apache-storm-1.0.6
# Fri, 08 Mar 2019 08:13:43 GMT
# ARGS: DISTRO_NAME=apache-storm-1.0.6 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 08 Mar 2019 08:13:48 GMT
WORKDIR /apache-storm-1.0.6
# Fri, 08 Mar 2019 08:13:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.0.6/bin
# Fri, 08 Mar 2019 08:13:54 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Fri, 08 Mar 2019 08:13:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b37b96605d1a56e30ef6132daa2faa08064df25ac1042a5b799c96028716bf7`  
		Last Modified: Fri, 08 Mar 2019 04:17:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f9e479942ab40414f57c40400e46690c9e3fa041ee89b911ecc82d3df13ed6`  
		Last Modified: Fri, 08 Mar 2019 04:17:58 GMT  
		Size: 55.5 MB (55503663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd884378ad35bcf5efadca07c05ac3be5fa5e86503299de67c93af1eff8f346`  
		Last Modified: Fri, 08 Mar 2019 08:19:51 GMT  
		Size: 11.8 MB (11821172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a1281012e2e9fe177c0c441b5ac12009f6a4db90dddb43b5bacdfc0f519359`  
		Last Modified: Fri, 08 Mar 2019 08:19:47 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:062e2f34086620fa32552fe85e9088432b00897fc85cb607c6fa0f59b4e5341e`  
		Last Modified: Fri, 08 Mar 2019 08:20:03 GMT  
		Size: 193.3 MB (193266007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d8ff60939925dc152426d7fdd9e6b231993ee0c9e536c884c9746a5641886d`  
		Last Modified: Fri, 08 Mar 2019 08:19:47 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.0.6` - linux; s390x

```console
$ docker pull storm@sha256:70b1c57fcb87fa9f9230ccd18bf4346df80429d5ee27fb347d196b541c2ff9fd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v1+json`
-	Total Size: **261.1 MB (261090584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `d681f4c18091f787d15d68b995dd78c69071e06bbb2d69e57c1143821ce66bed`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:02:40 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:02:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:02:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:02:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 04:02:57 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 04:02:57 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 04:02:59 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 06:19:52 GMT
RUN apk add --no-cache     bash     python     su-exec
# Fri, 08 Mar 2019 06:19:53 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Fri, 08 Mar 2019 06:19:54 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Fri, 08 Mar 2019 06:19:54 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Fri, 08 Mar 2019 06:19:54 GMT
ARG DISTRO_NAME=apache-storm-1.0.6
# Fri, 08 Mar 2019 06:20:04 GMT
# ARGS: DISTRO_NAME=apache-storm-1.0.6 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 08 Mar 2019 06:20:05 GMT
WORKDIR /apache-storm-1.0.6
# Fri, 08 Mar 2019 06:20:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.0.6/bin
# Fri, 08 Mar 2019 06:20:05 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Fri, 08 Mar 2019 06:20:05 GMT
RUN ["\/bin\/sh","-c","#(nop) ","ENTRYPOINT [\"\/docker-entrypoint.sh\"]"]
```

-	Layers:
	-	`sha256:a3ed95caeb02ffe68cdd9fd84406680ae93d633cb16422d00e8a7c22955b46d4`  
		Last Modified: Sat, 14 Nov 2015 09:09:44 GMT  
		Size: 32.0 B  
		MIME: application/octet-stream
	-	`sha256:2efb459eb01647f297c6415252b335b49f4560544a16770210eed5346d414778`  
		Last Modified: Fri, 08 Mar 2019 06:20:43 GMT  
		Size: 416.0 B  
		MIME: application/octet-stream
	-	`sha256:d36ef95428bb0663d909f76abdd7077fd28e8eb59c455fbbac4db883408a993a`  
		Last Modified: Fri, 08 Mar 2019 06:20:55 GMT  
		Size: 193.3 MB (193264881 bytes)  
		MIME: application/octet-stream
	-	`sha256:58b80ae4463be8e678f499609f440db39f1172b398d0825377b260859f587c63`  
		Last Modified: Fri, 08 Mar 2019 06:20:43 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/octet-stream
	-	`sha256:d22cd3cdf197da095a6aa44d86914497701dc15d4657bc195113237411bea2e2`  
		Last Modified: Fri, 08 Mar 2019 06:20:46 GMT  
		Size: 11.7 MB (11694705 bytes)  
		MIME: application/octet-stream
	-	`sha256:ac265199f8ca9e617cd7b18ea5c6a78f28aa2b82c1b71e28007fed5a24621c49`  
		Last Modified: Fri, 08 Mar 2019 04:04:53 GMT  
		Size: 53.6 MB (53587707 bytes)  
		MIME: application/octet-stream
	-	`sha256:5fc974726c47232f0d4a4664c4fe09841c9a948a3e4a56abfe98770208fcc645`  
		Last Modified: Fri, 08 Mar 2019 04:04:06 GMT  
		Size: 239.0 B  
		MIME: application/octet-stream
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/octet-stream

## `storm:1.1`

```console
$ docker pull storm@sha256:b76e5416f9c5d48acf2ea15b4d292c2c815b62bff30038bc3fe88b909672540a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `storm:1.1` - linux; amd64

```console
$ docker pull storm@sha256:a97832de8541b03c4ec279f752c174cda1ac98f67836a766186290e9ace29196
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.8 MB (152834657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7401f2a6be28658e39312e3eff2e8849ae63885a08b27fbaeb2bce9d27a46471`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 02:13:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Mar 2019 23:29:04 GMT
ENV JAVA_VERSION=8u201
# Wed, 27 Mar 2019 23:29:05 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Wed, 27 Mar 2019 23:29:09 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Mar 2019 23:29:10 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 00:33:07 GMT
RUN apk add --no-cache     bash     python     su-exec
# Thu, 28 Mar 2019 00:33:07 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Thu, 28 Mar 2019 00:33:09 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Thu, 28 Mar 2019 00:33:09 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Thu, 28 Mar 2019 00:33:33 GMT
ARG DISTRO_NAME=apache-storm-1.1.3
# Thu, 28 Mar 2019 00:33:45 GMT
# ARGS: DISTRO_NAME=apache-storm-1.1.3 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 28 Mar 2019 00:33:46 GMT
WORKDIR /apache-storm-1.1.3
# Thu, 28 Mar 2019 00:33:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.1.3/bin
# Thu, 28 Mar 2019 00:33:46 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Thu, 28 Mar 2019 00:33:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866c822999cc5862e60f784434873bd291ef9a7ac6e9199a5d1d19eea22fe17`  
		Last Modified: Fri, 08 Mar 2019 02:15:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf419f3f41ff266b1903731d3ff085a6855171b7fd823a93d15cd052dc73a0ea`  
		Last Modified: Wed, 27 Mar 2019 23:47:37 GMT  
		Size: 52.7 MB (52739115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88430b15d43fccea92a728c80080963cf49cb06c31f196900ecbe56e0a85c007`  
		Last Modified: Wed, 27 Mar 2019 23:47:30 GMT  
		Size: 2.2 MB (2221565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3c7edb5dcadb6449ea542dd0a320f101b6656777a7ecbe4ca74b7e4c37086e`  
		Last Modified: Thu, 28 Mar 2019 00:34:22 GMT  
		Size: 11.6 MB (11602055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c98aa9a0a672aea95cbf4be1c2bbf766057b2f283180cb19c770a9fdc8a6320e`  
		Last Modified: Thu, 28 Mar 2019 00:34:19 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30bec4261662b225432a59a056294523f7897a3520f63f6b498885e68fb8ef40`  
		Last Modified: Thu, 28 Mar 2019 00:34:44 GMT  
		Size: 83.5 MB (83515239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7185425adfcd06fbe40414a999d213f6d13c4dca4d7d9492ed6666952c640165`  
		Last Modified: Thu, 28 Mar 2019 00:34:38 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.1` - linux; arm variant v6

```console
$ docker pull storm@sha256:7081f0ff94ec7f3eb222be8dd02c1d9385865bd4a37482af71c04e319964ec4c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.8 MB (149779965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fcee4ea2dfc59ddb34a278ad2191d4e35d2e133604253c298a61bd955289015`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:39:53 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:39:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:40:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:40:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 04:40:08 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 04:40:08 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 04:40:13 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 06:36:47 GMT
RUN apk add --no-cache     bash     python     su-exec
# Fri, 08 Mar 2019 06:36:48 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Fri, 08 Mar 2019 06:36:49 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Fri, 08 Mar 2019 06:36:50 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Fri, 08 Mar 2019 06:39:11 GMT
ARG DISTRO_NAME=apache-storm-1.1.3
# Fri, 08 Mar 2019 06:40:05 GMT
# ARGS: DISTRO_NAME=apache-storm-1.1.3 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 08 Mar 2019 06:40:06 GMT
WORKDIR /apache-storm-1.1.3
# Fri, 08 Mar 2019 06:40:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.1.3/bin
# Fri, 08 Mar 2019 06:40:06 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Fri, 08 Mar 2019 06:40:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb8e265594b5112bd474ac92c9c83497fc535a27624c2798c8817a01b28328c`  
		Last Modified: Fri, 08 Mar 2019 04:41:11 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f437760c09bd73230093ad3dd719c2d7b0e4b013869d13c73129fcb1e70e1e8a`  
		Last Modified: Fri, 08 Mar 2019 04:41:46 GMT  
		Size: 52.3 MB (52316587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9733c33ff678048dcc5a1ef48ff735977526d4f222af1dfc6f222e18633a0e4`  
		Last Modified: Fri, 08 Mar 2019 06:42:24 GMT  
		Size: 11.4 MB (11405858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613f79394ba14fae9bb858adb3cec885e3794710d9f03856665f774273b0b965`  
		Last Modified: Fri, 08 Mar 2019 06:42:19 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88008eb6a85414c5585de688d669200a5c158717d3a87633a3e26a2c8715de4f`  
		Last Modified: Fri, 08 Mar 2019 06:43:06 GMT  
		Size: 83.5 MB (83514827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a211d6310e0e3da5ce0187a64dc1d639f420ad942aa2b8fa8da5d55ff5cc294`  
		Last Modified: Fri, 08 Mar 2019 06:42:53 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.1` - linux; arm64 variant v8

```console
$ docker pull storm@sha256:2fbbead5c99ab56ca71e81d195583c83bbd9bf48b2c55a24d67090fb69406fc1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.7 MB (152676628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:407ac3c972f3e6434e20239c6a8250e593993bb79d5a65f7df4feaaa39f91c02`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 09:49:55 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 09:49:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 09:50:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 09:50:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 09:50:49 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 09:50:50 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 09:51:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 13:23:37 GMT
RUN apk add --no-cache     bash     python     su-exec
# Fri, 08 Mar 2019 13:23:38 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Fri, 08 Mar 2019 13:23:41 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Fri, 08 Mar 2019 13:23:42 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Fri, 08 Mar 2019 13:24:34 GMT
ARG DISTRO_NAME=apache-storm-1.1.3
# Fri, 08 Mar 2019 13:24:51 GMT
# ARGS: DISTRO_NAME=apache-storm-1.1.3 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 08 Mar 2019 13:24:52 GMT
WORKDIR /apache-storm-1.1.3
# Fri, 08 Mar 2019 13:24:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.1.3/bin
# Fri, 08 Mar 2019 13:24:59 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Fri, 08 Mar 2019 13:24:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dc35c571266c194f6068f0540d063943a44ec79726311c42950083e6ab2460`  
		Last Modified: Fri, 08 Mar 2019 09:55:35 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a0e92b48a3a7e439bc2c9a12c51191b28bfcf8bf3cd4bed485084963934e9f2`  
		Last Modified: Fri, 08 Mar 2019 09:57:49 GMT  
		Size: 54.9 MB (54863172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ceaee7073925adaa2f92b644ef4906b937f41b88c774638fd345b82a94dd22`  
		Last Modified: Fri, 08 Mar 2019 13:26:17 GMT  
		Size: 11.6 MB (11609443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a301b4d6bf05245690fb9fd1425b38d6cb293f56ac146b9b31bbe94d9e9161`  
		Last Modified: Fri, 08 Mar 2019 13:26:09 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7a8a063f8d26c1871a7745e464a87e9c72d6e412fe8c0a6a322f7d60153adca`  
		Last Modified: Fri, 08 Mar 2019 13:27:02 GMT  
		Size: 83.5 MB (83514121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e376153bd0c4c960d6591aa898da640965f1a7b3d99ff4453436a8c8c1580acc`  
		Last Modified: Fri, 08 Mar 2019 13:26:49 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.1` - linux; 386

```console
$ docker pull storm@sha256:6288ad0089c093c6141edcadbd0c9a243a223d3aa0c4c1335b6f3002a663d0bc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.6 MB (153559394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23fbc36ddff03092a27aa960efa776bb66afda88a7f26a9146864e6567cce2c5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:52:02 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 06:52:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 06:52:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 06:52:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 01:00:58 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 01:00:58 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 01:01:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 01:01:03 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 01:21:20 GMT
RUN apk add --no-cache     bash     python     su-exec
# Thu, 28 Mar 2019 01:21:20 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Thu, 28 Mar 2019 01:21:21 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Thu, 28 Mar 2019 01:21:21 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Thu, 28 Mar 2019 01:21:54 GMT
ARG DISTRO_NAME=apache-storm-1.1.3
# Thu, 28 Mar 2019 01:22:05 GMT
# ARGS: DISTRO_NAME=apache-storm-1.1.3 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 28 Mar 2019 01:22:06 GMT
WORKDIR /apache-storm-1.1.3
# Thu, 28 Mar 2019 01:22:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.1.3/bin
# Thu, 28 Mar 2019 01:22:07 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Thu, 28 Mar 2019 01:22:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe95f117badec568caa0381ef010c1d9df00d3c0870ebab8187a0017d68c5f8b`  
		Last Modified: Fri, 08 Mar 2019 06:53:37 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9976f4b52d6d29fb39677efd0fb01778ff46cb26cc4d357a67003fdbde4ee910`  
		Last Modified: Thu, 28 Mar 2019 01:18:53 GMT  
		Size: 53.2 MB (53175691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0533fd93d55b543cbcb5f415482cc1aab7b763461c9a22e9e0c41f5a95ec71c9`  
		Last Modified: Thu, 28 Mar 2019 01:18:46 GMT  
		Size: 2.4 MB (2394852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7419c215eaabd055ea7f1295820a8bdb98b38918b4a8beced844980941d855da`  
		Last Modified: Thu, 28 Mar 2019 01:22:49 GMT  
		Size: 11.7 MB (11723138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79ead299483d930f81075c06f17856f4fd0ff69720f8447cd31dab4ebd04566f`  
		Last Modified: Thu, 28 Mar 2019 01:22:44 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756aa3ebffa92a37371550b918cf67a9cd95a342ffd1b125fdf341d1f57b28be`  
		Last Modified: Thu, 28 Mar 2019 01:23:15 GMT  
		Size: 83.5 MB (83514405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7ac686341a46d1241d8c98ec3ce8084c4f63fb54b93c0003d24a34961350fc`  
		Last Modified: Thu, 28 Mar 2019 01:23:07 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.1` - linux; ppc64le

```console
$ docker pull storm@sha256:b99191ea41868c245a642c7843a019c36563fa57045f0cbefb4f68d49f6aa177
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.6 MB (153620591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36e1a49d7b62ffc9937a7e5f44d0cff94486ba4073c4c932e96a6a6305856ccd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:13:23 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:13:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:14:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:14:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 04:14:06 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 04:14:07 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 04:14:14 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 08:13:09 GMT
RUN apk add --no-cache     bash     python     su-exec
# Fri, 08 Mar 2019 08:13:11 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Fri, 08 Mar 2019 08:13:18 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Fri, 08 Mar 2019 08:13:21 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Fri, 08 Mar 2019 08:14:12 GMT
ARG DISTRO_NAME=apache-storm-1.1.3
# Fri, 08 Mar 2019 08:14:27 GMT
# ARGS: DISTRO_NAME=apache-storm-1.1.3 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 08 Mar 2019 08:14:31 GMT
WORKDIR /apache-storm-1.1.3
# Fri, 08 Mar 2019 08:14:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.1.3/bin
# Fri, 08 Mar 2019 08:14:36 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Fri, 08 Mar 2019 08:14:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b37b96605d1a56e30ef6132daa2faa08064df25ac1042a5b799c96028716bf7`  
		Last Modified: Fri, 08 Mar 2019 04:17:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f9e479942ab40414f57c40400e46690c9e3fa041ee89b911ecc82d3df13ed6`  
		Last Modified: Fri, 08 Mar 2019 04:17:58 GMT  
		Size: 55.5 MB (55503663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd884378ad35bcf5efadca07c05ac3be5fa5e86503299de67c93af1eff8f346`  
		Last Modified: Fri, 08 Mar 2019 08:19:51 GMT  
		Size: 11.8 MB (11821172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a1281012e2e9fe177c0c441b5ac12009f6a4db90dddb43b5bacdfc0f519359`  
		Last Modified: Fri, 08 Mar 2019 08:19:47 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60cf47a314518e846dbeeb3a17e3ebaa442176dd119f69b122079dc3c28a8761`  
		Last Modified: Fri, 08 Mar 2019 08:20:25 GMT  
		Size: 83.5 MB (83515099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3083415c87cd4d0d83b0994837a5290b0f6d8b8457b07ff688a3aee820fdba37`  
		Last Modified: Fri, 08 Mar 2019 08:20:17 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.1` - linux; s390x

```console
$ docker pull storm@sha256:f68b055387078a8bb3ddaddc68862e484d099545bc8128e378608dba8faa3cec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.3 MB (151339827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72383df58a613c16c2519f4e45d20e6cecfa0afa4f10b13a9f1031740c619930`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:02:40 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:02:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:02:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:02:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 04:02:57 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 04:02:57 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 04:02:59 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 06:19:52 GMT
RUN apk add --no-cache     bash     python     su-exec
# Fri, 08 Mar 2019 06:19:53 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Fri, 08 Mar 2019 06:19:54 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Fri, 08 Mar 2019 06:19:54 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Fri, 08 Mar 2019 06:20:09 GMT
ARG DISTRO_NAME=apache-storm-1.1.3
# Fri, 08 Mar 2019 06:20:15 GMT
# ARGS: DISTRO_NAME=apache-storm-1.1.3 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 08 Mar 2019 06:20:15 GMT
WORKDIR /apache-storm-1.1.3
# Fri, 08 Mar 2019 06:20:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.1.3/bin
# Fri, 08 Mar 2019 06:20:15 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Fri, 08 Mar 2019 06:20:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc974726c47232f0d4a4664c4fe09841c9a948a3e4a56abfe98770208fcc645`  
		Last Modified: Fri, 08 Mar 2019 04:04:06 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac265199f8ca9e617cd7b18ea5c6a78f28aa2b82c1b71e28007fed5a24621c49`  
		Last Modified: Fri, 08 Mar 2019 04:04:53 GMT  
		Size: 53.6 MB (53587707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22cd3cdf197da095a6aa44d86914497701dc15d4657bc195113237411bea2e2`  
		Last Modified: Fri, 08 Mar 2019 06:20:46 GMT  
		Size: 11.7 MB (11694705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b80ae4463be8e678f499609f440db39f1172b398d0825377b260859f587c63`  
		Last Modified: Fri, 08 Mar 2019 06:20:43 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561b33b9829c15330a7095de525ca2516f5573e8e2e86b13e5d609f7f55fc745`  
		Last Modified: Fri, 08 Mar 2019 06:21:07 GMT  
		Size: 83.5 MB (83514156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb167302a09056a2b5dfa80759480ee70f0ef3a7f8e3f3918a6cfe2c1ac328f`  
		Last Modified: Fri, 08 Mar 2019 06:21:01 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:1.1.3`

```console
$ docker pull storm@sha256:b76e5416f9c5d48acf2ea15b4d292c2c815b62bff30038bc3fe88b909672540a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `storm:1.1.3` - linux; amd64

```console
$ docker pull storm@sha256:a97832de8541b03c4ec279f752c174cda1ac98f67836a766186290e9ace29196
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.8 MB (152834657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7401f2a6be28658e39312e3eff2e8849ae63885a08b27fbaeb2bce9d27a46471`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 02:13:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Mar 2019 23:29:04 GMT
ENV JAVA_VERSION=8u201
# Wed, 27 Mar 2019 23:29:05 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Wed, 27 Mar 2019 23:29:09 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Mar 2019 23:29:10 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 00:33:07 GMT
RUN apk add --no-cache     bash     python     su-exec
# Thu, 28 Mar 2019 00:33:07 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Thu, 28 Mar 2019 00:33:09 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Thu, 28 Mar 2019 00:33:09 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Thu, 28 Mar 2019 00:33:33 GMT
ARG DISTRO_NAME=apache-storm-1.1.3
# Thu, 28 Mar 2019 00:33:45 GMT
# ARGS: DISTRO_NAME=apache-storm-1.1.3 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 28 Mar 2019 00:33:46 GMT
WORKDIR /apache-storm-1.1.3
# Thu, 28 Mar 2019 00:33:46 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.1.3/bin
# Thu, 28 Mar 2019 00:33:46 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Thu, 28 Mar 2019 00:33:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866c822999cc5862e60f784434873bd291ef9a7ac6e9199a5d1d19eea22fe17`  
		Last Modified: Fri, 08 Mar 2019 02:15:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf419f3f41ff266b1903731d3ff085a6855171b7fd823a93d15cd052dc73a0ea`  
		Last Modified: Wed, 27 Mar 2019 23:47:37 GMT  
		Size: 52.7 MB (52739115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88430b15d43fccea92a728c80080963cf49cb06c31f196900ecbe56e0a85c007`  
		Last Modified: Wed, 27 Mar 2019 23:47:30 GMT  
		Size: 2.2 MB (2221565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3c7edb5dcadb6449ea542dd0a320f101b6656777a7ecbe4ca74b7e4c37086e`  
		Last Modified: Thu, 28 Mar 2019 00:34:22 GMT  
		Size: 11.6 MB (11602055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c98aa9a0a672aea95cbf4be1c2bbf766057b2f283180cb19c770a9fdc8a6320e`  
		Last Modified: Thu, 28 Mar 2019 00:34:19 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30bec4261662b225432a59a056294523f7897a3520f63f6b498885e68fb8ef40`  
		Last Modified: Thu, 28 Mar 2019 00:34:44 GMT  
		Size: 83.5 MB (83515239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7185425adfcd06fbe40414a999d213f6d13c4dca4d7d9492ed6666952c640165`  
		Last Modified: Thu, 28 Mar 2019 00:34:38 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.1.3` - linux; arm variant v6

```console
$ docker pull storm@sha256:7081f0ff94ec7f3eb222be8dd02c1d9385865bd4a37482af71c04e319964ec4c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.8 MB (149779965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fcee4ea2dfc59ddb34a278ad2191d4e35d2e133604253c298a61bd955289015`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:39:53 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:39:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:40:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:40:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 04:40:08 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 04:40:08 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 04:40:13 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 06:36:47 GMT
RUN apk add --no-cache     bash     python     su-exec
# Fri, 08 Mar 2019 06:36:48 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Fri, 08 Mar 2019 06:36:49 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Fri, 08 Mar 2019 06:36:50 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Fri, 08 Mar 2019 06:39:11 GMT
ARG DISTRO_NAME=apache-storm-1.1.3
# Fri, 08 Mar 2019 06:40:05 GMT
# ARGS: DISTRO_NAME=apache-storm-1.1.3 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 08 Mar 2019 06:40:06 GMT
WORKDIR /apache-storm-1.1.3
# Fri, 08 Mar 2019 06:40:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.1.3/bin
# Fri, 08 Mar 2019 06:40:06 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Fri, 08 Mar 2019 06:40:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb8e265594b5112bd474ac92c9c83497fc535a27624c2798c8817a01b28328c`  
		Last Modified: Fri, 08 Mar 2019 04:41:11 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f437760c09bd73230093ad3dd719c2d7b0e4b013869d13c73129fcb1e70e1e8a`  
		Last Modified: Fri, 08 Mar 2019 04:41:46 GMT  
		Size: 52.3 MB (52316587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9733c33ff678048dcc5a1ef48ff735977526d4f222af1dfc6f222e18633a0e4`  
		Last Modified: Fri, 08 Mar 2019 06:42:24 GMT  
		Size: 11.4 MB (11405858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613f79394ba14fae9bb858adb3cec885e3794710d9f03856665f774273b0b965`  
		Last Modified: Fri, 08 Mar 2019 06:42:19 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88008eb6a85414c5585de688d669200a5c158717d3a87633a3e26a2c8715de4f`  
		Last Modified: Fri, 08 Mar 2019 06:43:06 GMT  
		Size: 83.5 MB (83514827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a211d6310e0e3da5ce0187a64dc1d639f420ad942aa2b8fa8da5d55ff5cc294`  
		Last Modified: Fri, 08 Mar 2019 06:42:53 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.1.3` - linux; arm64 variant v8

```console
$ docker pull storm@sha256:2fbbead5c99ab56ca71e81d195583c83bbd9bf48b2c55a24d67090fb69406fc1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.7 MB (152676628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:407ac3c972f3e6434e20239c6a8250e593993bb79d5a65f7df4feaaa39f91c02`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 09:49:55 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 09:49:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 09:50:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 09:50:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 09:50:49 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 09:50:50 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 09:51:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 13:23:37 GMT
RUN apk add --no-cache     bash     python     su-exec
# Fri, 08 Mar 2019 13:23:38 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Fri, 08 Mar 2019 13:23:41 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Fri, 08 Mar 2019 13:23:42 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Fri, 08 Mar 2019 13:24:34 GMT
ARG DISTRO_NAME=apache-storm-1.1.3
# Fri, 08 Mar 2019 13:24:51 GMT
# ARGS: DISTRO_NAME=apache-storm-1.1.3 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 08 Mar 2019 13:24:52 GMT
WORKDIR /apache-storm-1.1.3
# Fri, 08 Mar 2019 13:24:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.1.3/bin
# Fri, 08 Mar 2019 13:24:59 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Fri, 08 Mar 2019 13:24:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dc35c571266c194f6068f0540d063943a44ec79726311c42950083e6ab2460`  
		Last Modified: Fri, 08 Mar 2019 09:55:35 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a0e92b48a3a7e439bc2c9a12c51191b28bfcf8bf3cd4bed485084963934e9f2`  
		Last Modified: Fri, 08 Mar 2019 09:57:49 GMT  
		Size: 54.9 MB (54863172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ceaee7073925adaa2f92b644ef4906b937f41b88c774638fd345b82a94dd22`  
		Last Modified: Fri, 08 Mar 2019 13:26:17 GMT  
		Size: 11.6 MB (11609443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a301b4d6bf05245690fb9fd1425b38d6cb293f56ac146b9b31bbe94d9e9161`  
		Last Modified: Fri, 08 Mar 2019 13:26:09 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7a8a063f8d26c1871a7745e464a87e9c72d6e412fe8c0a6a322f7d60153adca`  
		Last Modified: Fri, 08 Mar 2019 13:27:02 GMT  
		Size: 83.5 MB (83514121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e376153bd0c4c960d6591aa898da640965f1a7b3d99ff4453436a8c8c1580acc`  
		Last Modified: Fri, 08 Mar 2019 13:26:49 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.1.3` - linux; 386

```console
$ docker pull storm@sha256:6288ad0089c093c6141edcadbd0c9a243a223d3aa0c4c1335b6f3002a663d0bc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.6 MB (153559394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23fbc36ddff03092a27aa960efa776bb66afda88a7f26a9146864e6567cce2c5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:52:02 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 06:52:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 06:52:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 06:52:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 01:00:58 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 01:00:58 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 01:01:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 01:01:03 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 01:21:20 GMT
RUN apk add --no-cache     bash     python     su-exec
# Thu, 28 Mar 2019 01:21:20 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Thu, 28 Mar 2019 01:21:21 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Thu, 28 Mar 2019 01:21:21 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Thu, 28 Mar 2019 01:21:54 GMT
ARG DISTRO_NAME=apache-storm-1.1.3
# Thu, 28 Mar 2019 01:22:05 GMT
# ARGS: DISTRO_NAME=apache-storm-1.1.3 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 28 Mar 2019 01:22:06 GMT
WORKDIR /apache-storm-1.1.3
# Thu, 28 Mar 2019 01:22:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.1.3/bin
# Thu, 28 Mar 2019 01:22:07 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Thu, 28 Mar 2019 01:22:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe95f117badec568caa0381ef010c1d9df00d3c0870ebab8187a0017d68c5f8b`  
		Last Modified: Fri, 08 Mar 2019 06:53:37 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9976f4b52d6d29fb39677efd0fb01778ff46cb26cc4d357a67003fdbde4ee910`  
		Last Modified: Thu, 28 Mar 2019 01:18:53 GMT  
		Size: 53.2 MB (53175691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0533fd93d55b543cbcb5f415482cc1aab7b763461c9a22e9e0c41f5a95ec71c9`  
		Last Modified: Thu, 28 Mar 2019 01:18:46 GMT  
		Size: 2.4 MB (2394852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7419c215eaabd055ea7f1295820a8bdb98b38918b4a8beced844980941d855da`  
		Last Modified: Thu, 28 Mar 2019 01:22:49 GMT  
		Size: 11.7 MB (11723138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79ead299483d930f81075c06f17856f4fd0ff69720f8447cd31dab4ebd04566f`  
		Last Modified: Thu, 28 Mar 2019 01:22:44 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:756aa3ebffa92a37371550b918cf67a9cd95a342ffd1b125fdf341d1f57b28be`  
		Last Modified: Thu, 28 Mar 2019 01:23:15 GMT  
		Size: 83.5 MB (83514405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7ac686341a46d1241d8c98ec3ce8084c4f63fb54b93c0003d24a34961350fc`  
		Last Modified: Thu, 28 Mar 2019 01:23:07 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.1.3` - linux; ppc64le

```console
$ docker pull storm@sha256:b99191ea41868c245a642c7843a019c36563fa57045f0cbefb4f68d49f6aa177
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.6 MB (153620591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36e1a49d7b62ffc9937a7e5f44d0cff94486ba4073c4c932e96a6a6305856ccd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:13:23 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:13:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:14:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:14:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 04:14:06 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 04:14:07 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 04:14:14 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 08:13:09 GMT
RUN apk add --no-cache     bash     python     su-exec
# Fri, 08 Mar 2019 08:13:11 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Fri, 08 Mar 2019 08:13:18 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Fri, 08 Mar 2019 08:13:21 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Fri, 08 Mar 2019 08:14:12 GMT
ARG DISTRO_NAME=apache-storm-1.1.3
# Fri, 08 Mar 2019 08:14:27 GMT
# ARGS: DISTRO_NAME=apache-storm-1.1.3 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 08 Mar 2019 08:14:31 GMT
WORKDIR /apache-storm-1.1.3
# Fri, 08 Mar 2019 08:14:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.1.3/bin
# Fri, 08 Mar 2019 08:14:36 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Fri, 08 Mar 2019 08:14:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b37b96605d1a56e30ef6132daa2faa08064df25ac1042a5b799c96028716bf7`  
		Last Modified: Fri, 08 Mar 2019 04:17:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f9e479942ab40414f57c40400e46690c9e3fa041ee89b911ecc82d3df13ed6`  
		Last Modified: Fri, 08 Mar 2019 04:17:58 GMT  
		Size: 55.5 MB (55503663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd884378ad35bcf5efadca07c05ac3be5fa5e86503299de67c93af1eff8f346`  
		Last Modified: Fri, 08 Mar 2019 08:19:51 GMT  
		Size: 11.8 MB (11821172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a1281012e2e9fe177c0c441b5ac12009f6a4db90dddb43b5bacdfc0f519359`  
		Last Modified: Fri, 08 Mar 2019 08:19:47 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60cf47a314518e846dbeeb3a17e3ebaa442176dd119f69b122079dc3c28a8761`  
		Last Modified: Fri, 08 Mar 2019 08:20:25 GMT  
		Size: 83.5 MB (83515099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3083415c87cd4d0d83b0994837a5290b0f6d8b8457b07ff688a3aee820fdba37`  
		Last Modified: Fri, 08 Mar 2019 08:20:17 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.1.3` - linux; s390x

```console
$ docker pull storm@sha256:f68b055387078a8bb3ddaddc68862e484d099545bc8128e378608dba8faa3cec
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.3 MB (151339827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72383df58a613c16c2519f4e45d20e6cecfa0afa4f10b13a9f1031740c619930`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:02:40 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:02:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:02:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:02:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 04:02:57 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 04:02:57 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 04:02:59 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 06:19:52 GMT
RUN apk add --no-cache     bash     python     su-exec
# Fri, 08 Mar 2019 06:19:53 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Fri, 08 Mar 2019 06:19:54 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Fri, 08 Mar 2019 06:19:54 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Fri, 08 Mar 2019 06:20:09 GMT
ARG DISTRO_NAME=apache-storm-1.1.3
# Fri, 08 Mar 2019 06:20:15 GMT
# ARGS: DISTRO_NAME=apache-storm-1.1.3 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 08 Mar 2019 06:20:15 GMT
WORKDIR /apache-storm-1.1.3
# Fri, 08 Mar 2019 06:20:15 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.1.3/bin
# Fri, 08 Mar 2019 06:20:15 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Fri, 08 Mar 2019 06:20:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc974726c47232f0d4a4664c4fe09841c9a948a3e4a56abfe98770208fcc645`  
		Last Modified: Fri, 08 Mar 2019 04:04:06 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac265199f8ca9e617cd7b18ea5c6a78f28aa2b82c1b71e28007fed5a24621c49`  
		Last Modified: Fri, 08 Mar 2019 04:04:53 GMT  
		Size: 53.6 MB (53587707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22cd3cdf197da095a6aa44d86914497701dc15d4657bc195113237411bea2e2`  
		Last Modified: Fri, 08 Mar 2019 06:20:46 GMT  
		Size: 11.7 MB (11694705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b80ae4463be8e678f499609f440db39f1172b398d0825377b260859f587c63`  
		Last Modified: Fri, 08 Mar 2019 06:20:43 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561b33b9829c15330a7095de525ca2516f5573e8e2e86b13e5d609f7f55fc745`  
		Last Modified: Fri, 08 Mar 2019 06:21:07 GMT  
		Size: 83.5 MB (83514156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb167302a09056a2b5dfa80759480ee70f0ef3a7f8e3f3918a6cfe2c1ac328f`  
		Last Modified: Fri, 08 Mar 2019 06:21:01 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:1.2`

```console
$ docker pull storm@sha256:2b6d2fa3b37e85809b9ebb9f21ffd1641989d02b83973b7cbf0e3739beb4ff94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `storm:1.2` - linux; amd64

```console
$ docker pull storm@sha256:39502301b76a15fe42043276c4a2c99365ce17071f891a36ed54013ba77ec002
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.2 MB (238176838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:079073382abeb5c027b3553784fb6bde1d5f28254c1d13334d8655a795907d30`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 02:13:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Mar 2019 23:29:04 GMT
ENV JAVA_VERSION=8u201
# Wed, 27 Mar 2019 23:29:05 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Wed, 27 Mar 2019 23:29:09 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Mar 2019 23:29:10 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 00:33:07 GMT
RUN apk add --no-cache     bash     python     su-exec
# Thu, 28 Mar 2019 00:33:07 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Thu, 28 Mar 2019 00:33:09 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Thu, 28 Mar 2019 00:33:09 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Thu, 28 Mar 2019 00:33:50 GMT
ARG DISTRO_NAME=apache-storm-1.2.2
# Thu, 28 Mar 2019 00:34:07 GMT
# ARGS: DISTRO_NAME=apache-storm-1.2.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 28 Mar 2019 00:34:07 GMT
WORKDIR /apache-storm-1.2.2
# Thu, 28 Mar 2019 00:34:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.2.2/bin
# Thu, 28 Mar 2019 00:34:08 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Thu, 28 Mar 2019 00:34:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866c822999cc5862e60f784434873bd291ef9a7ac6e9199a5d1d19eea22fe17`  
		Last Modified: Fri, 08 Mar 2019 02:15:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf419f3f41ff266b1903731d3ff085a6855171b7fd823a93d15cd052dc73a0ea`  
		Last Modified: Wed, 27 Mar 2019 23:47:37 GMT  
		Size: 52.7 MB (52739115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88430b15d43fccea92a728c80080963cf49cb06c31f196900ecbe56e0a85c007`  
		Last Modified: Wed, 27 Mar 2019 23:47:30 GMT  
		Size: 2.2 MB (2221565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3c7edb5dcadb6449ea542dd0a320f101b6656777a7ecbe4ca74b7e4c37086e`  
		Last Modified: Thu, 28 Mar 2019 00:34:22 GMT  
		Size: 11.6 MB (11602055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c98aa9a0a672aea95cbf4be1c2bbf766057b2f283180cb19c770a9fdc8a6320e`  
		Last Modified: Thu, 28 Mar 2019 00:34:19 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1179852da16c737a11b820d9d3a16103504dc6356c68be9b4ea9170aabef9ac3`  
		Last Modified: Thu, 28 Mar 2019 00:35:01 GMT  
		Size: 168.9 MB (168857420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b56eaa232d09d213bf8a2f37137addc6e485de51f2bec2e604ce407f0433934c`  
		Last Modified: Thu, 28 Mar 2019 00:34:48 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.2` - linux; arm variant v6

```console
$ docker pull storm@sha256:5921f43dc80a65b26ebb3d0851181e6a021432ddee93076fe9f962ee1d1b6f8c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.1 MB (235122226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b09daaaa2122add0e75a40c05a84a5634dd9f2c5850d9a91ee21ab446b2101e1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:39:53 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:39:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:40:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:40:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 04:40:08 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 04:40:08 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 04:40:13 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 06:36:47 GMT
RUN apk add --no-cache     bash     python     su-exec
# Fri, 08 Mar 2019 06:36:48 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Fri, 08 Mar 2019 06:36:49 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Fri, 08 Mar 2019 06:36:50 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Fri, 08 Mar 2019 06:40:14 GMT
ARG DISTRO_NAME=apache-storm-1.2.2
# Fri, 08 Mar 2019 06:42:07 GMT
# ARGS: DISTRO_NAME=apache-storm-1.2.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 08 Mar 2019 06:42:08 GMT
WORKDIR /apache-storm-1.2.2
# Fri, 08 Mar 2019 06:42:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.2.2/bin
# Fri, 08 Mar 2019 06:42:09 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Fri, 08 Mar 2019 06:42:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb8e265594b5112bd474ac92c9c83497fc535a27624c2798c8817a01b28328c`  
		Last Modified: Fri, 08 Mar 2019 04:41:11 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f437760c09bd73230093ad3dd719c2d7b0e4b013869d13c73129fcb1e70e1e8a`  
		Last Modified: Fri, 08 Mar 2019 04:41:46 GMT  
		Size: 52.3 MB (52316587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9733c33ff678048dcc5a1ef48ff735977526d4f222af1dfc6f222e18633a0e4`  
		Last Modified: Fri, 08 Mar 2019 06:42:24 GMT  
		Size: 11.4 MB (11405858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613f79394ba14fae9bb858adb3cec885e3794710d9f03856665f774273b0b965`  
		Last Modified: Fri, 08 Mar 2019 06:42:19 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984d9930612c46a998ff63c8c9985b257cb0f5ca6a642a38f4c12c6ad6b3c49c`  
		Last Modified: Fri, 08 Mar 2019 06:44:07 GMT  
		Size: 168.9 MB (168857088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ebfdc5b5c1c2a6460644ddc68cef21da0c611c51e17c8ade665b1f3d3f15a2`  
		Last Modified: Fri, 08 Mar 2019 06:43:30 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.2` - linux; arm64 variant v8

```console
$ docker pull storm@sha256:06eb7ea07e9a8625111e3fd8755cb4ea6fb82717c74f5b175afbab3acff70690
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.0 MB (238018858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d038d46bc0cc80c5439a09cb9547b4fd1e4659d1f0e8b6c2b8f569aa91477b10`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 09:49:55 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 09:49:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 09:50:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 09:50:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 09:50:49 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 09:50:50 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 09:51:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 13:23:37 GMT
RUN apk add --no-cache     bash     python     su-exec
# Fri, 08 Mar 2019 13:23:38 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Fri, 08 Mar 2019 13:23:41 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Fri, 08 Mar 2019 13:23:42 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Fri, 08 Mar 2019 13:25:07 GMT
ARG DISTRO_NAME=apache-storm-1.2.2
# Fri, 08 Mar 2019 13:25:46 GMT
# ARGS: DISTRO_NAME=apache-storm-1.2.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 08 Mar 2019 13:25:47 GMT
WORKDIR /apache-storm-1.2.2
# Fri, 08 Mar 2019 13:25:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.2.2/bin
# Fri, 08 Mar 2019 13:25:50 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Fri, 08 Mar 2019 13:25:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dc35c571266c194f6068f0540d063943a44ec79726311c42950083e6ab2460`  
		Last Modified: Fri, 08 Mar 2019 09:55:35 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a0e92b48a3a7e439bc2c9a12c51191b28bfcf8bf3cd4bed485084963934e9f2`  
		Last Modified: Fri, 08 Mar 2019 09:57:49 GMT  
		Size: 54.9 MB (54863172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ceaee7073925adaa2f92b644ef4906b937f41b88c774638fd345b82a94dd22`  
		Last Modified: Fri, 08 Mar 2019 13:26:17 GMT  
		Size: 11.6 MB (11609443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a301b4d6bf05245690fb9fd1425b38d6cb293f56ac146b9b31bbe94d9e9161`  
		Last Modified: Fri, 08 Mar 2019 13:26:09 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4fe53649eeef307fb922d958b0b6195096cad73fa773295c5e199ea13a28779`  
		Last Modified: Fri, 08 Mar 2019 13:28:19 GMT  
		Size: 168.9 MB (168856350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b276fcf1aa2e739e6257d88f570e743b78b2f5c2d671623373fea89904c548`  
		Last Modified: Fri, 08 Mar 2019 13:27:54 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.2` - linux; 386

```console
$ docker pull storm@sha256:bcc5c412998d73ec32161bfc1dc775a2ccda1020640d5fc24c61dc16d9470cea
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.9 MB (238901708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e49d112430533cd93051787fffe8d06d5f88db2f374a28733c471ba80a903db`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:52:02 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 06:52:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 06:52:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 06:52:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 01:00:58 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 01:00:58 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 01:01:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 01:01:03 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 01:21:20 GMT
RUN apk add --no-cache     bash     python     su-exec
# Thu, 28 Mar 2019 01:21:20 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Thu, 28 Mar 2019 01:21:21 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Thu, 28 Mar 2019 01:21:21 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Thu, 28 Mar 2019 01:22:11 GMT
ARG DISTRO_NAME=apache-storm-1.2.2
# Thu, 28 Mar 2019 01:22:30 GMT
# ARGS: DISTRO_NAME=apache-storm-1.2.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 28 Mar 2019 01:22:31 GMT
WORKDIR /apache-storm-1.2.2
# Thu, 28 Mar 2019 01:22:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.2.2/bin
# Thu, 28 Mar 2019 01:22:32 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Thu, 28 Mar 2019 01:22:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe95f117badec568caa0381ef010c1d9df00d3c0870ebab8187a0017d68c5f8b`  
		Last Modified: Fri, 08 Mar 2019 06:53:37 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9976f4b52d6d29fb39677efd0fb01778ff46cb26cc4d357a67003fdbde4ee910`  
		Last Modified: Thu, 28 Mar 2019 01:18:53 GMT  
		Size: 53.2 MB (53175691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0533fd93d55b543cbcb5f415482cc1aab7b763461c9a22e9e0c41f5a95ec71c9`  
		Last Modified: Thu, 28 Mar 2019 01:18:46 GMT  
		Size: 2.4 MB (2394852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7419c215eaabd055ea7f1295820a8bdb98b38918b4a8beced844980941d855da`  
		Last Modified: Thu, 28 Mar 2019 01:22:49 GMT  
		Size: 11.7 MB (11723138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79ead299483d930f81075c06f17856f4fd0ff69720f8447cd31dab4ebd04566f`  
		Last Modified: Thu, 28 Mar 2019 01:22:44 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9c8709e2d08f3d5b1f6e4fde19d6ed18d3818ae63dd5c8f642505543800be8`  
		Last Modified: Thu, 28 Mar 2019 01:23:35 GMT  
		Size: 168.9 MB (168856719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a7964e81b292bed201cd0f6352bf87cdb493036189bbd8b0a543c7e3290d75f`  
		Last Modified: Thu, 28 Mar 2019 01:23:19 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.2` - linux; ppc64le

```console
$ docker pull storm@sha256:fb7a9c0e07489e77e8b80b27aeda440d20929f2c69a42788b63918b1d0fd1879
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238962887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0fb942406e47521a2561170aa2b821645a28b43b1dc35464c4027691b2bc466`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:13:23 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:13:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:14:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:14:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 04:14:06 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 04:14:07 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 04:14:14 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 08:13:09 GMT
RUN apk add --no-cache     bash     python     su-exec
# Fri, 08 Mar 2019 08:13:11 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Fri, 08 Mar 2019 08:13:18 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Fri, 08 Mar 2019 08:13:21 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Fri, 08 Mar 2019 08:14:45 GMT
ARG DISTRO_NAME=apache-storm-1.2.2
# Fri, 08 Mar 2019 08:19:12 GMT
# ARGS: DISTRO_NAME=apache-storm-1.2.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 08 Mar 2019 08:19:17 GMT
WORKDIR /apache-storm-1.2.2
# Fri, 08 Mar 2019 08:19:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.2.2/bin
# Fri, 08 Mar 2019 08:19:21 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Fri, 08 Mar 2019 08:19:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b37b96605d1a56e30ef6132daa2faa08064df25ac1042a5b799c96028716bf7`  
		Last Modified: Fri, 08 Mar 2019 04:17:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f9e479942ab40414f57c40400e46690c9e3fa041ee89b911ecc82d3df13ed6`  
		Last Modified: Fri, 08 Mar 2019 04:17:58 GMT  
		Size: 55.5 MB (55503663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd884378ad35bcf5efadca07c05ac3be5fa5e86503299de67c93af1eff8f346`  
		Last Modified: Fri, 08 Mar 2019 08:19:51 GMT  
		Size: 11.8 MB (11821172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a1281012e2e9fe177c0c441b5ac12009f6a4db90dddb43b5bacdfc0f519359`  
		Last Modified: Fri, 08 Mar 2019 08:19:47 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4352422dce4f3c9857521995c956d2c94e34102758673980b5421a31197b0e6b`  
		Last Modified: Fri, 08 Mar 2019 08:20:52 GMT  
		Size: 168.9 MB (168857394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfd84794bc728d95c32fa64ade4d59a365cc9e5405114336bbf3e1738612b62`  
		Last Modified: Fri, 08 Mar 2019 08:20:37 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.2` - linux; s390x

```console
$ docker pull storm@sha256:1d9d9390bba10fbd772b83d52b51bdedb0a16a755be2135113475faac1656ff5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.7 MB (236681898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23e9d2aad3030f37065409de083a2bd6064d8b865c3a2ae3d5d314f683cb77e8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:02:40 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:02:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:02:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:02:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 04:02:57 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 04:02:57 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 04:02:59 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 06:19:52 GMT
RUN apk add --no-cache     bash     python     su-exec
# Fri, 08 Mar 2019 06:19:53 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Fri, 08 Mar 2019 06:19:54 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Fri, 08 Mar 2019 06:19:54 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Fri, 08 Mar 2019 06:20:19 GMT
ARG DISTRO_NAME=apache-storm-1.2.2
# Fri, 08 Mar 2019 06:20:32 GMT
# ARGS: DISTRO_NAME=apache-storm-1.2.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 08 Mar 2019 06:20:32 GMT
WORKDIR /apache-storm-1.2.2
# Fri, 08 Mar 2019 06:20:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.2.2/bin
# Fri, 08 Mar 2019 06:20:32 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Fri, 08 Mar 2019 06:20:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc974726c47232f0d4a4664c4fe09841c9a948a3e4a56abfe98770208fcc645`  
		Last Modified: Fri, 08 Mar 2019 04:04:06 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac265199f8ca9e617cd7b18ea5c6a78f28aa2b82c1b71e28007fed5a24621c49`  
		Last Modified: Fri, 08 Mar 2019 04:04:53 GMT  
		Size: 53.6 MB (53587707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22cd3cdf197da095a6aa44d86914497701dc15d4657bc195113237411bea2e2`  
		Last Modified: Fri, 08 Mar 2019 06:20:46 GMT  
		Size: 11.7 MB (11694705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b80ae4463be8e678f499609f440db39f1172b398d0825377b260859f587c63`  
		Last Modified: Fri, 08 Mar 2019 06:20:43 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e7f5ea0203c6b632d22f1b5cf06841966f3e8cff78b641967658a71459f134d`  
		Last Modified: Fri, 08 Mar 2019 06:21:23 GMT  
		Size: 168.9 MB (168856226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7840179bf332f8e9b10d50ac2b08a42ce2fdd22df51b1aa967814909df83ece`  
		Last Modified: Fri, 08 Mar 2019 06:21:12 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:1.2.2`

```console
$ docker pull storm@sha256:2b6d2fa3b37e85809b9ebb9f21ffd1641989d02b83973b7cbf0e3739beb4ff94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `storm:1.2.2` - linux; amd64

```console
$ docker pull storm@sha256:39502301b76a15fe42043276c4a2c99365ce17071f891a36ed54013ba77ec002
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.2 MB (238176838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:079073382abeb5c027b3553784fb6bde1d5f28254c1d13334d8655a795907d30`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 02:13:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Mar 2019 23:29:04 GMT
ENV JAVA_VERSION=8u201
# Wed, 27 Mar 2019 23:29:05 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Wed, 27 Mar 2019 23:29:09 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Mar 2019 23:29:10 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 00:33:07 GMT
RUN apk add --no-cache     bash     python     su-exec
# Thu, 28 Mar 2019 00:33:07 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Thu, 28 Mar 2019 00:33:09 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Thu, 28 Mar 2019 00:33:09 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Thu, 28 Mar 2019 00:33:50 GMT
ARG DISTRO_NAME=apache-storm-1.2.2
# Thu, 28 Mar 2019 00:34:07 GMT
# ARGS: DISTRO_NAME=apache-storm-1.2.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 28 Mar 2019 00:34:07 GMT
WORKDIR /apache-storm-1.2.2
# Thu, 28 Mar 2019 00:34:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.2.2/bin
# Thu, 28 Mar 2019 00:34:08 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Thu, 28 Mar 2019 00:34:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866c822999cc5862e60f784434873bd291ef9a7ac6e9199a5d1d19eea22fe17`  
		Last Modified: Fri, 08 Mar 2019 02:15:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf419f3f41ff266b1903731d3ff085a6855171b7fd823a93d15cd052dc73a0ea`  
		Last Modified: Wed, 27 Mar 2019 23:47:37 GMT  
		Size: 52.7 MB (52739115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88430b15d43fccea92a728c80080963cf49cb06c31f196900ecbe56e0a85c007`  
		Last Modified: Wed, 27 Mar 2019 23:47:30 GMT  
		Size: 2.2 MB (2221565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3c7edb5dcadb6449ea542dd0a320f101b6656777a7ecbe4ca74b7e4c37086e`  
		Last Modified: Thu, 28 Mar 2019 00:34:22 GMT  
		Size: 11.6 MB (11602055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c98aa9a0a672aea95cbf4be1c2bbf766057b2f283180cb19c770a9fdc8a6320e`  
		Last Modified: Thu, 28 Mar 2019 00:34:19 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1179852da16c737a11b820d9d3a16103504dc6356c68be9b4ea9170aabef9ac3`  
		Last Modified: Thu, 28 Mar 2019 00:35:01 GMT  
		Size: 168.9 MB (168857420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b56eaa232d09d213bf8a2f37137addc6e485de51f2bec2e604ce407f0433934c`  
		Last Modified: Thu, 28 Mar 2019 00:34:48 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.2.2` - linux; arm variant v6

```console
$ docker pull storm@sha256:5921f43dc80a65b26ebb3d0851181e6a021432ddee93076fe9f962ee1d1b6f8c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.1 MB (235122226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b09daaaa2122add0e75a40c05a84a5634dd9f2c5850d9a91ee21ab446b2101e1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:39:53 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:39:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:40:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:40:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 04:40:08 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 04:40:08 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 04:40:13 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 06:36:47 GMT
RUN apk add --no-cache     bash     python     su-exec
# Fri, 08 Mar 2019 06:36:48 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Fri, 08 Mar 2019 06:36:49 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Fri, 08 Mar 2019 06:36:50 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Fri, 08 Mar 2019 06:40:14 GMT
ARG DISTRO_NAME=apache-storm-1.2.2
# Fri, 08 Mar 2019 06:42:07 GMT
# ARGS: DISTRO_NAME=apache-storm-1.2.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 08 Mar 2019 06:42:08 GMT
WORKDIR /apache-storm-1.2.2
# Fri, 08 Mar 2019 06:42:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.2.2/bin
# Fri, 08 Mar 2019 06:42:09 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Fri, 08 Mar 2019 06:42:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb8e265594b5112bd474ac92c9c83497fc535a27624c2798c8817a01b28328c`  
		Last Modified: Fri, 08 Mar 2019 04:41:11 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f437760c09bd73230093ad3dd719c2d7b0e4b013869d13c73129fcb1e70e1e8a`  
		Last Modified: Fri, 08 Mar 2019 04:41:46 GMT  
		Size: 52.3 MB (52316587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9733c33ff678048dcc5a1ef48ff735977526d4f222af1dfc6f222e18633a0e4`  
		Last Modified: Fri, 08 Mar 2019 06:42:24 GMT  
		Size: 11.4 MB (11405858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613f79394ba14fae9bb858adb3cec885e3794710d9f03856665f774273b0b965`  
		Last Modified: Fri, 08 Mar 2019 06:42:19 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984d9930612c46a998ff63c8c9985b257cb0f5ca6a642a38f4c12c6ad6b3c49c`  
		Last Modified: Fri, 08 Mar 2019 06:44:07 GMT  
		Size: 168.9 MB (168857088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ebfdc5b5c1c2a6460644ddc68cef21da0c611c51e17c8ade665b1f3d3f15a2`  
		Last Modified: Fri, 08 Mar 2019 06:43:30 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.2.2` - linux; arm64 variant v8

```console
$ docker pull storm@sha256:06eb7ea07e9a8625111e3fd8755cb4ea6fb82717c74f5b175afbab3acff70690
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.0 MB (238018858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d038d46bc0cc80c5439a09cb9547b4fd1e4659d1f0e8b6c2b8f569aa91477b10`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 09:49:55 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 09:49:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 09:50:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 09:50:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 09:50:49 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 09:50:50 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 09:51:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 13:23:37 GMT
RUN apk add --no-cache     bash     python     su-exec
# Fri, 08 Mar 2019 13:23:38 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Fri, 08 Mar 2019 13:23:41 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Fri, 08 Mar 2019 13:23:42 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Fri, 08 Mar 2019 13:25:07 GMT
ARG DISTRO_NAME=apache-storm-1.2.2
# Fri, 08 Mar 2019 13:25:46 GMT
# ARGS: DISTRO_NAME=apache-storm-1.2.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 08 Mar 2019 13:25:47 GMT
WORKDIR /apache-storm-1.2.2
# Fri, 08 Mar 2019 13:25:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.2.2/bin
# Fri, 08 Mar 2019 13:25:50 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Fri, 08 Mar 2019 13:25:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dc35c571266c194f6068f0540d063943a44ec79726311c42950083e6ab2460`  
		Last Modified: Fri, 08 Mar 2019 09:55:35 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a0e92b48a3a7e439bc2c9a12c51191b28bfcf8bf3cd4bed485084963934e9f2`  
		Last Modified: Fri, 08 Mar 2019 09:57:49 GMT  
		Size: 54.9 MB (54863172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ceaee7073925adaa2f92b644ef4906b937f41b88c774638fd345b82a94dd22`  
		Last Modified: Fri, 08 Mar 2019 13:26:17 GMT  
		Size: 11.6 MB (11609443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a301b4d6bf05245690fb9fd1425b38d6cb293f56ac146b9b31bbe94d9e9161`  
		Last Modified: Fri, 08 Mar 2019 13:26:09 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4fe53649eeef307fb922d958b0b6195096cad73fa773295c5e199ea13a28779`  
		Last Modified: Fri, 08 Mar 2019 13:28:19 GMT  
		Size: 168.9 MB (168856350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b276fcf1aa2e739e6257d88f570e743b78b2f5c2d671623373fea89904c548`  
		Last Modified: Fri, 08 Mar 2019 13:27:54 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.2.2` - linux; 386

```console
$ docker pull storm@sha256:bcc5c412998d73ec32161bfc1dc775a2ccda1020640d5fc24c61dc16d9470cea
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.9 MB (238901708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e49d112430533cd93051787fffe8d06d5f88db2f374a28733c471ba80a903db`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:52:02 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 06:52:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 06:52:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 06:52:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 01:00:58 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 01:00:58 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 01:01:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 01:01:03 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 01:21:20 GMT
RUN apk add --no-cache     bash     python     su-exec
# Thu, 28 Mar 2019 01:21:20 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Thu, 28 Mar 2019 01:21:21 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Thu, 28 Mar 2019 01:21:21 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Thu, 28 Mar 2019 01:22:11 GMT
ARG DISTRO_NAME=apache-storm-1.2.2
# Thu, 28 Mar 2019 01:22:30 GMT
# ARGS: DISTRO_NAME=apache-storm-1.2.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 28 Mar 2019 01:22:31 GMT
WORKDIR /apache-storm-1.2.2
# Thu, 28 Mar 2019 01:22:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.2.2/bin
# Thu, 28 Mar 2019 01:22:32 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Thu, 28 Mar 2019 01:22:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe95f117badec568caa0381ef010c1d9df00d3c0870ebab8187a0017d68c5f8b`  
		Last Modified: Fri, 08 Mar 2019 06:53:37 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9976f4b52d6d29fb39677efd0fb01778ff46cb26cc4d357a67003fdbde4ee910`  
		Last Modified: Thu, 28 Mar 2019 01:18:53 GMT  
		Size: 53.2 MB (53175691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0533fd93d55b543cbcb5f415482cc1aab7b763461c9a22e9e0c41f5a95ec71c9`  
		Last Modified: Thu, 28 Mar 2019 01:18:46 GMT  
		Size: 2.4 MB (2394852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7419c215eaabd055ea7f1295820a8bdb98b38918b4a8beced844980941d855da`  
		Last Modified: Thu, 28 Mar 2019 01:22:49 GMT  
		Size: 11.7 MB (11723138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79ead299483d930f81075c06f17856f4fd0ff69720f8447cd31dab4ebd04566f`  
		Last Modified: Thu, 28 Mar 2019 01:22:44 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9c8709e2d08f3d5b1f6e4fde19d6ed18d3818ae63dd5c8f642505543800be8`  
		Last Modified: Thu, 28 Mar 2019 01:23:35 GMT  
		Size: 168.9 MB (168856719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a7964e81b292bed201cd0f6352bf87cdb493036189bbd8b0a543c7e3290d75f`  
		Last Modified: Thu, 28 Mar 2019 01:23:19 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.2.2` - linux; ppc64le

```console
$ docker pull storm@sha256:fb7a9c0e07489e77e8b80b27aeda440d20929f2c69a42788b63918b1d0fd1879
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238962887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0fb942406e47521a2561170aa2b821645a28b43b1dc35464c4027691b2bc466`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:13:23 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:13:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:14:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:14:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 04:14:06 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 04:14:07 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 04:14:14 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 08:13:09 GMT
RUN apk add --no-cache     bash     python     su-exec
# Fri, 08 Mar 2019 08:13:11 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Fri, 08 Mar 2019 08:13:18 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Fri, 08 Mar 2019 08:13:21 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Fri, 08 Mar 2019 08:14:45 GMT
ARG DISTRO_NAME=apache-storm-1.2.2
# Fri, 08 Mar 2019 08:19:12 GMT
# ARGS: DISTRO_NAME=apache-storm-1.2.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 08 Mar 2019 08:19:17 GMT
WORKDIR /apache-storm-1.2.2
# Fri, 08 Mar 2019 08:19:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.2.2/bin
# Fri, 08 Mar 2019 08:19:21 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Fri, 08 Mar 2019 08:19:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b37b96605d1a56e30ef6132daa2faa08064df25ac1042a5b799c96028716bf7`  
		Last Modified: Fri, 08 Mar 2019 04:17:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f9e479942ab40414f57c40400e46690c9e3fa041ee89b911ecc82d3df13ed6`  
		Last Modified: Fri, 08 Mar 2019 04:17:58 GMT  
		Size: 55.5 MB (55503663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd884378ad35bcf5efadca07c05ac3be5fa5e86503299de67c93af1eff8f346`  
		Last Modified: Fri, 08 Mar 2019 08:19:51 GMT  
		Size: 11.8 MB (11821172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a1281012e2e9fe177c0c441b5ac12009f6a4db90dddb43b5bacdfc0f519359`  
		Last Modified: Fri, 08 Mar 2019 08:19:47 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4352422dce4f3c9857521995c956d2c94e34102758673980b5421a31197b0e6b`  
		Last Modified: Fri, 08 Mar 2019 08:20:52 GMT  
		Size: 168.9 MB (168857394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfd84794bc728d95c32fa64ade4d59a365cc9e5405114336bbf3e1738612b62`  
		Last Modified: Fri, 08 Mar 2019 08:20:37 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.2.2` - linux; s390x

```console
$ docker pull storm@sha256:1d9d9390bba10fbd772b83d52b51bdedb0a16a755be2135113475faac1656ff5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.7 MB (236681898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23e9d2aad3030f37065409de083a2bd6064d8b865c3a2ae3d5d314f683cb77e8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:02:40 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:02:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:02:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:02:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 04:02:57 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 04:02:57 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 04:02:59 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 06:19:52 GMT
RUN apk add --no-cache     bash     python     su-exec
# Fri, 08 Mar 2019 06:19:53 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Fri, 08 Mar 2019 06:19:54 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Fri, 08 Mar 2019 06:19:54 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Fri, 08 Mar 2019 06:20:19 GMT
ARG DISTRO_NAME=apache-storm-1.2.2
# Fri, 08 Mar 2019 06:20:32 GMT
# ARGS: DISTRO_NAME=apache-storm-1.2.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 08 Mar 2019 06:20:32 GMT
WORKDIR /apache-storm-1.2.2
# Fri, 08 Mar 2019 06:20:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.2.2/bin
# Fri, 08 Mar 2019 06:20:32 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Fri, 08 Mar 2019 06:20:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc974726c47232f0d4a4664c4fe09841c9a948a3e4a56abfe98770208fcc645`  
		Last Modified: Fri, 08 Mar 2019 04:04:06 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac265199f8ca9e617cd7b18ea5c6a78f28aa2b82c1b71e28007fed5a24621c49`  
		Last Modified: Fri, 08 Mar 2019 04:04:53 GMT  
		Size: 53.6 MB (53587707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22cd3cdf197da095a6aa44d86914497701dc15d4657bc195113237411bea2e2`  
		Last Modified: Fri, 08 Mar 2019 06:20:46 GMT  
		Size: 11.7 MB (11694705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b80ae4463be8e678f499609f440db39f1172b398d0825377b260859f587c63`  
		Last Modified: Fri, 08 Mar 2019 06:20:43 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e7f5ea0203c6b632d22f1b5cf06841966f3e8cff78b641967658a71459f134d`  
		Last Modified: Fri, 08 Mar 2019 06:21:23 GMT  
		Size: 168.9 MB (168856226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7840179bf332f8e9b10d50ac2b08a42ce2fdd22df51b1aa967814909df83ece`  
		Last Modified: Fri, 08 Mar 2019 06:21:12 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:latest`

```console
$ docker pull storm@sha256:2b6d2fa3b37e85809b9ebb9f21ffd1641989d02b83973b7cbf0e3739beb4ff94
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
$ docker pull storm@sha256:39502301b76a15fe42043276c4a2c99365ce17071f891a36ed54013ba77ec002
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.2 MB (238176838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:079073382abeb5c027b3553784fb6bde1d5f28254c1d13334d8655a795907d30`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:40 GMT
ADD file:88875982b0512a9d0ba001bfea19497ae9a9442c257b19c61bffc56e7201b0c3 in / 
# Thu, 07 Mar 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 02:13:29 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 02:13:30 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 02:13:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 02:13:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Wed, 27 Mar 2019 23:29:04 GMT
ENV JAVA_VERSION=8u201
# Wed, 27 Mar 2019 23:29:05 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Wed, 27 Mar 2019 23:29:09 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 27 Mar 2019 23:29:10 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 00:33:07 GMT
RUN apk add --no-cache     bash     python     su-exec
# Thu, 28 Mar 2019 00:33:07 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Thu, 28 Mar 2019 00:33:09 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Thu, 28 Mar 2019 00:33:09 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Thu, 28 Mar 2019 00:33:50 GMT
ARG DISTRO_NAME=apache-storm-1.2.2
# Thu, 28 Mar 2019 00:34:07 GMT
# ARGS: DISTRO_NAME=apache-storm-1.2.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 28 Mar 2019 00:34:07 GMT
WORKDIR /apache-storm-1.2.2
# Thu, 28 Mar 2019 00:34:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.2.2/bin
# Thu, 28 Mar 2019 00:34:08 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Thu, 28 Mar 2019 00:34:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:8e402f1a9c577ded051c1ef10e9fe4492890459522089959988a4852dee8ab2c`  
		Last Modified: Tue, 05 Mar 2019 21:22:35 GMT  
		Size: 2.8 MB (2754729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4866c822999cc5862e60f784434873bd291ef9a7ac6e9199a5d1d19eea22fe17`  
		Last Modified: Fri, 08 Mar 2019 02:15:56 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf419f3f41ff266b1903731d3ff085a6855171b7fd823a93d15cd052dc73a0ea`  
		Last Modified: Wed, 27 Mar 2019 23:47:37 GMT  
		Size: 52.7 MB (52739115 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88430b15d43fccea92a728c80080963cf49cb06c31f196900ecbe56e0a85c007`  
		Last Modified: Wed, 27 Mar 2019 23:47:30 GMT  
		Size: 2.2 MB (2221565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f3c7edb5dcadb6449ea542dd0a320f101b6656777a7ecbe4ca74b7e4c37086e`  
		Last Modified: Thu, 28 Mar 2019 00:34:22 GMT  
		Size: 11.6 MB (11602055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c98aa9a0a672aea95cbf4be1c2bbf766057b2f283180cb19c770a9fdc8a6320e`  
		Last Modified: Thu, 28 Mar 2019 00:34:19 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1179852da16c737a11b820d9d3a16103504dc6356c68be9b4ea9170aabef9ac3`  
		Last Modified: Thu, 28 Mar 2019 00:35:01 GMT  
		Size: 168.9 MB (168857420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b56eaa232d09d213bf8a2f37137addc6e485de51f2bec2e604ce407f0433934c`  
		Last Modified: Thu, 28 Mar 2019 00:34:48 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:latest` - linux; arm variant v6

```console
$ docker pull storm@sha256:5921f43dc80a65b26ebb3d0851181e6a021432ddee93076fe9f962ee1d1b6f8c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.1 MB (235122226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b09daaaa2122add0e75a40c05a84a5634dd9f2c5850d9a91ee21ab446b2101e1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:05 GMT
ADD file:2bf8ccaacb388ca6271670ed8a86b8bc4450823156917d29d9d9ec0a07fd64a7 in / 
# Fri, 08 Mar 2019 03:36:06 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:39:53 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:39:55 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:40:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:40:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 04:40:08 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 04:40:08 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 04:40:13 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 06:36:47 GMT
RUN apk add --no-cache     bash     python     su-exec
# Fri, 08 Mar 2019 06:36:48 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Fri, 08 Mar 2019 06:36:49 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Fri, 08 Mar 2019 06:36:50 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Fri, 08 Mar 2019 06:40:14 GMT
ARG DISTRO_NAME=apache-storm-1.2.2
# Fri, 08 Mar 2019 06:42:07 GMT
# ARGS: DISTRO_NAME=apache-storm-1.2.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 08 Mar 2019 06:42:08 GMT
WORKDIR /apache-storm-1.2.2
# Fri, 08 Mar 2019 06:42:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.2.2/bin
# Fri, 08 Mar 2019 06:42:09 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Fri, 08 Mar 2019 06:42:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:d33b53ae0340b7490b486edd65310a4333d7e0057854aadd12a5006faf7fa576`  
		Last Modified: Fri, 08 Mar 2019 03:36:43 GMT  
		Size: 2.5 MB (2540673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb8e265594b5112bd474ac92c9c83497fc535a27624c2798c8817a01b28328c`  
		Last Modified: Fri, 08 Mar 2019 04:41:11 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f437760c09bd73230093ad3dd719c2d7b0e4b013869d13c73129fcb1e70e1e8a`  
		Last Modified: Fri, 08 Mar 2019 04:41:46 GMT  
		Size: 52.3 MB (52316587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9733c33ff678048dcc5a1ef48ff735977526d4f222af1dfc6f222e18633a0e4`  
		Last Modified: Fri, 08 Mar 2019 06:42:24 GMT  
		Size: 11.4 MB (11405858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:613f79394ba14fae9bb858adb3cec885e3794710d9f03856665f774273b0b965`  
		Last Modified: Fri, 08 Mar 2019 06:42:19 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:984d9930612c46a998ff63c8c9985b257cb0f5ca6a642a38f4c12c6ad6b3c49c`  
		Last Modified: Fri, 08 Mar 2019 06:44:07 GMT  
		Size: 168.9 MB (168857088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9ebfdc5b5c1c2a6460644ddc68cef21da0c611c51e17c8ade665b1f3d3f15a2`  
		Last Modified: Fri, 08 Mar 2019 06:43:30 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:latest` - linux; arm64 variant v8

```console
$ docker pull storm@sha256:06eb7ea07e9a8625111e3fd8755cb4ea6fb82717c74f5b175afbab3acff70690
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.0 MB (238018858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d038d46bc0cc80c5439a09cb9547b4fd1e4659d1f0e8b6c2b8f569aa91477b10`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:01 GMT
ADD file:2e80d7b240ac8c544a868180a2a08b2533c450061e0ec276ceacaff7b87a380c in / 
# Fri, 08 Mar 2019 03:37:02 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 09:49:55 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 09:49:59 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 09:50:47 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 09:50:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 09:50:49 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 09:50:50 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 09:51:06 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 13:23:37 GMT
RUN apk add --no-cache     bash     python     su-exec
# Fri, 08 Mar 2019 13:23:38 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Fri, 08 Mar 2019 13:23:41 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Fri, 08 Mar 2019 13:23:42 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Fri, 08 Mar 2019 13:25:07 GMT
ARG DISTRO_NAME=apache-storm-1.2.2
# Fri, 08 Mar 2019 13:25:46 GMT
# ARGS: DISTRO_NAME=apache-storm-1.2.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 08 Mar 2019 13:25:47 GMT
WORKDIR /apache-storm-1.2.2
# Fri, 08 Mar 2019 13:25:49 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.2.2/bin
# Fri, 08 Mar 2019 13:25:50 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Fri, 08 Mar 2019 13:25:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:3b00a3925ee4b356facd24aea8ece58982a66577023cb3596ce3a321aef976f9`  
		Last Modified: Fri, 08 Mar 2019 03:37:55 GMT  
		Size: 2.7 MB (2687939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9dc35c571266c194f6068f0540d063943a44ec79726311c42950083e6ab2460`  
		Last Modified: Fri, 08 Mar 2019 09:55:35 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a0e92b48a3a7e439bc2c9a12c51191b28bfcf8bf3cd4bed485084963934e9f2`  
		Last Modified: Fri, 08 Mar 2019 09:57:49 GMT  
		Size: 54.9 MB (54863172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35ceaee7073925adaa2f92b644ef4906b937f41b88c774638fd345b82a94dd22`  
		Last Modified: Fri, 08 Mar 2019 13:26:17 GMT  
		Size: 11.6 MB (11609443 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28a301b4d6bf05245690fb9fd1425b38d6cb293f56ac146b9b31bbe94d9e9161`  
		Last Modified: Fri, 08 Mar 2019 13:26:09 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4fe53649eeef307fb922d958b0b6195096cad73fa773295c5e199ea13a28779`  
		Last Modified: Fri, 08 Mar 2019 13:28:19 GMT  
		Size: 168.9 MB (168856350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08b276fcf1aa2e739e6257d88f570e743b78b2f5c2d671623373fea89904c548`  
		Last Modified: Fri, 08 Mar 2019 13:27:54 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:latest` - linux; 386

```console
$ docker pull storm@sha256:bcc5c412998d73ec32161bfc1dc775a2ccda1020640d5fc24c61dc16d9470cea
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.9 MB (238901708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e49d112430533cd93051787fffe8d06d5f88db2f374a28733c471ba80a903db`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:98a0f92574b6a8592a131ccb07c4f516694e053d610a1701fde2d5e7c65c2175 in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 06:52:02 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 06:52:03 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 06:52:17 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 06:52:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Thu, 28 Mar 2019 01:00:58 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 01:00:58 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 01:01:01 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 01:01:03 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 01:21:20 GMT
RUN apk add --no-cache     bash     python     su-exec
# Thu, 28 Mar 2019 01:21:20 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Thu, 28 Mar 2019 01:21:21 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Thu, 28 Mar 2019 01:21:21 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Thu, 28 Mar 2019 01:22:11 GMT
ARG DISTRO_NAME=apache-storm-1.2.2
# Thu, 28 Mar 2019 01:22:30 GMT
# ARGS: DISTRO_NAME=apache-storm-1.2.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 28 Mar 2019 01:22:31 GMT
WORKDIR /apache-storm-1.2.2
# Thu, 28 Mar 2019 01:22:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.2.2/bin
# Thu, 28 Mar 2019 01:22:32 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Thu, 28 Mar 2019 01:22:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:a4c1e43a7431a562d92c5eb6e09e96b4731a474af51cad1c46e2d305ede29005`  
		Last Modified: Fri, 08 Mar 2019 03:36:34 GMT  
		Size: 2.7 MB (2749355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe95f117badec568caa0381ef010c1d9df00d3c0870ebab8187a0017d68c5f8b`  
		Last Modified: Fri, 08 Mar 2019 06:53:37 GMT  
		Size: 238.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9976f4b52d6d29fb39677efd0fb01778ff46cb26cc4d357a67003fdbde4ee910`  
		Last Modified: Thu, 28 Mar 2019 01:18:53 GMT  
		Size: 53.2 MB (53175691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0533fd93d55b543cbcb5f415482cc1aab7b763461c9a22e9e0c41f5a95ec71c9`  
		Last Modified: Thu, 28 Mar 2019 01:18:46 GMT  
		Size: 2.4 MB (2394852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7419c215eaabd055ea7f1295820a8bdb98b38918b4a8beced844980941d855da`  
		Last Modified: Thu, 28 Mar 2019 01:22:49 GMT  
		Size: 11.7 MB (11723138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79ead299483d930f81075c06f17856f4fd0ff69720f8447cd31dab4ebd04566f`  
		Last Modified: Thu, 28 Mar 2019 01:22:44 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9c8709e2d08f3d5b1f6e4fde19d6ed18d3818ae63dd5c8f642505543800be8`  
		Last Modified: Thu, 28 Mar 2019 01:23:35 GMT  
		Size: 168.9 MB (168856719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a7964e81b292bed201cd0f6352bf87cdb493036189bbd8b0a543c7e3290d75f`  
		Last Modified: Thu, 28 Mar 2019 01:23:19 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:latest` - linux; ppc64le

```console
$ docker pull storm@sha256:fb7a9c0e07489e77e8b80b27aeda440d20929f2c69a42788b63918b1d0fd1879
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (238962887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0fb942406e47521a2561170aa2b821645a28b43b1dc35464c4027691b2bc466`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:33 GMT
ADD file:6dfaec9befa64397af571d1da2e766c694148f7a025b9411404a924d3de64bd3 in / 
# Fri, 08 Mar 2019 03:37:36 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:13:23 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:13:28 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:14:02 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:14:04 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 04:14:06 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 04:14:07 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 04:14:14 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 08:13:09 GMT
RUN apk add --no-cache     bash     python     su-exec
# Fri, 08 Mar 2019 08:13:11 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Fri, 08 Mar 2019 08:13:18 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Fri, 08 Mar 2019 08:13:21 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Fri, 08 Mar 2019 08:14:45 GMT
ARG DISTRO_NAME=apache-storm-1.2.2
# Fri, 08 Mar 2019 08:19:12 GMT
# ARGS: DISTRO_NAME=apache-storm-1.2.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 08 Mar 2019 08:19:17 GMT
WORKDIR /apache-storm-1.2.2
# Fri, 08 Mar 2019 08:19:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.2.2/bin
# Fri, 08 Mar 2019 08:19:21 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Fri, 08 Mar 2019 08:19:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:611bce2a4fa9a0e18025e088381d26f1dda2e1c02160c4d24a2720f9dbca9eaf`  
		Last Modified: Fri, 08 Mar 2019 03:38:31 GMT  
		Size: 2.8 MB (2778638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b37b96605d1a56e30ef6132daa2faa08064df25ac1042a5b799c96028716bf7`  
		Last Modified: Fri, 08 Mar 2019 04:17:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:52f9e479942ab40414f57c40400e46690c9e3fa041ee89b911ecc82d3df13ed6`  
		Last Modified: Fri, 08 Mar 2019 04:17:58 GMT  
		Size: 55.5 MB (55503663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fd884378ad35bcf5efadca07c05ac3be5fa5e86503299de67c93af1eff8f346`  
		Last Modified: Fri, 08 Mar 2019 08:19:51 GMT  
		Size: 11.8 MB (11821172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4a1281012e2e9fe177c0c441b5ac12009f6a4db90dddb43b5bacdfc0f519359`  
		Last Modified: Fri, 08 Mar 2019 08:19:47 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4352422dce4f3c9857521995c956d2c94e34102758673980b5421a31197b0e6b`  
		Last Modified: Fri, 08 Mar 2019 08:20:52 GMT  
		Size: 168.9 MB (168857394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfd84794bc728d95c32fa64ade4d59a365cc9e5405114336bbf3e1738612b62`  
		Last Modified: Fri, 08 Mar 2019 08:20:37 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:latest` - linux; s390x

```console
$ docker pull storm@sha256:1d9d9390bba10fbd772b83d52b51bdedb0a16a755be2135113475faac1656ff5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.7 MB (236681898 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23e9d2aad3030f37065409de083a2bd6064d8b865c3a2ae3d5d314f683cb77e8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:46 GMT
ADD file:3f769e5ff31fbae6ea6b835fa878b05d6c6920ca4313aa63be7d057e29241d87 in / 
# Fri, 08 Mar 2019 03:35:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:02:40 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 04:02:40 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 08 Mar 2019 04:02:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 08 Mar 2019 04:02:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 08 Mar 2019 04:02:57 GMT
ENV JAVA_VERSION=8u191
# Fri, 08 Mar 2019 04:02:57 GMT
ENV JAVA_ALPINE_VERSION=8.191.12-r0
# Fri, 08 Mar 2019 04:02:59 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 08 Mar 2019 06:19:52 GMT
RUN apk add --no-cache     bash     python     su-exec
# Fri, 08 Mar 2019 06:19:53 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Fri, 08 Mar 2019 06:19:54 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Fri, 08 Mar 2019 06:19:54 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Fri, 08 Mar 2019 06:20:19 GMT
ARG DISTRO_NAME=apache-storm-1.2.2
# Fri, 08 Mar 2019 06:20:32 GMT
# ARGS: DISTRO_NAME=apache-storm-1.2.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 08 Mar 2019 06:20:32 GMT
WORKDIR /apache-storm-1.2.2
# Fri, 08 Mar 2019 06:20:32 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.2.2/bin
# Fri, 08 Mar 2019 06:20:32 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Fri, 08 Mar 2019 06:20:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:d981dc59d98dcf79c1920d433d8d56f9892f229da716de64280980f317a80ef1`  
		Last Modified: Fri, 08 Mar 2019 03:36:19 GMT  
		Size: 2.5 MB (2541305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fc974726c47232f0d4a4664c4fe09841c9a948a3e4a56abfe98770208fcc645`  
		Last Modified: Fri, 08 Mar 2019 04:04:06 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac265199f8ca9e617cd7b18ea5c6a78f28aa2b82c1b71e28007fed5a24621c49`  
		Last Modified: Fri, 08 Mar 2019 04:04:53 GMT  
		Size: 53.6 MB (53587707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d22cd3cdf197da095a6aa44d86914497701dc15d4657bc195113237411bea2e2`  
		Last Modified: Fri, 08 Mar 2019 06:20:46 GMT  
		Size: 11.7 MB (11694705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58b80ae4463be8e678f499609f440db39f1172b398d0825377b260859f587c63`  
		Last Modified: Fri, 08 Mar 2019 06:20:43 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e7f5ea0203c6b632d22f1b5cf06841966f3e8cff78b641967658a71459f134d`  
		Last Modified: Fri, 08 Mar 2019 06:21:23 GMT  
		Size: 168.9 MB (168856226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7840179bf332f8e9b10d50ac2b08a42ce2fdd22df51b1aa967814909df83ece`  
		Last Modified: Fri, 08 Mar 2019 06:21:12 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
