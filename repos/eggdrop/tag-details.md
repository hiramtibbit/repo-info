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
$ docker pull eggdrop@sha256:e94857215b0dd17358d381846669cc4b890b2701d47334866999358d8ee4f59e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:1.8` - linux; amd64

```console
$ docker pull eggdrop@sha256:7361a6c942bc44bef6d41a7365496a00491f2e34b35f20b9339dcd44de0eba11
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7485731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97eeb0fcd3d4bca97229c90d7bc42077bd712d0e3d480d422d1bf3ab976d8cb2`
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
# Wed, 10 Jan 2018 03:31:48 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.2.tar.gz.asc eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz.asc   && tar -zxvf eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz   && ( cd eggdrop-1.8.2     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Wed, 10 Jan 2018 03:31:49 GMT
ENV NICK=
# Wed, 10 Jan 2018 03:31:49 GMT
ENV SERVER=
# Wed, 10 Jan 2018 03:31:49 GMT
ENV LISTEN=3333
# Wed, 10 Jan 2018 03:31:49 GMT
ENV OWNER=
# Wed, 10 Jan 2018 03:31:50 GMT
ENV USERFILE=eggdrop.user
# Wed, 10 Jan 2018 03:31:50 GMT
ENV CHANFILE=eggdrop.chan
# Wed, 10 Jan 2018 03:31:50 GMT
WORKDIR /home/eggdrop/eggdrop
# Wed, 10 Jan 2018 03:31:50 GMT
EXPOSE 3333/tcp
# Wed, 10 Jan 2018 03:31:51 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Wed, 10 Jan 2018 03:31:51 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Wed, 10 Jan 2018 03:31:51 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Wed, 10 Jan 2018 03:31:52 GMT
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
	-	`sha256:ac789379e71dbad827ab68a0e9a0807c95e40cea84c00514cfca0664d1f6509e`  
		Last Modified: Wed, 10 Jan 2018 03:42:11 GMT  
		Size: 2.1 MB (2147625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53280f251829b7f5b0f6e9388288802a11695a08739303639fdd161efd409b1f`  
		Last Modified: Wed, 10 Jan 2018 03:42:10 GMT  
		Size: 1.9 KB (1880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db391956bd4314325378e8a38e4dd7320a05a77b0348b78e78726a92a653c26`  
		Last Modified: Wed, 10 Jan 2018 03:42:11 GMT  
		Size: 702.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8.3`

```console
$ docker pull eggdrop@sha256:e94857215b0dd17358d381846669cc4b890b2701d47334866999358d8ee4f59e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:1.8.3` - linux; amd64

```console
$ docker pull eggdrop@sha256:7361a6c942bc44bef6d41a7365496a00491f2e34b35f20b9339dcd44de0eba11
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7485731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97eeb0fcd3d4bca97229c90d7bc42077bd712d0e3d480d422d1bf3ab976d8cb2`
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
# Wed, 10 Jan 2018 03:31:48 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.2.tar.gz.asc eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz.asc   && tar -zxvf eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz   && ( cd eggdrop-1.8.2     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Wed, 10 Jan 2018 03:31:49 GMT
ENV NICK=
# Wed, 10 Jan 2018 03:31:49 GMT
ENV SERVER=
# Wed, 10 Jan 2018 03:31:49 GMT
ENV LISTEN=3333
# Wed, 10 Jan 2018 03:31:49 GMT
ENV OWNER=
# Wed, 10 Jan 2018 03:31:50 GMT
ENV USERFILE=eggdrop.user
# Wed, 10 Jan 2018 03:31:50 GMT
ENV CHANFILE=eggdrop.chan
# Wed, 10 Jan 2018 03:31:50 GMT
WORKDIR /home/eggdrop/eggdrop
# Wed, 10 Jan 2018 03:31:50 GMT
EXPOSE 3333/tcp
# Wed, 10 Jan 2018 03:31:51 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Wed, 10 Jan 2018 03:31:51 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Wed, 10 Jan 2018 03:31:51 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Wed, 10 Jan 2018 03:31:52 GMT
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
	-	`sha256:ac789379e71dbad827ab68a0e9a0807c95e40cea84c00514cfca0664d1f6509e`  
		Last Modified: Wed, 10 Jan 2018 03:42:11 GMT  
		Size: 2.1 MB (2147625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53280f251829b7f5b0f6e9388288802a11695a08739303639fdd161efd409b1f`  
		Last Modified: Wed, 10 Jan 2018 03:42:10 GMT  
		Size: 1.9 KB (1880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db391956bd4314325378e8a38e4dd7320a05a77b0348b78e78726a92a653c26`  
		Last Modified: Wed, 10 Jan 2018 03:42:11 GMT  
		Size: 702.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:da45e1ee517f8afb748edb7ab13890a6e293ec45cc2386c43558d862abf6df2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

```console
$ docker pull eggdrop@sha256:e5cc2ec8bfa767bf5155552c915071caf36634f1b1d50dd0c831cfc77cfc17cc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **14.5 MB (14532680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75beea8aed62b168a67af197c0cf002531128a364c20f4107e757b9f77a89024`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 09 Jan 2018 21:13:01 GMT
ADD file:df48d6d6df42a01380557aebd4ca02807fc08a76a1d1b36d957e59a41c69db0b in / 
# Tue, 09 Jan 2018 21:13:01 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 03:26:34 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Wed, 10 Jan 2018 03:26:35 GMT
RUN adduser -S eggdrop
# Wed, 10 Jan 2018 03:26:39 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 Jan 2018 03:26:39 GMT
ENV EGGDROP_SHA256=880aef0a11442a8f972f7267079abcceff4ce37a0ce3054141359470c0585228
# Wed, 10 Jan 2018 03:26:39 GMT
ENV EGGDROP_COMMIT=5d9da79dd6b8b9a8f392701dbdd343e8dae73644
# Wed, 10 Jan 2018 03:26:44 GMT
RUN apk --update add --no-cache tcl bash openssl
# Wed, 10 Jan 2018 03:27:54 GMT
RUN apk --update add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Wed, 10 Jan 2018 03:27:54 GMT
ENV NICK=
# Wed, 10 Jan 2018 03:27:55 GMT
ENV SERVER=
# Wed, 10 Jan 2018 03:27:55 GMT
ENV LISTEN=3333
# Wed, 10 Jan 2018 03:27:55 GMT
ENV OWNER=
# Wed, 10 Jan 2018 03:27:56 GMT
ENV USERFILE=eggdrop.user
# Wed, 10 Jan 2018 03:27:56 GMT
ENV CHANFILE=eggdrop.chan
# Wed, 10 Jan 2018 03:27:57 GMT
WORKDIR /home/eggdrop/eggdrop
# Wed, 10 Jan 2018 03:27:57 GMT
EXPOSE 3333/tcp
# Wed, 10 Jan 2018 03:27:58 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Wed, 10 Jan 2018 03:27:58 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Wed, 10 Jan 2018 03:27:59 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Wed, 10 Jan 2018 03:27:59 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:550fe1bea624a5c62551cf09f3aa10886eed133794844af1dfb775118309387e`  
		Last Modified: Tue, 09 Jan 2018 21:15:20 GMT  
		Size: 2.0 MB (1970140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07ba123cfc282ff211883dd02fe606444e93fad920f584fa61b071f6faa51ac0`  
		Last Modified: Wed, 10 Jan 2018 03:41:22 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ffe5c09fddba32b1b324542a826e6d66423e52402f1ac779f81ee08bc3c3e56`  
		Last Modified: Wed, 10 Jan 2018 03:41:19 GMT  
		Size: 7.8 KB (7826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3efd6f23dcc7c36347479b66f6692086c0dc05d78bba182cf0e9a3cf3703b961`  
		Last Modified: Wed, 10 Jan 2018 03:41:21 GMT  
		Size: 5.3 MB (5250386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa6d050b40415768bb4e69d6dd9684f6fe4555d4e12c9190882689bb7b04f44`  
		Last Modified: Wed, 10 Jan 2018 03:41:23 GMT  
		Size: 7.3 MB (7300489 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09b36d79bfcdbc5a5bfa89ae71cbca63ec36f48fcb495f63513c7f7e8b4cbc49`  
		Last Modified: Wed, 10 Jan 2018 03:41:20 GMT  
		Size: 1.9 KB (1880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67679a72036203b39527039a348010724866e521fb063e2292b7f883d6f73f30`  
		Last Modified: Wed, 10 Jan 2018 03:41:20 GMT  
		Size: 703.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:latest`

```console
$ docker pull eggdrop@sha256:e94857215b0dd17358d381846669cc4b890b2701d47334866999358d8ee4f59e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:latest` - linux; amd64

```console
$ docker pull eggdrop@sha256:7361a6c942bc44bef6d41a7365496a00491f2e34b35f20b9339dcd44de0eba11
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7485731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97eeb0fcd3d4bca97229c90d7bc42077bd712d0e3d480d422d1bf3ab976d8cb2`
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
# Wed, 10 Jan 2018 03:31:48 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.2.tar.gz.asc eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz.asc   && tar -zxvf eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz   && ( cd eggdrop-1.8.2     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Wed, 10 Jan 2018 03:31:49 GMT
ENV NICK=
# Wed, 10 Jan 2018 03:31:49 GMT
ENV SERVER=
# Wed, 10 Jan 2018 03:31:49 GMT
ENV LISTEN=3333
# Wed, 10 Jan 2018 03:31:49 GMT
ENV OWNER=
# Wed, 10 Jan 2018 03:31:50 GMT
ENV USERFILE=eggdrop.user
# Wed, 10 Jan 2018 03:31:50 GMT
ENV CHANFILE=eggdrop.chan
# Wed, 10 Jan 2018 03:31:50 GMT
WORKDIR /home/eggdrop/eggdrop
# Wed, 10 Jan 2018 03:31:50 GMT
EXPOSE 3333/tcp
# Wed, 10 Jan 2018 03:31:51 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Wed, 10 Jan 2018 03:31:51 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Wed, 10 Jan 2018 03:31:51 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Wed, 10 Jan 2018 03:31:52 GMT
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
	-	`sha256:ac789379e71dbad827ab68a0e9a0807c95e40cea84c00514cfca0664d1f6509e`  
		Last Modified: Wed, 10 Jan 2018 03:42:11 GMT  
		Size: 2.1 MB (2147625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53280f251829b7f5b0f6e9388288802a11695a08739303639fdd161efd409b1f`  
		Last Modified: Wed, 10 Jan 2018 03:42:10 GMT  
		Size: 1.9 KB (1880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db391956bd4314325378e8a38e4dd7320a05a77b0348b78e78726a92a653c26`  
		Last Modified: Wed, 10 Jan 2018 03:42:11 GMT  
		Size: 702.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:stable`

```console
$ docker pull eggdrop@sha256:e94857215b0dd17358d381846669cc4b890b2701d47334866999358d8ee4f59e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:stable` - linux; amd64

```console
$ docker pull eggdrop@sha256:7361a6c942bc44bef6d41a7365496a00491f2e34b35f20b9339dcd44de0eba11
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7485731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97eeb0fcd3d4bca97229c90d7bc42077bd712d0e3d480d422d1bf3ab976d8cb2`
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
# Wed, 10 Jan 2018 03:31:48 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.2.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.2.tar.gz.asc eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz.asc   && tar -zxvf eggdrop-1.8.2.tar.gz   && rm eggdrop-1.8.2.tar.gz   && ( cd eggdrop-1.8.2     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.2   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Wed, 10 Jan 2018 03:31:49 GMT
ENV NICK=
# Wed, 10 Jan 2018 03:31:49 GMT
ENV SERVER=
# Wed, 10 Jan 2018 03:31:49 GMT
ENV LISTEN=3333
# Wed, 10 Jan 2018 03:31:49 GMT
ENV OWNER=
# Wed, 10 Jan 2018 03:31:50 GMT
ENV USERFILE=eggdrop.user
# Wed, 10 Jan 2018 03:31:50 GMT
ENV CHANFILE=eggdrop.chan
# Wed, 10 Jan 2018 03:31:50 GMT
WORKDIR /home/eggdrop/eggdrop
# Wed, 10 Jan 2018 03:31:50 GMT
EXPOSE 3333/tcp
# Wed, 10 Jan 2018 03:31:51 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Wed, 10 Jan 2018 03:31:51 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Wed, 10 Jan 2018 03:31:51 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Wed, 10 Jan 2018 03:31:52 GMT
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
	-	`sha256:ac789379e71dbad827ab68a0e9a0807c95e40cea84c00514cfca0664d1f6509e`  
		Last Modified: Wed, 10 Jan 2018 03:42:11 GMT  
		Size: 2.1 MB (2147625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53280f251829b7f5b0f6e9388288802a11695a08739303639fdd161efd409b1f`  
		Last Modified: Wed, 10 Jan 2018 03:42:10 GMT  
		Size: 1.9 KB (1880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5db391956bd4314325378e8a38e4dd7320a05a77b0348b78e78726a92a653c26`  
		Last Modified: Wed, 10 Jan 2018 03:42:11 GMT  
		Size: 702.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
