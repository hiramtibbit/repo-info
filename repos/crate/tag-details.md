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
$ docker pull crate@sha256:93e8d42000d1fdd8c364961be09c46ac65cf5f5a2721dacd10290fe7e0401272
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `crate:3.1` - linux; amd64

```console
$ docker pull crate@sha256:3f955934f4e09c4dbad4653b4923846aa299c89ed72da9c33166864068983baf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.5 MB (130536970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fcb90f09c0ead11112f54c2a12a0e3d69eecf67d9a7a0557ada13eafc636fa7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:00:21 GMT
RUN addgroup -g 1000 -S crate     && adduser -u 1000 -G crate -h /crate -S crate
# Fri, 21 Dec 2018 01:00:32 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl         coreutils     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.3.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.3.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.1.3.tar.gz.asc crate-3.1.3.tar.gz     && rm -rf "$GNUPGHOME" crate-3.1.3.tar.gz.asc     && tar -xf crate-3.1.3.tar.gz -C /crate --strip-components=1     && rm crate-3.1.3.tar.gz     && ln -sf /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Fri, 21 Dec 2018 01:00:35 GMT
RUN apk add --no-cache --virtual .build-deps         gnupg     && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash     && apk del .build-deps
# Fri, 21 Dec 2018 01:00:35 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 01:00:36 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 21 Dec 2018 01:00:36 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --max-time 25 $(hostname):4200 || exit 1"] "30s" "30s" "0s" '\x00'}
# Fri, 21 Dec 2018 01:00:36 GMT
RUN mkdir -p /data/data /data/log
# Fri, 21 Dec 2018 01:00:37 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 01:00:37 GMT
WORKDIR /data
# Fri, 21 Dec 2018 01:00:37 GMT
EXPOSE 4200 4300 5432
# Fri, 21 Dec 2018 01:00:37 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2018-12-06T23:39:49.888248104+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.1.3
# Fri, 21 Dec 2018 01:00:37 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Fri, 21 Dec 2018 01:00:37 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Fri, 21 Dec 2018 01:00:38 GMT
COPY file:dcdba4de3b5ee86e3ed391c361c223b50022f9865a89a53d53f5c45521bd6989 in / 
# Fri, 21 Dec 2018 01:00:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 01:00:38 GMT
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
	-	`sha256:9582396e681d00a9131e8b6dadafa33ff033e86312f5f26003a4bd91b6be9ca0`  
		Last Modified: Fri, 21 Dec 2018 01:03:52 GMT  
		Size: 126.9 MB (126868975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff2d42837bd3a58a9e20e55a4b1912f8678bbc0c730a8e2facb23c122c543dc7`  
		Last Modified: Fri, 21 Dec 2018 01:03:40 GMT  
		Size: 1.5 MB (1457855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13f706df6af07260af7354c8f0523f5dbf1f2720092e0990ad87ee4387f01940`  
		Last Modified: Fri, 21 Dec 2018 01:03:40 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4fadd8c69ef18c1a4f046cc9853200731d878e0d72d568b7c6de9de4f99f12a`  
		Last Modified: Fri, 21 Dec 2018 01:03:40 GMT  
		Size: 265.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868321e829d4f009cb4d264b755f60cdcd9c5e522f346a68973c9ab958bdd360`  
		Last Modified: Fri, 21 Dec 2018 01:03:40 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80e85d032b9f762fb03dd0a21e2e565fdac930a352b991e2b566f3d5c423b2b5`  
		Last Modified: Fri, 21 Dec 2018 01:03:40 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `crate:3.1` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:53f7da1d4d4fe1a4a4958aeec78548776278bf24cfae4c1cc1171f2502503547
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.5 MB (128515398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:978517c3c5f9c5375858b0f4b820b9628ae992fd821755f40c0a6be66b406d5b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Tue, 18 Dec 2018 09:40:49 GMT
RUN addgroup -g 1000 -S crate     && adduser -u 1000 -G crate -h /crate -S crate
# Tue, 18 Dec 2018 09:41:17 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl         coreutils     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.3.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.3.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.1.3.tar.gz.asc crate-3.1.3.tar.gz     && rm -rf "$GNUPGHOME" crate-3.1.3.tar.gz.asc     && tar -xf crate-3.1.3.tar.gz -C /crate --strip-components=1     && rm crate-3.1.3.tar.gz     && ln -sf /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Tue, 18 Dec 2018 09:41:25 GMT
RUN apk add --no-cache --virtual .build-deps         gnupg     && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash     && apk del .build-deps
# Tue, 18 Dec 2018 09:41:26 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Dec 2018 09:41:27 GMT
ENV CRATE_HEAP_SIZE=512M
# Tue, 18 Dec 2018 09:41:28 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --max-time 25 $(hostname):4200 || exit 1"] "30s" "30s" "0s" '\x00'}
# Tue, 18 Dec 2018 09:41:30 GMT
RUN mkdir -p /data/data /data/log
# Tue, 18 Dec 2018 09:41:31 GMT
VOLUME [/data]
# Tue, 18 Dec 2018 09:41:31 GMT
WORKDIR /data
# Tue, 18 Dec 2018 09:41:32 GMT
EXPOSE 4200 4300 5432
# Tue, 18 Dec 2018 09:41:33 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2018-12-06T23:39:49.888248104+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.1.3
# Tue, 18 Dec 2018 09:41:33 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Tue, 18 Dec 2018 09:41:34 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Tue, 18 Dec 2018 09:41:35 GMT
COPY file:dcdba4de3b5ee86e3ed391c361c223b50022f9865a89a53d53f5c45521bd6989 in / 
# Tue, 18 Dec 2018 09:41:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Dec 2018 09:41:36 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf8cc670f3463e16e85a99b2bd9232b33111c7c97b74f945ba85e22718ce00c`  
		Last Modified: Tue, 18 Dec 2018 09:41:57 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2643cefb17ec2a2038da517f1a13516f2af4607df3f7d0f3dc152e2208880e`  
		Last Modified: Tue, 18 Dec 2018 09:42:23 GMT  
		Size: 125.0 MB (124955909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c65585b8a10f105479de9cc59a11790b44a49597fda9ee310c71f43152bb7d96`  
		Last Modified: Tue, 18 Dec 2018 09:41:57 GMT  
		Size: 1.5 MB (1456431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4326a42c4096bf6697fbfd50f6a4dac457080cad1677558ce70e651cdb51eec`  
		Last Modified: Tue, 18 Dec 2018 09:41:57 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6990b2deb40e5376f668ee954d1222a7d5e3a51ed0bbd60b581a3a14b16cd03f`  
		Last Modified: Tue, 18 Dec 2018 09:41:56 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da326e53186938fafac0f4671c6006dc94314edd19e82333f060fc7663a9a8b8`  
		Last Modified: Tue, 18 Dec 2018 09:41:55 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6381cf6496522512df8645113aa035bd0cb1ce03c68b8418de0f5af7b3508dc2`  
		Last Modified: Tue, 18 Dec 2018 09:41:55 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:3.1.3`

```console
$ docker pull crate@sha256:93e8d42000d1fdd8c364961be09c46ac65cf5f5a2721dacd10290fe7e0401272
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `crate:3.1.3` - linux; amd64

```console
$ docker pull crate@sha256:3f955934f4e09c4dbad4653b4923846aa299c89ed72da9c33166864068983baf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.5 MB (130536970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fcb90f09c0ead11112f54c2a12a0e3d69eecf67d9a7a0557ada13eafc636fa7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:00:21 GMT
RUN addgroup -g 1000 -S crate     && adduser -u 1000 -G crate -h /crate -S crate
# Fri, 21 Dec 2018 01:00:32 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl         coreutils     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.3.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.3.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.1.3.tar.gz.asc crate-3.1.3.tar.gz     && rm -rf "$GNUPGHOME" crate-3.1.3.tar.gz.asc     && tar -xf crate-3.1.3.tar.gz -C /crate --strip-components=1     && rm crate-3.1.3.tar.gz     && ln -sf /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Fri, 21 Dec 2018 01:00:35 GMT
RUN apk add --no-cache --virtual .build-deps         gnupg     && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash     && apk del .build-deps
# Fri, 21 Dec 2018 01:00:35 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 01:00:36 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 21 Dec 2018 01:00:36 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --max-time 25 $(hostname):4200 || exit 1"] "30s" "30s" "0s" '\x00'}
# Fri, 21 Dec 2018 01:00:36 GMT
RUN mkdir -p /data/data /data/log
# Fri, 21 Dec 2018 01:00:37 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 01:00:37 GMT
WORKDIR /data
# Fri, 21 Dec 2018 01:00:37 GMT
EXPOSE 4200 4300 5432
# Fri, 21 Dec 2018 01:00:37 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2018-12-06T23:39:49.888248104+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.1.3
# Fri, 21 Dec 2018 01:00:37 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Fri, 21 Dec 2018 01:00:37 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Fri, 21 Dec 2018 01:00:38 GMT
COPY file:dcdba4de3b5ee86e3ed391c361c223b50022f9865a89a53d53f5c45521bd6989 in / 
# Fri, 21 Dec 2018 01:00:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 01:00:38 GMT
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
	-	`sha256:9582396e681d00a9131e8b6dadafa33ff033e86312f5f26003a4bd91b6be9ca0`  
		Last Modified: Fri, 21 Dec 2018 01:03:52 GMT  
		Size: 126.9 MB (126868975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff2d42837bd3a58a9e20e55a4b1912f8678bbc0c730a8e2facb23c122c543dc7`  
		Last Modified: Fri, 21 Dec 2018 01:03:40 GMT  
		Size: 1.5 MB (1457855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13f706df6af07260af7354c8f0523f5dbf1f2720092e0990ad87ee4387f01940`  
		Last Modified: Fri, 21 Dec 2018 01:03:40 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4fadd8c69ef18c1a4f046cc9853200731d878e0d72d568b7c6de9de4f99f12a`  
		Last Modified: Fri, 21 Dec 2018 01:03:40 GMT  
		Size: 265.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868321e829d4f009cb4d264b755f60cdcd9c5e522f346a68973c9ab958bdd360`  
		Last Modified: Fri, 21 Dec 2018 01:03:40 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80e85d032b9f762fb03dd0a21e2e565fdac930a352b991e2b566f3d5c423b2b5`  
		Last Modified: Fri, 21 Dec 2018 01:03:40 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `crate:3.1.3` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:53f7da1d4d4fe1a4a4958aeec78548776278bf24cfae4c1cc1171f2502503547
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.5 MB (128515398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:978517c3c5f9c5375858b0f4b820b9628ae992fd821755f40c0a6be66b406d5b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Tue, 18 Dec 2018 09:40:49 GMT
RUN addgroup -g 1000 -S crate     && adduser -u 1000 -G crate -h /crate -S crate
# Tue, 18 Dec 2018 09:41:17 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl         coreutils     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.3.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.3.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.1.3.tar.gz.asc crate-3.1.3.tar.gz     && rm -rf "$GNUPGHOME" crate-3.1.3.tar.gz.asc     && tar -xf crate-3.1.3.tar.gz -C /crate --strip-components=1     && rm crate-3.1.3.tar.gz     && ln -sf /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Tue, 18 Dec 2018 09:41:25 GMT
RUN apk add --no-cache --virtual .build-deps         gnupg     && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash     && apk del .build-deps
# Tue, 18 Dec 2018 09:41:26 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Dec 2018 09:41:27 GMT
ENV CRATE_HEAP_SIZE=512M
# Tue, 18 Dec 2018 09:41:28 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --max-time 25 $(hostname):4200 || exit 1"] "30s" "30s" "0s" '\x00'}
# Tue, 18 Dec 2018 09:41:30 GMT
RUN mkdir -p /data/data /data/log
# Tue, 18 Dec 2018 09:41:31 GMT
VOLUME [/data]
# Tue, 18 Dec 2018 09:41:31 GMT
WORKDIR /data
# Tue, 18 Dec 2018 09:41:32 GMT
EXPOSE 4200 4300 5432
# Tue, 18 Dec 2018 09:41:33 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2018-12-06T23:39:49.888248104+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.1.3
# Tue, 18 Dec 2018 09:41:33 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Tue, 18 Dec 2018 09:41:34 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Tue, 18 Dec 2018 09:41:35 GMT
COPY file:dcdba4de3b5ee86e3ed391c361c223b50022f9865a89a53d53f5c45521bd6989 in / 
# Tue, 18 Dec 2018 09:41:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Dec 2018 09:41:36 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf8cc670f3463e16e85a99b2bd9232b33111c7c97b74f945ba85e22718ce00c`  
		Last Modified: Tue, 18 Dec 2018 09:41:57 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2643cefb17ec2a2038da517f1a13516f2af4607df3f7d0f3dc152e2208880e`  
		Last Modified: Tue, 18 Dec 2018 09:42:23 GMT  
		Size: 125.0 MB (124955909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c65585b8a10f105479de9cc59a11790b44a49597fda9ee310c71f43152bb7d96`  
		Last Modified: Tue, 18 Dec 2018 09:41:57 GMT  
		Size: 1.5 MB (1456431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4326a42c4096bf6697fbfd50f6a4dac457080cad1677558ce70e651cdb51eec`  
		Last Modified: Tue, 18 Dec 2018 09:41:57 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6990b2deb40e5376f668ee954d1222a7d5e3a51ed0bbd60b581a3a14b16cd03f`  
		Last Modified: Tue, 18 Dec 2018 09:41:56 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da326e53186938fafac0f4671c6006dc94314edd19e82333f060fc7663a9a8b8`  
		Last Modified: Tue, 18 Dec 2018 09:41:55 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6381cf6496522512df8645113aa035bd0cb1ce03c68b8418de0f5af7b3508dc2`  
		Last Modified: Tue, 18 Dec 2018 09:41:55 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:latest`

```console
$ docker pull crate@sha256:93e8d42000d1fdd8c364961be09c46ac65cf5f5a2721dacd10290fe7e0401272
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `crate:latest` - linux; amd64

```console
$ docker pull crate@sha256:3f955934f4e09c4dbad4653b4923846aa299c89ed72da9c33166864068983baf
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.5 MB (130536970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9fcb90f09c0ead11112f54c2a12a0e3d69eecf67d9a7a0557ada13eafc636fa7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 01:00:21 GMT
RUN addgroup -g 1000 -S crate     && adduser -u 1000 -G crate -h /crate -S crate
# Fri, 21 Dec 2018 01:00:32 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl         coreutils     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.3.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.3.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.1.3.tar.gz.asc crate-3.1.3.tar.gz     && rm -rf "$GNUPGHOME" crate-3.1.3.tar.gz.asc     && tar -xf crate-3.1.3.tar.gz -C /crate --strip-components=1     && rm crate-3.1.3.tar.gz     && ln -sf /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Fri, 21 Dec 2018 01:00:35 GMT
RUN apk add --no-cache --virtual .build-deps         gnupg     && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash     && apk del .build-deps
# Fri, 21 Dec 2018 01:00:35 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Dec 2018 01:00:36 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 21 Dec 2018 01:00:36 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --max-time 25 $(hostname):4200 || exit 1"] "30s" "30s" "0s" '\x00'}
# Fri, 21 Dec 2018 01:00:36 GMT
RUN mkdir -p /data/data /data/log
# Fri, 21 Dec 2018 01:00:37 GMT
VOLUME [/data]
# Fri, 21 Dec 2018 01:00:37 GMT
WORKDIR /data
# Fri, 21 Dec 2018 01:00:37 GMT
EXPOSE 4200 4300 5432
# Fri, 21 Dec 2018 01:00:37 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2018-12-06T23:39:49.888248104+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.1.3
# Fri, 21 Dec 2018 01:00:37 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Fri, 21 Dec 2018 01:00:37 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Fri, 21 Dec 2018 01:00:38 GMT
COPY file:dcdba4de3b5ee86e3ed391c361c223b50022f9865a89a53d53f5c45521bd6989 in / 
# Fri, 21 Dec 2018 01:00:38 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Dec 2018 01:00:38 GMT
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
	-	`sha256:9582396e681d00a9131e8b6dadafa33ff033e86312f5f26003a4bd91b6be9ca0`  
		Last Modified: Fri, 21 Dec 2018 01:03:52 GMT  
		Size: 126.9 MB (126868975 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff2d42837bd3a58a9e20e55a4b1912f8678bbc0c730a8e2facb23c122c543dc7`  
		Last Modified: Fri, 21 Dec 2018 01:03:40 GMT  
		Size: 1.5 MB (1457855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13f706df6af07260af7354c8f0523f5dbf1f2720092e0990ad87ee4387f01940`  
		Last Modified: Fri, 21 Dec 2018 01:03:40 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4fadd8c69ef18c1a4f046cc9853200731d878e0d72d568b7c6de9de4f99f12a`  
		Last Modified: Fri, 21 Dec 2018 01:03:40 GMT  
		Size: 265.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:868321e829d4f009cb4d264b755f60cdcd9c5e522f346a68973c9ab958bdd360`  
		Last Modified: Fri, 21 Dec 2018 01:03:40 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80e85d032b9f762fb03dd0a21e2e565fdac930a352b991e2b566f3d5c423b2b5`  
		Last Modified: Fri, 21 Dec 2018 01:03:40 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `crate:latest` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:53f7da1d4d4fe1a4a4958aeec78548776278bf24cfae4c1cc1171f2502503547
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.5 MB (128515398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:978517c3c5f9c5375858b0f4b820b9628ae992fd821755f40c0a6be66b406d5b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Tue, 18 Dec 2018 09:40:49 GMT
RUN addgroup -g 1000 -S crate     && adduser -u 1000 -G crate -h /crate -S crate
# Tue, 18 Dec 2018 09:41:17 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl         coreutils     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.3.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.3.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.1.3.tar.gz.asc crate-3.1.3.tar.gz     && rm -rf "$GNUPGHOME" crate-3.1.3.tar.gz.asc     && tar -xf crate-3.1.3.tar.gz -C /crate --strip-components=1     && rm crate-3.1.3.tar.gz     && ln -sf /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Tue, 18 Dec 2018 09:41:25 GMT
RUN apk add --no-cache --virtual .build-deps         gnupg     && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash     && apk del .build-deps
# Tue, 18 Dec 2018 09:41:26 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Dec 2018 09:41:27 GMT
ENV CRATE_HEAP_SIZE=512M
# Tue, 18 Dec 2018 09:41:28 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --max-time 25 $(hostname):4200 || exit 1"] "30s" "30s" "0s" '\x00'}
# Tue, 18 Dec 2018 09:41:30 GMT
RUN mkdir -p /data/data /data/log
# Tue, 18 Dec 2018 09:41:31 GMT
VOLUME [/data]
# Tue, 18 Dec 2018 09:41:31 GMT
WORKDIR /data
# Tue, 18 Dec 2018 09:41:32 GMT
EXPOSE 4200 4300 5432
# Tue, 18 Dec 2018 09:41:33 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2018-12-06T23:39:49.888248104+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.1.3
# Tue, 18 Dec 2018 09:41:33 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Tue, 18 Dec 2018 09:41:34 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Tue, 18 Dec 2018 09:41:35 GMT
COPY file:dcdba4de3b5ee86e3ed391c361c223b50022f9865a89a53d53f5c45521bd6989 in / 
# Tue, 18 Dec 2018 09:41:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Dec 2018 09:41:36 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf8cc670f3463e16e85a99b2bd9232b33111c7c97b74f945ba85e22718ce00c`  
		Last Modified: Tue, 18 Dec 2018 09:41:57 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2643cefb17ec2a2038da517f1a13516f2af4607df3f7d0f3dc152e2208880e`  
		Last Modified: Tue, 18 Dec 2018 09:42:23 GMT  
		Size: 125.0 MB (124955909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c65585b8a10f105479de9cc59a11790b44a49597fda9ee310c71f43152bb7d96`  
		Last Modified: Tue, 18 Dec 2018 09:41:57 GMT  
		Size: 1.5 MB (1456431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4326a42c4096bf6697fbfd50f6a4dac457080cad1677558ce70e651cdb51eec`  
		Last Modified: Tue, 18 Dec 2018 09:41:57 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6990b2deb40e5376f668ee954d1222a7d5e3a51ed0bbd60b581a3a14b16cd03f`  
		Last Modified: Tue, 18 Dec 2018 09:41:56 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da326e53186938fafac0f4671c6006dc94314edd19e82333f060fc7663a9a8b8`  
		Last Modified: Tue, 18 Dec 2018 09:41:55 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6381cf6496522512df8645113aa035bd0cb1ce03c68b8418de0f5af7b3508dc2`  
		Last Modified: Tue, 18 Dec 2018 09:41:55 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
