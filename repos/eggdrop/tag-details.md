<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `eggdrop`

-	[`eggdrop:1.8`](#eggdrop18)
-	[`eggdrop:1.8.3`](#eggdrop183)
-	[`eggdrop:1.8.4rc2`](#eggdrop184rc2)
-	[`eggdrop:develop`](#eggdropdevelop)
-	[`eggdrop:latest`](#eggdroplatest)
-	[`eggdrop:stable`](#eggdropstable)

## `eggdrop:1.8`

```console
$ docker pull eggdrop@sha256:24d44b7b936a47d173a5c3f5fa200fb064af8b51202d8be0a62fb1d770dd8b7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:1.8` - linux; amd64

```console
$ docker pull eggdrop@sha256:9b7fded17498b0ed82e15945be2cfeaff8abea32b044129b1cc6ee796571bb67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 MB (9554705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:320f3b437b23756f4528df9f20ea99aff59d71222b96a61d5db07939f7407260`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:00:53 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 21 Dec 2018 04:00:53 GMT
RUN adduser -S eggdrop
# Fri, 21 Dec 2018 04:00:54 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 21 Dec 2018 04:02:08 GMT
RUN apk add --no-cache tcl bash openssl
# Fri, 21 Dec 2018 04:03:01 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.3.tar.gz.asc eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz.asc   && tar -zxvf eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz   && ( cd eggdrop-1.8.3     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.3   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Fri, 21 Dec 2018 04:03:01 GMT
ENV NICK=
# Fri, 21 Dec 2018 04:03:01 GMT
ENV SERVER=
# Fri, 21 Dec 2018 04:03:01 GMT
ENV LISTEN=3333
# Fri, 21 Dec 2018 04:03:01 GMT
ENV OWNER=
# Fri, 21 Dec 2018 04:03:02 GMT
ENV USERFILE=eggdrop.user
# Fri, 21 Dec 2018 04:03:02 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 21 Dec 2018 04:03:02 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 21 Dec 2018 04:03:02 GMT
EXPOSE 3333
# Fri, 21 Dec 2018 04:03:02 GMT
COPY file:f8d85155d39ecdefdd2ce710ca8c1211edaffb7c3fbbde0877da166dd3aaa579 in /home/eggdrop/eggdrop 
# Fri, 21 Dec 2018 04:03:03 GMT
COPY file:b76e92fb28997fa3fd71a3b880ff3b73567ca05021b617d51ebdcefd8c31b457 in /home/eggdrop/eggdrop/scripts/ 
# Fri, 21 Dec 2018 04:03:03 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 21 Dec 2018 04:03:03 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c14c4b4669100484eb345d29f0c9636d64a9aa80000c00cfb724da09e1856ebb`  
		Last Modified: Fri, 21 Dec 2018 04:04:18 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef340cf9f0a5755271dd055f660fbe00021f3bc4924d1ac4b985af02b6d1288c`  
		Last Modified: Fri, 21 Dec 2018 04:04:17 GMT  
		Size: 8.9 KB (8851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b4ae01f64cb208e4026906949f4ce841bc695df6b9e63a35d426a953f07ee8`  
		Last Modified: Fri, 21 Dec 2018 04:04:23 GMT  
		Size: 4.4 MB (4402965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fdd1e18a149530f29ad53c78da63360ccc06ea81d84bbaaa1804b7c90ab025d`  
		Last Modified: Fri, 21 Dec 2018 04:04:23 GMT  
		Size: 3.0 MB (3031894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c383191674bef9d091cbc68e69b46a86546f4295c89b3a1ef729dd2fb6d05e`  
		Last Modified: Fri, 21 Dec 2018 04:04:22 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:888af151d20cec088659a5edfc1084e0c44b9e9e580657bfb6569161169a9bf0`  
		Last Modified: Fri, 21 Dec 2018 04:04:22 GMT  
		Size: 704.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8.3`

```console
$ docker pull eggdrop@sha256:24d44b7b936a47d173a5c3f5fa200fb064af8b51202d8be0a62fb1d770dd8b7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:1.8.3` - linux; amd64

```console
$ docker pull eggdrop@sha256:9b7fded17498b0ed82e15945be2cfeaff8abea32b044129b1cc6ee796571bb67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 MB (9554705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:320f3b437b23756f4528df9f20ea99aff59d71222b96a61d5db07939f7407260`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:00:53 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 21 Dec 2018 04:00:53 GMT
RUN adduser -S eggdrop
# Fri, 21 Dec 2018 04:00:54 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 21 Dec 2018 04:02:08 GMT
RUN apk add --no-cache tcl bash openssl
# Fri, 21 Dec 2018 04:03:01 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.3.tar.gz.asc eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz.asc   && tar -zxvf eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz   && ( cd eggdrop-1.8.3     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.3   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Fri, 21 Dec 2018 04:03:01 GMT
ENV NICK=
# Fri, 21 Dec 2018 04:03:01 GMT
ENV SERVER=
# Fri, 21 Dec 2018 04:03:01 GMT
ENV LISTEN=3333
# Fri, 21 Dec 2018 04:03:01 GMT
ENV OWNER=
# Fri, 21 Dec 2018 04:03:02 GMT
ENV USERFILE=eggdrop.user
# Fri, 21 Dec 2018 04:03:02 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 21 Dec 2018 04:03:02 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 21 Dec 2018 04:03:02 GMT
EXPOSE 3333
# Fri, 21 Dec 2018 04:03:02 GMT
COPY file:f8d85155d39ecdefdd2ce710ca8c1211edaffb7c3fbbde0877da166dd3aaa579 in /home/eggdrop/eggdrop 
# Fri, 21 Dec 2018 04:03:03 GMT
COPY file:b76e92fb28997fa3fd71a3b880ff3b73567ca05021b617d51ebdcefd8c31b457 in /home/eggdrop/eggdrop/scripts/ 
# Fri, 21 Dec 2018 04:03:03 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 21 Dec 2018 04:03:03 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c14c4b4669100484eb345d29f0c9636d64a9aa80000c00cfb724da09e1856ebb`  
		Last Modified: Fri, 21 Dec 2018 04:04:18 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef340cf9f0a5755271dd055f660fbe00021f3bc4924d1ac4b985af02b6d1288c`  
		Last Modified: Fri, 21 Dec 2018 04:04:17 GMT  
		Size: 8.9 KB (8851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b4ae01f64cb208e4026906949f4ce841bc695df6b9e63a35d426a953f07ee8`  
		Last Modified: Fri, 21 Dec 2018 04:04:23 GMT  
		Size: 4.4 MB (4402965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fdd1e18a149530f29ad53c78da63360ccc06ea81d84bbaaa1804b7c90ab025d`  
		Last Modified: Fri, 21 Dec 2018 04:04:23 GMT  
		Size: 3.0 MB (3031894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c383191674bef9d091cbc68e69b46a86546f4295c89b3a1ef729dd2fb6d05e`  
		Last Modified: Fri, 21 Dec 2018 04:04:22 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:888af151d20cec088659a5edfc1084e0c44b9e9e580657bfb6569161169a9bf0`  
		Last Modified: Fri, 21 Dec 2018 04:04:22 GMT  
		Size: 704.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8.4rc2`

```console
$ docker pull eggdrop@sha256:db6d07bb2cedc86c6ed61fcc4ed028c56f0e2679d3ed78552cd81afffe28205c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `eggdrop:1.8.4rc2` - linux; amd64

```console
$ docker pull eggdrop@sha256:ac16f039dab1c5438046fbe01eb9b7c00dd18de863b80de3f84ca01efb278fa9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 MB (9572850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b5b3ed588aea5d7ea00bcadf1431072fd11b557a8ab1851d81a1abeeecc659d`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:00:53 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 21 Dec 2018 04:00:53 GMT
RUN adduser -S eggdrop
# Fri, 21 Dec 2018 04:00:54 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 21 Dec 2018 04:02:08 GMT
RUN apk add --no-cache tcl bash openssl
# Fri, 21 Dec 2018 04:03:58 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.4rc2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.4rc2.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.4rc2.tar.gz.asc eggdrop-1.8.4rc2.tar.gz   && command -v gpgconf > /dev/null   && gpgconf --kill all   && rm eggdrop-1.8.4rc2.tar.gz.asc   && tar -zxvf eggdrop-1.8.4rc2.tar.gz   && rm eggdrop-1.8.4rc2.tar.gz   && ( cd eggdrop-1.8.4rc2     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.4rc2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Fri, 21 Dec 2018 04:03:58 GMT
ENV NICK=
# Fri, 21 Dec 2018 04:03:58 GMT
ENV SERVER=
# Fri, 21 Dec 2018 04:03:58 GMT
ENV LISTEN=3333
# Fri, 21 Dec 2018 04:03:58 GMT
ENV OWNER=
# Fri, 21 Dec 2018 04:03:59 GMT
ENV USERFILE=eggdrop.user
# Fri, 21 Dec 2018 04:03:59 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 21 Dec 2018 04:03:59 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 21 Dec 2018 04:03:59 GMT
EXPOSE 3333
# Fri, 21 Dec 2018 04:03:59 GMT
COPY file:f8d85155d39ecdefdd2ce710ca8c1211edaffb7c3fbbde0877da166dd3aaa579 in /home/eggdrop/eggdrop 
# Fri, 21 Dec 2018 04:04:00 GMT
COPY file:b76e92fb28997fa3fd71a3b880ff3b73567ca05021b617d51ebdcefd8c31b457 in /home/eggdrop/eggdrop/scripts/ 
# Fri, 21 Dec 2018 04:04:00 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 21 Dec 2018 04:04:00 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c14c4b4669100484eb345d29f0c9636d64a9aa80000c00cfb724da09e1856ebb`  
		Last Modified: Fri, 21 Dec 2018 04:04:18 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef340cf9f0a5755271dd055f660fbe00021f3bc4924d1ac4b985af02b6d1288c`  
		Last Modified: Fri, 21 Dec 2018 04:04:17 GMT  
		Size: 8.9 KB (8851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b4ae01f64cb208e4026906949f4ce841bc695df6b9e63a35d426a953f07ee8`  
		Last Modified: Fri, 21 Dec 2018 04:04:23 GMT  
		Size: 4.4 MB (4402965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb0ec31bdd3618f28b20be1753bed799df9d65ac645ff0b98d1807e1950a407a`  
		Last Modified: Fri, 21 Dec 2018 04:04:29 GMT  
		Size: 3.1 MB (3050046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d5a74b97d3a593e2fe8cac62f327deeb36120f96dcd4aae32b0fbca332ef79`  
		Last Modified: Fri, 21 Dec 2018 04:04:28 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969cc1af720bf071e1093fc2b037dddeaede3b29731528f915ed90685ca23084`  
		Last Modified: Fri, 21 Dec 2018 04:04:29 GMT  
		Size: 699.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eggdrop:1.8.4rc2` - linux; arm variant v6

```console
$ docker pull eggdrop@sha256:f0d39018361171c51912a47622f9f5d3f58ac438f53b9b2c144299691830dfb3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.0 MB (9017875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a9faf74c8e85571c1c44375147389e4969f9cf9762857e119c5290981690d29`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:41 GMT
ADD file:49a7d389086046d6fa37e72b7f9dc0c3b1fa155b694554609ed2c95a5504e172 in / 
# Fri, 21 Dec 2018 08:49:41 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:42 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:13:36 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 21 Dec 2018 09:13:38 GMT
RUN adduser -S eggdrop
# Fri, 21 Dec 2018 09:13:39 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 21 Dec 2018 09:15:39 GMT
RUN apk add --no-cache tcl bash openssl
# Fri, 21 Dec 2018 09:17:11 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.4rc2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.4rc2.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.4rc2.tar.gz.asc eggdrop-1.8.4rc2.tar.gz   && command -v gpgconf > /dev/null   && gpgconf --kill all   && rm eggdrop-1.8.4rc2.tar.gz.asc   && tar -zxvf eggdrop-1.8.4rc2.tar.gz   && rm eggdrop-1.8.4rc2.tar.gz   && ( cd eggdrop-1.8.4rc2     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.4rc2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Fri, 21 Dec 2018 09:17:11 GMT
ENV NICK=
# Fri, 21 Dec 2018 09:17:11 GMT
ENV SERVER=
# Fri, 21 Dec 2018 09:17:12 GMT
ENV LISTEN=3333
# Fri, 21 Dec 2018 09:17:12 GMT
ENV OWNER=
# Fri, 21 Dec 2018 09:17:12 GMT
ENV USERFILE=eggdrop.user
# Fri, 21 Dec 2018 09:17:13 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 21 Dec 2018 09:17:13 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 21 Dec 2018 09:17:13 GMT
EXPOSE 3333
# Fri, 21 Dec 2018 09:17:14 GMT
COPY file:f8d85155d39ecdefdd2ce710ca8c1211edaffb7c3fbbde0877da166dd3aaa579 in /home/eggdrop/eggdrop 
# Fri, 21 Dec 2018 09:17:14 GMT
COPY file:b76e92fb28997fa3fd71a3b880ff3b73567ca05021b617d51ebdcefd8c31b457 in /home/eggdrop/eggdrop/scripts/ 
# Fri, 21 Dec 2018 09:17:14 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 21 Dec 2018 09:17:15 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:786f62ef66aef5b82d01dc251c095789af4cc746f6279dcc8011023d019b70fb`  
		Last Modified: Tue, 18 Sep 2018 13:06:58 GMT  
		Size: 2.1 MB (2050505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4271bf13258b585def40291fcb3b0490ce089b76fe80a5f1aa672e925ec81bcb`  
		Last Modified: Fri, 21 Dec 2018 08:50:13 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d276a2989eba6103f7d3b35eb9aa5480fd489058b90f00fe4e59515b2b91758`  
		Last Modified: Fri, 21 Dec 2018 09:17:24 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40cdfc79a28c0fde016d9dc927c658dd6b40c3370ad83c1246618e73b768a54`  
		Last Modified: Fri, 21 Dec 2018 09:17:23 GMT  
		Size: 9.0 KB (9018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd26503708e88d7e8beaeac57697d24c58618d455bd367822525474855cf73e`  
		Last Modified: Fri, 21 Dec 2018 09:17:34 GMT  
		Size: 3.9 MB (3946081 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6861b33f795bafd0aef3335ce2a32ea46e8b7f5dc5ed9a709745f7dcf1919a1a`  
		Last Modified: Fri, 21 Dec 2018 09:17:56 GMT  
		Size: 3.0 MB (3008227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db587eea564d04131dbc44b0d86988f6393e44acba4e04398c67497dd63d8129`  
		Last Modified: Fri, 21 Dec 2018 09:17:32 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f5c2d0cb9f92ba6dd2b47a49b04e8c2f8b51b82c5f0d94896c0d016dd9152bc`  
		Last Modified: Fri, 21 Dec 2018 09:17:32 GMT  
		Size: 703.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eggdrop:1.8.4rc2` - linux; arm64 variant v8

```console
$ docker pull eggdrop@sha256:b7fb77def90ce6ca6470f3fcc41df16b765d5ae7b5fc4a143a095fcd84a91f87
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8935175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b81dc29533790f639e8957e93348e6f69b7608c0ffcc531e6db608a095d40e39`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Wed, 12 Sep 2018 08:41:29 GMT
ADD file:d7effd9b71d0299a88ead16cb21ff39bd03c51dcd49408147c06b40183157703 in / 
# Wed, 12 Sep 2018 08:41:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:41:31 GMT
CMD ["/bin/sh"]
# Wed, 03 Oct 2018 08:46:28 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Wed, 03 Oct 2018 08:46:31 GMT
RUN adduser -S eggdrop
# Wed, 03 Oct 2018 08:46:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 13 Dec 2018 09:47:05 GMT
RUN apk add --no-cache tcl bash openssl
# Tue, 18 Dec 2018 09:45:12 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.4rc2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.4rc2.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.4rc2.tar.gz.asc eggdrop-1.8.4rc2.tar.gz   && command -v gpgconf > /dev/null   && gpgconf --kill all   && rm eggdrop-1.8.4rc2.tar.gz.asc   && tar -zxvf eggdrop-1.8.4rc2.tar.gz   && rm eggdrop-1.8.4rc2.tar.gz   && ( cd eggdrop-1.8.4rc2     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.4rc2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Tue, 18 Dec 2018 09:47:29 GMT
ENV NICK=
# Tue, 18 Dec 2018 09:47:30 GMT
ENV SERVER=
# Tue, 18 Dec 2018 09:47:31 GMT
ENV LISTEN=3333
# Tue, 18 Dec 2018 09:47:32 GMT
ENV OWNER=
# Tue, 18 Dec 2018 09:47:33 GMT
ENV USERFILE=eggdrop.user
# Tue, 18 Dec 2018 09:47:34 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 18 Dec 2018 09:47:34 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 18 Dec 2018 09:47:35 GMT
EXPOSE 3333
# Tue, 18 Dec 2018 09:47:36 GMT
COPY file:f8d85155d39ecdefdd2ce710ca8c1211edaffb7c3fbbde0877da166dd3aaa579 in /home/eggdrop/eggdrop 
# Tue, 18 Dec 2018 09:47:37 GMT
COPY file:b76e92fb28997fa3fd71a3b880ff3b73567ca05021b617d51ebdcefd8c31b457 in /home/eggdrop/eggdrop/scripts/ 
# Tue, 18 Dec 2018 09:47:38 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 18 Dec 2018 09:47:43 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:f0599ed267cb750a3c0ebeb55004b5a818b7e9a7e8071b49e687d11349556868`  
		Last Modified: Wed, 12 Sep 2018 08:44:25 GMT  
		Size: 2.0 MB (1999171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e2c71dece06bcd39f8fb81b4fae422241fd8bfca8b0cb16ea4bc4b77c87f4af`  
		Last Modified: Wed, 12 Sep 2018 08:44:23 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8489f1d3ccba5cd1059bda2c6b3a87304e742e90bd2e5b1d682df55624488f00`  
		Last Modified: Wed, 03 Oct 2018 08:49:33 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:086501517a1a0795c22b820345422379892d331c80456147a5dcee79ba1f366b`  
		Last Modified: Wed, 03 Oct 2018 08:49:31 GMT  
		Size: 9.0 KB (8979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac18aecaaab9f9d1a6d4ad4dad23ef1c8c04b2c65a5f43fb72e0538e7bbbff8e`  
		Last Modified: Thu, 13 Dec 2018 09:49:54 GMT  
		Size: 3.9 MB (3913276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da237ed4fb4dff95b62354785e9b7f8b56e828dfbae1c653429d32477c63d05f`  
		Last Modified: Tue, 18 Dec 2018 09:48:00 GMT  
		Size: 3.0 MB (3009725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f606002535d919ac888facc1e3e685d71b9cfd7c3a4b162467a5c2b0c0f48021`  
		Last Modified: Tue, 18 Dec 2018 09:47:59 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f5f2b656a76149a68d1528ce592bae9bf3a88f050e373247f267d9d109bb7a4`  
		Last Modified: Tue, 18 Dec 2018 09:47:59 GMT  
		Size: 708.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:e50b40fd2be8557272272afc9f90a4c49fd658ae7c61119f352c0fc73ee49d5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `eggdrop:develop` - linux; amd64

```console
$ docker pull eggdrop@sha256:1e849396da73eb6f376eed602d884686a162bd9a18c3134edc62be9b1380bc3d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13912917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:758737a7792447b046ac699fc676e29567f97812814ee49de8440cc70eccda2e`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:00:53 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 21 Dec 2018 04:00:53 GMT
RUN adduser -S eggdrop
# Fri, 21 Dec 2018 04:00:54 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 21 Dec 2018 04:00:54 GMT
ENV EGGDROP_SHA256=18839206eddcc529205328639c064f152316afd240b0ad5df1b53f3ccf623cbf
# Fri, 21 Dec 2018 04:00:55 GMT
ENV EGGDROP_COMMIT=35808b2bcaaf6a81e43835e4e18ecb4848ded75a
# Fri, 21 Dec 2018 04:00:57 GMT
RUN apk --update add --no-cache tcl bash openssl
# Fri, 21 Dec 2018 04:01:49 GMT
RUN apk --update add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Fri, 21 Dec 2018 04:01:50 GMT
ENV NICK=
# Fri, 21 Dec 2018 04:01:50 GMT
ENV SERVER=
# Fri, 21 Dec 2018 04:01:51 GMT
ENV LISTEN=3333
# Fri, 21 Dec 2018 04:01:52 GMT
ENV OWNER=
# Fri, 21 Dec 2018 04:01:53 GMT
ENV USERFILE=eggdrop.user
# Fri, 21 Dec 2018 04:01:54 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 21 Dec 2018 04:01:54 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 21 Dec 2018 04:01:54 GMT
EXPOSE 3333
# Fri, 21 Dec 2018 04:01:54 GMT
COPY file:f8d85155d39ecdefdd2ce710ca8c1211edaffb7c3fbbde0877da166dd3aaa579 in /home/eggdrop/eggdrop 
# Fri, 21 Dec 2018 04:01:54 GMT
COPY file:b76e92fb28997fa3fd71a3b880ff3b73567ca05021b617d51ebdcefd8c31b457 in /home/eggdrop/eggdrop/scripts/ 
# Fri, 21 Dec 2018 04:01:55 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 21 Dec 2018 04:01:55 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c14c4b4669100484eb345d29f0c9636d64a9aa80000c00cfb724da09e1856ebb`  
		Last Modified: Fri, 21 Dec 2018 04:04:18 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef340cf9f0a5755271dd055f660fbe00021f3bc4924d1ac4b985af02b6d1288c`  
		Last Modified: Fri, 21 Dec 2018 04:04:17 GMT  
		Size: 8.9 KB (8851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68eec0b18ba314911374f4f7ebc240c751b5070e42e2281bedac0bc2794c18a8`  
		Last Modified: Fri, 21 Dec 2018 04:04:19 GMT  
		Size: 4.4 MB (4403026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6fd5fd8005f87a0f6c7820f24364cda932d3d1bc159dbac7104156a4ec7d9d7`  
		Last Modified: Fri, 21 Dec 2018 04:04:19 GMT  
		Size: 7.4 MB (7390053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c1062059bad5011514d16cf12d390b0688c671bc9246b1a709161eb8b82b26`  
		Last Modified: Fri, 21 Dec 2018 04:04:17 GMT  
		Size: 1.9 KB (1876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f8d1f915d4377a271107d347715d84b69c7d254bed7e89ecc6867499606b27d`  
		Last Modified: Fri, 21 Dec 2018 04:04:17 GMT  
		Size: 699.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eggdrop:develop` - linux; arm variant v6

```console
$ docker pull eggdrop@sha256:1b16bd4701db0fb76437759eac1afc19dac468ff584811fed64fab560fca6720
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13355496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79867e1b6fcbaee259c797609c8f66f916de8f8bbb612e3a22f574350a225a87`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:41 GMT
ADD file:49a7d389086046d6fa37e72b7f9dc0c3b1fa155b694554609ed2c95a5504e172 in / 
# Fri, 21 Dec 2018 08:49:41 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:42 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:13:36 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 21 Dec 2018 09:13:38 GMT
RUN adduser -S eggdrop
# Fri, 21 Dec 2018 09:13:39 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 21 Dec 2018 09:13:39 GMT
ENV EGGDROP_SHA256=18839206eddcc529205328639c064f152316afd240b0ad5df1b53f3ccf623cbf
# Fri, 21 Dec 2018 09:13:40 GMT
ENV EGGDROP_COMMIT=35808b2bcaaf6a81e43835e4e18ecb4848ded75a
# Fri, 21 Dec 2018 09:13:44 GMT
RUN apk --update add --no-cache tcl bash openssl
# Fri, 21 Dec 2018 09:15:21 GMT
RUN apk --update add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Fri, 21 Dec 2018 09:15:21 GMT
ENV NICK=
# Fri, 21 Dec 2018 09:15:22 GMT
ENV SERVER=
# Fri, 21 Dec 2018 09:15:22 GMT
ENV LISTEN=3333
# Fri, 21 Dec 2018 09:15:22 GMT
ENV OWNER=
# Fri, 21 Dec 2018 09:15:23 GMT
ENV USERFILE=eggdrop.user
# Fri, 21 Dec 2018 09:15:23 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 21 Dec 2018 09:15:23 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 21 Dec 2018 09:15:24 GMT
EXPOSE 3333
# Fri, 21 Dec 2018 09:15:24 GMT
COPY file:f8d85155d39ecdefdd2ce710ca8c1211edaffb7c3fbbde0877da166dd3aaa579 in /home/eggdrop/eggdrop 
# Fri, 21 Dec 2018 09:15:24 GMT
COPY file:b76e92fb28997fa3fd71a3b880ff3b73567ca05021b617d51ebdcefd8c31b457 in /home/eggdrop/eggdrop/scripts/ 
# Fri, 21 Dec 2018 09:15:25 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 21 Dec 2018 09:15:25 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:786f62ef66aef5b82d01dc251c095789af4cc746f6279dcc8011023d019b70fb`  
		Last Modified: Tue, 18 Sep 2018 13:06:58 GMT  
		Size: 2.1 MB (2050505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4271bf13258b585def40291fcb3b0490ce089b76fe80a5f1aa672e925ec81bcb`  
		Last Modified: Fri, 21 Dec 2018 08:50:13 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d276a2989eba6103f7d3b35eb9aa5480fd489058b90f00fe4e59515b2b91758`  
		Last Modified: Fri, 21 Dec 2018 09:17:24 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b40cdfc79a28c0fde016d9dc927c658dd6b40c3370ad83c1246618e73b768a54`  
		Last Modified: Fri, 21 Dec 2018 09:17:23 GMT  
		Size: 9.0 KB (9018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cdd2166c4f7bf5423a84ca9791c2de02c8ef929ae6b6dfd0c17d77697cdfeb09`  
		Last Modified: Fri, 21 Dec 2018 09:17:25 GMT  
		Size: 3.9 MB (3946094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5550e4b86fe7954638067f9ab23cdb64d496e61d7a4e7447640a0b310253be48`  
		Last Modified: Fri, 21 Dec 2018 09:17:29 GMT  
		Size: 7.3 MB (7345843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4777b17df4c8ce7c1a6de16873f01835891b29dc7fd535b30331d20ab5edb6f7`  
		Last Modified: Fri, 21 Dec 2018 09:17:23 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ed60bb9a8c8df11814ff9edae041978103cbcc6e2dca83a28c3887325c77a7`  
		Last Modified: Fri, 21 Dec 2018 09:17:23 GMT  
		Size: 699.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eggdrop:develop` - linux; arm64 variant v8

```console
$ docker pull eggdrop@sha256:e29ac3c0ff0fb51230f70ce2d7772e965f1d8d018d034f6ffeb7bc2b87871bc5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13283976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ef6577620e1f9d4f07ab626f65721709ee54ab8e0089f68726e03072ca6d204`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Wed, 12 Sep 2018 08:41:29 GMT
ADD file:d7effd9b71d0299a88ead16cb21ff39bd03c51dcd49408147c06b40183157703 in / 
# Wed, 12 Sep 2018 08:41:30 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:41:31 GMT
CMD ["/bin/sh"]
# Wed, 03 Oct 2018 08:46:28 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Wed, 03 Oct 2018 08:46:31 GMT
RUN adduser -S eggdrop
# Wed, 03 Oct 2018 08:46:33 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 13 Dec 2018 09:44:21 GMT
ENV EGGDROP_SHA256=18839206eddcc529205328639c064f152316afd240b0ad5df1b53f3ccf623cbf
# Thu, 13 Dec 2018 09:44:21 GMT
ENV EGGDROP_COMMIT=35808b2bcaaf6a81e43835e4e18ecb4848ded75a
# Thu, 13 Dec 2018 09:44:26 GMT
RUN apk --update add --no-cache tcl bash openssl
# Thu, 13 Dec 2018 09:46:30 GMT
RUN apk --update add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Thu, 13 Dec 2018 09:46:31 GMT
ENV NICK=
# Thu, 13 Dec 2018 09:46:31 GMT
ENV SERVER=
# Thu, 13 Dec 2018 09:46:32 GMT
ENV LISTEN=3333
# Thu, 13 Dec 2018 09:46:32 GMT
ENV OWNER=
# Thu, 13 Dec 2018 09:46:33 GMT
ENV USERFILE=eggdrop.user
# Thu, 13 Dec 2018 09:46:34 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 13 Dec 2018 09:46:34 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 13 Dec 2018 09:46:35 GMT
EXPOSE 3333/tcp
# Thu, 13 Dec 2018 09:46:36 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Thu, 13 Dec 2018 09:46:36 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Thu, 13 Dec 2018 09:46:37 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 13 Dec 2018 09:46:38 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:f0599ed267cb750a3c0ebeb55004b5a818b7e9a7e8071b49e687d11349556868`  
		Last Modified: Wed, 12 Sep 2018 08:44:25 GMT  
		Size: 2.0 MB (1999171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e2c71dece06bcd39f8fb81b4fae422241fd8bfca8b0cb16ea4bc4b77c87f4af`  
		Last Modified: Wed, 12 Sep 2018 08:44:23 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8489f1d3ccba5cd1059bda2c6b3a87304e742e90bd2e5b1d682df55624488f00`  
		Last Modified: Wed, 03 Oct 2018 08:49:33 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:086501517a1a0795c22b820345422379892d331c80456147a5dcee79ba1f366b`  
		Last Modified: Wed, 03 Oct 2018 08:49:31 GMT  
		Size: 9.0 KB (8979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46eb0ef86656e58a75ad7f81335f482c926c9734a5f4c291e797f230d65cad44`  
		Last Modified: Thu, 13 Dec 2018 09:49:36 GMT  
		Size: 3.9 MB (3913312 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b59b16fcc85ca2bada6af7b5bdf9946d2e5f29b3ae15a20a6119c860f73c5ca9`  
		Last Modified: Thu, 13 Dec 2018 09:49:36 GMT  
		Size: 7.4 MB (7358492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc34ecb9db3195dca70c62977803f6853b514ad8f51c851d756f00d22d878638`  
		Last Modified: Thu, 13 Dec 2018 09:49:34 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6ba49369da1be86106b88f0116d009b505c42c3c92047732eb917cd0f40767`  
		Last Modified: Thu, 13 Dec 2018 09:49:34 GMT  
		Size: 706.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:latest`

```console
$ docker pull eggdrop@sha256:24d44b7b936a47d173a5c3f5fa200fb064af8b51202d8be0a62fb1d770dd8b7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:latest` - linux; amd64

```console
$ docker pull eggdrop@sha256:9b7fded17498b0ed82e15945be2cfeaff8abea32b044129b1cc6ee796571bb67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 MB (9554705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:320f3b437b23756f4528df9f20ea99aff59d71222b96a61d5db07939f7407260`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:00:53 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 21 Dec 2018 04:00:53 GMT
RUN adduser -S eggdrop
# Fri, 21 Dec 2018 04:00:54 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 21 Dec 2018 04:02:08 GMT
RUN apk add --no-cache tcl bash openssl
# Fri, 21 Dec 2018 04:03:01 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.3.tar.gz.asc eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz.asc   && tar -zxvf eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz   && ( cd eggdrop-1.8.3     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.3   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Fri, 21 Dec 2018 04:03:01 GMT
ENV NICK=
# Fri, 21 Dec 2018 04:03:01 GMT
ENV SERVER=
# Fri, 21 Dec 2018 04:03:01 GMT
ENV LISTEN=3333
# Fri, 21 Dec 2018 04:03:01 GMT
ENV OWNER=
# Fri, 21 Dec 2018 04:03:02 GMT
ENV USERFILE=eggdrop.user
# Fri, 21 Dec 2018 04:03:02 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 21 Dec 2018 04:03:02 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 21 Dec 2018 04:03:02 GMT
EXPOSE 3333
# Fri, 21 Dec 2018 04:03:02 GMT
COPY file:f8d85155d39ecdefdd2ce710ca8c1211edaffb7c3fbbde0877da166dd3aaa579 in /home/eggdrop/eggdrop 
# Fri, 21 Dec 2018 04:03:03 GMT
COPY file:b76e92fb28997fa3fd71a3b880ff3b73567ca05021b617d51ebdcefd8c31b457 in /home/eggdrop/eggdrop/scripts/ 
# Fri, 21 Dec 2018 04:03:03 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 21 Dec 2018 04:03:03 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c14c4b4669100484eb345d29f0c9636d64a9aa80000c00cfb724da09e1856ebb`  
		Last Modified: Fri, 21 Dec 2018 04:04:18 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef340cf9f0a5755271dd055f660fbe00021f3bc4924d1ac4b985af02b6d1288c`  
		Last Modified: Fri, 21 Dec 2018 04:04:17 GMT  
		Size: 8.9 KB (8851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b4ae01f64cb208e4026906949f4ce841bc695df6b9e63a35d426a953f07ee8`  
		Last Modified: Fri, 21 Dec 2018 04:04:23 GMT  
		Size: 4.4 MB (4402965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fdd1e18a149530f29ad53c78da63360ccc06ea81d84bbaaa1804b7c90ab025d`  
		Last Modified: Fri, 21 Dec 2018 04:04:23 GMT  
		Size: 3.0 MB (3031894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c383191674bef9d091cbc68e69b46a86546f4295c89b3a1ef729dd2fb6d05e`  
		Last Modified: Fri, 21 Dec 2018 04:04:22 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:888af151d20cec088659a5edfc1084e0c44b9e9e580657bfb6569161169a9bf0`  
		Last Modified: Fri, 21 Dec 2018 04:04:22 GMT  
		Size: 704.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:stable`

```console
$ docker pull eggdrop@sha256:24d44b7b936a47d173a5c3f5fa200fb064af8b51202d8be0a62fb1d770dd8b7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:stable` - linux; amd64

```console
$ docker pull eggdrop@sha256:9b7fded17498b0ed82e15945be2cfeaff8abea32b044129b1cc6ee796571bb67
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 MB (9554705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:320f3b437b23756f4528df9f20ea99aff59d71222b96a61d5db07939f7407260`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 04:00:53 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Fri, 21 Dec 2018 04:00:53 GMT
RUN adduser -S eggdrop
# Fri, 21 Dec 2018 04:00:54 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 21 Dec 2018 04:02:08 GMT
RUN apk add --no-cache tcl bash openssl
# Fri, 21 Dec 2018 04:03:01 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.3.tar.gz.asc eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz.asc   && tar -zxvf eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz   && ( cd eggdrop-1.8.3     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.3   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Fri, 21 Dec 2018 04:03:01 GMT
ENV NICK=
# Fri, 21 Dec 2018 04:03:01 GMT
ENV SERVER=
# Fri, 21 Dec 2018 04:03:01 GMT
ENV LISTEN=3333
# Fri, 21 Dec 2018 04:03:01 GMT
ENV OWNER=
# Fri, 21 Dec 2018 04:03:02 GMT
ENV USERFILE=eggdrop.user
# Fri, 21 Dec 2018 04:03:02 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 21 Dec 2018 04:03:02 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 21 Dec 2018 04:03:02 GMT
EXPOSE 3333
# Fri, 21 Dec 2018 04:03:02 GMT
COPY file:f8d85155d39ecdefdd2ce710ca8c1211edaffb7c3fbbde0877da166dd3aaa579 in /home/eggdrop/eggdrop 
# Fri, 21 Dec 2018 04:03:03 GMT
COPY file:b76e92fb28997fa3fd71a3b880ff3b73567ca05021b617d51ebdcefd8c31b457 in /home/eggdrop/eggdrop/scripts/ 
# Fri, 21 Dec 2018 04:03:03 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 21 Dec 2018 04:03:03 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c14c4b4669100484eb345d29f0c9636d64a9aa80000c00cfb724da09e1856ebb`  
		Last Modified: Fri, 21 Dec 2018 04:04:18 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef340cf9f0a5755271dd055f660fbe00021f3bc4924d1ac4b985af02b6d1288c`  
		Last Modified: Fri, 21 Dec 2018 04:04:17 GMT  
		Size: 8.9 KB (8851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b4ae01f64cb208e4026906949f4ce841bc695df6b9e63a35d426a953f07ee8`  
		Last Modified: Fri, 21 Dec 2018 04:04:23 GMT  
		Size: 4.4 MB (4402965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fdd1e18a149530f29ad53c78da63360ccc06ea81d84bbaaa1804b7c90ab025d`  
		Last Modified: Fri, 21 Dec 2018 04:04:23 GMT  
		Size: 3.0 MB (3031894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c383191674bef9d091cbc68e69b46a86546f4295c89b3a1ef729dd2fb6d05e`  
		Last Modified: Fri, 21 Dec 2018 04:04:22 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:888af151d20cec088659a5edfc1084e0c44b9e9e580657bfb6569161169a9bf0`  
		Last Modified: Fri, 21 Dec 2018 04:04:22 GMT  
		Size: 704.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
