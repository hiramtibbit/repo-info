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
-	[`crate:3.0.6`](#crate306)
-	[`crate:latest`](#cratelatest)

## `crate:2.0`

```console
$ docker pull crate@sha256:b558838d38ed02f500b34b16457ffbffc7d7fbfaaa381f1a0e789d7d6cb2af5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.0` - linux; amd64

```console
$ docker pull crate@sha256:3cd8378507cae2c32b71fcedc0f3125b55f57aa11d13f69ec7ffb01917079944
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.9 MB (126890468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfc545d8f8b10be1cda5680f645cdddc24ff13fb0de1c42d29b442f315443643`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 06 Jul 2018 14:16:09 GMT
ADD file:fbb7c24296423cb0b8bcd0412f1b2e0b4ecc467884db753ac60df80972928ebe in / 
# Fri, 06 Jul 2018 14:16:09 GMT
CMD ["/bin/sh"]
# Mon, 10 Sep 2018 20:21:23 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Mon, 10 Sep 2018 20:21:23 GMT
ENV GOSU_VERSION=1.9
# Mon, 10 Sep 2018 20:21:57 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Mon, 10 Sep 2018 20:21:57 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Mon, 10 Sep 2018 20:22:20 GMT
ENV CRATE_VERSION=2.0.7
# Mon, 10 Sep 2018 20:22:44 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/crate-sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Mon, 10 Sep 2018 20:22:45 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Sep 2018 20:22:45 GMT
VOLUME [/data]
# Mon, 10 Sep 2018 20:22:45 GMT
ADD file:f6ed1d4a953eca6984e33a751c11c6838562c006ffa19ab36d121906728e94db in /crate/config/crate.yml 
# Mon, 10 Sep 2018 20:22:46 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Mon, 10 Sep 2018 20:22:46 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Mon, 10 Sep 2018 20:22:46 GMT
WORKDIR /data
# Mon, 10 Sep 2018 20:22:46 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp 5433/tcp 5434/tcp 5435/tcp 5436/tcp 5437/tcp 5438/tcp 5439/tcp 5440/tcp 5441/tcp 5442/tcp 5443/tcp 5444/tcp 5445/tcp 5446/tcp 5447/tcp 5448/tcp 5449/tcp 5450/tcp 5451/tcp 5452/tcp 5453/tcp 5454/tcp 5455/tcp 5456/tcp 5457/tcp 5458/tcp 5459/tcp 5460/tcp 5461/tcp 5462/tcp 5463/tcp 5464/tcp 5465/tcp 5466/tcp 5467/tcp 5468/tcp 5469/tcp 5470/tcp 5471/tcp 5472/tcp 5473/tcp 5474/tcp 5475/tcp 5476/tcp 5477/tcp 5478/tcp 5479/tcp 5480/tcp 5481/tcp 5482/tcp 5483/tcp 5484/tcp 5485/tcp 5486/tcp 5487/tcp 5488/tcp 5489/tcp 5490/tcp 5491/tcp 5492/tcp 5493/tcp 5494/tcp 5495/tcp 5496/tcp 5497/tcp 5498/tcp 5499/tcp 5500/tcp 5501/tcp 5502/tcp 5503/tcp 5504/tcp 5505/tcp 5506/tcp 5507/tcp 5508/tcp 5509/tcp 5510/tcp 5511/tcp 5512/tcp 5513/tcp 5514/tcp 5515/tcp 5516/tcp 5517/tcp 5518/tcp 5519/tcp 5520/tcp 5521/tcp 5522/tcp 5523/tcp 5524/tcp 5525/tcp 5526/tcp 5527/tcp 5528/tcp 5529/tcp 5530/tcp 5531/tcp 5532/tcp
# Mon, 10 Sep 2018 20:22:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 10 Sep 2018 20:22:47 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:f4900964ff56fb11dbdfba69c027cf8b27b62f87de0c8a94fb7da8a3a5e1af0a`  
		Last Modified: Fri, 06 Jul 2018 14:18:46 GMT  
		Size: 2.0 MB (1971160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46fed551333e5275b953421b53761a1a230afbcb156f6379fe096152d2007b97`  
		Last Modified: Mon, 10 Sep 2018 20:24:55 GMT  
		Size: 592.4 KB (592359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334025eb6483c117a4f84251d245a84673f2003f396e89731bb19584cd1228dc`  
		Last Modified: Mon, 10 Sep 2018 20:24:55 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43e7b140161981e7caa455b91df0caf3d2736d9ecd0bbaefa20b502f0ad16a6`  
		Last Modified: Mon, 10 Sep 2018 20:25:35 GMT  
		Size: 124.3 MB (124324258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35187f3f642bb220c6998ebec93a36192a78967933caabe1cef5a494bafc939`  
		Last Modified: Mon, 10 Sep 2018 20:25:22 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514debfefcd41876368162c32e58f47159dc8ba3e8367c4fd0f9cb0943fc0e6b`  
		Last Modified: Mon, 10 Sep 2018 20:25:22 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2245ca2f9cd7ba9d7e561e08c870145fbae6aa785ac75a014cd3e1aed6604fc4`  
		Last Modified: Mon, 10 Sep 2018 20:25:22 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4eb8a6fb67e82ac4063596b09f51fbe2fdcd74d81e75abafe89d2175b16c661`  
		Last Modified: Mon, 10 Sep 2018 20:25:22 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.0.7`

```console
$ docker pull crate@sha256:b558838d38ed02f500b34b16457ffbffc7d7fbfaaa381f1a0e789d7d6cb2af5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.0.7` - linux; amd64

```console
$ docker pull crate@sha256:3cd8378507cae2c32b71fcedc0f3125b55f57aa11d13f69ec7ffb01917079944
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.9 MB (126890468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfc545d8f8b10be1cda5680f645cdddc24ff13fb0de1c42d29b442f315443643`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 06 Jul 2018 14:16:09 GMT
ADD file:fbb7c24296423cb0b8bcd0412f1b2e0b4ecc467884db753ac60df80972928ebe in / 
# Fri, 06 Jul 2018 14:16:09 GMT
CMD ["/bin/sh"]
# Mon, 10 Sep 2018 20:21:23 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Mon, 10 Sep 2018 20:21:23 GMT
ENV GOSU_VERSION=1.9
# Mon, 10 Sep 2018 20:21:57 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Mon, 10 Sep 2018 20:21:57 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Mon, 10 Sep 2018 20:22:20 GMT
ENV CRATE_VERSION=2.0.7
# Mon, 10 Sep 2018 20:22:44 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/plugins/crate-sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Mon, 10 Sep 2018 20:22:45 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Sep 2018 20:22:45 GMT
VOLUME [/data]
# Mon, 10 Sep 2018 20:22:45 GMT
ADD file:f6ed1d4a953eca6984e33a751c11c6838562c006ffa19ab36d121906728e94db in /crate/config/crate.yml 
# Mon, 10 Sep 2018 20:22:46 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Mon, 10 Sep 2018 20:22:46 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Mon, 10 Sep 2018 20:22:46 GMT
WORKDIR /data
# Mon, 10 Sep 2018 20:22:46 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp 5433/tcp 5434/tcp 5435/tcp 5436/tcp 5437/tcp 5438/tcp 5439/tcp 5440/tcp 5441/tcp 5442/tcp 5443/tcp 5444/tcp 5445/tcp 5446/tcp 5447/tcp 5448/tcp 5449/tcp 5450/tcp 5451/tcp 5452/tcp 5453/tcp 5454/tcp 5455/tcp 5456/tcp 5457/tcp 5458/tcp 5459/tcp 5460/tcp 5461/tcp 5462/tcp 5463/tcp 5464/tcp 5465/tcp 5466/tcp 5467/tcp 5468/tcp 5469/tcp 5470/tcp 5471/tcp 5472/tcp 5473/tcp 5474/tcp 5475/tcp 5476/tcp 5477/tcp 5478/tcp 5479/tcp 5480/tcp 5481/tcp 5482/tcp 5483/tcp 5484/tcp 5485/tcp 5486/tcp 5487/tcp 5488/tcp 5489/tcp 5490/tcp 5491/tcp 5492/tcp 5493/tcp 5494/tcp 5495/tcp 5496/tcp 5497/tcp 5498/tcp 5499/tcp 5500/tcp 5501/tcp 5502/tcp 5503/tcp 5504/tcp 5505/tcp 5506/tcp 5507/tcp 5508/tcp 5509/tcp 5510/tcp 5511/tcp 5512/tcp 5513/tcp 5514/tcp 5515/tcp 5516/tcp 5517/tcp 5518/tcp 5519/tcp 5520/tcp 5521/tcp 5522/tcp 5523/tcp 5524/tcp 5525/tcp 5526/tcp 5527/tcp 5528/tcp 5529/tcp 5530/tcp 5531/tcp 5532/tcp
# Mon, 10 Sep 2018 20:22:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 10 Sep 2018 20:22:47 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:f4900964ff56fb11dbdfba69c027cf8b27b62f87de0c8a94fb7da8a3a5e1af0a`  
		Last Modified: Fri, 06 Jul 2018 14:18:46 GMT  
		Size: 2.0 MB (1971160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46fed551333e5275b953421b53761a1a230afbcb156f6379fe096152d2007b97`  
		Last Modified: Mon, 10 Sep 2018 20:24:55 GMT  
		Size: 592.4 KB (592359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334025eb6483c117a4f84251d245a84673f2003f396e89731bb19584cd1228dc`  
		Last Modified: Mon, 10 Sep 2018 20:24:55 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f43e7b140161981e7caa455b91df0caf3d2736d9ecd0bbaefa20b502f0ad16a6`  
		Last Modified: Mon, 10 Sep 2018 20:25:35 GMT  
		Size: 124.3 MB (124324258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c35187f3f642bb220c6998ebec93a36192a78967933caabe1cef5a494bafc939`  
		Last Modified: Mon, 10 Sep 2018 20:25:22 GMT  
		Size: 229.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514debfefcd41876368162c32e58f47159dc8ba3e8367c4fd0f9cb0943fc0e6b`  
		Last Modified: Mon, 10 Sep 2018 20:25:22 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2245ca2f9cd7ba9d7e561e08c870145fbae6aa785ac75a014cd3e1aed6604fc4`  
		Last Modified: Mon, 10 Sep 2018 20:25:22 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4eb8a6fb67e82ac4063596b09f51fbe2fdcd74d81e75abafe89d2175b16c661`  
		Last Modified: Mon, 10 Sep 2018 20:25:22 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.1`

```console
$ docker pull crate@sha256:01c66003778fc380749e6eb364713efceeb9b8f28de04d2f7c7cc73e2ead9ffc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.1` - linux; amd64

```console
$ docker pull crate@sha256:25624402a7242bf00fed54d2ad467757459da3268da25e6393355607a61c8944
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.5 MB (129495926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6249234302f2f9e4b861b8c95b84a3598130c548a6f10c8f0b849c74c5802c3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 06 Jul 2018 14:16:09 GMT
ADD file:fbb7c24296423cb0b8bcd0412f1b2e0b4ecc467884db753ac60df80972928ebe in / 
# Fri, 06 Jul 2018 14:16:09 GMT
CMD ["/bin/sh"]
# Mon, 10 Sep 2018 20:21:23 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Mon, 10 Sep 2018 20:21:23 GMT
ENV GOSU_VERSION=1.9
# Mon, 10 Sep 2018 20:21:57 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Mon, 10 Sep 2018 20:21:57 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Mon, 10 Sep 2018 20:21:58 GMT
ENV CRATE_VERSION=2.1.10
# Mon, 10 Sep 2018 20:22:08 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/lib/sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Mon, 10 Sep 2018 20:22:08 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Sep 2018 20:22:08 GMT
ENV CRATE_HEAP_SIZE=512M
# Mon, 10 Sep 2018 20:22:08 GMT
VOLUME [/data]
# Mon, 10 Sep 2018 20:22:09 GMT
ADD file:c0b3bba944a2572094279072da088c4f681b13f9bed768ebd567555831729fab in /crate/config/crate.yml 
# Mon, 10 Sep 2018 20:22:09 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Mon, 10 Sep 2018 20:22:09 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Mon, 10 Sep 2018 20:22:09 GMT
WORKDIR /data
# Mon, 10 Sep 2018 20:22:10 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Mon, 10 Sep 2018 20:22:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 10 Sep 2018 20:22:10 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:f4900964ff56fb11dbdfba69c027cf8b27b62f87de0c8a94fb7da8a3a5e1af0a`  
		Last Modified: Fri, 06 Jul 2018 14:18:46 GMT  
		Size: 2.0 MB (1971160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46fed551333e5275b953421b53761a1a230afbcb156f6379fe096152d2007b97`  
		Last Modified: Mon, 10 Sep 2018 20:24:55 GMT  
		Size: 592.4 KB (592359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334025eb6483c117a4f84251d245a84673f2003f396e89731bb19584cd1228dc`  
		Last Modified: Mon, 10 Sep 2018 20:24:55 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a3dd85cc01884ee8467bed7c3a0ea1b5bb9afa2a5006ac1d38c0a31473c398`  
		Last Modified: Mon, 10 Sep 2018 20:25:08 GMT  
		Size: 126.9 MB (126929703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2bc0d4eca8a680a288e165bcc8908b1ff98a37b41aaf6f6c8ed13819f5f467`  
		Last Modified: Mon, 10 Sep 2018 20:24:54 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07948f38fc47c602d388cf35b999cb8f752761ef91e5385623d93df35dbc5126`  
		Last Modified: Mon, 10 Sep 2018 20:24:54 GMT  
		Size: 931.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a99c9f5570518c4a2afa382aaf4c9a0475b69a6d132ebbc0c02a5681c886c39`  
		Last Modified: Mon, 10 Sep 2018 20:24:53 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80bcd03017956ca11dda706d3d37b6746c67a4090ebdeb51c07b3c7ea0161bcb`  
		Last Modified: Mon, 10 Sep 2018 20:24:53 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.1.10`

```console
$ docker pull crate@sha256:01c66003778fc380749e6eb364713efceeb9b8f28de04d2f7c7cc73e2ead9ffc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.1.10` - linux; amd64

```console
$ docker pull crate@sha256:25624402a7242bf00fed54d2ad467757459da3268da25e6393355607a61c8944
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.5 MB (129495926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6249234302f2f9e4b861b8c95b84a3598130c548a6f10c8f0b849c74c5802c3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 06 Jul 2018 14:16:09 GMT
ADD file:fbb7c24296423cb0b8bcd0412f1b2e0b4ecc467884db753ac60df80972928ebe in / 
# Fri, 06 Jul 2018 14:16:09 GMT
CMD ["/bin/sh"]
# Mon, 10 Sep 2018 20:21:23 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Mon, 10 Sep 2018 20:21:23 GMT
ENV GOSU_VERSION=1.9
# Mon, 10 Sep 2018 20:21:57 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -r "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Mon, 10 Sep 2018 20:21:57 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Mon, 10 Sep 2018 20:21:58 GMT
ENV CRATE_VERSION=2.1.10
# Mon, 10 Sep 2018 20:22:08 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -r "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/lib/sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Mon, 10 Sep 2018 20:22:08 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Sep 2018 20:22:08 GMT
ENV CRATE_HEAP_SIZE=512M
# Mon, 10 Sep 2018 20:22:08 GMT
VOLUME [/data]
# Mon, 10 Sep 2018 20:22:09 GMT
ADD file:c0b3bba944a2572094279072da088c4f681b13f9bed768ebd567555831729fab in /crate/config/crate.yml 
# Mon, 10 Sep 2018 20:22:09 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Mon, 10 Sep 2018 20:22:09 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Mon, 10 Sep 2018 20:22:09 GMT
WORKDIR /data
# Mon, 10 Sep 2018 20:22:10 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Mon, 10 Sep 2018 20:22:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 10 Sep 2018 20:22:10 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:f4900964ff56fb11dbdfba69c027cf8b27b62f87de0c8a94fb7da8a3a5e1af0a`  
		Last Modified: Fri, 06 Jul 2018 14:18:46 GMT  
		Size: 2.0 MB (1971160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46fed551333e5275b953421b53761a1a230afbcb156f6379fe096152d2007b97`  
		Last Modified: Mon, 10 Sep 2018 20:24:55 GMT  
		Size: 592.4 KB (592359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:334025eb6483c117a4f84251d245a84673f2003f396e89731bb19584cd1228dc`  
		Last Modified: Mon, 10 Sep 2018 20:24:55 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a3dd85cc01884ee8467bed7c3a0ea1b5bb9afa2a5006ac1d38c0a31473c398`  
		Last Modified: Mon, 10 Sep 2018 20:25:08 GMT  
		Size: 126.9 MB (126929703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c2bc0d4eca8a680a288e165bcc8908b1ff98a37b41aaf6f6c8ed13819f5f467`  
		Last Modified: Mon, 10 Sep 2018 20:24:54 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07948f38fc47c602d388cf35b999cb8f752761ef91e5385623d93df35dbc5126`  
		Last Modified: Mon, 10 Sep 2018 20:24:54 GMT  
		Size: 931.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a99c9f5570518c4a2afa382aaf4c9a0475b69a6d132ebbc0c02a5681c886c39`  
		Last Modified: Mon, 10 Sep 2018 20:24:53 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80bcd03017956ca11dda706d3d37b6746c67a4090ebdeb51c07b3c7ea0161bcb`  
		Last Modified: Mon, 10 Sep 2018 20:24:53 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.2`

```console
$ docker pull crate@sha256:ba82414a04094dcab25915255e561a19ad14355f9bc7226ae3a8e0e648ea5832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.2` - linux; amd64

```console
$ docker pull crate@sha256:ce1b8a0bfa946d5146e1e163c675f80c0e6ca920149db3a7d0cf9114a0b2dca8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.9 MB (130896066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88f0fa0b6c1dab991ac459b148aabf976ce7ef906209723d24801a4104c5a947`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Mon, 10 Sep 2018 20:19:46 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Mon, 10 Sep 2018 20:19:46 GMT
ENV GOSU_VERSION=1.9
# Mon, 10 Sep 2018 20:19:51 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Mon, 10 Sep 2018 20:19:51 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Mon, 10 Sep 2018 20:20:50 GMT
ENV CRATE_VERSION=2.2.7
# Mon, 10 Sep 2018 20:21:11 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/lib/sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Mon, 10 Sep 2018 20:21:12 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Sep 2018 20:21:12 GMT
ENV CRATE_HEAP_SIZE=512M
# Mon, 10 Sep 2018 20:21:12 GMT
VOLUME [/data]
# Mon, 10 Sep 2018 20:21:12 GMT
ADD file:5ffe7502a8e59c1690f1c10bd4f7c3843fa35e03c99223a05215c7b021cec1a1 in /crate/config/crate.yml 
# Mon, 10 Sep 2018 20:21:13 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Mon, 10 Sep 2018 20:21:13 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Mon, 10 Sep 2018 20:21:13 GMT
WORKDIR /data
# Mon, 10 Sep 2018 20:21:13 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Mon, 10 Sep 2018 20:21:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 10 Sep 2018 20:21:14 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228d63e73fc15813217ee2c44e5bcb45e7945ffdc84a936d0a3d2e540c0f4f70`  
		Last Modified: Mon, 10 Sep 2018 20:23:02 GMT  
		Size: 1.8 MB (1815634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80255143a316fe9757ffe00ec06564ce979dfbb8ea2593b53fba2bdc083db86e`  
		Last Modified: Mon, 10 Sep 2018 20:23:01 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68fe45168467f17026cb29185e6c4fea06684146ebb7215f7c28875e8ae6a806`  
		Last Modified: Mon, 10 Sep 2018 20:24:39 GMT  
		Size: 127.0 MB (126974161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c38309c36260642542e27f1ed86d5e2772e2ee72a4450542310af35d89479ce`  
		Last Modified: Mon, 10 Sep 2018 20:24:01 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3405de1fa6d03f1ad455f5ff5a3b57028d1887171d668ae799b44f22ae751356`  
		Last Modified: Mon, 10 Sep 2018 20:24:02 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7931455aff1ad6db60c835233a6bfef6c2e7b2b361a91aa394bc39995372706`  
		Last Modified: Mon, 10 Sep 2018 20:24:01 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561ed3266f06ee8eb76d0bea696af23ab1657bb65284dbff7ed91abfb7b5c925`  
		Last Modified: Mon, 10 Sep 2018 20:24:02 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.2.7`

```console
$ docker pull crate@sha256:ba82414a04094dcab25915255e561a19ad14355f9bc7226ae3a8e0e648ea5832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.2.7` - linux; amd64

```console
$ docker pull crate@sha256:ce1b8a0bfa946d5146e1e163c675f80c0e6ca920149db3a7d0cf9114a0b2dca8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.9 MB (130896066 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88f0fa0b6c1dab991ac459b148aabf976ce7ef906209723d24801a4104c5a947`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Mon, 10 Sep 2018 20:19:46 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Mon, 10 Sep 2018 20:19:46 GMT
ENV GOSU_VERSION=1.9
# Mon, 10 Sep 2018 20:19:51 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Mon, 10 Sep 2018 20:19:51 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Mon, 10 Sep 2018 20:20:50 GMT
ENV CRATE_VERSION=2.2.7
# Mon, 10 Sep 2018 20:21:11 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/lib/sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Mon, 10 Sep 2018 20:21:12 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Sep 2018 20:21:12 GMT
ENV CRATE_HEAP_SIZE=512M
# Mon, 10 Sep 2018 20:21:12 GMT
VOLUME [/data]
# Mon, 10 Sep 2018 20:21:12 GMT
ADD file:5ffe7502a8e59c1690f1c10bd4f7c3843fa35e03c99223a05215c7b021cec1a1 in /crate/config/crate.yml 
# Mon, 10 Sep 2018 20:21:13 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Mon, 10 Sep 2018 20:21:13 GMT
COPY file:9517f117528edc569ebb34a2c1d3d7bcf342cb124f3b833a681768549d61ebfb in / 
# Mon, 10 Sep 2018 20:21:13 GMT
WORKDIR /data
# Mon, 10 Sep 2018 20:21:13 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Mon, 10 Sep 2018 20:21:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 10 Sep 2018 20:21:14 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228d63e73fc15813217ee2c44e5bcb45e7945ffdc84a936d0a3d2e540c0f4f70`  
		Last Modified: Mon, 10 Sep 2018 20:23:02 GMT  
		Size: 1.8 MB (1815634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80255143a316fe9757ffe00ec06564ce979dfbb8ea2593b53fba2bdc083db86e`  
		Last Modified: Mon, 10 Sep 2018 20:23:01 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68fe45168467f17026cb29185e6c4fea06684146ebb7215f7c28875e8ae6a806`  
		Last Modified: Mon, 10 Sep 2018 20:24:39 GMT  
		Size: 127.0 MB (126974161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c38309c36260642542e27f1ed86d5e2772e2ee72a4450542310af35d89479ce`  
		Last Modified: Mon, 10 Sep 2018 20:24:01 GMT  
		Size: 255.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3405de1fa6d03f1ad455f5ff5a3b57028d1887171d668ae799b44f22ae751356`  
		Last Modified: Mon, 10 Sep 2018 20:24:02 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7931455aff1ad6db60c835233a6bfef6c2e7b2b361a91aa394bc39995372706`  
		Last Modified: Mon, 10 Sep 2018 20:24:01 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561ed3266f06ee8eb76d0bea696af23ab1657bb65284dbff7ed91abfb7b5c925`  
		Last Modified: Mon, 10 Sep 2018 20:24:02 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.3`

```console
$ docker pull crate@sha256:e0aee6b0ee5b4dfb483bef6eb5d20ac85e883a30c75fcac8c2596600afbaa5b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.3` - linux; amd64

```console
$ docker pull crate@sha256:b9c8b45760185d084e54ffc6bb89e252da070f316d245b1708b2dd0944e3105c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.8 MB (131757086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82e5e0f500dbca0ebc795dd9c76b3a36bd1b4b2921e8c2c6c30708003268c655`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Mon, 10 Sep 2018 20:19:46 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Mon, 10 Sep 2018 20:19:46 GMT
ENV GOSU_VERSION=1.9
# Mon, 10 Sep 2018 20:19:51 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Mon, 10 Sep 2018 20:19:51 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Mon, 10 Sep 2018 20:20:22 GMT
ENV CRATE_VERSION=2.3.11
# Mon, 10 Sep 2018 20:20:39 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Mon, 10 Sep 2018 20:20:40 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Sep 2018 20:20:40 GMT
ENV CRATE_HEAP_SIZE=512M
# Mon, 10 Sep 2018 20:20:40 GMT
HEALTHCHECK &{["CMD-SHELL" "curl $(hostname):4200"] "0s" "0s" "0s" '\x00'}
# Mon, 10 Sep 2018 20:20:40 GMT
VOLUME [/data]
# Mon, 10 Sep 2018 20:20:40 GMT
ADD file:5ffe7502a8e59c1690f1c10bd4f7c3843fa35e03c99223a05215c7b021cec1a1 in /crate/config/crate.yml 
# Mon, 10 Sep 2018 20:20:41 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Mon, 10 Sep 2018 20:20:41 GMT
COPY file:2e96d63ad898925a7e7d49d4440efe616689a56ac5b315dc06aa1bf54f1c2e08 in / 
# Mon, 10 Sep 2018 20:20:41 GMT
WORKDIR /data
# Mon, 10 Sep 2018 20:20:41 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Mon, 10 Sep 2018 20:20:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 10 Sep 2018 20:20:42 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228d63e73fc15813217ee2c44e5bcb45e7945ffdc84a936d0a3d2e540c0f4f70`  
		Last Modified: Mon, 10 Sep 2018 20:23:02 GMT  
		Size: 1.8 MB (1815634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80255143a316fe9757ffe00ec06564ce979dfbb8ea2593b53fba2bdc083db86e`  
		Last Modified: Mon, 10 Sep 2018 20:23:01 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a111e71ac12543ac90221c095f028f21da18286785437c7b6aa8354e385af0`  
		Last Modified: Mon, 10 Sep 2018 20:23:50 GMT  
		Size: 127.8 MB (127835056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c142e026f007c92968d211988ea04081d1ddcef11206a6de17735e6ba87285`  
		Last Modified: Mon, 10 Sep 2018 20:23:34 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d06dd1caa5929b60b08e6053952d40154aa204601a72c469703f6803f6327eac`  
		Last Modified: Mon, 10 Sep 2018 20:23:34 GMT  
		Size: 934.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944e2fdac16e43c6f702ebfba6688d51efa6ff0309392f0928686ab490fe4a9e`  
		Last Modified: Mon, 10 Sep 2018 20:23:34 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4a68e3fc8a906934d918138ef16bc0d440f78cc2d006076a4d78da4a728e13`  
		Last Modified: Mon, 10 Sep 2018 20:23:34 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.3.11`

```console
$ docker pull crate@sha256:e0aee6b0ee5b4dfb483bef6eb5d20ac85e883a30c75fcac8c2596600afbaa5b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.3.11` - linux; amd64

```console
$ docker pull crate@sha256:b9c8b45760185d084e54ffc6bb89e252da070f316d245b1708b2dd0944e3105c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.8 MB (131757086 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82e5e0f500dbca0ebc795dd9c76b3a36bd1b4b2921e8c2c6c30708003268c655`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Mon, 10 Sep 2018 20:19:46 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Mon, 10 Sep 2018 20:19:46 GMT
ENV GOSU_VERSION=1.9
# Mon, 10 Sep 2018 20:19:51 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Mon, 10 Sep 2018 20:19:51 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Mon, 10 Sep 2018 20:20:22 GMT
ENV CRATE_VERSION=2.3.11
# Mon, 10 Sep 2018 20:20:39 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Mon, 10 Sep 2018 20:20:40 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Sep 2018 20:20:40 GMT
ENV CRATE_HEAP_SIZE=512M
# Mon, 10 Sep 2018 20:20:40 GMT
HEALTHCHECK &{["CMD-SHELL" "curl $(hostname):4200"] "0s" "0s" "0s" '\x00'}
# Mon, 10 Sep 2018 20:20:40 GMT
VOLUME [/data]
# Mon, 10 Sep 2018 20:20:40 GMT
ADD file:5ffe7502a8e59c1690f1c10bd4f7c3843fa35e03c99223a05215c7b021cec1a1 in /crate/config/crate.yml 
# Mon, 10 Sep 2018 20:20:41 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Mon, 10 Sep 2018 20:20:41 GMT
COPY file:2e96d63ad898925a7e7d49d4440efe616689a56ac5b315dc06aa1bf54f1c2e08 in / 
# Mon, 10 Sep 2018 20:20:41 GMT
WORKDIR /data
# Mon, 10 Sep 2018 20:20:41 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Mon, 10 Sep 2018 20:20:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 10 Sep 2018 20:20:42 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228d63e73fc15813217ee2c44e5bcb45e7945ffdc84a936d0a3d2e540c0f4f70`  
		Last Modified: Mon, 10 Sep 2018 20:23:02 GMT  
		Size: 1.8 MB (1815634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80255143a316fe9757ffe00ec06564ce979dfbb8ea2593b53fba2bdc083db86e`  
		Last Modified: Mon, 10 Sep 2018 20:23:01 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9a111e71ac12543ac90221c095f028f21da18286785437c7b6aa8354e385af0`  
		Last Modified: Mon, 10 Sep 2018 20:23:50 GMT  
		Size: 127.8 MB (127835056 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1c142e026f007c92968d211988ea04081d1ddcef11206a6de17735e6ba87285`  
		Last Modified: Mon, 10 Sep 2018 20:23:34 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d06dd1caa5929b60b08e6053952d40154aa204601a72c469703f6803f6327eac`  
		Last Modified: Mon, 10 Sep 2018 20:23:34 GMT  
		Size: 934.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:944e2fdac16e43c6f702ebfba6688d51efa6ff0309392f0928686ab490fe4a9e`  
		Last Modified: Mon, 10 Sep 2018 20:23:34 GMT  
		Size: 360.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd4a68e3fc8a906934d918138ef16bc0d440f78cc2d006076a4d78da4a728e13`  
		Last Modified: Mon, 10 Sep 2018 20:23:34 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:3.0`

```console
$ docker pull crate@sha256:9b6a58d95941320cc9a0378434ee4d5ee2f16a0932d1687b01f1eb0e0335239a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:3.0` - linux; amd64

```console
$ docker pull crate@sha256:309c83eba6b89de2fd9d95f269569a7b3b4dc9ababc0333efdc4e82cd646aac2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.0 MB (129951294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c351e99a8b995d01639489e647266a18ae711ad6bfc09f79cf19d75cc1a07a86`
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
# Tue, 11 Sep 2018 22:47:06 GMT
ENV CRATE_VERSION=3.0.6
# Tue, 11 Sep 2018 22:47:16 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Tue, 11 Sep 2018 22:47:16 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Sep 2018 22:47:16 GMT
ENV CRATE_HEAP_SIZE=512M
# Tue, 11 Sep 2018 22:47:17 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --fail --max-time 25 $(hostname):4200"] "30s" "30s" "0s" '\x00'}
# Tue, 11 Sep 2018 22:47:17 GMT
RUN mkdir -p /data/data /data/log
# Tue, 11 Sep 2018 22:47:17 GMT
VOLUME [/data]
# Tue, 11 Sep 2018 22:47:18 GMT
ADD file:5ffe7502a8e59c1690f1c10bd4f7c3843fa35e03c99223a05215c7b021cec1a1 in /crate/config/crate.yml 
# Tue, 11 Sep 2018 22:47:18 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Tue, 11 Sep 2018 22:47:19 GMT
COPY file:c6f6e45bb8f3e89d4a775eb38302ed557fb3c1d1db73b36eb9c21e4f3771a555 in /docker-entrypoint.sh 
# Tue, 11 Sep 2018 22:47:19 GMT
WORKDIR /data
# Tue, 11 Sep 2018 22:47:19 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Tue, 11 Sep 2018 22:47:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Sep 2018 22:47:20 GMT
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
	-	`sha256:4809c9ee5c11fd384fcebc3a78541b2fce0735694d9e805507a49def91e9d86e`  
		Last Modified: Tue, 11 Sep 2018 22:50:08 GMT  
		Size: 127.2 MB (127247645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64e93763963660bfb417e4d0a85252f0409c5e1d55ef43fc1e6f040b82c7a25`  
		Last Modified: Tue, 11 Sep 2018 22:49:54 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e8acb9c53a795108cc0482cb3b8f37455bf0ca7851b40c8172a0272c2ab4800`  
		Last Modified: Tue, 11 Sep 2018 22:49:54 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7168fbba35fcc18d4ab9a66ede740707078894c949b323b9e645f39a944d0066`  
		Last Modified: Tue, 11 Sep 2018 22:49:54 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e31b570d70447744c36eb3ffeb19a3e45863ad3bc7a71899fa5f6b6f7ac64d`  
		Last Modified: Tue, 11 Sep 2018 22:49:53 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:3.0.6`

```console
$ docker pull crate@sha256:9b6a58d95941320cc9a0378434ee4d5ee2f16a0932d1687b01f1eb0e0335239a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:3.0.6` - linux; amd64

```console
$ docker pull crate@sha256:309c83eba6b89de2fd9d95f269569a7b3b4dc9ababc0333efdc4e82cd646aac2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.0 MB (129951294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c351e99a8b995d01639489e647266a18ae711ad6bfc09f79cf19d75cc1a07a86`
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
# Tue, 11 Sep 2018 22:47:06 GMT
ENV CRATE_VERSION=3.0.6
# Tue, 11 Sep 2018 22:47:16 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Tue, 11 Sep 2018 22:47:16 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Sep 2018 22:47:16 GMT
ENV CRATE_HEAP_SIZE=512M
# Tue, 11 Sep 2018 22:47:17 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --fail --max-time 25 $(hostname):4200"] "30s" "30s" "0s" '\x00'}
# Tue, 11 Sep 2018 22:47:17 GMT
RUN mkdir -p /data/data /data/log
# Tue, 11 Sep 2018 22:47:17 GMT
VOLUME [/data]
# Tue, 11 Sep 2018 22:47:18 GMT
ADD file:5ffe7502a8e59c1690f1c10bd4f7c3843fa35e03c99223a05215c7b021cec1a1 in /crate/config/crate.yml 
# Tue, 11 Sep 2018 22:47:18 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Tue, 11 Sep 2018 22:47:19 GMT
COPY file:c6f6e45bb8f3e89d4a775eb38302ed557fb3c1d1db73b36eb9c21e4f3771a555 in /docker-entrypoint.sh 
# Tue, 11 Sep 2018 22:47:19 GMT
WORKDIR /data
# Tue, 11 Sep 2018 22:47:19 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Tue, 11 Sep 2018 22:47:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Sep 2018 22:47:20 GMT
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
	-	`sha256:4809c9ee5c11fd384fcebc3a78541b2fce0735694d9e805507a49def91e9d86e`  
		Last Modified: Tue, 11 Sep 2018 22:50:08 GMT  
		Size: 127.2 MB (127247645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64e93763963660bfb417e4d0a85252f0409c5e1d55ef43fc1e6f040b82c7a25`  
		Last Modified: Tue, 11 Sep 2018 22:49:54 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e8acb9c53a795108cc0482cb3b8f37455bf0ca7851b40c8172a0272c2ab4800`  
		Last Modified: Tue, 11 Sep 2018 22:49:54 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7168fbba35fcc18d4ab9a66ede740707078894c949b323b9e645f39a944d0066`  
		Last Modified: Tue, 11 Sep 2018 22:49:54 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e31b570d70447744c36eb3ffeb19a3e45863ad3bc7a71899fa5f6b6f7ac64d`  
		Last Modified: Tue, 11 Sep 2018 22:49:53 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:latest`

```console
$ docker pull crate@sha256:48b49d927e37f8ed83e8364fb659f34839d0d009415468f303fb0ba4db8f8ebb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:latest` - linux; amd64

```console
$ docker pull crate@sha256:96d6669bba16aa5516b9b61581e8850ce963eb49260e3c681d394d903be1407a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.2 MB (131170027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83c6ed3f9d43169ab6ce4d1aaebdfba1147bca6b566f885de3136f7939b4c851`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Mon, 10 Sep 2018 20:19:46 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Mon, 10 Sep 2018 20:19:46 GMT
ENV GOSU_VERSION=1.9
# Mon, 10 Sep 2018 20:19:51 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Mon, 10 Sep 2018 20:19:51 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Mon, 10 Sep 2018 20:19:51 GMT
ENV CRATE_VERSION=3.0.6
# Mon, 10 Sep 2018 20:20:11 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Mon, 10 Sep 2018 20:20:11 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Sep 2018 20:20:11 GMT
ENV CRATE_HEAP_SIZE=512M
# Mon, 10 Sep 2018 20:20:12 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --fail --max-time 25 $(hostname):4200"] "30s" "30s" "0s" '\x00'}
# Mon, 10 Sep 2018 20:20:12 GMT
RUN mkdir -p /data/data /data/log
# Mon, 10 Sep 2018 20:20:13 GMT
VOLUME [/data]
# Mon, 10 Sep 2018 20:20:13 GMT
ADD file:5ffe7502a8e59c1690f1c10bd4f7c3843fa35e03c99223a05215c7b021cec1a1 in /crate/config/crate.yml 
# Mon, 10 Sep 2018 20:20:13 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Mon, 10 Sep 2018 20:20:14 GMT
COPY file:c6f6e45bb8f3e89d4a775eb38302ed557fb3c1d1db73b36eb9c21e4f3771a555 in /docker-entrypoint.sh 
# Mon, 10 Sep 2018 20:20:14 GMT
WORKDIR /data
# Mon, 10 Sep 2018 20:20:14 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Mon, 10 Sep 2018 20:20:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 10 Sep 2018 20:20:15 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228d63e73fc15813217ee2c44e5bcb45e7945ffdc84a936d0a3d2e540c0f4f70`  
		Last Modified: Mon, 10 Sep 2018 20:23:02 GMT  
		Size: 1.8 MB (1815634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80255143a316fe9757ffe00ec06564ce979dfbb8ea2593b53fba2bdc083db86e`  
		Last Modified: Mon, 10 Sep 2018 20:23:01 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7912b723e7dbf5ccb8f4ee759aadfbd9971636fde751d1f5b3f703baae80ce72`  
		Last Modified: Mon, 10 Sep 2018 20:23:17 GMT  
		Size: 127.2 MB (127247790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:105e09b80bda4995bc2147b2809821c3d86093711cc6b8614aabbe6f2a9a8fbc`  
		Last Modified: Mon, 10 Sep 2018 20:23:00 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec983dfc24943d791e1580e0c29ed807b774edd6bbc18c6adc256cf77b50fe2`  
		Last Modified: Mon, 10 Sep 2018 20:23:01 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a983462c7a628e890b108c17cb9d2e6d2a0481b859682db2f748884291521685`  
		Last Modified: Mon, 10 Sep 2018 20:23:00 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:985920e40d9ebe6b3e01c0d2dc1f44bff593a8b7f2ec81061f127c86b1cc27d2`  
		Last Modified: Mon, 10 Sep 2018 20:23:00 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
