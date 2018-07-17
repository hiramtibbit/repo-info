<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `eggdrop`

-	[`eggdrop:1.8`](#eggdrop18)
-	[`eggdrop:1.8.3`](#eggdrop183)
-	[`eggdrop:develop`](#eggdropdevelop)
-	[`eggdrop:latest`](#eggdroplatest)
-	[`eggdrop:stable`](#eggdropstable)

## `eggdrop:1.8`

```console
$ docker pull eggdrop@sha256:9817852e1fb00a9522fbcc048459ba27a1e474ad3ffcf130b4408d727afb331f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:1.8` - linux; amd64

```console
$ docker pull eggdrop@sha256:39c891519c446ef92776b0573e5afd4a9c425138370c565cd80252b4bdab5c63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10743977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db8095753ca869f1d83b4938c890f17ae44d0015f7e60943ca05137a8dfda10e`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Tue, 17 Jul 2018 21:48:15 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 17 Jul 2018 21:48:16 GMT
RUN adduser -S eggdrop
# Tue, 17 Jul 2018 21:48:18 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 17 Jul 2018 21:49:53 GMT
RUN apk add --no-cache tcl bash openssl
# Tue, 17 Jul 2018 21:51:10 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.3.tar.gz.asc eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz.asc   && tar -zxvf eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz   && ( cd eggdrop-1.8.3     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.3   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Tue, 17 Jul 2018 21:51:11 GMT
ENV NICK=
# Tue, 17 Jul 2018 21:51:11 GMT
ENV SERVER=
# Tue, 17 Jul 2018 21:51:11 GMT
ENV LISTEN=3333
# Tue, 17 Jul 2018 21:51:11 GMT
ENV OWNER=
# Tue, 17 Jul 2018 21:51:12 GMT
ENV USERFILE=eggdrop.user
# Tue, 17 Jul 2018 21:51:12 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 17 Jul 2018 21:51:12 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 17 Jul 2018 21:51:13 GMT
EXPOSE 3333/tcp
# Tue, 17 Jul 2018 21:51:13 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Tue, 17 Jul 2018 21:51:14 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 17 Jul 2018 21:51:14 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 17 Jul 2018 21:51:14 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:816c77a783a382e1ecaeb770d9663e1e8a32fae6ceda16ea9acfa80672d2aa8b`  
		Last Modified: Tue, 17 Jul 2018 21:51:51 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a099f1d513898c9f3e6015bd5f0e46cafa23ad2e7fa6e73f1b8359ad54cef1`  
		Last Modified: Tue, 17 Jul 2018 21:51:49 GMT  
		Size: 8.9 KB (8853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a81614d6c31cc902a5e81fa60dfaea9d4c5eb4cd6b2b8dff0dfc5cce1cdc69f`  
		Last Modified: Tue, 17 Jul 2018 21:52:14 GMT  
		Size: 4.4 MB (4374773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:921f31fbc8b1844deb4a323670288602bd64df9d143a2f76f3db4c6a96fec8fb`  
		Last Modified: Tue, 17 Jul 2018 21:52:13 GMT  
		Size: 4.3 MB (4252959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f090d1664eea3a6d9b1ed528db1b9cfb905a2ced0eb729d8e240074607f243`  
		Last Modified: Tue, 17 Jul 2018 21:52:12 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcf491b8541a6881dfdebc2f930b32f928f04f7f107c0ec819b44e45961bf51`  
		Last Modified: Tue, 17 Jul 2018 21:52:12 GMT  
		Size: 702.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8.3`

```console
$ docker pull eggdrop@sha256:9817852e1fb00a9522fbcc048459ba27a1e474ad3ffcf130b4408d727afb331f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:1.8.3` - linux; amd64

```console
$ docker pull eggdrop@sha256:39c891519c446ef92776b0573e5afd4a9c425138370c565cd80252b4bdab5c63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10743977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db8095753ca869f1d83b4938c890f17ae44d0015f7e60943ca05137a8dfda10e`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Tue, 17 Jul 2018 21:48:15 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 17 Jul 2018 21:48:16 GMT
RUN adduser -S eggdrop
# Tue, 17 Jul 2018 21:48:18 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 17 Jul 2018 21:49:53 GMT
RUN apk add --no-cache tcl bash openssl
# Tue, 17 Jul 2018 21:51:10 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.3.tar.gz.asc eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz.asc   && tar -zxvf eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz   && ( cd eggdrop-1.8.3     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.3   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Tue, 17 Jul 2018 21:51:11 GMT
ENV NICK=
# Tue, 17 Jul 2018 21:51:11 GMT
ENV SERVER=
# Tue, 17 Jul 2018 21:51:11 GMT
ENV LISTEN=3333
# Tue, 17 Jul 2018 21:51:11 GMT
ENV OWNER=
# Tue, 17 Jul 2018 21:51:12 GMT
ENV USERFILE=eggdrop.user
# Tue, 17 Jul 2018 21:51:12 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 17 Jul 2018 21:51:12 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 17 Jul 2018 21:51:13 GMT
EXPOSE 3333/tcp
# Tue, 17 Jul 2018 21:51:13 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Tue, 17 Jul 2018 21:51:14 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 17 Jul 2018 21:51:14 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 17 Jul 2018 21:51:14 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:816c77a783a382e1ecaeb770d9663e1e8a32fae6ceda16ea9acfa80672d2aa8b`  
		Last Modified: Tue, 17 Jul 2018 21:51:51 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a099f1d513898c9f3e6015bd5f0e46cafa23ad2e7fa6e73f1b8359ad54cef1`  
		Last Modified: Tue, 17 Jul 2018 21:51:49 GMT  
		Size: 8.9 KB (8853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a81614d6c31cc902a5e81fa60dfaea9d4c5eb4cd6b2b8dff0dfc5cce1cdc69f`  
		Last Modified: Tue, 17 Jul 2018 21:52:14 GMT  
		Size: 4.4 MB (4374773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:921f31fbc8b1844deb4a323670288602bd64df9d143a2f76f3db4c6a96fec8fb`  
		Last Modified: Tue, 17 Jul 2018 21:52:13 GMT  
		Size: 4.3 MB (4252959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f090d1664eea3a6d9b1ed528db1b9cfb905a2ced0eb729d8e240074607f243`  
		Last Modified: Tue, 17 Jul 2018 21:52:12 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcf491b8541a6881dfdebc2f930b32f928f04f7f107c0ec819b44e45961bf51`  
		Last Modified: Tue, 17 Jul 2018 21:52:12 GMT  
		Size: 702.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:b613c839b78e77020f74a881efa1a4ada759c748cc68ba045ed85174c3c7ab30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

```console
$ docker pull eggdrop@sha256:75b4ea757b833f5194bdb2ae9c29268c05c1dd77ec2b0dcf1a16936b61139c37
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10741711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e7049c12b151320b3b2796935cb18df770ec374fb97aa4e233078529c76f178`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Tue, 17 Jul 2018 21:48:15 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 17 Jul 2018 21:48:16 GMT
RUN adduser -S eggdrop
# Tue, 17 Jul 2018 21:48:18 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 17 Jul 2018 21:48:18 GMT
ENV EGGDROP_SHA256=ad020a73714d1e8eed470547a35e095e6318fe5882e6ca2f5da80ec90ed7e8f5
# Tue, 17 Jul 2018 21:48:18 GMT
ENV EGGDROP_COMMIT=13886f0d58a2eee1692704c9e56c9bc306f673af
# Tue, 17 Jul 2018 21:48:21 GMT
RUN apk --update add --no-cache tcl bash openssl
# Tue, 17 Jul 2018 21:49:33 GMT
RUN apk --update add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Tue, 17 Jul 2018 21:49:33 GMT
ENV NICK=
# Tue, 17 Jul 2018 21:49:34 GMT
ENV SERVER=
# Tue, 17 Jul 2018 21:49:34 GMT
ENV LISTEN=3333
# Tue, 17 Jul 2018 21:49:34 GMT
ENV OWNER=
# Tue, 17 Jul 2018 21:49:35 GMT
ENV USERFILE=eggdrop.user
# Tue, 17 Jul 2018 21:49:35 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 17 Jul 2018 21:49:35 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 17 Jul 2018 21:49:36 GMT
EXPOSE 3333/tcp
# Tue, 17 Jul 2018 21:49:36 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Tue, 17 Jul 2018 21:49:37 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 17 Jul 2018 21:49:37 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 17 Jul 2018 21:49:37 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:816c77a783a382e1ecaeb770d9663e1e8a32fae6ceda16ea9acfa80672d2aa8b`  
		Last Modified: Tue, 17 Jul 2018 21:51:51 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a099f1d513898c9f3e6015bd5f0e46cafa23ad2e7fa6e73f1b8359ad54cef1`  
		Last Modified: Tue, 17 Jul 2018 21:51:49 GMT  
		Size: 8.9 KB (8853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5675a0b7f6cc5806d10f028d45339a5b9413d733dd3946d1af70e0a3b1a63e5c`  
		Last Modified: Tue, 17 Jul 2018 21:51:51 GMT  
		Size: 4.4 MB (4374770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0de0481afad8827161460df83a42d6503d3572fbb7a2979b0d0f0eb271a2f035`  
		Last Modified: Tue, 17 Jul 2018 21:51:50 GMT  
		Size: 4.3 MB (4250698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fadffeae1fb420de2af600bb774014ccf28cc256e20baeb2163f354f7c6fb9b4`  
		Last Modified: Tue, 17 Jul 2018 21:51:49 GMT  
		Size: 1.9 KB (1877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5a09518f0ceeca0b6c4757cf0ea5020a596288d61d73931f6936792ad838d28`  
		Last Modified: Tue, 17 Jul 2018 21:51:49 GMT  
		Size: 702.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:latest`

```console
$ docker pull eggdrop@sha256:9817852e1fb00a9522fbcc048459ba27a1e474ad3ffcf130b4408d727afb331f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:latest` - linux; amd64

```console
$ docker pull eggdrop@sha256:39c891519c446ef92776b0573e5afd4a9c425138370c565cd80252b4bdab5c63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10743977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db8095753ca869f1d83b4938c890f17ae44d0015f7e60943ca05137a8dfda10e`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Tue, 17 Jul 2018 21:48:15 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 17 Jul 2018 21:48:16 GMT
RUN adduser -S eggdrop
# Tue, 17 Jul 2018 21:48:18 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 17 Jul 2018 21:49:53 GMT
RUN apk add --no-cache tcl bash openssl
# Tue, 17 Jul 2018 21:51:10 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.3.tar.gz.asc eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz.asc   && tar -zxvf eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz   && ( cd eggdrop-1.8.3     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.3   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Tue, 17 Jul 2018 21:51:11 GMT
ENV NICK=
# Tue, 17 Jul 2018 21:51:11 GMT
ENV SERVER=
# Tue, 17 Jul 2018 21:51:11 GMT
ENV LISTEN=3333
# Tue, 17 Jul 2018 21:51:11 GMT
ENV OWNER=
# Tue, 17 Jul 2018 21:51:12 GMT
ENV USERFILE=eggdrop.user
# Tue, 17 Jul 2018 21:51:12 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 17 Jul 2018 21:51:12 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 17 Jul 2018 21:51:13 GMT
EXPOSE 3333/tcp
# Tue, 17 Jul 2018 21:51:13 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Tue, 17 Jul 2018 21:51:14 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 17 Jul 2018 21:51:14 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 17 Jul 2018 21:51:14 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:816c77a783a382e1ecaeb770d9663e1e8a32fae6ceda16ea9acfa80672d2aa8b`  
		Last Modified: Tue, 17 Jul 2018 21:51:51 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a099f1d513898c9f3e6015bd5f0e46cafa23ad2e7fa6e73f1b8359ad54cef1`  
		Last Modified: Tue, 17 Jul 2018 21:51:49 GMT  
		Size: 8.9 KB (8853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a81614d6c31cc902a5e81fa60dfaea9d4c5eb4cd6b2b8dff0dfc5cce1cdc69f`  
		Last Modified: Tue, 17 Jul 2018 21:52:14 GMT  
		Size: 4.4 MB (4374773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:921f31fbc8b1844deb4a323670288602bd64df9d143a2f76f3db4c6a96fec8fb`  
		Last Modified: Tue, 17 Jul 2018 21:52:13 GMT  
		Size: 4.3 MB (4252959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f090d1664eea3a6d9b1ed528db1b9cfb905a2ced0eb729d8e240074607f243`  
		Last Modified: Tue, 17 Jul 2018 21:52:12 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcf491b8541a6881dfdebc2f930b32f928f04f7f107c0ec819b44e45961bf51`  
		Last Modified: Tue, 17 Jul 2018 21:52:12 GMT  
		Size: 702.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:stable`

```console
$ docker pull eggdrop@sha256:9817852e1fb00a9522fbcc048459ba27a1e474ad3ffcf130b4408d727afb331f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:stable` - linux; amd64

```console
$ docker pull eggdrop@sha256:39c891519c446ef92776b0573e5afd4a9c425138370c565cd80252b4bdab5c63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.7 MB (10743977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db8095753ca869f1d83b4938c890f17ae44d0015f7e60943ca05137a8dfda10e`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Tue, 17 Jul 2018 21:48:15 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Tue, 17 Jul 2018 21:48:16 GMT
RUN adduser -S eggdrop
# Tue, 17 Jul 2018 21:48:18 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Tue, 17 Jul 2018 21:49:53 GMT
RUN apk add --no-cache tcl bash openssl
# Tue, 17 Jul 2018 21:51:10 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.3.tar.gz.asc eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz.asc   && tar -zxvf eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz   && ( cd eggdrop-1.8.3     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.3   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Tue, 17 Jul 2018 21:51:11 GMT
ENV NICK=
# Tue, 17 Jul 2018 21:51:11 GMT
ENV SERVER=
# Tue, 17 Jul 2018 21:51:11 GMT
ENV LISTEN=3333
# Tue, 17 Jul 2018 21:51:11 GMT
ENV OWNER=
# Tue, 17 Jul 2018 21:51:12 GMT
ENV USERFILE=eggdrop.user
# Tue, 17 Jul 2018 21:51:12 GMT
ENV CHANFILE=eggdrop.chan
# Tue, 17 Jul 2018 21:51:12 GMT
WORKDIR /home/eggdrop/eggdrop
# Tue, 17 Jul 2018 21:51:13 GMT
EXPOSE 3333/tcp
# Tue, 17 Jul 2018 21:51:13 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Tue, 17 Jul 2018 21:51:14 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Tue, 17 Jul 2018 21:51:14 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Tue, 17 Jul 2018 21:51:14 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:816c77a783a382e1ecaeb770d9663e1e8a32fae6ceda16ea9acfa80672d2aa8b`  
		Last Modified: Tue, 17 Jul 2018 21:51:51 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37a099f1d513898c9f3e6015bd5f0e46cafa23ad2e7fa6e73f1b8359ad54cef1`  
		Last Modified: Tue, 17 Jul 2018 21:51:49 GMT  
		Size: 8.9 KB (8853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a81614d6c31cc902a5e81fa60dfaea9d4c5eb4cd6b2b8dff0dfc5cce1cdc69f`  
		Last Modified: Tue, 17 Jul 2018 21:52:14 GMT  
		Size: 4.4 MB (4374773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:921f31fbc8b1844deb4a323670288602bd64df9d143a2f76f3db4c6a96fec8fb`  
		Last Modified: Tue, 17 Jul 2018 21:52:13 GMT  
		Size: 4.3 MB (4252959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f090d1664eea3a6d9b1ed528db1b9cfb905a2ced0eb729d8e240074607f243`  
		Last Modified: Tue, 17 Jul 2018 21:52:12 GMT  
		Size: 1.9 KB (1879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbcf491b8541a6881dfdebc2f930b32f928f04f7f107c0ec819b44e45961bf51`  
		Last Modified: Tue, 17 Jul 2018 21:52:12 GMT  
		Size: 702.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
