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
$ docker pull storm@sha256:692ac753b98e0a9f56e73530fa60dcc72763d3d7def255f0e310630156d315ed
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
$ docker pull storm@sha256:89dfba5533adc72911e394aed2349f66281d9a453af2cbaf6309085c31c15f36
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.5 MB (262543377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7030e5f07bdae5bdf2e6a002cd267cfea15b31bad573c9f039b2e17e51756e71`
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
# Tue, 02 Apr 2019 23:45:43 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Tue, 02 Apr 2019 23:45:46 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 00:41:36 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 03 Apr 2019 00:41:36 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Wed, 03 Apr 2019 00:41:37 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Wed, 03 Apr 2019 00:41:37 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 03 Apr 2019 00:41:37 GMT
ARG DISTRO_NAME=apache-storm-1.0.6
# Wed, 03 Apr 2019 00:41:55 GMT
# ARGS: DISTRO_NAME=apache-storm-1.0.6 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Wed, 03 Apr 2019 00:41:56 GMT
WORKDIR /apache-storm-1.0.6
# Wed, 03 Apr 2019 00:41:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.0.6/bin
# Wed, 03 Apr 2019 00:41:56 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Wed, 03 Apr 2019 00:41:56 GMT
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
	-	`sha256:0c5bd74861e4346a0beed670ef2a6613f3594b458820c50efc5e1044d865e134`  
		Last Modified: Tue, 02 Apr 2019 23:47:30 GMT  
		Size: 54.9 MB (54918577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:224e1078a599c724063c93ab60810996d95dcd6a637a59baa1575599a9d0597e`  
		Last Modified: Wed, 03 Apr 2019 00:42:31 GMT  
		Size: 11.6 MB (11602165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb666fcb88304ed9f797fee7b61841c8faa04526f79bc853b5c2cbec297905be`  
		Last Modified: Wed, 03 Apr 2019 00:42:27 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0019e4a279efa9916858b48bba959cbc2b109797198ecfe7fb54f4389d79e5a4`  
		Last Modified: Wed, 03 Apr 2019 00:42:40 GMT  
		Size: 193.3 MB (193265954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a96daf727d1fe85998039295b1ce0e16f9fe0653b4eff1488b9081818ab47ac`  
		Last Modified: Wed, 03 Apr 2019 00:42:28 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.0` - linux; arm variant v6

```console
$ docker pull storm@sha256:ad1e9ca2fc03c9947d2977505fd4c2847d4bead25840971f5a16b6063c39997b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259601584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80aee458881190b408894a94589898599d9423d70a2d98f312d5d4e5a08e8fdf`
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
# Thu, 28 Mar 2019 07:49:41 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 07:52:46 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 07:52:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 08:50:26 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 03 Apr 2019 08:50:27 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Wed, 03 Apr 2019 08:50:29 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Wed, 03 Apr 2019 08:50:29 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 03 Apr 2019 08:50:30 GMT
ARG DISTRO_NAME=apache-storm-1.0.6
# Wed, 03 Apr 2019 08:50:56 GMT
# ARGS: DISTRO_NAME=apache-storm-1.0.6 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Wed, 03 Apr 2019 08:50:57 GMT
WORKDIR /apache-storm-1.0.6
# Wed, 03 Apr 2019 08:50:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.0.6/bin
# Wed, 03 Apr 2019 08:50:58 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Wed, 03 Apr 2019 08:50:59 GMT
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
	-	`sha256:972acb4c659fffab6be0f752b78857f78dbda522970cf7946a5a622cf65f4797`  
		Last Modified: Wed, 03 Apr 2019 07:53:52 GMT  
		Size: 52.4 MB (52387444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e6492c3d0fce92d4d5948f47da8c57c4cc9c6fc8e60397a379347c8e241bd4`  
		Last Modified: Wed, 03 Apr 2019 08:52:10 GMT  
		Size: 11.4 MB (11405767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a17a88cecffd69b6d4ee2ea4b7ae46447483e9cad6dc7d1187e1cc83a13547`  
		Last Modified: Wed, 03 Apr 2019 08:52:05 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a389253e420612b99ad8de39e46f9aab70956c0a58a92659ced1598a7b5b54`  
		Last Modified: Wed, 03 Apr 2019 08:52:32 GMT  
		Size: 193.3 MB (193265682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5bccfa6b45b0f37eebde91220edcbc267c204987cdf96c2e38aaaff92d751a0`  
		Last Modified: Wed, 03 Apr 2019 08:52:05 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.0` - linux; arm64 variant v8

```console
$ docker pull storm@sha256:7d32c20bc7b3f9bb13a6ee560d7b6f0bcf49e3440f11f3f5f306fac7bd8c8164
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.5 MB (262493420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2a8831b68613efd22a705dced2156d2a4720c217e572eeccc6e074d7bb52fc1`
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
# Thu, 28 Mar 2019 04:09:03 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 09:37:52 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 09:38:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 11:35:58 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 03 Apr 2019 11:35:59 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Wed, 03 Apr 2019 11:36:01 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Wed, 03 Apr 2019 11:36:02 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 03 Apr 2019 11:36:02 GMT
ARG DISTRO_NAME=apache-storm-1.0.6
# Wed, 03 Apr 2019 11:37:07 GMT
# ARGS: DISTRO_NAME=apache-storm-1.0.6 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Wed, 03 Apr 2019 11:37:07 GMT
WORKDIR /apache-storm-1.0.6
# Wed, 03 Apr 2019 11:37:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.0.6/bin
# Wed, 03 Apr 2019 11:37:09 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Wed, 03 Apr 2019 11:37:09 GMT
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
	-	`sha256:d966274452f0f08a7fa71690eb7a8d0847f389e523c9842ad51121d5439b6a3d`  
		Last Modified: Wed, 03 Apr 2019 09:40:42 GMT  
		Size: 54.9 MB (54929195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379524ec8bbb3e129a3b83ec4d218572de065f5d4c780600861f8c7f5d968ca1`  
		Last Modified: Wed, 03 Apr 2019 11:38:58 GMT  
		Size: 11.6 MB (11609469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344f56b90ebd3d8a9b5a4a7e5ebce0aac3c72f04075cac9c205e5f4ffc5ad49c`  
		Last Modified: Wed, 03 Apr 2019 11:38:52 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec11738bcda9a68ad2d2532ed3a2f00b8f41e9ee7c0b3105026fcf574db23aee`  
		Last Modified: Wed, 03 Apr 2019 11:39:20 GMT  
		Size: 193.3 MB (193264866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948e97bb0cd372315b7597f5aeddfd528f6beb782f016ab97298a297ab45bf89`  
		Last Modified: Wed, 03 Apr 2019 11:38:52 GMT  
		Size: 416.0 B  
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
$ docker pull storm@sha256:8b87fb8f21cdf593ed05bd4a547c71372afa2c736a1277155846db01cfc5bdbb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.5 MB (263456655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3f413ad791167ddddebd32768ff3f0201f489642a81f76c227d620e1e70d84d`
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
# Thu, 28 Mar 2019 08:37:47 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 09:10:25 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 09:10:33 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 11:06:04 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 03 Apr 2019 11:06:07 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Wed, 03 Apr 2019 11:06:13 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Wed, 03 Apr 2019 11:06:16 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 03 Apr 2019 11:06:18 GMT
ARG DISTRO_NAME=apache-storm-1.0.6
# Wed, 03 Apr 2019 11:08:36 GMT
# ARGS: DISTRO_NAME=apache-storm-1.0.6 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Wed, 03 Apr 2019 11:08:39 GMT
WORKDIR /apache-storm-1.0.6
# Wed, 03 Apr 2019 11:08:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.0.6/bin
# Wed, 03 Apr 2019 11:08:46 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Wed, 03 Apr 2019 11:08:50 GMT
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
	-	`sha256:bf8f629dab1143ca48d3450e3e249d44bce82649250f91638bb3af77b98c63f2`  
		Last Modified: Wed, 03 Apr 2019 09:13:03 GMT  
		Size: 55.6 MB (55588718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:899a4c7403b01c8a52c27869c3b735ddf496cdd358d5037ab603e2f0239129f2`  
		Last Modified: Wed, 03 Apr 2019 11:11:11 GMT  
		Size: 11.8 MB (11821293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e431c67e86747de6ba5cca38c11f10a8d65cc84d57ef27717166a13ff68d6d60`  
		Last Modified: Wed, 03 Apr 2019 11:11:06 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a4619b4b0db2dd2149acaac8f6388194a55d52a2495f1b523ae95744347688`  
		Last Modified: Wed, 03 Apr 2019 11:11:26 GMT  
		Size: 193.3 MB (193265986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a411204a469143588aa47d5ac1ed28435af6f2e1de4cbc7d3bd5cc73235598c`  
		Last Modified: Wed, 03 Apr 2019 11:11:06 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.0` - linux; s390x

```console
$ docker pull storm@sha256:1dc9a0a4e423efbb859b3fa2a6dee7a5457156a83395fa123dc921144321a0a9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261199200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f67ba4f5db4b3ebf37e41c31ef3cd2b3f516ee7a420ff8726fa2dad277193327`
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
# Thu, 28 Mar 2019 11:49:46 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 11:49:46 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 11:49:50 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 11:49:52 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 12:58:47 GMT
RUN apk add --no-cache     bash     python     su-exec
# Thu, 28 Mar 2019 12:58:47 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Thu, 28 Mar 2019 12:58:48 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Thu, 28 Mar 2019 12:58:49 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Thu, 28 Mar 2019 12:58:49 GMT
ARG DISTRO_NAME=apache-storm-1.0.6
# Thu, 28 Mar 2019 12:59:11 GMT
# ARGS: DISTRO_NAME=apache-storm-1.0.6 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 28 Mar 2019 12:59:11 GMT
WORKDIR /apache-storm-1.0.6
# Thu, 28 Mar 2019 12:59:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.0.6/bin
# Thu, 28 Mar 2019 12:59:12 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Thu, 28 Mar 2019 12:59:12 GMT
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
	-	`sha256:cd30d3493ef1c50cdf283ce268e2a93881c8e726b7cf8e1c6e2f192b7e9ad19a`  
		Last Modified: Thu, 28 Mar 2019 11:53:46 GMT  
		Size: 51.5 MB (51504445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3217b4d39f31bdf50a940b9f6931cab97ac7ce6b67ac29a458b00c59cd4025e1`  
		Last Modified: Thu, 28 Mar 2019 11:53:41 GMT  
		Size: 2.2 MB (2191965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02c889a912879f4440a4d33419b131ae32e8bd40aeee3f08beb2d81e0eb6249`  
		Last Modified: Thu, 28 Mar 2019 13:00:15 GMT  
		Size: 11.7 MB (11694630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0e0ef8ad1bd58a78fded490320b03781ee40b4dbec485e568708842a783751`  
		Last Modified: Thu, 28 Mar 2019 13:00:11 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f27f33f31a9316120abf4733bb382c098e29760c180bf9dab968ed34a0022e`  
		Last Modified: Thu, 28 Mar 2019 13:00:27 GMT  
		Size: 193.3 MB (193264902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c16eeecfcdc7dd06b4737b04cda327580e810c4d3fc80b2e5133dd1715a23499`  
		Last Modified: Thu, 28 Mar 2019 13:00:11 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:1.0.6`

```console
$ docker pull storm@sha256:692ac753b98e0a9f56e73530fa60dcc72763d3d7def255f0e310630156d315ed
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
$ docker pull storm@sha256:89dfba5533adc72911e394aed2349f66281d9a453af2cbaf6309085c31c15f36
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.5 MB (262543377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7030e5f07bdae5bdf2e6a002cd267cfea15b31bad573c9f039b2e17e51756e71`
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
# Tue, 02 Apr 2019 23:45:43 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Tue, 02 Apr 2019 23:45:46 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 00:41:36 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 03 Apr 2019 00:41:36 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Wed, 03 Apr 2019 00:41:37 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Wed, 03 Apr 2019 00:41:37 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 03 Apr 2019 00:41:37 GMT
ARG DISTRO_NAME=apache-storm-1.0.6
# Wed, 03 Apr 2019 00:41:55 GMT
# ARGS: DISTRO_NAME=apache-storm-1.0.6 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Wed, 03 Apr 2019 00:41:56 GMT
WORKDIR /apache-storm-1.0.6
# Wed, 03 Apr 2019 00:41:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.0.6/bin
# Wed, 03 Apr 2019 00:41:56 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Wed, 03 Apr 2019 00:41:56 GMT
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
	-	`sha256:0c5bd74861e4346a0beed670ef2a6613f3594b458820c50efc5e1044d865e134`  
		Last Modified: Tue, 02 Apr 2019 23:47:30 GMT  
		Size: 54.9 MB (54918577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:224e1078a599c724063c93ab60810996d95dcd6a637a59baa1575599a9d0597e`  
		Last Modified: Wed, 03 Apr 2019 00:42:31 GMT  
		Size: 11.6 MB (11602165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb666fcb88304ed9f797fee7b61841c8faa04526f79bc853b5c2cbec297905be`  
		Last Modified: Wed, 03 Apr 2019 00:42:27 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0019e4a279efa9916858b48bba959cbc2b109797198ecfe7fb54f4389d79e5a4`  
		Last Modified: Wed, 03 Apr 2019 00:42:40 GMT  
		Size: 193.3 MB (193265954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a96daf727d1fe85998039295b1ce0e16f9fe0653b4eff1488b9081818ab47ac`  
		Last Modified: Wed, 03 Apr 2019 00:42:28 GMT  
		Size: 414.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.0.6` - linux; arm variant v6

```console
$ docker pull storm@sha256:ad1e9ca2fc03c9947d2977505fd4c2847d4bead25840971f5a16b6063c39997b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.6 MB (259601584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80aee458881190b408894a94589898599d9423d70a2d98f312d5d4e5a08e8fdf`
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
# Thu, 28 Mar 2019 07:49:41 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 07:52:46 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 07:52:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 08:50:26 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 03 Apr 2019 08:50:27 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Wed, 03 Apr 2019 08:50:29 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Wed, 03 Apr 2019 08:50:29 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 03 Apr 2019 08:50:30 GMT
ARG DISTRO_NAME=apache-storm-1.0.6
# Wed, 03 Apr 2019 08:50:56 GMT
# ARGS: DISTRO_NAME=apache-storm-1.0.6 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Wed, 03 Apr 2019 08:50:57 GMT
WORKDIR /apache-storm-1.0.6
# Wed, 03 Apr 2019 08:50:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.0.6/bin
# Wed, 03 Apr 2019 08:50:58 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Wed, 03 Apr 2019 08:50:59 GMT
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
	-	`sha256:972acb4c659fffab6be0f752b78857f78dbda522970cf7946a5a622cf65f4797`  
		Last Modified: Wed, 03 Apr 2019 07:53:52 GMT  
		Size: 52.4 MB (52387444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e6492c3d0fce92d4d5948f47da8c57c4cc9c6fc8e60397a379347c8e241bd4`  
		Last Modified: Wed, 03 Apr 2019 08:52:10 GMT  
		Size: 11.4 MB (11405767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a17a88cecffd69b6d4ee2ea4b7ae46447483e9cad6dc7d1187e1cc83a13547`  
		Last Modified: Wed, 03 Apr 2019 08:52:05 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a389253e420612b99ad8de39e46f9aab70956c0a58a92659ced1598a7b5b54`  
		Last Modified: Wed, 03 Apr 2019 08:52:32 GMT  
		Size: 193.3 MB (193265682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5bccfa6b45b0f37eebde91220edcbc267c204987cdf96c2e38aaaff92d751a0`  
		Last Modified: Wed, 03 Apr 2019 08:52:05 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.0.6` - linux; arm64 variant v8

```console
$ docker pull storm@sha256:7d32c20bc7b3f9bb13a6ee560d7b6f0bcf49e3440f11f3f5f306fac7bd8c8164
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.5 MB (262493420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2a8831b68613efd22a705dced2156d2a4720c217e572eeccc6e074d7bb52fc1`
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
# Thu, 28 Mar 2019 04:09:03 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 09:37:52 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 09:38:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 11:35:58 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 03 Apr 2019 11:35:59 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Wed, 03 Apr 2019 11:36:01 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Wed, 03 Apr 2019 11:36:02 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 03 Apr 2019 11:36:02 GMT
ARG DISTRO_NAME=apache-storm-1.0.6
# Wed, 03 Apr 2019 11:37:07 GMT
# ARGS: DISTRO_NAME=apache-storm-1.0.6 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Wed, 03 Apr 2019 11:37:07 GMT
WORKDIR /apache-storm-1.0.6
# Wed, 03 Apr 2019 11:37:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.0.6/bin
# Wed, 03 Apr 2019 11:37:09 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Wed, 03 Apr 2019 11:37:09 GMT
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
	-	`sha256:d966274452f0f08a7fa71690eb7a8d0847f389e523c9842ad51121d5439b6a3d`  
		Last Modified: Wed, 03 Apr 2019 09:40:42 GMT  
		Size: 54.9 MB (54929195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379524ec8bbb3e129a3b83ec4d218572de065f5d4c780600861f8c7f5d968ca1`  
		Last Modified: Wed, 03 Apr 2019 11:38:58 GMT  
		Size: 11.6 MB (11609469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344f56b90ebd3d8a9b5a4a7e5ebce0aac3c72f04075cac9c205e5f4ffc5ad49c`  
		Last Modified: Wed, 03 Apr 2019 11:38:52 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec11738bcda9a68ad2d2532ed3a2f00b8f41e9ee7c0b3105026fcf574db23aee`  
		Last Modified: Wed, 03 Apr 2019 11:39:20 GMT  
		Size: 193.3 MB (193264866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948e97bb0cd372315b7597f5aeddfd528f6beb782f016ab97298a297ab45bf89`  
		Last Modified: Wed, 03 Apr 2019 11:38:52 GMT  
		Size: 416.0 B  
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
$ docker pull storm@sha256:8b87fb8f21cdf593ed05bd4a547c71372afa2c736a1277155846db01cfc5bdbb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **263.5 MB (263456655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3f413ad791167ddddebd32768ff3f0201f489642a81f76c227d620e1e70d84d`
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
# Thu, 28 Mar 2019 08:37:47 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 09:10:25 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 09:10:33 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 11:06:04 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 03 Apr 2019 11:06:07 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Wed, 03 Apr 2019 11:06:13 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Wed, 03 Apr 2019 11:06:16 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 03 Apr 2019 11:06:18 GMT
ARG DISTRO_NAME=apache-storm-1.0.6
# Wed, 03 Apr 2019 11:08:36 GMT
# ARGS: DISTRO_NAME=apache-storm-1.0.6 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Wed, 03 Apr 2019 11:08:39 GMT
WORKDIR /apache-storm-1.0.6
# Wed, 03 Apr 2019 11:08:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.0.6/bin
# Wed, 03 Apr 2019 11:08:46 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Wed, 03 Apr 2019 11:08:50 GMT
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
	-	`sha256:bf8f629dab1143ca48d3450e3e249d44bce82649250f91638bb3af77b98c63f2`  
		Last Modified: Wed, 03 Apr 2019 09:13:03 GMT  
		Size: 55.6 MB (55588718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:899a4c7403b01c8a52c27869c3b735ddf496cdd358d5037ab603e2f0239129f2`  
		Last Modified: Wed, 03 Apr 2019 11:11:11 GMT  
		Size: 11.8 MB (11821293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e431c67e86747de6ba5cca38c11f10a8d65cc84d57ef27717166a13ff68d6d60`  
		Last Modified: Wed, 03 Apr 2019 11:11:06 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98a4619b4b0db2dd2149acaac8f6388194a55d52a2495f1b523ae95744347688`  
		Last Modified: Wed, 03 Apr 2019 11:11:26 GMT  
		Size: 193.3 MB (193265986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a411204a469143588aa47d5ac1ed28435af6f2e1de4cbc7d3bd5cc73235598c`  
		Last Modified: Wed, 03 Apr 2019 11:11:06 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.0.6` - linux; s390x

```console
$ docker pull storm@sha256:1dc9a0a4e423efbb859b3fa2a6dee7a5457156a83395fa123dc921144321a0a9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **261.2 MB (261199200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f67ba4f5db4b3ebf37e41c31ef3cd2b3f516ee7a420ff8726fa2dad277193327`
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
# Thu, 28 Mar 2019 11:49:46 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 11:49:46 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 11:49:50 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 11:49:52 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 12:58:47 GMT
RUN apk add --no-cache     bash     python     su-exec
# Thu, 28 Mar 2019 12:58:47 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Thu, 28 Mar 2019 12:58:48 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Thu, 28 Mar 2019 12:58:49 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Thu, 28 Mar 2019 12:58:49 GMT
ARG DISTRO_NAME=apache-storm-1.0.6
# Thu, 28 Mar 2019 12:59:11 GMT
# ARGS: DISTRO_NAME=apache-storm-1.0.6 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 28 Mar 2019 12:59:11 GMT
WORKDIR /apache-storm-1.0.6
# Thu, 28 Mar 2019 12:59:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.0.6/bin
# Thu, 28 Mar 2019 12:59:12 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Thu, 28 Mar 2019 12:59:12 GMT
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
	-	`sha256:cd30d3493ef1c50cdf283ce268e2a93881c8e726b7cf8e1c6e2f192b7e9ad19a`  
		Last Modified: Thu, 28 Mar 2019 11:53:46 GMT  
		Size: 51.5 MB (51504445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3217b4d39f31bdf50a940b9f6931cab97ac7ce6b67ac29a458b00c59cd4025e1`  
		Last Modified: Thu, 28 Mar 2019 11:53:41 GMT  
		Size: 2.2 MB (2191965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02c889a912879f4440a4d33419b131ae32e8bd40aeee3f08beb2d81e0eb6249`  
		Last Modified: Thu, 28 Mar 2019 13:00:15 GMT  
		Size: 11.7 MB (11694630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0e0ef8ad1bd58a78fded490320b03781ee40b4dbec485e568708842a783751`  
		Last Modified: Thu, 28 Mar 2019 13:00:11 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5f27f33f31a9316120abf4733bb382c098e29760c180bf9dab968ed34a0022e`  
		Last Modified: Thu, 28 Mar 2019 13:00:27 GMT  
		Size: 193.3 MB (193264902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c16eeecfcdc7dd06b4737b04cda327580e810c4d3fc80b2e5133dd1715a23499`  
		Last Modified: Thu, 28 Mar 2019 13:00:11 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:1.1`

```console
$ docker pull storm@sha256:346edffba374e7c798a8c7a7fa0de27e89a3bb6e6268c16041b6ff6c44fb3afb
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
$ docker pull storm@sha256:54ae3d29c1cae67b9a45fc9907cbf1e783d9237f32df9c7155dbfc072365fa4e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.8 MB (152792625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3facc019cefbee3430347edc13a9e747668b773e985940a732f366a8f23e5cd`
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
# Tue, 02 Apr 2019 23:45:43 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Tue, 02 Apr 2019 23:45:46 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 00:41:36 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 03 Apr 2019 00:41:36 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Wed, 03 Apr 2019 00:41:37 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Wed, 03 Apr 2019 00:41:37 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 03 Apr 2019 00:42:00 GMT
ARG DISTRO_NAME=apache-storm-1.1.3
# Wed, 03 Apr 2019 00:42:06 GMT
# ARGS: DISTRO_NAME=apache-storm-1.1.3 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Wed, 03 Apr 2019 00:42:06 GMT
WORKDIR /apache-storm-1.1.3
# Wed, 03 Apr 2019 00:42:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.1.3/bin
# Wed, 03 Apr 2019 00:42:06 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Wed, 03 Apr 2019 00:42:07 GMT
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
	-	`sha256:0c5bd74861e4346a0beed670ef2a6613f3594b458820c50efc5e1044d865e134`  
		Last Modified: Tue, 02 Apr 2019 23:47:30 GMT  
		Size: 54.9 MB (54918577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:224e1078a599c724063c93ab60810996d95dcd6a637a59baa1575599a9d0597e`  
		Last Modified: Wed, 03 Apr 2019 00:42:31 GMT  
		Size: 11.6 MB (11602165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb666fcb88304ed9f797fee7b61841c8faa04526f79bc853b5c2cbec297905be`  
		Last Modified: Wed, 03 Apr 2019 00:42:27 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61fb8275e3896eb27dff79cf4c0e7c7932f139f40bea41ba7ba5b3caa9c635f4`  
		Last Modified: Wed, 03 Apr 2019 00:42:50 GMT  
		Size: 83.5 MB (83515201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cffa0ab8fff4237f96cdb12587b297515e56f5647f32f4d52401fbd75c6edfb`  
		Last Modified: Wed, 03 Apr 2019 00:42:44 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.1` - linux; arm variant v6

```console
$ docker pull storm@sha256:116ac9a5f641d304823236d4a8a4594e5f768b78156ec320212b34a6443a922a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.9 MB (149850712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62f817c31a6d98f85774e3c0233a692408d648c58b03e6d8d2d426ef2e283c1b`
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
# Thu, 28 Mar 2019 07:49:41 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 07:52:46 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 07:52:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 08:50:26 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 03 Apr 2019 08:50:27 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Wed, 03 Apr 2019 08:50:29 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Wed, 03 Apr 2019 08:50:29 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 03 Apr 2019 08:51:06 GMT
ARG DISTRO_NAME=apache-storm-1.1.3
# Wed, 03 Apr 2019 08:51:19 GMT
# ARGS: DISTRO_NAME=apache-storm-1.1.3 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Wed, 03 Apr 2019 08:51:20 GMT
WORKDIR /apache-storm-1.1.3
# Wed, 03 Apr 2019 08:51:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.1.3/bin
# Wed, 03 Apr 2019 08:51:21 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Wed, 03 Apr 2019 08:51:21 GMT
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
	-	`sha256:972acb4c659fffab6be0f752b78857f78dbda522970cf7946a5a622cf65f4797`  
		Last Modified: Wed, 03 Apr 2019 07:53:52 GMT  
		Size: 52.4 MB (52387444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e6492c3d0fce92d4d5948f47da8c57c4cc9c6fc8e60397a379347c8e241bd4`  
		Last Modified: Wed, 03 Apr 2019 08:52:10 GMT  
		Size: 11.4 MB (11405767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a17a88cecffd69b6d4ee2ea4b7ae46447483e9cad6dc7d1187e1cc83a13547`  
		Last Modified: Wed, 03 Apr 2019 08:52:05 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8aa06c2be83b2de258071dc6a5425ca14f750238a8bebadc98320d2872033c`  
		Last Modified: Wed, 03 Apr 2019 08:52:54 GMT  
		Size: 83.5 MB (83514810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c4a32e55c8336ba98b0c2ef96a7aad1534be64388924fe2d28d242eb76e97b1`  
		Last Modified: Wed, 03 Apr 2019 08:52:41 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.1` - linux; arm64 variant v8

```console
$ docker pull storm@sha256:7267f4b610044b86d18c67860362ba9e685252c8894e47d55301ed5a6e0bf545
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.7 MB (152742686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbd3937a067273ead55cd109319538df4943ceba190496fea1b9459dbe4d05a3`
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
# Thu, 28 Mar 2019 04:09:03 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 09:37:52 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 09:38:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 11:35:58 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 03 Apr 2019 11:35:59 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Wed, 03 Apr 2019 11:36:01 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Wed, 03 Apr 2019 11:36:02 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 03 Apr 2019 11:37:14 GMT
ARG DISTRO_NAME=apache-storm-1.1.3
# Wed, 03 Apr 2019 11:37:36 GMT
# ARGS: DISTRO_NAME=apache-storm-1.1.3 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Wed, 03 Apr 2019 11:37:39 GMT
WORKDIR /apache-storm-1.1.3
# Wed, 03 Apr 2019 11:37:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.1.3/bin
# Wed, 03 Apr 2019 11:37:40 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Wed, 03 Apr 2019 11:37:41 GMT
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
	-	`sha256:d966274452f0f08a7fa71690eb7a8d0847f389e523c9842ad51121d5439b6a3d`  
		Last Modified: Wed, 03 Apr 2019 09:40:42 GMT  
		Size: 54.9 MB (54929195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379524ec8bbb3e129a3b83ec4d218572de065f5d4c780600861f8c7f5d968ca1`  
		Last Modified: Wed, 03 Apr 2019 11:38:58 GMT  
		Size: 11.6 MB (11609469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344f56b90ebd3d8a9b5a4a7e5ebce0aac3c72f04075cac9c205e5f4ffc5ad49c`  
		Last Modified: Wed, 03 Apr 2019 11:38:52 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e3d82776ca2bdbb5881dc1ebe1407252253425d4343007ab23231c35cba7c0`  
		Last Modified: Wed, 03 Apr 2019 11:39:41 GMT  
		Size: 83.5 MB (83514132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55984af77ef2cadc353d71b9dea3dd0f2dd33620f858000799e654990369afd`  
		Last Modified: Wed, 03 Apr 2019 11:39:29 GMT  
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
$ docker pull storm@sha256:8369e3fab8ab8b9db10769f30361d3c60e1fcef13ba63d7b323d437514e14aae
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.7 MB (153705794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:372496f74ecf02902ef8a4c2436d8402c91ef4d4669de599f5a5951e326cd112`
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
# Thu, 28 Mar 2019 08:37:47 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 09:10:25 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 09:10:33 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 11:06:04 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 03 Apr 2019 11:06:07 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Wed, 03 Apr 2019 11:06:13 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Wed, 03 Apr 2019 11:06:16 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 03 Apr 2019 11:09:04 GMT
ARG DISTRO_NAME=apache-storm-1.1.3
# Wed, 03 Apr 2019 11:09:50 GMT
# ARGS: DISTRO_NAME=apache-storm-1.1.3 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Wed, 03 Apr 2019 11:09:55 GMT
WORKDIR /apache-storm-1.1.3
# Wed, 03 Apr 2019 11:09:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.1.3/bin
# Wed, 03 Apr 2019 11:09:59 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Wed, 03 Apr 2019 11:10:03 GMT
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
	-	`sha256:bf8f629dab1143ca48d3450e3e249d44bce82649250f91638bb3af77b98c63f2`  
		Last Modified: Wed, 03 Apr 2019 09:13:03 GMT  
		Size: 55.6 MB (55588718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:899a4c7403b01c8a52c27869c3b735ddf496cdd358d5037ab603e2f0239129f2`  
		Last Modified: Wed, 03 Apr 2019 11:11:11 GMT  
		Size: 11.8 MB (11821293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e431c67e86747de6ba5cca38c11f10a8d65cc84d57ef27717166a13ff68d6d60`  
		Last Modified: Wed, 03 Apr 2019 11:11:06 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e506be10649a4456a7e611e8c3044de69ae5ec2676c4e0940dd7b7203433a0d1`  
		Last Modified: Wed, 03 Apr 2019 11:11:53 GMT  
		Size: 83.5 MB (83515125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4c39db14121d8623ab33a6e4bbefd8d0f6ea21d93f75359a2caba7f70d203f`  
		Last Modified: Wed, 03 Apr 2019 11:11:39 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.1` - linux; s390x

```console
$ docker pull storm@sha256:882dfc799fb4a8e107e2f258bfcdce1ec0d7ec99aeb93f2aa3490f5daa328d35
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.4 MB (151448464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e82369371075d2802abcf192dc1a8f37985d58350af4d0ff7eadef26268534cf`
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
# Thu, 28 Mar 2019 11:49:46 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 11:49:46 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 11:49:50 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 11:49:52 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 12:58:47 GMT
RUN apk add --no-cache     bash     python     su-exec
# Thu, 28 Mar 2019 12:58:47 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Thu, 28 Mar 2019 12:58:48 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Thu, 28 Mar 2019 12:58:49 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Thu, 28 Mar 2019 12:59:17 GMT
ARG DISTRO_NAME=apache-storm-1.1.3
# Thu, 28 Mar 2019 12:59:28 GMT
# ARGS: DISTRO_NAME=apache-storm-1.1.3 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 28 Mar 2019 12:59:28 GMT
WORKDIR /apache-storm-1.1.3
# Thu, 28 Mar 2019 12:59:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.1.3/bin
# Thu, 28 Mar 2019 12:59:29 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Thu, 28 Mar 2019 12:59:29 GMT
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
	-	`sha256:cd30d3493ef1c50cdf283ce268e2a93881c8e726b7cf8e1c6e2f192b7e9ad19a`  
		Last Modified: Thu, 28 Mar 2019 11:53:46 GMT  
		Size: 51.5 MB (51504445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3217b4d39f31bdf50a940b9f6931cab97ac7ce6b67ac29a458b00c59cd4025e1`  
		Last Modified: Thu, 28 Mar 2019 11:53:41 GMT  
		Size: 2.2 MB (2191965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02c889a912879f4440a4d33419b131ae32e8bd40aeee3f08beb2d81e0eb6249`  
		Last Modified: Thu, 28 Mar 2019 13:00:15 GMT  
		Size: 11.7 MB (11694630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0e0ef8ad1bd58a78fded490320b03781ee40b4dbec485e568708842a783751`  
		Last Modified: Thu, 28 Mar 2019 13:00:11 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:879882602236c4e0e0f64a460bbdc61b213b68a934ba322443fb570eed8dac7a`  
		Last Modified: Thu, 28 Mar 2019 13:00:40 GMT  
		Size: 83.5 MB (83514165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3681fb4cfc37f3ae19cbea9559e98914871edf3a3e15529647315f596929841a`  
		Last Modified: Thu, 28 Mar 2019 13:00:33 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:1.1.3`

```console
$ docker pull storm@sha256:346edffba374e7c798a8c7a7fa0de27e89a3bb6e6268c16041b6ff6c44fb3afb
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
$ docker pull storm@sha256:54ae3d29c1cae67b9a45fc9907cbf1e783d9237f32df9c7155dbfc072365fa4e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.8 MB (152792625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3facc019cefbee3430347edc13a9e747668b773e985940a732f366a8f23e5cd`
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
# Tue, 02 Apr 2019 23:45:43 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Tue, 02 Apr 2019 23:45:46 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 00:41:36 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 03 Apr 2019 00:41:36 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Wed, 03 Apr 2019 00:41:37 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Wed, 03 Apr 2019 00:41:37 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 03 Apr 2019 00:42:00 GMT
ARG DISTRO_NAME=apache-storm-1.1.3
# Wed, 03 Apr 2019 00:42:06 GMT
# ARGS: DISTRO_NAME=apache-storm-1.1.3 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Wed, 03 Apr 2019 00:42:06 GMT
WORKDIR /apache-storm-1.1.3
# Wed, 03 Apr 2019 00:42:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.1.3/bin
# Wed, 03 Apr 2019 00:42:06 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Wed, 03 Apr 2019 00:42:07 GMT
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
	-	`sha256:0c5bd74861e4346a0beed670ef2a6613f3594b458820c50efc5e1044d865e134`  
		Last Modified: Tue, 02 Apr 2019 23:47:30 GMT  
		Size: 54.9 MB (54918577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:224e1078a599c724063c93ab60810996d95dcd6a637a59baa1575599a9d0597e`  
		Last Modified: Wed, 03 Apr 2019 00:42:31 GMT  
		Size: 11.6 MB (11602165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb666fcb88304ed9f797fee7b61841c8faa04526f79bc853b5c2cbec297905be`  
		Last Modified: Wed, 03 Apr 2019 00:42:27 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61fb8275e3896eb27dff79cf4c0e7c7932f139f40bea41ba7ba5b3caa9c635f4`  
		Last Modified: Wed, 03 Apr 2019 00:42:50 GMT  
		Size: 83.5 MB (83515201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cffa0ab8fff4237f96cdb12587b297515e56f5647f32f4d52401fbd75c6edfb`  
		Last Modified: Wed, 03 Apr 2019 00:42:44 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.1.3` - linux; arm variant v6

```console
$ docker pull storm@sha256:116ac9a5f641d304823236d4a8a4594e5f768b78156ec320212b34a6443a922a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **149.9 MB (149850712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62f817c31a6d98f85774e3c0233a692408d648c58b03e6d8d2d426ef2e283c1b`
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
# Thu, 28 Mar 2019 07:49:41 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 07:52:46 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 07:52:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 08:50:26 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 03 Apr 2019 08:50:27 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Wed, 03 Apr 2019 08:50:29 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Wed, 03 Apr 2019 08:50:29 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 03 Apr 2019 08:51:06 GMT
ARG DISTRO_NAME=apache-storm-1.1.3
# Wed, 03 Apr 2019 08:51:19 GMT
# ARGS: DISTRO_NAME=apache-storm-1.1.3 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Wed, 03 Apr 2019 08:51:20 GMT
WORKDIR /apache-storm-1.1.3
# Wed, 03 Apr 2019 08:51:20 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.1.3/bin
# Wed, 03 Apr 2019 08:51:21 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Wed, 03 Apr 2019 08:51:21 GMT
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
	-	`sha256:972acb4c659fffab6be0f752b78857f78dbda522970cf7946a5a622cf65f4797`  
		Last Modified: Wed, 03 Apr 2019 07:53:52 GMT  
		Size: 52.4 MB (52387444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e6492c3d0fce92d4d5948f47da8c57c4cc9c6fc8e60397a379347c8e241bd4`  
		Last Modified: Wed, 03 Apr 2019 08:52:10 GMT  
		Size: 11.4 MB (11405767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a17a88cecffd69b6d4ee2ea4b7ae46447483e9cad6dc7d1187e1cc83a13547`  
		Last Modified: Wed, 03 Apr 2019 08:52:05 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b8aa06c2be83b2de258071dc6a5425ca14f750238a8bebadc98320d2872033c`  
		Last Modified: Wed, 03 Apr 2019 08:52:54 GMT  
		Size: 83.5 MB (83514810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c4a32e55c8336ba98b0c2ef96a7aad1534be64388924fe2d28d242eb76e97b1`  
		Last Modified: Wed, 03 Apr 2019 08:52:41 GMT  
		Size: 415.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.1.3` - linux; arm64 variant v8

```console
$ docker pull storm@sha256:7267f4b610044b86d18c67860362ba9e685252c8894e47d55301ed5a6e0bf545
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **152.7 MB (152742686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbd3937a067273ead55cd109319538df4943ceba190496fea1b9459dbe4d05a3`
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
# Thu, 28 Mar 2019 04:09:03 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 09:37:52 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 09:38:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 11:35:58 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 03 Apr 2019 11:35:59 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Wed, 03 Apr 2019 11:36:01 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Wed, 03 Apr 2019 11:36:02 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 03 Apr 2019 11:37:14 GMT
ARG DISTRO_NAME=apache-storm-1.1.3
# Wed, 03 Apr 2019 11:37:36 GMT
# ARGS: DISTRO_NAME=apache-storm-1.1.3 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Wed, 03 Apr 2019 11:37:39 GMT
WORKDIR /apache-storm-1.1.3
# Wed, 03 Apr 2019 11:37:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.1.3/bin
# Wed, 03 Apr 2019 11:37:40 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Wed, 03 Apr 2019 11:37:41 GMT
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
	-	`sha256:d966274452f0f08a7fa71690eb7a8d0847f389e523c9842ad51121d5439b6a3d`  
		Last Modified: Wed, 03 Apr 2019 09:40:42 GMT  
		Size: 54.9 MB (54929195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379524ec8bbb3e129a3b83ec4d218572de065f5d4c780600861f8c7f5d968ca1`  
		Last Modified: Wed, 03 Apr 2019 11:38:58 GMT  
		Size: 11.6 MB (11609469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344f56b90ebd3d8a9b5a4a7e5ebce0aac3c72f04075cac9c205e5f4ffc5ad49c`  
		Last Modified: Wed, 03 Apr 2019 11:38:52 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e3d82776ca2bdbb5881dc1ebe1407252253425d4343007ab23231c35cba7c0`  
		Last Modified: Wed, 03 Apr 2019 11:39:41 GMT  
		Size: 83.5 MB (83514132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55984af77ef2cadc353d71b9dea3dd0f2dd33620f858000799e654990369afd`  
		Last Modified: Wed, 03 Apr 2019 11:39:29 GMT  
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
$ docker pull storm@sha256:8369e3fab8ab8b9db10769f30361d3c60e1fcef13ba63d7b323d437514e14aae
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.7 MB (153705794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:372496f74ecf02902ef8a4c2436d8402c91ef4d4669de599f5a5951e326cd112`
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
# Thu, 28 Mar 2019 08:37:47 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 09:10:25 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 09:10:33 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 11:06:04 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 03 Apr 2019 11:06:07 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Wed, 03 Apr 2019 11:06:13 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Wed, 03 Apr 2019 11:06:16 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 03 Apr 2019 11:09:04 GMT
ARG DISTRO_NAME=apache-storm-1.1.3
# Wed, 03 Apr 2019 11:09:50 GMT
# ARGS: DISTRO_NAME=apache-storm-1.1.3 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Wed, 03 Apr 2019 11:09:55 GMT
WORKDIR /apache-storm-1.1.3
# Wed, 03 Apr 2019 11:09:58 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.1.3/bin
# Wed, 03 Apr 2019 11:09:59 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Wed, 03 Apr 2019 11:10:03 GMT
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
	-	`sha256:bf8f629dab1143ca48d3450e3e249d44bce82649250f91638bb3af77b98c63f2`  
		Last Modified: Wed, 03 Apr 2019 09:13:03 GMT  
		Size: 55.6 MB (55588718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:899a4c7403b01c8a52c27869c3b735ddf496cdd358d5037ab603e2f0239129f2`  
		Last Modified: Wed, 03 Apr 2019 11:11:11 GMT  
		Size: 11.8 MB (11821293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e431c67e86747de6ba5cca38c11f10a8d65cc84d57ef27717166a13ff68d6d60`  
		Last Modified: Wed, 03 Apr 2019 11:11:06 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e506be10649a4456a7e611e8c3044de69ae5ec2676c4e0940dd7b7203433a0d1`  
		Last Modified: Wed, 03 Apr 2019 11:11:53 GMT  
		Size: 83.5 MB (83515125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e4c39db14121d8623ab33a6e4bbefd8d0f6ea21d93f75359a2caba7f70d203f`  
		Last Modified: Wed, 03 Apr 2019 11:11:39 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.1.3` - linux; s390x

```console
$ docker pull storm@sha256:882dfc799fb4a8e107e2f258bfcdce1ec0d7ec99aeb93f2aa3490f5daa328d35
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.4 MB (151448464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e82369371075d2802abcf192dc1a8f37985d58350af4d0ff7eadef26268534cf`
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
# Thu, 28 Mar 2019 11:49:46 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 11:49:46 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 11:49:50 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 11:49:52 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 12:58:47 GMT
RUN apk add --no-cache     bash     python     su-exec
# Thu, 28 Mar 2019 12:58:47 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Thu, 28 Mar 2019 12:58:48 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Thu, 28 Mar 2019 12:58:49 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Thu, 28 Mar 2019 12:59:17 GMT
ARG DISTRO_NAME=apache-storm-1.1.3
# Thu, 28 Mar 2019 12:59:28 GMT
# ARGS: DISTRO_NAME=apache-storm-1.1.3 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 28 Mar 2019 12:59:28 GMT
WORKDIR /apache-storm-1.1.3
# Thu, 28 Mar 2019 12:59:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.1.3/bin
# Thu, 28 Mar 2019 12:59:29 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Thu, 28 Mar 2019 12:59:29 GMT
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
	-	`sha256:cd30d3493ef1c50cdf283ce268e2a93881c8e726b7cf8e1c6e2f192b7e9ad19a`  
		Last Modified: Thu, 28 Mar 2019 11:53:46 GMT  
		Size: 51.5 MB (51504445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3217b4d39f31bdf50a940b9f6931cab97ac7ce6b67ac29a458b00c59cd4025e1`  
		Last Modified: Thu, 28 Mar 2019 11:53:41 GMT  
		Size: 2.2 MB (2191965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02c889a912879f4440a4d33419b131ae32e8bd40aeee3f08beb2d81e0eb6249`  
		Last Modified: Thu, 28 Mar 2019 13:00:15 GMT  
		Size: 11.7 MB (11694630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0e0ef8ad1bd58a78fded490320b03781ee40b4dbec485e568708842a783751`  
		Last Modified: Thu, 28 Mar 2019 13:00:11 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:879882602236c4e0e0f64a460bbdc61b213b68a934ba322443fb570eed8dac7a`  
		Last Modified: Thu, 28 Mar 2019 13:00:40 GMT  
		Size: 83.5 MB (83514165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3681fb4cfc37f3ae19cbea9559e98914871edf3a3e15529647315f596929841a`  
		Last Modified: Thu, 28 Mar 2019 13:00:33 GMT  
		Size: 417.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:1.2`

```console
$ docker pull storm@sha256:638cd3fd3ef322153628204abbfc53e28a0adb5ba371637a3ccba68743027e85
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
$ docker pull storm@sha256:165cdefa3035ab4a7cff165717d2acf2d4ae992258e060fd4cd0b1488153cf5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.1 MB (238134830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8129512a3e3cf25122be38f3d9218ec7ef6978947aa0ba0813f2a992d5b18dff`
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
# Tue, 02 Apr 2019 23:45:43 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Tue, 02 Apr 2019 23:45:46 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 00:41:36 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 03 Apr 2019 00:41:36 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Wed, 03 Apr 2019 00:41:37 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Wed, 03 Apr 2019 00:41:37 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 03 Apr 2019 00:42:10 GMT
ARG DISTRO_NAME=apache-storm-1.2.2
# Wed, 03 Apr 2019 00:42:19 GMT
# ARGS: DISTRO_NAME=apache-storm-1.2.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Wed, 03 Apr 2019 00:42:19 GMT
WORKDIR /apache-storm-1.2.2
# Wed, 03 Apr 2019 00:42:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.2.2/bin
# Wed, 03 Apr 2019 00:42:19 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Wed, 03 Apr 2019 00:42:19 GMT
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
	-	`sha256:0c5bd74861e4346a0beed670ef2a6613f3594b458820c50efc5e1044d865e134`  
		Last Modified: Tue, 02 Apr 2019 23:47:30 GMT  
		Size: 54.9 MB (54918577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:224e1078a599c724063c93ab60810996d95dcd6a637a59baa1575599a9d0597e`  
		Last Modified: Wed, 03 Apr 2019 00:42:31 GMT  
		Size: 11.6 MB (11602165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb666fcb88304ed9f797fee7b61841c8faa04526f79bc853b5c2cbec297905be`  
		Last Modified: Wed, 03 Apr 2019 00:42:27 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922657b3c9d97234685558b779720daa5e0c209d37c20638a879364c2ccdb1d9`  
		Last Modified: Wed, 03 Apr 2019 00:43:04 GMT  
		Size: 168.9 MB (168857405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b7be63e1e11e45d7462d05eea59e22bee18e67a1722e07c43241da0a8c5c85`  
		Last Modified: Wed, 03 Apr 2019 00:42:54 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.2` - linux; arm variant v6

```console
$ docker pull storm@sha256:1b1a37cf76a944924e62ab5909ad4c97425d2ab1d2c2d374fa8c521b59f89b71
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.2 MB (235192962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0e62f127f58658880b93c3cbd2694b059162183c94c56faf09ed83ff3ab13d5`
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
# Thu, 28 Mar 2019 07:49:41 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 07:52:46 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 07:52:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 08:50:26 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 03 Apr 2019 08:50:27 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Wed, 03 Apr 2019 08:50:29 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Wed, 03 Apr 2019 08:50:29 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 03 Apr 2019 08:51:27 GMT
ARG DISTRO_NAME=apache-storm-1.2.2
# Wed, 03 Apr 2019 08:51:49 GMT
# ARGS: DISTRO_NAME=apache-storm-1.2.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Wed, 03 Apr 2019 08:51:50 GMT
WORKDIR /apache-storm-1.2.2
# Wed, 03 Apr 2019 08:51:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.2.2/bin
# Wed, 03 Apr 2019 08:51:51 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Wed, 03 Apr 2019 08:51:52 GMT
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
	-	`sha256:972acb4c659fffab6be0f752b78857f78dbda522970cf7946a5a622cf65f4797`  
		Last Modified: Wed, 03 Apr 2019 07:53:52 GMT  
		Size: 52.4 MB (52387444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e6492c3d0fce92d4d5948f47da8c57c4cc9c6fc8e60397a379347c8e241bd4`  
		Last Modified: Wed, 03 Apr 2019 08:52:10 GMT  
		Size: 11.4 MB (11405767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a17a88cecffd69b6d4ee2ea4b7ae46447483e9cad6dc7d1187e1cc83a13547`  
		Last Modified: Wed, 03 Apr 2019 08:52:05 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34a9c8707f91528a55474332ca865bc139ef06bbcd3bdc219b33730784be62ae`  
		Last Modified: Wed, 03 Apr 2019 08:53:26 GMT  
		Size: 168.9 MB (168857059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd5da2b73fefa43e9ec0337398c3dac098104704c58424e4ab9b3e1d554c554`  
		Last Modified: Wed, 03 Apr 2019 08:53:03 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.2` - linux; arm64 variant v8

```console
$ docker pull storm@sha256:0ef2b852a3ae56ba8aa84eb8be3a2058cd6e328227586cde134b72197ab69d9d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.1 MB (238084879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05e6ac58e67058ea053d9be155ace7e660745505fbcdfff0d69a19e66b1e1cd1`
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
# Thu, 28 Mar 2019 04:09:03 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 09:37:52 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 09:38:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 11:35:58 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 03 Apr 2019 11:35:59 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Wed, 03 Apr 2019 11:36:01 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Wed, 03 Apr 2019 11:36:02 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 03 Apr 2019 11:37:48 GMT
ARG DISTRO_NAME=apache-storm-1.2.2
# Wed, 03 Apr 2019 11:38:33 GMT
# ARGS: DISTRO_NAME=apache-storm-1.2.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Wed, 03 Apr 2019 11:38:33 GMT
WORKDIR /apache-storm-1.2.2
# Wed, 03 Apr 2019 11:38:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.2.2/bin
# Wed, 03 Apr 2019 11:38:35 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Wed, 03 Apr 2019 11:38:35 GMT
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
	-	`sha256:d966274452f0f08a7fa71690eb7a8d0847f389e523c9842ad51121d5439b6a3d`  
		Last Modified: Wed, 03 Apr 2019 09:40:42 GMT  
		Size: 54.9 MB (54929195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379524ec8bbb3e129a3b83ec4d218572de065f5d4c780600861f8c7f5d968ca1`  
		Last Modified: Wed, 03 Apr 2019 11:38:58 GMT  
		Size: 11.6 MB (11609469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344f56b90ebd3d8a9b5a4a7e5ebce0aac3c72f04075cac9c205e5f4ffc5ad49c`  
		Last Modified: Wed, 03 Apr 2019 11:38:52 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1194e321bb8a9df3f7d929e7b6fc3b4f2e993b77dcfb28c32da350b4793309dc`  
		Last Modified: Wed, 03 Apr 2019 11:40:16 GMT  
		Size: 168.9 MB (168856325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1935149eab80297fe6809c563784fae76927e7521f817ac64bcf71795e70005d`  
		Last Modified: Wed, 03 Apr 2019 11:39:50 GMT  
		Size: 416.0 B  
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
$ docker pull storm@sha256:0a2c604028c8b2380d1fadec342853012cf431fbff3320e52070ecf7934c68b0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (239048045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e42afdb39ca33fad4ad965e96277c0361a60a5d9aab1e41cd977d4acf02701f`
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
# Thu, 28 Mar 2019 08:37:47 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 09:10:25 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 09:10:33 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 11:06:04 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 03 Apr 2019 11:06:07 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Wed, 03 Apr 2019 11:06:13 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Wed, 03 Apr 2019 11:06:16 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 03 Apr 2019 11:10:12 GMT
ARG DISTRO_NAME=apache-storm-1.2.2
# Wed, 03 Apr 2019 11:10:31 GMT
# ARGS: DISTRO_NAME=apache-storm-1.2.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Wed, 03 Apr 2019 11:10:37 GMT
WORKDIR /apache-storm-1.2.2
# Wed, 03 Apr 2019 11:10:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.2.2/bin
# Wed, 03 Apr 2019 11:10:42 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Wed, 03 Apr 2019 11:10:46 GMT
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
	-	`sha256:bf8f629dab1143ca48d3450e3e249d44bce82649250f91638bb3af77b98c63f2`  
		Last Modified: Wed, 03 Apr 2019 09:13:03 GMT  
		Size: 55.6 MB (55588718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:899a4c7403b01c8a52c27869c3b735ddf496cdd358d5037ab603e2f0239129f2`  
		Last Modified: Wed, 03 Apr 2019 11:11:11 GMT  
		Size: 11.8 MB (11821293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e431c67e86747de6ba5cca38c11f10a8d65cc84d57ef27717166a13ff68d6d60`  
		Last Modified: Wed, 03 Apr 2019 11:11:06 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c51918d60c358be2fe1311029f66b2f88597c0857e88c4e377d299e3a184ba`  
		Last Modified: Wed, 03 Apr 2019 11:12:23 GMT  
		Size: 168.9 MB (168857376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5301cc1890182940ad18d36bb4f39cbd057556790da3b0365cbb7636f71305f`  
		Last Modified: Wed, 03 Apr 2019 11:12:05 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.2` - linux; s390x

```console
$ docker pull storm@sha256:5b09d76eb03e2d4273de4c610a2442463d7c3a5e0cdb41cd8fe1bb4710a7f7cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.8 MB (236790618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7eeb5883a6f7accb050726adcad40b92e90d55a793c7cd8222ce6a3220a6729b`
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
# Thu, 28 Mar 2019 11:49:46 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 11:49:46 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 11:49:50 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 11:49:52 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 12:58:47 GMT
RUN apk add --no-cache     bash     python     su-exec
# Thu, 28 Mar 2019 12:58:47 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Thu, 28 Mar 2019 12:58:48 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Thu, 28 Mar 2019 12:58:49 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Thu, 28 Mar 2019 12:59:35 GMT
ARG DISTRO_NAME=apache-storm-1.2.2
# Thu, 28 Mar 2019 12:59:53 GMT
# ARGS: DISTRO_NAME=apache-storm-1.2.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 28 Mar 2019 12:59:54 GMT
WORKDIR /apache-storm-1.2.2
# Thu, 28 Mar 2019 12:59:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.2.2/bin
# Thu, 28 Mar 2019 12:59:55 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Thu, 28 Mar 2019 12:59:55 GMT
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
	-	`sha256:cd30d3493ef1c50cdf283ce268e2a93881c8e726b7cf8e1c6e2f192b7e9ad19a`  
		Last Modified: Thu, 28 Mar 2019 11:53:46 GMT  
		Size: 51.5 MB (51504445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3217b4d39f31bdf50a940b9f6931cab97ac7ce6b67ac29a458b00c59cd4025e1`  
		Last Modified: Thu, 28 Mar 2019 11:53:41 GMT  
		Size: 2.2 MB (2191965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02c889a912879f4440a4d33419b131ae32e8bd40aeee3f08beb2d81e0eb6249`  
		Last Modified: Thu, 28 Mar 2019 13:00:15 GMT  
		Size: 11.7 MB (11694630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0e0ef8ad1bd58a78fded490320b03781ee40b4dbec485e568708842a783751`  
		Last Modified: Thu, 28 Mar 2019 13:00:11 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fab2664a2e62c6f2f2794ed047f20f20ac061ccad2bbf58eb5d71336738d58e`  
		Last Modified: Thu, 28 Mar 2019 13:00:58 GMT  
		Size: 168.9 MB (168856320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e541b51fee9e668afa8999024b443f0e917c20b9903501eb3a7fd491a16d39a2`  
		Last Modified: Thu, 28 Mar 2019 13:00:45 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:1.2.2`

```console
$ docker pull storm@sha256:638cd3fd3ef322153628204abbfc53e28a0adb5ba371637a3ccba68743027e85
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
$ docker pull storm@sha256:165cdefa3035ab4a7cff165717d2acf2d4ae992258e060fd4cd0b1488153cf5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.1 MB (238134830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8129512a3e3cf25122be38f3d9218ec7ef6978947aa0ba0813f2a992d5b18dff`
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
# Tue, 02 Apr 2019 23:45:43 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Tue, 02 Apr 2019 23:45:46 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 00:41:36 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 03 Apr 2019 00:41:36 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Wed, 03 Apr 2019 00:41:37 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Wed, 03 Apr 2019 00:41:37 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 03 Apr 2019 00:42:10 GMT
ARG DISTRO_NAME=apache-storm-1.2.2
# Wed, 03 Apr 2019 00:42:19 GMT
# ARGS: DISTRO_NAME=apache-storm-1.2.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Wed, 03 Apr 2019 00:42:19 GMT
WORKDIR /apache-storm-1.2.2
# Wed, 03 Apr 2019 00:42:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.2.2/bin
# Wed, 03 Apr 2019 00:42:19 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Wed, 03 Apr 2019 00:42:19 GMT
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
	-	`sha256:0c5bd74861e4346a0beed670ef2a6613f3594b458820c50efc5e1044d865e134`  
		Last Modified: Tue, 02 Apr 2019 23:47:30 GMT  
		Size: 54.9 MB (54918577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:224e1078a599c724063c93ab60810996d95dcd6a637a59baa1575599a9d0597e`  
		Last Modified: Wed, 03 Apr 2019 00:42:31 GMT  
		Size: 11.6 MB (11602165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb666fcb88304ed9f797fee7b61841c8faa04526f79bc853b5c2cbec297905be`  
		Last Modified: Wed, 03 Apr 2019 00:42:27 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922657b3c9d97234685558b779720daa5e0c209d37c20638a879364c2ccdb1d9`  
		Last Modified: Wed, 03 Apr 2019 00:43:04 GMT  
		Size: 168.9 MB (168857405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b7be63e1e11e45d7462d05eea59e22bee18e67a1722e07c43241da0a8c5c85`  
		Last Modified: Wed, 03 Apr 2019 00:42:54 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.2.2` - linux; arm variant v6

```console
$ docker pull storm@sha256:1b1a37cf76a944924e62ab5909ad4c97425d2ab1d2c2d374fa8c521b59f89b71
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.2 MB (235192962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0e62f127f58658880b93c3cbd2694b059162183c94c56faf09ed83ff3ab13d5`
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
# Thu, 28 Mar 2019 07:49:41 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 07:52:46 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 07:52:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 08:50:26 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 03 Apr 2019 08:50:27 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Wed, 03 Apr 2019 08:50:29 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Wed, 03 Apr 2019 08:50:29 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 03 Apr 2019 08:51:27 GMT
ARG DISTRO_NAME=apache-storm-1.2.2
# Wed, 03 Apr 2019 08:51:49 GMT
# ARGS: DISTRO_NAME=apache-storm-1.2.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Wed, 03 Apr 2019 08:51:50 GMT
WORKDIR /apache-storm-1.2.2
# Wed, 03 Apr 2019 08:51:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.2.2/bin
# Wed, 03 Apr 2019 08:51:51 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Wed, 03 Apr 2019 08:51:52 GMT
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
	-	`sha256:972acb4c659fffab6be0f752b78857f78dbda522970cf7946a5a622cf65f4797`  
		Last Modified: Wed, 03 Apr 2019 07:53:52 GMT  
		Size: 52.4 MB (52387444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e6492c3d0fce92d4d5948f47da8c57c4cc9c6fc8e60397a379347c8e241bd4`  
		Last Modified: Wed, 03 Apr 2019 08:52:10 GMT  
		Size: 11.4 MB (11405767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a17a88cecffd69b6d4ee2ea4b7ae46447483e9cad6dc7d1187e1cc83a13547`  
		Last Modified: Wed, 03 Apr 2019 08:52:05 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34a9c8707f91528a55474332ca865bc139ef06bbcd3bdc219b33730784be62ae`  
		Last Modified: Wed, 03 Apr 2019 08:53:26 GMT  
		Size: 168.9 MB (168857059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd5da2b73fefa43e9ec0337398c3dac098104704c58424e4ab9b3e1d554c554`  
		Last Modified: Wed, 03 Apr 2019 08:53:03 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.2.2` - linux; arm64 variant v8

```console
$ docker pull storm@sha256:0ef2b852a3ae56ba8aa84eb8be3a2058cd6e328227586cde134b72197ab69d9d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.1 MB (238084879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05e6ac58e67058ea053d9be155ace7e660745505fbcdfff0d69a19e66b1e1cd1`
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
# Thu, 28 Mar 2019 04:09:03 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 09:37:52 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 09:38:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 11:35:58 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 03 Apr 2019 11:35:59 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Wed, 03 Apr 2019 11:36:01 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Wed, 03 Apr 2019 11:36:02 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 03 Apr 2019 11:37:48 GMT
ARG DISTRO_NAME=apache-storm-1.2.2
# Wed, 03 Apr 2019 11:38:33 GMT
# ARGS: DISTRO_NAME=apache-storm-1.2.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Wed, 03 Apr 2019 11:38:33 GMT
WORKDIR /apache-storm-1.2.2
# Wed, 03 Apr 2019 11:38:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.2.2/bin
# Wed, 03 Apr 2019 11:38:35 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Wed, 03 Apr 2019 11:38:35 GMT
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
	-	`sha256:d966274452f0f08a7fa71690eb7a8d0847f389e523c9842ad51121d5439b6a3d`  
		Last Modified: Wed, 03 Apr 2019 09:40:42 GMT  
		Size: 54.9 MB (54929195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379524ec8bbb3e129a3b83ec4d218572de065f5d4c780600861f8c7f5d968ca1`  
		Last Modified: Wed, 03 Apr 2019 11:38:58 GMT  
		Size: 11.6 MB (11609469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344f56b90ebd3d8a9b5a4a7e5ebce0aac3c72f04075cac9c205e5f4ffc5ad49c`  
		Last Modified: Wed, 03 Apr 2019 11:38:52 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1194e321bb8a9df3f7d929e7b6fc3b4f2e993b77dcfb28c32da350b4793309dc`  
		Last Modified: Wed, 03 Apr 2019 11:40:16 GMT  
		Size: 168.9 MB (168856325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1935149eab80297fe6809c563784fae76927e7521f817ac64bcf71795e70005d`  
		Last Modified: Wed, 03 Apr 2019 11:39:50 GMT  
		Size: 416.0 B  
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
$ docker pull storm@sha256:0a2c604028c8b2380d1fadec342853012cf431fbff3320e52070ecf7934c68b0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (239048045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e42afdb39ca33fad4ad965e96277c0361a60a5d9aab1e41cd977d4acf02701f`
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
# Thu, 28 Mar 2019 08:37:47 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 09:10:25 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 09:10:33 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 11:06:04 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 03 Apr 2019 11:06:07 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Wed, 03 Apr 2019 11:06:13 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Wed, 03 Apr 2019 11:06:16 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 03 Apr 2019 11:10:12 GMT
ARG DISTRO_NAME=apache-storm-1.2.2
# Wed, 03 Apr 2019 11:10:31 GMT
# ARGS: DISTRO_NAME=apache-storm-1.2.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Wed, 03 Apr 2019 11:10:37 GMT
WORKDIR /apache-storm-1.2.2
# Wed, 03 Apr 2019 11:10:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.2.2/bin
# Wed, 03 Apr 2019 11:10:42 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Wed, 03 Apr 2019 11:10:46 GMT
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
	-	`sha256:bf8f629dab1143ca48d3450e3e249d44bce82649250f91638bb3af77b98c63f2`  
		Last Modified: Wed, 03 Apr 2019 09:13:03 GMT  
		Size: 55.6 MB (55588718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:899a4c7403b01c8a52c27869c3b735ddf496cdd358d5037ab603e2f0239129f2`  
		Last Modified: Wed, 03 Apr 2019 11:11:11 GMT  
		Size: 11.8 MB (11821293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e431c67e86747de6ba5cca38c11f10a8d65cc84d57ef27717166a13ff68d6d60`  
		Last Modified: Wed, 03 Apr 2019 11:11:06 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c51918d60c358be2fe1311029f66b2f88597c0857e88c4e377d299e3a184ba`  
		Last Modified: Wed, 03 Apr 2019 11:12:23 GMT  
		Size: 168.9 MB (168857376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5301cc1890182940ad18d36bb4f39cbd057556790da3b0365cbb7636f71305f`  
		Last Modified: Wed, 03 Apr 2019 11:12:05 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:1.2.2` - linux; s390x

```console
$ docker pull storm@sha256:5b09d76eb03e2d4273de4c610a2442463d7c3a5e0cdb41cd8fe1bb4710a7f7cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.8 MB (236790618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7eeb5883a6f7accb050726adcad40b92e90d55a793c7cd8222ce6a3220a6729b`
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
# Thu, 28 Mar 2019 11:49:46 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 11:49:46 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 11:49:50 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 11:49:52 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 12:58:47 GMT
RUN apk add --no-cache     bash     python     su-exec
# Thu, 28 Mar 2019 12:58:47 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Thu, 28 Mar 2019 12:58:48 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Thu, 28 Mar 2019 12:58:49 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Thu, 28 Mar 2019 12:59:35 GMT
ARG DISTRO_NAME=apache-storm-1.2.2
# Thu, 28 Mar 2019 12:59:53 GMT
# ARGS: DISTRO_NAME=apache-storm-1.2.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 28 Mar 2019 12:59:54 GMT
WORKDIR /apache-storm-1.2.2
# Thu, 28 Mar 2019 12:59:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.2.2/bin
# Thu, 28 Mar 2019 12:59:55 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Thu, 28 Mar 2019 12:59:55 GMT
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
	-	`sha256:cd30d3493ef1c50cdf283ce268e2a93881c8e726b7cf8e1c6e2f192b7e9ad19a`  
		Last Modified: Thu, 28 Mar 2019 11:53:46 GMT  
		Size: 51.5 MB (51504445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3217b4d39f31bdf50a940b9f6931cab97ac7ce6b67ac29a458b00c59cd4025e1`  
		Last Modified: Thu, 28 Mar 2019 11:53:41 GMT  
		Size: 2.2 MB (2191965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02c889a912879f4440a4d33419b131ae32e8bd40aeee3f08beb2d81e0eb6249`  
		Last Modified: Thu, 28 Mar 2019 13:00:15 GMT  
		Size: 11.7 MB (11694630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0e0ef8ad1bd58a78fded490320b03781ee40b4dbec485e568708842a783751`  
		Last Modified: Thu, 28 Mar 2019 13:00:11 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fab2664a2e62c6f2f2794ed047f20f20ac061ccad2bbf58eb5d71336738d58e`  
		Last Modified: Thu, 28 Mar 2019 13:00:58 GMT  
		Size: 168.9 MB (168856320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e541b51fee9e668afa8999024b443f0e917c20b9903501eb3a7fd491a16d39a2`  
		Last Modified: Thu, 28 Mar 2019 13:00:45 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `storm:latest`

```console
$ docker pull storm@sha256:638cd3fd3ef322153628204abbfc53e28a0adb5ba371637a3ccba68743027e85
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
$ docker pull storm@sha256:165cdefa3035ab4a7cff165717d2acf2d4ae992258e060fd4cd0b1488153cf5e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.1 MB (238134830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8129512a3e3cf25122be38f3d9218ec7ef6978947aa0ba0813f2a992d5b18dff`
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
# Tue, 02 Apr 2019 23:45:43 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Tue, 02 Apr 2019 23:45:46 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 00:41:36 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 03 Apr 2019 00:41:36 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Wed, 03 Apr 2019 00:41:37 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Wed, 03 Apr 2019 00:41:37 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 03 Apr 2019 00:42:10 GMT
ARG DISTRO_NAME=apache-storm-1.2.2
# Wed, 03 Apr 2019 00:42:19 GMT
# ARGS: DISTRO_NAME=apache-storm-1.2.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Wed, 03 Apr 2019 00:42:19 GMT
WORKDIR /apache-storm-1.2.2
# Wed, 03 Apr 2019 00:42:19 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.2.2/bin
# Wed, 03 Apr 2019 00:42:19 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Wed, 03 Apr 2019 00:42:19 GMT
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
	-	`sha256:0c5bd74861e4346a0beed670ef2a6613f3594b458820c50efc5e1044d865e134`  
		Last Modified: Tue, 02 Apr 2019 23:47:30 GMT  
		Size: 54.9 MB (54918577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:224e1078a599c724063c93ab60810996d95dcd6a637a59baa1575599a9d0597e`  
		Last Modified: Wed, 03 Apr 2019 00:42:31 GMT  
		Size: 11.6 MB (11602165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb666fcb88304ed9f797fee7b61841c8faa04526f79bc853b5c2cbec297905be`  
		Last Modified: Wed, 03 Apr 2019 00:42:27 GMT  
		Size: 1.3 KB (1299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:922657b3c9d97234685558b779720daa5e0c209d37c20638a879364c2ccdb1d9`  
		Last Modified: Wed, 03 Apr 2019 00:43:04 GMT  
		Size: 168.9 MB (168857405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82b7be63e1e11e45d7462d05eea59e22bee18e67a1722e07c43241da0a8c5c85`  
		Last Modified: Wed, 03 Apr 2019 00:42:54 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:latest` - linux; arm variant v6

```console
$ docker pull storm@sha256:1b1a37cf76a944924e62ab5909ad4c97425d2ab1d2c2d374fa8c521b59f89b71
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.2 MB (235192962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0e62f127f58658880b93c3cbd2694b059162183c94c56faf09ed83ff3ab13d5`
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
# Thu, 28 Mar 2019 07:49:41 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 07:52:46 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 07:52:51 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 08:50:26 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 03 Apr 2019 08:50:27 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Wed, 03 Apr 2019 08:50:29 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Wed, 03 Apr 2019 08:50:29 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 03 Apr 2019 08:51:27 GMT
ARG DISTRO_NAME=apache-storm-1.2.2
# Wed, 03 Apr 2019 08:51:49 GMT
# ARGS: DISTRO_NAME=apache-storm-1.2.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Wed, 03 Apr 2019 08:51:50 GMT
WORKDIR /apache-storm-1.2.2
# Wed, 03 Apr 2019 08:51:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.2.2/bin
# Wed, 03 Apr 2019 08:51:51 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Wed, 03 Apr 2019 08:51:52 GMT
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
	-	`sha256:972acb4c659fffab6be0f752b78857f78dbda522970cf7946a5a622cf65f4797`  
		Last Modified: Wed, 03 Apr 2019 07:53:52 GMT  
		Size: 52.4 MB (52387444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7e6492c3d0fce92d4d5948f47da8c57c4cc9c6fc8e60397a379347c8e241bd4`  
		Last Modified: Wed, 03 Apr 2019 08:52:10 GMT  
		Size: 11.4 MB (11405767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55a17a88cecffd69b6d4ee2ea4b7ae46447483e9cad6dc7d1187e1cc83a13547`  
		Last Modified: Wed, 03 Apr 2019 08:52:05 GMT  
		Size: 1.4 KB (1363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34a9c8707f91528a55474332ca865bc139ef06bbcd3bdc219b33730784be62ae`  
		Last Modified: Wed, 03 Apr 2019 08:53:26 GMT  
		Size: 168.9 MB (168857059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd5da2b73fefa43e9ec0337398c3dac098104704c58424e4ab9b3e1d554c554`  
		Last Modified: Wed, 03 Apr 2019 08:53:03 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:latest` - linux; arm64 variant v8

```console
$ docker pull storm@sha256:0ef2b852a3ae56ba8aa84eb8be3a2058cd6e328227586cde134b72197ab69d9d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.1 MB (238084879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05e6ac58e67058ea053d9be155ace7e660745505fbcdfff0d69a19e66b1e1cd1`
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
# Thu, 28 Mar 2019 04:09:03 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 09:37:52 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 09:38:07 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 11:35:58 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 03 Apr 2019 11:35:59 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Wed, 03 Apr 2019 11:36:01 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Wed, 03 Apr 2019 11:36:02 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 03 Apr 2019 11:37:48 GMT
ARG DISTRO_NAME=apache-storm-1.2.2
# Wed, 03 Apr 2019 11:38:33 GMT
# ARGS: DISTRO_NAME=apache-storm-1.2.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Wed, 03 Apr 2019 11:38:33 GMT
WORKDIR /apache-storm-1.2.2
# Wed, 03 Apr 2019 11:38:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.2.2/bin
# Wed, 03 Apr 2019 11:38:35 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Wed, 03 Apr 2019 11:38:35 GMT
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
	-	`sha256:d966274452f0f08a7fa71690eb7a8d0847f389e523c9842ad51121d5439b6a3d`  
		Last Modified: Wed, 03 Apr 2019 09:40:42 GMT  
		Size: 54.9 MB (54929195 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:379524ec8bbb3e129a3b83ec4d218572de065f5d4c780600861f8c7f5d968ca1`  
		Last Modified: Wed, 03 Apr 2019 11:38:58 GMT  
		Size: 11.6 MB (11609469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344f56b90ebd3d8a9b5a4a7e5ebce0aac3c72f04075cac9c205e5f4ffc5ad49c`  
		Last Modified: Wed, 03 Apr 2019 11:38:52 GMT  
		Size: 1.3 KB (1297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1194e321bb8a9df3f7d929e7b6fc3b4f2e993b77dcfb28c32da350b4793309dc`  
		Last Modified: Wed, 03 Apr 2019 11:40:16 GMT  
		Size: 168.9 MB (168856325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1935149eab80297fe6809c563784fae76927e7521f817ac64bcf71795e70005d`  
		Last Modified: Wed, 03 Apr 2019 11:39:50 GMT  
		Size: 416.0 B  
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
$ docker pull storm@sha256:0a2c604028c8b2380d1fadec342853012cf431fbff3320e52070ecf7934c68b0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.0 MB (239048045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e42afdb39ca33fad4ad965e96277c0361a60a5d9aab1e41cd977d4acf02701f`
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
# Thu, 28 Mar 2019 08:37:47 GMT
ENV JAVA_VERSION=8u201
# Wed, 03 Apr 2019 09:10:25 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r1
# Wed, 03 Apr 2019 09:10:33 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Wed, 03 Apr 2019 11:06:04 GMT
RUN apk add --no-cache     bash     python     su-exec
# Wed, 03 Apr 2019 11:06:07 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Wed, 03 Apr 2019 11:06:13 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Wed, 03 Apr 2019 11:06:16 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Wed, 03 Apr 2019 11:10:12 GMT
ARG DISTRO_NAME=apache-storm-1.2.2
# Wed, 03 Apr 2019 11:10:31 GMT
# ARGS: DISTRO_NAME=apache-storm-1.2.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Wed, 03 Apr 2019 11:10:37 GMT
WORKDIR /apache-storm-1.2.2
# Wed, 03 Apr 2019 11:10:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.2.2/bin
# Wed, 03 Apr 2019 11:10:42 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Wed, 03 Apr 2019 11:10:46 GMT
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
	-	`sha256:bf8f629dab1143ca48d3450e3e249d44bce82649250f91638bb3af77b98c63f2`  
		Last Modified: Wed, 03 Apr 2019 09:13:03 GMT  
		Size: 55.6 MB (55588718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:899a4c7403b01c8a52c27869c3b735ddf496cdd358d5037ab603e2f0239129f2`  
		Last Modified: Wed, 03 Apr 2019 11:11:11 GMT  
		Size: 11.8 MB (11821293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e431c67e86747de6ba5cca38c11f10a8d65cc84d57ef27717166a13ff68d6d60`  
		Last Modified: Wed, 03 Apr 2019 11:11:06 GMT  
		Size: 1.4 KB (1364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c51918d60c358be2fe1311029f66b2f88597c0857e88c4e377d299e3a184ba`  
		Last Modified: Wed, 03 Apr 2019 11:12:23 GMT  
		Size: 168.9 MB (168857376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5301cc1890182940ad18d36bb4f39cbd057556790da3b0365cbb7636f71305f`  
		Last Modified: Wed, 03 Apr 2019 11:12:05 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `storm:latest` - linux; s390x

```console
$ docker pull storm@sha256:5b09d76eb03e2d4273de4c610a2442463d7c3a5e0cdb41cd8fe1bb4710a7f7cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **236.8 MB (236790618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7eeb5883a6f7accb050726adcad40b92e90d55a793c7cd8222ce6a3220a6729b`
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
# Thu, 28 Mar 2019 11:49:46 GMT
ENV JAVA_VERSION=8u201
# Thu, 28 Mar 2019 11:49:46 GMT
ENV JAVA_ALPINE_VERSION=8.201.08-r0
# Thu, 28 Mar 2019 11:49:50 GMT
RUN set -x 	&& apk add --no-cache 		openjdk8-jre="$JAVA_ALPINE_VERSION" 	&& [ "$JAVA_HOME" = "$(docker-java-home)" ]
# Thu, 28 Mar 2019 11:49:52 GMT
RUN apk add --no-cache so:libnss3.so
# Thu, 28 Mar 2019 12:58:47 GMT
RUN apk add --no-cache     bash     python     su-exec
# Thu, 28 Mar 2019 12:58:47 GMT
ENV STORM_USER=storm STORM_CONF_DIR=/conf STORM_DATA_DIR=/data STORM_LOG_DIR=/logs
# Thu, 28 Mar 2019 12:58:48 GMT
RUN set -ex;     adduser -D "$STORM_USER";     mkdir -p "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR";     chown -R "$STORM_USER:$STORM_USER" "$STORM_CONF_DIR" "$STORM_DATA_DIR" "$STORM_LOG_DIR"``
# Thu, 28 Mar 2019 12:58:49 GMT
ARG GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
# Thu, 28 Mar 2019 12:59:35 GMT
ARG DISTRO_NAME=apache-storm-1.2.2
# Thu, 28 Mar 2019 12:59:53 GMT
# ARGS: DISTRO_NAME=apache-storm-1.2.2 GPG_KEY=ACEFE18DD2322E1E84587A148DE03962E80B8FFD
RUN set -ex;     apk add --no-cache --virtual .build-deps       gnupg;     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz";     wget -q "http://www.apache.org/dist/storm/$DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver ha.pool.sks-keyservers.net --recv-key "$GPG_KEY" ||     gpg --keyserver pgp.mit.edu --recv-keys "$GPG_KEY" ||     gpg --keyserver keyserver.pgp.com --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -xzf "$DISTRO_NAME.tar.gz";     chown -R "$STORM_USER:$STORM_USER" "$DISTRO_NAME";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     apk del .build-deps
# Thu, 28 Mar 2019 12:59:54 GMT
WORKDIR /apache-storm-1.2.2
# Thu, 28 Mar 2019 12:59:54 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin:/apache-storm-1.2.2/bin
# Thu, 28 Mar 2019 12:59:55 GMT
COPY file:41358f8195908dd4207afb275bf643e637d0038f1f85ad646c03aa426ca9297d in / 
# Thu, 28 Mar 2019 12:59:55 GMT
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
	-	`sha256:cd30d3493ef1c50cdf283ce268e2a93881c8e726b7cf8e1c6e2f192b7e9ad19a`  
		Last Modified: Thu, 28 Mar 2019 11:53:46 GMT  
		Size: 51.5 MB (51504445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3217b4d39f31bdf50a940b9f6931cab97ac7ce6b67ac29a458b00c59cd4025e1`  
		Last Modified: Thu, 28 Mar 2019 11:53:41 GMT  
		Size: 2.2 MB (2191965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02c889a912879f4440a4d33419b131ae32e8bd40aeee3f08beb2d81e0eb6249`  
		Last Modified: Thu, 28 Mar 2019 13:00:15 GMT  
		Size: 11.7 MB (11694630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0e0ef8ad1bd58a78fded490320b03781ee40b4dbec485e568708842a783751`  
		Last Modified: Thu, 28 Mar 2019 13:00:11 GMT  
		Size: 1.3 KB (1298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fab2664a2e62c6f2f2794ed047f20f20ac061ccad2bbf58eb5d71336738d58e`  
		Last Modified: Thu, 28 Mar 2019 13:00:58 GMT  
		Size: 168.9 MB (168856320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e541b51fee9e668afa8999024b443f0e917c20b9903501eb3a7fd491a16d39a2`  
		Last Modified: Thu, 28 Mar 2019 13:00:45 GMT  
		Size: 416.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
