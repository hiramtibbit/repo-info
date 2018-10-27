<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `eggdrop`

-	[`eggdrop:1.8`](#eggdrop18)
-	[`eggdrop:1.8.3`](#eggdrop183)
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

## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:3002ba162602e16d719101fc3727d7e47ddb0958a8ad8cda7f3c2498f46685e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `eggdrop:develop` - linux; amd64

```console
$ docker pull eggdrop@sha256:a58ef149cc2bb017f1c36fa7b71ce192cdbd8e9a412c19cd05fd0d7543d3fd0e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13892502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d21d854594e1bc5a88697a7e65068872fb4c69432795ce82db09328cdcb2b7bc`
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
# Fri, 26 Oct 2018 23:25:10 GMT
ENV EGGDROP_SHA256=e0e17acf626e763764ac6a9196a22338dd4a8f5f56d95c80c4b73cc375f80420
# Fri, 26 Oct 2018 23:25:10 GMT
ENV EGGDROP_COMMIT=55c83c6772d904752bf1f20e41e85b86ac883342
# Fri, 26 Oct 2018 23:25:12 GMT
RUN apk --update add --no-cache tcl bash openssl
# Fri, 26 Oct 2018 23:26:05 GMT
RUN apk --update add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Fri, 26 Oct 2018 23:26:05 GMT
ENV NICK=
# Fri, 26 Oct 2018 23:26:05 GMT
ENV SERVER=
# Fri, 26 Oct 2018 23:26:06 GMT
ENV LISTEN=3333
# Fri, 26 Oct 2018 23:26:06 GMT
ENV OWNER=
# Fri, 26 Oct 2018 23:26:06 GMT
ENV USERFILE=eggdrop.user
# Fri, 26 Oct 2018 23:26:07 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 26 Oct 2018 23:26:07 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 26 Oct 2018 23:26:08 GMT
EXPOSE 3333/tcp
# Fri, 26 Oct 2018 23:26:08 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Fri, 26 Oct 2018 23:26:08 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Fri, 26 Oct 2018 23:26:09 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 26 Oct 2018 23:26:09 GMT
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
	-	`sha256:d1c4878e6be3104dc64987cab672ae6c7ae96a3bab0cbc564a2ee97d199c94f0`  
		Last Modified: Fri, 26 Oct 2018 23:26:42 GMT  
		Size: 4.4 MB (4402133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48e58dcfb941af1c950ee578de0924ac0ed781dc9137cfea52aed220e23047a7`  
		Last Modified: Fri, 26 Oct 2018 23:26:42 GMT  
		Size: 7.4 MB (7370505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2819a8443ea38063b6a76355fe8082cf63e28226287bf97846e4e02795e53e5f`  
		Last Modified: Fri, 26 Oct 2018 23:26:41 GMT  
		Size: 1.9 KB (1880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72643073558cd987f569b6e61a903d67ae9dbfd9f4665c1f14ecdceda8b3f8ed`  
		Last Modified: Fri, 26 Oct 2018 23:26:41 GMT  
		Size: 705.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eggdrop:develop` - linux; arm variant v6

```console
$ docker pull eggdrop@sha256:86c2d08b96f5bb492f9cb8b055c30c991f0294344ae050f6fa7b9500659ce7ce
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13336539 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e608db81cc48f4ca7ed2c2c8a14f823ca239a3d19f8701a370203e5debb53c24`
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
# Sat, 27 Oct 2018 07:50:01 GMT
ENV EGGDROP_SHA256=e0e17acf626e763764ac6a9196a22338dd4a8f5f56d95c80c4b73cc375f80420
# Sat, 27 Oct 2018 07:50:01 GMT
ENV EGGDROP_COMMIT=55c83c6772d904752bf1f20e41e85b86ac883342
# Sat, 27 Oct 2018 07:50:05 GMT
RUN apk --update add --no-cache tcl bash openssl
# Sat, 27 Oct 2018 07:51:40 GMT
RUN apk --update add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Sat, 27 Oct 2018 07:51:41 GMT
ENV NICK=
# Sat, 27 Oct 2018 07:51:41 GMT
ENV SERVER=
# Sat, 27 Oct 2018 07:51:41 GMT
ENV LISTEN=3333
# Sat, 27 Oct 2018 07:51:41 GMT
ENV OWNER=
# Sat, 27 Oct 2018 07:51:42 GMT
ENV USERFILE=eggdrop.user
# Sat, 27 Oct 2018 07:51:42 GMT
ENV CHANFILE=eggdrop.chan
# Sat, 27 Oct 2018 07:51:42 GMT
WORKDIR /home/eggdrop/eggdrop
# Sat, 27 Oct 2018 07:51:43 GMT
EXPOSE 3333/tcp
# Sat, 27 Oct 2018 07:51:43 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Sat, 27 Oct 2018 07:51:44 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Sat, 27 Oct 2018 07:51:44 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Sat, 27 Oct 2018 07:51:44 GMT
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
	-	`sha256:1382983175d9212bbbe54be59e743a2a922e5d3b408bff939556db0a31e97430`  
		Last Modified: Sat, 27 Oct 2018 07:52:14 GMT  
		Size: 3.9 MB (3945033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee3a2f3e67ac63f9e7bf2ef75f0f1a0903d59d0032f7a7c0825f2111082a0e2c`  
		Last Modified: Sat, 27 Oct 2018 07:52:15 GMT  
		Size: 7.3 MB (7327346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:257eeae242a33e5b6ab55d454610d596b47ef5cb07c75b6140f6bfb12f25b168`  
		Last Modified: Sat, 27 Oct 2018 07:52:12 GMT  
		Size: 1.9 KB (1880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b61fb92f2b4f4993a079c966c98d40ba10b309299d692c35ad6a04f2130f11`  
		Last Modified: Sat, 27 Oct 2018 07:52:12 GMT  
		Size: 704.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eggdrop:develop` - linux; arm64 variant v8

```console
$ docker pull eggdrop@sha256:a329c3f898d88f8d6422d46203e63c0320d031b3c64d4554f7348b51427872d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13261435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3288c6c71d2a74030d2843305e12028ff5eb6c79f4b7c3ca0ae4f5c95ed9d119`
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
# Sat, 27 Oct 2018 08:39:57 GMT
ENV EGGDROP_SHA256=e0e17acf626e763764ac6a9196a22338dd4a8f5f56d95c80c4b73cc375f80420
# Sat, 27 Oct 2018 08:39:58 GMT
ENV EGGDROP_COMMIT=55c83c6772d904752bf1f20e41e85b86ac883342
# Sat, 27 Oct 2018 08:40:04 GMT
RUN apk --update add --no-cache tcl bash openssl
# Sat, 27 Oct 2018 08:42:12 GMT
RUN apk --update add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Sat, 27 Oct 2018 08:42:14 GMT
ENV NICK=
# Sat, 27 Oct 2018 08:42:14 GMT
ENV SERVER=
# Sat, 27 Oct 2018 08:42:15 GMT
ENV LISTEN=3333
# Sat, 27 Oct 2018 08:42:16 GMT
ENV OWNER=
# Sat, 27 Oct 2018 08:42:16 GMT
ENV USERFILE=eggdrop.user
# Sat, 27 Oct 2018 08:42:17 GMT
ENV CHANFILE=eggdrop.chan
# Sat, 27 Oct 2018 08:42:17 GMT
WORKDIR /home/eggdrop/eggdrop
# Sat, 27 Oct 2018 08:42:18 GMT
EXPOSE 3333/tcp
# Sat, 27 Oct 2018 08:42:19 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Sat, 27 Oct 2018 08:42:20 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Sat, 27 Oct 2018 08:42:21 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Sat, 27 Oct 2018 08:42:22 GMT
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
	-	`sha256:edc669af8bcb39e1cb469c2bff27e91a5b217896a8dd3abca28f2b2373a90dea`  
		Last Modified: Sat, 27 Oct 2018 08:42:48 GMT  
		Size: 3.9 MB (3911984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f42c67017b4f68370c552d8bb68e6d5e0685fae2e673cfd4eb1bea2ab1c1fae`  
		Last Modified: Sat, 27 Oct 2018 08:42:49 GMT  
		Size: 7.3 MB (7337277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab3111b96ae5a40f7a27737c9d721aee9c7aeeb57273c58f8c63004057138a0`  
		Last Modified: Sat, 27 Oct 2018 08:42:46 GMT  
		Size: 1.9 KB (1882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:608abd3bf96144928a1cfd044dcf7b1768325a660dd6dbce36913cff1fe55655`  
		Last Modified: Sat, 27 Oct 2018 08:42:46 GMT  
		Size: 708.0 B  
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
