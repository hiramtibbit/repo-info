<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `eggdrop`

-	[`eggdrop:1.6`](#eggdrop16)
-	[`eggdrop:1.6.21`](#eggdrop1621)
-	[`eggdrop:1.8`](#eggdrop18)
-	[`eggdrop:1.8.3`](#eggdrop183)
-	[`eggdrop:develop`](#eggdropdevelop)
-	[`eggdrop:latest`](#eggdroplatest)
-	[`eggdrop:stable`](#eggdropstable)

## `eggdrop:1.6`

```console
$ docker pull eggdrop@sha256:126ccff586bc19922cf24c834c3625b6ecce12789bd836695215c903fcb01633
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:1.6` - linux; amd64

```console
$ docker pull eggdrop@sha256:d14a5a209c7a126364e60a5c06b1986789abffb116940239351a96ccf933e999
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6109915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e988106e1d0adce429dba46c1fac6c12977258a95c9149d75153bcc3a0196f31`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 03:30:24 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Wed, 10 Jan 2018 03:30:25 GMT
RUN adduser -S eggdrop
# Wed, 10 Jan 2018 03:30:28 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 Jan 2018 03:40:35 GMT
RUN apk add --no-cache tcl bash
# Wed, 10 Jan 2018 03:41:00 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget make tar gpgme build-base   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key B0B3D92ABE1D20233A2ECB01DB909F5EE7C0E7F7   && gpg --batch --verify eggdrop1.6.21.tar.gz.asc eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz.asc   && tar -zxvf eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz   && ( cd eggdrop1.6.21     && CFLAGS="-std=gnu89" ./configure --with-tclinc=/usr/include/tcl.h --with-tcllib=/usr/lib/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop1.6.21   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Wed, 10 Jan 2018 03:41:01 GMT
ENV NICK=
# Wed, 10 Jan 2018 03:41:01 GMT
ENV SERVER=
# Wed, 10 Jan 2018 03:41:01 GMT
ENV LISTEN=3333
# Wed, 10 Jan 2018 03:41:01 GMT
ENV OWNER=
# Wed, 10 Jan 2018 03:41:02 GMT
ENV USERFILE=eggdrop.user
# Wed, 10 Jan 2018 03:41:02 GMT
ENV CHANFILE=eggdrop.chan
# Wed, 10 Jan 2018 03:41:02 GMT
WORKDIR /home/eggdrop/eggdrop
# Wed, 10 Jan 2018 03:41:02 GMT
EXPOSE 3333/tcp
# Wed, 10 Jan 2018 03:41:03 GMT
COPY file:e428f30c058ab0bb09d0e3fa4880f51d23df22141a9f67503ac354e6a71ed388 in /home/eggdrop/eggdrop 
# Wed, 10 Jan 2018 03:41:03 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Wed, 10 Jan 2018 03:41:03 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Wed, 10 Jan 2018 03:41:03 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9413c66d316f56ae3bfd7bc12aa1a2c4a82eefd528df4eb85ebdd45fd5b8b792`  
		Last Modified: Wed, 10 Jan 2018 03:42:12 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972f7b58131ab5c128e2b252d614f4d72d3f9ad6c49c9351a8ce8e44dbb12908`  
		Last Modified: Wed, 10 Jan 2018 03:42:10 GMT  
		Size: 8.1 KB (8055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9978041cb716f4f1c0342b497b2ec59ad7203b065ddd254d50dfc516da575239`  
		Last Modified: Wed, 10 Jan 2018 03:43:36 GMT  
		Size: 2.7 MB (2718469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6534543d9f6f6e212573686b4c32f1102ed2da06b67a973b95e037a20ae2912`  
		Last Modified: Wed, 10 Jan 2018 03:43:35 GMT  
		Size: 992.1 KB (992120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfa15903329a8bc7bdfc6c0191da0c33bd375d8fa0c0380b3494ad22d7c7facd`  
		Last Modified: Wed, 10 Jan 2018 03:43:34 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c7fd54a3aefac7d7e2fb289495aced8722ab21eb7dcb76d5b95f00ecd990116`  
		Last Modified: Wed, 10 Jan 2018 03:43:34 GMT  
		Size: 704.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.6.21`

```console
$ docker pull eggdrop@sha256:126ccff586bc19922cf24c834c3625b6ecce12789bd836695215c903fcb01633
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:1.6.21` - linux; amd64

```console
$ docker pull eggdrop@sha256:d14a5a209c7a126364e60a5c06b1986789abffb116940239351a96ccf933e999
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.1 MB (6109915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e988106e1d0adce429dba46c1fac6c12977258a95c9149d75153bcc3a0196f31`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 03:30:24 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Wed, 10 Jan 2018 03:30:25 GMT
RUN adduser -S eggdrop
# Wed, 10 Jan 2018 03:30:28 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 Jan 2018 03:40:35 GMT
RUN apk add --no-cache tcl bash
# Wed, 10 Jan 2018 03:41:00 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget make tar gpgme build-base   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.6/eggdrop1.6.21.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key B0B3D92ABE1D20233A2ECB01DB909F5EE7C0E7F7   && gpg --batch --verify eggdrop1.6.21.tar.gz.asc eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz.asc   && tar -zxvf eggdrop1.6.21.tar.gz   && rm eggdrop1.6.21.tar.gz   && ( cd eggdrop1.6.21     && CFLAGS="-std=gnu89" ./configure --with-tclinc=/usr/include/tcl.h --with-tcllib=/usr/lib/libtcl8.6.so     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop1.6.21   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Wed, 10 Jan 2018 03:41:01 GMT
ENV NICK=
# Wed, 10 Jan 2018 03:41:01 GMT
ENV SERVER=
# Wed, 10 Jan 2018 03:41:01 GMT
ENV LISTEN=3333
# Wed, 10 Jan 2018 03:41:01 GMT
ENV OWNER=
# Wed, 10 Jan 2018 03:41:02 GMT
ENV USERFILE=eggdrop.user
# Wed, 10 Jan 2018 03:41:02 GMT
ENV CHANFILE=eggdrop.chan
# Wed, 10 Jan 2018 03:41:02 GMT
WORKDIR /home/eggdrop/eggdrop
# Wed, 10 Jan 2018 03:41:02 GMT
EXPOSE 3333/tcp
# Wed, 10 Jan 2018 03:41:03 GMT
COPY file:e428f30c058ab0bb09d0e3fa4880f51d23df22141a9f67503ac354e6a71ed388 in /home/eggdrop/eggdrop 
# Wed, 10 Jan 2018 03:41:03 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Wed, 10 Jan 2018 03:41:03 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Wed, 10 Jan 2018 03:41:03 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9413c66d316f56ae3bfd7bc12aa1a2c4a82eefd528df4eb85ebdd45fd5b8b792`  
		Last Modified: Wed, 10 Jan 2018 03:42:12 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972f7b58131ab5c128e2b252d614f4d72d3f9ad6c49c9351a8ce8e44dbb12908`  
		Last Modified: Wed, 10 Jan 2018 03:42:10 GMT  
		Size: 8.1 KB (8055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9978041cb716f4f1c0342b497b2ec59ad7203b065ddd254d50dfc516da575239`  
		Last Modified: Wed, 10 Jan 2018 03:43:36 GMT  
		Size: 2.7 MB (2718469 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6534543d9f6f6e212573686b4c32f1102ed2da06b67a973b95e037a20ae2912`  
		Last Modified: Wed, 10 Jan 2018 03:43:35 GMT  
		Size: 992.1 KB (992120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cfa15903329a8bc7bdfc6c0191da0c33bd375d8fa0c0380b3494ad22d7c7facd`  
		Last Modified: Wed, 10 Jan 2018 03:43:34 GMT  
		Size: 1.7 KB (1719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c7fd54a3aefac7d7e2fb289495aced8722ab21eb7dcb76d5b95f00ecd990116`  
		Last Modified: Wed, 10 Jan 2018 03:43:34 GMT  
		Size: 704.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8`

```console
$ docker pull eggdrop@sha256:04135607948891e4d88d644358c65974d68879062a0b5e58f64f1459edb50366
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:1.8` - linux; amd64

```console
$ docker pull eggdrop@sha256:17615d700195132bcf885e8a2b261a25eb112963ed67c122e4f28525ff5ea450
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7502590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12cfd9808c5bc30a959a703a55941f8a009872b60a50ddf82f12d63efd71ce5c`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 03:30:24 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Wed, 10 Jan 2018 03:30:25 GMT
RUN adduser -S eggdrop
# Wed, 10 Jan 2018 03:30:28 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 Jan 2018 03:30:34 GMT
RUN apk add --no-cache tcl bash openssl
# Tue, 27 Mar 2018 03:35:17 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.3.tar.gz.asc eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz.asc   && tar -zxvf eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz   && ( cd eggdrop-1.8.3     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.3   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Tue, 27 Mar 2018 03:35:17 GMT
ENV NICK=
# Tue, 27 Mar 2018 03:35:17 GMT
ENV SERVER=
# Tue, 27 Mar 2018 03:35:17 GMT
ENV LISTEN=3333
# Tue, 27 Mar 2018 03:35:18 GMT
ENV OWNER=
# Tue, 27 Mar 2018 03:35:18 GMT
ENV USERFILE=eggdrop.user
# Tue, 27 Mar 2018 03:35:18 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 27 Mar 2018 03:35:18 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 27 Mar 2018 03:35:19 GMT
EXPOSE 3333/tcp
# Tue, 27 Mar 2018 03:35:19 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Tue, 27 Mar 2018 03:35:20 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 27 Mar 2018 03:35:20 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 27 Mar 2018 03:35:20 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9413c66d316f56ae3bfd7bc12aa1a2c4a82eefd528df4eb85ebdd45fd5b8b792`  
		Last Modified: Wed, 10 Jan 2018 03:42:12 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972f7b58131ab5c128e2b252d614f4d72d3f9ad6c49c9351a8ce8e44dbb12908`  
		Last Modified: Wed, 10 Jan 2018 03:42:10 GMT  
		Size: 8.1 KB (8055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f252f07c5cd093948fad5a7c30c59301392d14c9765aa09f4a2071ab9a52f057`  
		Last Modified: Wed, 10 Jan 2018 03:42:11 GMT  
		Size: 2.9 MB (2938621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1524048fc7063fa1253257c79b66d0dc76299b2b9621495d17d8d5bc42031c9e`  
		Last Modified: Tue, 27 Mar 2018 03:36:34 GMT  
		Size: 2.2 MB (2164479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96e6704db58f9a294d819519e6e98908dc23646e6bd3eca5079272e12dec7eb`  
		Last Modified: Tue, 27 Mar 2018 03:36:34 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b24ae0757d6ccdf01da0e128cbc2f34f3316f3a10d3fa6e1c9cfdeabbc0d42e`  
		Last Modified: Tue, 27 Mar 2018 03:36:35 GMT  
		Size: 704.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8.3`

```console
$ docker pull eggdrop@sha256:04135607948891e4d88d644358c65974d68879062a0b5e58f64f1459edb50366
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:1.8.3` - linux; amd64

```console
$ docker pull eggdrop@sha256:17615d700195132bcf885e8a2b261a25eb112963ed67c122e4f28525ff5ea450
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7502590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12cfd9808c5bc30a959a703a55941f8a009872b60a50ddf82f12d63efd71ce5c`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 03:30:24 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Wed, 10 Jan 2018 03:30:25 GMT
RUN adduser -S eggdrop
# Wed, 10 Jan 2018 03:30:28 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 Jan 2018 03:30:34 GMT
RUN apk add --no-cache tcl bash openssl
# Tue, 27 Mar 2018 03:35:17 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.3.tar.gz.asc eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz.asc   && tar -zxvf eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz   && ( cd eggdrop-1.8.3     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.3   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Tue, 27 Mar 2018 03:35:17 GMT
ENV NICK=
# Tue, 27 Mar 2018 03:35:17 GMT
ENV SERVER=
# Tue, 27 Mar 2018 03:35:17 GMT
ENV LISTEN=3333
# Tue, 27 Mar 2018 03:35:18 GMT
ENV OWNER=
# Tue, 27 Mar 2018 03:35:18 GMT
ENV USERFILE=eggdrop.user
# Tue, 27 Mar 2018 03:35:18 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 27 Mar 2018 03:35:18 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 27 Mar 2018 03:35:19 GMT
EXPOSE 3333/tcp
# Tue, 27 Mar 2018 03:35:19 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Tue, 27 Mar 2018 03:35:20 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 27 Mar 2018 03:35:20 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 27 Mar 2018 03:35:20 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9413c66d316f56ae3bfd7bc12aa1a2c4a82eefd528df4eb85ebdd45fd5b8b792`  
		Last Modified: Wed, 10 Jan 2018 03:42:12 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972f7b58131ab5c128e2b252d614f4d72d3f9ad6c49c9351a8ce8e44dbb12908`  
		Last Modified: Wed, 10 Jan 2018 03:42:10 GMT  
		Size: 8.1 KB (8055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f252f07c5cd093948fad5a7c30c59301392d14c9765aa09f4a2071ab9a52f057`  
		Last Modified: Wed, 10 Jan 2018 03:42:11 GMT  
		Size: 2.9 MB (2938621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1524048fc7063fa1253257c79b66d0dc76299b2b9621495d17d8d5bc42031c9e`  
		Last Modified: Tue, 27 Mar 2018 03:36:34 GMT  
		Size: 2.2 MB (2164479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96e6704db58f9a294d819519e6e98908dc23646e6bd3eca5079272e12dec7eb`  
		Last Modified: Tue, 27 Mar 2018 03:36:34 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b24ae0757d6ccdf01da0e128cbc2f34f3316f3a10d3fa6e1c9cfdeabbc0d42e`  
		Last Modified: Tue, 27 Mar 2018 03:36:35 GMT  
		Size: 704.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:68b52132bec60e0b46ff3214f4f5896a3d33aa9ab08859c1016040f9031d3b57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

```console
$ docker pull eggdrop@sha256:96f3ba14f4fccf345796d356b86198c7e8b91c2d3db3054c38d52cf3d979c038
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8271651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34b55f5d3060d1d2b16a04e8763cf2a088eb63cd0491060900a4877648eaeb1e`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 03:30:24 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Wed, 10 Jan 2018 03:30:25 GMT
RUN adduser -S eggdrop
# Wed, 10 Jan 2018 03:30:28 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 27 Mar 2018 03:32:46 GMT
ENV EGGDROP_SHA256=ad020a73714d1e8eed470547a35e095e6318fe5882e6ca2f5da80ec90ed7e8f5
# Tue, 27 Mar 2018 03:32:47 GMT
ENV EGGDROP_COMMIT=13886f0d58a2eee1692704c9e56c9bc306f673af
# Tue, 27 Mar 2018 03:32:53 GMT
RUN apk --update add --no-cache tcl bash openssl
# Tue, 27 Mar 2018 03:33:34 GMT
RUN apk --update add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Tue, 27 Mar 2018 03:33:34 GMT
ENV NICK=
# Tue, 27 Mar 2018 03:33:35 GMT
ENV SERVER=
# Tue, 27 Mar 2018 03:33:35 GMT
ENV LISTEN=3333
# Tue, 27 Mar 2018 03:33:35 GMT
ENV OWNER=
# Tue, 27 Mar 2018 03:33:35 GMT
ENV USERFILE=eggdrop.user
# Tue, 27 Mar 2018 03:33:36 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 27 Mar 2018 03:33:36 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 27 Mar 2018 03:33:36 GMT
EXPOSE 3333/tcp
# Tue, 27 Mar 2018 03:33:37 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Tue, 27 Mar 2018 03:33:37 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 27 Mar 2018 03:33:38 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 27 Mar 2018 03:33:38 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9413c66d316f56ae3bfd7bc12aa1a2c4a82eefd528df4eb85ebdd45fd5b8b792`  
		Last Modified: Wed, 10 Jan 2018 03:42:12 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972f7b58131ab5c128e2b252d614f4d72d3f9ad6c49c9351a8ce8e44dbb12908`  
		Last Modified: Wed, 10 Jan 2018 03:42:10 GMT  
		Size: 8.1 KB (8055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7c717380cb6db86c082cca66de02443de0f13e3fe414de99e381a087ebe258a`  
		Last Modified: Tue, 27 Mar 2018 03:36:11 GMT  
		Size: 3.7 MB (3713378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3843ee3277ef0b696d70dc6e881595dca997594bd55dd5f34b1a4d7521ea73f7`  
		Last Modified: Tue, 27 Mar 2018 03:36:11 GMT  
		Size: 2.2 MB (2158779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3132918eb0ae1d648dfae0b159cd420ce61c818e417383a081a2ed3e8f81be5c`  
		Last Modified: Tue, 27 Mar 2018 03:36:10 GMT  
		Size: 1.9 KB (1884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ddb8424f08da242d1b3fefdaeab69111c188752a1dcfd988e0fddb34ff58b26`  
		Last Modified: Tue, 27 Mar 2018 03:36:10 GMT  
		Size: 707.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:latest`

```console
$ docker pull eggdrop@sha256:04135607948891e4d88d644358c65974d68879062a0b5e58f64f1459edb50366
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:latest` - linux; amd64

```console
$ docker pull eggdrop@sha256:17615d700195132bcf885e8a2b261a25eb112963ed67c122e4f28525ff5ea450
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7502590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12cfd9808c5bc30a959a703a55941f8a009872b60a50ddf82f12d63efd71ce5c`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 03:30:24 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Wed, 10 Jan 2018 03:30:25 GMT
RUN adduser -S eggdrop
# Wed, 10 Jan 2018 03:30:28 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 Jan 2018 03:30:34 GMT
RUN apk add --no-cache tcl bash openssl
# Tue, 27 Mar 2018 03:35:17 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.3.tar.gz.asc eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz.asc   && tar -zxvf eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz   && ( cd eggdrop-1.8.3     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.3   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Tue, 27 Mar 2018 03:35:17 GMT
ENV NICK=
# Tue, 27 Mar 2018 03:35:17 GMT
ENV SERVER=
# Tue, 27 Mar 2018 03:35:17 GMT
ENV LISTEN=3333
# Tue, 27 Mar 2018 03:35:18 GMT
ENV OWNER=
# Tue, 27 Mar 2018 03:35:18 GMT
ENV USERFILE=eggdrop.user
# Tue, 27 Mar 2018 03:35:18 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 27 Mar 2018 03:35:18 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 27 Mar 2018 03:35:19 GMT
EXPOSE 3333/tcp
# Tue, 27 Mar 2018 03:35:19 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Tue, 27 Mar 2018 03:35:20 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 27 Mar 2018 03:35:20 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 27 Mar 2018 03:35:20 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9413c66d316f56ae3bfd7bc12aa1a2c4a82eefd528df4eb85ebdd45fd5b8b792`  
		Last Modified: Wed, 10 Jan 2018 03:42:12 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972f7b58131ab5c128e2b252d614f4d72d3f9ad6c49c9351a8ce8e44dbb12908`  
		Last Modified: Wed, 10 Jan 2018 03:42:10 GMT  
		Size: 8.1 KB (8055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f252f07c5cd093948fad5a7c30c59301392d14c9765aa09f4a2071ab9a52f057`  
		Last Modified: Wed, 10 Jan 2018 03:42:11 GMT  
		Size: 2.9 MB (2938621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1524048fc7063fa1253257c79b66d0dc76299b2b9621495d17d8d5bc42031c9e`  
		Last Modified: Tue, 27 Mar 2018 03:36:34 GMT  
		Size: 2.2 MB (2164479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96e6704db58f9a294d819519e6e98908dc23646e6bd3eca5079272e12dec7eb`  
		Last Modified: Tue, 27 Mar 2018 03:36:34 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b24ae0757d6ccdf01da0e128cbc2f34f3316f3a10d3fa6e1c9cfdeabbc0d42e`  
		Last Modified: Tue, 27 Mar 2018 03:36:35 GMT  
		Size: 704.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:stable`

```console
$ docker pull eggdrop@sha256:04135607948891e4d88d644358c65974d68879062a0b5e58f64f1459edb50366
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:stable` - linux; amd64

```console
$ docker pull eggdrop@sha256:17615d700195132bcf885e8a2b261a25eb112963ed67c122e4f28525ff5ea450
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7502590 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12cfd9808c5bc30a959a703a55941f8a009872b60a50ddf82f12d63efd71ce5c`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 09 Jan 2018 21:12:40 GMT
ADD file:69848cb51056edaf120230b6f218a79968ac797295c2cef6728332e1801357be in / 
# Tue, 09 Jan 2018 21:12:40 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 03:30:24 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Wed, 10 Jan 2018 03:30:25 GMT
RUN adduser -S eggdrop
# Wed, 10 Jan 2018 03:30:28 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 Jan 2018 03:30:34 GMT
RUN apk add --no-cache tcl bash openssl
# Tue, 27 Mar 2018 03:35:17 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.3.tar.gz.asc eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz.asc   && tar -zxvf eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz   && ( cd eggdrop-1.8.3     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.3   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Tue, 27 Mar 2018 03:35:17 GMT
ENV NICK=
# Tue, 27 Mar 2018 03:35:17 GMT
ENV SERVER=
# Tue, 27 Mar 2018 03:35:17 GMT
ENV LISTEN=3333
# Tue, 27 Mar 2018 03:35:18 GMT
ENV OWNER=
# Tue, 27 Mar 2018 03:35:18 GMT
ENV USERFILE=eggdrop.user
# Tue, 27 Mar 2018 03:35:18 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 27 Mar 2018 03:35:18 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 27 Mar 2018 03:35:19 GMT
EXPOSE 3333/tcp
# Tue, 27 Mar 2018 03:35:19 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Tue, 27 Mar 2018 03:35:20 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 27 Mar 2018 03:35:20 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 27 Mar 2018 03:35:20 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:81033e7c1d6a5b44a94bb6b40033a6e589f50fd6b61578da6fc809e61f83898d`  
		Last Modified: Tue, 09 Jan 2018 21:15:04 GMT  
		Size: 2.4 MB (2387570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9413c66d316f56ae3bfd7bc12aa1a2c4a82eefd528df4eb85ebdd45fd5b8b792`  
		Last Modified: Wed, 10 Jan 2018 03:42:12 GMT  
		Size: 1.3 KB (1278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:972f7b58131ab5c128e2b252d614f4d72d3f9ad6c49c9351a8ce8e44dbb12908`  
		Last Modified: Wed, 10 Jan 2018 03:42:10 GMT  
		Size: 8.1 KB (8055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f252f07c5cd093948fad5a7c30c59301392d14c9765aa09f4a2071ab9a52f057`  
		Last Modified: Wed, 10 Jan 2018 03:42:11 GMT  
		Size: 2.9 MB (2938621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1524048fc7063fa1253257c79b66d0dc76299b2b9621495d17d8d5bc42031c9e`  
		Last Modified: Tue, 27 Mar 2018 03:36:34 GMT  
		Size: 2.2 MB (2164479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96e6704db58f9a294d819519e6e98908dc23646e6bd3eca5079272e12dec7eb`  
		Last Modified: Tue, 27 Mar 2018 03:36:34 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b24ae0757d6ccdf01da0e128cbc2f34f3316f3a10d3fa6e1c9cfdeabbc0d42e`  
		Last Modified: Tue, 27 Mar 2018 03:36:35 GMT  
		Size: 704.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
