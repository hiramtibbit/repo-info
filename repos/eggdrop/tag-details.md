<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `eggdrop`

-	[`eggdrop:1.8`](#eggdrop18)
-	[`eggdrop:1.8.3`](#eggdrop183)
-	[`eggdrop:develop`](#eggdropdevelop)
-	[`eggdrop:latest`](#eggdroplatest)
-	[`eggdrop:stable`](#eggdropstable)

## `eggdrop:1.8`

```console
$ docker pull eggdrop@sha256:c744593010ebc6f93d9a771f19090c0668fd4ab4756ca2b13d2a5ddaff175e17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:1.8` - linux; amd64

```console
$ docker pull eggdrop@sha256:8341587d92b81e7b904496bc0602aaf175e87cc409908c17385d907b6a7505a0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10772024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5e4fd54af549bccf5ad073ffc8edfd5c77039d6732a7dfbe6f3affd3accd63b`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Wed, 05 Sep 2018 21:19:35 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Wed, 05 Sep 2018 21:19:35 GMT
RUN adduser -S eggdrop
# Wed, 05 Sep 2018 21:19:36 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 05 Sep 2018 21:20:43 GMT
RUN apk add --no-cache tcl bash openssl
# Wed, 05 Sep 2018 21:21:32 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.3.tar.gz.asc eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz.asc   && tar -zxvf eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz   && ( cd eggdrop-1.8.3     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.3   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Wed, 05 Sep 2018 21:21:32 GMT
ENV NICK=
# Wed, 05 Sep 2018 21:21:32 GMT
ENV SERVER=
# Wed, 05 Sep 2018 21:21:33 GMT
ENV LISTEN=3333
# Wed, 05 Sep 2018 21:21:33 GMT
ENV OWNER=
# Wed, 05 Sep 2018 21:21:33 GMT
ENV USERFILE=eggdrop.user
# Wed, 05 Sep 2018 21:21:33 GMT
ENV CHANFILE=eggdrop.chan
# Wed, 05 Sep 2018 21:21:33 GMT
WORKDIR /home/eggdrop/eggdrop
# Wed, 05 Sep 2018 21:21:33 GMT
EXPOSE 3333/tcp
# Wed, 05 Sep 2018 21:21:34 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Wed, 05 Sep 2018 21:21:34 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Wed, 05 Sep 2018 21:21:34 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Wed, 05 Sep 2018 21:21:34 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1fd73f45c06c2b2a957823f14c8a11171b2e8f6bf51c6b872ae6d5eeb8707e0`  
		Last Modified: Wed, 05 Sep 2018 21:21:55 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c91b22bc2d67c302adc7b326826d6d8629518e2eaa0e0f09458bd8f3a67138`  
		Last Modified: Wed, 05 Sep 2018 21:21:53 GMT  
		Size: 8.9 KB (8854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a04e79ff9f1266cdf0b2f9e6f895b4834dd3e942bdb7a480febc0fb86c227c83`  
		Last Modified: Wed, 05 Sep 2018 21:22:02 GMT  
		Size: 4.4 MB (4402062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a416bacc94a10de76b18469e1a9aef4bf2d0d40fae59bc6b0058f0c57b0269d3`  
		Last Modified: Wed, 05 Sep 2018 21:22:02 GMT  
		Size: 4.3 MB (4253714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2be59227df4204aa991c454bd15917cada133d51b7ec0a6ce7dc52d39ba53e`  
		Last Modified: Wed, 05 Sep 2018 21:22:01 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2a1e01e504ef76fc8b941b41e4cb1b09d66ef4def287eb47faf3c0b5586942b`  
		Last Modified: Wed, 05 Sep 2018 21:22:02 GMT  
		Size: 703.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:1.8.3`

```console
$ docker pull eggdrop@sha256:c744593010ebc6f93d9a771f19090c0668fd4ab4756ca2b13d2a5ddaff175e17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:1.8.3` - linux; amd64

```console
$ docker pull eggdrop@sha256:8341587d92b81e7b904496bc0602aaf175e87cc409908c17385d907b6a7505a0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10772024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5e4fd54af549bccf5ad073ffc8edfd5c77039d6732a7dfbe6f3affd3accd63b`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Wed, 05 Sep 2018 21:19:35 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Wed, 05 Sep 2018 21:19:35 GMT
RUN adduser -S eggdrop
# Wed, 05 Sep 2018 21:19:36 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 05 Sep 2018 21:20:43 GMT
RUN apk add --no-cache tcl bash openssl
# Wed, 05 Sep 2018 21:21:32 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.3.tar.gz.asc eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz.asc   && tar -zxvf eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz   && ( cd eggdrop-1.8.3     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.3   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Wed, 05 Sep 2018 21:21:32 GMT
ENV NICK=
# Wed, 05 Sep 2018 21:21:32 GMT
ENV SERVER=
# Wed, 05 Sep 2018 21:21:33 GMT
ENV LISTEN=3333
# Wed, 05 Sep 2018 21:21:33 GMT
ENV OWNER=
# Wed, 05 Sep 2018 21:21:33 GMT
ENV USERFILE=eggdrop.user
# Wed, 05 Sep 2018 21:21:33 GMT
ENV CHANFILE=eggdrop.chan
# Wed, 05 Sep 2018 21:21:33 GMT
WORKDIR /home/eggdrop/eggdrop
# Wed, 05 Sep 2018 21:21:33 GMT
EXPOSE 3333/tcp
# Wed, 05 Sep 2018 21:21:34 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Wed, 05 Sep 2018 21:21:34 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Wed, 05 Sep 2018 21:21:34 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Wed, 05 Sep 2018 21:21:34 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1fd73f45c06c2b2a957823f14c8a11171b2e8f6bf51c6b872ae6d5eeb8707e0`  
		Last Modified: Wed, 05 Sep 2018 21:21:55 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c91b22bc2d67c302adc7b326826d6d8629518e2eaa0e0f09458bd8f3a67138`  
		Last Modified: Wed, 05 Sep 2018 21:21:53 GMT  
		Size: 8.9 KB (8854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a04e79ff9f1266cdf0b2f9e6f895b4834dd3e942bdb7a480febc0fb86c227c83`  
		Last Modified: Wed, 05 Sep 2018 21:22:02 GMT  
		Size: 4.4 MB (4402062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a416bacc94a10de76b18469e1a9aef4bf2d0d40fae59bc6b0058f0c57b0269d3`  
		Last Modified: Wed, 05 Sep 2018 21:22:02 GMT  
		Size: 4.3 MB (4253714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2be59227df4204aa991c454bd15917cada133d51b7ec0a6ce7dc52d39ba53e`  
		Last Modified: Wed, 05 Sep 2018 21:22:01 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2a1e01e504ef76fc8b941b41e4cb1b09d66ef4def287eb47faf3c0b5586942b`  
		Last Modified: Wed, 05 Sep 2018 21:22:02 GMT  
		Size: 703.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:22c2ce7221886458bb07560ac369c737f1568c7ea8aacc8d827cad56b71035c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:develop` - linux; amd64

```console
$ docker pull eggdrop@sha256:ca3cb19cedfdf0c1cb88f04010c66ba19fed72df6e2f941a6352b4164c1ce0e5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.1 MB (15065187 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b8104daa4d9b7dbd1d1bce9ce9e43d3c262490e4729eda36dffdb85954c7c88`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Wed, 05 Sep 2018 21:19:35 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Wed, 05 Sep 2018 21:19:35 GMT
RUN adduser -S eggdrop
# Wed, 05 Sep 2018 21:19:36 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 05 Sep 2018 21:19:36 GMT
ENV EGGDROP_SHA256=87d8368c4816174837d3173d08adda23a4f68efae1ffec10b8b2cb63fba27d1e
# Wed, 05 Sep 2018 21:19:36 GMT
ENV EGGDROP_COMMIT=88f49af5cb00ec8586c2362647f35a7fe64f873f
# Wed, 05 Sep 2018 21:19:38 GMT
RUN apk --update add --no-cache tcl bash openssl
# Wed, 05 Sep 2018 21:20:31 GMT
RUN apk --update add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256  develop.tar.gz" | sha256sum -c -   && tar -zxvf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Wed, 05 Sep 2018 21:20:32 GMT
ENV NICK=
# Wed, 05 Sep 2018 21:20:32 GMT
ENV SERVER=
# Wed, 05 Sep 2018 21:20:32 GMT
ENV LISTEN=3333
# Wed, 05 Sep 2018 21:20:32 GMT
ENV OWNER=
# Wed, 05 Sep 2018 21:20:32 GMT
ENV USERFILE=eggdrop.user
# Wed, 05 Sep 2018 21:20:32 GMT
ENV CHANFILE=eggdrop.chan
# Wed, 05 Sep 2018 21:20:33 GMT
WORKDIR /home/eggdrop/eggdrop
# Wed, 05 Sep 2018 21:20:33 GMT
EXPOSE 3333/tcp
# Wed, 05 Sep 2018 21:20:33 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Wed, 05 Sep 2018 21:20:33 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Wed, 05 Sep 2018 21:20:34 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Wed, 05 Sep 2018 21:20:34 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1fd73f45c06c2b2a957823f14c8a11171b2e8f6bf51c6b872ae6d5eeb8707e0`  
		Last Modified: Wed, 05 Sep 2018 21:21:55 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c91b22bc2d67c302adc7b326826d6d8629518e2eaa0e0f09458bd8f3a67138`  
		Last Modified: Wed, 05 Sep 2018 21:21:53 GMT  
		Size: 8.9 KB (8854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d29c4399c9dc00d9239cfb0eb00d3caaa8b1c53c4a44c2e18a27ffa6381ffc9c`  
		Last Modified: Wed, 05 Sep 2018 21:21:55 GMT  
		Size: 4.4 MB (4402048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81808ae3d601b8fd7b9b31644f66ff784a32414243432b5a852d2ce5fe87c707`  
		Last Modified: Wed, 05 Sep 2018 21:21:55 GMT  
		Size: 8.5 MB (8546896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8b92e85ffd13286c0d1217f9ef7a8b72c21e04357ff1350934c99b7a3fa49fb`  
		Last Modified: Wed, 05 Sep 2018 21:21:53 GMT  
		Size: 1.9 KB (1878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a958cfcd7c4f646bf9cf99fb5af667c8a457d977ec352907138bcd14fe9fa18a`  
		Last Modified: Wed, 05 Sep 2018 21:21:53 GMT  
		Size: 701.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:latest`

```console
$ docker pull eggdrop@sha256:c744593010ebc6f93d9a771f19090c0668fd4ab4756ca2b13d2a5ddaff175e17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:latest` - linux; amd64

```console
$ docker pull eggdrop@sha256:8341587d92b81e7b904496bc0602aaf175e87cc409908c17385d907b6a7505a0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10772024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5e4fd54af549bccf5ad073ffc8edfd5c77039d6732a7dfbe6f3affd3accd63b`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Wed, 05 Sep 2018 21:19:35 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Wed, 05 Sep 2018 21:19:35 GMT
RUN adduser -S eggdrop
# Wed, 05 Sep 2018 21:19:36 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 05 Sep 2018 21:20:43 GMT
RUN apk add --no-cache tcl bash openssl
# Wed, 05 Sep 2018 21:21:32 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.3.tar.gz.asc eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz.asc   && tar -zxvf eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz   && ( cd eggdrop-1.8.3     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.3   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Wed, 05 Sep 2018 21:21:32 GMT
ENV NICK=
# Wed, 05 Sep 2018 21:21:32 GMT
ENV SERVER=
# Wed, 05 Sep 2018 21:21:33 GMT
ENV LISTEN=3333
# Wed, 05 Sep 2018 21:21:33 GMT
ENV OWNER=
# Wed, 05 Sep 2018 21:21:33 GMT
ENV USERFILE=eggdrop.user
# Wed, 05 Sep 2018 21:21:33 GMT
ENV CHANFILE=eggdrop.chan
# Wed, 05 Sep 2018 21:21:33 GMT
WORKDIR /home/eggdrop/eggdrop
# Wed, 05 Sep 2018 21:21:33 GMT
EXPOSE 3333/tcp
# Wed, 05 Sep 2018 21:21:34 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Wed, 05 Sep 2018 21:21:34 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Wed, 05 Sep 2018 21:21:34 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Wed, 05 Sep 2018 21:21:34 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1fd73f45c06c2b2a957823f14c8a11171b2e8f6bf51c6b872ae6d5eeb8707e0`  
		Last Modified: Wed, 05 Sep 2018 21:21:55 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c91b22bc2d67c302adc7b326826d6d8629518e2eaa0e0f09458bd8f3a67138`  
		Last Modified: Wed, 05 Sep 2018 21:21:53 GMT  
		Size: 8.9 KB (8854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a04e79ff9f1266cdf0b2f9e6f895b4834dd3e942bdb7a480febc0fb86c227c83`  
		Last Modified: Wed, 05 Sep 2018 21:22:02 GMT  
		Size: 4.4 MB (4402062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a416bacc94a10de76b18469e1a9aef4bf2d0d40fae59bc6b0058f0c57b0269d3`  
		Last Modified: Wed, 05 Sep 2018 21:22:02 GMT  
		Size: 4.3 MB (4253714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2be59227df4204aa991c454bd15917cada133d51b7ec0a6ce7dc52d39ba53e`  
		Last Modified: Wed, 05 Sep 2018 21:22:01 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2a1e01e504ef76fc8b941b41e4cb1b09d66ef4def287eb47faf3c0b5586942b`  
		Last Modified: Wed, 05 Sep 2018 21:22:02 GMT  
		Size: 703.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `eggdrop:stable`

```console
$ docker pull eggdrop@sha256:c744593010ebc6f93d9a771f19090c0668fd4ab4756ca2b13d2a5ddaff175e17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:stable` - linux; amd64

```console
$ docker pull eggdrop@sha256:8341587d92b81e7b904496bc0602aaf175e87cc409908c17385d907b6a7505a0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10772024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5e4fd54af549bccf5ad073ffc8edfd5c77039d6732a7dfbe6f3affd3accd63b`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Wed, 05 Sep 2018 21:19:35 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Wed, 05 Sep 2018 21:19:35 GMT
RUN adduser -S eggdrop
# Wed, 05 Sep 2018 21:19:36 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Wed, 05 Sep 2018 21:20:43 GMT
RUN apk add --no-cache tcl bash openssl
# Wed, 05 Sep 2018 21:21:32 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.3.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.3.tar.gz.asc eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz.asc   && tar -zxvf eggdrop-1.8.3.tar.gz   && rm eggdrop-1.8.3.tar.gz   && ( cd eggdrop-1.8.3     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.3   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Wed, 05 Sep 2018 21:21:32 GMT
ENV NICK=
# Wed, 05 Sep 2018 21:21:32 GMT
ENV SERVER=
# Wed, 05 Sep 2018 21:21:33 GMT
ENV LISTEN=3333
# Wed, 05 Sep 2018 21:21:33 GMT
ENV OWNER=
# Wed, 05 Sep 2018 21:21:33 GMT
ENV USERFILE=eggdrop.user
# Wed, 05 Sep 2018 21:21:33 GMT
ENV CHANFILE=eggdrop.chan
# Wed, 05 Sep 2018 21:21:33 GMT
WORKDIR /home/eggdrop/eggdrop
# Wed, 05 Sep 2018 21:21:33 GMT
EXPOSE 3333/tcp
# Wed, 05 Sep 2018 21:21:34 GMT
COPY file:d80744926cf822928c4fc2c3f9107364df320eecb3ae407a3a5419a43ae4b872 in /home/eggdrop/eggdrop 
# Wed, 05 Sep 2018 21:21:34 GMT
COPY file:919804e5ddd4c807c178caccfed03e9d75a459fe0f744c3a1ada109817cb44ec in /home/eggdrop/eggdrop/scripts/ 
# Wed, 05 Sep 2018 21:21:34 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Wed, 05 Sep 2018 21:21:34 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1fd73f45c06c2b2a957823f14c8a11171b2e8f6bf51c6b872ae6d5eeb8707e0`  
		Last Modified: Wed, 05 Sep 2018 21:21:55 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65c91b22bc2d67c302adc7b326826d6d8629518e2eaa0e0f09458bd8f3a67138`  
		Last Modified: Wed, 05 Sep 2018 21:21:53 GMT  
		Size: 8.9 KB (8854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a04e79ff9f1266cdf0b2f9e6f895b4834dd3e942bdb7a480febc0fb86c227c83`  
		Last Modified: Wed, 05 Sep 2018 21:22:02 GMT  
		Size: 4.4 MB (4402062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a416bacc94a10de76b18469e1a9aef4bf2d0d40fae59bc6b0058f0c57b0269d3`  
		Last Modified: Wed, 05 Sep 2018 21:22:02 GMT  
		Size: 4.3 MB (4253714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a2be59227df4204aa991c454bd15917cada133d51b7ec0a6ce7dc52d39ba53e`  
		Last Modified: Wed, 05 Sep 2018 21:22:01 GMT  
		Size: 1.9 KB (1881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2a1e01e504ef76fc8b941b41e4cb1b09d66ef4def287eb47faf3c0b5586942b`  
		Last Modified: Wed, 05 Sep 2018 21:22:02 GMT  
		Size: 703.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
