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
-	[`crate:3.1.6`](#crate316)
-	[`crate:3.2`](#crate32)
-	[`crate:3.2.3`](#crate323)
-	[`crate:latest`](#cratelatest)

## `crate:2.0`

```console
$ docker pull crate@sha256:7fdd80d4da14ce318650b9987006898f4955f8563b74d0555cbb514af78c3da5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.0` - linux; amd64

```console
$ docker pull crate@sha256:16b20f10d0090855b39ba68e4f62406e8ea7a5a29ace11898d3654fa3f778a40
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.9 MB (126913579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b2018838552f2bd898e8e9dcebd99aed7bdfde8378bc8428d7b6e28ee0aa72b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Wed, 30 Jan 2019 22:20:39 GMT
ADD file:84d23bb1bfe03587c0240a314d11a859e342962fa90b57db5661c22aa67a439b in / 
# Wed, 30 Jan 2019 22:20:40 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 00:11:43 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Thu, 31 Jan 2019 00:11:43 GMT
ENV GOSU_VERSION=1.9
# Thu, 31 Jan 2019 00:11:48 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Thu, 31 Jan 2019 00:11:49 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Thu, 31 Jan 2019 00:12:15 GMT
ENV CRATE_VERSION=2.0.7
# Thu, 31 Jan 2019 00:12:35 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/crate-sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Thu, 31 Jan 2019 00:12:35 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 31 Jan 2019 00:12:35 GMT
VOLUME [/data]
# Thu, 31 Jan 2019 00:12:36 GMT
ADD file:2f5cd2f3c20fac98ab5d09f991033c9c7c34f2d59d4ddd6497d398bf6274d8e7 in /crate/config/crate.yml 
# Thu, 31 Jan 2019 00:12:36 GMT
ADD file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Thu, 31 Jan 2019 00:12:36 GMT
COPY file:ea98b754ebed5b2e3ef56402a0fb40312373c7a03ee548e02924ff33ed78ba36 in / 
# Thu, 31 Jan 2019 00:12:36 GMT
WORKDIR /data
# Thu, 31 Jan 2019 00:12:36 GMT
EXPOSE 4200 4300 5432-5532
# Thu, 31 Jan 2019 00:12:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 31 Jan 2019 00:12:37 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:8cae0e1ac61cead281f41115cc0ebd39117f7e54dffc8fd5e05a7590dca3cd4e`  
		Last Modified: Wed, 30 Jan 2019 22:21:39 GMT  
		Size: 2.0 MB (1971694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9038485c6a2e4e758de3f65f3ec9e4970883da844c5c1981eb1519310d3a9b51`  
		Last Modified: Thu, 31 Jan 2019 00:14:20 GMT  
		Size: 592.4 KB (592364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d170aaaa931c09e3894b297bb3b9a0a46a2c0b4a389d5e179d6e2857b2c25c`  
		Last Modified: Thu, 31 Jan 2019 00:14:20 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7895c6542bf248af5c4a9de28b6d223ec03caa9f88232163c8c26d13bb481798`  
		Last Modified: Thu, 31 Jan 2019 00:14:52 GMT  
		Size: 124.3 MB (124346829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edef8643fdff42ef8dad1482adbbb63e8a58fad25880b0060f223d59a35d4074`  
		Last Modified: Thu, 31 Jan 2019 00:14:39 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed81fbb576e8830166535861caac098b1dcff78ef86e383c0de236e50405d8c8`  
		Last Modified: Thu, 31 Jan 2019 00:14:39 GMT  
		Size: 934.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef997e63564e34aadb9b05c041fe96043b79e768d6cad03b68350d23b94f381`  
		Last Modified: Thu, 31 Jan 2019 00:14:39 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1d2a404edb3e21d265b6688dc6a3760d26d77bfb207e824c407c1f91e4164a`  
		Last Modified: Thu, 31 Jan 2019 00:14:39 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.0.7`

```console
$ docker pull crate@sha256:7fdd80d4da14ce318650b9987006898f4955f8563b74d0555cbb514af78c3da5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.0.7` - linux; amd64

```console
$ docker pull crate@sha256:16b20f10d0090855b39ba68e4f62406e8ea7a5a29ace11898d3654fa3f778a40
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.9 MB (126913579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b2018838552f2bd898e8e9dcebd99aed7bdfde8378bc8428d7b6e28ee0aa72b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Wed, 30 Jan 2019 22:20:39 GMT
ADD file:84d23bb1bfe03587c0240a314d11a859e342962fa90b57db5661c22aa67a439b in / 
# Wed, 30 Jan 2019 22:20:40 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 00:11:43 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Thu, 31 Jan 2019 00:11:43 GMT
ENV GOSU_VERSION=1.9
# Thu, 31 Jan 2019 00:11:48 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Thu, 31 Jan 2019 00:11:49 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Thu, 31 Jan 2019 00:12:15 GMT
ENV CRATE_VERSION=2.0.7
# Thu, 31 Jan 2019 00:12:35 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/crate-sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Thu, 31 Jan 2019 00:12:35 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 31 Jan 2019 00:12:35 GMT
VOLUME [/data]
# Thu, 31 Jan 2019 00:12:36 GMT
ADD file:2f5cd2f3c20fac98ab5d09f991033c9c7c34f2d59d4ddd6497d398bf6274d8e7 in /crate/config/crate.yml 
# Thu, 31 Jan 2019 00:12:36 GMT
ADD file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Thu, 31 Jan 2019 00:12:36 GMT
COPY file:ea98b754ebed5b2e3ef56402a0fb40312373c7a03ee548e02924ff33ed78ba36 in / 
# Thu, 31 Jan 2019 00:12:36 GMT
WORKDIR /data
# Thu, 31 Jan 2019 00:12:36 GMT
EXPOSE 4200 4300 5432-5532
# Thu, 31 Jan 2019 00:12:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 31 Jan 2019 00:12:37 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:8cae0e1ac61cead281f41115cc0ebd39117f7e54dffc8fd5e05a7590dca3cd4e`  
		Last Modified: Wed, 30 Jan 2019 22:21:39 GMT  
		Size: 2.0 MB (1971694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9038485c6a2e4e758de3f65f3ec9e4970883da844c5c1981eb1519310d3a9b51`  
		Last Modified: Thu, 31 Jan 2019 00:14:20 GMT  
		Size: 592.4 KB (592364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d170aaaa931c09e3894b297bb3b9a0a46a2c0b4a389d5e179d6e2857b2c25c`  
		Last Modified: Thu, 31 Jan 2019 00:14:20 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7895c6542bf248af5c4a9de28b6d223ec03caa9f88232163c8c26d13bb481798`  
		Last Modified: Thu, 31 Jan 2019 00:14:52 GMT  
		Size: 124.3 MB (124346829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edef8643fdff42ef8dad1482adbbb63e8a58fad25880b0060f223d59a35d4074`  
		Last Modified: Thu, 31 Jan 2019 00:14:39 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed81fbb576e8830166535861caac098b1dcff78ef86e383c0de236e50405d8c8`  
		Last Modified: Thu, 31 Jan 2019 00:14:39 GMT  
		Size: 934.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ef997e63564e34aadb9b05c041fe96043b79e768d6cad03b68350d23b94f381`  
		Last Modified: Thu, 31 Jan 2019 00:14:39 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab1d2a404edb3e21d265b6688dc6a3760d26d77bfb207e824c407c1f91e4164a`  
		Last Modified: Thu, 31 Jan 2019 00:14:39 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.1`

```console
$ docker pull crate@sha256:31168e6cee4387768154d82d64259f6d72ae9ce6e2aa66c7cd9965e083c283e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.1` - linux; amd64

```console
$ docker pull crate@sha256:4cd3061de0e41d1f4358709db965aa8edbaff18be533181b655f8e21af34cf78
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.5 MB (129510983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84d63f3a6e7388be04623a0369aa831be3d2568041bae36f73dc2dad87b348da`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Wed, 30 Jan 2019 22:20:39 GMT
ADD file:84d23bb1bfe03587c0240a314d11a859e342962fa90b57db5661c22aa67a439b in / 
# Wed, 30 Jan 2019 22:20:40 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 00:11:43 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Thu, 31 Jan 2019 00:11:43 GMT
ENV GOSU_VERSION=1.9
# Thu, 31 Jan 2019 00:11:48 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Thu, 31 Jan 2019 00:11:49 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Thu, 31 Jan 2019 00:11:49 GMT
ENV CRATE_VERSION=2.1.10
# Thu, 31 Jan 2019 00:12:09 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/lib/sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Thu, 31 Jan 2019 00:12:09 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 31 Jan 2019 00:12:09 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 31 Jan 2019 00:12:10 GMT
VOLUME [/data]
# Thu, 31 Jan 2019 00:12:10 GMT
ADD file:2569876b69e38b6e0c1aa496cbc6c2df08275a37296fea66dd5d389f7829f999 in /crate/config/crate.yml 
# Thu, 31 Jan 2019 00:12:10 GMT
ADD file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Thu, 31 Jan 2019 00:12:10 GMT
COPY file:ea98b754ebed5b2e3ef56402a0fb40312373c7a03ee548e02924ff33ed78ba36 in / 
# Thu, 31 Jan 2019 00:12:10 GMT
WORKDIR /data
# Thu, 31 Jan 2019 00:12:10 GMT
EXPOSE 4200 4300 5432
# Thu, 31 Jan 2019 00:12:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 31 Jan 2019 00:12:11 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:8cae0e1ac61cead281f41115cc0ebd39117f7e54dffc8fd5e05a7590dca3cd4e`  
		Last Modified: Wed, 30 Jan 2019 22:21:39 GMT  
		Size: 2.0 MB (1971694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9038485c6a2e4e758de3f65f3ec9e4970883da844c5c1981eb1519310d3a9b51`  
		Last Modified: Thu, 31 Jan 2019 00:14:20 GMT  
		Size: 592.4 KB (592364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d170aaaa931c09e3894b297bb3b9a0a46a2c0b4a389d5e179d6e2857b2c25c`  
		Last Modified: Thu, 31 Jan 2019 00:14:20 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3926d995b45848c047b51d4cc675473de883bcb3c95d5d49975e9542ba2533`  
		Last Modified: Thu, 31 Jan 2019 00:14:32 GMT  
		Size: 126.9 MB (126944213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c1d2cdc2f9265e089b5ad1dcbd1ab9399793b164b508722b686f0ec88c5e3d`  
		Last Modified: Thu, 31 Jan 2019 00:14:19 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665792244577f9a26b7aef04e15b63bf857572f2d3c7d44db149be627c1d79d7`  
		Last Modified: Thu, 31 Jan 2019 00:14:19 GMT  
		Size: 937.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5739a7653585d5d5cada3661ed6163f17c042e9276191539650570fc3a844f63`  
		Last Modified: Thu, 31 Jan 2019 00:14:19 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4442a94bb36dc13bb4e43103c8baca77c99e2bcd38affd4b03531c86d899f045`  
		Last Modified: Thu, 31 Jan 2019 00:14:19 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.1.10`

```console
$ docker pull crate@sha256:31168e6cee4387768154d82d64259f6d72ae9ce6e2aa66c7cd9965e083c283e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.1.10` - linux; amd64

```console
$ docker pull crate@sha256:4cd3061de0e41d1f4358709db965aa8edbaff18be533181b655f8e21af34cf78
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.5 MB (129510983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84d63f3a6e7388be04623a0369aa831be3d2568041bae36f73dc2dad87b348da`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Wed, 30 Jan 2019 22:20:39 GMT
ADD file:84d23bb1bfe03587c0240a314d11a859e342962fa90b57db5661c22aa67a439b in / 
# Wed, 30 Jan 2019 22:20:40 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 00:11:43 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Thu, 31 Jan 2019 00:11:43 GMT
ENV GOSU_VERSION=1.9
# Thu, 31 Jan 2019 00:11:48 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Thu, 31 Jan 2019 00:11:49 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Thu, 31 Jan 2019 00:11:49 GMT
ENV CRATE_VERSION=2.1.10
# Thu, 31 Jan 2019 00:12:09 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/lib/sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Thu, 31 Jan 2019 00:12:09 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 31 Jan 2019 00:12:09 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 31 Jan 2019 00:12:10 GMT
VOLUME [/data]
# Thu, 31 Jan 2019 00:12:10 GMT
ADD file:2569876b69e38b6e0c1aa496cbc6c2df08275a37296fea66dd5d389f7829f999 in /crate/config/crate.yml 
# Thu, 31 Jan 2019 00:12:10 GMT
ADD file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Thu, 31 Jan 2019 00:12:10 GMT
COPY file:ea98b754ebed5b2e3ef56402a0fb40312373c7a03ee548e02924ff33ed78ba36 in / 
# Thu, 31 Jan 2019 00:12:10 GMT
WORKDIR /data
# Thu, 31 Jan 2019 00:12:10 GMT
EXPOSE 4200 4300 5432
# Thu, 31 Jan 2019 00:12:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 31 Jan 2019 00:12:11 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:8cae0e1ac61cead281f41115cc0ebd39117f7e54dffc8fd5e05a7590dca3cd4e`  
		Last Modified: Wed, 30 Jan 2019 22:21:39 GMT  
		Size: 2.0 MB (1971694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9038485c6a2e4e758de3f65f3ec9e4970883da844c5c1981eb1519310d3a9b51`  
		Last Modified: Thu, 31 Jan 2019 00:14:20 GMT  
		Size: 592.4 KB (592364 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d170aaaa931c09e3894b297bb3b9a0a46a2c0b4a389d5e179d6e2857b2c25c`  
		Last Modified: Thu, 31 Jan 2019 00:14:20 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e3926d995b45848c047b51d4cc675473de883bcb3c95d5d49975e9542ba2533`  
		Last Modified: Thu, 31 Jan 2019 00:14:32 GMT  
		Size: 126.9 MB (126944213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7c1d2cdc2f9265e089b5ad1dcbd1ab9399793b164b508722b686f0ec88c5e3d`  
		Last Modified: Thu, 31 Jan 2019 00:14:19 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:665792244577f9a26b7aef04e15b63bf857572f2d3c7d44db149be627c1d79d7`  
		Last Modified: Thu, 31 Jan 2019 00:14:19 GMT  
		Size: 937.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5739a7653585d5d5cada3661ed6163f17c042e9276191539650570fc3a844f63`  
		Last Modified: Thu, 31 Jan 2019 00:14:19 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4442a94bb36dc13bb4e43103c8baca77c99e2bcd38affd4b03531c86d899f045`  
		Last Modified: Thu, 31 Jan 2019 00:14:19 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.2`

```console
$ docker pull crate@sha256:79eee1bd14bed745bed917103a4d5b1e1ec4c4bf1dbcae18a9254823e7eff965
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.2` - linux; amd64

```console
$ docker pull crate@sha256:b72d9d41d4738e1e08e62bc6059d7624dd497ab3fc9a9f434f10cad43f0c1ddd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129747883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b38a584d040252c33219a0e2d08cb7c1171f1a6d51379aa99c5ba37f06304b5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:40 GMT
ADD file:9c13ab388a8e4c772b97ec8f6d2c576bece32cecdcfb6fee5175e1d3f613dd12 in / 
# Wed, 30 Jan 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 00:10:16 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Thu, 31 Jan 2019 00:10:16 GMT
ENV GOSU_VERSION=1.9
# Thu, 31 Jan 2019 00:10:20 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Thu, 31 Jan 2019 00:10:21 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Thu, 31 Jan 2019 00:11:12 GMT
ENV CRATE_VERSION=2.2.7
# Thu, 31 Jan 2019 00:11:36 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/lib/sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Thu, 31 Jan 2019 00:11:37 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 31 Jan 2019 00:11:37 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 31 Jan 2019 00:11:37 GMT
VOLUME [/data]
# Thu, 31 Jan 2019 00:11:37 GMT
ADD file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Thu, 31 Jan 2019 00:11:37 GMT
ADD file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Thu, 31 Jan 2019 00:11:37 GMT
COPY file:ea98b754ebed5b2e3ef56402a0fb40312373c7a03ee548e02924ff33ed78ba36 in / 
# Thu, 31 Jan 2019 00:11:38 GMT
WORKDIR /data
# Thu, 31 Jan 2019 00:11:38 GMT
EXPOSE 4200 4300 5432
# Thu, 31 Jan 2019 00:11:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 31 Jan 2019 00:11:38 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:48ecbb6b270eb481cb6df2a5b0332de294ec729e1968e92d725f1329637ce01b`  
		Last Modified: Wed, 30 Jan 2019 22:21:00 GMT  
		Size: 2.1 MB (2107173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8197de7c7603ced74c3fe21f43ede589fb4aa58ec0d8b55ac9f1c97e480929`  
		Last Modified: Thu, 31 Jan 2019 00:13:23 GMT  
		Size: 593.4 KB (593425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80362da7c31b4acd966d9735a8f20f7015e68ccfcb1631a8b7b0b0530d758d6`  
		Last Modified: Thu, 31 Jan 2019 00:13:23 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f904b8c0bb98dc082eb5fbcd7b9a2870ae175d1c3c1703ee2af8f8689775e65`  
		Last Modified: Thu, 31 Jan 2019 00:14:14 GMT  
		Size: 127.0 MB (127044568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc82cff3c294183404f0910234d6978d030f34d94382afd089a3da30de21102`  
		Last Modified: Thu, 31 Jan 2019 00:14:00 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d882b764f2e03ef1721b1a2130435137e7f649714aed3719e4086572791ba32`  
		Last Modified: Thu, 31 Jan 2019 00:14:00 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c965c11b7a06ec3d7c65ff8a84056ebf962ffd614100a3624db3ad5f91b84174`  
		Last Modified: Thu, 31 Jan 2019 00:14:00 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e174d9de0fa3add868dd69f84a5bcbc9e919216a068dcf25feb7825eca6942c`  
		Last Modified: Thu, 31 Jan 2019 00:14:00 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.2.7`

```console
$ docker pull crate@sha256:79eee1bd14bed745bed917103a4d5b1e1ec4c4bf1dbcae18a9254823e7eff965
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.2.7` - linux; amd64

```console
$ docker pull crate@sha256:b72d9d41d4738e1e08e62bc6059d7624dd497ab3fc9a9f434f10cad43f0c1ddd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129747883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b38a584d040252c33219a0e2d08cb7c1171f1a6d51379aa99c5ba37f06304b5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:40 GMT
ADD file:9c13ab388a8e4c772b97ec8f6d2c576bece32cecdcfb6fee5175e1d3f613dd12 in / 
# Wed, 30 Jan 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 00:10:16 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Thu, 31 Jan 2019 00:10:16 GMT
ENV GOSU_VERSION=1.9
# Thu, 31 Jan 2019 00:10:20 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Thu, 31 Jan 2019 00:10:21 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Thu, 31 Jan 2019 00:11:12 GMT
ENV CRATE_VERSION=2.2.7
# Thu, 31 Jan 2019 00:11:36 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/lib/sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Thu, 31 Jan 2019 00:11:37 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 31 Jan 2019 00:11:37 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 31 Jan 2019 00:11:37 GMT
VOLUME [/data]
# Thu, 31 Jan 2019 00:11:37 GMT
ADD file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Thu, 31 Jan 2019 00:11:37 GMT
ADD file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Thu, 31 Jan 2019 00:11:37 GMT
COPY file:ea98b754ebed5b2e3ef56402a0fb40312373c7a03ee548e02924ff33ed78ba36 in / 
# Thu, 31 Jan 2019 00:11:38 GMT
WORKDIR /data
# Thu, 31 Jan 2019 00:11:38 GMT
EXPOSE 4200 4300 5432
# Thu, 31 Jan 2019 00:11:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 31 Jan 2019 00:11:38 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:48ecbb6b270eb481cb6df2a5b0332de294ec729e1968e92d725f1329637ce01b`  
		Last Modified: Wed, 30 Jan 2019 22:21:00 GMT  
		Size: 2.1 MB (2107173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8197de7c7603ced74c3fe21f43ede589fb4aa58ec0d8b55ac9f1c97e480929`  
		Last Modified: Thu, 31 Jan 2019 00:13:23 GMT  
		Size: 593.4 KB (593425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80362da7c31b4acd966d9735a8f20f7015e68ccfcb1631a8b7b0b0530d758d6`  
		Last Modified: Thu, 31 Jan 2019 00:13:23 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f904b8c0bb98dc082eb5fbcd7b9a2870ae175d1c3c1703ee2af8f8689775e65`  
		Last Modified: Thu, 31 Jan 2019 00:14:14 GMT  
		Size: 127.0 MB (127044568 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bc82cff3c294183404f0910234d6978d030f34d94382afd089a3da30de21102`  
		Last Modified: Thu, 31 Jan 2019 00:14:00 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d882b764f2e03ef1721b1a2130435137e7f649714aed3719e4086572791ba32`  
		Last Modified: Thu, 31 Jan 2019 00:14:00 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c965c11b7a06ec3d7c65ff8a84056ebf962ffd614100a3624db3ad5f91b84174`  
		Last Modified: Thu, 31 Jan 2019 00:14:00 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e174d9de0fa3add868dd69f84a5bcbc9e919216a068dcf25feb7825eca6942c`  
		Last Modified: Thu, 31 Jan 2019 00:14:00 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.3`

```console
$ docker pull crate@sha256:a3b1c43ca32f6cffa2962f3084558a901c4154ccd5202f4f94218eb933d555d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.3` - linux; amd64

```console
$ docker pull crate@sha256:5a00bb17c8bb321eba5a4a016134c7bd8ccf49244767d6f048affb38e6cfb749
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130611335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fd2ef2fede2fba436db4365a603b93ea19847f923b3a4fc570be9dfc9ee6ca9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:40 GMT
ADD file:9c13ab388a8e4c772b97ec8f6d2c576bece32cecdcfb6fee5175e1d3f613dd12 in / 
# Wed, 30 Jan 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 00:10:16 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Thu, 31 Jan 2019 00:10:16 GMT
ENV GOSU_VERSION=1.9
# Thu, 31 Jan 2019 00:10:20 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Thu, 31 Jan 2019 00:10:21 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Thu, 31 Jan 2019 00:10:49 GMT
ENV CRATE_VERSION=2.3.11
# Thu, 31 Jan 2019 00:11:06 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Thu, 31 Jan 2019 00:11:06 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 31 Jan 2019 00:11:07 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 31 Jan 2019 00:11:07 GMT
HEALTHCHECK &{["CMD-SHELL" "curl $(hostname):4200"] "0s" "0s" "0s" '\x00'}
# Thu, 31 Jan 2019 00:11:07 GMT
VOLUME [/data]
# Thu, 31 Jan 2019 00:11:07 GMT
ADD file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Thu, 31 Jan 2019 00:11:07 GMT
ADD file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Thu, 31 Jan 2019 00:11:08 GMT
COPY file:e6a7b71a02b8bea038a1d23371bfd510dd74404a43443474622b1534a0ea994b in / 
# Thu, 31 Jan 2019 00:11:08 GMT
WORKDIR /data
# Thu, 31 Jan 2019 00:11:08 GMT
EXPOSE 4200 4300 5432
# Thu, 31 Jan 2019 00:11:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 31 Jan 2019 00:11:08 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:48ecbb6b270eb481cb6df2a5b0332de294ec729e1968e92d725f1329637ce01b`  
		Last Modified: Wed, 30 Jan 2019 22:21:00 GMT  
		Size: 2.1 MB (2107173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8197de7c7603ced74c3fe21f43ede589fb4aa58ec0d8b55ac9f1c97e480929`  
		Last Modified: Thu, 31 Jan 2019 00:13:23 GMT  
		Size: 593.4 KB (593425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80362da7c31b4acd966d9735a8f20f7015e68ccfcb1631a8b7b0b0530d758d6`  
		Last Modified: Thu, 31 Jan 2019 00:13:23 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e063eaf0ab19c1c84326b5ac5f548653bd994630f068cd7c6f7ec6e40c990271`  
		Last Modified: Thu, 31 Jan 2019 00:13:56 GMT  
		Size: 127.9 MB (127907890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:019949b75e4f0ea09b02a5b1f604618148e5cc3e57be0e01be78d46e396b2fde`  
		Last Modified: Thu, 31 Jan 2019 00:13:43 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651ef6e549fb6e14017b77e2f741b2edfd474920d26e2daa2f6f46ff402472b9`  
		Last Modified: Thu, 31 Jan 2019 00:13:44 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12a43dd106ad5ae8c695ce5408a57188f0e63523e6320df3c8fff8e247e3f77d`  
		Last Modified: Thu, 31 Jan 2019 00:13:43 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66921da1b53a8c2d34721a1d0c51e7752261cb650716ff0b98dd13b9305d2fda`  
		Last Modified: Thu, 31 Jan 2019 00:13:42 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.3.11`

```console
$ docker pull crate@sha256:a3b1c43ca32f6cffa2962f3084558a901c4154ccd5202f4f94218eb933d555d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.3.11` - linux; amd64

```console
$ docker pull crate@sha256:5a00bb17c8bb321eba5a4a016134c7bd8ccf49244767d6f048affb38e6cfb749
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130611335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fd2ef2fede2fba436db4365a603b93ea19847f923b3a4fc570be9dfc9ee6ca9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:40 GMT
ADD file:9c13ab388a8e4c772b97ec8f6d2c576bece32cecdcfb6fee5175e1d3f613dd12 in / 
# Wed, 30 Jan 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 00:10:16 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Thu, 31 Jan 2019 00:10:16 GMT
ENV GOSU_VERSION=1.9
# Thu, 31 Jan 2019 00:10:20 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Thu, 31 Jan 2019 00:10:21 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Thu, 31 Jan 2019 00:10:49 GMT
ENV CRATE_VERSION=2.3.11
# Thu, 31 Jan 2019 00:11:06 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Thu, 31 Jan 2019 00:11:06 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 31 Jan 2019 00:11:07 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 31 Jan 2019 00:11:07 GMT
HEALTHCHECK &{["CMD-SHELL" "curl $(hostname):4200"] "0s" "0s" "0s" '\x00'}
# Thu, 31 Jan 2019 00:11:07 GMT
VOLUME [/data]
# Thu, 31 Jan 2019 00:11:07 GMT
ADD file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Thu, 31 Jan 2019 00:11:07 GMT
ADD file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Thu, 31 Jan 2019 00:11:08 GMT
COPY file:e6a7b71a02b8bea038a1d23371bfd510dd74404a43443474622b1534a0ea994b in / 
# Thu, 31 Jan 2019 00:11:08 GMT
WORKDIR /data
# Thu, 31 Jan 2019 00:11:08 GMT
EXPOSE 4200 4300 5432
# Thu, 31 Jan 2019 00:11:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 31 Jan 2019 00:11:08 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:48ecbb6b270eb481cb6df2a5b0332de294ec729e1968e92d725f1329637ce01b`  
		Last Modified: Wed, 30 Jan 2019 22:21:00 GMT  
		Size: 2.1 MB (2107173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8197de7c7603ced74c3fe21f43ede589fb4aa58ec0d8b55ac9f1c97e480929`  
		Last Modified: Thu, 31 Jan 2019 00:13:23 GMT  
		Size: 593.4 KB (593425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80362da7c31b4acd966d9735a8f20f7015e68ccfcb1631a8b7b0b0530d758d6`  
		Last Modified: Thu, 31 Jan 2019 00:13:23 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e063eaf0ab19c1c84326b5ac5f548653bd994630f068cd7c6f7ec6e40c990271`  
		Last Modified: Thu, 31 Jan 2019 00:13:56 GMT  
		Size: 127.9 MB (127907890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:019949b75e4f0ea09b02a5b1f604618148e5cc3e57be0e01be78d46e396b2fde`  
		Last Modified: Thu, 31 Jan 2019 00:13:43 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:651ef6e549fb6e14017b77e2f741b2edfd474920d26e2daa2f6f46ff402472b9`  
		Last Modified: Thu, 31 Jan 2019 00:13:44 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12a43dd106ad5ae8c695ce5408a57188f0e63523e6320df3c8fff8e247e3f77d`  
		Last Modified: Thu, 31 Jan 2019 00:13:43 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66921da1b53a8c2d34721a1d0c51e7752261cb650716ff0b98dd13b9305d2fda`  
		Last Modified: Thu, 31 Jan 2019 00:13:42 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:3.0`

```console
$ docker pull crate@sha256:0db25d160e4677ac620165b97c9381f765655e1822381e36dbf702777735ea88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:3.0` - linux; amd64

```console
$ docker pull crate@sha256:516b1d85c43cad4a3d055c2c7fb5a1bea13c08a1c7aa4b545b5995b0e6d3e520
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.0 MB (130022017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84bd5ac39047ad4271a8d8a629cad8424d52ce5369c343e2c04f1c3a7148785d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:40 GMT
ADD file:9c13ab388a8e4c772b97ec8f6d2c576bece32cecdcfb6fee5175e1d3f613dd12 in / 
# Wed, 30 Jan 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 00:10:16 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Thu, 31 Jan 2019 00:10:16 GMT
ENV GOSU_VERSION=1.9
# Thu, 31 Jan 2019 00:10:20 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Thu, 31 Jan 2019 00:10:21 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Thu, 31 Jan 2019 00:10:21 GMT
ENV CRATE_VERSION=3.0.7
# Thu, 31 Jan 2019 00:10:39 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Thu, 31 Jan 2019 00:10:40 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 31 Jan 2019 00:10:40 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 31 Jan 2019 00:10:40 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --fail --max-time 25 $(hostname):4200"] "30s" "30s" "0s" '\x00'}
# Thu, 31 Jan 2019 00:10:41 GMT
RUN mkdir -p /data/data /data/log
# Thu, 31 Jan 2019 00:10:42 GMT
VOLUME [/data]
# Thu, 31 Jan 2019 00:10:42 GMT
ADD file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Thu, 31 Jan 2019 00:10:42 GMT
ADD file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Thu, 31 Jan 2019 00:10:42 GMT
COPY file:a7eedb1118b4d8951c8e0ef42f0961a143eaad99c69b8f07a3f2d8c0d7b82c92 in / 
# Thu, 31 Jan 2019 00:10:43 GMT
WORKDIR /data
# Thu, 31 Jan 2019 00:10:43 GMT
EXPOSE 4200 4300 5432
# Thu, 31 Jan 2019 00:10:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 31 Jan 2019 00:10:43 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:48ecbb6b270eb481cb6df2a5b0332de294ec729e1968e92d725f1329637ce01b`  
		Last Modified: Wed, 30 Jan 2019 22:21:00 GMT  
		Size: 2.1 MB (2107173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8197de7c7603ced74c3fe21f43ede589fb4aa58ec0d8b55ac9f1c97e480929`  
		Last Modified: Thu, 31 Jan 2019 00:13:23 GMT  
		Size: 593.4 KB (593425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80362da7c31b4acd966d9735a8f20f7015e68ccfcb1631a8b7b0b0530d758d6`  
		Last Modified: Thu, 31 Jan 2019 00:13:23 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d469bff1abc1339cec2d686a35b4100a3323863c599a1878df6e60794fbdc0ae`  
		Last Modified: Thu, 31 Jan 2019 00:13:35 GMT  
		Size: 127.3 MB (127318367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c4cddbc1ed701158ebebd7e60d603408c109ff1f18bb324c583e21d9d62a93`  
		Last Modified: Thu, 31 Jan 2019 00:13:23 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f42e2c61ac09606c2222b044ea03f5bbd773280e63afacf8248ff86ca69796`  
		Last Modified: Thu, 31 Jan 2019 00:13:22 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:056a466ef41c9c7362404703492c6d48d3d0c10c0aa0d216c28425ca2752af67`  
		Last Modified: Thu, 31 Jan 2019 00:13:22 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac9639ec18c8b7d2e9151e1ee7338d08b62254ae72a7f5a33758cf8226100ee7`  
		Last Modified: Thu, 31 Jan 2019 00:13:22 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:3.0.7`

```console
$ docker pull crate@sha256:0db25d160e4677ac620165b97c9381f765655e1822381e36dbf702777735ea88
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:3.0.7` - linux; amd64

```console
$ docker pull crate@sha256:516b1d85c43cad4a3d055c2c7fb5a1bea13c08a1c7aa4b545b5995b0e6d3e520
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.0 MB (130022017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84bd5ac39047ad4271a8d8a629cad8424d52ce5369c343e2c04f1c3a7148785d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:40 GMT
ADD file:9c13ab388a8e4c772b97ec8f6d2c576bece32cecdcfb6fee5175e1d3f613dd12 in / 
# Wed, 30 Jan 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 00:10:16 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Thu, 31 Jan 2019 00:10:16 GMT
ENV GOSU_VERSION=1.9
# Thu, 31 Jan 2019 00:10:20 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Thu, 31 Jan 2019 00:10:21 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Thu, 31 Jan 2019 00:10:21 GMT
ENV CRATE_VERSION=3.0.7
# Thu, 31 Jan 2019 00:10:39 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Thu, 31 Jan 2019 00:10:40 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 31 Jan 2019 00:10:40 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 31 Jan 2019 00:10:40 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --fail --max-time 25 $(hostname):4200"] "30s" "30s" "0s" '\x00'}
# Thu, 31 Jan 2019 00:10:41 GMT
RUN mkdir -p /data/data /data/log
# Thu, 31 Jan 2019 00:10:42 GMT
VOLUME [/data]
# Thu, 31 Jan 2019 00:10:42 GMT
ADD file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Thu, 31 Jan 2019 00:10:42 GMT
ADD file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Thu, 31 Jan 2019 00:10:42 GMT
COPY file:a7eedb1118b4d8951c8e0ef42f0961a143eaad99c69b8f07a3f2d8c0d7b82c92 in / 
# Thu, 31 Jan 2019 00:10:43 GMT
WORKDIR /data
# Thu, 31 Jan 2019 00:10:43 GMT
EXPOSE 4200 4300 5432
# Thu, 31 Jan 2019 00:10:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 31 Jan 2019 00:10:43 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:48ecbb6b270eb481cb6df2a5b0332de294ec729e1968e92d725f1329637ce01b`  
		Last Modified: Wed, 30 Jan 2019 22:21:00 GMT  
		Size: 2.1 MB (2107173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e8197de7c7603ced74c3fe21f43ede589fb4aa58ec0d8b55ac9f1c97e480929`  
		Last Modified: Thu, 31 Jan 2019 00:13:23 GMT  
		Size: 593.4 KB (593425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c80362da7c31b4acd966d9735a8f20f7015e68ccfcb1631a8b7b0b0530d758d6`  
		Last Modified: Thu, 31 Jan 2019 00:13:23 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d469bff1abc1339cec2d686a35b4100a3323863c599a1878df6e60794fbdc0ae`  
		Last Modified: Thu, 31 Jan 2019 00:13:35 GMT  
		Size: 127.3 MB (127318367 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0c4cddbc1ed701158ebebd7e60d603408c109ff1f18bb324c583e21d9d62a93`  
		Last Modified: Thu, 31 Jan 2019 00:13:23 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9f42e2c61ac09606c2222b044ea03f5bbd773280e63afacf8248ff86ca69796`  
		Last Modified: Thu, 31 Jan 2019 00:13:22 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:056a466ef41c9c7362404703492c6d48d3d0c10c0aa0d216c28425ca2752af67`  
		Last Modified: Thu, 31 Jan 2019 00:13:22 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac9639ec18c8b7d2e9151e1ee7338d08b62254ae72a7f5a33758cf8226100ee7`  
		Last Modified: Thu, 31 Jan 2019 00:13:22 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:3.1`

```console
$ docker pull crate@sha256:84d46db5e3820b182dc58ed8d6c1f013268c979926776e0465443ee2e2ced2de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `crate:3.1` - linux; amd64

```console
$ docker pull crate@sha256:154aa6f029893b54f158fb4990b1e414f258e3490b3b2a638fabf19872c80b68
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130581638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6fa6b8568d7351ed2d36dd29c7d1afb21e8b475636ca2127a421ec770f88acb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 00:09:49 GMT
RUN addgroup -g 1000 -S crate     && adduser -u 1000 -G crate -h /crate -S crate
# Thu, 07 Feb 2019 23:23:50 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl         coreutils     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.6.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.6.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.1.6.tar.gz.asc crate-3.1.6.tar.gz     && rm -rf "$GNUPGHOME" crate-3.1.6.tar.gz.asc     && tar -xf crate-3.1.6.tar.gz -C /crate --strip-components=1     && rm crate-3.1.6.tar.gz     && ln -sf /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Thu, 07 Feb 2019 23:23:53 GMT
RUN apk add --no-cache --virtual .build-deps         gnupg     && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash     && apk del .build-deps
# Thu, 07 Feb 2019 23:23:54 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Feb 2019 23:23:54 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 07 Feb 2019 23:23:54 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --max-time 25 $(hostname):4200 || exit 1"] "30s" "30s" "0s" '\x00'}
# Thu, 07 Feb 2019 23:23:55 GMT
RUN mkdir -p /data/data /data/log
# Thu, 07 Feb 2019 23:23:55 GMT
VOLUME [/data]
# Thu, 07 Feb 2019 23:23:55 GMT
WORKDIR /data
# Thu, 07 Feb 2019 23:23:55 GMT
EXPOSE 4200 4300 5432
# Thu, 07 Feb 2019 23:23:55 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2019-02-07T11:22:48.301309289+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.1.6
# Thu, 07 Feb 2019 23:23:56 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Thu, 07 Feb 2019 23:23:56 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Thu, 07 Feb 2019 23:23:56 GMT
COPY file:45928eb9f61bad7db8a236ab07cde77661e3e034d86ecfba093f320e019b3ce0 in /docker-entrypoint.sh 
# Thu, 07 Feb 2019 23:23:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Feb 2019 23:23:56 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:377b34fbf92be5fbb7c980da747fb5425ebbf26fff4238d795386ad67e1ee75d`  
		Last Modified: Thu, 31 Jan 2019 00:13:02 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9c13a7fb01cd3b1b9b6b02964f9b2db3eb1cc693567c607ab0c7655ca98319`  
		Last Modified: Thu, 07 Feb 2019 23:24:36 GMT  
		Size: 126.9 MB (126913611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d44269d7f901c007d4528e7b5cd4b4cddc097d288ca08c3dc463794fb327aba`  
		Last Modified: Thu, 07 Feb 2019 23:24:23 GMT  
		Size: 1.5 MB (1457867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d85f40ffb9ec08144e9f220215a30da53895e252e2ffc625d0fcaa5134e4d2e`  
		Last Modified: Thu, 07 Feb 2019 23:24:23 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fd10206e1499ac4fb0d04c06819847ac64196b2d2437473ed0d4c8a62beacd3`  
		Last Modified: Thu, 07 Feb 2019 23:24:23 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41f0e146d8bcd00d53a71a27e8657a4ac7e0842c0c6b10243eda952f4af74c3`  
		Last Modified: Thu, 07 Feb 2019 23:24:23 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca83c7de83498fe34f8668544106737b94402de2e9776d1a5c58dcde811576ab`  
		Last Modified: Thu, 07 Feb 2019 23:24:23 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `crate:3.1` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:57ddf87792adc965c39d71c0c8c5450596a834c872a2e10f5f4eda68cc4e9459
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128562825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a075b74c2a0c3ff42ada2f3dc6becac2e5331d1dea7af5a0cd1e3878260199ef`
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
# Fri, 08 Feb 2019 09:42:57 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl         coreutils     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.6.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.6.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.1.6.tar.gz.asc crate-3.1.6.tar.gz     && rm -rf "$GNUPGHOME" crate-3.1.6.tar.gz.asc     && tar -xf crate-3.1.6.tar.gz -C /crate --strip-components=1     && rm crate-3.1.6.tar.gz     && ln -sf /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Fri, 08 Feb 2019 09:43:05 GMT
RUN apk add --no-cache --virtual .build-deps         gnupg     && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash     && apk del .build-deps
# Fri, 08 Feb 2019 09:43:06 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Feb 2019 09:43:06 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 08 Feb 2019 09:43:08 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --max-time 25 $(hostname):4200 || exit 1"] "30s" "30s" "0s" '\x00'}
# Fri, 08 Feb 2019 09:43:11 GMT
RUN mkdir -p /data/data /data/log
# Fri, 08 Feb 2019 09:43:13 GMT
VOLUME [/data]
# Fri, 08 Feb 2019 09:43:14 GMT
WORKDIR /data
# Fri, 08 Feb 2019 09:43:15 GMT
EXPOSE 4200 4300 5432
# Fri, 08 Feb 2019 09:43:17 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2019-02-07T11:22:48.301309289+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.1.6
# Fri, 08 Feb 2019 09:43:18 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Fri, 08 Feb 2019 09:43:19 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Fri, 08 Feb 2019 09:43:19 GMT
COPY file:45928eb9f61bad7db8a236ab07cde77661e3e034d86ecfba093f320e019b3ce0 in /docker-entrypoint.sh 
# Fri, 08 Feb 2019 09:43:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Feb 2019 09:43:22 GMT
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
	-	`sha256:0507aa16892e5f7cb039db32317e021fdfbcf58f32939b422f3ef7b13b3c68cf`  
		Last Modified: Fri, 08 Feb 2019 09:44:05 GMT  
		Size: 125.0 MB (125003249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12daa617bf53b9d287ef2604f2d78f8b245c98b9acf62664057a08a5a37f97b5`  
		Last Modified: Fri, 08 Feb 2019 09:43:34 GMT  
		Size: 1.5 MB (1456441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe55297da7e59b1a293479ac30a74fef131c1908094ed32a1e9fde93be77533`  
		Last Modified: Fri, 08 Feb 2019 09:43:33 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1489d0b0f115271b09f3668327f77985ede822dea46a63401c15ad8b3970feb`  
		Last Modified: Fri, 08 Feb 2019 09:43:34 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f96ad1366d15183e5f08974696e891400b18d08170b9630ee439ea6d87de12aa`  
		Last Modified: Fri, 08 Feb 2019 09:43:34 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f7ff0279b4f7b5f49166098b4d65343b10640f84d4bc99ecfb748a27217772`  
		Last Modified: Fri, 08 Feb 2019 09:43:33 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:3.1.6`

```console
$ docker pull crate@sha256:84d46db5e3820b182dc58ed8d6c1f013268c979926776e0465443ee2e2ced2de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `crate:3.1.6` - linux; amd64

```console
$ docker pull crate@sha256:154aa6f029893b54f158fb4990b1e414f258e3490b3b2a638fabf19872c80b68
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130581638 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6fa6b8568d7351ed2d36dd29c7d1afb21e8b475636ca2127a421ec770f88acb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:46 GMT
ADD file:91fb97ea3549e52e7b6e22b93a6736cf915c756f3d13348406d8ad5f1a872680 in / 
# Wed, 30 Jan 2019 22:19:47 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 00:09:49 GMT
RUN addgroup -g 1000 -S crate     && adduser -u 1000 -G crate -h /crate -S crate
# Thu, 07 Feb 2019 23:23:50 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl         coreutils     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.6.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.6.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.1.6.tar.gz.asc crate-3.1.6.tar.gz     && rm -rf "$GNUPGHOME" crate-3.1.6.tar.gz.asc     && tar -xf crate-3.1.6.tar.gz -C /crate --strip-components=1     && rm crate-3.1.6.tar.gz     && ln -sf /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Thu, 07 Feb 2019 23:23:53 GMT
RUN apk add --no-cache --virtual .build-deps         gnupg     && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash     && apk del .build-deps
# Thu, 07 Feb 2019 23:23:54 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Feb 2019 23:23:54 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 07 Feb 2019 23:23:54 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --max-time 25 $(hostname):4200 || exit 1"] "30s" "30s" "0s" '\x00'}
# Thu, 07 Feb 2019 23:23:55 GMT
RUN mkdir -p /data/data /data/log
# Thu, 07 Feb 2019 23:23:55 GMT
VOLUME [/data]
# Thu, 07 Feb 2019 23:23:55 GMT
WORKDIR /data
# Thu, 07 Feb 2019 23:23:55 GMT
EXPOSE 4200 4300 5432
# Thu, 07 Feb 2019 23:23:55 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2019-02-07T11:22:48.301309289+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.1.6
# Thu, 07 Feb 2019 23:23:56 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Thu, 07 Feb 2019 23:23:56 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Thu, 07 Feb 2019 23:23:56 GMT
COPY file:45928eb9f61bad7db8a236ab07cde77661e3e034d86ecfba093f320e019b3ce0 in /docker-entrypoint.sh 
# Thu, 07 Feb 2019 23:23:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Feb 2019 23:23:56 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:169185f82c45a6eb72e0ca4ee66152626e7ace92a0cbc53624fb46d0a553f0bd`  
		Last Modified: Wed, 30 Jan 2019 22:21:04 GMT  
		Size: 2.2 MB (2207038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:377b34fbf92be5fbb7c980da747fb5425ebbf26fff4238d795386ad67e1ee75d`  
		Last Modified: Thu, 31 Jan 2019 00:13:02 GMT  
		Size: 1.2 KB (1231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d9c13a7fb01cd3b1b9b6b02964f9b2db3eb1cc693567c607ab0c7655ca98319`  
		Last Modified: Thu, 07 Feb 2019 23:24:36 GMT  
		Size: 126.9 MB (126913611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d44269d7f901c007d4528e7b5cd4b4cddc097d288ca08c3dc463794fb327aba`  
		Last Modified: Thu, 07 Feb 2019 23:24:23 GMT  
		Size: 1.5 MB (1457867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d85f40ffb9ec08144e9f220215a30da53895e252e2ffc625d0fcaa5134e4d2e`  
		Last Modified: Thu, 07 Feb 2019 23:24:23 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fd10206e1499ac4fb0d04c06819847ac64196b2d2437473ed0d4c8a62beacd3`  
		Last Modified: Thu, 07 Feb 2019 23:24:23 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d41f0e146d8bcd00d53a71a27e8657a4ac7e0842c0c6b10243eda952f4af74c3`  
		Last Modified: Thu, 07 Feb 2019 23:24:23 GMT  
		Size: 949.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca83c7de83498fe34f8668544106737b94402de2e9776d1a5c58dcde811576ab`  
		Last Modified: Thu, 07 Feb 2019 23:24:23 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `crate:3.1.6` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:57ddf87792adc965c39d71c0c8c5450596a834c872a2e10f5f4eda68cc4e9459
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128562825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a075b74c2a0c3ff42ada2f3dc6becac2e5331d1dea7af5a0cd1e3878260199ef`
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
# Fri, 08 Feb 2019 09:42:57 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl         coreutils     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.6.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.6.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.1.6.tar.gz.asc crate-3.1.6.tar.gz     && rm -rf "$GNUPGHOME" crate-3.1.6.tar.gz.asc     && tar -xf crate-3.1.6.tar.gz -C /crate --strip-components=1     && rm crate-3.1.6.tar.gz     && ln -sf /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Fri, 08 Feb 2019 09:43:05 GMT
RUN apk add --no-cache --virtual .build-deps         gnupg     && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash     && apk del .build-deps
# Fri, 08 Feb 2019 09:43:06 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Feb 2019 09:43:06 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 08 Feb 2019 09:43:08 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --max-time 25 $(hostname):4200 || exit 1"] "30s" "30s" "0s" '\x00'}
# Fri, 08 Feb 2019 09:43:11 GMT
RUN mkdir -p /data/data /data/log
# Fri, 08 Feb 2019 09:43:13 GMT
VOLUME [/data]
# Fri, 08 Feb 2019 09:43:14 GMT
WORKDIR /data
# Fri, 08 Feb 2019 09:43:15 GMT
EXPOSE 4200 4300 5432
# Fri, 08 Feb 2019 09:43:17 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2019-02-07T11:22:48.301309289+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.1.6
# Fri, 08 Feb 2019 09:43:18 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Fri, 08 Feb 2019 09:43:19 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Fri, 08 Feb 2019 09:43:19 GMT
COPY file:45928eb9f61bad7db8a236ab07cde77661e3e034d86ecfba093f320e019b3ce0 in /docker-entrypoint.sh 
# Fri, 08 Feb 2019 09:43:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Feb 2019 09:43:22 GMT
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
	-	`sha256:0507aa16892e5f7cb039db32317e021fdfbcf58f32939b422f3ef7b13b3c68cf`  
		Last Modified: Fri, 08 Feb 2019 09:44:05 GMT  
		Size: 125.0 MB (125003249 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12daa617bf53b9d287ef2604f2d78f8b245c98b9acf62664057a08a5a37f97b5`  
		Last Modified: Fri, 08 Feb 2019 09:43:34 GMT  
		Size: 1.5 MB (1456441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fe55297da7e59b1a293479ac30a74fef131c1908094ed32a1e9fde93be77533`  
		Last Modified: Fri, 08 Feb 2019 09:43:33 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1489d0b0f115271b09f3668327f77985ede822dea46a63401c15ad8b3970feb`  
		Last Modified: Fri, 08 Feb 2019 09:43:34 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f96ad1366d15183e5f08974696e891400b18d08170b9630ee439ea6d87de12aa`  
		Last Modified: Fri, 08 Feb 2019 09:43:34 GMT  
		Size: 950.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84f7ff0279b4f7b5f49166098b4d65343b10640f84d4bc99ecfb748a27217772`  
		Last Modified: Fri, 08 Feb 2019 09:43:33 GMT  
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

## `crate:3.2.3`

**does not exist** (yet?)

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
