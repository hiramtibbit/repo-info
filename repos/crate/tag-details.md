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
-	[`crate:3.0.2`](#crate302)
-	[`crate:latest`](#cratelatest)

## `crate:2.0`

```console
$ docker pull crate@sha256:a424a6c027a452f0ed32fbe7e392c3c475eaa518f924069d72cc03d1346d79f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.0` - linux; amd64

```console
$ docker pull crate@sha256:a835742e2b3d9f60a393ae42b79f6ee50ffa3de2d53514c040d41dce9bfb95ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.5 MB (126537871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80f592c51cadd2f5c1fb1d88204c0691d23b38e2ea2455756d95d847642f2c8d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 09 Jan 2018 21:13:01 GMT
ADD file:df48d6d6df42a01380557aebd4ca02807fc08a76a1d1b36d957e59a41c69db0b in / 
# Tue, 09 Jan 2018 21:13:01 GMT
CMD ["/bin/sh"]
# Thu, 14 Jun 2018 05:22:28 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Thu, 14 Jun 2018 05:22:28 GMT
ENV GOSU_VERSION=1.9
# Thu, 14 Jun 2018 05:22:37 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Thu, 14 Jun 2018 05:22:38 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Thu, 14 Jun 2018 05:23:29 GMT
ENV CRATE_VERSION=2.0.7
# Thu, 14 Jun 2018 05:23:55 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/crate-sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Thu, 14 Jun 2018 05:23:55 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Jun 2018 05:23:55 GMT
VOLUME [/data]
# Thu, 14 Jun 2018 05:23:55 GMT
ADD file:f6ed1d4a953eca6984e33a751c11c6838562c006ffa19ab36d121906728e94db in /crate/config/crate.yml 
# Thu, 14 Jun 2018 05:23:56 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Thu, 14 Jun 2018 05:23:56 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Thu, 14 Jun 2018 05:23:56 GMT
WORKDIR /data
# Thu, 14 Jun 2018 05:23:56 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp 5433/tcp 5434/tcp 5435/tcp 5436/tcp 5437/tcp 5438/tcp 5439/tcp 5440/tcp 5441/tcp 5442/tcp 5443/tcp 5444/tcp 5445/tcp 5446/tcp 5447/tcp 5448/tcp 5449/tcp 5450/tcp 5451/tcp 5452/tcp 5453/tcp 5454/tcp 5455/tcp 5456/tcp 5457/tcp 5458/tcp 5459/tcp 5460/tcp 5461/tcp 5462/tcp 5463/tcp 5464/tcp 5465/tcp 5466/tcp 5467/tcp 5468/tcp 5469/tcp 5470/tcp 5471/tcp 5472/tcp 5473/tcp 5474/tcp 5475/tcp 5476/tcp 5477/tcp 5478/tcp 5479/tcp 5480/tcp 5481/tcp 5482/tcp 5483/tcp 5484/tcp 5485/tcp 5486/tcp 5487/tcp 5488/tcp 5489/tcp 5490/tcp 5491/tcp 5492/tcp 5493/tcp 5494/tcp 5495/tcp 5496/tcp 5497/tcp 5498/tcp 5499/tcp 5500/tcp 5501/tcp 5502/tcp 5503/tcp 5504/tcp 5505/tcp 5506/tcp 5507/tcp 5508/tcp 5509/tcp 5510/tcp 5511/tcp 5512/tcp 5513/tcp 5514/tcp 5515/tcp 5516/tcp 5517/tcp 5518/tcp 5519/tcp 5520/tcp 5521/tcp 5522/tcp 5523/tcp 5524/tcp 5525/tcp 5526/tcp 5527/tcp 5528/tcp 5529/tcp 5530/tcp 5531/tcp 5532/tcp
# Thu, 14 Jun 2018 05:23:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Jun 2018 05:23:57 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:550fe1bea624a5c62551cf09f3aa10886eed133794844af1dfb775118309387e`  
		Last Modified: Tue, 09 Jan 2018 21:15:20 GMT  
		Size: 2.0 MB (1970140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf7b9deb78d9216404f66f84a0681e25e0cf9527eb7ea0520fc515bec9f4449`  
		Last Modified: Thu, 14 Jun 2018 05:27:16 GMT  
		Size: 592.4 KB (592375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb643bcedb7ce2c6bdbb101c118163d02914b194a82b36673e329cae97e3451`  
		Last Modified: Thu, 14 Jun 2018 05:27:15 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57631efc3ac993362c7ef0eb7913816eb437a6e026d084ad7480a7374ce06346`  
		Last Modified: Thu, 14 Jun 2018 05:28:32 GMT  
		Size: 124.0 MB (123972660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ae0e868972c9d29e0927795dec2eebed855fd17e2dc59ea31e34894a8be329`  
		Last Modified: Thu, 14 Jun 2018 05:28:05 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c7081bc5239d1c11f2c6e4589d4e9548febe6785c192ebbd534a0584b68d91`  
		Last Modified: Thu, 14 Jun 2018 05:28:05 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be3fe874a550ad0931ff2e3761b1a5082274a24135d8f3d3bef607d6ca6bce61`  
		Last Modified: Thu, 14 Jun 2018 05:28:05 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fd7ab870822d7f0173251d02f730850a2f1ee2d9bfb87ca14af65300a9cddaa`  
		Last Modified: Thu, 14 Jun 2018 05:28:05 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.0.7`

```console
$ docker pull crate@sha256:a424a6c027a452f0ed32fbe7e392c3c475eaa518f924069d72cc03d1346d79f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.0.7` - linux; amd64

```console
$ docker pull crate@sha256:a835742e2b3d9f60a393ae42b79f6ee50ffa3de2d53514c040d41dce9bfb95ed
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.5 MB (126537871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80f592c51cadd2f5c1fb1d88204c0691d23b38e2ea2455756d95d847642f2c8d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 09 Jan 2018 21:13:01 GMT
ADD file:df48d6d6df42a01380557aebd4ca02807fc08a76a1d1b36d957e59a41c69db0b in / 
# Tue, 09 Jan 2018 21:13:01 GMT
CMD ["/bin/sh"]
# Thu, 14 Jun 2018 05:22:28 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Thu, 14 Jun 2018 05:22:28 GMT
ENV GOSU_VERSION=1.9
# Thu, 14 Jun 2018 05:22:37 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Thu, 14 Jun 2018 05:22:38 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Thu, 14 Jun 2018 05:23:29 GMT
ENV CRATE_VERSION=2.0.7
# Thu, 14 Jun 2018 05:23:55 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/crate-sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Thu, 14 Jun 2018 05:23:55 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Jun 2018 05:23:55 GMT
VOLUME [/data]
# Thu, 14 Jun 2018 05:23:55 GMT
ADD file:f6ed1d4a953eca6984e33a751c11c6838562c006ffa19ab36d121906728e94db in /crate/config/crate.yml 
# Thu, 14 Jun 2018 05:23:56 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Thu, 14 Jun 2018 05:23:56 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Thu, 14 Jun 2018 05:23:56 GMT
WORKDIR /data
# Thu, 14 Jun 2018 05:23:56 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp 5433/tcp 5434/tcp 5435/tcp 5436/tcp 5437/tcp 5438/tcp 5439/tcp 5440/tcp 5441/tcp 5442/tcp 5443/tcp 5444/tcp 5445/tcp 5446/tcp 5447/tcp 5448/tcp 5449/tcp 5450/tcp 5451/tcp 5452/tcp 5453/tcp 5454/tcp 5455/tcp 5456/tcp 5457/tcp 5458/tcp 5459/tcp 5460/tcp 5461/tcp 5462/tcp 5463/tcp 5464/tcp 5465/tcp 5466/tcp 5467/tcp 5468/tcp 5469/tcp 5470/tcp 5471/tcp 5472/tcp 5473/tcp 5474/tcp 5475/tcp 5476/tcp 5477/tcp 5478/tcp 5479/tcp 5480/tcp 5481/tcp 5482/tcp 5483/tcp 5484/tcp 5485/tcp 5486/tcp 5487/tcp 5488/tcp 5489/tcp 5490/tcp 5491/tcp 5492/tcp 5493/tcp 5494/tcp 5495/tcp 5496/tcp 5497/tcp 5498/tcp 5499/tcp 5500/tcp 5501/tcp 5502/tcp 5503/tcp 5504/tcp 5505/tcp 5506/tcp 5507/tcp 5508/tcp 5509/tcp 5510/tcp 5511/tcp 5512/tcp 5513/tcp 5514/tcp 5515/tcp 5516/tcp 5517/tcp 5518/tcp 5519/tcp 5520/tcp 5521/tcp 5522/tcp 5523/tcp 5524/tcp 5525/tcp 5526/tcp 5527/tcp 5528/tcp 5529/tcp 5530/tcp 5531/tcp 5532/tcp
# Thu, 14 Jun 2018 05:23:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Jun 2018 05:23:57 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:550fe1bea624a5c62551cf09f3aa10886eed133794844af1dfb775118309387e`  
		Last Modified: Tue, 09 Jan 2018 21:15:20 GMT  
		Size: 2.0 MB (1970140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf7b9deb78d9216404f66f84a0681e25e0cf9527eb7ea0520fc515bec9f4449`  
		Last Modified: Thu, 14 Jun 2018 05:27:16 GMT  
		Size: 592.4 KB (592375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb643bcedb7ce2c6bdbb101c118163d02914b194a82b36673e329cae97e3451`  
		Last Modified: Thu, 14 Jun 2018 05:27:15 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57631efc3ac993362c7ef0eb7913816eb437a6e026d084ad7480a7374ce06346`  
		Last Modified: Thu, 14 Jun 2018 05:28:32 GMT  
		Size: 124.0 MB (123972660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13ae0e868972c9d29e0927795dec2eebed855fd17e2dc59ea31e34894a8be329`  
		Last Modified: Thu, 14 Jun 2018 05:28:05 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c7081bc5239d1c11f2c6e4589d4e9548febe6785c192ebbd534a0584b68d91`  
		Last Modified: Thu, 14 Jun 2018 05:28:05 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be3fe874a550ad0931ff2e3761b1a5082274a24135d8f3d3bef607d6ca6bce61`  
		Last Modified: Thu, 14 Jun 2018 05:28:05 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fd7ab870822d7f0173251d02f730850a2f1ee2d9bfb87ca14af65300a9cddaa`  
		Last Modified: Thu, 14 Jun 2018 05:28:05 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.1`

```console
$ docker pull crate@sha256:4ea72b5780763bd1d65fc940fe382cbd279c96f43386a5a776c7bd91037d765e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.1` - linux; amd64

```console
$ docker pull crate@sha256:58e2491b2481e462da4dd43ab4f9ee4b4031493283c7c7852ab2913f6fd06494
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.1 MB (129132925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ae0baeb06b9f9f5cb808e8d58d01f76c1efd5b5e24f8e85bf6914c00297ddf0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 09 Jan 2018 21:13:01 GMT
ADD file:df48d6d6df42a01380557aebd4ca02807fc08a76a1d1b36d957e59a41c69db0b in / 
# Tue, 09 Jan 2018 21:13:01 GMT
CMD ["/bin/sh"]
# Thu, 14 Jun 2018 05:22:28 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Thu, 14 Jun 2018 05:22:28 GMT
ENV GOSU_VERSION=1.9
# Thu, 14 Jun 2018 05:22:37 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Thu, 14 Jun 2018 05:22:38 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Thu, 14 Jun 2018 05:22:38 GMT
ENV CRATE_VERSION=2.1.10
# Thu, 14 Jun 2018 05:23:17 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/lib/sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Thu, 14 Jun 2018 05:23:17 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Jun 2018 05:23:17 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 14 Jun 2018 05:23:17 GMT
VOLUME [/data]
# Thu, 14 Jun 2018 05:23:18 GMT
ADD file:c0b3bba944a2572094279072da088c4f681b13f9bed768ebd567555831729fab in /crate/config/crate.yml 
# Thu, 14 Jun 2018 05:23:18 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Thu, 14 Jun 2018 05:23:18 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Thu, 14 Jun 2018 05:23:18 GMT
WORKDIR /data
# Thu, 14 Jun 2018 05:23:18 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Thu, 14 Jun 2018 05:23:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Jun 2018 05:23:19 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:550fe1bea624a5c62551cf09f3aa10886eed133794844af1dfb775118309387e`  
		Last Modified: Tue, 09 Jan 2018 21:15:20 GMT  
		Size: 2.0 MB (1970140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf7b9deb78d9216404f66f84a0681e25e0cf9527eb7ea0520fc515bec9f4449`  
		Last Modified: Thu, 14 Jun 2018 05:27:16 GMT  
		Size: 592.4 KB (592375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb643bcedb7ce2c6bdbb101c118163d02914b194a82b36673e329cae97e3451`  
		Last Modified: Thu, 14 Jun 2018 05:27:15 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306eec921b6da48aeeaf2f8ac211b2b092a7446386b29607d81d1a653921efc`  
		Last Modified: Thu, 14 Jun 2018 05:27:46 GMT  
		Size: 126.6 MB (126567701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4748273e0c8dceec8b9e86c1d7624d3c74c4e00e1848ed0c472d9935659602d`  
		Last Modified: Thu, 14 Jun 2018 05:27:12 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff9f9f16de4dfabf895a2b00f51b41c53405f02189ec73eca1d6ff8366154332`  
		Last Modified: Thu, 14 Jun 2018 05:27:13 GMT  
		Size: 934.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e0b66562e412cab5d7759e16718b006d76008da7654b2e78590ccd4bf1a2efa`  
		Last Modified: Thu, 14 Jun 2018 05:27:12 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c04d5a8077e161fe60ee4f493568de9942d4366d2f25bf73407dee8e648047`  
		Last Modified: Thu, 14 Jun 2018 05:27:13 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.1.10`

```console
$ docker pull crate@sha256:4ea72b5780763bd1d65fc940fe382cbd279c96f43386a5a776c7bd91037d765e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.1.10` - linux; amd64

```console
$ docker pull crate@sha256:58e2491b2481e462da4dd43ab4f9ee4b4031493283c7c7852ab2913f6fd06494
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.1 MB (129132925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ae0baeb06b9f9f5cb808e8d58d01f76c1efd5b5e24f8e85bf6914c00297ddf0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 09 Jan 2018 21:13:01 GMT
ADD file:df48d6d6df42a01380557aebd4ca02807fc08a76a1d1b36d957e59a41c69db0b in / 
# Tue, 09 Jan 2018 21:13:01 GMT
CMD ["/bin/sh"]
# Thu, 14 Jun 2018 05:22:28 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Thu, 14 Jun 2018 05:22:28 GMT
ENV GOSU_VERSION=1.9
# Thu, 14 Jun 2018 05:22:37 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Thu, 14 Jun 2018 05:22:38 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Thu, 14 Jun 2018 05:22:38 GMT
ENV CRATE_VERSION=2.1.10
# Thu, 14 Jun 2018 05:23:17 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/lib/sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Thu, 14 Jun 2018 05:23:17 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Jun 2018 05:23:17 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 14 Jun 2018 05:23:17 GMT
VOLUME [/data]
# Thu, 14 Jun 2018 05:23:18 GMT
ADD file:c0b3bba944a2572094279072da088c4f681b13f9bed768ebd567555831729fab in /crate/config/crate.yml 
# Thu, 14 Jun 2018 05:23:18 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Thu, 14 Jun 2018 05:23:18 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Thu, 14 Jun 2018 05:23:18 GMT
WORKDIR /data
# Thu, 14 Jun 2018 05:23:18 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Thu, 14 Jun 2018 05:23:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Jun 2018 05:23:19 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:550fe1bea624a5c62551cf09f3aa10886eed133794844af1dfb775118309387e`  
		Last Modified: Tue, 09 Jan 2018 21:15:20 GMT  
		Size: 2.0 MB (1970140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cf7b9deb78d9216404f66f84a0681e25e0cf9527eb7ea0520fc515bec9f4449`  
		Last Modified: Thu, 14 Jun 2018 05:27:16 GMT  
		Size: 592.4 KB (592375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbb643bcedb7ce2c6bdbb101c118163d02914b194a82b36673e329cae97e3451`  
		Last Modified: Thu, 14 Jun 2018 05:27:15 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4306eec921b6da48aeeaf2f8ac211b2b092a7446386b29607d81d1a653921efc`  
		Last Modified: Thu, 14 Jun 2018 05:27:46 GMT  
		Size: 126.6 MB (126567701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4748273e0c8dceec8b9e86c1d7624d3c74c4e00e1848ed0c472d9935659602d`  
		Last Modified: Thu, 14 Jun 2018 05:27:12 GMT  
		Size: 246.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff9f9f16de4dfabf895a2b00f51b41c53405f02189ec73eca1d6ff8366154332`  
		Last Modified: Thu, 14 Jun 2018 05:27:13 GMT  
		Size: 934.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e0b66562e412cab5d7759e16718b006d76008da7654b2e78590ccd4bf1a2efa`  
		Last Modified: Thu, 14 Jun 2018 05:27:12 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90c04d5a8077e161fe60ee4f493568de9942d4366d2f25bf73407dee8e648047`  
		Last Modified: Thu, 14 Jun 2018 05:27:13 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.2`

```console
$ docker pull crate@sha256:98347c8333db64f49c7376ff2eeba817a9e6b88059d7afc6931c2905e445eb05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.2` - linux; amd64

```console
$ docker pull crate@sha256:93abbaf22ff227a79de3ef6279ed7974943845d8028c0d8db2e09f2b179b4755
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.9 MB (128886670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e16b8fb288fe1101150f8d7a268a8c9132d16c173653356c1c3eca25679a945a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Thu, 14 Jun 2018 05:19:32 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Thu, 14 Jun 2018 05:19:33 GMT
ENV GOSU_VERSION=1.9
# Thu, 14 Jun 2018 05:19:43 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Thu, 14 Jun 2018 05:19:44 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Thu, 14 Jun 2018 05:21:44 GMT
ENV CRATE_VERSION=2.2.7
# Thu, 14 Jun 2018 05:22:16 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/lib/sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Thu, 14 Jun 2018 05:22:16 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Jun 2018 05:22:20 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 14 Jun 2018 05:22:20 GMT
VOLUME [/data]
# Thu, 14 Jun 2018 05:22:21 GMT
ADD file:5ffe7502a8e59c1690f1c10bd4f7c3843fa35e03c99223a05215c7b021cec1a1 in /crate/config/crate.yml 
# Thu, 14 Jun 2018 05:22:21 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Thu, 14 Jun 2018 05:22:21 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Thu, 14 Jun 2018 05:22:21 GMT
WORKDIR /data
# Thu, 14 Jun 2018 05:22:21 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Thu, 14 Jun 2018 05:22:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Jun 2018 05:22:22 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d0f89085c8a344b25dbacd031d11cb0b3f31c5f6a64e53f4d349ee3c55d33d`  
		Last Modified: Thu, 14 Jun 2018 05:24:20 GMT  
		Size: 593.1 KB (593131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11522ce66502cfd1fbc07d3d00144ba153605efd6021790e9c9c644eace0b1fa`  
		Last Modified: Thu, 14 Jun 2018 05:24:20 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e0dee4ef22b67663b9981042144dda7f6a26ac4a3f50928e6b2a8567fb11dd1`  
		Last Modified: Thu, 14 Jun 2018 05:26:52 GMT  
		Size: 126.2 MB (126225287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5386b836a149d7e24601134822766d9379824ca227e6fb3e4801db401f32e7`  
		Last Modified: Thu, 14 Jun 2018 05:26:19 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17aaf5cff366ffa35765e523c6f3caa53045850ebd1425b8ef133107c3af185`  
		Last Modified: Thu, 14 Jun 2018 05:26:19 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9006d37a2e1b1f9dcba4e5e523b69b43d02ac2260326d1f513e36be31eff43`  
		Last Modified: Thu, 14 Jun 2018 05:26:19 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28dc7a4385459189eeb31f8dc73c69e91644f28e6b715449a586171bf6d90119`  
		Last Modified: Thu, 14 Jun 2018 05:26:19 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.2.7`

```console
$ docker pull crate@sha256:98347c8333db64f49c7376ff2eeba817a9e6b88059d7afc6931c2905e445eb05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.2.7` - linux; amd64

```console
$ docker pull crate@sha256:93abbaf22ff227a79de3ef6279ed7974943845d8028c0d8db2e09f2b179b4755
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.9 MB (128886670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e16b8fb288fe1101150f8d7a268a8c9132d16c173653356c1c3eca25679a945a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Thu, 14 Jun 2018 05:19:32 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Thu, 14 Jun 2018 05:19:33 GMT
ENV GOSU_VERSION=1.9
# Thu, 14 Jun 2018 05:19:43 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Thu, 14 Jun 2018 05:19:44 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Thu, 14 Jun 2018 05:21:44 GMT
ENV CRATE_VERSION=2.2.7
# Thu, 14 Jun 2018 05:22:16 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/lib/sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Thu, 14 Jun 2018 05:22:16 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Jun 2018 05:22:20 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 14 Jun 2018 05:22:20 GMT
VOLUME [/data]
# Thu, 14 Jun 2018 05:22:21 GMT
ADD file:5ffe7502a8e59c1690f1c10bd4f7c3843fa35e03c99223a05215c7b021cec1a1 in /crate/config/crate.yml 
# Thu, 14 Jun 2018 05:22:21 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Thu, 14 Jun 2018 05:22:21 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Thu, 14 Jun 2018 05:22:21 GMT
WORKDIR /data
# Thu, 14 Jun 2018 05:22:21 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Thu, 14 Jun 2018 05:22:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Jun 2018 05:22:22 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d0f89085c8a344b25dbacd031d11cb0b3f31c5f6a64e53f4d349ee3c55d33d`  
		Last Modified: Thu, 14 Jun 2018 05:24:20 GMT  
		Size: 593.1 KB (593131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11522ce66502cfd1fbc07d3d00144ba153605efd6021790e9c9c644eace0b1fa`  
		Last Modified: Thu, 14 Jun 2018 05:24:20 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e0dee4ef22b67663b9981042144dda7f6a26ac4a3f50928e6b2a8567fb11dd1`  
		Last Modified: Thu, 14 Jun 2018 05:26:52 GMT  
		Size: 126.2 MB (126225287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5386b836a149d7e24601134822766d9379824ca227e6fb3e4801db401f32e7`  
		Last Modified: Thu, 14 Jun 2018 05:26:19 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d17aaf5cff366ffa35765e523c6f3caa53045850ebd1425b8ef133107c3af185`  
		Last Modified: Thu, 14 Jun 2018 05:26:19 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5c9006d37a2e1b1f9dcba4e5e523b69b43d02ac2260326d1f513e36be31eff43`  
		Last Modified: Thu, 14 Jun 2018 05:26:19 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28dc7a4385459189eeb31f8dc73c69e91644f28e6b715449a586171bf6d90119`  
		Last Modified: Thu, 14 Jun 2018 05:26:19 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.3`

```console
$ docker pull crate@sha256:bab40d292c0468e0253b9cc4c850394bedd245690429f699dcb19d95905ecbcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.3` - linux; amd64

```console
$ docker pull crate@sha256:3141a15adb7ec91d6457bc7a78fbd034aadf73b73d00fbefee491f5e3ce1fc86
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129745389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a33931ffb73057b610aa60c2de39d42ee7c24fef490c875d128fadf25a033af2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Thu, 14 Jun 2018 05:19:32 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Thu, 14 Jun 2018 05:19:33 GMT
ENV GOSU_VERSION=1.9
# Thu, 14 Jun 2018 05:19:43 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Thu, 14 Jun 2018 05:19:44 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Thu, 14 Jun 2018 05:20:37 GMT
ENV CRATE_VERSION=2.3.11
# Thu, 14 Jun 2018 05:21:26 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Thu, 14 Jun 2018 05:21:27 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Jun 2018 05:21:27 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 14 Jun 2018 05:21:27 GMT
HEALTHCHECK &{["CMD-SHELL" "curl $(hostname):4200"] "0s" "0s" "0s" '\x00'}
# Thu, 14 Jun 2018 05:21:27 GMT
VOLUME [/data]
# Thu, 14 Jun 2018 05:21:27 GMT
ADD file:5ffe7502a8e59c1690f1c10bd4f7c3843fa35e03c99223a05215c7b021cec1a1 in /crate/config/crate.yml 
# Thu, 14 Jun 2018 05:21:28 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Thu, 14 Jun 2018 05:21:28 GMT
COPY file:2e96d63ad898925a7e7d49d4440efe616689a56ac5b315dc06aa1bf54f1c2e08 in / 
# Thu, 14 Jun 2018 05:21:28 GMT
WORKDIR /data
# Thu, 14 Jun 2018 05:21:28 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Thu, 14 Jun 2018 05:21:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Jun 2018 05:21:32 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d0f89085c8a344b25dbacd031d11cb0b3f31c5f6a64e53f4d349ee3c55d33d`  
		Last Modified: Thu, 14 Jun 2018 05:24:20 GMT  
		Size: 593.1 KB (593131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11522ce66502cfd1fbc07d3d00144ba153605efd6021790e9c9c644eace0b1fa`  
		Last Modified: Thu, 14 Jun 2018 05:24:20 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7f13f52d96e68c7028facff4576a764ddf37279fef142978fe18aafae4c1ee`  
		Last Modified: Thu, 14 Jun 2018 05:25:59 GMT  
		Size: 127.1 MB (127083873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7dc7e6de9d767e6a9a336712a99b77df7c9794989b0e81e9cc2444c64828c45`  
		Last Modified: Thu, 14 Jun 2018 05:25:18 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cca6d8dc595a658731e9754488cb906d7dab7bc58aec6b5367520d202da2dc8b`  
		Last Modified: Thu, 14 Jun 2018 05:25:18 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c9de73cb0af4eee538e90eff2dcd807bcf2a649a30330b2d2d38b7b4ad2f4b`  
		Last Modified: Thu, 14 Jun 2018 05:25:18 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce689c559045a1a1a2ef6e4acae4ad08f68208908d8599b0188b1d8e74617c55`  
		Last Modified: Thu, 14 Jun 2018 05:25:18 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.3.11`

```console
$ docker pull crate@sha256:bab40d292c0468e0253b9cc4c850394bedd245690429f699dcb19d95905ecbcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.3.11` - linux; amd64

```console
$ docker pull crate@sha256:3141a15adb7ec91d6457bc7a78fbd034aadf73b73d00fbefee491f5e3ce1fc86
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129745389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a33931ffb73057b610aa60c2de39d42ee7c24fef490c875d128fadf25a033af2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Thu, 14 Jun 2018 05:19:32 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Thu, 14 Jun 2018 05:19:33 GMT
ENV GOSU_VERSION=1.9
# Thu, 14 Jun 2018 05:19:43 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Thu, 14 Jun 2018 05:19:44 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Thu, 14 Jun 2018 05:20:37 GMT
ENV CRATE_VERSION=2.3.11
# Thu, 14 Jun 2018 05:21:26 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Thu, 14 Jun 2018 05:21:27 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Jun 2018 05:21:27 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 14 Jun 2018 05:21:27 GMT
HEALTHCHECK &{["CMD-SHELL" "curl $(hostname):4200"] "0s" "0s" "0s" '\x00'}
# Thu, 14 Jun 2018 05:21:27 GMT
VOLUME [/data]
# Thu, 14 Jun 2018 05:21:27 GMT
ADD file:5ffe7502a8e59c1690f1c10bd4f7c3843fa35e03c99223a05215c7b021cec1a1 in /crate/config/crate.yml 
# Thu, 14 Jun 2018 05:21:28 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Thu, 14 Jun 2018 05:21:28 GMT
COPY file:2e96d63ad898925a7e7d49d4440efe616689a56ac5b315dc06aa1bf54f1c2e08 in / 
# Thu, 14 Jun 2018 05:21:28 GMT
WORKDIR /data
# Thu, 14 Jun 2018 05:21:28 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Thu, 14 Jun 2018 05:21:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Jun 2018 05:21:32 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d0f89085c8a344b25dbacd031d11cb0b3f31c5f6a64e53f4d349ee3c55d33d`  
		Last Modified: Thu, 14 Jun 2018 05:24:20 GMT  
		Size: 593.1 KB (593131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11522ce66502cfd1fbc07d3d00144ba153605efd6021790e9c9c644eace0b1fa`  
		Last Modified: Thu, 14 Jun 2018 05:24:20 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d7f13f52d96e68c7028facff4576a764ddf37279fef142978fe18aafae4c1ee`  
		Last Modified: Thu, 14 Jun 2018 05:25:59 GMT  
		Size: 127.1 MB (127083873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7dc7e6de9d767e6a9a336712a99b77df7c9794989b0e81e9cc2444c64828c45`  
		Last Modified: Thu, 14 Jun 2018 05:25:18 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cca6d8dc595a658731e9754488cb906d7dab7bc58aec6b5367520d202da2dc8b`  
		Last Modified: Thu, 14 Jun 2018 05:25:18 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8c9de73cb0af4eee538e90eff2dcd807bcf2a649a30330b2d2d38b7b4ad2f4b`  
		Last Modified: Thu, 14 Jun 2018 05:25:18 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce689c559045a1a1a2ef6e4acae4ad08f68208908d8599b0188b1d8e74617c55`  
		Last Modified: Thu, 14 Jun 2018 05:25:18 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:3.0`

```console
$ docker pull crate@sha256:09467e1ea2ca11bc616094e56b9ba631d751eb4051196122ced6548f9df6213e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:3.0` - linux; amd64

```console
$ docker pull crate@sha256:3532fb2497ef21afff0c6fee0eb87ac4872e4f8adb1057f0cd00554b6f0e4e70
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.1 MB (129140528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c85915a5bfe1de547e6e2513fcf23def939c42fa19483ffbcf05e620c3e41a0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Thu, 14 Jun 2018 05:19:32 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Thu, 14 Jun 2018 05:19:33 GMT
ENV GOSU_VERSION=1.9
# Thu, 14 Jun 2018 05:19:43 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Thu, 14 Jun 2018 05:19:44 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Thu, 14 Jun 2018 05:19:44 GMT
ENV CRATE_VERSION=3.0.2
# Thu, 14 Jun 2018 05:20:17 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Thu, 14 Jun 2018 05:20:17 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Jun 2018 05:20:18 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 14 Jun 2018 05:20:18 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --fail --max-time 25 $(hostname):4200"] "30s" "30s" "0s" '\x00'}
# Thu, 14 Jun 2018 05:20:18 GMT
RUN mkdir -p /data/data /data/log
# Thu, 14 Jun 2018 05:20:19 GMT
VOLUME [/data]
# Thu, 14 Jun 2018 05:20:19 GMT
ADD file:5ffe7502a8e59c1690f1c10bd4f7c3843fa35e03c99223a05215c7b021cec1a1 in /crate/config/crate.yml 
# Thu, 14 Jun 2018 05:20:19 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Thu, 14 Jun 2018 05:20:20 GMT
COPY file:d9f58308360d930f2615963c2a132526cb669cddd1d4e377453c41c79c56c250 in /docker-entrypoint.sh 
# Thu, 14 Jun 2018 05:20:20 GMT
WORKDIR /data
# Thu, 14 Jun 2018 05:20:20 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Thu, 14 Jun 2018 05:20:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Jun 2018 05:20:21 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d0f89085c8a344b25dbacd031d11cb0b3f31c5f6a64e53f4d349ee3c55d33d`  
		Last Modified: Thu, 14 Jun 2018 05:24:20 GMT  
		Size: 593.1 KB (593131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11522ce66502cfd1fbc07d3d00144ba153605efd6021790e9c9c644eace0b1fa`  
		Last Modified: Thu, 14 Jun 2018 05:24:20 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d23d6369c88cbdb8e54d6d779c7c3b49236b5776caa225ef8b60cc3c2bea59`  
		Last Modified: Thu, 14 Jun 2018 05:24:41 GMT  
		Size: 126.5 MB (126478908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5042cdc3bf1136615bb6228fc65224d7e5ce7ccb493299fcd77fe58fa996196`  
		Last Modified: Thu, 14 Jun 2018 05:24:14 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06601a07b3e8b387ae7307b3075ffde035cb8ff43ea18cf093d464f00c576ca3`  
		Last Modified: Thu, 14 Jun 2018 05:24:15 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae84b26d8ed02616b61b86e5effeb5b0a19242beefbb5cad28d540d02af9885`  
		Last Modified: Thu, 14 Jun 2018 05:24:14 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a33340055d84e9a359230672d401a8c291af4c3ff565e73c40dde3d72411229`  
		Last Modified: Thu, 14 Jun 2018 05:24:14 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:3.0.2`

```console
$ docker pull crate@sha256:09467e1ea2ca11bc616094e56b9ba631d751eb4051196122ced6548f9df6213e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:3.0.2` - linux; amd64

```console
$ docker pull crate@sha256:3532fb2497ef21afff0c6fee0eb87ac4872e4f8adb1057f0cd00554b6f0e4e70
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.1 MB (129140528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c85915a5bfe1de547e6e2513fcf23def939c42fa19483ffbcf05e620c3e41a0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Thu, 14 Jun 2018 05:19:32 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Thu, 14 Jun 2018 05:19:33 GMT
ENV GOSU_VERSION=1.9
# Thu, 14 Jun 2018 05:19:43 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Thu, 14 Jun 2018 05:19:44 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Thu, 14 Jun 2018 05:19:44 GMT
ENV CRATE_VERSION=3.0.2
# Thu, 14 Jun 2018 05:20:17 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Thu, 14 Jun 2018 05:20:17 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Jun 2018 05:20:18 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 14 Jun 2018 05:20:18 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --fail --max-time 25 $(hostname):4200"] "30s" "30s" "0s" '\x00'}
# Thu, 14 Jun 2018 05:20:18 GMT
RUN mkdir -p /data/data /data/log
# Thu, 14 Jun 2018 05:20:19 GMT
VOLUME [/data]
# Thu, 14 Jun 2018 05:20:19 GMT
ADD file:5ffe7502a8e59c1690f1c10bd4f7c3843fa35e03c99223a05215c7b021cec1a1 in /crate/config/crate.yml 
# Thu, 14 Jun 2018 05:20:19 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Thu, 14 Jun 2018 05:20:20 GMT
COPY file:d9f58308360d930f2615963c2a132526cb669cddd1d4e377453c41c79c56c250 in /docker-entrypoint.sh 
# Thu, 14 Jun 2018 05:20:20 GMT
WORKDIR /data
# Thu, 14 Jun 2018 05:20:20 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Thu, 14 Jun 2018 05:20:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Jun 2018 05:20:21 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d0f89085c8a344b25dbacd031d11cb0b3f31c5f6a64e53f4d349ee3c55d33d`  
		Last Modified: Thu, 14 Jun 2018 05:24:20 GMT  
		Size: 593.1 KB (593131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11522ce66502cfd1fbc07d3d00144ba153605efd6021790e9c9c644eace0b1fa`  
		Last Modified: Thu, 14 Jun 2018 05:24:20 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d23d6369c88cbdb8e54d6d779c7c3b49236b5776caa225ef8b60cc3c2bea59`  
		Last Modified: Thu, 14 Jun 2018 05:24:41 GMT  
		Size: 126.5 MB (126478908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5042cdc3bf1136615bb6228fc65224d7e5ce7ccb493299fcd77fe58fa996196`  
		Last Modified: Thu, 14 Jun 2018 05:24:14 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06601a07b3e8b387ae7307b3075ffde035cb8ff43ea18cf093d464f00c576ca3`  
		Last Modified: Thu, 14 Jun 2018 05:24:15 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae84b26d8ed02616b61b86e5effeb5b0a19242beefbb5cad28d540d02af9885`  
		Last Modified: Thu, 14 Jun 2018 05:24:14 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a33340055d84e9a359230672d401a8c291af4c3ff565e73c40dde3d72411229`  
		Last Modified: Thu, 14 Jun 2018 05:24:14 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:latest`

```console
$ docker pull crate@sha256:09467e1ea2ca11bc616094e56b9ba631d751eb4051196122ced6548f9df6213e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:latest` - linux; amd64

```console
$ docker pull crate@sha256:3532fb2497ef21afff0c6fee0eb87ac4872e4f8adb1057f0cd00554b6f0e4e70
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.1 MB (129140528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c85915a5bfe1de547e6e2513fcf23def939c42fa19483ffbcf05e620c3e41a0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Thu, 14 Jun 2018 05:19:32 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Thu, 14 Jun 2018 05:19:33 GMT
ENV GOSU_VERSION=1.9
# Thu, 14 Jun 2018 05:19:43 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Thu, 14 Jun 2018 05:19:44 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Thu, 14 Jun 2018 05:19:44 GMT
ENV CRATE_VERSION=3.0.2
# Thu, 14 Jun 2018 05:20:17 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Thu, 14 Jun 2018 05:20:17 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 14 Jun 2018 05:20:18 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 14 Jun 2018 05:20:18 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --fail --max-time 25 $(hostname):4200"] "30s" "30s" "0s" '\x00'}
# Thu, 14 Jun 2018 05:20:18 GMT
RUN mkdir -p /data/data /data/log
# Thu, 14 Jun 2018 05:20:19 GMT
VOLUME [/data]
# Thu, 14 Jun 2018 05:20:19 GMT
ADD file:5ffe7502a8e59c1690f1c10bd4f7c3843fa35e03c99223a05215c7b021cec1a1 in /crate/config/crate.yml 
# Thu, 14 Jun 2018 05:20:19 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Thu, 14 Jun 2018 05:20:20 GMT
COPY file:d9f58308360d930f2615963c2a132526cb669cddd1d4e377453c41c79c56c250 in /docker-entrypoint.sh 
# Thu, 14 Jun 2018 05:20:20 GMT
WORKDIR /data
# Thu, 14 Jun 2018 05:20:20 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Thu, 14 Jun 2018 05:20:21 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 14 Jun 2018 05:20:21 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36d0f89085c8a344b25dbacd031d11cb0b3f31c5f6a64e53f4d349ee3c55d33d`  
		Last Modified: Thu, 14 Jun 2018 05:24:20 GMT  
		Size: 593.1 KB (593131 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11522ce66502cfd1fbc07d3d00144ba153605efd6021790e9c9c644eace0b1fa`  
		Last Modified: Thu, 14 Jun 2018 05:24:20 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d23d6369c88cbdb8e54d6d779c7c3b49236b5776caa225ef8b60cc3c2bea59`  
		Last Modified: Thu, 14 Jun 2018 05:24:41 GMT  
		Size: 126.5 MB (126478908 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5042cdc3bf1136615bb6228fc65224d7e5ce7ccb493299fcd77fe58fa996196`  
		Last Modified: Thu, 14 Jun 2018 05:24:14 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06601a07b3e8b387ae7307b3075ffde035cb8ff43ea18cf093d464f00c576ca3`  
		Last Modified: Thu, 14 Jun 2018 05:24:15 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dae84b26d8ed02616b61b86e5effeb5b0a19242beefbb5cad28d540d02af9885`  
		Last Modified: Thu, 14 Jun 2018 05:24:14 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a33340055d84e9a359230672d401a8c291af4c3ff565e73c40dde3d72411229`  
		Last Modified: Thu, 14 Jun 2018 05:24:14 GMT  
		Size: 432.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
