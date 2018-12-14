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
$ docker pull crate@sha256:0e5d1e30242728a57e2acc22d8ea03c518b344ede35e10e9ebd1507061f3bba3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.0` - linux; amd64

```console
$ docker pull crate@sha256:15d3f45f8fb9896bcf5157b17c06cab33203694f14c4854ad6f446dff1981ca6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.9 MB (126891202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3343d81c8835b25ec862b0128b2862ca7aad171326871a4e7862bbdb5802da27`
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
# Tue, 11 Sep 2018 22:49:39 GMT
ADD file:f6ed1d4a953eca6984e33a751c11c6838562c006ffa19ab36d121906728e94db in /crate/config/crate.yml 
# Tue, 11 Sep 2018 22:49:39 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Tue, 11 Sep 2018 22:49:39 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Tue, 11 Sep 2018 22:49:40 GMT
WORKDIR /data
# Tue, 11 Sep 2018 22:49:40 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp 5433/tcp 5434/tcp 5435/tcp 5436/tcp 5437/tcp 5438/tcp 5439/tcp 5440/tcp 5441/tcp 5442/tcp 5443/tcp 5444/tcp 5445/tcp 5446/tcp 5447/tcp 5448/tcp 5449/tcp 5450/tcp 5451/tcp 5452/tcp 5453/tcp 5454/tcp 5455/tcp 5456/tcp 5457/tcp 5458/tcp 5459/tcp 5460/tcp 5461/tcp 5462/tcp 5463/tcp 5464/tcp 5465/tcp 5466/tcp 5467/tcp 5468/tcp 5469/tcp 5470/tcp 5471/tcp 5472/tcp 5473/tcp 5474/tcp 5475/tcp 5476/tcp 5477/tcp 5478/tcp 5479/tcp 5480/tcp 5481/tcp 5482/tcp 5483/tcp 5484/tcp 5485/tcp 5486/tcp 5487/tcp 5488/tcp 5489/tcp 5490/tcp 5491/tcp 5492/tcp 5493/tcp 5494/tcp 5495/tcp 5496/tcp 5497/tcp 5498/tcp 5499/tcp 5500/tcp 5501/tcp 5502/tcp 5503/tcp 5504/tcp 5505/tcp 5506/tcp 5507/tcp 5508/tcp 5509/tcp 5510/tcp 5511/tcp 5512/tcp 5513/tcp 5514/tcp 5515/tcp 5516/tcp 5517/tcp 5518/tcp 5519/tcp 5520/tcp 5521/tcp 5522/tcp 5523/tcp 5524/tcp 5525/tcp 5526/tcp 5527/tcp 5528/tcp 5529/tcp 5530/tcp 5531/tcp 5532/tcp
# Tue, 11 Sep 2018 22:49:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Sep 2018 22:49:40 GMT
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
	-	`sha256:5c2bda20035a0981f087927fc29702377efc553cace902e95db9ae822b189348`  
		Last Modified: Tue, 11 Sep 2018 22:52:10 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0665021dd0b365501d2b71c6e58eba3074df905cb36a4b5aff21096afdbc6af0`  
		Last Modified: Tue, 11 Sep 2018 22:52:10 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e981ea66e871ad4a4e4e66f29557f1081e960081cb0ac6383a99b87da49ca0`  
		Last Modified: Tue, 11 Sep 2018 22:52:10 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c34eafadf331008fbc185dadc088528c87a019952af7ec18bd97161ca7ff560`  
		Last Modified: Tue, 11 Sep 2018 22:52:11 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.0.7`

```console
$ docker pull crate@sha256:0e5d1e30242728a57e2acc22d8ea03c518b344ede35e10e9ebd1507061f3bba3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.0.7` - linux; amd64

```console
$ docker pull crate@sha256:15d3f45f8fb9896bcf5157b17c06cab33203694f14c4854ad6f446dff1981ca6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.9 MB (126891202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3343d81c8835b25ec862b0128b2862ca7aad171326871a4e7862bbdb5802da27`
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
# Tue, 11 Sep 2018 22:49:39 GMT
ADD file:f6ed1d4a953eca6984e33a751c11c6838562c006ffa19ab36d121906728e94db in /crate/config/crate.yml 
# Tue, 11 Sep 2018 22:49:39 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Tue, 11 Sep 2018 22:49:39 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Tue, 11 Sep 2018 22:49:40 GMT
WORKDIR /data
# Tue, 11 Sep 2018 22:49:40 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp 5433/tcp 5434/tcp 5435/tcp 5436/tcp 5437/tcp 5438/tcp 5439/tcp 5440/tcp 5441/tcp 5442/tcp 5443/tcp 5444/tcp 5445/tcp 5446/tcp 5447/tcp 5448/tcp 5449/tcp 5450/tcp 5451/tcp 5452/tcp 5453/tcp 5454/tcp 5455/tcp 5456/tcp 5457/tcp 5458/tcp 5459/tcp 5460/tcp 5461/tcp 5462/tcp 5463/tcp 5464/tcp 5465/tcp 5466/tcp 5467/tcp 5468/tcp 5469/tcp 5470/tcp 5471/tcp 5472/tcp 5473/tcp 5474/tcp 5475/tcp 5476/tcp 5477/tcp 5478/tcp 5479/tcp 5480/tcp 5481/tcp 5482/tcp 5483/tcp 5484/tcp 5485/tcp 5486/tcp 5487/tcp 5488/tcp 5489/tcp 5490/tcp 5491/tcp 5492/tcp 5493/tcp 5494/tcp 5495/tcp 5496/tcp 5497/tcp 5498/tcp 5499/tcp 5500/tcp 5501/tcp 5502/tcp 5503/tcp 5504/tcp 5505/tcp 5506/tcp 5507/tcp 5508/tcp 5509/tcp 5510/tcp 5511/tcp 5512/tcp 5513/tcp 5514/tcp 5515/tcp 5516/tcp 5517/tcp 5518/tcp 5519/tcp 5520/tcp 5521/tcp 5522/tcp 5523/tcp 5524/tcp 5525/tcp 5526/tcp 5527/tcp 5528/tcp 5529/tcp 5530/tcp 5531/tcp 5532/tcp
# Tue, 11 Sep 2018 22:49:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Sep 2018 22:49:40 GMT
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
	-	`sha256:5c2bda20035a0981f087927fc29702377efc553cace902e95db9ae822b189348`  
		Last Modified: Tue, 11 Sep 2018 22:52:10 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0665021dd0b365501d2b71c6e58eba3074df905cb36a4b5aff21096afdbc6af0`  
		Last Modified: Tue, 11 Sep 2018 22:52:10 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36e981ea66e871ad4a4e4e66f29557f1081e960081cb0ac6383a99b87da49ca0`  
		Last Modified: Tue, 11 Sep 2018 22:52:10 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c34eafadf331008fbc185dadc088528c87a019952af7ec18bd97161ca7ff560`  
		Last Modified: Tue, 11 Sep 2018 22:52:11 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.1`

```console
$ docker pull crate@sha256:0371c821f1dfb4a85d5a292b009470a91dd1238e401fc4c14d7e27fb8d44df89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.1` - linux; amd64

```console
$ docker pull crate@sha256:0d3123c5d5c4660bfd2a80cdd68c87bb102b4a12d251403560bdfa92e466506e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.5 MB (129496434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba897b1a255d8f5caf50e53c54c0fad7fd883d8b0d4cbf571fbdaf2e5c480952`
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
# Tue, 11 Sep 2018 22:49:07 GMT
ADD file:c0b3bba944a2572094279072da088c4f681b13f9bed768ebd567555831729fab in /crate/config/crate.yml 
# Tue, 11 Sep 2018 22:49:07 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Tue, 11 Sep 2018 22:49:07 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Tue, 11 Sep 2018 22:49:08 GMT
WORKDIR /data
# Tue, 11 Sep 2018 22:49:08 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Tue, 11 Sep 2018 22:49:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Sep 2018 22:49:12 GMT
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
	-	`sha256:a4661582f78bb48c219e004f8d07f1eb7002fe7aa37bc99887f161c12fb5ed33`  
		Last Modified: Tue, 11 Sep 2018 22:51:44 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2fa69a169ab215705ff4662c1edb9ced2f45802c0258090c161b5727ee9bbd7`  
		Last Modified: Tue, 11 Sep 2018 22:51:45 GMT  
		Size: 934.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de2b391c82b9c28c3e5f732e1bdb8b39e897d0ed55612da0a2deb33c11214c83`  
		Last Modified: Tue, 11 Sep 2018 22:51:44 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d924003a77c743b33d0ec3f4a1815fc0b388dae77da2604da55969926307ba0`  
		Last Modified: Tue, 11 Sep 2018 22:51:44 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.1.10`

```console
$ docker pull crate@sha256:0371c821f1dfb4a85d5a292b009470a91dd1238e401fc4c14d7e27fb8d44df89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.1.10` - linux; amd64

```console
$ docker pull crate@sha256:0d3123c5d5c4660bfd2a80cdd68c87bb102b4a12d251403560bdfa92e466506e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.5 MB (129496434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba897b1a255d8f5caf50e53c54c0fad7fd883d8b0d4cbf571fbdaf2e5c480952`
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
# Tue, 11 Sep 2018 22:49:07 GMT
ADD file:c0b3bba944a2572094279072da088c4f681b13f9bed768ebd567555831729fab in /crate/config/crate.yml 
# Tue, 11 Sep 2018 22:49:07 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Tue, 11 Sep 2018 22:49:07 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Tue, 11 Sep 2018 22:49:08 GMT
WORKDIR /data
# Tue, 11 Sep 2018 22:49:08 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Tue, 11 Sep 2018 22:49:08 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Sep 2018 22:49:12 GMT
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
	-	`sha256:a4661582f78bb48c219e004f8d07f1eb7002fe7aa37bc99887f161c12fb5ed33`  
		Last Modified: Tue, 11 Sep 2018 22:51:44 GMT  
		Size: 247.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2fa69a169ab215705ff4662c1edb9ced2f45802c0258090c161b5727ee9bbd7`  
		Last Modified: Tue, 11 Sep 2018 22:51:45 GMT  
		Size: 934.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de2b391c82b9c28c3e5f732e1bdb8b39e897d0ed55612da0a2deb33c11214c83`  
		Last Modified: Tue, 11 Sep 2018 22:51:44 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d924003a77c743b33d0ec3f4a1815fc0b388dae77da2604da55969926307ba0`  
		Last Modified: Tue, 11 Sep 2018 22:51:44 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.2`

```console
$ docker pull crate@sha256:9f9c084d37f4670d0cc329cb7db916be803b5ca6174a5518c07a7e158f72a762
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.2` - linux; amd64

```console
$ docker pull crate@sha256:d406b3e6a93a10506017fe6831ee162dfc955068ebbddbbe2a3343ea61552c4f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129677432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a4eec5699a2d9f8d216c11c689b7f2e96f416ff335a65afc441c95c515ae8bc`
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
# Tue, 11 Sep 2018 22:48:15 GMT
ADD file:5ffe7502a8e59c1690f1c10bd4f7c3843fa35e03c99223a05215c7b021cec1a1 in /crate/config/crate.yml 
# Tue, 11 Sep 2018 22:48:15 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Tue, 11 Sep 2018 22:48:16 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Tue, 11 Sep 2018 22:48:16 GMT
WORKDIR /data
# Tue, 11 Sep 2018 22:48:16 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Tue, 11 Sep 2018 22:48:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Sep 2018 22:48:16 GMT
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
	-	`sha256:6aa60482e94d911179f82ce5ba7fc106f3c3b6d2c044b0eabd96b948ecef6c78`  
		Last Modified: Tue, 11 Sep 2018 22:51:10 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f46e760335ec7479efd197e35cf15807e35a155bed4d05ca835ccc288595f9`  
		Last Modified: Tue, 11 Sep 2018 22:51:10 GMT  
		Size: 934.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f649255f2bc26abee7c2ae778f4f57d05ebd1bb18e497c7e30df688fe266425e`  
		Last Modified: Tue, 11 Sep 2018 22:51:10 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27dfc68d44c3ea3ce17bca32a4e8fb845cb726ed10b1fdd596af791a76bac7bd`  
		Last Modified: Tue, 11 Sep 2018 22:51:10 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.2.7`

```console
$ docker pull crate@sha256:9f9c084d37f4670d0cc329cb7db916be803b5ca6174a5518c07a7e158f72a762
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.2.7` - linux; amd64

```console
$ docker pull crate@sha256:d406b3e6a93a10506017fe6831ee162dfc955068ebbddbbe2a3343ea61552c4f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129677432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a4eec5699a2d9f8d216c11c689b7f2e96f416ff335a65afc441c95c515ae8bc`
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
# Tue, 11 Sep 2018 22:48:15 GMT
ADD file:5ffe7502a8e59c1690f1c10bd4f7c3843fa35e03c99223a05215c7b021cec1a1 in /crate/config/crate.yml 
# Tue, 11 Sep 2018 22:48:15 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Tue, 11 Sep 2018 22:48:16 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Tue, 11 Sep 2018 22:48:16 GMT
WORKDIR /data
# Tue, 11 Sep 2018 22:48:16 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Tue, 11 Sep 2018 22:48:16 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Sep 2018 22:48:16 GMT
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
	-	`sha256:6aa60482e94d911179f82ce5ba7fc106f3c3b6d2c044b0eabd96b948ecef6c78`  
		Last Modified: Tue, 11 Sep 2018 22:51:10 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07f46e760335ec7479efd197e35cf15807e35a155bed4d05ca835ccc288595f9`  
		Last Modified: Tue, 11 Sep 2018 22:51:10 GMT  
		Size: 934.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f649255f2bc26abee7c2ae778f4f57d05ebd1bb18e497c7e30df688fe266425e`  
		Last Modified: Tue, 11 Sep 2018 22:51:10 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27dfc68d44c3ea3ce17bca32a4e8fb845cb726ed10b1fdd596af791a76bac7bd`  
		Last Modified: Tue, 11 Sep 2018 22:51:10 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.3`

```console
$ docker pull crate@sha256:189c4070992a73cf07693d1f247bfb2e1a1c7129e07b111d28bf26522cc0db08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.3` - linux; amd64

```console
$ docker pull crate@sha256:ebdf85d6340fbb6acdfc821cd555199ea341eb1054f34abf7eb573b81743447d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.5 MB (130538553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51867dae1338822d33a0525d7342c08453b46eb61e324ac524c2645eed2d7242`
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
# Tue, 11 Sep 2018 22:47:46 GMT
ADD file:5ffe7502a8e59c1690f1c10bd4f7c3843fa35e03c99223a05215c7b021cec1a1 in /crate/config/crate.yml 
# Tue, 11 Sep 2018 22:47:47 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Tue, 11 Sep 2018 22:47:48 GMT
COPY file:2e96d63ad898925a7e7d49d4440efe616689a56ac5b315dc06aa1bf54f1c2e08 in / 
# Tue, 11 Sep 2018 22:47:48 GMT
WORKDIR /data
# Tue, 11 Sep 2018 22:47:48 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Tue, 11 Sep 2018 22:47:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Sep 2018 22:47:49 GMT
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
	-	`sha256:1a01129b6e7fe420eecc5b6dd999d497aa4009b08f039973b2b29bd945165a94`  
		Last Modified: Tue, 11 Sep 2018 22:50:34 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d271e3c738d153737c3846ec868d74cd1233e6e9febd6b667b4bde2847ae5b3`  
		Last Modified: Tue, 11 Sep 2018 22:50:33 GMT  
		Size: 932.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adab246cbed4aa6697c2472a699e3ca012ef21df3f69181ded4b06e06e0ab8ee`  
		Last Modified: Tue, 11 Sep 2018 22:50:33 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2e72743e128392f52adddede30121b6ca3d369de2119d39dd1fee2e67196c0`  
		Last Modified: Tue, 11 Sep 2018 22:50:33 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.3.11`

```console
$ docker pull crate@sha256:189c4070992a73cf07693d1f247bfb2e1a1c7129e07b111d28bf26522cc0db08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.3.11` - linux; amd64

```console
$ docker pull crate@sha256:ebdf85d6340fbb6acdfc821cd555199ea341eb1054f34abf7eb573b81743447d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.5 MB (130538553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51867dae1338822d33a0525d7342c08453b46eb61e324ac524c2645eed2d7242`
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
# Tue, 11 Sep 2018 22:47:46 GMT
ADD file:5ffe7502a8e59c1690f1c10bd4f7c3843fa35e03c99223a05215c7b021cec1a1 in /crate/config/crate.yml 
# Tue, 11 Sep 2018 22:47:47 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Tue, 11 Sep 2018 22:47:48 GMT
COPY file:2e96d63ad898925a7e7d49d4440efe616689a56ac5b315dc06aa1bf54f1c2e08 in / 
# Tue, 11 Sep 2018 22:47:48 GMT
WORKDIR /data
# Tue, 11 Sep 2018 22:47:48 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Tue, 11 Sep 2018 22:47:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Sep 2018 22:47:49 GMT
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
	-	`sha256:1a01129b6e7fe420eecc5b6dd999d497aa4009b08f039973b2b29bd945165a94`  
		Last Modified: Tue, 11 Sep 2018 22:50:34 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d271e3c738d153737c3846ec868d74cd1233e6e9febd6b667b4bde2847ae5b3`  
		Last Modified: Tue, 11 Sep 2018 22:50:33 GMT  
		Size: 932.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adab246cbed4aa6697c2472a699e3ca012ef21df3f69181ded4b06e06e0ab8ee`  
		Last Modified: Tue, 11 Sep 2018 22:50:33 GMT  
		Size: 359.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c2e72743e128392f52adddede30121b6ca3d369de2119d39dd1fee2e67196c0`  
		Last Modified: Tue, 11 Sep 2018 22:50:33 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:3.0`

```console
$ docker pull crate@sha256:d1fccd8c62eb5680fc48a246fa6538b51c2f4a6c9b509a8774075bdec1b54ef2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:3.0` - linux; amd64

```console
$ docker pull crate@sha256:adb4d72aaf691d670189d6f29d9636d88a7f8287c0d64a2c3e694f440d82e97b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.9 MB (129949803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20e624950b8f9a4a6067e7baa0c67b2051afbe3207f21ff198e56c79f5ffa3d8`
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
# Fri, 28 Sep 2018 18:20:29 GMT
ADD file:5ffe7502a8e59c1690f1c10bd4f7c3843fa35e03c99223a05215c7b021cec1a1 in /crate/config/crate.yml 
# Fri, 28 Sep 2018 18:20:29 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Fri, 28 Sep 2018 18:20:30 GMT
COPY file:ccbaba6139222677e1fd4479b674a0ada03cb3fc8505e286b4d19785303148c1 in / 
# Fri, 28 Sep 2018 18:20:30 GMT
WORKDIR /data
# Fri, 28 Sep 2018 18:20:30 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Fri, 28 Sep 2018 18:20:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 28 Sep 2018 18:20:31 GMT
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
	-	`sha256:1851e3ee04a252351fa8c8868e16cc710cd9b62bfd5e8dea822d8676c0e36afb`  
		Last Modified: Fri, 28 Sep 2018 18:21:42 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2367421562bd3602011c6a4a24afcb10b23de7c147141d377ec48e8c49d3ef4c`  
		Last Modified: Fri, 28 Sep 2018 18:21:42 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e37a0c44a8e79daa1af782e9583f2ba9ed79fcfcf595092592a0eb8529984fa9`  
		Last Modified: Fri, 28 Sep 2018 18:21:41 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:3.0.7`

```console
$ docker pull crate@sha256:d1fccd8c62eb5680fc48a246fa6538b51c2f4a6c9b509a8774075bdec1b54ef2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:3.0.7` - linux; amd64

```console
$ docker pull crate@sha256:adb4d72aaf691d670189d6f29d9636d88a7f8287c0d64a2c3e694f440d82e97b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.9 MB (129949803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20e624950b8f9a4a6067e7baa0c67b2051afbe3207f21ff198e56c79f5ffa3d8`
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
# Fri, 28 Sep 2018 18:20:29 GMT
ADD file:5ffe7502a8e59c1690f1c10bd4f7c3843fa35e03c99223a05215c7b021cec1a1 in /crate/config/crate.yml 
# Fri, 28 Sep 2018 18:20:29 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Fri, 28 Sep 2018 18:20:30 GMT
COPY file:ccbaba6139222677e1fd4479b674a0ada03cb3fc8505e286b4d19785303148c1 in / 
# Fri, 28 Sep 2018 18:20:30 GMT
WORKDIR /data
# Fri, 28 Sep 2018 18:20:30 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Fri, 28 Sep 2018 18:20:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 28 Sep 2018 18:20:31 GMT
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
	-	`sha256:1851e3ee04a252351fa8c8868e16cc710cd9b62bfd5e8dea822d8676c0e36afb`  
		Last Modified: Fri, 28 Sep 2018 18:21:42 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2367421562bd3602011c6a4a24afcb10b23de7c147141d377ec48e8c49d3ef4c`  
		Last Modified: Fri, 28 Sep 2018 18:21:42 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e37a0c44a8e79daa1af782e9583f2ba9ed79fcfcf595092592a0eb8529984fa9`  
		Last Modified: Fri, 28 Sep 2018 18:21:41 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:3.1`

```console
$ docker pull crate@sha256:aea1e2369333ed6973a9193eb376b386f3cfab7520a015b646c5f204b53da601
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:3.1` - linux; amd64

```console
$ docker pull crate@sha256:a25f9fc1834952122918d1e780cd130e902868aa484fc4e993f3f956ec7ff100
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.3 MB (130271946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:344ed3aadddec57baaf4c6a7664876324699d2eb2e9b42cd0df1897e51134a27`
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
# Thu, 25 Oct 2018 00:45:05 GMT
ENV CRATE_VERSION=3.1.2
# Thu, 25 Oct 2018 00:45:25 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Thu, 25 Oct 2018 00:45:32 GMT
ENV CRASH_VERSION=0.24.2
# Thu, 25 Oct 2018 00:45:36 GMT
RUN apk add --no-cache --virtual .build-deps         gnupg     && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_$CRASH_VERSION     && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_$CRASH_VERSION.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_$CRASH_VERSION.asc crash_standalone_$CRASH_VERSION     && rm -rf "$GNUPGHOME" crash_standalone_$CRASH_VERSION.asc     && mv crash_standalone_$CRASH_VERSION /usr/local/bin/crash     && chmod +x /usr/local/bin/crash     && apk del .build-deps
# Thu, 25 Oct 2018 00:45:37 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 25 Oct 2018 00:45:37 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 25 Oct 2018 00:45:37 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --fail --max-time 25 $(hostname):4200"] "30s" "30s" "0s" '\x00'}
# Thu, 25 Oct 2018 00:45:38 GMT
RUN mkdir -p /data/data /data/log
# Thu, 25 Oct 2018 00:45:38 GMT
VOLUME [/data]
# Thu, 25 Oct 2018 00:45:39 GMT
ADD file:5ffe7502a8e59c1690f1c10bd4f7c3843fa35e03c99223a05215c7b021cec1a1 in /crate/config/crate.yml 
# Thu, 25 Oct 2018 00:45:39 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Thu, 25 Oct 2018 00:45:39 GMT
COPY file:ccbaba6139222677e1fd4479b674a0ada03cb3fc8505e286b4d19785303148c1 in / 
# Thu, 25 Oct 2018 00:45:40 GMT
WORKDIR /data
# Thu, 25 Oct 2018 00:45:40 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Thu, 25 Oct 2018 00:45:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Oct 2018 00:45:41 GMT
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
	-	`sha256:6dbef594b639a016f3edcc1f8da5c203ab630926710772475700338b90bae315`  
		Last Modified: Thu, 25 Oct 2018 00:46:18 GMT  
		Size: 126.1 MB (126114841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b364d013f2906e6ae8f76617de61cf79b84cd289a16f25a336306260375eb360`  
		Last Modified: Thu, 25 Oct 2018 00:46:04 GMT  
		Size: 1.5 MB (1453458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed950f05bd830243738255790db46e84829551ed76373db95f8f7ccabc379a6`  
		Last Modified: Thu, 25 Oct 2018 00:46:04 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a876e7fefccf1f36a1716dda581093c960e2e3b837d291fb0245d6bab51e4d`  
		Last Modified: Thu, 25 Oct 2018 00:46:06 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a7bff4a16e171de31bb50b72e70f1bf3d360b43a5127835f667d5f5d0de47e`  
		Last Modified: Thu, 25 Oct 2018 00:46:04 GMT  
		Size: 932.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd1ca9a51e266f48a528a719c853468ea43e5212a87cea3cf2e2ed13723c2ea`  
		Last Modified: Thu, 25 Oct 2018 00:46:04 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:3.1.3`

**does not exist** (yet?)

## `crate:latest`

```console
$ docker pull crate@sha256:aea1e2369333ed6973a9193eb376b386f3cfab7520a015b646c5f204b53da601
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:latest` - linux; amd64

```console
$ docker pull crate@sha256:a25f9fc1834952122918d1e780cd130e902868aa484fc4e993f3f956ec7ff100
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.3 MB (130271946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:344ed3aadddec57baaf4c6a7664876324699d2eb2e9b42cd0df1897e51134a27`
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
# Thu, 25 Oct 2018 00:45:05 GMT
ENV CRATE_VERSION=3.1.2
# Thu, 25 Oct 2018 00:45:25 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Thu, 25 Oct 2018 00:45:32 GMT
ENV CRASH_VERSION=0.24.2
# Thu, 25 Oct 2018 00:45:36 GMT
RUN apk add --no-cache --virtual .build-deps         gnupg     && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_$CRASH_VERSION     && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_$CRASH_VERSION.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_$CRASH_VERSION.asc crash_standalone_$CRASH_VERSION     && rm -rf "$GNUPGHOME" crash_standalone_$CRASH_VERSION.asc     && mv crash_standalone_$CRASH_VERSION /usr/local/bin/crash     && chmod +x /usr/local/bin/crash     && apk del .build-deps
# Thu, 25 Oct 2018 00:45:37 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 25 Oct 2018 00:45:37 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 25 Oct 2018 00:45:37 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --fail --max-time 25 $(hostname):4200"] "30s" "30s" "0s" '\x00'}
# Thu, 25 Oct 2018 00:45:38 GMT
RUN mkdir -p /data/data /data/log
# Thu, 25 Oct 2018 00:45:38 GMT
VOLUME [/data]
# Thu, 25 Oct 2018 00:45:39 GMT
ADD file:5ffe7502a8e59c1690f1c10bd4f7c3843fa35e03c99223a05215c7b021cec1a1 in /crate/config/crate.yml 
# Thu, 25 Oct 2018 00:45:39 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Thu, 25 Oct 2018 00:45:39 GMT
COPY file:ccbaba6139222677e1fd4479b674a0ada03cb3fc8505e286b4d19785303148c1 in / 
# Thu, 25 Oct 2018 00:45:40 GMT
WORKDIR /data
# Thu, 25 Oct 2018 00:45:40 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Thu, 25 Oct 2018 00:45:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Oct 2018 00:45:41 GMT
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
	-	`sha256:6dbef594b639a016f3edcc1f8da5c203ab630926710772475700338b90bae315`  
		Last Modified: Thu, 25 Oct 2018 00:46:18 GMT  
		Size: 126.1 MB (126114841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b364d013f2906e6ae8f76617de61cf79b84cd289a16f25a336306260375eb360`  
		Last Modified: Thu, 25 Oct 2018 00:46:04 GMT  
		Size: 1.5 MB (1453458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eed950f05bd830243738255790db46e84829551ed76373db95f8f7ccabc379a6`  
		Last Modified: Thu, 25 Oct 2018 00:46:04 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a876e7fefccf1f36a1716dda581093c960e2e3b837d291fb0245d6bab51e4d`  
		Last Modified: Thu, 25 Oct 2018 00:46:06 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a7bff4a16e171de31bb50b72e70f1bf3d360b43a5127835f667d5f5d0de47e`  
		Last Modified: Thu, 25 Oct 2018 00:46:04 GMT  
		Size: 932.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1dd1ca9a51e266f48a528a719c853468ea43e5212a87cea3cf2e2ed13723c2ea`  
		Last Modified: Thu, 25 Oct 2018 00:46:04 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
