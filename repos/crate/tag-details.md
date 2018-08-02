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
-	[`crate:3.0.5`](#crate305)
-	[`crate:latest`](#cratelatest)

## `crate:2.0`

```console
$ docker pull crate@sha256:f7b871fb73fe73cf992ca8c8072db27a032f48574c5da49714bf854e43efa8af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.0` - linux; amd64

```console
$ docker pull crate@sha256:13ea7649f70d598de42ddf1bca76e24c4f7e9fc905f0963e4e74bf0621e59c03
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.7 MB (126654059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd944726ac0bd7b31a3a4da1f686f575159584fa33ebaf04481960f18fb1fd04`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 06 Jul 2018 14:16:09 GMT
ADD file:fbb7c24296423cb0b8bcd0412f1b2e0b4ecc467884db753ac60df80972928ebe in / 
# Fri, 06 Jul 2018 14:16:09 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 14:36:47 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Fri, 06 Jul 2018 14:36:47 GMT
ENV GOSU_VERSION=1.9
# Fri, 06 Jul 2018 14:36:55 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Fri, 06 Jul 2018 14:36:57 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Fri, 06 Jul 2018 14:37:51 GMT
ENV CRATE_VERSION=2.0.7
# Fri, 06 Jul 2018 14:38:09 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/crate-sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Fri, 06 Jul 2018 14:38:09 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Jul 2018 14:38:10 GMT
VOLUME [/data]
# Fri, 06 Jul 2018 14:38:11 GMT
ADD file:f6ed1d4a953eca6984e33a751c11c6838562c006ffa19ab36d121906728e94db in /crate/config/crate.yml 
# Fri, 06 Jul 2018 14:38:12 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Fri, 06 Jul 2018 14:38:12 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Fri, 06 Jul 2018 14:38:13 GMT
WORKDIR /data
# Fri, 06 Jul 2018 14:38:13 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp 5433/tcp 5434/tcp 5435/tcp 5436/tcp 5437/tcp 5438/tcp 5439/tcp 5440/tcp 5441/tcp 5442/tcp 5443/tcp 5444/tcp 5445/tcp 5446/tcp 5447/tcp 5448/tcp 5449/tcp 5450/tcp 5451/tcp 5452/tcp 5453/tcp 5454/tcp 5455/tcp 5456/tcp 5457/tcp 5458/tcp 5459/tcp 5460/tcp 5461/tcp 5462/tcp 5463/tcp 5464/tcp 5465/tcp 5466/tcp 5467/tcp 5468/tcp 5469/tcp 5470/tcp 5471/tcp 5472/tcp 5473/tcp 5474/tcp 5475/tcp 5476/tcp 5477/tcp 5478/tcp 5479/tcp 5480/tcp 5481/tcp 5482/tcp 5483/tcp 5484/tcp 5485/tcp 5486/tcp 5487/tcp 5488/tcp 5489/tcp 5490/tcp 5491/tcp 5492/tcp 5493/tcp 5494/tcp 5495/tcp 5496/tcp 5497/tcp 5498/tcp 5499/tcp 5500/tcp 5501/tcp 5502/tcp 5503/tcp 5504/tcp 5505/tcp 5506/tcp 5507/tcp 5508/tcp 5509/tcp 5510/tcp 5511/tcp 5512/tcp 5513/tcp 5514/tcp 5515/tcp 5516/tcp 5517/tcp 5518/tcp 5519/tcp 5520/tcp 5521/tcp 5522/tcp 5523/tcp 5524/tcp 5525/tcp 5526/tcp 5527/tcp 5528/tcp 5529/tcp 5530/tcp 5531/tcp 5532/tcp
# Fri, 06 Jul 2018 14:38:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 06 Jul 2018 14:38:14 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:f4900964ff56fb11dbdfba69c027cf8b27b62f87de0c8a94fb7da8a3a5e1af0a`  
		Last Modified: Fri, 06 Jul 2018 14:18:46 GMT  
		Size: 2.0 MB (1971160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf31a7028557dce51721912150e69d74603cea29db4336e8c88c2d2502e1e04`  
		Last Modified: Fri, 06 Jul 2018 14:41:00 GMT  
		Size: 592.4 KB (592354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f46e37ca8d3f2659b099aac8ae0c8a47a10d2d1e091bbe7f75a45f53b3de95`  
		Last Modified: Fri, 06 Jul 2018 14:41:00 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35007cda3bad62197261209065a123405c1d656242cf60f8eef2d4a083b4b6ac`  
		Last Modified: Fri, 06 Jul 2018 14:42:12 GMT  
		Size: 124.1 MB (124087849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df90ab76ec81d5d9dd19da0f96ff96926b839831a2bd4ec333e9391ef73b9462`  
		Last Modified: Fri, 06 Jul 2018 14:41:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52f3fc33b5e4abd48458b590d7f1d6cc8d1e99b21d6efc4f529a4990a2fe7c7`  
		Last Modified: Fri, 06 Jul 2018 14:41:49 GMT  
		Size: 937.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45fd3d4f340d0a6f92ee9b90de81cd54a008b47c9653698910e9b7ebfde3e35b`  
		Last Modified: Fri, 06 Jul 2018 14:41:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0d638a74a02cc0209354365a6964ea39fcffbe95f273b5487c0231ca56914d`  
		Last Modified: Fri, 06 Jul 2018 14:41:49 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.0.7`

```console
$ docker pull crate@sha256:f7b871fb73fe73cf992ca8c8072db27a032f48574c5da49714bf854e43efa8af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.0.7` - linux; amd64

```console
$ docker pull crate@sha256:13ea7649f70d598de42ddf1bca76e24c4f7e9fc905f0963e4e74bf0621e59c03
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.7 MB (126654059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd944726ac0bd7b31a3a4da1f686f575159584fa33ebaf04481960f18fb1fd04`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 06 Jul 2018 14:16:09 GMT
ADD file:fbb7c24296423cb0b8bcd0412f1b2e0b4ecc467884db753ac60df80972928ebe in / 
# Fri, 06 Jul 2018 14:16:09 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 14:36:47 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Fri, 06 Jul 2018 14:36:47 GMT
ENV GOSU_VERSION=1.9
# Fri, 06 Jul 2018 14:36:55 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Fri, 06 Jul 2018 14:36:57 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Fri, 06 Jul 2018 14:37:51 GMT
ENV CRATE_VERSION=2.0.7
# Fri, 06 Jul 2018 14:38:09 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/crate-sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Fri, 06 Jul 2018 14:38:09 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Jul 2018 14:38:10 GMT
VOLUME [/data]
# Fri, 06 Jul 2018 14:38:11 GMT
ADD file:f6ed1d4a953eca6984e33a751c11c6838562c006ffa19ab36d121906728e94db in /crate/config/crate.yml 
# Fri, 06 Jul 2018 14:38:12 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Fri, 06 Jul 2018 14:38:12 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Fri, 06 Jul 2018 14:38:13 GMT
WORKDIR /data
# Fri, 06 Jul 2018 14:38:13 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp 5433/tcp 5434/tcp 5435/tcp 5436/tcp 5437/tcp 5438/tcp 5439/tcp 5440/tcp 5441/tcp 5442/tcp 5443/tcp 5444/tcp 5445/tcp 5446/tcp 5447/tcp 5448/tcp 5449/tcp 5450/tcp 5451/tcp 5452/tcp 5453/tcp 5454/tcp 5455/tcp 5456/tcp 5457/tcp 5458/tcp 5459/tcp 5460/tcp 5461/tcp 5462/tcp 5463/tcp 5464/tcp 5465/tcp 5466/tcp 5467/tcp 5468/tcp 5469/tcp 5470/tcp 5471/tcp 5472/tcp 5473/tcp 5474/tcp 5475/tcp 5476/tcp 5477/tcp 5478/tcp 5479/tcp 5480/tcp 5481/tcp 5482/tcp 5483/tcp 5484/tcp 5485/tcp 5486/tcp 5487/tcp 5488/tcp 5489/tcp 5490/tcp 5491/tcp 5492/tcp 5493/tcp 5494/tcp 5495/tcp 5496/tcp 5497/tcp 5498/tcp 5499/tcp 5500/tcp 5501/tcp 5502/tcp 5503/tcp 5504/tcp 5505/tcp 5506/tcp 5507/tcp 5508/tcp 5509/tcp 5510/tcp 5511/tcp 5512/tcp 5513/tcp 5514/tcp 5515/tcp 5516/tcp 5517/tcp 5518/tcp 5519/tcp 5520/tcp 5521/tcp 5522/tcp 5523/tcp 5524/tcp 5525/tcp 5526/tcp 5527/tcp 5528/tcp 5529/tcp 5530/tcp 5531/tcp 5532/tcp
# Fri, 06 Jul 2018 14:38:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 06 Jul 2018 14:38:14 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:f4900964ff56fb11dbdfba69c027cf8b27b62f87de0c8a94fb7da8a3a5e1af0a`  
		Last Modified: Fri, 06 Jul 2018 14:18:46 GMT  
		Size: 2.0 MB (1971160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf31a7028557dce51721912150e69d74603cea29db4336e8c88c2d2502e1e04`  
		Last Modified: Fri, 06 Jul 2018 14:41:00 GMT  
		Size: 592.4 KB (592354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f46e37ca8d3f2659b099aac8ae0c8a47a10d2d1e091bbe7f75a45f53b3de95`  
		Last Modified: Fri, 06 Jul 2018 14:41:00 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35007cda3bad62197261209065a123405c1d656242cf60f8eef2d4a083b4b6ac`  
		Last Modified: Fri, 06 Jul 2018 14:42:12 GMT  
		Size: 124.1 MB (124087849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df90ab76ec81d5d9dd19da0f96ff96926b839831a2bd4ec333e9391ef73b9462`  
		Last Modified: Fri, 06 Jul 2018 14:41:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d52f3fc33b5e4abd48458b590d7f1d6cc8d1e99b21d6efc4f529a4990a2fe7c7`  
		Last Modified: Fri, 06 Jul 2018 14:41:49 GMT  
		Size: 937.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45fd3d4f340d0a6f92ee9b90de81cd54a008b47c9653698910e9b7ebfde3e35b`  
		Last Modified: Fri, 06 Jul 2018 14:41:49 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0d638a74a02cc0209354365a6964ea39fcffbe95f273b5487c0231ca56914d`  
		Last Modified: Fri, 06 Jul 2018 14:41:49 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.1`

```console
$ docker pull crate@sha256:49e303bd5a99e21d0e586f5d105bcc9523a2f5d40f31673da64dd79d028cd389
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.1` - linux; amd64

```console
$ docker pull crate@sha256:c7860f40e7b62a2c5cd7af155d22c424df6dd36dc2342ba029e97828b0360ca8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.3 MB (129256430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:536fe5f93a09b703b25b7aded1b5f91b65cca45441414d95a05d2b51f32b30c2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 06 Jul 2018 14:16:09 GMT
ADD file:fbb7c24296423cb0b8bcd0412f1b2e0b4ecc467884db753ac60df80972928ebe in / 
# Fri, 06 Jul 2018 14:16:09 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 14:36:47 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Fri, 06 Jul 2018 14:36:47 GMT
ENV GOSU_VERSION=1.9
# Fri, 06 Jul 2018 14:36:55 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Fri, 06 Jul 2018 14:36:57 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Fri, 06 Jul 2018 14:36:57 GMT
ENV CRATE_VERSION=2.1.10
# Fri, 06 Jul 2018 14:37:28 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/lib/sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Fri, 06 Jul 2018 14:37:28 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Jul 2018 14:37:29 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 06 Jul 2018 14:37:29 GMT
VOLUME [/data]
# Fri, 06 Jul 2018 14:37:31 GMT
ADD file:c0b3bba944a2572094279072da088c4f681b13f9bed768ebd567555831729fab in /crate/config/crate.yml 
# Fri, 06 Jul 2018 14:37:32 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Fri, 06 Jul 2018 14:37:32 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Fri, 06 Jul 2018 14:37:33 GMT
WORKDIR /data
# Fri, 06 Jul 2018 14:37:33 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Fri, 06 Jul 2018 14:37:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 06 Jul 2018 14:37:34 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:f4900964ff56fb11dbdfba69c027cf8b27b62f87de0c8a94fb7da8a3a5e1af0a`  
		Last Modified: Fri, 06 Jul 2018 14:18:46 GMT  
		Size: 2.0 MB (1971160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf31a7028557dce51721912150e69d74603cea29db4336e8c88c2d2502e1e04`  
		Last Modified: Fri, 06 Jul 2018 14:41:00 GMT  
		Size: 592.4 KB (592354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f46e37ca8d3f2659b099aac8ae0c8a47a10d2d1e091bbe7f75a45f53b3de95`  
		Last Modified: Fri, 06 Jul 2018 14:41:00 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2164563fab45f1530b1e47a26c89c31e234ad3df2c73aa1401d75d2f81dc695`  
		Last Modified: Fri, 06 Jul 2018 14:41:20 GMT  
		Size: 126.7 MB (126690205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0272668b9b652ed7cb2e9ddebf3215e240165b3edfe653ec5db9acf83f7b1e2`  
		Last Modified: Fri, 06 Jul 2018 14:40:57 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4bf5fa1bbad12468c3227484ffec5673c57f32d8c8bf091891ea0278a29ceec`  
		Last Modified: Fri, 06 Jul 2018 14:40:57 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e84e449cac3bda6b3bf3bad659180445f351925ea7d0ec899cb79bc7630b80d`  
		Last Modified: Fri, 06 Jul 2018 14:40:57 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b0677882da6360712d64b65ab183e44e6b55b26e935a3f9b58fecd7f472166`  
		Last Modified: Fri, 06 Jul 2018 14:40:57 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.1.10`

```console
$ docker pull crate@sha256:49e303bd5a99e21d0e586f5d105bcc9523a2f5d40f31673da64dd79d028cd389
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.1.10` - linux; amd64

```console
$ docker pull crate@sha256:c7860f40e7b62a2c5cd7af155d22c424df6dd36dc2342ba029e97828b0360ca8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.3 MB (129256430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:536fe5f93a09b703b25b7aded1b5f91b65cca45441414d95a05d2b51f32b30c2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 06 Jul 2018 14:16:09 GMT
ADD file:fbb7c24296423cb0b8bcd0412f1b2e0b4ecc467884db753ac60df80972928ebe in / 
# Fri, 06 Jul 2018 14:16:09 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 14:36:47 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Fri, 06 Jul 2018 14:36:47 GMT
ENV GOSU_VERSION=1.9
# Fri, 06 Jul 2018 14:36:55 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Fri, 06 Jul 2018 14:36:57 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Fri, 06 Jul 2018 14:36:57 GMT
ENV CRATE_VERSION=2.1.10
# Fri, 06 Jul 2018 14:37:28 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/lib/sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Fri, 06 Jul 2018 14:37:28 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Jul 2018 14:37:29 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 06 Jul 2018 14:37:29 GMT
VOLUME [/data]
# Fri, 06 Jul 2018 14:37:31 GMT
ADD file:c0b3bba944a2572094279072da088c4f681b13f9bed768ebd567555831729fab in /crate/config/crate.yml 
# Fri, 06 Jul 2018 14:37:32 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Fri, 06 Jul 2018 14:37:32 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Fri, 06 Jul 2018 14:37:33 GMT
WORKDIR /data
# Fri, 06 Jul 2018 14:37:33 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Fri, 06 Jul 2018 14:37:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 06 Jul 2018 14:37:34 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:f4900964ff56fb11dbdfba69c027cf8b27b62f87de0c8a94fb7da8a3a5e1af0a`  
		Last Modified: Fri, 06 Jul 2018 14:18:46 GMT  
		Size: 2.0 MB (1971160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fdf31a7028557dce51721912150e69d74603cea29db4336e8c88c2d2502e1e04`  
		Last Modified: Fri, 06 Jul 2018 14:41:00 GMT  
		Size: 592.4 KB (592354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74f46e37ca8d3f2659b099aac8ae0c8a47a10d2d1e091bbe7f75a45f53b3de95`  
		Last Modified: Fri, 06 Jul 2018 14:41:00 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2164563fab45f1530b1e47a26c89c31e234ad3df2c73aa1401d75d2f81dc695`  
		Last Modified: Fri, 06 Jul 2018 14:41:20 GMT  
		Size: 126.7 MB (126690205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0272668b9b652ed7cb2e9ddebf3215e240165b3edfe653ec5db9acf83f7b1e2`  
		Last Modified: Fri, 06 Jul 2018 14:40:57 GMT  
		Size: 248.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4bf5fa1bbad12468c3227484ffec5673c57f32d8c8bf091891ea0278a29ceec`  
		Last Modified: Fri, 06 Jul 2018 14:40:57 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e84e449cac3bda6b3bf3bad659180445f351925ea7d0ec899cb79bc7630b80d`  
		Last Modified: Fri, 06 Jul 2018 14:40:57 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b0677882da6360712d64b65ab183e44e6b55b26e935a3f9b58fecd7f472166`  
		Last Modified: Fri, 06 Jul 2018 14:40:57 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.2`

```console
$ docker pull crate@sha256:8eb7e6dc78ddf0dfe5adbad8deb4109fc7b27d088a69c660f8409309030192ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.2` - linux; amd64

```console
$ docker pull crate@sha256:aa348805dbe4a467fc93fafe85bbbfedfd038d2bd4d31225e5815dcdb2550cf9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.1 MB (130148367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2a84766a76a35cd92378d17e4da76ff969dbfd791dfc34e989e2d3350dba408`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 14:34:33 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Fri, 06 Jul 2018 14:34:34 GMT
ENV GOSU_VERSION=1.9
# Fri, 06 Jul 2018 14:34:41 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Fri, 06 Jul 2018 14:34:43 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Fri, 06 Jul 2018 14:36:07 GMT
ENV CRATE_VERSION=2.2.7
# Fri, 06 Jul 2018 14:36:32 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/lib/sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Fri, 06 Jul 2018 14:36:32 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Jul 2018 14:36:33 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 06 Jul 2018 14:36:33 GMT
VOLUME [/data]
# Fri, 06 Jul 2018 14:36:34 GMT
ADD file:5ffe7502a8e59c1690f1c10bd4f7c3843fa35e03c99223a05215c7b021cec1a1 in /crate/config/crate.yml 
# Fri, 06 Jul 2018 14:36:35 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Fri, 06 Jul 2018 14:36:35 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Fri, 06 Jul 2018 14:36:36 GMT
WORKDIR /data
# Fri, 06 Jul 2018 14:36:36 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Fri, 06 Jul 2018 14:36:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 06 Jul 2018 14:36:37 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4df806bbcff7011d61f9a3d9b5c48e853a21b6fb33492ca65ed20332682a07`  
		Last Modified: Fri, 06 Jul 2018 14:38:36 GMT  
		Size: 1.8 MB (1814904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e298188a06272973610923ec188bf67edba443a3ade72188ab970e0377ef83c0`  
		Last Modified: Fri, 06 Jul 2018 14:38:35 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67b00960a9deb58495927357cfd28127a1cf5bc9ddca9f759b0e82d2ec7aa30f`  
		Last Modified: Fri, 06 Jul 2018 14:40:29 GMT  
		Size: 126.2 MB (126227194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3927e3ae75788a587f62731d68100b180a986e15633e110beeb22770800849a`  
		Last Modified: Fri, 06 Jul 2018 14:40:07 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7914331b35952ad820f65792f157ad8e2c38490809a25bcb8c78555f40d11df6`  
		Last Modified: Fri, 06 Jul 2018 14:40:07 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3910111fba0b0f5848699959a561cb3dfc9c9685306406332f92c4ddf692939`  
		Last Modified: Fri, 06 Jul 2018 14:40:07 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bd4cda453f01da5cdfd703816eae225b4c4da30ae56ab328f0a910235ae1a42`  
		Last Modified: Fri, 06 Jul 2018 14:40:07 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.2.7`

```console
$ docker pull crate@sha256:8eb7e6dc78ddf0dfe5adbad8deb4109fc7b27d088a69c660f8409309030192ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.2.7` - linux; amd64

```console
$ docker pull crate@sha256:aa348805dbe4a467fc93fafe85bbbfedfd038d2bd4d31225e5815dcdb2550cf9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.1 MB (130148367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2a84766a76a35cd92378d17e4da76ff969dbfd791dfc34e989e2d3350dba408`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 14:34:33 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Fri, 06 Jul 2018 14:34:34 GMT
ENV GOSU_VERSION=1.9
# Fri, 06 Jul 2018 14:34:41 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Fri, 06 Jul 2018 14:34:43 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Fri, 06 Jul 2018 14:36:07 GMT
ENV CRATE_VERSION=2.2.7
# Fri, 06 Jul 2018 14:36:32 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/lib/sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Fri, 06 Jul 2018 14:36:32 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Jul 2018 14:36:33 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 06 Jul 2018 14:36:33 GMT
VOLUME [/data]
# Fri, 06 Jul 2018 14:36:34 GMT
ADD file:5ffe7502a8e59c1690f1c10bd4f7c3843fa35e03c99223a05215c7b021cec1a1 in /crate/config/crate.yml 
# Fri, 06 Jul 2018 14:36:35 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Fri, 06 Jul 2018 14:36:35 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Fri, 06 Jul 2018 14:36:36 GMT
WORKDIR /data
# Fri, 06 Jul 2018 14:36:36 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Fri, 06 Jul 2018 14:36:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 06 Jul 2018 14:36:37 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4df806bbcff7011d61f9a3d9b5c48e853a21b6fb33492ca65ed20332682a07`  
		Last Modified: Fri, 06 Jul 2018 14:38:36 GMT  
		Size: 1.8 MB (1814904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e298188a06272973610923ec188bf67edba443a3ade72188ab970e0377ef83c0`  
		Last Modified: Fri, 06 Jul 2018 14:38:35 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67b00960a9deb58495927357cfd28127a1cf5bc9ddca9f759b0e82d2ec7aa30f`  
		Last Modified: Fri, 06 Jul 2018 14:40:29 GMT  
		Size: 126.2 MB (126227194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3927e3ae75788a587f62731d68100b180a986e15633e110beeb22770800849a`  
		Last Modified: Fri, 06 Jul 2018 14:40:07 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7914331b35952ad820f65792f157ad8e2c38490809a25bcb8c78555f40d11df6`  
		Last Modified: Fri, 06 Jul 2018 14:40:07 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3910111fba0b0f5848699959a561cb3dfc9c9685306406332f92c4ddf692939`  
		Last Modified: Fri, 06 Jul 2018 14:40:07 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4bd4cda453f01da5cdfd703816eae225b4c4da30ae56ab328f0a910235ae1a42`  
		Last Modified: Fri, 06 Jul 2018 14:40:07 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.3`

```console
$ docker pull crate@sha256:1c4464dcd37fd4136ce0098f994cc92fd03360f7178906155aa109ae1ad11a19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.3` - linux; amd64

```console
$ docker pull crate@sha256:c20f8abd0b9f67c70622aed824787d1a39b3e7f7667efb9f258c3140d78b6378
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.0 MB (131006296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a31005336b6248372f969d0a72e8965b933d48d7c5dd21eae2f8f8e1f73840a0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 14:34:33 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Fri, 06 Jul 2018 14:34:34 GMT
ENV GOSU_VERSION=1.9
# Fri, 06 Jul 2018 14:34:41 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Fri, 06 Jul 2018 14:34:43 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Fri, 06 Jul 2018 14:35:28 GMT
ENV CRATE_VERSION=2.3.11
# Fri, 06 Jul 2018 14:35:51 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Fri, 06 Jul 2018 14:35:52 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Jul 2018 14:35:52 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 06 Jul 2018 14:35:53 GMT
HEALTHCHECK &{["CMD-SHELL" "curl $(hostname):4200"] "0s" "0s" "0s" '\x00'}
# Fri, 06 Jul 2018 14:35:53 GMT
VOLUME [/data]
# Fri, 06 Jul 2018 14:35:54 GMT
ADD file:5ffe7502a8e59c1690f1c10bd4f7c3843fa35e03c99223a05215c7b021cec1a1 in /crate/config/crate.yml 
# Fri, 06 Jul 2018 14:35:55 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Fri, 06 Jul 2018 14:35:56 GMT
COPY file:2e96d63ad898925a7e7d49d4440efe616689a56ac5b315dc06aa1bf54f1c2e08 in / 
# Fri, 06 Jul 2018 14:35:56 GMT
WORKDIR /data
# Fri, 06 Jul 2018 14:35:57 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Fri, 06 Jul 2018 14:35:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 06 Jul 2018 14:35:58 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4df806bbcff7011d61f9a3d9b5c48e853a21b6fb33492ca65ed20332682a07`  
		Last Modified: Fri, 06 Jul 2018 14:38:36 GMT  
		Size: 1.8 MB (1814904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e298188a06272973610923ec188bf67edba443a3ade72188ab970e0377ef83c0`  
		Last Modified: Fri, 06 Jul 2018 14:38:35 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bb93489b4c98c8ed46b6918d0caccd8027dc3ae4de93d0056ecaf8f43300bd4`  
		Last Modified: Fri, 06 Jul 2018 14:39:40 GMT  
		Size: 127.1 MB (127084994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c1001793a3521873af9b5803d552d104c50469d579fa7b9207616feafcbd64`  
		Last Modified: Fri, 06 Jul 2018 14:39:27 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1834fc1922c52be82f941692633a60a41a8920318dcfbf63978cce15bc1b13af`  
		Last Modified: Fri, 06 Jul 2018 14:39:26 GMT  
		Size: 934.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b6e8ecbc4a82c11f55601cc08f0f3d60b1e68f68a7a72391ba37828b2be7156`  
		Last Modified: Fri, 06 Jul 2018 14:39:26 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca5a80cc481a5d8ea36354314acaeea9b5d090794e30cbacb9ed28308d1f5a0`  
		Last Modified: Fri, 06 Jul 2018 14:39:26 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.3.11`

```console
$ docker pull crate@sha256:1c4464dcd37fd4136ce0098f994cc92fd03360f7178906155aa109ae1ad11a19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.3.11` - linux; amd64

```console
$ docker pull crate@sha256:c20f8abd0b9f67c70622aed824787d1a39b3e7f7667efb9f258c3140d78b6378
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.0 MB (131006296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a31005336b6248372f969d0a72e8965b933d48d7c5dd21eae2f8f8e1f73840a0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 14:34:33 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Fri, 06 Jul 2018 14:34:34 GMT
ENV GOSU_VERSION=1.9
# Fri, 06 Jul 2018 14:34:41 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Fri, 06 Jul 2018 14:34:43 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Fri, 06 Jul 2018 14:35:28 GMT
ENV CRATE_VERSION=2.3.11
# Fri, 06 Jul 2018 14:35:51 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Fri, 06 Jul 2018 14:35:52 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Jul 2018 14:35:52 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 06 Jul 2018 14:35:53 GMT
HEALTHCHECK &{["CMD-SHELL" "curl $(hostname):4200"] "0s" "0s" "0s" '\x00'}
# Fri, 06 Jul 2018 14:35:53 GMT
VOLUME [/data]
# Fri, 06 Jul 2018 14:35:54 GMT
ADD file:5ffe7502a8e59c1690f1c10bd4f7c3843fa35e03c99223a05215c7b021cec1a1 in /crate/config/crate.yml 
# Fri, 06 Jul 2018 14:35:55 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Fri, 06 Jul 2018 14:35:56 GMT
COPY file:2e96d63ad898925a7e7d49d4440efe616689a56ac5b315dc06aa1bf54f1c2e08 in / 
# Fri, 06 Jul 2018 14:35:56 GMT
WORKDIR /data
# Fri, 06 Jul 2018 14:35:57 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Fri, 06 Jul 2018 14:35:57 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 06 Jul 2018 14:35:58 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4df806bbcff7011d61f9a3d9b5c48e853a21b6fb33492ca65ed20332682a07`  
		Last Modified: Fri, 06 Jul 2018 14:38:36 GMT  
		Size: 1.8 MB (1814904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e298188a06272973610923ec188bf67edba443a3ade72188ab970e0377ef83c0`  
		Last Modified: Fri, 06 Jul 2018 14:38:35 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bb93489b4c98c8ed46b6918d0caccd8027dc3ae4de93d0056ecaf8f43300bd4`  
		Last Modified: Fri, 06 Jul 2018 14:39:40 GMT  
		Size: 127.1 MB (127084994 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63c1001793a3521873af9b5803d552d104c50469d579fa7b9207616feafcbd64`  
		Last Modified: Fri, 06 Jul 2018 14:39:27 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1834fc1922c52be82f941692633a60a41a8920318dcfbf63978cce15bc1b13af`  
		Last Modified: Fri, 06 Jul 2018 14:39:26 GMT  
		Size: 934.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b6e8ecbc4a82c11f55601cc08f0f3d60b1e68f68a7a72391ba37828b2be7156`  
		Last Modified: Fri, 06 Jul 2018 14:39:26 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca5a80cc481a5d8ea36354314acaeea9b5d090794e30cbacb9ed28308d1f5a0`  
		Last Modified: Fri, 06 Jul 2018 14:39:26 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:3.0`

```console
$ docker pull crate@sha256:31b7767e5272bf541f7d15408b4806b4da6f603acafe0e301df249ba34d2b653
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:3.0` - linux; amd64

```console
$ docker pull crate@sha256:3948c91208810682702a849f55f6063a559b07d98f5f414f32595fdc18ad3289
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131661500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ee2b66b433968b778e4075e4a34fc1fea3f879c8b6b4830e6cada9b17a6126c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 14:34:33 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Fri, 06 Jul 2018 14:34:34 GMT
ENV GOSU_VERSION=1.9
# Fri, 06 Jul 2018 14:34:41 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Fri, 06 Jul 2018 14:34:43 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Thu, 02 Aug 2018 18:21:12 GMT
ENV CRATE_VERSION=3.0.5
# Thu, 02 Aug 2018 18:22:08 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Thu, 02 Aug 2018 18:22:16 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Aug 2018 18:22:17 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 02 Aug 2018 18:22:17 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --fail --max-time 25 $(hostname):4200"] "30s" "30s" "0s" '\x00'}
# Thu, 02 Aug 2018 18:22:18 GMT
RUN mkdir -p /data/data /data/log
# Thu, 02 Aug 2018 18:22:18 GMT
VOLUME [/data]
# Thu, 02 Aug 2018 18:22:19 GMT
ADD file:5ffe7502a8e59c1690f1c10bd4f7c3843fa35e03c99223a05215c7b021cec1a1 in /crate/config/crate.yml 
# Thu, 02 Aug 2018 18:22:20 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Thu, 02 Aug 2018 18:22:21 GMT
COPY file:c6f6e45bb8f3e89d4a775eb38302ed557fb3c1d1db73b36eb9c21e4f3771a555 in /docker-entrypoint.sh 
# Thu, 02 Aug 2018 18:22:21 GMT
WORKDIR /data
# Thu, 02 Aug 2018 18:22:22 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Thu, 02 Aug 2018 18:22:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Aug 2018 18:22:22 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4df806bbcff7011d61f9a3d9b5c48e853a21b6fb33492ca65ed20332682a07`  
		Last Modified: Fri, 06 Jul 2018 14:38:36 GMT  
		Size: 1.8 MB (1814904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e298188a06272973610923ec188bf67edba443a3ade72188ab970e0377ef83c0`  
		Last Modified: Fri, 06 Jul 2018 14:38:35 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd7849b4b3937271a18f7bc5f8fc5f3ba2eede3870d29519bab1ba62e7ad04f`  
		Last Modified: Thu, 02 Aug 2018 18:23:14 GMT  
		Size: 127.7 MB (127739992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dc0f6a4ad538e3af2cfefdc50e982b2b4325439b8576e854d7a5c7ecc48268a`  
		Last Modified: Thu, 02 Aug 2018 18:22:51 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a66ec95c19435bc63d65b5ea23128f26bbf217ecde65ab005b66563706bacd8`  
		Last Modified: Thu, 02 Aug 2018 18:22:52 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2221e107a529ea8dbaf779cd2ed2a7e8ea5cf16a0393b319c0bb4c92917695`  
		Last Modified: Thu, 02 Aug 2018 18:22:52 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f9e14ad7862ed19df672ae7b03ece05cb98cfd7ed1d6eea01bc9536c1cc0a2`  
		Last Modified: Thu, 02 Aug 2018 18:22:51 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:3.0.5`

```console
$ docker pull crate@sha256:31b7767e5272bf541f7d15408b4806b4da6f603acafe0e301df249ba34d2b653
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:3.0.5` - linux; amd64

```console
$ docker pull crate@sha256:3948c91208810682702a849f55f6063a559b07d98f5f414f32595fdc18ad3289
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131661500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ee2b66b433968b778e4075e4a34fc1fea3f879c8b6b4830e6cada9b17a6126c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 14:34:33 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Fri, 06 Jul 2018 14:34:34 GMT
ENV GOSU_VERSION=1.9
# Fri, 06 Jul 2018 14:34:41 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Fri, 06 Jul 2018 14:34:43 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Thu, 02 Aug 2018 18:21:12 GMT
ENV CRATE_VERSION=3.0.5
# Thu, 02 Aug 2018 18:22:08 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Thu, 02 Aug 2018 18:22:16 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Aug 2018 18:22:17 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 02 Aug 2018 18:22:17 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --fail --max-time 25 $(hostname):4200"] "30s" "30s" "0s" '\x00'}
# Thu, 02 Aug 2018 18:22:18 GMT
RUN mkdir -p /data/data /data/log
# Thu, 02 Aug 2018 18:22:18 GMT
VOLUME [/data]
# Thu, 02 Aug 2018 18:22:19 GMT
ADD file:5ffe7502a8e59c1690f1c10bd4f7c3843fa35e03c99223a05215c7b021cec1a1 in /crate/config/crate.yml 
# Thu, 02 Aug 2018 18:22:20 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Thu, 02 Aug 2018 18:22:21 GMT
COPY file:c6f6e45bb8f3e89d4a775eb38302ed557fb3c1d1db73b36eb9c21e4f3771a555 in /docker-entrypoint.sh 
# Thu, 02 Aug 2018 18:22:21 GMT
WORKDIR /data
# Thu, 02 Aug 2018 18:22:22 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Thu, 02 Aug 2018 18:22:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Aug 2018 18:22:22 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4df806bbcff7011d61f9a3d9b5c48e853a21b6fb33492ca65ed20332682a07`  
		Last Modified: Fri, 06 Jul 2018 14:38:36 GMT  
		Size: 1.8 MB (1814904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e298188a06272973610923ec188bf67edba443a3ade72188ab970e0377ef83c0`  
		Last Modified: Fri, 06 Jul 2018 14:38:35 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd7849b4b3937271a18f7bc5f8fc5f3ba2eede3870d29519bab1ba62e7ad04f`  
		Last Modified: Thu, 02 Aug 2018 18:23:14 GMT  
		Size: 127.7 MB (127739992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dc0f6a4ad538e3af2cfefdc50e982b2b4325439b8576e854d7a5c7ecc48268a`  
		Last Modified: Thu, 02 Aug 2018 18:22:51 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a66ec95c19435bc63d65b5ea23128f26bbf217ecde65ab005b66563706bacd8`  
		Last Modified: Thu, 02 Aug 2018 18:22:52 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2221e107a529ea8dbaf779cd2ed2a7e8ea5cf16a0393b319c0bb4c92917695`  
		Last Modified: Thu, 02 Aug 2018 18:22:52 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f9e14ad7862ed19df672ae7b03ece05cb98cfd7ed1d6eea01bc9536c1cc0a2`  
		Last Modified: Thu, 02 Aug 2018 18:22:51 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:latest`

```console
$ docker pull crate@sha256:31b7767e5272bf541f7d15408b4806b4da6f603acafe0e301df249ba34d2b653
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:latest` - linux; amd64

```console
$ docker pull crate@sha256:3948c91208810682702a849f55f6063a559b07d98f5f414f32595fdc18ad3289
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.7 MB (131661500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ee2b66b433968b778e4075e4a34fc1fea3f879c8b6b4830e6cada9b17a6126c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 14:34:33 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Fri, 06 Jul 2018 14:34:34 GMT
ENV GOSU_VERSION=1.9
# Fri, 06 Jul 2018 14:34:41 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Fri, 06 Jul 2018 14:34:43 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Thu, 02 Aug 2018 18:21:12 GMT
ENV CRATE_VERSION=3.0.5
# Thu, 02 Aug 2018 18:22:08 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Thu, 02 Aug 2018 18:22:16 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Aug 2018 18:22:17 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 02 Aug 2018 18:22:17 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --fail --max-time 25 $(hostname):4200"] "30s" "30s" "0s" '\x00'}
# Thu, 02 Aug 2018 18:22:18 GMT
RUN mkdir -p /data/data /data/log
# Thu, 02 Aug 2018 18:22:18 GMT
VOLUME [/data]
# Thu, 02 Aug 2018 18:22:19 GMT
ADD file:5ffe7502a8e59c1690f1c10bd4f7c3843fa35e03c99223a05215c7b021cec1a1 in /crate/config/crate.yml 
# Thu, 02 Aug 2018 18:22:20 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Thu, 02 Aug 2018 18:22:21 GMT
COPY file:c6f6e45bb8f3e89d4a775eb38302ed557fb3c1d1db73b36eb9c21e4f3771a555 in /docker-entrypoint.sh 
# Thu, 02 Aug 2018 18:22:21 GMT
WORKDIR /data
# Thu, 02 Aug 2018 18:22:22 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Thu, 02 Aug 2018 18:22:22 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 02 Aug 2018 18:22:22 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4df806bbcff7011d61f9a3d9b5c48e853a21b6fb33492ca65ed20332682a07`  
		Last Modified: Fri, 06 Jul 2018 14:38:36 GMT  
		Size: 1.8 MB (1814904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e298188a06272973610923ec188bf67edba443a3ade72188ab970e0377ef83c0`  
		Last Modified: Fri, 06 Jul 2018 14:38:35 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccd7849b4b3937271a18f7bc5f8fc5f3ba2eede3870d29519bab1ba62e7ad04f`  
		Last Modified: Thu, 02 Aug 2018 18:23:14 GMT  
		Size: 127.7 MB (127739992 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6dc0f6a4ad538e3af2cfefdc50e982b2b4325439b8576e854d7a5c7ecc48268a`  
		Last Modified: Thu, 02 Aug 2018 18:22:51 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a66ec95c19435bc63d65b5ea23128f26bbf217ecde65ab005b66563706bacd8`  
		Last Modified: Thu, 02 Aug 2018 18:22:52 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2221e107a529ea8dbaf779cd2ed2a7e8ea5cf16a0393b319c0bb4c92917695`  
		Last Modified: Thu, 02 Aug 2018 18:22:52 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f9e14ad7862ed19df672ae7b03ece05cb98cfd7ed1d6eea01bc9536c1cc0a2`  
		Last Modified: Thu, 02 Aug 2018 18:22:51 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
