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
$ docker pull eggdrop@sha256:928c3b2f465f57214b3947bac00f658d8a79479288a1e76454be91796be013e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `eggdrop:develop` - linux; amd64

```console
$ docker pull eggdrop@sha256:5771a74ac0a5d9386f8107cad03109f1c5c3f0e1ec00802dc1a9503b0fcc9139
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.9 MB (13852591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7b7aa06a04bdd5daf30a434dfe774257d1cd1bc119d67279f4aa1393fd455be`
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
# Wed, 17 Oct 2018 22:19:31 GMT
ENV EGGDROP_SHA256=a524d50fdbf94ee050ddc123fe5f11a0cee264203576841d5f790081355f79b9
# Wed, 17 Oct 2018 22:19:32 GMT
ENV EGGDROP_COMMIT=bb17ee0b19be6e42ab641db95ed2c8874a5b55bd
# Wed, 17 Oct 2018 22:19:33 GMT
RUN apk --update add --no-cache tcl bash openssl
# Wed, 17 Oct 2018 22:20:25 GMT
RUN apk --update add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Wed, 17 Oct 2018 22:20:29 GMT
ENV NICK=
# Wed, 17 Oct 2018 22:20:29 GMT
ENV SERVER=
# Wed, 17 Oct 2018 22:20:29 GMT
ENV LISTEN=3333
# Wed, 17 Oct 2018 22:20:29 GMT
ENV OWNER=
# Wed, 17 Oct 2018 22:20:30 GMT
ENV USERFILE=eggdrop.user
# Wed, 17 Oct 2018 22:20:30 GMT
ENV CHANFILE=eggdrop.chan
# Wed, 17 Oct 2018 22:20:30 GMT
WORKDIR /home/eggdrop/eggdrop
# Wed, 17 Oct 2018 22:20:30 GMT
EXPOSE 3333/tcp
# Wed, 17 Oct 2018 22:20:31 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Wed, 17 Oct 2018 22:20:31 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Wed, 17 Oct 2018 22:20:31 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Wed, 17 Oct 2018 22:20:31 GMT
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
	-	`sha256:81b0942320936137df753d48e5928591bf994c8008b1f23f43e30c3029911be9`  
		Last Modified: Wed, 17 Oct 2018 22:20:53 GMT  
		Size: 4.4 MB (4402140 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b98ab02967d3d03883793699b46719ce1e8b53ed31d5ae6ed78939f91ba8d5f7`  
		Last Modified: Wed, 17 Oct 2018 22:20:53 GMT  
		Size: 7.3 MB (7330581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e44472b869c83ca3991b60e3e90878a21ab2a940964efcde393c85dcefe3d7be`  
		Last Modified: Wed, 17 Oct 2018 22:20:52 GMT  
		Size: 1.9 KB (1885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e00ad5f635006a5fd2244c27dd5328c43292227092a40f2071692238e4a6c1ad`  
		Last Modified: Wed, 17 Oct 2018 22:20:51 GMT  
		Size: 706.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eggdrop:develop` - linux; arm variant v6

```console
$ docker pull eggdrop@sha256:1b886db77b0933ec4e737acc7ce572aa69e1927d3a6c983bd802d037be564c0c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.3 MB (13298336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26b807456423f0000d5c79670ce266072ca6dad48afa777beda4a4477d1af18b`
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
# Thu, 18 Oct 2018 07:49:29 GMT
ENV EGGDROP_SHA256=a524d50fdbf94ee050ddc123fe5f11a0cee264203576841d5f790081355f79b9
# Thu, 18 Oct 2018 07:49:30 GMT
ENV EGGDROP_COMMIT=bb17ee0b19be6e42ab641db95ed2c8874a5b55bd
# Thu, 18 Oct 2018 07:49:33 GMT
RUN apk --update add --no-cache tcl bash openssl
# Thu, 18 Oct 2018 07:51:10 GMT
RUN apk --update add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Thu, 18 Oct 2018 07:51:13 GMT
ENV NICK=
# Thu, 18 Oct 2018 07:51:13 GMT
ENV SERVER=
# Thu, 18 Oct 2018 07:51:14 GMT
ENV LISTEN=3333
# Thu, 18 Oct 2018 07:51:14 GMT
ENV OWNER=
# Thu, 18 Oct 2018 07:51:17 GMT
ENV USERFILE=eggdrop.user
# Thu, 18 Oct 2018 07:51:17 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 18 Oct 2018 07:51:17 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 18 Oct 2018 07:51:18 GMT
EXPOSE 3333/tcp
# Thu, 18 Oct 2018 07:51:18 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Thu, 18 Oct 2018 07:51:19 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Thu, 18 Oct 2018 07:51:19 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 18 Oct 2018 07:51:19 GMT
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
	-	`sha256:27f7ca5eb3f7742f089ffe18460be433576ef82090a04f60b17a321831482320`  
		Last Modified: Thu, 18 Oct 2018 07:51:29 GMT  
		Size: 3.9 MB (3945049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:041500d957a41178c6d03e2326b6de31630efe6723d6cab9ab19585f1d98fa90`  
		Last Modified: Thu, 18 Oct 2018 07:51:30 GMT  
		Size: 7.3 MB (7289121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50c53d8f3044b98523c00f3cb50888d81bdab6d7f909ec4e50bf4fd8cf19295a`  
		Last Modified: Thu, 18 Oct 2018 07:51:27 GMT  
		Size: 1.9 KB (1884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ffd40327a7db4a6075edcd4c6a37a1008e48c3e215cfdcc5713dd5ad24dd46`  
		Last Modified: Thu, 18 Oct 2018 07:51:27 GMT  
		Size: 706.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eggdrop:develop` - linux; arm64 variant v8

```console
$ docker pull eggdrop@sha256:bcb3abccc9816e8ffbd48d384c19a76b5614d9436652b4e36673ae00bd28eeec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **13.2 MB (13220726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:503300f139803317ce6504b343a7e8cf478c2709c1c0ce2d92efc01464268eb5`
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
# Wed, 03 Oct 2018 08:46:34 GMT
ENV EGGDROP_SHA256=74212f33f8c44be68ea6bd8c41f636620771328f9e8dc1549e218e637efbc9bc
# Wed, 03 Oct 2018 08:46:34 GMT
ENV EGGDROP_COMMIT=83d237a1d82a74dd36c86bacd4b833131143c062
# Wed, 03 Oct 2018 08:46:39 GMT
RUN apk --update add --no-cache tcl bash openssl
# Wed, 03 Oct 2018 08:49:02 GMT
RUN apk --update add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Wed, 03 Oct 2018 08:49:03 GMT
ENV NICK=
# Wed, 03 Oct 2018 08:49:04 GMT
ENV SERVER=
# Wed, 03 Oct 2018 08:49:05 GMT
ENV LISTEN=3333
# Wed, 03 Oct 2018 08:49:06 GMT
ENV OWNER=
# Wed, 03 Oct 2018 08:49:07 GMT
ENV USERFILE=eggdrop.user
# Wed, 03 Oct 2018 08:49:08 GMT
ENV CHANFILE=eggdrop.chan
# Wed, 03 Oct 2018 08:49:09 GMT
WORKDIR /home/eggdrop/eggdrop
# Wed, 03 Oct 2018 08:49:09 GMT
EXPOSE 3333/tcp
# Wed, 03 Oct 2018 08:49:10 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Wed, 03 Oct 2018 08:49:11 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Wed, 03 Oct 2018 08:49:12 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Wed, 03 Oct 2018 08:49:13 GMT
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
	-	`sha256:baa928bddfb0bdec82a23e871b8bfa97a680ae726bd4db8b8c0ffa1720233bf1`  
		Last Modified: Wed, 03 Oct 2018 08:49:33 GMT  
		Size: 3.9 MB (3911837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed570191d576972e5e47dc481eeff999a969ae5bdbc5870dca33992786bf72a8`  
		Last Modified: Wed, 03 Oct 2018 08:49:34 GMT  
		Size: 7.3 MB (7296724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88b4e4d43b8183f7b6a1cbd571af203e827957d614bf2b6a1d4bd7c276d2dad7`  
		Last Modified: Wed, 03 Oct 2018 08:49:31 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d04946d9d9b7cdd251d408e808cd03609f088d3b7943f61e07acc46ef47f45a`  
		Last Modified: Wed, 03 Oct 2018 08:49:31 GMT  
		Size: 703.0 B  
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
