## `eggdrop:latest`

```console
$ docker pull eggdrop@sha256:e9c611221074b6d1ff201300a946c40f0493403fb385d8824a4232094f1d85e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `eggdrop:latest` - linux; amd64

```console
$ docker pull eggdrop@sha256:35008f53020c419ae41fbd156aeaa233dac21dfdb23cf3559f5b890ce2b32e0b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 MB (9572707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e141f7fdb95346892339f1eac125125b75f4f28c61b86cb2891719d67c3b975`
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
# Fri, 28 Dec 2018 23:20:26 GMT
RUN apk add --no-cache --virtual egg-deps tcl-dev wget ca-certificates make tar gpgme build-base openssl-dev   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.4.tar.gz   && wget ftp://ftp.eggheads.org/pub/eggdrop/source/1.8/eggdrop-1.8.4.tar.gz.asc   && gpg --keyserver ha.pool.sks-keyservers.net --recv-key E01C240484DE7DBE190FE141E7667DE1D1A39AFF   && gpg --batch --verify eggdrop-1.8.4.tar.gz.asc eggdrop-1.8.4.tar.gz   && command -v gpgconf > /dev/null   && gpgconf --kill all   && rm eggdrop-1.8.4.tar.gz.asc   && tar -zxvf eggdrop-1.8.4.tar.gz   && rm eggdrop-1.8.4.tar.gz   && ( cd eggdrop-1.8.4     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-1.8.4   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Fri, 28 Dec 2018 23:21:09 GMT
ENV NICK=
# Fri, 28 Dec 2018 23:21:10 GMT
ENV SERVER=
# Fri, 28 Dec 2018 23:21:10 GMT
ENV LISTEN=3333
# Fri, 28 Dec 2018 23:21:10 GMT
ENV OWNER=
# Fri, 28 Dec 2018 23:21:10 GMT
ENV USERFILE=eggdrop.user
# Fri, 28 Dec 2018 23:21:10 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 28 Dec 2018 23:21:11 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 28 Dec 2018 23:21:11 GMT
EXPOSE 3333
# Fri, 28 Dec 2018 23:21:11 GMT
COPY file:f8d85155d39ecdefdd2ce710ca8c1211edaffb7c3fbbde0877da166dd3aaa579 in /home/eggdrop/eggdrop 
# Fri, 28 Dec 2018 23:21:11 GMT
COPY file:b76e92fb28997fa3fd71a3b880ff3b73567ca05021b617d51ebdcefd8c31b457 in /home/eggdrop/eggdrop/scripts/ 
# Fri, 28 Dec 2018 23:21:11 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 28 Dec 2018 23:21:11 GMT
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
	-	`sha256:97845314e59c1011c34e5603f5e0d845e9cf5bf52b6e84f8968d4c4b61b55a7f`  
		Last Modified: Fri, 28 Dec 2018 23:21:24 GMT  
		Size: 3.0 MB (3049888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92a19f8c5b44d3aec5c405f6d9eee7b029e2b9e1312f40b9d3371889d18c4eb6`  
		Last Modified: Fri, 28 Dec 2018 23:21:23 GMT  
		Size: 1.9 KB (1884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b228b7f8c3926dacfd595119e255811f2ff6fe6ee2ab62aa1941c4fdd37c4ea0`  
		Last Modified: Fri, 28 Dec 2018 23:21:23 GMT  
		Size: 707.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
