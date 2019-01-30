<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `crate`

-	[`crate:2.0`](#crate20)
-	[`crate:2.0.7`](#crate207)
-	[`crate:2.1`](#crate21)
-	[`crate:2.1.10`](#crate2110)
-	[`crate:2.2`](#crate22)
-	[`crate:2.2.7`](#crate227)
-	[`crate:2.3`](#crate23)
-	[`crate:2.3.11`](#crate2311)
-	[`crate:3.0`](#crate30)
-	[`crate:3.0.7`](#crate307)
-	[`crate:3.1`](#crate31)
-	[`crate:3.1.5`](#crate315)
-	[`crate:3.2`](#crate32)
-	[`crate:3.2.2`](#crate322)
-	[`crate:latest`](#cratelatest)

## `crate:2.0`

```console
$ docker pull crate@sha256:f541e5d56142ebbd04406e084e9ec8e93621c0b9dbf2ef5baafc3787935c846c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.0` - linux; amd64

```console
$ docker pull crate@sha256:5240ce86d4635557ff0bf5685c4650bb385c4588b264a7fad458a3f9d06ccc59
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.9 MB (126913629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24ea4a707b830e3ef00c69ea4796dcb3b4a830ce94ffffc07fd0d81ce1804830`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 21 Dec 2018 00:23:27 GMT
ADD file:98b80537a056cee82c23d29a6567eb7546e28ff6c4f45d56708d782c077f3fc9 in / 
# Fri, 21 Dec 2018 00:23:27 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:02:17 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Fri, 21 Dec 2018 01:02:18 GMT
ENV GOSU_VERSION=1.9
# Fri, 21 Dec 2018 01:02:29 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Fri, 21 Dec 2018 01:02:30 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Fri, 21 Dec 2018 01:02:54 GMT
ENV CRATE_VERSION=2.0.7
# Fri, 21 Dec 2018 01:03:28 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/crate-sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Fri, 21 Dec 2018 01:03:28 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 01:03:28 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 01:03:28 GMT
ADD file:2f5cd2f3c20fac98ab5d09f991033c9c7c34f2d59d4ddd6497d398bf6274d8e7 in /crate/config/crate.yml 
# Fri, 21 Dec 2018 01:03:29 GMT
ADD file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Fri, 21 Dec 2018 01:03:29 GMT
COPY file:ea98b754ebed5b2e3ef56402a0fb40312373c7a03ee548e02924ff33ed78ba36 in / 
# Fri, 21 Dec 2018 01:03:29 GMT
WORKDIR /data
# Fri, 21 Dec 2018 01:03:29 GMT
EXPOSE 4200 4300 5432-5532
# Fri, 21 Dec 2018 01:03:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 01:03:29 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:a44d943737e8c847006709ce06e5bbe8c5ecccf23662545f28dd491f565b24d4`  
		Last Modified: Fri, 21 Dec 2018 00:24:02 GMT  
		Size: 2.0 MB (1971697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c94570ccb465d1a41e6185baec3464405ba5d1be487be1c67f1b28afb5de00`  
		Last Modified: Fri, 21 Dec 2018 01:05:08 GMT  
		Size: 592.4 KB (592356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:778695d36f1874cce20aed4fb93fd9f07ec359c46cfa95643b842f3d6d5a69d1`  
		Last Modified: Fri, 21 Dec 2018 01:05:07 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02bba5e08f7160fe1e204187a974a46e1fb5bea64df80ae547ee41cb7aaab134`  
		Last Modified: Fri, 21 Dec 2018 01:05:23 GMT  
		Size: 124.3 MB (124346881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b2691379a994ff83e62aac0b58a1c648eda909d30c1e19471fedb08c08b3d1`  
		Last Modified: Fri, 21 Dec 2018 01:05:07 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19dadab8da94f81172c257a83df66cf9b7e9ec7aca7f26e7bf987116df624f5f`  
		Last Modified: Fri, 21 Dec 2018 01:05:07 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce53cab217b755f3891dc1473673a676d1b26f72012777a2fe47dcffc4a293f`  
		Last Modified: Fri, 21 Dec 2018 01:05:07 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d321be0c6d5d504bde076596af1f65c272b9e56bfe93070011ce77bbfc67f8ec`  
		Last Modified: Fri, 21 Dec 2018 01:05:06 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.0.7`

```console
$ docker pull crate@sha256:f541e5d56142ebbd04406e084e9ec8e93621c0b9dbf2ef5baafc3787935c846c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.0.7` - linux; amd64

```console
$ docker pull crate@sha256:5240ce86d4635557ff0bf5685c4650bb385c4588b264a7fad458a3f9d06ccc59
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.9 MB (126913629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24ea4a707b830e3ef00c69ea4796dcb3b4a830ce94ffffc07fd0d81ce1804830`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 21 Dec 2018 00:23:27 GMT
ADD file:98b80537a056cee82c23d29a6567eb7546e28ff6c4f45d56708d782c077f3fc9 in / 
# Fri, 21 Dec 2018 00:23:27 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:02:17 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Fri, 21 Dec 2018 01:02:18 GMT
ENV GOSU_VERSION=1.9
# Fri, 21 Dec 2018 01:02:29 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Fri, 21 Dec 2018 01:02:30 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Fri, 21 Dec 2018 01:02:54 GMT
ENV CRATE_VERSION=2.0.7
# Fri, 21 Dec 2018 01:03:28 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/crate-sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Fri, 21 Dec 2018 01:03:28 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 01:03:28 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 01:03:28 GMT
ADD file:2f5cd2f3c20fac98ab5d09f991033c9c7c34f2d59d4ddd6497d398bf6274d8e7 in /crate/config/crate.yml 
# Fri, 21 Dec 2018 01:03:29 GMT
ADD file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Fri, 21 Dec 2018 01:03:29 GMT
COPY file:ea98b754ebed5b2e3ef56402a0fb40312373c7a03ee548e02924ff33ed78ba36 in / 
# Fri, 21 Dec 2018 01:03:29 GMT
WORKDIR /data
# Fri, 21 Dec 2018 01:03:29 GMT
EXPOSE 4200 4300 5432-5532
# Fri, 21 Dec 2018 01:03:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 01:03:29 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:a44d943737e8c847006709ce06e5bbe8c5ecccf23662545f28dd491f565b24d4`  
		Last Modified: Fri, 21 Dec 2018 00:24:02 GMT  
		Size: 2.0 MB (1971697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c94570ccb465d1a41e6185baec3464405ba5d1be487be1c67f1b28afb5de00`  
		Last Modified: Fri, 21 Dec 2018 01:05:08 GMT  
		Size: 592.4 KB (592356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:778695d36f1874cce20aed4fb93fd9f07ec359c46cfa95643b842f3d6d5a69d1`  
		Last Modified: Fri, 21 Dec 2018 01:05:07 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02bba5e08f7160fe1e204187a974a46e1fb5bea64df80ae547ee41cb7aaab134`  
		Last Modified: Fri, 21 Dec 2018 01:05:23 GMT  
		Size: 124.3 MB (124346881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72b2691379a994ff83e62aac0b58a1c648eda909d30c1e19471fedb08c08b3d1`  
		Last Modified: Fri, 21 Dec 2018 01:05:07 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19dadab8da94f81172c257a83df66cf9b7e9ec7aca7f26e7bf987116df624f5f`  
		Last Modified: Fri, 21 Dec 2018 01:05:07 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ce53cab217b755f3891dc1473673a676d1b26f72012777a2fe47dcffc4a293f`  
		Last Modified: Fri, 21 Dec 2018 01:05:07 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d321be0c6d5d504bde076596af1f65c272b9e56bfe93070011ce77bbfc67f8ec`  
		Last Modified: Fri, 21 Dec 2018 01:05:06 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.1`

```console
$ docker pull crate@sha256:38a5fc2ded7d49299437f1bbe17d7cfb6c74c26ed5f6ca2c9b9ab2845c3e785a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.1` - linux; amd64

```console
$ docker pull crate@sha256:d7259a3eaf5c4557213c5fd9a11844c31355d223209fc45f6eac8c523ace7fca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.5 MB (129510899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:691ea7d5ade32a0b1da0b8a97543458211b7ea678b79a1546b9780075a333e00`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 21 Dec 2018 00:23:27 GMT
ADD file:98b80537a056cee82c23d29a6567eb7546e28ff6c4f45d56708d782c077f3fc9 in / 
# Fri, 21 Dec 2018 00:23:27 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:02:17 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Fri, 21 Dec 2018 01:02:18 GMT
ENV GOSU_VERSION=1.9
# Fri, 21 Dec 2018 01:02:29 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Fri, 21 Dec 2018 01:02:30 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Fri, 21 Dec 2018 01:02:30 GMT
ENV CRATE_VERSION=2.1.10
# Mon, 24 Dec 2018 22:21:50 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/lib/sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Mon, 24 Dec 2018 22:21:50 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Dec 2018 22:21:50 GMT
ENV CRATE_HEAP_SIZE=512M
# Mon, 24 Dec 2018 22:21:50 GMT
VOLUME [/data]
# Mon, 24 Dec 2018 22:21:51 GMT
ADD file:2569876b69e38b6e0c1aa496cbc6c2df08275a37296fea66dd5d389f7829f999 in /crate/config/crate.yml 
# Mon, 24 Dec 2018 22:21:51 GMT
ADD file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Mon, 24 Dec 2018 22:21:51 GMT
COPY file:ea98b754ebed5b2e3ef56402a0fb40312373c7a03ee548e02924ff33ed78ba36 in / 
# Mon, 24 Dec 2018 22:21:51 GMT
WORKDIR /data
# Mon, 24 Dec 2018 22:21:51 GMT
EXPOSE 4200 4300 5432
# Mon, 24 Dec 2018 22:21:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 24 Dec 2018 22:21:52 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:a44d943737e8c847006709ce06e5bbe8c5ecccf23662545f28dd491f565b24d4`  
		Last Modified: Fri, 21 Dec 2018 00:24:02 GMT  
		Size: 2.0 MB (1971697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c94570ccb465d1a41e6185baec3464405ba5d1be487be1c67f1b28afb5de00`  
		Last Modified: Fri, 21 Dec 2018 01:05:08 GMT  
		Size: 592.4 KB (592356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:778695d36f1874cce20aed4fb93fd9f07ec359c46cfa95643b842f3d6d5a69d1`  
		Last Modified: Fri, 21 Dec 2018 01:05:07 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90713e215bb801f4700ac75f62252c83417dfe42687c586ede320e6fb14ae6a5`  
		Last Modified: Mon, 24 Dec 2018 22:22:38 GMT  
		Size: 126.9 MB (126944137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2c7e6fba09949b1528f3809a74510bb189937d870fb0ab98e72d32741abf9d`  
		Last Modified: Mon, 24 Dec 2018 22:22:25 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5dc3a831d70604077e9806d4afcd8e6292900b01a863c751ee2d05ad4d0c548`  
		Last Modified: Mon, 24 Dec 2018 22:22:25 GMT  
		Size: 934.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf33b13525f3d055ee9b2bb0ff701743c09d92a941f8c1050f13f90c91ecfe10`  
		Last Modified: Mon, 24 Dec 2018 22:22:25 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee2104a01bf6b0b6a8fe3a40e192f203e8c0a9ae136e6d5a3df135fa8568b94`  
		Last Modified: Mon, 24 Dec 2018 22:22:25 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.1.10`

```console
$ docker pull crate@sha256:38a5fc2ded7d49299437f1bbe17d7cfb6c74c26ed5f6ca2c9b9ab2845c3e785a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.1.10` - linux; amd64

```console
$ docker pull crate@sha256:d7259a3eaf5c4557213c5fd9a11844c31355d223209fc45f6eac8c523ace7fca
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.5 MB (129510899 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:691ea7d5ade32a0b1da0b8a97543458211b7ea678b79a1546b9780075a333e00`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 21 Dec 2018 00:23:27 GMT
ADD file:98b80537a056cee82c23d29a6567eb7546e28ff6c4f45d56708d782c077f3fc9 in / 
# Fri, 21 Dec 2018 00:23:27 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:02:17 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Fri, 21 Dec 2018 01:02:18 GMT
ENV GOSU_VERSION=1.9
# Fri, 21 Dec 2018 01:02:29 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Fri, 21 Dec 2018 01:02:30 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Fri, 21 Dec 2018 01:02:30 GMT
ENV CRATE_VERSION=2.1.10
# Mon, 24 Dec 2018 22:21:50 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/lib/sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Mon, 24 Dec 2018 22:21:50 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 24 Dec 2018 22:21:50 GMT
ENV CRATE_HEAP_SIZE=512M
# Mon, 24 Dec 2018 22:21:50 GMT
VOLUME [/data]
# Mon, 24 Dec 2018 22:21:51 GMT
ADD file:2569876b69e38b6e0c1aa496cbc6c2df08275a37296fea66dd5d389f7829f999 in /crate/config/crate.yml 
# Mon, 24 Dec 2018 22:21:51 GMT
ADD file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Mon, 24 Dec 2018 22:21:51 GMT
COPY file:ea98b754ebed5b2e3ef56402a0fb40312373c7a03ee548e02924ff33ed78ba36 in / 
# Mon, 24 Dec 2018 22:21:51 GMT
WORKDIR /data
# Mon, 24 Dec 2018 22:21:51 GMT
EXPOSE 4200 4300 5432
# Mon, 24 Dec 2018 22:21:51 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 24 Dec 2018 22:21:52 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:a44d943737e8c847006709ce06e5bbe8c5ecccf23662545f28dd491f565b24d4`  
		Last Modified: Fri, 21 Dec 2018 00:24:02 GMT  
		Size: 2.0 MB (1971697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80c94570ccb465d1a41e6185baec3464405ba5d1be487be1c67f1b28afb5de00`  
		Last Modified: Fri, 21 Dec 2018 01:05:08 GMT  
		Size: 592.4 KB (592356 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:778695d36f1874cce20aed4fb93fd9f07ec359c46cfa95643b842f3d6d5a69d1`  
		Last Modified: Fri, 21 Dec 2018 01:05:07 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90713e215bb801f4700ac75f62252c83417dfe42687c586ede320e6fb14ae6a5`  
		Last Modified: Mon, 24 Dec 2018 22:22:38 GMT  
		Size: 126.9 MB (126944137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2c7e6fba09949b1528f3809a74510bb189937d870fb0ab98e72d32741abf9d`  
		Last Modified: Mon, 24 Dec 2018 22:22:25 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5dc3a831d70604077e9806d4afcd8e6292900b01a863c751ee2d05ad4d0c548`  
		Last Modified: Mon, 24 Dec 2018 22:22:25 GMT  
		Size: 934.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf33b13525f3d055ee9b2bb0ff701743c09d92a941f8c1050f13f90c91ecfe10`  
		Last Modified: Mon, 24 Dec 2018 22:22:25 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dee2104a01bf6b0b6a8fe3a40e192f203e8c0a9ae136e6d5a3df135fa8568b94`  
		Last Modified: Mon, 24 Dec 2018 22:22:25 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.2`

```console
$ docker pull crate@sha256:df3afe95483acdc4a9e5c60581585c122a41e9804a83a97e096c5feb2f20e4a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.2` - linux; amd64

```console
$ docker pull crate@sha256:34aaec176b2b1da2c91e7fe8505ec5f5256d1f6449d3fd949dd920963f4730bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129698520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5ed836a909d586e78609d8d6414082a69271c768cb55d56708894d6b7423eea`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:00:41 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Fri, 21 Dec 2018 01:00:41 GMT
ENV GOSU_VERSION=1.9
# Fri, 21 Dec 2018 01:00:45 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Fri, 21 Dec 2018 01:00:46 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Fri, 21 Dec 2018 01:01:46 GMT
ENV CRATE_VERSION=2.2.7
# Fri, 21 Dec 2018 01:02:08 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/lib/sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Fri, 21 Dec 2018 01:02:08 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 01:02:08 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 21 Dec 2018 01:02:08 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 01:02:09 GMT
ADD file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Fri, 21 Dec 2018 01:02:09 GMT
ADD file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Fri, 21 Dec 2018 01:02:10 GMT
COPY file:ea98b754ebed5b2e3ef56402a0fb40312373c7a03ee548e02924ff33ed78ba36 in / 
# Fri, 21 Dec 2018 01:02:10 GMT
WORKDIR /data
# Fri, 21 Dec 2018 01:02:10 GMT
EXPOSE 4200 4300 5432
# Fri, 21 Dec 2018 01:02:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 01:02:11 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55dc8d5814b4975124b0a8a80f018e85f3ae10df5158d5372ff9f840a2a2f445`  
		Last Modified: Fri, 21 Dec 2018 01:03:59 GMT  
		Size: 593.4 KB (593424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:734ec8c80ae6fed43419a2e3f8f4dae3e2794a662f342fb4adfec53e7244ddee`  
		Last Modified: Fri, 21 Dec 2018 01:03:59 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdb19d6ae33b1eb53d902adc88ebcd9376c100f49853b8c9821d61d5f48586ad`  
		Last Modified: Fri, 21 Dec 2018 01:05:00 GMT  
		Size: 127.0 MB (126995226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498e68d4cb913d08aa1f15146ad8b2aad18ada9103aaaeb5aab409cdf0bbd2af`  
		Last Modified: Fri, 21 Dec 2018 01:04:42 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e33b09a42f0b8524579d6f1db3de3f23312708a7e575cb0bb03add7adab4ca`  
		Last Modified: Fri, 21 Dec 2018 01:04:42 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3c03f74810275c7f4e6ec24f7cb46e37954a1a67b4f50025c41ebbedab21cd`  
		Last Modified: Fri, 21 Dec 2018 01:04:41 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1ec6fe5543bdb6d560464525c750dfd58e2ff0673e5cd293bf02e9e81578d9`  
		Last Modified: Fri, 21 Dec 2018 01:04:42 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.2.7`

```console
$ docker pull crate@sha256:df3afe95483acdc4a9e5c60581585c122a41e9804a83a97e096c5feb2f20e4a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.2.7` - linux; amd64

```console
$ docker pull crate@sha256:34aaec176b2b1da2c91e7fe8505ec5f5256d1f6449d3fd949dd920963f4730bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129698520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5ed836a909d586e78609d8d6414082a69271c768cb55d56708894d6b7423eea`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:00:41 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Fri, 21 Dec 2018 01:00:41 GMT
ENV GOSU_VERSION=1.9
# Fri, 21 Dec 2018 01:00:45 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Fri, 21 Dec 2018 01:00:46 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Fri, 21 Dec 2018 01:01:46 GMT
ENV CRATE_VERSION=2.2.7
# Fri, 21 Dec 2018 01:02:08 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/lib/sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Fri, 21 Dec 2018 01:02:08 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 01:02:08 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 21 Dec 2018 01:02:08 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 01:02:09 GMT
ADD file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Fri, 21 Dec 2018 01:02:09 GMT
ADD file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Fri, 21 Dec 2018 01:02:10 GMT
COPY file:ea98b754ebed5b2e3ef56402a0fb40312373c7a03ee548e02924ff33ed78ba36 in / 
# Fri, 21 Dec 2018 01:02:10 GMT
WORKDIR /data
# Fri, 21 Dec 2018 01:02:10 GMT
EXPOSE 4200 4300 5432
# Fri, 21 Dec 2018 01:02:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 01:02:11 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55dc8d5814b4975124b0a8a80f018e85f3ae10df5158d5372ff9f840a2a2f445`  
		Last Modified: Fri, 21 Dec 2018 01:03:59 GMT  
		Size: 593.4 KB (593424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:734ec8c80ae6fed43419a2e3f8f4dae3e2794a662f342fb4adfec53e7244ddee`  
		Last Modified: Fri, 21 Dec 2018 01:03:59 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdb19d6ae33b1eb53d902adc88ebcd9376c100f49853b8c9821d61d5f48586ad`  
		Last Modified: Fri, 21 Dec 2018 01:05:00 GMT  
		Size: 127.0 MB (126995226 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:498e68d4cb913d08aa1f15146ad8b2aad18ada9103aaaeb5aab409cdf0bbd2af`  
		Last Modified: Fri, 21 Dec 2018 01:04:42 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01e33b09a42f0b8524579d6f1db3de3f23312708a7e575cb0bb03add7adab4ca`  
		Last Modified: Fri, 21 Dec 2018 01:04:42 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc3c03f74810275c7f4e6ec24f7cb46e37954a1a67b4f50025c41ebbedab21cd`  
		Last Modified: Fri, 21 Dec 2018 01:04:41 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af1ec6fe5543bdb6d560464525c750dfd58e2ff0673e5cd293bf02e9e81578d9`  
		Last Modified: Fri, 21 Dec 2018 01:04:42 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.3`

```console
$ docker pull crate@sha256:f0fe88775bf38734a9f61352eb98e56f02b8b2863d6564f725e989d2eb4dbe73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.3` - linux; amd64

```console
$ docker pull crate@sha256:cbdd2b790e47ba64f8a2ac20491f5c9b46cd0301f4e955b1800c8d52a67ecdd6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130561251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:737f661f98ff33a7f14d794beea6f9a235b2c3f01877b8372a6bc010538f3b89`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:00:41 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Fri, 21 Dec 2018 01:00:41 GMT
ENV GOSU_VERSION=1.9
# Fri, 21 Dec 2018 01:00:45 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Fri, 21 Dec 2018 01:00:46 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Fri, 21 Dec 2018 01:01:14 GMT
ENV CRATE_VERSION=2.3.11
# Fri, 21 Dec 2018 01:01:39 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Fri, 21 Dec 2018 01:01:39 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 01:01:39 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 21 Dec 2018 01:01:40 GMT
HEALTHCHECK &{["CMD-SHELL" "curl $(hostname):4200"] "0s" "0s" "0s" '\x00'}
# Fri, 21 Dec 2018 01:01:40 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 01:01:40 GMT
ADD file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Fri, 21 Dec 2018 01:01:41 GMT
ADD file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Fri, 21 Dec 2018 01:01:41 GMT
COPY file:e6a7b71a02b8bea038a1d23371bfd510dd74404a43443474622b1534a0ea994b in / 
# Fri, 21 Dec 2018 01:01:41 GMT
WORKDIR /data
# Fri, 21 Dec 2018 01:01:41 GMT
EXPOSE 4200 4300 5432
# Fri, 21 Dec 2018 01:01:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 01:01:42 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55dc8d5814b4975124b0a8a80f018e85f3ae10df5158d5372ff9f840a2a2f445`  
		Last Modified: Fri, 21 Dec 2018 01:03:59 GMT  
		Size: 593.4 KB (593424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:734ec8c80ae6fed43419a2e3f8f4dae3e2794a662f342fb4adfec53e7244ddee`  
		Last Modified: Fri, 21 Dec 2018 01:03:59 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7e434af3102f3fc45908f28530a7f219fedae12a6a5fd0ec90cbd66defc649`  
		Last Modified: Fri, 21 Dec 2018 01:04:35 GMT  
		Size: 127.9 MB (127857826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914a12826db5932b48d67011efe6dc846a99f2cceca31ef7492e8c4832e677c9`  
		Last Modified: Fri, 21 Dec 2018 01:04:18 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:382037202905adb81bec1deed481f33e51b0bb847665d2801033392a2df5c9bd`  
		Last Modified: Fri, 21 Dec 2018 01:04:18 GMT  
		Size: 934.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df5fce575c4ba91117cb841fd72d7fbada3e126852ced262f9ca7791eee2ca7`  
		Last Modified: Fri, 21 Dec 2018 01:04:18 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344fa5b2816a0b7e9523a40c75a226d0520080d76b9ececba245c3951b42eeec`  
		Last Modified: Fri, 21 Dec 2018 01:04:18 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.3.11`

```console
$ docker pull crate@sha256:f0fe88775bf38734a9f61352eb98e56f02b8b2863d6564f725e989d2eb4dbe73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.3.11` - linux; amd64

```console
$ docker pull crate@sha256:cbdd2b790e47ba64f8a2ac20491f5c9b46cd0301f4e955b1800c8d52a67ecdd6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130561251 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:737f661f98ff33a7f14d794beea6f9a235b2c3f01877b8372a6bc010538f3b89`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:00:41 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Fri, 21 Dec 2018 01:00:41 GMT
ENV GOSU_VERSION=1.9
# Fri, 21 Dec 2018 01:00:45 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Fri, 21 Dec 2018 01:00:46 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Fri, 21 Dec 2018 01:01:14 GMT
ENV CRATE_VERSION=2.3.11
# Fri, 21 Dec 2018 01:01:39 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Fri, 21 Dec 2018 01:01:39 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 01:01:39 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 21 Dec 2018 01:01:40 GMT
HEALTHCHECK &{["CMD-SHELL" "curl $(hostname):4200"] "0s" "0s" "0s" '\x00'}
# Fri, 21 Dec 2018 01:01:40 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 01:01:40 GMT
ADD file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Fri, 21 Dec 2018 01:01:41 GMT
ADD file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Fri, 21 Dec 2018 01:01:41 GMT
COPY file:e6a7b71a02b8bea038a1d23371bfd510dd74404a43443474622b1534a0ea994b in / 
# Fri, 21 Dec 2018 01:01:41 GMT
WORKDIR /data
# Fri, 21 Dec 2018 01:01:41 GMT
EXPOSE 4200 4300 5432
# Fri, 21 Dec 2018 01:01:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 01:01:42 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55dc8d5814b4975124b0a8a80f018e85f3ae10df5158d5372ff9f840a2a2f445`  
		Last Modified: Fri, 21 Dec 2018 01:03:59 GMT  
		Size: 593.4 KB (593424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:734ec8c80ae6fed43419a2e3f8f4dae3e2794a662f342fb4adfec53e7244ddee`  
		Last Modified: Fri, 21 Dec 2018 01:03:59 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7e434af3102f3fc45908f28530a7f219fedae12a6a5fd0ec90cbd66defc649`  
		Last Modified: Fri, 21 Dec 2018 01:04:35 GMT  
		Size: 127.9 MB (127857826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:914a12826db5932b48d67011efe6dc846a99f2cceca31ef7492e8c4832e677c9`  
		Last Modified: Fri, 21 Dec 2018 01:04:18 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:382037202905adb81bec1deed481f33e51b0bb847665d2801033392a2df5c9bd`  
		Last Modified: Fri, 21 Dec 2018 01:04:18 GMT  
		Size: 934.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1df5fce575c4ba91117cb841fd72d7fbada3e126852ced262f9ca7791eee2ca7`  
		Last Modified: Fri, 21 Dec 2018 01:04:18 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:344fa5b2816a0b7e9523a40c75a226d0520080d76b9ececba245c3951b42eeec`  
		Last Modified: Fri, 21 Dec 2018 01:04:18 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:3.0`

```console
$ docker pull crate@sha256:aba6a1ac94339894a59fa93ed634393b71ab7513a938776e9fc8402d25aa4c6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:3.0` - linux; amd64

```console
$ docker pull crate@sha256:19c6636b11acaf5837b05c2a9e4ef68a9dbb65a13215da6fd1649040fca21eb6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.0 MB (129970007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ab418e65d73e598ada3a608d4afb1c6583ab27fbcdcb458d9e217db83173b8f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:00:41 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Fri, 21 Dec 2018 01:00:41 GMT
ENV GOSU_VERSION=1.9
# Fri, 21 Dec 2018 01:00:45 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Fri, 21 Dec 2018 01:00:46 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Fri, 21 Dec 2018 01:00:46 GMT
ENV CRATE_VERSION=3.0.7
# Fri, 21 Dec 2018 01:01:02 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Fri, 21 Dec 2018 01:01:03 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 01:01:03 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 21 Dec 2018 01:01:03 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --fail --max-time 25 $(hostname):4200"] "30s" "30s" "0s" '\x00'}
# Fri, 21 Dec 2018 01:01:04 GMT
RUN mkdir -p /data/data /data/log
# Fri, 21 Dec 2018 01:01:04 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 01:01:04 GMT
ADD file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Fri, 21 Dec 2018 01:01:04 GMT
ADD file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Fri, 21 Dec 2018 01:01:05 GMT
COPY file:a7eedb1118b4d8951c8e0ef42f0961a143eaad99c69b8f07a3f2d8c0d7b82c92 in / 
# Fri, 21 Dec 2018 01:01:05 GMT
WORKDIR /data
# Fri, 21 Dec 2018 01:01:05 GMT
EXPOSE 4200 4300 5432
# Fri, 21 Dec 2018 01:01:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 01:01:05 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55dc8d5814b4975124b0a8a80f018e85f3ae10df5158d5372ff9f840a2a2f445`  
		Last Modified: Fri, 21 Dec 2018 01:03:59 GMT  
		Size: 593.4 KB (593424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:734ec8c80ae6fed43419a2e3f8f4dae3e2794a662f342fb4adfec53e7244ddee`  
		Last Modified: Fri, 21 Dec 2018 01:03:59 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6194776ad16050e16456c58308410b5fc4b4c179bec5829d51377e4c27eedd2`  
		Last Modified: Fri, 21 Dec 2018 01:04:13 GMT  
		Size: 127.3 MB (127266377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80d514dbd46b0cace4f822aeef90b3adab08c7a8db9f8a3a06dabb007b8b10b`  
		Last Modified: Fri, 21 Dec 2018 01:03:58 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ca7247754c0d4f7424730313d8efd0bfa3f568679e6e497243aadedf1445cd`  
		Last Modified: Fri, 21 Dec 2018 01:03:58 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18c2e23220e3aa0716fe575ee9ad0203e683e543a63fc6d9f92b6511461df5c`  
		Last Modified: Fri, 21 Dec 2018 01:03:58 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8383f0a636ad6cf519660ba45f8069e868f21286cddca013b132a03a1eec1904`  
		Last Modified: Fri, 21 Dec 2018 01:03:58 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:3.0.7`

```console
$ docker pull crate@sha256:aba6a1ac94339894a59fa93ed634393b71ab7513a938776e9fc8402d25aa4c6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:3.0.7` - linux; amd64

```console
$ docker pull crate@sha256:19c6636b11acaf5837b05c2a9e4ef68a9dbb65a13215da6fd1649040fca21eb6
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.0 MB (129970007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ab418e65d73e598ada3a608d4afb1c6583ab27fbcdcb458d9e217db83173b8f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:00:41 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Fri, 21 Dec 2018 01:00:41 GMT
ENV GOSU_VERSION=1.9
# Fri, 21 Dec 2018 01:00:45 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Fri, 21 Dec 2018 01:00:46 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Fri, 21 Dec 2018 01:00:46 GMT
ENV CRATE_VERSION=3.0.7
# Fri, 21 Dec 2018 01:01:02 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Fri, 21 Dec 2018 01:01:03 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 01:01:03 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 21 Dec 2018 01:01:03 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --fail --max-time 25 $(hostname):4200"] "30s" "30s" "0s" '\x00'}
# Fri, 21 Dec 2018 01:01:04 GMT
RUN mkdir -p /data/data /data/log
# Fri, 21 Dec 2018 01:01:04 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 01:01:04 GMT
ADD file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Fri, 21 Dec 2018 01:01:04 GMT
ADD file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Fri, 21 Dec 2018 01:01:05 GMT
COPY file:a7eedb1118b4d8951c8e0ef42f0961a143eaad99c69b8f07a3f2d8c0d7b82c92 in / 
# Fri, 21 Dec 2018 01:01:05 GMT
WORKDIR /data
# Fri, 21 Dec 2018 01:01:05 GMT
EXPOSE 4200 4300 5432
# Fri, 21 Dec 2018 01:01:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 01:01:05 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55dc8d5814b4975124b0a8a80f018e85f3ae10df5158d5372ff9f840a2a2f445`  
		Last Modified: Fri, 21 Dec 2018 01:03:59 GMT  
		Size: 593.4 KB (593424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:734ec8c80ae6fed43419a2e3f8f4dae3e2794a662f342fb4adfec53e7244ddee`  
		Last Modified: Fri, 21 Dec 2018 01:03:59 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6194776ad16050e16456c58308410b5fc4b4c179bec5829d51377e4c27eedd2`  
		Last Modified: Fri, 21 Dec 2018 01:04:13 GMT  
		Size: 127.3 MB (127266377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80d514dbd46b0cace4f822aeef90b3adab08c7a8db9f8a3a06dabb007b8b10b`  
		Last Modified: Fri, 21 Dec 2018 01:03:58 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ca7247754c0d4f7424730313d8efd0bfa3f568679e6e497243aadedf1445cd`  
		Last Modified: Fri, 21 Dec 2018 01:03:58 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d18c2e23220e3aa0716fe575ee9ad0203e683e543a63fc6d9f92b6511461df5c`  
		Last Modified: Fri, 21 Dec 2018 01:03:58 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8383f0a636ad6cf519660ba45f8069e868f21286cddca013b132a03a1eec1904`  
		Last Modified: Fri, 21 Dec 2018 01:03:58 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:3.1`

```console
$ docker pull crate@sha256:bf9a7d38a64caf6f7e120fbd0cb8fd3b7df67e78e6f3c47ef626bdf85fd92882
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `crate:3.1` - linux; amd64

```console
$ docker pull crate@sha256:ab308f5e090c6afc1f7c269b757c33a44e79d5bf9786f2d495d0d96514aef85b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130569740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f41ebd67d65fc3e714edc92c3a47678758873d9ca691cb3411774265e4aa74b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:00:21 GMT
RUN addgroup -g 1000 -S crate     && adduser -u 1000 -G crate -h /crate -S crate
# Wed, 23 Jan 2019 22:19:49 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl         coreutils     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.5.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.5.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.1.5.tar.gz.asc crate-3.1.5.tar.gz     && rm -rf "$GNUPGHOME" crate-3.1.5.tar.gz.asc     && tar -xf crate-3.1.5.tar.gz -C /crate --strip-components=1     && rm crate-3.1.5.tar.gz     && ln -sf /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Wed, 23 Jan 2019 22:19:54 GMT
RUN apk add --no-cache --virtual .build-deps         gnupg     && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash     && apk del .build-deps
# Wed, 23 Jan 2019 22:19:54 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 22:19:55 GMT
ENV CRATE_HEAP_SIZE=512M
# Wed, 23 Jan 2019 22:19:55 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --max-time 25 $(hostname):4200 || exit 1"] "30s" "30s" "0s" '\x00'}
# Wed, 23 Jan 2019 22:19:57 GMT
RUN mkdir -p /data/data /data/log
# Wed, 23 Jan 2019 22:19:57 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 22:19:58 GMT
WORKDIR /data
# Wed, 23 Jan 2019 22:19:58 GMT
EXPOSE 4200 4300 5432
# Wed, 23 Jan 2019 22:19:59 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2019-01-22T17:02:01.628483081+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.1.5
# Wed, 23 Jan 2019 22:19:59 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Wed, 23 Jan 2019 22:20:00 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Wed, 23 Jan 2019 22:20:00 GMT
COPY file:45928eb9f61bad7db8a236ab07cde77661e3e034d86ecfba093f320e019b3ce0 in /docker-entrypoint.sh 
# Wed, 23 Jan 2019 22:20:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Jan 2019 22:20:01 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f9be2a1317187a4a965a34ea54ef71816a72cc4a215f84a3a843ea3ab552da`  
		Last Modified: Fri, 21 Dec 2018 01:03:41 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a940d8b311bc2463e432d5f16760444d671b9bc1501dcf1968b54f81884e6c82`  
		Last Modified: Wed, 23 Jan 2019 22:20:44 GMT  
		Size: 126.9 MB (126901729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e994097fc3c56ba103f207f3829d6fa7ff6bbce7d19172cdf6049c402d0c15`  
		Last Modified: Wed, 23 Jan 2019 22:20:29 GMT  
		Size: 1.5 MB (1457865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88567f138a1d6b198fb11b8dc7e7a7ffc726cd8453fd11549e81455146c796d6`  
		Last Modified: Wed, 23 Jan 2019 22:20:27 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8050de87b2d772462dd549447fab00559e4b68468b3b4faa2a8ed1199ba9fcf0`  
		Last Modified: Wed, 23 Jan 2019 22:20:27 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398275537b9bb0045d6a1650aad2ac521a4261e6bdca7a23ac86505263a681e7`  
		Last Modified: Wed, 23 Jan 2019 22:20:27 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32da15a64473dd312c670f7c5ad100723ef6d382c90e928ad7361a75252e363`  
		Last Modified: Wed, 23 Jan 2019 22:20:27 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `crate:3.1` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:db0c912f2ffb291abdf1b8ac7032599f0a3d98e1f05af9834b8395666dd5a9b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128570784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f194b7a8010074bbd1dea99993ec8e283b3283be7a20122711e3152938467d0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:40:52 GMT
RUN addgroup -g 1000 -S crate     && adduser -u 1000 -G crate -h /crate -S crate
# Fri, 25 Jan 2019 09:53:30 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl         coreutils     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.5.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.5.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.1.5.tar.gz.asc crate-3.1.5.tar.gz     && rm -rf "$GNUPGHOME" crate-3.1.5.tar.gz.asc     && tar -xf crate-3.1.5.tar.gz -C /crate --strip-components=1     && rm crate-3.1.5.tar.gz     && ln -sf /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Fri, 25 Jan 2019 09:53:43 GMT
RUN apk add --no-cache --virtual .build-deps         gnupg     && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash     && apk del .build-deps
# Fri, 25 Jan 2019 09:53:45 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Jan 2019 09:53:47 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 25 Jan 2019 09:53:50 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --max-time 25 $(hostname):4200 || exit 1"] "30s" "30s" "0s" '\x00'}
# Fri, 25 Jan 2019 09:53:57 GMT
RUN mkdir -p /data/data /data/log
# Fri, 25 Jan 2019 09:53:58 GMT
VOLUME [/data]
# Fri, 25 Jan 2019 09:54:01 GMT
WORKDIR /data
# Fri, 25 Jan 2019 09:54:03 GMT
EXPOSE 4200 4300 5432
# Fri, 25 Jan 2019 09:54:05 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2019-01-22T17:02:01.628483081+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.1.5
# Fri, 25 Jan 2019 09:54:06 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Fri, 25 Jan 2019 09:54:08 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Fri, 25 Jan 2019 09:54:08 GMT
COPY file:45928eb9f61bad7db8a236ab07cde77661e3e034d86ecfba093f320e019b3ce0 in /docker-entrypoint.sh 
# Fri, 25 Jan 2019 09:54:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 25 Jan 2019 09:54:13 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf6e4828a3e9f80bfa761b39062e4481c11b4a610152a814acd32573231fa99`  
		Last Modified: Fri, 21 Dec 2018 13:42:11 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c0e67bbf3f48cc5272f52f25ca390d32d7129326881f72227fa77c036063c0d`  
		Last Modified: Fri, 25 Jan 2019 09:55:07 GMT  
		Size: 125.0 MB (125011209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7f21460e9575c38dc2e949517a38a8879a2cd80160ec7ab0c0bd58aed14fc0`  
		Last Modified: Fri, 25 Jan 2019 09:54:36 GMT  
		Size: 1.5 MB (1456441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da11ea425af1731ea21a870fa115175477cae145c8ade3c1daaf9e87bf216f13`  
		Last Modified: Fri, 25 Jan 2019 09:54:36 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e901e4006cebfb1689df93628a914d428008bc5a4998a3794fcb564853083d3`  
		Last Modified: Fri, 25 Jan 2019 09:54:36 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aff0b367ba9ee7651f99121048f8d6d970a02d5634af435b7e1cd68f238c6c6`  
		Last Modified: Fri, 25 Jan 2019 09:54:36 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0c2d26d4648beea5d96e217db832b78f33579544be71ffe03f3dfbe30f6fe4`  
		Last Modified: Fri, 25 Jan 2019 09:54:36 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:3.1.5`

```console
$ docker pull crate@sha256:bf9a7d38a64caf6f7e120fbd0cb8fd3b7df67e78e6f3c47ef626bdf85fd92882
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `crate:3.1.5` - linux; amd64

```console
$ docker pull crate@sha256:ab308f5e090c6afc1f7c269b757c33a44e79d5bf9786f2d495d0d96514aef85b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130569740 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f41ebd67d65fc3e714edc92c3a47678758873d9ca691cb3411774265e4aa74b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:00:21 GMT
RUN addgroup -g 1000 -S crate     && adduser -u 1000 -G crate -h /crate -S crate
# Wed, 23 Jan 2019 22:19:49 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl         coreutils     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.5.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.5.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.1.5.tar.gz.asc crate-3.1.5.tar.gz     && rm -rf "$GNUPGHOME" crate-3.1.5.tar.gz.asc     && tar -xf crate-3.1.5.tar.gz -C /crate --strip-components=1     && rm crate-3.1.5.tar.gz     && ln -sf /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Wed, 23 Jan 2019 22:19:54 GMT
RUN apk add --no-cache --virtual .build-deps         gnupg     && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash     && apk del .build-deps
# Wed, 23 Jan 2019 22:19:54 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 22:19:55 GMT
ENV CRATE_HEAP_SIZE=512M
# Wed, 23 Jan 2019 22:19:55 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --max-time 25 $(hostname):4200 || exit 1"] "30s" "30s" "0s" '\x00'}
# Wed, 23 Jan 2019 22:19:57 GMT
RUN mkdir -p /data/data /data/log
# Wed, 23 Jan 2019 22:19:57 GMT
VOLUME [/data]
# Wed, 23 Jan 2019 22:19:58 GMT
WORKDIR /data
# Wed, 23 Jan 2019 22:19:58 GMT
EXPOSE 4200 4300 5432
# Wed, 23 Jan 2019 22:19:59 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2019-01-22T17:02:01.628483081+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.1.5
# Wed, 23 Jan 2019 22:19:59 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Wed, 23 Jan 2019 22:20:00 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Wed, 23 Jan 2019 22:20:00 GMT
COPY file:45928eb9f61bad7db8a236ab07cde77661e3e034d86ecfba093f320e019b3ce0 in /docker-entrypoint.sh 
# Wed, 23 Jan 2019 22:20:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 23 Jan 2019 22:20:01 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69f9be2a1317187a4a965a34ea54ef71816a72cc4a215f84a3a843ea3ab552da`  
		Last Modified: Fri, 21 Dec 2018 01:03:41 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a940d8b311bc2463e432d5f16760444d671b9bc1501dcf1968b54f81884e6c82`  
		Last Modified: Wed, 23 Jan 2019 22:20:44 GMT  
		Size: 126.9 MB (126901729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17e994097fc3c56ba103f207f3829d6fa7ff6bbce7d19172cdf6049c402d0c15`  
		Last Modified: Wed, 23 Jan 2019 22:20:29 GMT  
		Size: 1.5 MB (1457865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88567f138a1d6b198fb11b8dc7e7a7ffc726cd8453fd11549e81455146c796d6`  
		Last Modified: Wed, 23 Jan 2019 22:20:27 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8050de87b2d772462dd549447fab00559e4b68468b3b4faa2a8ed1199ba9fcf0`  
		Last Modified: Wed, 23 Jan 2019 22:20:27 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:398275537b9bb0045d6a1650aad2ac521a4261e6bdca7a23ac86505263a681e7`  
		Last Modified: Wed, 23 Jan 2019 22:20:27 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f32da15a64473dd312c670f7c5ad100723ef6d382c90e928ad7361a75252e363`  
		Last Modified: Wed, 23 Jan 2019 22:20:27 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `crate:3.1.5` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:db0c912f2ffb291abdf1b8ac7032599f0a3d98e1f05af9834b8395666dd5a9b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128570784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f194b7a8010074bbd1dea99993ec8e283b3283be7a20122711e3152938467d0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:40:52 GMT
RUN addgroup -g 1000 -S crate     && adduser -u 1000 -G crate -h /crate -S crate
# Fri, 25 Jan 2019 09:53:30 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl         coreutils     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.5.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.5.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.1.5.tar.gz.asc crate-3.1.5.tar.gz     && rm -rf "$GNUPGHOME" crate-3.1.5.tar.gz.asc     && tar -xf crate-3.1.5.tar.gz -C /crate --strip-components=1     && rm crate-3.1.5.tar.gz     && ln -sf /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Fri, 25 Jan 2019 09:53:43 GMT
RUN apk add --no-cache --virtual .build-deps         gnupg     && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash     && apk del .build-deps
# Fri, 25 Jan 2019 09:53:45 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Jan 2019 09:53:47 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 25 Jan 2019 09:53:50 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --max-time 25 $(hostname):4200 || exit 1"] "30s" "30s" "0s" '\x00'}
# Fri, 25 Jan 2019 09:53:57 GMT
RUN mkdir -p /data/data /data/log
# Fri, 25 Jan 2019 09:53:58 GMT
VOLUME [/data]
# Fri, 25 Jan 2019 09:54:01 GMT
WORKDIR /data
# Fri, 25 Jan 2019 09:54:03 GMT
EXPOSE 4200 4300 5432
# Fri, 25 Jan 2019 09:54:05 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2019-01-22T17:02:01.628483081+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.1.5
# Fri, 25 Jan 2019 09:54:06 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Fri, 25 Jan 2019 09:54:08 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Fri, 25 Jan 2019 09:54:08 GMT
COPY file:45928eb9f61bad7db8a236ab07cde77661e3e034d86ecfba093f320e019b3ce0 in /docker-entrypoint.sh 
# Fri, 25 Jan 2019 09:54:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 25 Jan 2019 09:54:13 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf6e4828a3e9f80bfa761b39062e4481c11b4a610152a814acd32573231fa99`  
		Last Modified: Fri, 21 Dec 2018 13:42:11 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c0e67bbf3f48cc5272f52f25ca390d32d7129326881f72227fa77c036063c0d`  
		Last Modified: Fri, 25 Jan 2019 09:55:07 GMT  
		Size: 125.0 MB (125011209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7f21460e9575c38dc2e949517a38a8879a2cd80160ec7ab0c0bd58aed14fc0`  
		Last Modified: Fri, 25 Jan 2019 09:54:36 GMT  
		Size: 1.5 MB (1456441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da11ea425af1731ea21a870fa115175477cae145c8ade3c1daaf9e87bf216f13`  
		Last Modified: Fri, 25 Jan 2019 09:54:36 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e901e4006cebfb1689df93628a914d428008bc5a4998a3794fcb564853083d3`  
		Last Modified: Fri, 25 Jan 2019 09:54:36 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aff0b367ba9ee7651f99121048f8d6d970a02d5634af435b7e1cd68f238c6c6`  
		Last Modified: Fri, 25 Jan 2019 09:54:36 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0c2d26d4648beea5d96e217db832b78f33579544be71ffe03f3dfbe30f6fe4`  
		Last Modified: Fri, 25 Jan 2019 09:54:36 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:3.2`

```console
$ docker pull crate@sha256:8767f51fbabe2a5f1ebe5985c6c62da3f0e490a14255d692e39169fd3f476629
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:3.2` - linux; amd64

```console
$ docker pull crate@sha256:8f23bfcef185cca31db36e516c04118c2f048440afb46ed4f00f588bb2b335fc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.2 MB (342196516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a73cbf12f75996ed964480436642e2e436686d58a934ba3831b82c8c18e5a8f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Tue, 29 Jan 2019 23:19:29 GMT
RUN groupadd crate && useradd -u 1000 -g crate -d /crate crate
# Tue, 29 Jan 2019 23:19:47 GMT
RUN curl --retry 8 -o /openjdk.tar.gz https://download.java.net/java/GA/jdk11/13/GPL/openjdk-11.0.1_linux-x64_bin.tar.gz     && echo "7a6bb980b9c91c478421f865087ad2d69086a0583aeeb9e69204785e8e97dcfd */openjdk.tar.gz" | sha256sum -c -     && tar -C /opt -zxf /openjdk.tar.gz     && rm /openjdk.tar.gz
# Tue, 29 Jan 2019 23:19:48 GMT
ENV JAVA_HOME=/opt/jdk-11.0.1
# Tue, 29 Jan 2019 23:19:48 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts /opt/jdk-11.0.1/lib/security/cacerts
# Tue, 29 Jan 2019 23:21:02 GMT
RUN yum install -y yum-utils https://centos7.iuscommunity.org/ius-release.rpm     && yum makecache     && yum install -y python36u openssl     && yum clean all     && rm -rf /var/cache/yum     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.2.2.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.2.2.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.2.2.tar.gz.asc crate-3.2.2.tar.gz     && rm -rf "$GNUPGHOME" crate-3.2.2.tar.gz.asc     && tar -xf crate-3.2.2.tar.gz -C /crate --strip-components=1     && rm crate-3.2.2.tar.gz     && ln -sf /usr/bin/python3 /usr/bin/python
# Tue, 29 Jan 2019 23:21:02 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Tue, 29 Jan 2019 23:21:03 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Tue, 29 Jan 2019 23:21:04 GMT
RUN curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash
# Tue, 29 Jan 2019 23:21:05 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Jan 2019 23:21:05 GMT
ENV CRATE_HEAP_SIZE=512M
# Tue, 29 Jan 2019 23:21:05 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --max-time 25 $(hostname):4200 || exit 1"] "30s" "30s" "0s" '\x00'}
# Tue, 29 Jan 2019 23:21:06 GMT
RUN mkdir -p /data/data /data/log
# Tue, 29 Jan 2019 23:21:06 GMT
VOLUME [/data]
# Tue, 29 Jan 2019 23:21:06 GMT
WORKDIR /data
# Tue, 29 Jan 2019 23:21:06 GMT
EXPOSE 4200 4300 5432
# Tue, 29 Jan 2019 23:21:06 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2019-01-29T13:40:50.085787993+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.2.2
# Tue, 29 Jan 2019 23:21:06 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Tue, 29 Jan 2019 23:21:07 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Tue, 29 Jan 2019 23:21:07 GMT
COPY file:9830363b41b8063591887d9dc9ce2767bf0e91dc4cb05efcb6ea622a60ec15e3 in / 
# Tue, 29 Jan 2019 23:21:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 29 Jan 2019 23:21:07 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3b2f3029bf3d37d53f02ec1fd06dcdd9aaf7e5b304227556ebcf7625faf4ec`  
		Last Modified: Tue, 29 Jan 2019 23:21:36 GMT  
		Size: 2.0 KB (2015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484ca28b121efb621f5dc3984b2b8ae4af4435ce25f61275ebbdfdbbbbe6088e`  
		Last Modified: Tue, 29 Jan 2019 23:21:56 GMT  
		Size: 188.1 MB (188101373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38e515cf0412753750450c4cd5f65f94ee4a53dd0250eed89f17c17dc9220d8`  
		Last Modified: Tue, 29 Jan 2019 23:21:36 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:676f20d604fe4c42c9dd60c0e589ce3b7ddabcb73b44df88c52cc47d70b1f241`  
		Last Modified: Tue, 29 Jan 2019 23:21:46 GMT  
		Size: 77.6 MB (77630281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48cc08281aef8972592af80a32dc645ba896164a8db2930fe03cc924ac9ad7f9`  
		Last Modified: Tue, 29 Jan 2019 23:21:35 GMT  
		Size: 264.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3a50b3d220b920066c7c15771040746bd6de87da61e233725070f495033f81b`  
		Last Modified: Tue, 29 Jan 2019 23:21:35 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e678eb96dfe736abb7333ef17673a6940efe553015f7b814b3516d4bc042c6`  
		Last Modified: Tue, 29 Jan 2019 23:21:35 GMT  
		Size: 1.3 MB (1294035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09bcb046be02cc8d11c88a5828877a85ac3f8e1589c25ec8e033d6b09b9d00b7`  
		Last Modified: Tue, 29 Jan 2019 23:21:35 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82274e3c9faf7cd15afaa23b9adef196bf95622d035be7c63834d532950ab815`  
		Last Modified: Tue, 29 Jan 2019 23:21:35 GMT  
		Size: 264.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b086da7db8606c0b72a6f03481b0a2acae09602e79bec3570623738ad0fb0250`  
		Last Modified: Tue, 29 Jan 2019 23:21:35 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc54f788bfc32e5055ce3b9cb47f6c579003e1fee884819836eaab38597b9457`  
		Last Modified: Tue, 29 Jan 2019 23:21:35 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:3.2.2`

```console
$ docker pull crate@sha256:8767f51fbabe2a5f1ebe5985c6c62da3f0e490a14255d692e39169fd3f476629
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:3.2.2` - linux; amd64

```console
$ docker pull crate@sha256:8f23bfcef185cca31db36e516c04118c2f048440afb46ed4f00f588bb2b335fc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.2 MB (342196516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a73cbf12f75996ed964480436642e2e436686d58a934ba3831b82c8c18e5a8f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Tue, 29 Jan 2019 23:19:29 GMT
RUN groupadd crate && useradd -u 1000 -g crate -d /crate crate
# Tue, 29 Jan 2019 23:19:47 GMT
RUN curl --retry 8 -o /openjdk.tar.gz https://download.java.net/java/GA/jdk11/13/GPL/openjdk-11.0.1_linux-x64_bin.tar.gz     && echo "7a6bb980b9c91c478421f865087ad2d69086a0583aeeb9e69204785e8e97dcfd */openjdk.tar.gz" | sha256sum -c -     && tar -C /opt -zxf /openjdk.tar.gz     && rm /openjdk.tar.gz
# Tue, 29 Jan 2019 23:19:48 GMT
ENV JAVA_HOME=/opt/jdk-11.0.1
# Tue, 29 Jan 2019 23:19:48 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts /opt/jdk-11.0.1/lib/security/cacerts
# Tue, 29 Jan 2019 23:21:02 GMT
RUN yum install -y yum-utils https://centos7.iuscommunity.org/ius-release.rpm     && yum makecache     && yum install -y python36u openssl     && yum clean all     && rm -rf /var/cache/yum     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.2.2.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.2.2.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.2.2.tar.gz.asc crate-3.2.2.tar.gz     && rm -rf "$GNUPGHOME" crate-3.2.2.tar.gz.asc     && tar -xf crate-3.2.2.tar.gz -C /crate --strip-components=1     && rm crate-3.2.2.tar.gz     && ln -sf /usr/bin/python3 /usr/bin/python
# Tue, 29 Jan 2019 23:21:02 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Tue, 29 Jan 2019 23:21:03 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Tue, 29 Jan 2019 23:21:04 GMT
RUN curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash
# Tue, 29 Jan 2019 23:21:05 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Jan 2019 23:21:05 GMT
ENV CRATE_HEAP_SIZE=512M
# Tue, 29 Jan 2019 23:21:05 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --max-time 25 $(hostname):4200 || exit 1"] "30s" "30s" "0s" '\x00'}
# Tue, 29 Jan 2019 23:21:06 GMT
RUN mkdir -p /data/data /data/log
# Tue, 29 Jan 2019 23:21:06 GMT
VOLUME [/data]
# Tue, 29 Jan 2019 23:21:06 GMT
WORKDIR /data
# Tue, 29 Jan 2019 23:21:06 GMT
EXPOSE 4200 4300 5432
# Tue, 29 Jan 2019 23:21:06 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2019-01-29T13:40:50.085787993+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.2.2
# Tue, 29 Jan 2019 23:21:06 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Tue, 29 Jan 2019 23:21:07 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Tue, 29 Jan 2019 23:21:07 GMT
COPY file:9830363b41b8063591887d9dc9ce2767bf0e91dc4cb05efcb6ea622a60ec15e3 in / 
# Tue, 29 Jan 2019 23:21:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 29 Jan 2019 23:21:07 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3b2f3029bf3d37d53f02ec1fd06dcdd9aaf7e5b304227556ebcf7625faf4ec`  
		Last Modified: Tue, 29 Jan 2019 23:21:36 GMT  
		Size: 2.0 KB (2015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484ca28b121efb621f5dc3984b2b8ae4af4435ce25f61275ebbdfdbbbbe6088e`  
		Last Modified: Tue, 29 Jan 2019 23:21:56 GMT  
		Size: 188.1 MB (188101373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38e515cf0412753750450c4cd5f65f94ee4a53dd0250eed89f17c17dc9220d8`  
		Last Modified: Tue, 29 Jan 2019 23:21:36 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:676f20d604fe4c42c9dd60c0e589ce3b7ddabcb73b44df88c52cc47d70b1f241`  
		Last Modified: Tue, 29 Jan 2019 23:21:46 GMT  
		Size: 77.6 MB (77630281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48cc08281aef8972592af80a32dc645ba896164a8db2930fe03cc924ac9ad7f9`  
		Last Modified: Tue, 29 Jan 2019 23:21:35 GMT  
		Size: 264.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3a50b3d220b920066c7c15771040746bd6de87da61e233725070f495033f81b`  
		Last Modified: Tue, 29 Jan 2019 23:21:35 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e678eb96dfe736abb7333ef17673a6940efe553015f7b814b3516d4bc042c6`  
		Last Modified: Tue, 29 Jan 2019 23:21:35 GMT  
		Size: 1.3 MB (1294035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09bcb046be02cc8d11c88a5828877a85ac3f8e1589c25ec8e033d6b09b9d00b7`  
		Last Modified: Tue, 29 Jan 2019 23:21:35 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82274e3c9faf7cd15afaa23b9adef196bf95622d035be7c63834d532950ab815`  
		Last Modified: Tue, 29 Jan 2019 23:21:35 GMT  
		Size: 264.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b086da7db8606c0b72a6f03481b0a2acae09602e79bec3570623738ad0fb0250`  
		Last Modified: Tue, 29 Jan 2019 23:21:35 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc54f788bfc32e5055ce3b9cb47f6c579003e1fee884819836eaab38597b9457`  
		Last Modified: Tue, 29 Jan 2019 23:21:35 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:latest`

```console
$ docker pull crate@sha256:8767f51fbabe2a5f1ebe5985c6c62da3f0e490a14255d692e39169fd3f476629
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:latest` - linux; amd64

```console
$ docker pull crate@sha256:8f23bfcef185cca31db36e516c04118c2f048440afb46ed4f00f588bb2b335fc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **342.2 MB (342196516 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a73cbf12f75996ed964480436642e2e436686d58a934ba3831b82c8c18e5a8f`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Thu, 06 Dec 2018 00:21:06 GMT
ADD file:6f877549795f4798a38b318c0f63f6646dbf10d3c249c7f4b73cc7cfe42dc0f5 in / 
# Thu, 06 Dec 2018 00:21:06 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20181205
# Thu, 06 Dec 2018 00:21:07 GMT
CMD ["/bin/bash"]
# Tue, 29 Jan 2019 23:19:29 GMT
RUN groupadd crate && useradd -u 1000 -g crate -d /crate crate
# Tue, 29 Jan 2019 23:19:47 GMT
RUN curl --retry 8 -o /openjdk.tar.gz https://download.java.net/java/GA/jdk11/13/GPL/openjdk-11.0.1_linux-x64_bin.tar.gz     && echo "7a6bb980b9c91c478421f865087ad2d69086a0583aeeb9e69204785e8e97dcfd */openjdk.tar.gz" | sha256sum -c -     && tar -C /opt -zxf /openjdk.tar.gz     && rm /openjdk.tar.gz
# Tue, 29 Jan 2019 23:19:48 GMT
ENV JAVA_HOME=/opt/jdk-11.0.1
# Tue, 29 Jan 2019 23:19:48 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts /opt/jdk-11.0.1/lib/security/cacerts
# Tue, 29 Jan 2019 23:21:02 GMT
RUN yum install -y yum-utils https://centos7.iuscommunity.org/ius-release.rpm     && yum makecache     && yum install -y python36u openssl     && yum clean all     && rm -rf /var/cache/yum     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.2.2.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.2.2.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.2.2.tar.gz.asc crate-3.2.2.tar.gz     && rm -rf "$GNUPGHOME" crate-3.2.2.tar.gz.asc     && tar -xf crate-3.2.2.tar.gz -C /crate --strip-components=1     && rm crate-3.2.2.tar.gz     && ln -sf /usr/bin/python3 /usr/bin/python
# Tue, 29 Jan 2019 23:21:02 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Tue, 29 Jan 2019 23:21:03 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Tue, 29 Jan 2019 23:21:04 GMT
RUN curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash
# Tue, 29 Jan 2019 23:21:05 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 Jan 2019 23:21:05 GMT
ENV CRATE_HEAP_SIZE=512M
# Tue, 29 Jan 2019 23:21:05 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --max-time 25 $(hostname):4200 || exit 1"] "30s" "30s" "0s" '\x00'}
# Tue, 29 Jan 2019 23:21:06 GMT
RUN mkdir -p /data/data /data/log
# Tue, 29 Jan 2019 23:21:06 GMT
VOLUME [/data]
# Tue, 29 Jan 2019 23:21:06 GMT
WORKDIR /data
# Tue, 29 Jan 2019 23:21:06 GMT
EXPOSE 4200 4300 5432
# Tue, 29 Jan 2019 23:21:06 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2019-01-29T13:40:50.085787993+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.2.2
# Tue, 29 Jan 2019 23:21:06 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Tue, 29 Jan 2019 23:21:07 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Tue, 29 Jan 2019 23:21:07 GMT
COPY file:9830363b41b8063591887d9dc9ce2767bf0e91dc4cb05efcb6ea622a60ec15e3 in / 
# Tue, 29 Jan 2019 23:21:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 29 Jan 2019 23:21:07 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:a02a4930cb5d36f3290eb84f4bfa30668ef2e9fe3a1fb73ec015fc58b9958b17`  
		Last Modified: Thu, 06 Dec 2018 00:33:41 GMT  
		Size: 75.2 MB (75165529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3b2f3029bf3d37d53f02ec1fd06dcdd9aaf7e5b304227556ebcf7625faf4ec`  
		Last Modified: Tue, 29 Jan 2019 23:21:36 GMT  
		Size: 2.0 KB (2015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:484ca28b121efb621f5dc3984b2b8ae4af4435ce25f61275ebbdfdbbbbe6088e`  
		Last Modified: Tue, 29 Jan 2019 23:21:56 GMT  
		Size: 188.1 MB (188101373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38e515cf0412753750450c4cd5f65f94ee4a53dd0250eed89f17c17dc9220d8`  
		Last Modified: Tue, 29 Jan 2019 23:21:36 GMT  
		Size: 214.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:676f20d604fe4c42c9dd60c0e589ce3b7ddabcb73b44df88c52cc47d70b1f241`  
		Last Modified: Tue, 29 Jan 2019 23:21:46 GMT  
		Size: 77.6 MB (77630281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48cc08281aef8972592af80a32dc645ba896164a8db2930fe03cc924ac9ad7f9`  
		Last Modified: Tue, 29 Jan 2019 23:21:35 GMT  
		Size: 264.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3a50b3d220b920066c7c15771040746bd6de87da61e233725070f495033f81b`  
		Last Modified: Tue, 29 Jan 2019 23:21:35 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8e678eb96dfe736abb7333ef17673a6940efe553015f7b814b3516d4bc042c6`  
		Last Modified: Tue, 29 Jan 2019 23:21:35 GMT  
		Size: 1.3 MB (1294035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09bcb046be02cc8d11c88a5828877a85ac3f8e1589c25ec8e033d6b09b9d00b7`  
		Last Modified: Tue, 29 Jan 2019 23:21:35 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82274e3c9faf7cd15afaa23b9adef196bf95622d035be7c63834d532950ab815`  
		Last Modified: Tue, 29 Jan 2019 23:21:35 GMT  
		Size: 264.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b086da7db8606c0b72a6f03481b0a2acae09602e79bec3570623738ad0fb0250`  
		Last Modified: Tue, 29 Jan 2019 23:21:35 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc54f788bfc32e5055ce3b9cb47f6c579003e1fee884819836eaab38597b9457`  
		Last Modified: Tue, 29 Jan 2019 23:21:35 GMT  
		Size: 526.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
