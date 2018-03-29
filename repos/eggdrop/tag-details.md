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
$ docker pull eggdrop@sha256:d982f8e705925f55df4196cde18acf9f9ce91135a106b8a6fec2fe87e7c3b8dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:1.8` - linux; amd64

```console
$ docker pull eggdrop@sha256:c419bfab06a97f775a904ce11817d97b7862ee0a2ee6ef2e05f57e86f26cbeb1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.9 MB (9865676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73fe6eb91966c7edcc7bd14632ffc11c87e2220f620a4b6569931700cc23a697`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 03:28:30 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Wed, 10 Jan 2018 03:28:31 GMT
RUN adduser -S eggdrop
# Wed, 10 Jan 2018 03:28:35 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 Jan 2018 03:28:40 GMT
RUN apk add --no-cache tcl bash openssl
# Fri, 09 Feb 2018 20:32:45 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.3.tar.gz.asc eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz.asc   && tar -zxvf eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz   && ( cd eggdrop-1.8.3     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.3   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Fri, 09 Feb 2018 20:32:45 GMT
ENV NICK=
# Fri, 09 Feb 2018 20:32:45 GMT
ENV SERVER=
# Fri, 09 Feb 2018 20:32:57 GMT
ENV LISTEN=3333
# Fri, 09 Feb 2018 20:32:57 GMT
ENV OWNER=
# Fri, 09 Feb 2018 20:32:57 GMT
ENV USERFILE=eggdrop.user
# Fri, 09 Feb 2018 20:32:57 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 09 Feb 2018 20:32:58 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 09 Feb 2018 20:33:09 GMT
EXPOSE 3333/tcp
# Fri, 09 Feb 2018 20:33:09 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Fri, 09 Feb 2018 20:33:10 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 09 Feb 2018 20:33:21 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 09 Feb 2018 20:33:21 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51653a09a169e883d2839d2c31b28b714850c7be2e2ce1c46b49dc951dd7e86`  
		Last Modified: Wed, 10 Jan 2018 03:41:47 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d2126a6c853a36406b8408e738c012227af7a863075d3c6ddac858d9510932`  
		Last Modified: Wed, 10 Jan 2018 03:41:45 GMT  
		Size: 8.6 KB (8552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f942d9c45c6290d04639ab4ffcdd051cfc4c3b8710923561670bda887c24b025`  
		Last Modified: Wed, 10 Jan 2018 03:41:47 GMT  
		Size: 4.4 MB (4370689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13207ccfad544c548e0c38299f3a46709ca07e2d252c7b5a429fc0b5b9ace370`  
		Last Modified: Fri, 09 Feb 2018 20:34:11 GMT  
		Size: 3.4 MB (3417052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e290cf226c4433e3bf389802d3aeae125c3155b4793fd5019120d4d84884d9d`  
		Last Modified: Fri, 09 Feb 2018 20:34:10 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c836d842b62cb911a7a3631d2d522ce478b2e3a96886cb4c21449d522ae414a8`  
		Last Modified: Fri, 09 Feb 2018 20:34:10 GMT  
		Size: 708.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8.3`

```console
$ docker pull eggdrop@sha256:d982f8e705925f55df4196cde18acf9f9ce91135a106b8a6fec2fe87e7c3b8dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:1.8.3` - linux; amd64

```console
$ docker pull eggdrop@sha256:c419bfab06a97f775a904ce11817d97b7862ee0a2ee6ef2e05f57e86f26cbeb1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.9 MB (9865676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73fe6eb91966c7edcc7bd14632ffc11c87e2220f620a4b6569931700cc23a697`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 03:28:30 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Wed, 10 Jan 2018 03:28:31 GMT
RUN adduser -S eggdrop
# Wed, 10 Jan 2018 03:28:35 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 Jan 2018 03:28:40 GMT
RUN apk add --no-cache tcl bash openssl
# Fri, 09 Feb 2018 20:32:45 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.3.tar.gz.asc eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz.asc   && tar -zxvf eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz   && ( cd eggdrop-1.8.3     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.3   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Fri, 09 Feb 2018 20:32:45 GMT
ENV NICK=
# Fri, 09 Feb 2018 20:32:45 GMT
ENV SERVER=
# Fri, 09 Feb 2018 20:32:57 GMT
ENV LISTEN=3333
# Fri, 09 Feb 2018 20:32:57 GMT
ENV OWNER=
# Fri, 09 Feb 2018 20:32:57 GMT
ENV USERFILE=eggdrop.user
# Fri, 09 Feb 2018 20:32:57 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 09 Feb 2018 20:32:58 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 09 Feb 2018 20:33:09 GMT
EXPOSE 3333/tcp
# Fri, 09 Feb 2018 20:33:09 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Fri, 09 Feb 2018 20:33:10 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 09 Feb 2018 20:33:21 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 09 Feb 2018 20:33:21 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51653a09a169e883d2839d2c31b28b714850c7be2e2ce1c46b49dc951dd7e86`  
		Last Modified: Wed, 10 Jan 2018 03:41:47 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d2126a6c853a36406b8408e738c012227af7a863075d3c6ddac858d9510932`  
		Last Modified: Wed, 10 Jan 2018 03:41:45 GMT  
		Size: 8.6 KB (8552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f942d9c45c6290d04639ab4ffcdd051cfc4c3b8710923561670bda887c24b025`  
		Last Modified: Wed, 10 Jan 2018 03:41:47 GMT  
		Size: 4.4 MB (4370689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13207ccfad544c548e0c38299f3a46709ca07e2d252c7b5a429fc0b5b9ace370`  
		Last Modified: Fri, 09 Feb 2018 20:34:11 GMT  
		Size: 3.4 MB (3417052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e290cf226c4433e3bf389802d3aeae125c3155b4793fd5019120d4d84884d9d`  
		Last Modified: Fri, 09 Feb 2018 20:34:10 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c836d842b62cb911a7a3631d2d522ce478b2e3a96886cb4c21449d522ae414a8`  
		Last Modified: Fri, 09 Feb 2018 20:34:10 GMT  
		Size: 708.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:716cfb294fc0b93c310f001477859d64a814ce260e550c5a747a483d0d9452f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

```console
$ docker pull eggdrop@sha256:585ba4ae8b7bab0d7d6d3e84cee5a217f25a1299d3462b731dab14fff63e9841
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11086682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cb02dac2a5a1dc48eb79013be881811df5d94b3d6ad6a2463d14cd491176eec`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 03:28:30 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Wed, 10 Jan 2018 03:28:31 GMT
RUN adduser -S eggdrop
# Wed, 10 Jan 2018 03:28:35 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Fri, 09 Feb 2018 20:20:30 GMT
ENV EGGDROP_SHA256=ad020a73714d1e8eed470547a35e095e6318fe5882e6ca2f5da80ec90ed7e8f5
# Fri, 09 Feb 2018 20:20:31 GMT
ENV EGGDROP_COMMIT=13886f0d58a2eee1692704c9e56c9bc306f673af
# Fri, 09 Feb 2018 20:20:39 GMT
RUN apk --update add --no-cache tcl bash openssl
# Fri, 09 Feb 2018 20:21:31 GMT
RUN apk --update add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Fri, 09 Feb 2018 20:27:32 GMT
ENV NICK=
# Fri, 09 Feb 2018 20:27:32 GMT
ENV SERVER=
# Fri, 09 Feb 2018 20:27:32 GMT
ENV LISTEN=3333
# Fri, 09 Feb 2018 20:27:32 GMT
ENV OWNER=
# Fri, 09 Feb 2018 20:31:08 GMT
ENV USERFILE=eggdrop.user
# Fri, 09 Feb 2018 20:31:08 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 09 Feb 2018 20:31:08 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 09 Feb 2018 20:31:09 GMT
EXPOSE 3333/tcp
# Fri, 09 Feb 2018 20:31:09 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Fri, 09 Feb 2018 20:31:20 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 09 Feb 2018 20:31:20 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 09 Feb 2018 20:31:21 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51653a09a169e883d2839d2c31b28b714850c7be2e2ce1c46b49dc951dd7e86`  
		Last Modified: Wed, 10 Jan 2018 03:41:47 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d2126a6c853a36406b8408e738c012227af7a863075d3c6ddac858d9510932`  
		Last Modified: Wed, 10 Jan 2018 03:41:45 GMT  
		Size: 8.6 KB (8552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:840be8e2cc7ba5ba3f2a6c9aa89a25448dd5862c287b6b3afc23864ace4da531`  
		Last Modified: Fri, 09 Feb 2018 20:33:50 GMT  
		Size: 5.6 MB (5593261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32746bb4e508c51ec77e26910a93e730ad1a921acf7aff66a7cfdf6f9a7480e9`  
		Last Modified: Fri, 09 Feb 2018 20:33:47 GMT  
		Size: 3.4 MB (3415483 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c0f87d27c1984d5944880ed65ca5622206a966795b2f1cded62f67d7edb24d`  
		Last Modified: Fri, 09 Feb 2018 20:33:47 GMT  
		Size: 1.9 KB (1884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32cf5f8b6dae9eaafa75283c82f69b507977c45b5a217c5045b64651f7649ef9`  
		Last Modified: Fri, 09 Feb 2018 20:33:47 GMT  
		Size: 710.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:latest`

```console
$ docker pull eggdrop@sha256:d982f8e705925f55df4196cde18acf9f9ce91135a106b8a6fec2fe87e7c3b8dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:latest` - linux; amd64

```console
$ docker pull eggdrop@sha256:c419bfab06a97f775a904ce11817d97b7862ee0a2ee6ef2e05f57e86f26cbeb1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.9 MB (9865676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73fe6eb91966c7edcc7bd14632ffc11c87e2220f620a4b6569931700cc23a697`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 03:28:30 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Wed, 10 Jan 2018 03:28:31 GMT
RUN adduser -S eggdrop
# Wed, 10 Jan 2018 03:28:35 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 Jan 2018 03:28:40 GMT
RUN apk add --no-cache tcl bash openssl
# Fri, 09 Feb 2018 20:32:45 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.3.tar.gz.asc eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz.asc   && tar -zxvf eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz   && ( cd eggdrop-1.8.3     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.3   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Fri, 09 Feb 2018 20:32:45 GMT
ENV NICK=
# Fri, 09 Feb 2018 20:32:45 GMT
ENV SERVER=
# Fri, 09 Feb 2018 20:32:57 GMT
ENV LISTEN=3333
# Fri, 09 Feb 2018 20:32:57 GMT
ENV OWNER=
# Fri, 09 Feb 2018 20:32:57 GMT
ENV USERFILE=eggdrop.user
# Fri, 09 Feb 2018 20:32:57 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 09 Feb 2018 20:32:58 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 09 Feb 2018 20:33:09 GMT
EXPOSE 3333/tcp
# Fri, 09 Feb 2018 20:33:09 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Fri, 09 Feb 2018 20:33:10 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 09 Feb 2018 20:33:21 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 09 Feb 2018 20:33:21 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51653a09a169e883d2839d2c31b28b714850c7be2e2ce1c46b49dc951dd7e86`  
		Last Modified: Wed, 10 Jan 2018 03:41:47 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d2126a6c853a36406b8408e738c012227af7a863075d3c6ddac858d9510932`  
		Last Modified: Wed, 10 Jan 2018 03:41:45 GMT  
		Size: 8.6 KB (8552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f942d9c45c6290d04639ab4ffcdd051cfc4c3b8710923561670bda887c24b025`  
		Last Modified: Wed, 10 Jan 2018 03:41:47 GMT  
		Size: 4.4 MB (4370689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13207ccfad544c548e0c38299f3a46709ca07e2d252c7b5a429fc0b5b9ace370`  
		Last Modified: Fri, 09 Feb 2018 20:34:11 GMT  
		Size: 3.4 MB (3417052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e290cf226c4433e3bf389802d3aeae125c3155b4793fd5019120d4d84884d9d`  
		Last Modified: Fri, 09 Feb 2018 20:34:10 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c836d842b62cb911a7a3631d2d522ce478b2e3a96886cb4c21449d522ae414a8`  
		Last Modified: Fri, 09 Feb 2018 20:34:10 GMT  
		Size: 708.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:stable`

```console
$ docker pull eggdrop@sha256:d982f8e705925f55df4196cde18acf9f9ce91135a106b8a6fec2fe87e7c3b8dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:stable` - linux; amd64

```console
$ docker pull eggdrop@sha256:c419bfab06a97f775a904ce11817d97b7862ee0a2ee6ef2e05f57e86f26cbeb1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.9 MB (9865676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73fe6eb91966c7edcc7bd14632ffc11c87e2220f620a4b6569931700cc23a697`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 03:28:30 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Wed, 10 Jan 2018 03:28:31 GMT
RUN adduser -S eggdrop
# Wed, 10 Jan 2018 03:28:35 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 10 Jan 2018 03:28:40 GMT
RUN apk add --no-cache tcl bash openssl
# Fri, 09 Feb 2018 20:32:45 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.3.tar.gz.asc eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz.asc   && tar -zxvf eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz   && ( cd eggdrop-1.8.3     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.3   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Fri, 09 Feb 2018 20:32:45 GMT
ENV NICK=
# Fri, 09 Feb 2018 20:32:45 GMT
ENV SERVER=
# Fri, 09 Feb 2018 20:32:57 GMT
ENV LISTEN=3333
# Fri, 09 Feb 2018 20:32:57 GMT
ENV OWNER=
# Fri, 09 Feb 2018 20:32:57 GMT
ENV USERFILE=eggdrop.user
# Fri, 09 Feb 2018 20:32:57 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 09 Feb 2018 20:32:58 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 09 Feb 2018 20:33:09 GMT
EXPOSE 3333/tcp
# Fri, 09 Feb 2018 20:33:09 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Fri, 09 Feb 2018 20:33:10 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 09 Feb 2018 20:33:21 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 09 Feb 2018 20:33:21 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51653a09a169e883d2839d2c31b28b714850c7be2e2ce1c46b49dc951dd7e86`  
		Last Modified: Wed, 10 Jan 2018 03:41:47 GMT  
		Size: 1.3 KB (1255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3d2126a6c853a36406b8408e738c012227af7a863075d3c6ddac858d9510932`  
		Last Modified: Wed, 10 Jan 2018 03:41:45 GMT  
		Size: 8.6 KB (8552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f942d9c45c6290d04639ab4ffcdd051cfc4c3b8710923561670bda887c24b025`  
		Last Modified: Wed, 10 Jan 2018 03:41:47 GMT  
		Size: 4.4 MB (4370689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13207ccfad544c548e0c38299f3a46709ca07e2d252c7b5a429fc0b5b9ace370`  
		Last Modified: Fri, 09 Feb 2018 20:34:11 GMT  
		Size: 3.4 MB (3417052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e290cf226c4433e3bf389802d3aeae125c3155b4793fd5019120d4d84884d9d`  
		Last Modified: Fri, 09 Feb 2018 20:34:10 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c836d842b62cb911a7a3631d2d522ce478b2e3a96886cb4c21449d522ae414a8`  
		Last Modified: Fri, 09 Feb 2018 20:34:10 GMT  
		Size: 708.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
