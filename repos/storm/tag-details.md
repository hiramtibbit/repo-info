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
$ docker pull storm@sha256:8abf6a1994223ed408962c4735395280c6e9421cd2138ff2ac0bae7c4010355b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `storm:1.0` - linux; amd64

```console
$ docker pull storm@sha256:e3faffd5a15c9d8538e546fe4cbdc37100886cb55ffd5f4d2364c74934ff2e92
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.8 MB (262833811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36471d98d465bb6f5a19d355a0e8f248d21474c00e6ff528400634bb27e6cc4a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:51:15 GMT
ENV LANG=C.UTF-8
# Fri, 06 Jul 2018 15:51:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 06 Jul 2018 15:51:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 06 Jul 2018 15:51:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 06 Jul 2018 15:51:44 GMT
ENV JAVA_VERSION=8u171
# Fri, 06 Jul 2018 15:51:44 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Fri, 06 Jul 2018 15:51:48 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 06 Jul 2018 19:51:56 GMT
RUN apk add --no-cache     bash     python     su-exec
# Fri, 06 Jul 2018 19:51:57 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Fri, 06 Jul 2018 19:51:57 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Fri, 06 Jul 2018 19:51:58 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Fri, 06 Jul 2018 19:51:58 GMT
ARG DISTRO_NAME=apache-storm-1.0.6
# Fri, 06 Jul 2018 19:52:25 GMT
# ARGS: DISTRO_NAME=apache-storm-1.0.6 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 06 Jul 2018 19:52:31 GMT
WORKDIR /apache-storm-1.0.6
# Fri, 06 Jul 2018 19:52:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.0.6/bin
# Fri, 06 Jul 2018 19:52:31 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Fri, 06 Jul 2018 19:52:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4001add52a901363833fa030b1451162d380a5423906a45f64e090a5ee9efb74`  
		Last Modified: Fri, 06 Jul 2018 15:54:00 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820acf8d3a4c2009dd9f6524e24509df597b6979c253fb6844d205c90a39c38a`  
		Last Modified: Fri, 06 Jul 2018 15:56:33 GMT  
		Size: 54.5 MB (54537341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad004e7d5bb51b299f9aa27b8ad4705b6d6c100fe379732cb921c547dc0af76`  
		Last Modified: Fri, 06 Jul 2018 19:54:09 GMT  
		Size: 11.7 MB (11703239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae16d3873a0f42a1dcf60bae5c4ab67dc7a31fd3f7a02485a2b963d6047769a9`  
		Last Modified: Fri, 06 Jul 2018 19:54:03 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0753e7be1fdbd3abaa421d1e175167d6f1ca0933718b343ee2d5ff55a7e0d77b`  
		Last Modified: Fri, 06 Jul 2018 19:54:26 GMT  
		Size: 194.5 MB (194487742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a217198b78033b62381cfd2e2bed7823a859236daa840196dd45a1d072eca776`  
		Last Modified: Fri, 06 Jul 2018 19:54:03 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:1.0.6`

```console
$ docker pull storm@sha256:8abf6a1994223ed408962c4735395280c6e9421cd2138ff2ac0bae7c4010355b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `storm:1.0.6` - linux; amd64

```console
$ docker pull storm@sha256:e3faffd5a15c9d8538e546fe4cbdc37100886cb55ffd5f4d2364c74934ff2e92
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.8 MB (262833811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36471d98d465bb6f5a19d355a0e8f248d21474c00e6ff528400634bb27e6cc4a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:51:15 GMT
ENV LANG=C.UTF-8
# Fri, 06 Jul 2018 15:51:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 06 Jul 2018 15:51:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 06 Jul 2018 15:51:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 06 Jul 2018 15:51:44 GMT
ENV JAVA_VERSION=8u171
# Fri, 06 Jul 2018 15:51:44 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Fri, 06 Jul 2018 15:51:48 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 06 Jul 2018 19:51:56 GMT
RUN apk add --no-cache     bash     python     su-exec
# Fri, 06 Jul 2018 19:51:57 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Fri, 06 Jul 2018 19:51:57 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Fri, 06 Jul 2018 19:51:58 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Fri, 06 Jul 2018 19:51:58 GMT
ARG DISTRO_NAME=apache-storm-1.0.6
# Fri, 06 Jul 2018 19:52:25 GMT
# ARGS: DISTRO_NAME=apache-storm-1.0.6 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 06 Jul 2018 19:52:31 GMT
WORKDIR /apache-storm-1.0.6
# Fri, 06 Jul 2018 19:52:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.0.6/bin
# Fri, 06 Jul 2018 19:52:31 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Fri, 06 Jul 2018 19:52:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4001add52a901363833fa030b1451162d380a5423906a45f64e090a5ee9efb74`  
		Last Modified: Fri, 06 Jul 2018 15:54:00 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820acf8d3a4c2009dd9f6524e24509df597b6979c253fb6844d205c90a39c38a`  
		Last Modified: Fri, 06 Jul 2018 15:56:33 GMT  
		Size: 54.5 MB (54537341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad004e7d5bb51b299f9aa27b8ad4705b6d6c100fe379732cb921c547dc0af76`  
		Last Modified: Fri, 06 Jul 2018 19:54:09 GMT  
		Size: 11.7 MB (11703239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae16d3873a0f42a1dcf60bae5c4ab67dc7a31fd3f7a02485a2b963d6047769a9`  
		Last Modified: Fri, 06 Jul 2018 19:54:03 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0753e7be1fdbd3abaa421d1e175167d6f1ca0933718b343ee2d5ff55a7e0d77b`  
		Last Modified: Fri, 06 Jul 2018 19:54:26 GMT  
		Size: 194.5 MB (194487742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a217198b78033b62381cfd2e2bed7823a859236daa840196dd45a1d072eca776`  
		Last Modified: Fri, 06 Jul 2018 19:54:03 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:1.1`

```console
$ docker pull storm@sha256:bf41972026d68a3da9420a7d8788660ab264386a8c37b5caf1dc239353870384
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `storm:1.1` - linux; amd64

```console
$ docker pull storm@sha256:592e1f764d3397dbfaeb1d138473a66543c0a0cb984d9b7a76ce90c48621e0ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.1 MB (153088959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8cb6f00000bc6e8c5b293ac497684a9c7d8fdeee049282fb68427980b1f4d23`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:51:15 GMT
ENV LANG=C.UTF-8
# Fri, 06 Jul 2018 15:51:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 06 Jul 2018 15:51:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 06 Jul 2018 15:51:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 06 Jul 2018 15:51:44 GMT
ENV JAVA_VERSION=8u171
# Fri, 06 Jul 2018 15:51:44 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Fri, 06 Jul 2018 15:51:48 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 06 Jul 2018 19:51:56 GMT
RUN apk add --no-cache     bash     python     su-exec
# Fri, 06 Jul 2018 19:51:57 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Fri, 06 Jul 2018 19:51:57 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Fri, 06 Jul 2018 19:51:58 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Fri, 06 Jul 2018 19:52:44 GMT
ARG DISTRO_NAME=apache-storm-1.1.3
# Fri, 06 Jul 2018 19:53:00 GMT
# ARGS: DISTRO_NAME=apache-storm-1.1.3 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 06 Jul 2018 19:53:06 GMT
WORKDIR /apache-storm-1.1.3
# Fri, 06 Jul 2018 19:53:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.1.3/bin
# Fri, 06 Jul 2018 19:53:07 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Fri, 06 Jul 2018 19:53:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4001add52a901363833fa030b1451162d380a5423906a45f64e090a5ee9efb74`  
		Last Modified: Fri, 06 Jul 2018 15:54:00 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820acf8d3a4c2009dd9f6524e24509df597b6979c253fb6844d205c90a39c38a`  
		Last Modified: Fri, 06 Jul 2018 15:56:33 GMT  
		Size: 54.5 MB (54537341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad004e7d5bb51b299f9aa27b8ad4705b6d6c100fe379732cb921c547dc0af76`  
		Last Modified: Fri, 06 Jul 2018 19:54:09 GMT  
		Size: 11.7 MB (11703239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae16d3873a0f42a1dcf60bae5c4ab67dc7a31fd3f7a02485a2b963d6047769a9`  
		Last Modified: Fri, 06 Jul 2018 19:54:03 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c17b80dcf79dc8e5aa474e4935fdabd9ae380ed3c7814e67b3a1ca3b1c0f7c65`  
		Last Modified: Fri, 06 Jul 2018 19:55:07 GMT  
		Size: 84.7 MB (84742889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddaa980fd363ed2db17179b200e85afeb22401489b53ceb8552d30da3c0a0318`  
		Last Modified: Fri, 06 Jul 2018 19:54:56 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:1.1.3`

```console
$ docker pull storm@sha256:bf41972026d68a3da9420a7d8788660ab264386a8c37b5caf1dc239353870384
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `storm:1.1.3` - linux; amd64

```console
$ docker pull storm@sha256:592e1f764d3397dbfaeb1d138473a66543c0a0cb984d9b7a76ce90c48621e0ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.1 MB (153088959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8cb6f00000bc6e8c5b293ac497684a9c7d8fdeee049282fb68427980b1f4d23`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:51:15 GMT
ENV LANG=C.UTF-8
# Fri, 06 Jul 2018 15:51:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 06 Jul 2018 15:51:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 06 Jul 2018 15:51:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 06 Jul 2018 15:51:44 GMT
ENV JAVA_VERSION=8u171
# Fri, 06 Jul 2018 15:51:44 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Fri, 06 Jul 2018 15:51:48 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 06 Jul 2018 19:51:56 GMT
RUN apk add --no-cache     bash     python     su-exec
# Fri, 06 Jul 2018 19:51:57 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Fri, 06 Jul 2018 19:51:57 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Fri, 06 Jul 2018 19:51:58 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Fri, 06 Jul 2018 19:52:44 GMT
ARG DISTRO_NAME=apache-storm-1.1.3
# Fri, 06 Jul 2018 19:53:00 GMT
# ARGS: DISTRO_NAME=apache-storm-1.1.3 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 06 Jul 2018 19:53:06 GMT
WORKDIR /apache-storm-1.1.3
# Fri, 06 Jul 2018 19:53:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.1.3/bin
# Fri, 06 Jul 2018 19:53:07 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Fri, 06 Jul 2018 19:53:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4001add52a901363833fa030b1451162d380a5423906a45f64e090a5ee9efb74`  
		Last Modified: Fri, 06 Jul 2018 15:54:00 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820acf8d3a4c2009dd9f6524e24509df597b6979c253fb6844d205c90a39c38a`  
		Last Modified: Fri, 06 Jul 2018 15:56:33 GMT  
		Size: 54.5 MB (54537341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad004e7d5bb51b299f9aa27b8ad4705b6d6c100fe379732cb921c547dc0af76`  
		Last Modified: Fri, 06 Jul 2018 19:54:09 GMT  
		Size: 11.7 MB (11703239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae16d3873a0f42a1dcf60bae5c4ab67dc7a31fd3f7a02485a2b963d6047769a9`  
		Last Modified: Fri, 06 Jul 2018 19:54:03 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c17b80dcf79dc8e5aa474e4935fdabd9ae380ed3c7814e67b3a1ca3b1c0f7c65`  
		Last Modified: Fri, 06 Jul 2018 19:55:07 GMT  
		Size: 84.7 MB (84742889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddaa980fd363ed2db17179b200e85afeb22401489b53ceb8552d30da3c0a0318`  
		Last Modified: Fri, 06 Jul 2018 19:54:56 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:1.2`

```console
$ docker pull storm@sha256:e8397056a9c68e116a8e08bed53a437786db5ebd675323558cfe100d2ab99fc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `storm:1.2` - linux; amd64

```console
$ docker pull storm@sha256:c72b7940c9b2ea5b7b87654176aa549ebac221ce0d80b5ad75b2cf07c74d75ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.4 MB (238432393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af8366375a5aae235fd9708b48ff8d633a8d284ab533b629691e3dcb0ff054bf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:51:15 GMT
ENV LANG=C.UTF-8
# Fri, 06 Jul 2018 15:51:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 06 Jul 2018 15:51:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 06 Jul 2018 15:51:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 06 Jul 2018 15:51:44 GMT
ENV JAVA_VERSION=8u171
# Fri, 06 Jul 2018 15:51:44 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Fri, 06 Jul 2018 15:51:48 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 06 Jul 2018 19:51:56 GMT
RUN apk add --no-cache     bash     python     su-exec
# Fri, 06 Jul 2018 19:51:57 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Fri, 06 Jul 2018 19:51:57 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Fri, 06 Jul 2018 19:51:58 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Fri, 06 Jul 2018 19:53:18 GMT
ARG DISTRO_NAME=apache-storm-1.2.2
# Fri, 06 Jul 2018 19:53:41 GMT
# ARGS: DISTRO_NAME=apache-storm-1.2.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 06 Jul 2018 19:53:41 GMT
WORKDIR /apache-storm-1.2.2
# Fri, 06 Jul 2018 19:53:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.2.2/bin
# Fri, 06 Jul 2018 19:53:42 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Fri, 06 Jul 2018 19:53:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4001add52a901363833fa030b1451162d380a5423906a45f64e090a5ee9efb74`  
		Last Modified: Fri, 06 Jul 2018 15:54:00 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820acf8d3a4c2009dd9f6524e24509df597b6979c253fb6844d205c90a39c38a`  
		Last Modified: Fri, 06 Jul 2018 15:56:33 GMT  
		Size: 54.5 MB (54537341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad004e7d5bb51b299f9aa27b8ad4705b6d6c100fe379732cb921c547dc0af76`  
		Last Modified: Fri, 06 Jul 2018 19:54:09 GMT  
		Size: 11.7 MB (11703239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae16d3873a0f42a1dcf60bae5c4ab67dc7a31fd3f7a02485a2b963d6047769a9`  
		Last Modified: Fri, 06 Jul 2018 19:54:03 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee81c1aaab31d5ba49908f8b50737a289bce7417205b0e6e15d7cbd4b8576de`  
		Last Modified: Fri, 06 Jul 2018 19:55:58 GMT  
		Size: 170.1 MB (170086323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d528b97749be58fb4b2ab8a551ac650c38f6526af1bc2b4fecda0ec8d9dda58b`  
		Last Modified: Fri, 06 Jul 2018 19:55:39 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:1.2.2`

```console
$ docker pull storm@sha256:e8397056a9c68e116a8e08bed53a437786db5ebd675323558cfe100d2ab99fc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `storm:1.2.2` - linux; amd64

```console
$ docker pull storm@sha256:c72b7940c9b2ea5b7b87654176aa549ebac221ce0d80b5ad75b2cf07c74d75ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.4 MB (238432393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af8366375a5aae235fd9708b48ff8d633a8d284ab533b629691e3dcb0ff054bf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:51:15 GMT
ENV LANG=C.UTF-8
# Fri, 06 Jul 2018 15:51:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 06 Jul 2018 15:51:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 06 Jul 2018 15:51:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 06 Jul 2018 15:51:44 GMT
ENV JAVA_VERSION=8u171
# Fri, 06 Jul 2018 15:51:44 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Fri, 06 Jul 2018 15:51:48 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 06 Jul 2018 19:51:56 GMT
RUN apk add --no-cache     bash     python     su-exec
# Fri, 06 Jul 2018 19:51:57 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Fri, 06 Jul 2018 19:51:57 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Fri, 06 Jul 2018 19:51:58 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Fri, 06 Jul 2018 19:53:18 GMT
ARG DISTRO_NAME=apache-storm-1.2.2
# Fri, 06 Jul 2018 19:53:41 GMT
# ARGS: DISTRO_NAME=apache-storm-1.2.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 06 Jul 2018 19:53:41 GMT
WORKDIR /apache-storm-1.2.2
# Fri, 06 Jul 2018 19:53:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.2.2/bin
# Fri, 06 Jul 2018 19:53:42 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Fri, 06 Jul 2018 19:53:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4001add52a901363833fa030b1451162d380a5423906a45f64e090a5ee9efb74`  
		Last Modified: Fri, 06 Jul 2018 15:54:00 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820acf8d3a4c2009dd9f6524e24509df597b6979c253fb6844d205c90a39c38a`  
		Last Modified: Fri, 06 Jul 2018 15:56:33 GMT  
		Size: 54.5 MB (54537341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad004e7d5bb51b299f9aa27b8ad4705b6d6c100fe379732cb921c547dc0af76`  
		Last Modified: Fri, 06 Jul 2018 19:54:09 GMT  
		Size: 11.7 MB (11703239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae16d3873a0f42a1dcf60bae5c4ab67dc7a31fd3f7a02485a2b963d6047769a9`  
		Last Modified: Fri, 06 Jul 2018 19:54:03 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee81c1aaab31d5ba49908f8b50737a289bce7417205b0e6e15d7cbd4b8576de`  
		Last Modified: Fri, 06 Jul 2018 19:55:58 GMT  
		Size: 170.1 MB (170086323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d528b97749be58fb4b2ab8a551ac650c38f6526af1bc2b4fecda0ec8d9dda58b`  
		Last Modified: Fri, 06 Jul 2018 19:55:39 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:latest`

```console
$ docker pull storm@sha256:e8397056a9c68e116a8e08bed53a437786db5ebd675323558cfe100d2ab99fc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `storm:latest` - linux; amd64

```console
$ docker pull storm@sha256:c72b7940c9b2ea5b7b87654176aa549ebac221ce0d80b5ad75b2cf07c74d75ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.4 MB (238432393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af8366375a5aae235fd9708b48ff8d633a8d284ab533b629691e3dcb0ff054bf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 15:51:15 GMT
ENV LANG=C.UTF-8
# Fri, 06 Jul 2018 15:51:15 GMT
RUN { 		echo '#!/bin/sh'; 		echo 'set -e'; 		echo; 		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; 	} > /usr/local/bin/docker-java-home 	&& chmod +x /usr/local/bin/docker-java-home
# Fri, 06 Jul 2018 15:51:43 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk/jre
# Fri, 06 Jul 2018 15:51:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
# Fri, 06 Jul 2018 15:51:44 GMT
ENV JAVA_VERSION=8u171
# Fri, 06 Jul 2018 15:51:44 GMT
ENV JAVA_ALPINE_VERSION=8.171.11-r0
# Fri, 06 Jul 2018 15:51:48 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Fri, 06 Jul 2018 19:51:56 GMT
RUN apk add --no-cache     bash     python     su-exec
# Fri, 06 Jul 2018 19:51:57 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Fri, 06 Jul 2018 19:51:57 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Fri, 06 Jul 2018 19:51:58 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Fri, 06 Jul 2018 19:53:18 GMT
ARG DISTRO_NAME=apache-storm-1.2.2
# Fri, 06 Jul 2018 19:53:41 GMT
# ARGS: DISTRO_NAME=apache-storm-1.2.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Fri, 06 Jul 2018 19:53:41 GMT
WORKDIR /apache-storm-1.2.2
# Fri, 06 Jul 2018 19:53:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.2.2/bin
# Fri, 06 Jul 2018 19:53:42 GMT
COPY file:d38c65658d07f922df720b8b043c42b170c1ac8356380e4bb8fe8934403fb0d8 in / 
# Fri, 06 Jul 2018 19:53:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4001add52a901363833fa030b1451162d380a5423906a45f64e090a5ee9efb74`  
		Last Modified: Fri, 06 Jul 2018 15:54:00 GMT  
		Size: 236.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820acf8d3a4c2009dd9f6524e24509df597b6979c253fb6844d205c90a39c38a`  
		Last Modified: Fri, 06 Jul 2018 15:56:33 GMT  
		Size: 54.5 MB (54537341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fad004e7d5bb51b299f9aa27b8ad4705b6d6c100fe379732cb921c547dc0af76`  
		Last Modified: Fri, 06 Jul 2018 19:54:09 GMT  
		Size: 11.7 MB (11703239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae16d3873a0f42a1dcf60bae5c4ab67dc7a31fd3f7a02485a2b963d6047769a9`  
		Last Modified: Fri, 06 Jul 2018 19:54:03 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eee81c1aaab31d5ba49908f8b50737a289bce7417205b0e6e15d7cbd4b8576de`  
		Last Modified: Fri, 06 Jul 2018 19:55:58 GMT  
		Size: 170.1 MB (170086323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d528b97749be58fb4b2ab8a551ac650c38f6526af1bc2b4fecda0ec8d9dda58b`  
		Last Modified: Fri, 06 Jul 2018 19:55:39 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
