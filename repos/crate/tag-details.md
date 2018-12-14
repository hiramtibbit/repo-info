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
-	[`crate:3.1.3`](#crate313)
-	[`crate:latest`](#cratelatest)

## `crate:2.0`

```console
$ docker pull crate@sha256:255ed671cb04a480df02f44f495eedd8a16d6d92e9e78bbf2a7a2a57a2b98052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.0` - linux; amd64

```console
$ docker pull crate@sha256:4b0e7cc557503cf73604536be2c24ad02397ff3ab9f916883b107d82203b236d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.9 MB (126891206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:565f3cf1914d31b18a4e419d016f79adfc709a5d2c5511765df5015ddd6dda8b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 11 Sep 2018 22:20:56 GMT
ADD file:ed60d2f27b2bac77543f1daaf837c276dbc4b183791ccf5ec7911278d58b986c in / 
# Tue, 11 Sep 2018 22:20:56 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:48:24 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Tue, 11 Sep 2018 22:48:25 GMT
ENV GOSU_VERSION=1.9
# Tue, 11 Sep 2018 22:48:36 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Tue, 11 Sep 2018 22:48:36 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Tue, 11 Sep 2018 22:49:19 GMT
ENV CRATE_VERSION=2.0.7
# Tue, 11 Sep 2018 22:49:37 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/crate-sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Tue, 11 Sep 2018 22:49:38 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Sep 2018 22:49:38 GMT
VOLUME [/data]
# Fri, 14 Dec 2018 18:20:15 GMT
ADD file:2f5cd2f3c20fac98ab5d09f991033c9c7c34f2d59d4ddd6497d398bf6274d8e7 in /crate/config/crate.yml 
# Fri, 14 Dec 2018 18:20:15 GMT
ADD file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Fri, 14 Dec 2018 18:20:15 GMT
COPY file:ea98b754ebed5b2e3ef56402a0fb40312373c7a03ee548e02924ff33ed78ba36 in / 
# Fri, 14 Dec 2018 18:20:16 GMT
WORKDIR /data
# Fri, 14 Dec 2018 18:20:16 GMT
EXPOSE 4200 4300 5432-5532
# Fri, 14 Dec 2018 18:20:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Dec 2018 18:20:17 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:24cc62de2ac95724341e63cc7e5016f026b3f46e7a7895b179c364c8b1340fe8`  
		Last Modified: Tue, 11 Sep 2018 22:22:16 GMT  
		Size: 2.0 MB (1971680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c27f91433288c51de5b462f8e1c933452a25c2d4c1f98c15372c80ab5c994d3`  
		Last Modified: Tue, 11 Sep 2018 22:51:46 GMT  
		Size: 592.4 KB (592357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7e6eb0749d40df1344f427ce592b67e6aab0461971e24e57db4b2775d21a07`  
		Last Modified: Tue, 11 Sep 2018 22:51:45 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3afa25a7c15b88d71fb8350080e45f2c14ab70ecc2ffc8c5aa52bb2c31a130`  
		Last Modified: Tue, 11 Sep 2018 22:52:23 GMT  
		Size: 124.3 MB (124324472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d8a0d6d75e203267dcc582a9e1e103459bc385d09d70b4193e65c7724560f4e`  
		Last Modified: Fri, 14 Dec 2018 18:21:10 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e86b5b7b217cd384d401753dd9638d6e9340b1d394480f69dde32b920d157b`  
		Last Modified: Fri, 14 Dec 2018 18:21:09 GMT  
		Size: 938.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce56041b6d5741e6ab230a90fc5f8ea9990b4adb4acb3de41ac785676d09d6a`  
		Last Modified: Fri, 14 Dec 2018 18:21:09 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94d4939ddabf37252ccbb9cabed5671e6975e1c71d22fb106680a990542b8480`  
		Last Modified: Fri, 14 Dec 2018 18:21:09 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.0.7`

```console
$ docker pull crate@sha256:255ed671cb04a480df02f44f495eedd8a16d6d92e9e78bbf2a7a2a57a2b98052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.0.7` - linux; amd64

```console
$ docker pull crate@sha256:4b0e7cc557503cf73604536be2c24ad02397ff3ab9f916883b107d82203b236d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.9 MB (126891206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:565f3cf1914d31b18a4e419d016f79adfc709a5d2c5511765df5015ddd6dda8b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 11 Sep 2018 22:20:56 GMT
ADD file:ed60d2f27b2bac77543f1daaf837c276dbc4b183791ccf5ec7911278d58b986c in / 
# Tue, 11 Sep 2018 22:20:56 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:48:24 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Tue, 11 Sep 2018 22:48:25 GMT
ENV GOSU_VERSION=1.9
# Tue, 11 Sep 2018 22:48:36 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Tue, 11 Sep 2018 22:48:36 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Tue, 11 Sep 2018 22:49:19 GMT
ENV CRATE_VERSION=2.0.7
# Tue, 11 Sep 2018 22:49:37 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/crate-sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Tue, 11 Sep 2018 22:49:38 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Sep 2018 22:49:38 GMT
VOLUME [/data]
# Fri, 14 Dec 2018 18:20:15 GMT
ADD file:2f5cd2f3c20fac98ab5d09f991033c9c7c34f2d59d4ddd6497d398bf6274d8e7 in /crate/config/crate.yml 
# Fri, 14 Dec 2018 18:20:15 GMT
ADD file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Fri, 14 Dec 2018 18:20:15 GMT
COPY file:ea98b754ebed5b2e3ef56402a0fb40312373c7a03ee548e02924ff33ed78ba36 in / 
# Fri, 14 Dec 2018 18:20:16 GMT
WORKDIR /data
# Fri, 14 Dec 2018 18:20:16 GMT
EXPOSE 4200 4300 5432-5532
# Fri, 14 Dec 2018 18:20:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Dec 2018 18:20:17 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:24cc62de2ac95724341e63cc7e5016f026b3f46e7a7895b179c364c8b1340fe8`  
		Last Modified: Tue, 11 Sep 2018 22:22:16 GMT  
		Size: 2.0 MB (1971680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c27f91433288c51de5b462f8e1c933452a25c2d4c1f98c15372c80ab5c994d3`  
		Last Modified: Tue, 11 Sep 2018 22:51:46 GMT  
		Size: 592.4 KB (592357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7e6eb0749d40df1344f427ce592b67e6aab0461971e24e57db4b2775d21a07`  
		Last Modified: Tue, 11 Sep 2018 22:51:45 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a3afa25a7c15b88d71fb8350080e45f2c14ab70ecc2ffc8c5aa52bb2c31a130`  
		Last Modified: Tue, 11 Sep 2018 22:52:23 GMT  
		Size: 124.3 MB (124324472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d8a0d6d75e203267dcc582a9e1e103459bc385d09d70b4193e65c7724560f4e`  
		Last Modified: Fri, 14 Dec 2018 18:21:10 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5e86b5b7b217cd384d401753dd9638d6e9340b1d394480f69dde32b920d157b`  
		Last Modified: Fri, 14 Dec 2018 18:21:09 GMT  
		Size: 938.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ce56041b6d5741e6ab230a90fc5f8ea9990b4adb4acb3de41ac785676d09d6a`  
		Last Modified: Fri, 14 Dec 2018 18:21:09 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94d4939ddabf37252ccbb9cabed5671e6975e1c71d22fb106680a990542b8480`  
		Last Modified: Fri, 14 Dec 2018 18:21:09 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.1`

```console
$ docker pull crate@sha256:4970bade6e6c4d18463319fe27de7e6a4b9697e2b7045f6e3f683f6f167e76a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.1` - linux; amd64

```console
$ docker pull crate@sha256:9ba6b77d000ff06279d600c5ce8fe1924ab5fa18e4bd908eb3f66116ba8a33fc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.5 MB (129496438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:763b8a9c2cc9ba487dc29cfb363fda4be9e56c5f4edc4fda06682e365164acaf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 11 Sep 2018 22:20:56 GMT
ADD file:ed60d2f27b2bac77543f1daaf837c276dbc4b183791ccf5ec7911278d58b986c in / 
# Tue, 11 Sep 2018 22:20:56 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:48:24 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Tue, 11 Sep 2018 22:48:25 GMT
ENV GOSU_VERSION=1.9
# Tue, 11 Sep 2018 22:48:36 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Tue, 11 Sep 2018 22:48:36 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Tue, 11 Sep 2018 22:48:37 GMT
ENV CRATE_VERSION=2.1.10
# Tue, 11 Sep 2018 22:49:06 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/lib/sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Tue, 11 Sep 2018 22:49:06 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Sep 2018 22:49:06 GMT
ENV CRATE_HEAP_SIZE=512M
# Tue, 11 Sep 2018 22:49:07 GMT
VOLUME [/data]
# Fri, 14 Dec 2018 18:20:10 GMT
ADD file:2569876b69e38b6e0c1aa496cbc6c2df08275a37296fea66dd5d389f7829f999 in /crate/config/crate.yml 
# Fri, 14 Dec 2018 18:20:10 GMT
ADD file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Fri, 14 Dec 2018 18:20:10 GMT
COPY file:ea98b754ebed5b2e3ef56402a0fb40312373c7a03ee548e02924ff33ed78ba36 in / 
# Fri, 14 Dec 2018 18:20:11 GMT
WORKDIR /data
# Fri, 14 Dec 2018 18:20:11 GMT
EXPOSE 4200 4300 5432
# Fri, 14 Dec 2018 18:20:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Dec 2018 18:20:11 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:24cc62de2ac95724341e63cc7e5016f026b3f46e7a7895b179c364c8b1340fe8`  
		Last Modified: Tue, 11 Sep 2018 22:22:16 GMT  
		Size: 2.0 MB (1971680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c27f91433288c51de5b462f8e1c933452a25c2d4c1f98c15372c80ab5c994d3`  
		Last Modified: Tue, 11 Sep 2018 22:51:46 GMT  
		Size: 592.4 KB (592357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7e6eb0749d40df1344f427ce592b67e6aab0461971e24e57db4b2775d21a07`  
		Last Modified: Tue, 11 Sep 2018 22:51:45 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849bc6747d74186aee65045681d6fb75f95c20cdcb7f08180bee024ccaa55cca`  
		Last Modified: Tue, 11 Sep 2018 22:51:57 GMT  
		Size: 126.9 MB (126929687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb31da7827c78f1e7e168db2ba23d352d084db262a21043a6180f1e056ab2b56`  
		Last Modified: Fri, 14 Dec 2018 18:21:04 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb33ed1474b9f72aca73b6706a7f13893de7a63a726549fda9de53f05f1ccb8`  
		Last Modified: Fri, 14 Dec 2018 18:21:04 GMT  
		Size: 937.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b234a8c86d0e0788440449abfb68c5bd2c3aa8c82b6f406d25cf716487eb1e1`  
		Last Modified: Fri, 14 Dec 2018 18:21:04 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2431ab276dbfa7d2331bac8a356a661283c6599b06034940e3a9581b7f7bccb`  
		Last Modified: Fri, 14 Dec 2018 18:21:04 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.1.10`

```console
$ docker pull crate@sha256:4970bade6e6c4d18463319fe27de7e6a4b9697e2b7045f6e3f683f6f167e76a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.1.10` - linux; amd64

```console
$ docker pull crate@sha256:9ba6b77d000ff06279d600c5ce8fe1924ab5fa18e4bd908eb3f66116ba8a33fc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.5 MB (129496438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:763b8a9c2cc9ba487dc29cfb363fda4be9e56c5f4edc4fda06682e365164acaf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 11 Sep 2018 22:20:56 GMT
ADD file:ed60d2f27b2bac77543f1daaf837c276dbc4b183791ccf5ec7911278d58b986c in / 
# Tue, 11 Sep 2018 22:20:56 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:48:24 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Tue, 11 Sep 2018 22:48:25 GMT
ENV GOSU_VERSION=1.9
# Tue, 11 Sep 2018 22:48:36 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Tue, 11 Sep 2018 22:48:36 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Tue, 11 Sep 2018 22:48:37 GMT
ENV CRATE_VERSION=2.1.10
# Tue, 11 Sep 2018 22:49:06 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/lib/sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Tue, 11 Sep 2018 22:49:06 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Sep 2018 22:49:06 GMT
ENV CRATE_HEAP_SIZE=512M
# Tue, 11 Sep 2018 22:49:07 GMT
VOLUME [/data]
# Fri, 14 Dec 2018 18:20:10 GMT
ADD file:2569876b69e38b6e0c1aa496cbc6c2df08275a37296fea66dd5d389f7829f999 in /crate/config/crate.yml 
# Fri, 14 Dec 2018 18:20:10 GMT
ADD file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Fri, 14 Dec 2018 18:20:10 GMT
COPY file:ea98b754ebed5b2e3ef56402a0fb40312373c7a03ee548e02924ff33ed78ba36 in / 
# Fri, 14 Dec 2018 18:20:11 GMT
WORKDIR /data
# Fri, 14 Dec 2018 18:20:11 GMT
EXPOSE 4200 4300 5432
# Fri, 14 Dec 2018 18:20:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Dec 2018 18:20:11 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:24cc62de2ac95724341e63cc7e5016f026b3f46e7a7895b179c364c8b1340fe8`  
		Last Modified: Tue, 11 Sep 2018 22:22:16 GMT  
		Size: 2.0 MB (1971680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c27f91433288c51de5b462f8e1c933452a25c2d4c1f98c15372c80ab5c994d3`  
		Last Modified: Tue, 11 Sep 2018 22:51:46 GMT  
		Size: 592.4 KB (592357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7e6eb0749d40df1344f427ce592b67e6aab0461971e24e57db4b2775d21a07`  
		Last Modified: Tue, 11 Sep 2018 22:51:45 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:849bc6747d74186aee65045681d6fb75f95c20cdcb7f08180bee024ccaa55cca`  
		Last Modified: Tue, 11 Sep 2018 22:51:57 GMT  
		Size: 126.9 MB (126929687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb31da7827c78f1e7e168db2ba23d352d084db262a21043a6180f1e056ab2b56`  
		Last Modified: Fri, 14 Dec 2018 18:21:04 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cb33ed1474b9f72aca73b6706a7f13893de7a63a726549fda9de53f05f1ccb8`  
		Last Modified: Fri, 14 Dec 2018 18:21:04 GMT  
		Size: 937.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b234a8c86d0e0788440449abfb68c5bd2c3aa8c82b6f406d25cf716487eb1e1`  
		Last Modified: Fri, 14 Dec 2018 18:21:04 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2431ab276dbfa7d2331bac8a356a661283c6599b06034940e3a9581b7f7bccb`  
		Last Modified: Fri, 14 Dec 2018 18:21:04 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.2`

```console
$ docker pull crate@sha256:b3f3b2670dee1a430224ce1485d5dbe86639a492a4bc167a97928de903fd7efa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.2` - linux; amd64

```console
$ docker pull crate@sha256:57315f9fea36c3247a5c3407e5aa45a943c784f2a4b1dccbaf35f992746dc949
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129677443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b909864484fea3c7512cda70b5b2c05032e12b260e083842f50042acef8a791d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:46:57 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Tue, 11 Sep 2018 22:46:57 GMT
ENV GOSU_VERSION=1.9
# Tue, 11 Sep 2018 22:47:01 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Tue, 11 Sep 2018 22:47:05 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Tue, 11 Sep 2018 22:47:57 GMT
ENV CRATE_VERSION=2.2.7
# Tue, 11 Sep 2018 22:48:14 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/lib/sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Tue, 11 Sep 2018 22:48:14 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Sep 2018 22:48:15 GMT
ENV CRATE_HEAP_SIZE=512M
# Tue, 11 Sep 2018 22:48:15 GMT
VOLUME [/data]
# Fri, 14 Dec 2018 18:20:06 GMT
ADD file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Fri, 14 Dec 2018 18:20:06 GMT
ADD file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Fri, 14 Dec 2018 18:20:06 GMT
COPY file:ea98b754ebed5b2e3ef56402a0fb40312373c7a03ee548e02924ff33ed78ba36 in / 
# Fri, 14 Dec 2018 18:20:06 GMT
WORKDIR /data
# Fri, 14 Dec 2018 18:20:06 GMT
EXPOSE 4200 4300 5432
# Fri, 14 Dec 2018 18:20:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Dec 2018 18:20:07 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1151b8f33c3f69a31caa82008fd08a66d46721d663753d985b2a8119590e68bf`  
		Last Modified: Tue, 11 Sep 2018 22:49:55 GMT  
		Size: 593.4 KB (593423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80620c5354abd5bda7d597223d14f4a5a87e4f239c643013bc595bd5f96cbca6`  
		Last Modified: Tue, 11 Sep 2018 22:49:56 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb5f5029ff2cd3879e5da0a930a9a90e3b37bd1f8140c740521d0290c1fc50cf`  
		Last Modified: Tue, 11 Sep 2018 22:51:23 GMT  
		Size: 127.0 MB (126974120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c633ad0438fb7d16ebf25300fa64c5dc13cc6307b6d7510b93d021d1b5a2658b`  
		Last Modified: Fri, 14 Dec 2018 18:21:00 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2f3659aeae7ff6857d0a7d3154d14097843d4c329f45a9f8eb6bb9c14a927a`  
		Last Modified: Fri, 14 Dec 2018 18:21:00 GMT  
		Size: 940.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:062ed3ef953cc32c13c7b09c59066cdb207f7ec3b5ed30c0ee841e0237fee850`  
		Last Modified: Fri, 14 Dec 2018 18:21:00 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d05874a03041ef42c46c93d3c05c68abe33ee5d7a16c78f161b2b9196b041e01`  
		Last Modified: Fri, 14 Dec 2018 18:21:00 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.2.7`

```console
$ docker pull crate@sha256:b3f3b2670dee1a430224ce1485d5dbe86639a492a4bc167a97928de903fd7efa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.2.7` - linux; amd64

```console
$ docker pull crate@sha256:57315f9fea36c3247a5c3407e5aa45a943c784f2a4b1dccbaf35f992746dc949
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129677443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b909864484fea3c7512cda70b5b2c05032e12b260e083842f50042acef8a791d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:46:57 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Tue, 11 Sep 2018 22:46:57 GMT
ENV GOSU_VERSION=1.9
# Tue, 11 Sep 2018 22:47:01 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Tue, 11 Sep 2018 22:47:05 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Tue, 11 Sep 2018 22:47:57 GMT
ENV CRATE_VERSION=2.2.7
# Tue, 11 Sep 2018 22:48:14 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/lib/sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Tue, 11 Sep 2018 22:48:14 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Sep 2018 22:48:15 GMT
ENV CRATE_HEAP_SIZE=512M
# Tue, 11 Sep 2018 22:48:15 GMT
VOLUME [/data]
# Fri, 14 Dec 2018 18:20:06 GMT
ADD file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Fri, 14 Dec 2018 18:20:06 GMT
ADD file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Fri, 14 Dec 2018 18:20:06 GMT
COPY file:ea98b754ebed5b2e3ef56402a0fb40312373c7a03ee548e02924ff33ed78ba36 in / 
# Fri, 14 Dec 2018 18:20:06 GMT
WORKDIR /data
# Fri, 14 Dec 2018 18:20:06 GMT
EXPOSE 4200 4300 5432
# Fri, 14 Dec 2018 18:20:07 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Dec 2018 18:20:07 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1151b8f33c3f69a31caa82008fd08a66d46721d663753d985b2a8119590e68bf`  
		Last Modified: Tue, 11 Sep 2018 22:49:55 GMT  
		Size: 593.4 KB (593423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80620c5354abd5bda7d597223d14f4a5a87e4f239c643013bc595bd5f96cbca6`  
		Last Modified: Tue, 11 Sep 2018 22:49:56 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb5f5029ff2cd3879e5da0a930a9a90e3b37bd1f8140c740521d0290c1fc50cf`  
		Last Modified: Tue, 11 Sep 2018 22:51:23 GMT  
		Size: 127.0 MB (126974120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c633ad0438fb7d16ebf25300fa64c5dc13cc6307b6d7510b93d021d1b5a2658b`  
		Last Modified: Fri, 14 Dec 2018 18:21:00 GMT  
		Size: 257.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2f3659aeae7ff6857d0a7d3154d14097843d4c329f45a9f8eb6bb9c14a927a`  
		Last Modified: Fri, 14 Dec 2018 18:21:00 GMT  
		Size: 940.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:062ed3ef953cc32c13c7b09c59066cdb207f7ec3b5ed30c0ee841e0237fee850`  
		Last Modified: Fri, 14 Dec 2018 18:21:00 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d05874a03041ef42c46c93d3c05c68abe33ee5d7a16c78f161b2b9196b041e01`  
		Last Modified: Fri, 14 Dec 2018 18:21:00 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.3`

```console
$ docker pull crate@sha256:febee608a0dfb18db335b0dbf6757d825e1db98b70815ddc2c236f5a27520844
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.3` - linux; amd64

```console
$ docker pull crate@sha256:20bedd028004b54d1cb34f32dc6c77249c4c22648cc6eb65b0971f17e4736f4a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.5 MB (130538565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eca72c53be0465e640ab7152117d343f7404f57f32d93cb900ee98563153cff`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:46:57 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Tue, 11 Sep 2018 22:46:57 GMT
ENV GOSU_VERSION=1.9
# Tue, 11 Sep 2018 22:47:01 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Tue, 11 Sep 2018 22:47:05 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Tue, 11 Sep 2018 22:47:29 GMT
ENV CRATE_VERSION=2.3.11
# Tue, 11 Sep 2018 22:47:45 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Tue, 11 Sep 2018 22:47:45 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Sep 2018 22:47:46 GMT
ENV CRATE_HEAP_SIZE=512M
# Tue, 11 Sep 2018 22:47:46 GMT
HEALTHCHECK &{["CMD-SHELL" "curl $(hostname):4200"] "0s" "0s" "0s" '\x00'}
# Tue, 11 Sep 2018 22:47:46 GMT
VOLUME [/data]
# Fri, 14 Dec 2018 18:20:02 GMT
ADD file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Fri, 14 Dec 2018 18:20:02 GMT
ADD file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Fri, 14 Dec 2018 18:20:02 GMT
COPY file:e6a7b71a02b8bea038a1d23371bfd510dd74404a43443474622b1534a0ea994b in / 
# Fri, 14 Dec 2018 18:20:02 GMT
WORKDIR /data
# Fri, 14 Dec 2018 18:20:02 GMT
EXPOSE 4200 4300 5432
# Fri, 14 Dec 2018 18:20:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Dec 2018 18:20:03 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1151b8f33c3f69a31caa82008fd08a66d46721d663753d985b2a8119590e68bf`  
		Last Modified: Tue, 11 Sep 2018 22:49:55 GMT  
		Size: 593.4 KB (593423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80620c5354abd5bda7d597223d14f4a5a87e4f239c643013bc595bd5f96cbca6`  
		Last Modified: Tue, 11 Sep 2018 22:49:56 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca91d082e19533a02b6afced60f24cff9ec23624e0a4fb0fb484d93ccdef6cd`  
		Last Modified: Tue, 11 Sep 2018 22:50:54 GMT  
		Size: 127.8 MB (127835116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42636ad7b6bbc648afdb57e9d4f49757c0419df25e609fc394ca50f98b61b37`  
		Last Modified: Fri, 14 Dec 2018 18:20:54 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34668315c8e41548c2a963dcef5c9eba0b444cb87c8fffa6b2283ca5f6fd2697`  
		Last Modified: Fri, 14 Dec 2018 18:20:54 GMT  
		Size: 939.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ee295a3f722970a02642ba0fb3c710d7be8f880785a73e47d0c38e4468e30ac`  
		Last Modified: Fri, 14 Dec 2018 18:20:55 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0547c70e8ee3cbddd65c340eb015ec6776035627b56f0f3f3cebe9b5c1029675`  
		Last Modified: Fri, 14 Dec 2018 18:20:54 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.3.11`

```console
$ docker pull crate@sha256:febee608a0dfb18db335b0dbf6757d825e1db98b70815ddc2c236f5a27520844
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.3.11` - linux; amd64

```console
$ docker pull crate@sha256:20bedd028004b54d1cb34f32dc6c77249c4c22648cc6eb65b0971f17e4736f4a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.5 MB (130538565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eca72c53be0465e640ab7152117d343f7404f57f32d93cb900ee98563153cff`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:46:57 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Tue, 11 Sep 2018 22:46:57 GMT
ENV GOSU_VERSION=1.9
# Tue, 11 Sep 2018 22:47:01 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Tue, 11 Sep 2018 22:47:05 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Tue, 11 Sep 2018 22:47:29 GMT
ENV CRATE_VERSION=2.3.11
# Tue, 11 Sep 2018 22:47:45 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Tue, 11 Sep 2018 22:47:45 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Sep 2018 22:47:46 GMT
ENV CRATE_HEAP_SIZE=512M
# Tue, 11 Sep 2018 22:47:46 GMT
HEALTHCHECK &{["CMD-SHELL" "curl $(hostname):4200"] "0s" "0s" "0s" '\x00'}
# Tue, 11 Sep 2018 22:47:46 GMT
VOLUME [/data]
# Fri, 14 Dec 2018 18:20:02 GMT
ADD file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Fri, 14 Dec 2018 18:20:02 GMT
ADD file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Fri, 14 Dec 2018 18:20:02 GMT
COPY file:e6a7b71a02b8bea038a1d23371bfd510dd74404a43443474622b1534a0ea994b in / 
# Fri, 14 Dec 2018 18:20:02 GMT
WORKDIR /data
# Fri, 14 Dec 2018 18:20:02 GMT
EXPOSE 4200 4300 5432
# Fri, 14 Dec 2018 18:20:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Dec 2018 18:20:03 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1151b8f33c3f69a31caa82008fd08a66d46721d663753d985b2a8119590e68bf`  
		Last Modified: Tue, 11 Sep 2018 22:49:55 GMT  
		Size: 593.4 KB (593423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80620c5354abd5bda7d597223d14f4a5a87e4f239c643013bc595bd5f96cbca6`  
		Last Modified: Tue, 11 Sep 2018 22:49:56 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ca91d082e19533a02b6afced60f24cff9ec23624e0a4fb0fb484d93ccdef6cd`  
		Last Modified: Tue, 11 Sep 2018 22:50:54 GMT  
		Size: 127.8 MB (127835116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b42636ad7b6bbc648afdb57e9d4f49757c0419df25e609fc394ca50f98b61b37`  
		Last Modified: Fri, 14 Dec 2018 18:20:54 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34668315c8e41548c2a963dcef5c9eba0b444cb87c8fffa6b2283ca5f6fd2697`  
		Last Modified: Fri, 14 Dec 2018 18:20:54 GMT  
		Size: 939.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ee295a3f722970a02642ba0fb3c710d7be8f880785a73e47d0c38e4468e30ac`  
		Last Modified: Fri, 14 Dec 2018 18:20:55 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0547c70e8ee3cbddd65c340eb015ec6776035627b56f0f3f3cebe9b5c1029675`  
		Last Modified: Fri, 14 Dec 2018 18:20:54 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:3.0`

```console
$ docker pull crate@sha256:05263f07a8101b19b41696c3ba83440c21d4ea7747761a4aa4eec835101473a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:3.0` - linux; amd64

```console
$ docker pull crate@sha256:334a201ca2b9df6d977c8b04b665af8c70d68479b7dcbffe668700e1fd3bdf48
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.9 MB (129949809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b79b2e8590031c55730d7dce440881c0c76e9f91a5fd226e35f3f60f7a9e631`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:46:57 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Tue, 11 Sep 2018 22:46:57 GMT
ENV GOSU_VERSION=1.9
# Tue, 11 Sep 2018 22:47:01 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Tue, 11 Sep 2018 22:47:05 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Fri, 28 Sep 2018 18:20:10 GMT
ENV CRATE_VERSION=3.0.7
# Fri, 28 Sep 2018 18:20:27 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Fri, 28 Sep 2018 18:20:27 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 28 Sep 2018 18:20:27 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 28 Sep 2018 18:20:28 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --fail --max-time 25 $(hostname):4200"] "30s" "30s" "0s" '\x00'}
# Fri, 28 Sep 2018 18:20:28 GMT
RUN mkdir -p /data/data /data/log
# Fri, 28 Sep 2018 18:20:28 GMT
VOLUME [/data]
# Fri, 14 Dec 2018 18:19:57 GMT
ADD file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Fri, 14 Dec 2018 18:19:57 GMT
ADD file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Fri, 14 Dec 2018 18:19:58 GMT
COPY file:a7eedb1118b4d8951c8e0ef42f0961a143eaad99c69b8f07a3f2d8c0d7b82c92 in / 
# Fri, 14 Dec 2018 18:19:58 GMT
WORKDIR /data
# Fri, 14 Dec 2018 18:19:58 GMT
EXPOSE 4200 4300 5432
# Fri, 14 Dec 2018 18:19:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Dec 2018 18:19:58 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1151b8f33c3f69a31caa82008fd08a66d46721d663753d985b2a8119590e68bf`  
		Last Modified: Tue, 11 Sep 2018 22:49:55 GMT  
		Size: 593.4 KB (593423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80620c5354abd5bda7d597223d14f4a5a87e4f239c643013bc595bd5f96cbca6`  
		Last Modified: Tue, 11 Sep 2018 22:49:56 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1705ded9a917bcfbdfa5eebb660d07459412ab321736b1d6e59186104902769c`  
		Last Modified: Fri, 28 Sep 2018 18:21:55 GMT  
		Size: 127.2 MB (127246158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5acff87c11703ab8a0a3a09764ac5273aec228e52213a8025f2756b99386378`  
		Last Modified: Fri, 28 Sep 2018 18:21:42 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d41295bf5a2c195a605bb5cc337aceb219b26c54710279e427fd2caa0a36db`  
		Last Modified: Fri, 14 Dec 2018 18:20:46 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b52db19a90cc3b8050c2d7e8063477baa754658e25aab807167d0b5c6f7550c4`  
		Last Modified: Fri, 14 Dec 2018 18:20:46 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e0b746b4628538558f1610a900365987a1bf7089ae3740e98b1b53677df436`  
		Last Modified: Fri, 14 Dec 2018 18:20:47 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:3.0.7`

```console
$ docker pull crate@sha256:05263f07a8101b19b41696c3ba83440c21d4ea7747761a4aa4eec835101473a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:3.0.7` - linux; amd64

```console
$ docker pull crate@sha256:334a201ca2b9df6d977c8b04b665af8c70d68479b7dcbffe668700e1fd3bdf48
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.9 MB (129949809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b79b2e8590031c55730d7dce440881c0c76e9f91a5fd226e35f3f60f7a9e631`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:46:57 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Tue, 11 Sep 2018 22:46:57 GMT
ENV GOSU_VERSION=1.9
# Tue, 11 Sep 2018 22:47:01 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Tue, 11 Sep 2018 22:47:05 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Fri, 28 Sep 2018 18:20:10 GMT
ENV CRATE_VERSION=3.0.7
# Fri, 28 Sep 2018 18:20:27 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Fri, 28 Sep 2018 18:20:27 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 28 Sep 2018 18:20:27 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 28 Sep 2018 18:20:28 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --fail --max-time 25 $(hostname):4200"] "30s" "30s" "0s" '\x00'}
# Fri, 28 Sep 2018 18:20:28 GMT
RUN mkdir -p /data/data /data/log
# Fri, 28 Sep 2018 18:20:28 GMT
VOLUME [/data]
# Fri, 14 Dec 2018 18:19:57 GMT
ADD file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Fri, 14 Dec 2018 18:19:57 GMT
ADD file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Fri, 14 Dec 2018 18:19:58 GMT
COPY file:a7eedb1118b4d8951c8e0ef42f0961a143eaad99c69b8f07a3f2d8c0d7b82c92 in / 
# Fri, 14 Dec 2018 18:19:58 GMT
WORKDIR /data
# Fri, 14 Dec 2018 18:19:58 GMT
EXPOSE 4200 4300 5432
# Fri, 14 Dec 2018 18:19:58 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Dec 2018 18:19:58 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1151b8f33c3f69a31caa82008fd08a66d46721d663753d985b2a8119590e68bf`  
		Last Modified: Tue, 11 Sep 2018 22:49:55 GMT  
		Size: 593.4 KB (593423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80620c5354abd5bda7d597223d14f4a5a87e4f239c643013bc595bd5f96cbca6`  
		Last Modified: Tue, 11 Sep 2018 22:49:56 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1705ded9a917bcfbdfa5eebb660d07459412ab321736b1d6e59186104902769c`  
		Last Modified: Fri, 28 Sep 2018 18:21:55 GMT  
		Size: 127.2 MB (127246158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5acff87c11703ab8a0a3a09764ac5273aec228e52213a8025f2756b99386378`  
		Last Modified: Fri, 28 Sep 2018 18:21:42 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d41295bf5a2c195a605bb5cc337aceb219b26c54710279e427fd2caa0a36db`  
		Last Modified: Fri, 14 Dec 2018 18:20:46 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b52db19a90cc3b8050c2d7e8063477baa754658e25aab807167d0b5c6f7550c4`  
		Last Modified: Fri, 14 Dec 2018 18:20:46 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e0b746b4628538558f1610a900365987a1bf7089ae3740e98b1b53677df436`  
		Last Modified: Fri, 14 Dec 2018 18:20:47 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:3.1`

```console
$ docker pull crate@sha256:2f9caf28971fce644c46765525fe16253fdf0fefb5b46237e3dc8a43537d3e9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:3.1` - linux; amd64

```console
$ docker pull crate@sha256:de205c4fae991de8588b6d8ffe859382fbc902a40e8934e856f79385320aca8d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.5 MB (130536907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:011e111d656cf60fd41749f7f7baee91abaae8025156dd4330a3663d8efa31bf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Fri, 14 Dec 2018 18:19:25 GMT
RUN addgroup -g 1000 -S crate     && adduser -u 1000 -G crate -h /crate -S crate
# Fri, 14 Dec 2018 18:19:45 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl         coreutils     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.3.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.3.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.1.3.tar.gz.asc crate-3.1.3.tar.gz     && rm -rf "$GNUPGHOME" crate-3.1.3.tar.gz.asc     && tar -xf crate-3.1.3.tar.gz -C /crate --strip-components=1     && rm crate-3.1.3.tar.gz     && ln -sf /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Fri, 14 Dec 2018 18:19:50 GMT
RUN apk add --no-cache --virtual .build-deps         gnupg     && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash     && apk del .build-deps
# Fri, 14 Dec 2018 18:19:50 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Dec 2018 18:19:50 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 14 Dec 2018 18:19:50 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --max-time 25 $(hostname):4200 || exit 1"] "30s" "30s" "0s" '\x00'}
# Fri, 14 Dec 2018 18:19:51 GMT
RUN mkdir -p /data/data /data/log
# Fri, 14 Dec 2018 18:19:51 GMT
VOLUME [/data]
# Fri, 14 Dec 2018 18:19:52 GMT
WORKDIR /data
# Fri, 14 Dec 2018 18:19:52 GMT
EXPOSE 4200 4300 5432
# Fri, 14 Dec 2018 18:19:52 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2018-12-06T23:39:49.888248104+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.1.3
# Fri, 14 Dec 2018 18:19:52 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Fri, 14 Dec 2018 18:19:52 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Fri, 14 Dec 2018 18:19:52 GMT
COPY file:dcdba4de3b5ee86e3ed391c361c223b50022f9865a89a53d53f5c45521bd6989 in / 
# Fri, 14 Dec 2018 18:19:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Dec 2018 18:19:53 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2fa2aebfc583d590aab480446de1cc1b0e687f08c1d6a1e0a7e479d6fe281c0`  
		Last Modified: Fri, 14 Dec 2018 18:20:27 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6386a492d80fdf529b42f9b1b47ebc20cd99add8855fa34df35d6d4fb6bbd3ea`  
		Last Modified: Fri, 14 Dec 2018 18:20:41 GMT  
		Size: 126.9 MB (126868996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82fbb6748470d2d4265caec1d0af60ea30f03a7918e869d068c1471dc8fa1533`  
		Last Modified: Fri, 14 Dec 2018 18:20:27 GMT  
		Size: 1.5 MB (1457863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d58e12d8cb857fb0f4f3cd84054bc1aa461eed72254482bb3868a4ced85ebf6c`  
		Last Modified: Fri, 14 Dec 2018 18:20:26 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5aa1680e85936e70d191acc4d9c28f4c2803c37680e96c230195adc9ab84b7`  
		Last Modified: Fri, 14 Dec 2018 18:20:26 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8880a2a301ba9f04f5ac405eec0010f2e164e9be245d75f4e034b5ed588254db`  
		Last Modified: Fri, 14 Dec 2018 18:20:27 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e233b7d9490744f3cc5f4c811cda1aca0a197e77a82de1f7b746c49af31f2b`  
		Last Modified: Fri, 14 Dec 2018 18:20:27 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:3.1.3`

```console
$ docker pull crate@sha256:2f9caf28971fce644c46765525fe16253fdf0fefb5b46237e3dc8a43537d3e9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:3.1.3` - linux; amd64

```console
$ docker pull crate@sha256:de205c4fae991de8588b6d8ffe859382fbc902a40e8934e856f79385320aca8d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.5 MB (130536907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:011e111d656cf60fd41749f7f7baee91abaae8025156dd4330a3663d8efa31bf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Fri, 14 Dec 2018 18:19:25 GMT
RUN addgroup -g 1000 -S crate     && adduser -u 1000 -G crate -h /crate -S crate
# Fri, 14 Dec 2018 18:19:45 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl         coreutils     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.3.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.3.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.1.3.tar.gz.asc crate-3.1.3.tar.gz     && rm -rf "$GNUPGHOME" crate-3.1.3.tar.gz.asc     && tar -xf crate-3.1.3.tar.gz -C /crate --strip-components=1     && rm crate-3.1.3.tar.gz     && ln -sf /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Fri, 14 Dec 2018 18:19:50 GMT
RUN apk add --no-cache --virtual .build-deps         gnupg     && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash     && apk del .build-deps
# Fri, 14 Dec 2018 18:19:50 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Dec 2018 18:19:50 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 14 Dec 2018 18:19:50 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --max-time 25 $(hostname):4200 || exit 1"] "30s" "30s" "0s" '\x00'}
# Fri, 14 Dec 2018 18:19:51 GMT
RUN mkdir -p /data/data /data/log
# Fri, 14 Dec 2018 18:19:51 GMT
VOLUME [/data]
# Fri, 14 Dec 2018 18:19:52 GMT
WORKDIR /data
# Fri, 14 Dec 2018 18:19:52 GMT
EXPOSE 4200 4300 5432
# Fri, 14 Dec 2018 18:19:52 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2018-12-06T23:39:49.888248104+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.1.3
# Fri, 14 Dec 2018 18:19:52 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Fri, 14 Dec 2018 18:19:52 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Fri, 14 Dec 2018 18:19:52 GMT
COPY file:dcdba4de3b5ee86e3ed391c361c223b50022f9865a89a53d53f5c45521bd6989 in / 
# Fri, 14 Dec 2018 18:19:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Dec 2018 18:19:53 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2fa2aebfc583d590aab480446de1cc1b0e687f08c1d6a1e0a7e479d6fe281c0`  
		Last Modified: Fri, 14 Dec 2018 18:20:27 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6386a492d80fdf529b42f9b1b47ebc20cd99add8855fa34df35d6d4fb6bbd3ea`  
		Last Modified: Fri, 14 Dec 2018 18:20:41 GMT  
		Size: 126.9 MB (126868996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82fbb6748470d2d4265caec1d0af60ea30f03a7918e869d068c1471dc8fa1533`  
		Last Modified: Fri, 14 Dec 2018 18:20:27 GMT  
		Size: 1.5 MB (1457863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d58e12d8cb857fb0f4f3cd84054bc1aa461eed72254482bb3868a4ced85ebf6c`  
		Last Modified: Fri, 14 Dec 2018 18:20:26 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5aa1680e85936e70d191acc4d9c28f4c2803c37680e96c230195adc9ab84b7`  
		Last Modified: Fri, 14 Dec 2018 18:20:26 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8880a2a301ba9f04f5ac405eec0010f2e164e9be245d75f4e034b5ed588254db`  
		Last Modified: Fri, 14 Dec 2018 18:20:27 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e233b7d9490744f3cc5f4c811cda1aca0a197e77a82de1f7b746c49af31f2b`  
		Last Modified: Fri, 14 Dec 2018 18:20:27 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:latest`

```console
$ docker pull crate@sha256:2f9caf28971fce644c46765525fe16253fdf0fefb5b46237e3dc8a43537d3e9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:latest` - linux; amd64

```console
$ docker pull crate@sha256:de205c4fae991de8588b6d8ffe859382fbc902a40e8934e856f79385320aca8d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.5 MB (130536907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:011e111d656cf60fd41749f7f7baee91abaae8025156dd4330a3663d8efa31bf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Fri, 14 Dec 2018 18:19:25 GMT
RUN addgroup -g 1000 -S crate     && adduser -u 1000 -G crate -h /crate -S crate
# Fri, 14 Dec 2018 18:19:45 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl         coreutils     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.3.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.3.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.1.3.tar.gz.asc crate-3.1.3.tar.gz     && rm -rf "$GNUPGHOME" crate-3.1.3.tar.gz.asc     && tar -xf crate-3.1.3.tar.gz -C /crate --strip-components=1     && rm crate-3.1.3.tar.gz     && ln -sf /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Fri, 14 Dec 2018 18:19:50 GMT
RUN apk add --no-cache --virtual .build-deps         gnupg     && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash     && apk del .build-deps
# Fri, 14 Dec 2018 18:19:50 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Dec 2018 18:19:50 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 14 Dec 2018 18:19:50 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --max-time 25 $(hostname):4200 || exit 1"] "30s" "30s" "0s" '\x00'}
# Fri, 14 Dec 2018 18:19:51 GMT
RUN mkdir -p /data/data /data/log
# Fri, 14 Dec 2018 18:19:51 GMT
VOLUME [/data]
# Fri, 14 Dec 2018 18:19:52 GMT
WORKDIR /data
# Fri, 14 Dec 2018 18:19:52 GMT
EXPOSE 4200 4300 5432
# Fri, 14 Dec 2018 18:19:52 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2018-12-06T23:39:49.888248104+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.1.3
# Fri, 14 Dec 2018 18:19:52 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Fri, 14 Dec 2018 18:19:52 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Fri, 14 Dec 2018 18:19:52 GMT
COPY file:dcdba4de3b5ee86e3ed391c361c223b50022f9865a89a53d53f5c45521bd6989 in / 
# Fri, 14 Dec 2018 18:19:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Dec 2018 18:19:53 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2fa2aebfc583d590aab480446de1cc1b0e687f08c1d6a1e0a7e479d6fe281c0`  
		Last Modified: Fri, 14 Dec 2018 18:20:27 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6386a492d80fdf529b42f9b1b47ebc20cd99add8855fa34df35d6d4fb6bbd3ea`  
		Last Modified: Fri, 14 Dec 2018 18:20:41 GMT  
		Size: 126.9 MB (126868996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82fbb6748470d2d4265caec1d0af60ea30f03a7918e869d068c1471dc8fa1533`  
		Last Modified: Fri, 14 Dec 2018 18:20:27 GMT  
		Size: 1.5 MB (1457863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d58e12d8cb857fb0f4f3cd84054bc1aa461eed72254482bb3868a4ced85ebf6c`  
		Last Modified: Fri, 14 Dec 2018 18:20:26 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5aa1680e85936e70d191acc4d9c28f4c2803c37680e96c230195adc9ab84b7`  
		Last Modified: Fri, 14 Dec 2018 18:20:26 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8880a2a301ba9f04f5ac405eec0010f2e164e9be245d75f4e034b5ed588254db`  
		Last Modified: Fri, 14 Dec 2018 18:20:27 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e233b7d9490744f3cc5f4c811cda1aca0a197e77a82de1f7b746c49af31f2b`  
		Last Modified: Fri, 14 Dec 2018 18:20:27 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
