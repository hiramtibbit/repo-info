<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `crate`

-	[`crate:2.0`](#crate20)
-	[`crate:2.0.7`](#crate207)
-	[`crate:2.1`](#crate21)
-	[`crate:2.1.10`](#crate2110)
-	[`crate:2.2`](#crate22)
-	[`crate:2.2.7`](#crate227)
-	[`crate:2.3`](#crate23)
-	[`crate:2.3.5`](#crate235)
-	[`crate:latest`](#cratelatest)

## `crate:2.0`

```console
$ docker pull crate@sha256:6bd487920fc2e9b6a8e0ea48ecd24da0593bed5eb44a6f2a0974ac89a1b5b157
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.0` - linux; amd64

```console
$ docker pull crate@sha256:2183a78afcd4f90bb2688003541b04fa2ae27acf8082d0420c22e51a084c6bc1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.5 MB (126532762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc82bfc4e3354b3033584d0a2da6cd69c746421eeca717e1cedf5bd42640abac`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 09 Jan 2018 21:13:01 GMT
ADD file:df48d6d6df42a01380557aebd4ca02807fc08a76a1d1b36d957e59a41c69db0b in / 
# Tue, 09 Jan 2018 21:13:01 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:54:39 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Tue, 09 Jan 2018 21:54:40 GMT
ENV GOSU_VERSION=1.9
# Tue, 09 Jan 2018 21:55:08 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Tue, 09 Jan 2018 21:55:09 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Tue, 09 Jan 2018 21:56:47 GMT
ENV CRATE_VERSION=2.0.7
# Tue, 09 Jan 2018 21:57:43 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/crate-sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Tue, 09 Jan 2018 21:57:44 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 09 Jan 2018 21:57:44 GMT
VOLUME [/data]
# Tue, 09 Jan 2018 21:57:44 GMT
ADD file:f6ed1d4a953eca6984e33a751c11c6838562c006ffa19ab36d121906728e94db in /crate/config/crate.yml 
# Tue, 09 Jan 2018 21:57:45 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Tue, 09 Jan 2018 21:57:45 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Tue, 09 Jan 2018 21:57:45 GMT
WORKDIR /data
# Tue, 09 Jan 2018 21:57:46 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp 5433/tcp 5434/tcp 5435/tcp 5436/tcp 5437/tcp 5438/tcp 5439/tcp 5440/tcp 5441/tcp 5442/tcp 5443/tcp 5444/tcp 5445/tcp 5446/tcp 5447/tcp 5448/tcp 5449/tcp 5450/tcp 5451/tcp 5452/tcp 5453/tcp 5454/tcp 5455/tcp 5456/tcp 5457/tcp 5458/tcp 5459/tcp 5460/tcp 5461/tcp 5462/tcp 5463/tcp 5464/tcp 5465/tcp 5466/tcp 5467/tcp 5468/tcp 5469/tcp 5470/tcp 5471/tcp 5472/tcp 5473/tcp 5474/tcp 5475/tcp 5476/tcp 5477/tcp 5478/tcp 5479/tcp 5480/tcp 5481/tcp 5482/tcp 5483/tcp 5484/tcp 5485/tcp 5486/tcp 5487/tcp 5488/tcp 5489/tcp 5490/tcp 5491/tcp 5492/tcp 5493/tcp 5494/tcp 5495/tcp 5496/tcp 5497/tcp 5498/tcp 5499/tcp 5500/tcp 5501/tcp 5502/tcp 5503/tcp 5504/tcp 5505/tcp 5506/tcp 5507/tcp 5508/tcp 5509/tcp 5510/tcp 5511/tcp 5512/tcp 5513/tcp 5514/tcp 5515/tcp 5516/tcp 5517/tcp 5518/tcp 5519/tcp 5520/tcp 5521/tcp 5522/tcp 5523/tcp 5524/tcp 5525/tcp 5526/tcp 5527/tcp 5528/tcp 5529/tcp 5530/tcp 5531/tcp 5532/tcp
# Tue, 09 Jan 2018 21:57:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Jan 2018 21:57:46 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:550fe1bea624a5c62551cf09f3aa10886eed133794844af1dfb775118309387e`  
		Last Modified: Tue, 09 Jan 2018 21:15:20 GMT  
		Size: 2.0 MB (1970140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a978fe7044d71089ea637c37c568c9df275d1a6ad05b0b34e475496914e9a58e`  
		Last Modified: Tue, 09 Jan 2018 21:59:26 GMT  
		Size: 592.4 KB (592371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25eebb3b80cb7de09a89560ce9ba7da3435a0b6528d3e21de78b9578ee0a8e90`  
		Last Modified: Tue, 09 Jan 2018 21:59:25 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63f735806177d568463fe7d1844af222a44087ed0e20aef17db1834c199f54f9`  
		Last Modified: Tue, 09 Jan 2018 22:00:24 GMT  
		Size: 124.0 MB (123967555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f29a88f967a0e1380dcc9dc0046d05bce9dc1ad8997ba21ec0ab6ed137012237`  
		Last Modified: Tue, 09 Jan 2018 22:00:12 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c3c1ae12d1d2435d1de73fcae0555ec4fc9763e9cfb8ef192b91d05ef43a2d`  
		Last Modified: Tue, 09 Jan 2018 22:00:12 GMT  
		Size: 937.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af320c3899ea4114972e99b9ceb36385935066073a40dfd94e5768be834a9562`  
		Last Modified: Tue, 09 Jan 2018 22:00:13 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97b20567e616b79216bba539892a140650506e781a6089cfab722d6adcee3d5`  
		Last Modified: Tue, 09 Jan 2018 22:00:12 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.0.7`

```console
$ docker pull crate@sha256:6bd487920fc2e9b6a8e0ea48ecd24da0593bed5eb44a6f2a0974ac89a1b5b157
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.0.7` - linux; amd64

```console
$ docker pull crate@sha256:2183a78afcd4f90bb2688003541b04fa2ae27acf8082d0420c22e51a084c6bc1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.5 MB (126532762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc82bfc4e3354b3033584d0a2da6cd69c746421eeca717e1cedf5bd42640abac`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 09 Jan 2018 21:13:01 GMT
ADD file:df48d6d6df42a01380557aebd4ca02807fc08a76a1d1b36d957e59a41c69db0b in / 
# Tue, 09 Jan 2018 21:13:01 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:54:39 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Tue, 09 Jan 2018 21:54:40 GMT
ENV GOSU_VERSION=1.9
# Tue, 09 Jan 2018 21:55:08 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Tue, 09 Jan 2018 21:55:09 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Tue, 09 Jan 2018 21:56:47 GMT
ENV CRATE_VERSION=2.0.7
# Tue, 09 Jan 2018 21:57:43 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/crate-sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Tue, 09 Jan 2018 21:57:44 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 09 Jan 2018 21:57:44 GMT
VOLUME [/data]
# Tue, 09 Jan 2018 21:57:44 GMT
ADD file:f6ed1d4a953eca6984e33a751c11c6838562c006ffa19ab36d121906728e94db in /crate/config/crate.yml 
# Tue, 09 Jan 2018 21:57:45 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Tue, 09 Jan 2018 21:57:45 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Tue, 09 Jan 2018 21:57:45 GMT
WORKDIR /data
# Tue, 09 Jan 2018 21:57:46 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp 5433/tcp 5434/tcp 5435/tcp 5436/tcp 5437/tcp 5438/tcp 5439/tcp 5440/tcp 5441/tcp 5442/tcp 5443/tcp 5444/tcp 5445/tcp 5446/tcp 5447/tcp 5448/tcp 5449/tcp 5450/tcp 5451/tcp 5452/tcp 5453/tcp 5454/tcp 5455/tcp 5456/tcp 5457/tcp 5458/tcp 5459/tcp 5460/tcp 5461/tcp 5462/tcp 5463/tcp 5464/tcp 5465/tcp 5466/tcp 5467/tcp 5468/tcp 5469/tcp 5470/tcp 5471/tcp 5472/tcp 5473/tcp 5474/tcp 5475/tcp 5476/tcp 5477/tcp 5478/tcp 5479/tcp 5480/tcp 5481/tcp 5482/tcp 5483/tcp 5484/tcp 5485/tcp 5486/tcp 5487/tcp 5488/tcp 5489/tcp 5490/tcp 5491/tcp 5492/tcp 5493/tcp 5494/tcp 5495/tcp 5496/tcp 5497/tcp 5498/tcp 5499/tcp 5500/tcp 5501/tcp 5502/tcp 5503/tcp 5504/tcp 5505/tcp 5506/tcp 5507/tcp 5508/tcp 5509/tcp 5510/tcp 5511/tcp 5512/tcp 5513/tcp 5514/tcp 5515/tcp 5516/tcp 5517/tcp 5518/tcp 5519/tcp 5520/tcp 5521/tcp 5522/tcp 5523/tcp 5524/tcp 5525/tcp 5526/tcp 5527/tcp 5528/tcp 5529/tcp 5530/tcp 5531/tcp 5532/tcp
# Tue, 09 Jan 2018 21:57:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Jan 2018 21:57:46 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:550fe1bea624a5c62551cf09f3aa10886eed133794844af1dfb775118309387e`  
		Last Modified: Tue, 09 Jan 2018 21:15:20 GMT  
		Size: 2.0 MB (1970140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a978fe7044d71089ea637c37c568c9df275d1a6ad05b0b34e475496914e9a58e`  
		Last Modified: Tue, 09 Jan 2018 21:59:26 GMT  
		Size: 592.4 KB (592371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25eebb3b80cb7de09a89560ce9ba7da3435a0b6528d3e21de78b9578ee0a8e90`  
		Last Modified: Tue, 09 Jan 2018 21:59:25 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63f735806177d568463fe7d1844af222a44087ed0e20aef17db1834c199f54f9`  
		Last Modified: Tue, 09 Jan 2018 22:00:24 GMT  
		Size: 124.0 MB (123967555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f29a88f967a0e1380dcc9dc0046d05bce9dc1ad8997ba21ec0ab6ed137012237`  
		Last Modified: Tue, 09 Jan 2018 22:00:12 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c3c1ae12d1d2435d1de73fcae0555ec4fc9763e9cfb8ef192b91d05ef43a2d`  
		Last Modified: Tue, 09 Jan 2018 22:00:12 GMT  
		Size: 937.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af320c3899ea4114972e99b9ceb36385935066073a40dfd94e5768be834a9562`  
		Last Modified: Tue, 09 Jan 2018 22:00:13 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97b20567e616b79216bba539892a140650506e781a6089cfab722d6adcee3d5`  
		Last Modified: Tue, 09 Jan 2018 22:00:12 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.1`

```console
$ docker pull crate@sha256:b6e3509b35d3e13649d9ddf217b536a1869c89c6e633aee2ed270c6a35141ae3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.1` - linux; amd64

```console
$ docker pull crate@sha256:e94bd75941f74894b6421dcdc89222042d7fa565b7819bbbfbb2386010612d52
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.1 MB (129127060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d30ddb5b10b7fc2582830e5f0cd5104529b2fd2628bcaea2face9acd361de39`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 09 Jan 2018 21:13:01 GMT
ADD file:df48d6d6df42a01380557aebd4ca02807fc08a76a1d1b36d957e59a41c69db0b in / 
# Tue, 09 Jan 2018 21:13:01 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:54:39 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Tue, 09 Jan 2018 21:54:40 GMT
ENV GOSU_VERSION=1.9
# Tue, 09 Jan 2018 21:55:08 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Tue, 09 Jan 2018 21:55:09 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Tue, 09 Jan 2018 21:55:09 GMT
ENV CRATE_VERSION=2.1.10
# Tue, 09 Jan 2018 21:56:00 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/lib/sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Tue, 09 Jan 2018 21:56:07 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 09 Jan 2018 21:56:08 GMT
ENV CRATE_HEAP_SIZE=512M
# Tue, 09 Jan 2018 21:56:08 GMT
VOLUME [/data]
# Tue, 09 Jan 2018 21:56:08 GMT
ADD file:c0b3bba944a2572094279072da088c4f681b13f9bed768ebd567555831729fab in /crate/config/crate.yml 
# Tue, 09 Jan 2018 21:56:09 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Tue, 09 Jan 2018 21:56:09 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Tue, 09 Jan 2018 21:56:18 GMT
WORKDIR /data
# Tue, 09 Jan 2018 21:56:18 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Tue, 09 Jan 2018 21:56:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Jan 2018 21:56:19 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:550fe1bea624a5c62551cf09f3aa10886eed133794844af1dfb775118309387e`  
		Last Modified: Tue, 09 Jan 2018 21:15:20 GMT  
		Size: 2.0 MB (1970140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a978fe7044d71089ea637c37c568c9df275d1a6ad05b0b34e475496914e9a58e`  
		Last Modified: Tue, 09 Jan 2018 21:59:26 GMT  
		Size: 592.4 KB (592371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25eebb3b80cb7de09a89560ce9ba7da3435a0b6528d3e21de78b9578ee0a8e90`  
		Last Modified: Tue, 09 Jan 2018 21:59:25 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c36e42d1b203ec5b7f4e7a439fd90845dbf9f8660082f4d5b40332b27b02617c`  
		Last Modified: Tue, 09 Jan 2018 21:59:36 GMT  
		Size: 126.6 MB (126561840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2babe52ceb528482515137af488f41446a67f223e0e1560eca1831ab05e560bb`  
		Last Modified: Tue, 09 Jan 2018 21:59:23 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccdb4837af562b60f8733fa6309dbec9b9a49e60b3b721b3d55b9387593da92a`  
		Last Modified: Tue, 09 Jan 2018 21:59:24 GMT  
		Size: 934.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d837332a44b2820d8fc3f7fe3e2c1eaa068dbc090aa244a44cf2164cf194ca`  
		Last Modified: Tue, 09 Jan 2018 21:59:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec591f5690293fdccb09dbca32604f8a47a20cc7ce7247d1eca26a8338b199c`  
		Last Modified: Tue, 09 Jan 2018 21:59:25 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.1.10`

```console
$ docker pull crate@sha256:b6e3509b35d3e13649d9ddf217b536a1869c89c6e633aee2ed270c6a35141ae3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.1.10` - linux; amd64

```console
$ docker pull crate@sha256:e94bd75941f74894b6421dcdc89222042d7fa565b7819bbbfbb2386010612d52
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.1 MB (129127060 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d30ddb5b10b7fc2582830e5f0cd5104529b2fd2628bcaea2face9acd361de39`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 09 Jan 2018 21:13:01 GMT
ADD file:df48d6d6df42a01380557aebd4ca02807fc08a76a1d1b36d957e59a41c69db0b in / 
# Tue, 09 Jan 2018 21:13:01 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:54:39 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Tue, 09 Jan 2018 21:54:40 GMT
ENV GOSU_VERSION=1.9
# Tue, 09 Jan 2018 21:55:08 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Tue, 09 Jan 2018 21:55:09 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Tue, 09 Jan 2018 21:55:09 GMT
ENV CRATE_VERSION=2.1.10
# Tue, 09 Jan 2018 21:56:00 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/lib/sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Tue, 09 Jan 2018 21:56:07 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 09 Jan 2018 21:56:08 GMT
ENV CRATE_HEAP_SIZE=512M
# Tue, 09 Jan 2018 21:56:08 GMT
VOLUME [/data]
# Tue, 09 Jan 2018 21:56:08 GMT
ADD file:c0b3bba944a2572094279072da088c4f681b13f9bed768ebd567555831729fab in /crate/config/crate.yml 
# Tue, 09 Jan 2018 21:56:09 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Tue, 09 Jan 2018 21:56:09 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Tue, 09 Jan 2018 21:56:18 GMT
WORKDIR /data
# Tue, 09 Jan 2018 21:56:18 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Tue, 09 Jan 2018 21:56:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 09 Jan 2018 21:56:19 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:550fe1bea624a5c62551cf09f3aa10886eed133794844af1dfb775118309387e`  
		Last Modified: Tue, 09 Jan 2018 21:15:20 GMT  
		Size: 2.0 MB (1970140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a978fe7044d71089ea637c37c568c9df275d1a6ad05b0b34e475496914e9a58e`  
		Last Modified: Tue, 09 Jan 2018 21:59:26 GMT  
		Size: 592.4 KB (592371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25eebb3b80cb7de09a89560ce9ba7da3435a0b6528d3e21de78b9578ee0a8e90`  
		Last Modified: Tue, 09 Jan 2018 21:59:25 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c36e42d1b203ec5b7f4e7a439fd90845dbf9f8660082f4d5b40332b27b02617c`  
		Last Modified: Tue, 09 Jan 2018 21:59:36 GMT  
		Size: 126.6 MB (126561840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2babe52ceb528482515137af488f41446a67f223e0e1560eca1831ab05e560bb`  
		Last Modified: Tue, 09 Jan 2018 21:59:23 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccdb4837af562b60f8733fa6309dbec9b9a49e60b3b721b3d55b9387593da92a`  
		Last Modified: Tue, 09 Jan 2018 21:59:24 GMT  
		Size: 934.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4d837332a44b2820d8fc3f7fe3e2c1eaa068dbc090aa244a44cf2164cf194ca`  
		Last Modified: Tue, 09 Jan 2018 21:59:24 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ec591f5690293fdccb09dbca32604f8a47a20cc7ce7247d1eca26a8338b199c`  
		Last Modified: Tue, 09 Jan 2018 21:59:25 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.2`

```console
$ docker pull crate@sha256:ae708c262f211af0a22d9f0900aafbc0472631a58396fcadeb97d61445ac0249
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.2` - linux; amd64

```console
$ docker pull crate@sha256:632287e1b0a4494a30013959c2ef6ddb5a97862ed33ec973aef6e1fe2281c444
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.8 MB (128814792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1faedf59104d74c2044891002c7b0d8828aea398f9c883d55c317d1745739065`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:53:00 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Tue, 09 Jan 2018 21:53:01 GMT
ENV GOSU_VERSION=1.9
# Fri, 19 Jan 2018 20:49:04 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Fri, 19 Jan 2018 20:49:05 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Fri, 26 Jan 2018 20:03:08 GMT
ENV CRATE_VERSION=2.2.7
# Fri, 26 Jan 2018 20:03:31 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/lib/sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Fri, 26 Jan 2018 20:03:36 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 26 Jan 2018 20:03:36 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 26 Jan 2018 20:03:36 GMT
VOLUME [/data]
# Fri, 26 Jan 2018 20:03:37 GMT
ADD file:5ffe7502a8e59c1690f1c10bd4f7c3843fa35e03c99223a05215c7b021cec1a1 in /crate/config/crate.yml 
# Fri, 26 Jan 2018 20:03:37 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Fri, 26 Jan 2018 20:03:38 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Fri, 26 Jan 2018 20:03:38 GMT
WORKDIR /data
# Fri, 26 Jan 2018 20:03:38 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Fri, 26 Jan 2018 20:03:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 26 Jan 2018 20:03:39 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c9f08eae0aa06fa4473faeb205e680c751310a69b91dadd89bab1324525c9b`  
		Last Modified: Fri, 19 Jan 2018 20:50:30 GMT  
		Size: 593.1 KB (593129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a997c15a6dc91e11f2154076f4c90943254fe240f94a281ad62ce4dd878b0efe`  
		Last Modified: Fri, 19 Jan 2018 20:50:30 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852e52e4a54569908cea6f5f97cc82d15540e1f4531777d84f432a88b2d02c2a`  
		Last Modified: Fri, 26 Jan 2018 20:05:33 GMT  
		Size: 126.2 MB (126153409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:862a79f39cd2315ee8cf8cedb19df80cce7298ecae5e98b34b8c961fbb96c202`  
		Last Modified: Fri, 26 Jan 2018 20:05:23 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c7c273479bcaeb9cb26b880e858e24ccb2e848fdaee26dafddb375b1296140`  
		Last Modified: Fri, 26 Jan 2018 20:05:23 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6c8ac54aeb861844bb661b690a9ecb7a0bf31ab8a25557dc52901a3eb20b075`  
		Last Modified: Fri, 26 Jan 2018 20:05:23 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4a080658c99ce6bbcaa13bc3f26dbc4860e8d2cb3afde5d8bb85f7ab8d43e2c`  
		Last Modified: Fri, 26 Jan 2018 20:05:23 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.2.7`

```console
$ docker pull crate@sha256:ae708c262f211af0a22d9f0900aafbc0472631a58396fcadeb97d61445ac0249
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.2.7` - linux; amd64

```console
$ docker pull crate@sha256:632287e1b0a4494a30013959c2ef6ddb5a97862ed33ec973aef6e1fe2281c444
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.8 MB (128814792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1faedf59104d74c2044891002c7b0d8828aea398f9c883d55c317d1745739065`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:53:00 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Tue, 09 Jan 2018 21:53:01 GMT
ENV GOSU_VERSION=1.9
# Fri, 19 Jan 2018 20:49:04 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Fri, 19 Jan 2018 20:49:05 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Fri, 26 Jan 2018 20:03:08 GMT
ENV CRATE_VERSION=2.2.7
# Fri, 26 Jan 2018 20:03:31 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/lib/sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Fri, 26 Jan 2018 20:03:36 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 26 Jan 2018 20:03:36 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 26 Jan 2018 20:03:36 GMT
VOLUME [/data]
# Fri, 26 Jan 2018 20:03:37 GMT
ADD file:5ffe7502a8e59c1690f1c10bd4f7c3843fa35e03c99223a05215c7b021cec1a1 in /crate/config/crate.yml 
# Fri, 26 Jan 2018 20:03:37 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Fri, 26 Jan 2018 20:03:38 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Fri, 26 Jan 2018 20:03:38 GMT
WORKDIR /data
# Fri, 26 Jan 2018 20:03:38 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Fri, 26 Jan 2018 20:03:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 26 Jan 2018 20:03:39 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c9f08eae0aa06fa4473faeb205e680c751310a69b91dadd89bab1324525c9b`  
		Last Modified: Fri, 19 Jan 2018 20:50:30 GMT  
		Size: 593.1 KB (593129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a997c15a6dc91e11f2154076f4c90943254fe240f94a281ad62ce4dd878b0efe`  
		Last Modified: Fri, 19 Jan 2018 20:50:30 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:852e52e4a54569908cea6f5f97cc82d15540e1f4531777d84f432a88b2d02c2a`  
		Last Modified: Fri, 26 Jan 2018 20:05:33 GMT  
		Size: 126.2 MB (126153409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:862a79f39cd2315ee8cf8cedb19df80cce7298ecae5e98b34b8c961fbb96c202`  
		Last Modified: Fri, 26 Jan 2018 20:05:23 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72c7c273479bcaeb9cb26b880e858e24ccb2e848fdaee26dafddb375b1296140`  
		Last Modified: Fri, 26 Jan 2018 20:05:23 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6c8ac54aeb861844bb661b690a9ecb7a0bf31ab8a25557dc52901a3eb20b075`  
		Last Modified: Fri, 26 Jan 2018 20:05:23 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4a080658c99ce6bbcaa13bc3f26dbc4860e8d2cb3afde5d8bb85f7ab8d43e2c`  
		Last Modified: Fri, 26 Jan 2018 20:05:23 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.3`

```console
$ docker pull crate@sha256:3f81301c3815ad46d5300eda4945dab71d286b8da20d3999f7a3890e8277efe5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.3` - linux; amd64

```console
$ docker pull crate@sha256:732d220696e9a224092d090d8f70ee0cd57071a8ad7436140e0a5f6811b6a49c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129681773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a028b692295d7024dc6a0f46256e229a02f6c86ef00ce4af9dd1a583518b7d1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:53:00 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Tue, 09 Jan 2018 21:53:01 GMT
ENV GOSU_VERSION=1.9
# Fri, 19 Jan 2018 20:49:04 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Fri, 19 Jan 2018 20:49:05 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Thu, 22 Mar 2018 18:06:58 GMT
ENV CRATE_VERSION=2.3.5
# Thu, 22 Mar 2018 18:07:28 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Thu, 22 Mar 2018 18:07:29 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Mar 2018 18:07:29 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 22 Mar 2018 18:07:29 GMT
HEALTHCHECK &{["CMD-SHELL" "curl $(hostname):4200"] "0s" "0s" "0s" '\x00'}
# Thu, 22 Mar 2018 18:07:30 GMT
VOLUME [/data]
# Thu, 22 Mar 2018 18:07:30 GMT
ADD file:5ffe7502a8e59c1690f1c10bd4f7c3843fa35e03c99223a05215c7b021cec1a1 in /crate/config/crate.yml 
# Thu, 22 Mar 2018 18:07:30 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Thu, 22 Mar 2018 18:07:31 GMT
COPY file:2e96d63ad898925a7e7d49d4440efe616689a56ac5b315dc06aa1bf54f1c2e08 in / 
# Thu, 22 Mar 2018 18:07:31 GMT
WORKDIR /data
# Thu, 22 Mar 2018 18:07:31 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Thu, 22 Mar 2018 18:07:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Mar 2018 18:07:32 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c9f08eae0aa06fa4473faeb205e680c751310a69b91dadd89bab1324525c9b`  
		Last Modified: Fri, 19 Jan 2018 20:50:30 GMT  
		Size: 593.1 KB (593129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a997c15a6dc91e11f2154076f4c90943254fe240f94a281ad62ce4dd878b0efe`  
		Last Modified: Fri, 19 Jan 2018 20:50:30 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a957830286a1287902c0068984bdaf96828114e8d24a50d13df706a92cfc435`  
		Last Modified: Thu, 22 Mar 2018 18:12:35 GMT  
		Size: 127.0 MB (127020260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfcd5f872f059c7bf9f80302a8c4ddad17def1531c4a27a33ed2e088d16a47e`  
		Last Modified: Thu, 22 Mar 2018 18:12:19 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d61496422f4d73399319ccc350643d89c6e233f0edbfe91fbe22dc8128e9d0`  
		Last Modified: Thu, 22 Mar 2018 18:12:19 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ee9d09f4f7d517df753658cd01c5605c85d12cb13b8f4708f18ceba4e749834`  
		Last Modified: Thu, 22 Mar 2018 18:12:19 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e1456a014e1565d95222db207f7449935c8449a61cfc4687d6302432590cf1`  
		Last Modified: Thu, 22 Mar 2018 18:12:19 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.3.5`

```console
$ docker pull crate@sha256:3f81301c3815ad46d5300eda4945dab71d286b8da20d3999f7a3890e8277efe5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.3.5` - linux; amd64

```console
$ docker pull crate@sha256:732d220696e9a224092d090d8f70ee0cd57071a8ad7436140e0a5f6811b6a49c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129681773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a028b692295d7024dc6a0f46256e229a02f6c86ef00ce4af9dd1a583518b7d1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:53:00 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Tue, 09 Jan 2018 21:53:01 GMT
ENV GOSU_VERSION=1.9
# Fri, 19 Jan 2018 20:49:04 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Fri, 19 Jan 2018 20:49:05 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Thu, 22 Mar 2018 18:06:58 GMT
ENV CRATE_VERSION=2.3.5
# Thu, 22 Mar 2018 18:07:28 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Thu, 22 Mar 2018 18:07:29 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Mar 2018 18:07:29 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 22 Mar 2018 18:07:29 GMT
HEALTHCHECK &{["CMD-SHELL" "curl $(hostname):4200"] "0s" "0s" "0s" '\x00'}
# Thu, 22 Mar 2018 18:07:30 GMT
VOLUME [/data]
# Thu, 22 Mar 2018 18:07:30 GMT
ADD file:5ffe7502a8e59c1690f1c10bd4f7c3843fa35e03c99223a05215c7b021cec1a1 in /crate/config/crate.yml 
# Thu, 22 Mar 2018 18:07:30 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Thu, 22 Mar 2018 18:07:31 GMT
COPY file:2e96d63ad898925a7e7d49d4440efe616689a56ac5b315dc06aa1bf54f1c2e08 in / 
# Thu, 22 Mar 2018 18:07:31 GMT
WORKDIR /data
# Thu, 22 Mar 2018 18:07:31 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Thu, 22 Mar 2018 18:07:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Mar 2018 18:07:32 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c9f08eae0aa06fa4473faeb205e680c751310a69b91dadd89bab1324525c9b`  
		Last Modified: Fri, 19 Jan 2018 20:50:30 GMT  
		Size: 593.1 KB (593129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a997c15a6dc91e11f2154076f4c90943254fe240f94a281ad62ce4dd878b0efe`  
		Last Modified: Fri, 19 Jan 2018 20:50:30 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a957830286a1287902c0068984bdaf96828114e8d24a50d13df706a92cfc435`  
		Last Modified: Thu, 22 Mar 2018 18:12:35 GMT  
		Size: 127.0 MB (127020260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfcd5f872f059c7bf9f80302a8c4ddad17def1531c4a27a33ed2e088d16a47e`  
		Last Modified: Thu, 22 Mar 2018 18:12:19 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d61496422f4d73399319ccc350643d89c6e233f0edbfe91fbe22dc8128e9d0`  
		Last Modified: Thu, 22 Mar 2018 18:12:19 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ee9d09f4f7d517df753658cd01c5605c85d12cb13b8f4708f18ceba4e749834`  
		Last Modified: Thu, 22 Mar 2018 18:12:19 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e1456a014e1565d95222db207f7449935c8449a61cfc4687d6302432590cf1`  
		Last Modified: Thu, 22 Mar 2018 18:12:19 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:latest`

```console
$ docker pull crate@sha256:3f81301c3815ad46d5300eda4945dab71d286b8da20d3999f7a3890e8277efe5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:latest` - linux; amd64

```console
$ docker pull crate@sha256:732d220696e9a224092d090d8f70ee0cd57071a8ad7436140e0a5f6811b6a49c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129681773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a028b692295d7024dc6a0f46256e229a02f6c86ef00ce4af9dd1a583518b7d1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:53:00 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Tue, 09 Jan 2018 21:53:01 GMT
ENV GOSU_VERSION=1.9
# Fri, 19 Jan 2018 20:49:04 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Fri, 19 Jan 2018 20:49:05 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Thu, 22 Mar 2018 18:06:58 GMT
ENV CRATE_VERSION=2.3.5
# Thu, 22 Mar 2018 18:07:28 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Thu, 22 Mar 2018 18:07:29 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Mar 2018 18:07:29 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 22 Mar 2018 18:07:29 GMT
HEALTHCHECK &{["CMD-SHELL" "curl $(hostname):4200"] "0s" "0s" "0s" '\x00'}
# Thu, 22 Mar 2018 18:07:30 GMT
VOLUME [/data]
# Thu, 22 Mar 2018 18:07:30 GMT
ADD file:5ffe7502a8e59c1690f1c10bd4f7c3843fa35e03c99223a05215c7b021cec1a1 in /crate/config/crate.yml 
# Thu, 22 Mar 2018 18:07:30 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Thu, 22 Mar 2018 18:07:31 GMT
COPY file:2e96d63ad898925a7e7d49d4440efe616689a56ac5b315dc06aa1bf54f1c2e08 in / 
# Thu, 22 Mar 2018 18:07:31 GMT
WORKDIR /data
# Thu, 22 Mar 2018 18:07:31 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Thu, 22 Mar 2018 18:07:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Mar 2018 18:07:32 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c9f08eae0aa06fa4473faeb205e680c751310a69b91dadd89bab1324525c9b`  
		Last Modified: Fri, 19 Jan 2018 20:50:30 GMT  
		Size: 593.1 KB (593129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a997c15a6dc91e11f2154076f4c90943254fe240f94a281ad62ce4dd878b0efe`  
		Last Modified: Fri, 19 Jan 2018 20:50:30 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a957830286a1287902c0068984bdaf96828114e8d24a50d13df706a92cfc435`  
		Last Modified: Thu, 22 Mar 2018 18:12:35 GMT  
		Size: 127.0 MB (127020260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfcd5f872f059c7bf9f80302a8c4ddad17def1531c4a27a33ed2e088d16a47e`  
		Last Modified: Thu, 22 Mar 2018 18:12:19 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d61496422f4d73399319ccc350643d89c6e233f0edbfe91fbe22dc8128e9d0`  
		Last Modified: Thu, 22 Mar 2018 18:12:19 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ee9d09f4f7d517df753658cd01c5605c85d12cb13b8f4708f18ceba4e749834`  
		Last Modified: Thu, 22 Mar 2018 18:12:19 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e1456a014e1565d95222db207f7449935c8449a61cfc4687d6302432590cf1`  
		Last Modified: Thu, 22 Mar 2018 18:12:19 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
