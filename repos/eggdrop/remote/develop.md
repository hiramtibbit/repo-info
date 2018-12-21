## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:9ce228ff461343a5d3dc58d9e2a39e0284411b593978a61f1d8b6f53e37648cf
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
