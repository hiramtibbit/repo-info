<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `eggdrop`

-	[`eggdrop:1.8`](#eggdrop18)
-	[`eggdrop:1.8.3`](#eggdrop183)
-	[`eggdrop:1.8.4rc1`](#eggdrop184rc1)
-	[`eggdrop:develop`](#eggdropdevelop)
-	[`eggdrop:latest`](#eggdroplatest)
-	[`eggdrop:stable`](#eggdropstable)

## `eggdrop:1.8`

```console
$ docker pull eggdrop@sha256:1c5d2dd27b22ae1b06be91634c9468ed6383ad693d5a1b4559104abe1c04f2b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:1.8` - linux; amd64

```console
$ docker pull eggdrop@sha256:0ea10c904adb22dc71f632d40309714cd0ad5e3d9174bf58fbab6408f1b5e898
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 MB (9553833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94e5180bdae50b62e7848650deafec75a8a10371dd2f9df6ec7f93f06d89983f`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:53:24 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 11 Sep 2018 22:53:25 GMT
RUN adduser -S eggdrop
# Tue, 11 Sep 2018 22:53:26 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 11 Sep 2018 22:55:01 GMT
RUN apk add --no-cache tcl bash openssl
# Tue, 11 Sep 2018 22:55:54 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.3.tar.gz.asc eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz.asc   && tar -zxvf eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz   && ( cd eggdrop-1.8.3     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.3   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Tue, 11 Sep 2018 22:55:55 GMT
ENV NICK=
# Tue, 11 Sep 2018 22:55:55 GMT
ENV SERVER=
# Tue, 11 Sep 2018 22:55:55 GMT
ENV LISTEN=3333
# Tue, 11 Sep 2018 22:55:55 GMT
ENV OWNER=
# Tue, 11 Sep 2018 22:55:55 GMT
ENV USERFILE=eggdrop.user
# Tue, 11 Sep 2018 22:55:56 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 11 Sep 2018 22:55:56 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 11 Sep 2018 22:55:56 GMT
EXPOSE 3333/tcp
# Tue, 11 Sep 2018 22:55:56 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Tue, 11 Sep 2018 22:55:57 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 11 Sep 2018 22:55:57 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 11 Sep 2018 22:55:57 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926d70e02e336bd99f571b4dcb3559e271e8828692d98358bbe5356307e1a53e`  
		Last Modified: Tue, 11 Sep 2018 22:56:19 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce023cda4d8be9e674bd3470ea36deef2f550e397afa48daac7dba6486e38b49`  
		Last Modified: Tue, 11 Sep 2018 22:56:18 GMT  
		Size: 8.8 KB (8847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd304d072d64b77eece79d4e6ba5ee0025dbc4245ca82404ec242e5eed853df`  
		Last Modified: Tue, 11 Sep 2018 22:56:32 GMT  
		Size: 4.4 MB (4402002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d28a94b92e95299e2f347f97e27204f3430fa6148ae240f4c4eb0eba9a026d22`  
		Last Modified: Tue, 11 Sep 2018 22:56:32 GMT  
		Size: 3.0 MB (3031976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed04c83e8f88ba701cf88a5770c843abb5706303b7b4b82f3580e4bbd4f0cb76`  
		Last Modified: Tue, 11 Sep 2018 22:56:31 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0acbaf2291b10bbf28072e4e325676b061dcae94a85b81f19270994dc39699`  
		Last Modified: Tue, 11 Sep 2018 22:56:31 GMT  
		Size: 699.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8.3`

```console
$ docker pull eggdrop@sha256:1c5d2dd27b22ae1b06be91634c9468ed6383ad693d5a1b4559104abe1c04f2b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:1.8.3` - linux; amd64

```console
$ docker pull eggdrop@sha256:0ea10c904adb22dc71f632d40309714cd0ad5e3d9174bf58fbab6408f1b5e898
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 MB (9553833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94e5180bdae50b62e7848650deafec75a8a10371dd2f9df6ec7f93f06d89983f`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:53:24 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 11 Sep 2018 22:53:25 GMT
RUN adduser -S eggdrop
# Tue, 11 Sep 2018 22:53:26 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 11 Sep 2018 22:55:01 GMT
RUN apk add --no-cache tcl bash openssl
# Tue, 11 Sep 2018 22:55:54 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.3.tar.gz.asc eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz.asc   && tar -zxvf eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz   && ( cd eggdrop-1.8.3     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.3   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Tue, 11 Sep 2018 22:55:55 GMT
ENV NICK=
# Tue, 11 Sep 2018 22:55:55 GMT
ENV SERVER=
# Tue, 11 Sep 2018 22:55:55 GMT
ENV LISTEN=3333
# Tue, 11 Sep 2018 22:55:55 GMT
ENV OWNER=
# Tue, 11 Sep 2018 22:55:55 GMT
ENV USERFILE=eggdrop.user
# Tue, 11 Sep 2018 22:55:56 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 11 Sep 2018 22:55:56 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 11 Sep 2018 22:55:56 GMT
EXPOSE 3333/tcp
# Tue, 11 Sep 2018 22:55:56 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Tue, 11 Sep 2018 22:55:57 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 11 Sep 2018 22:55:57 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 11 Sep 2018 22:55:57 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926d70e02e336bd99f571b4dcb3559e271e8828692d98358bbe5356307e1a53e`  
		Last Modified: Tue, 11 Sep 2018 22:56:19 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce023cda4d8be9e674bd3470ea36deef2f550e397afa48daac7dba6486e38b49`  
		Last Modified: Tue, 11 Sep 2018 22:56:18 GMT  
		Size: 8.8 KB (8847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd304d072d64b77eece79d4e6ba5ee0025dbc4245ca82404ec242e5eed853df`  
		Last Modified: Tue, 11 Sep 2018 22:56:32 GMT  
		Size: 4.4 MB (4402002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d28a94b92e95299e2f347f97e27204f3430fa6148ae240f4c4eb0eba9a026d22`  
		Last Modified: Tue, 11 Sep 2018 22:56:32 GMT  
		Size: 3.0 MB (3031976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed04c83e8f88ba701cf88a5770c843abb5706303b7b4b82f3580e4bbd4f0cb76`  
		Last Modified: Tue, 11 Sep 2018 22:56:31 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0acbaf2291b10bbf28072e4e325676b061dcae94a85b81f19270994dc39699`  
		Last Modified: Tue, 11 Sep 2018 22:56:31 GMT  
		Size: 699.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8.4rc1`

```console
$ docker pull eggdrop@sha256:5cafbb757de727fcd379cce218886c7a891c9a15b07e78d6c2930e306cf43f0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `eggdrop:1.8.4rc1` - linux; amd64

```console
$ docker pull eggdrop@sha256:c2e177f43d2b04b968d2b2f5a9c3aa59e2d16d9cfddae64ad470cce9b966c629
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10865974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6fdd43e303ad9e26ab8b29fd2fea256c9636a9f416913bd79b02ba19c566b5a`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:53:24 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 11 Sep 2018 22:53:25 GMT
RUN adduser -S eggdrop
# Tue, 11 Sep 2018 22:53:26 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 11 Sep 2018 22:55:01 GMT
RUN apk add --no-cache tcl bash openssl
# Thu, 13 Dec 2018 07:28:22 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.4rc1.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.4rc1.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.4rc1.tar.gz.asc eggdrop-1.8.4rc1.tar.gz   && command -v gpgconf > /dev/null   && gpgconf --kill all   && rm eggdrop-1.8.4rc1.tar.gz.asc   && tar -zxvf eggdrop-1.8.4rc1.tar.gz   && rm eggdrop-1.8.4rc1.tar.gz   && ( cd eggdrop-1.8.4rc1     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.4rc1   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Thu, 13 Dec 2018 07:28:23 GMT
ENV NICK=
# Thu, 13 Dec 2018 07:28:23 GMT
ENV SERVER=
# Thu, 13 Dec 2018 07:28:23 GMT
ENV LISTEN=3333
# Thu, 13 Dec 2018 07:28:23 GMT
ENV OWNER=
# Thu, 13 Dec 2018 07:28:24 GMT
ENV USERFILE=eggdrop.user
# Thu, 13 Dec 2018 07:28:24 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 13 Dec 2018 07:28:24 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 13 Dec 2018 07:28:24 GMT
EXPOSE 3333/tcp
# Thu, 13 Dec 2018 07:28:25 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Thu, 13 Dec 2018 07:28:25 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Thu, 13 Dec 2018 07:28:25 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 13 Dec 2018 07:28:26 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926d70e02e336bd99f571b4dcb3559e271e8828692d98358bbe5356307e1a53e`  
		Last Modified: Tue, 11 Sep 2018 22:56:19 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce023cda4d8be9e674bd3470ea36deef2f550e397afa48daac7dba6486e38b49`  
		Last Modified: Tue, 11 Sep 2018 22:56:18 GMT  
		Size: 8.8 KB (8847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd304d072d64b77eece79d4e6ba5ee0025dbc4245ca82404ec242e5eed853df`  
		Last Modified: Tue, 11 Sep 2018 22:56:32 GMT  
		Size: 4.4 MB (4402002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28851e16510040dd9df735abeb7897aed0a8b3775e9ac40e2286bf9b7ba503c9`  
		Last Modified: Thu, 13 Dec 2018 07:29:11 GMT  
		Size: 4.3 MB (4344100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55446e15ae39426d7a3469c9a2204f472c3f26ffcda9cef63065fea18b9029d7`  
		Last Modified: Thu, 13 Dec 2018 07:29:10 GMT  
		Size: 1.9 KB (1886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d899b67ebeec253542522e3511a747d1e0ade0b3abc2cdb7ca26e75062f54379`  
		Last Modified: Thu, 13 Dec 2018 07:29:10 GMT  
		Size: 707.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eggdrop:1.8.4rc1` - linux; arm variant v6

```console
$ docker pull eggdrop@sha256:208edee53d3d7cabbd50f230a5568360e74cbecf6cf8af80c20d22335bfeba7a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.0 MB (9018530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b81099b00f6f8ee3306c7eacebd8e779c676a668a233ccd5c208b466e080a63`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:32 GMT
ADD file:47756a54e89ec523296aa20963b604f1619f1346f5ef85cd184d29694b45ca41 in / 
# Wed, 12 Sep 2018 07:49:33 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:34 GMT
CMD ["/bin/sh"]
# Wed, 03 Oct 2018 07:49:30 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Wed, 03 Oct 2018 07:49:31 GMT
RUN adduser -S eggdrop
# Wed, 03 Oct 2018 07:49:32 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 13 Dec 2018 08:51:38 GMT
RUN apk add --no-cache tcl bash openssl
# Thu, 13 Dec 2018 08:53:07 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.4rc1.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.4rc1.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.4rc1.tar.gz.asc eggdrop-1.8.4rc1.tar.gz   && command -v gpgconf > /dev/null   && gpgconf --kill all   && rm eggdrop-1.8.4rc1.tar.gz.asc   && tar -zxvf eggdrop-1.8.4rc1.tar.gz   && rm eggdrop-1.8.4rc1.tar.gz   && ( cd eggdrop-1.8.4rc1     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.4rc1   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Thu, 13 Dec 2018 08:53:08 GMT
ENV NICK=
# Thu, 13 Dec 2018 08:53:08 GMT
ENV SERVER=
# Thu, 13 Dec 2018 08:53:08 GMT
ENV LISTEN=3333
# Thu, 13 Dec 2018 08:53:09 GMT
ENV OWNER=
# Thu, 13 Dec 2018 08:53:09 GMT
ENV USERFILE=eggdrop.user
# Thu, 13 Dec 2018 08:53:09 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 13 Dec 2018 08:53:10 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 13 Dec 2018 08:53:10 GMT
EXPOSE 3333/tcp
# Thu, 13 Dec 2018 08:53:11 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Thu, 13 Dec 2018 08:53:11 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Thu, 13 Dec 2018 08:53:11 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 13 Dec 2018 08:53:12 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:c2dacc7b3755044bd80e7edb446986de7cfade7636ea19f3b7eb64e8c88bf3fd`  
		Last Modified: Wed, 12 Sep 2018 07:50:02 GMT  
		Size: 2.1 MB (2051097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:684756a9d4ca4d4de310f5d47bb7c15bd0065aa787da5bab1736082d28281370`  
		Last Modified: Wed, 12 Sep 2018 07:50:03 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a1804d6773d9f5a54c9a145caaf4c5f560110db9a83993961b02028402ac18d`  
		Last Modified: Wed, 03 Oct 2018 07:51:26 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0330c2151a31411d3194b5631c9d760390fbeb2bd95cbeb9beacd665d63db9`  
		Last Modified: Wed, 03 Oct 2018 07:51:25 GMT  
		Size: 9.0 KB (9021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88a8eefd1c32d3fa04ee718e8a078977c2b7e07b688cef0380813f61a5a77c8f`  
		Last Modified: Thu, 13 Dec 2018 08:53:49 GMT  
		Size: 3.9 MB (3946107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:828ef2ab94c38ac39e84006c87fb14514ced976ba550447777e0cc75261141ba`  
		Last Modified: Thu, 13 Dec 2018 08:53:48 GMT  
		Size: 3.0 MB (3008254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3f8a2f147e41c7291801685ca01999b0d81d55ee90989e8c8e94375af55ca6d`  
		Last Modified: Thu, 13 Dec 2018 08:53:47 GMT  
		Size: 1.9 KB (1884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24d3917d0139be973edb43011a2fd1deb68b771a4229922c2212867550539fa`  
		Last Modified: Thu, 13 Dec 2018 08:53:47 GMT  
		Size: 709.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eggdrop:1.8.4rc1` - linux; arm64 variant v8

```console
$ docker pull eggdrop@sha256:2c3c61ae1b6f3c6aabee0ec52e9e6a85d49127c0f729b6025ece001fefd5d755
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8935222 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37e1be2eeb6f75f99f9602a00ca4c5d4336a2e0f4d5249d4775fa26b176720db`
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
# Thu, 13 Dec 2018 09:49:00 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.4rc1.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.4rc1.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.4rc1.tar.gz.asc eggdrop-1.8.4rc1.tar.gz   && command -v gpgconf > /dev/null   && gpgconf --kill all   && rm eggdrop-1.8.4rc1.tar.gz.asc   && tar -zxvf eggdrop-1.8.4rc1.tar.gz   && rm eggdrop-1.8.4rc1.tar.gz   && ( cd eggdrop-1.8.4rc1     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.4rc1   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Thu, 13 Dec 2018 09:49:00 GMT
ENV NICK=
# Thu, 13 Dec 2018 09:49:01 GMT
ENV SERVER=
# Thu, 13 Dec 2018 09:49:02 GMT
ENV LISTEN=3333
# Thu, 13 Dec 2018 09:49:02 GMT
ENV OWNER=
# Thu, 13 Dec 2018 09:49:03 GMT
ENV USERFILE=eggdrop.user
# Thu, 13 Dec 2018 09:49:03 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 13 Dec 2018 09:49:04 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 13 Dec 2018 09:49:05 GMT
EXPOSE 3333/tcp
# Thu, 13 Dec 2018 09:49:05 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Thu, 13 Dec 2018 09:49:06 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Thu, 13 Dec 2018 09:49:07 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 13 Dec 2018 09:49:07 GMT
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
	-	`sha256:b648d453e4a52f1a477914935b4ef651e91c90a8a0f03b1a0b5d11f25f9065c6`  
		Last Modified: Thu, 13 Dec 2018 09:49:53 GMT  
		Size: 3.0 MB (3009767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fd36d8718fc963a402f502e9b702270b7dbf419b1e82ac56b1db204ab9b8c9a`  
		Last Modified: Thu, 13 Dec 2018 09:49:51 GMT  
		Size: 1.9 KB (1886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ef1a46cb95b250bd9d8276dcbde128fe505b920987b76ec366543553e366403`  
		Last Modified: Thu, 13 Dec 2018 09:49:52 GMT  
		Size: 709.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:be69f4dd3bec060421bd88d50863b548c89cfe890b5f5336d15b6da02cf6d9c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `eggdrop:develop` - linux; amd64

```console
$ docker pull eggdrop@sha256:8d39f504e08f9a759455c67b7727cd3c0cbf7a3c654b4bf246b7ef6f381fef22
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13912902 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2c439083f96b3b0caa3c35b55c30a50fb2094a47c0bcdd75815e52cfcb14889`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:53:24 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 11 Sep 2018 22:53:25 GMT
RUN adduser -S eggdrop
# Tue, 11 Sep 2018 22:53:26 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 13 Dec 2018 07:26:05 GMT
ENV EGGDROP_SHA256=18839206eddcc529205328639c064f152316afd240b0ad5df1b53f3ccf623cbf
# Thu, 13 Dec 2018 07:26:05 GMT
ENV EGGDROP_COMMIT=35808b2bcaaf6a81e43835e4e18ecb4848ded75a
# Thu, 13 Dec 2018 07:26:07 GMT
RUN apk --update add --no-cache tcl bash openssl
# Thu, 13 Dec 2018 07:27:00 GMT
RUN apk --update add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Thu, 13 Dec 2018 07:27:03 GMT
ENV NICK=
# Thu, 13 Dec 2018 07:27:03 GMT
ENV SERVER=
# Thu, 13 Dec 2018 07:27:04 GMT
ENV LISTEN=3333
# Thu, 13 Dec 2018 07:27:04 GMT
ENV OWNER=
# Thu, 13 Dec 2018 07:27:04 GMT
ENV USERFILE=eggdrop.user
# Thu, 13 Dec 2018 07:27:04 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 13 Dec 2018 07:27:05 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 13 Dec 2018 07:27:05 GMT
EXPOSE 3333/tcp
# Thu, 13 Dec 2018 07:27:05 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Thu, 13 Dec 2018 07:27:06 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Thu, 13 Dec 2018 07:27:06 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 13 Dec 2018 07:27:06 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926d70e02e336bd99f571b4dcb3559e271e8828692d98358bbe5356307e1a53e`  
		Last Modified: Tue, 11 Sep 2018 22:56:19 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce023cda4d8be9e674bd3470ea36deef2f550e397afa48daac7dba6486e38b49`  
		Last Modified: Tue, 11 Sep 2018 22:56:18 GMT  
		Size: 8.8 KB (8847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90198caaf5b6652ec449aedf5be6e3a7281f2b3c60e7bd34eb18d7ebfe5e9884`  
		Last Modified: Thu, 13 Dec 2018 07:28:51 GMT  
		Size: 4.4 MB (4402972 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79488c5b5c2dfaab64b21e6d76ccc2885afa5feb2b548c933f0b41cc3d001f7b`  
		Last Modified: Thu, 13 Dec 2018 07:28:51 GMT  
		Size: 7.4 MB (7390062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e97cf78c129343f4666caa76b93e9a1025443996e5fdfb15b141acc1643f8279`  
		Last Modified: Thu, 13 Dec 2018 07:28:50 GMT  
		Size: 1.9 KB (1883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32feecf34edc4203fe6b8a3c1aab31b71fb3b41f3cf7db62df585fd23b26f4c3`  
		Last Modified: Thu, 13 Dec 2018 07:28:50 GMT  
		Size: 706.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eggdrop:develop` - linux; arm variant v6

```console
$ docker pull eggdrop@sha256:a7d4bf323e7fc5591d6feb0fce6427951c93800c52f2c995141cacbe8747e3e8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.4 MB (13356093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22a416fec8ede6f77c6418f3e9802d305d9ee64c80b3a5929b44ccb381800659`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:32 GMT
ADD file:47756a54e89ec523296aa20963b604f1619f1346f5ef85cd184d29694b45ca41 in / 
# Wed, 12 Sep 2018 07:49:33 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:34 GMT
CMD ["/bin/sh"]
# Wed, 03 Oct 2018 07:49:30 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Wed, 03 Oct 2018 07:49:31 GMT
RUN adduser -S eggdrop
# Wed, 03 Oct 2018 07:49:32 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Thu, 13 Dec 2018 08:49:32 GMT
ENV EGGDROP_SHA256=18839206eddcc529205328639c064f152316afd240b0ad5df1b53f3ccf623cbf
# Thu, 13 Dec 2018 08:49:32 GMT
ENV EGGDROP_COMMIT=35808b2bcaaf6a81e43835e4e18ecb4848ded75a
# Thu, 13 Dec 2018 08:49:36 GMT
RUN apk --update add --no-cache tcl bash openssl
# Thu, 13 Dec 2018 08:51:13 GMT
RUN apk --update add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Thu, 13 Dec 2018 08:51:13 GMT
ENV NICK=
# Thu, 13 Dec 2018 08:51:13 GMT
ENV SERVER=
# Thu, 13 Dec 2018 08:51:14 GMT
ENV LISTEN=3333
# Thu, 13 Dec 2018 08:51:14 GMT
ENV OWNER=
# Thu, 13 Dec 2018 08:51:14 GMT
ENV USERFILE=eggdrop.user
# Thu, 13 Dec 2018 08:51:15 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 13 Dec 2018 08:51:15 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 13 Dec 2018 08:51:15 GMT
EXPOSE 3333/tcp
# Thu, 13 Dec 2018 08:51:16 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Thu, 13 Dec 2018 08:51:16 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Thu, 13 Dec 2018 08:51:17 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 13 Dec 2018 08:51:17 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:c2dacc7b3755044bd80e7edb446986de7cfade7636ea19f3b7eb64e8c88bf3fd`  
		Last Modified: Wed, 12 Sep 2018 07:50:02 GMT  
		Size: 2.1 MB (2051097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:684756a9d4ca4d4de310f5d47bb7c15bd0065aa787da5bab1736082d28281370`  
		Last Modified: Wed, 12 Sep 2018 07:50:03 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a1804d6773d9f5a54c9a145caaf4c5f560110db9a83993961b02028402ac18d`  
		Last Modified: Wed, 03 Oct 2018 07:51:26 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f0330c2151a31411d3194b5631c9d760390fbeb2bd95cbeb9beacd665d63db9`  
		Last Modified: Wed, 03 Oct 2018 07:51:25 GMT  
		Size: 9.0 KB (9021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76d6c540c92686afb88abf20f99425813c316b6b2bcce636b617a7752c4d5534`  
		Last Modified: Thu, 13 Dec 2018 08:53:38 GMT  
		Size: 3.9 MB (3946094 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bac2bfda5a26177d6a679394cca9796f427d08375dfd67892dfb09b61be7a70`  
		Last Modified: Thu, 13 Dec 2018 08:53:38 GMT  
		Size: 7.3 MB (7345829 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f211a61fcba3f092de2b2a7b20518706270b0df62bee026e3194cc6f94894ed`  
		Last Modified: Thu, 13 Dec 2018 08:53:32 GMT  
		Size: 1.9 KB (1886 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d56d05a2a3a89d0267c343648b2bbdd6fd55d95049a046fc60238dc5ddf913a`  
		Last Modified: Thu, 13 Dec 2018 08:53:32 GMT  
		Size: 708.0 B  
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
$ docker pull eggdrop@sha256:1c5d2dd27b22ae1b06be91634c9468ed6383ad693d5a1b4559104abe1c04f2b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:latest` - linux; amd64

```console
$ docker pull eggdrop@sha256:0ea10c904adb22dc71f632d40309714cd0ad5e3d9174bf58fbab6408f1b5e898
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 MB (9553833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94e5180bdae50b62e7848650deafec75a8a10371dd2f9df6ec7f93f06d89983f`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:53:24 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 11 Sep 2018 22:53:25 GMT
RUN adduser -S eggdrop
# Tue, 11 Sep 2018 22:53:26 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 11 Sep 2018 22:55:01 GMT
RUN apk add --no-cache tcl bash openssl
# Tue, 11 Sep 2018 22:55:54 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.3.tar.gz.asc eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz.asc   && tar -zxvf eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz   && ( cd eggdrop-1.8.3     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.3   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Tue, 11 Sep 2018 22:55:55 GMT
ENV NICK=
# Tue, 11 Sep 2018 22:55:55 GMT
ENV SERVER=
# Tue, 11 Sep 2018 22:55:55 GMT
ENV LISTEN=3333
# Tue, 11 Sep 2018 22:55:55 GMT
ENV OWNER=
# Tue, 11 Sep 2018 22:55:55 GMT
ENV USERFILE=eggdrop.user
# Tue, 11 Sep 2018 22:55:56 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 11 Sep 2018 22:55:56 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 11 Sep 2018 22:55:56 GMT
EXPOSE 3333/tcp
# Tue, 11 Sep 2018 22:55:56 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Tue, 11 Sep 2018 22:55:57 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 11 Sep 2018 22:55:57 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 11 Sep 2018 22:55:57 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926d70e02e336bd99f571b4dcb3559e271e8828692d98358bbe5356307e1a53e`  
		Last Modified: Tue, 11 Sep 2018 22:56:19 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce023cda4d8be9e674bd3470ea36deef2f550e397afa48daac7dba6486e38b49`  
		Last Modified: Tue, 11 Sep 2018 22:56:18 GMT  
		Size: 8.8 KB (8847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd304d072d64b77eece79d4e6ba5ee0025dbc4245ca82404ec242e5eed853df`  
		Last Modified: Tue, 11 Sep 2018 22:56:32 GMT  
		Size: 4.4 MB (4402002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d28a94b92e95299e2f347f97e27204f3430fa6148ae240f4c4eb0eba9a026d22`  
		Last Modified: Tue, 11 Sep 2018 22:56:32 GMT  
		Size: 3.0 MB (3031976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed04c83e8f88ba701cf88a5770c843abb5706303b7b4b82f3580e4bbd4f0cb76`  
		Last Modified: Tue, 11 Sep 2018 22:56:31 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0acbaf2291b10bbf28072e4e325676b061dcae94a85b81f19270994dc39699`  
		Last Modified: Tue, 11 Sep 2018 22:56:31 GMT  
		Size: 699.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:stable`

```console
$ docker pull eggdrop@sha256:1c5d2dd27b22ae1b06be91634c9468ed6383ad693d5a1b4559104abe1c04f2b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:stable` - linux; amd64

```console
$ docker pull eggdrop@sha256:0ea10c904adb22dc71f632d40309714cd0ad5e3d9174bf58fbab6408f1b5e898
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 MB (9553833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94e5180bdae50b62e7848650deafec75a8a10371dd2f9df6ec7f93f06d89983f`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:53:24 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 11 Sep 2018 22:53:25 GMT
RUN adduser -S eggdrop
# Tue, 11 Sep 2018 22:53:26 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 11 Sep 2018 22:55:01 GMT
RUN apk add --no-cache tcl bash openssl
# Tue, 11 Sep 2018 22:55:54 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.3.tar.gz.asc eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz.asc   && tar -zxvf eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz   && ( cd eggdrop-1.8.3     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.3   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Tue, 11 Sep 2018 22:55:55 GMT
ENV NICK=
# Tue, 11 Sep 2018 22:55:55 GMT
ENV SERVER=
# Tue, 11 Sep 2018 22:55:55 GMT
ENV LISTEN=3333
# Tue, 11 Sep 2018 22:55:55 GMT
ENV OWNER=
# Tue, 11 Sep 2018 22:55:55 GMT
ENV USERFILE=eggdrop.user
# Tue, 11 Sep 2018 22:55:56 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 11 Sep 2018 22:55:56 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 11 Sep 2018 22:55:56 GMT
EXPOSE 3333/tcp
# Tue, 11 Sep 2018 22:55:56 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Tue, 11 Sep 2018 22:55:57 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 11 Sep 2018 22:55:57 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 11 Sep 2018 22:55:57 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:926d70e02e336bd99f571b4dcb3559e271e8828692d98358bbe5356307e1a53e`  
		Last Modified: Tue, 11 Sep 2018 22:56:19 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce023cda4d8be9e674bd3470ea36deef2f550e397afa48daac7dba6486e38b49`  
		Last Modified: Tue, 11 Sep 2018 22:56:18 GMT  
		Size: 8.8 KB (8847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd304d072d64b77eece79d4e6ba5ee0025dbc4245ca82404ec242e5eed853df`  
		Last Modified: Tue, 11 Sep 2018 22:56:32 GMT  
		Size: 4.4 MB (4402002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d28a94b92e95299e2f347f97e27204f3430fa6148ae240f4c4eb0eba9a026d22`  
		Last Modified: Tue, 11 Sep 2018 22:56:32 GMT  
		Size: 3.0 MB (3031976 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed04c83e8f88ba701cf88a5770c843abb5706303b7b4b82f3580e4bbd4f0cb76`  
		Last Modified: Tue, 11 Sep 2018 22:56:31 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c0acbaf2291b10bbf28072e4e325676b061dcae94a85b81f19270994dc39699`  
		Last Modified: Tue, 11 Sep 2018 22:56:31 GMT  
		Size: 699.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
