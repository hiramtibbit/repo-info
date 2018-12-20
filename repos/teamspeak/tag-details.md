<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `teamspeak`

-	[`teamspeak:3.5`](#teamspeak35)
-	[`teamspeak:3.5.1`](#teamspeak351)
-	[`teamspeak:latest`](#teamspeaklatest)

## `teamspeak:3.5`

```console
$ docker pull teamspeak@sha256:6c4a646b38af2c4d68336f5457574efb9181146a1bc8a36bce38c44fb5ac0a52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `teamspeak:3.5` - linux; amd64

```console
$ docker pull teamspeak@sha256:12091eeca9559bcc54c7644439b4e76a4953585e460f75c24c61be5dd0d2199f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10949664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be21ca9a542145505fff579115ecbbf85cd6d0d1a260e83c0cdc5b926344a348`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["ts3server"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:04 GMT
RUN apk add --no-cache ca-certificates libstdc++ su-exec
# Wed, 12 Sep 2018 03:37:05 GMT
RUN set -eux;  addgroup -g 9987 ts3server;  adduser -u 9987 -Hh /var/ts3server -G ts3server -s /sbin/nologin -D ts3server;  mkdir -p /var/ts3server /var/run/ts3server;  chown ts3server:ts3server /var/ts3server /var/run/ts3server;  chmod 777 /var/ts3server /var/run/ts3server
# Wed, 12 Sep 2018 03:37:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ts3server
# Thu, 20 Dec 2018 00:40:18 GMT
ARG TEAMSPEAK_CHECKSUM=9f95621a70ebd4822e1c918ccea15bfc8e83da15358c820422dda5a142ae79e1
# Thu, 20 Dec 2018 00:40:18 GMT
ARG TEAMSPEAK_URL=http://dl.4players.de/ts/releases/3.5.1/teamspeak3-server_linux_alpine-3.5.1.tar.bz2
# Thu, 20 Dec 2018 00:40:23 GMT
# ARGS: TEAMSPEAK_CHECKSUM=9f95621a70ebd4822e1c918ccea15bfc8e83da15358c820422dda5a142ae79e1 TEAMSPEAK_URL=http://dl.4players.de/ts/releases/3.5.1/teamspeak3-server_linux_alpine-3.5.1.tar.bz2
RUN set -eux;  apk add --no-cache --virtual .fetch-deps tar;  wget "${TEAMSPEAK_URL}" -O server.tar.bz2;  echo "${TEAMSPEAK_CHECKSUM} *server.tar.bz2" | sha256sum -c -;  mkdir -p /opt/ts3server;  tar -xf server.tar.bz2 --strip-components=1 -C /opt/ts3server;  rm server.tar.bz2;  apk del .fetch-deps;  mv /opt/ts3server/*.so /opt/ts3server/redist/* /usr/local/lib;  ldconfig /usr/local/lib;  chown -R ts3server:ts3server /opt/ts3server
# Thu, 20 Dec 2018 00:40:24 GMT
VOLUME [/var/ts3server/]
# Thu, 20 Dec 2018 00:40:24 GMT
WORKDIR /var/ts3server/
# Thu, 20 Dec 2018 00:40:24 GMT
EXPOSE 10011 30033 9987/udp
# Thu, 20 Dec 2018 00:40:24 GMT
COPY file:dfecfd43234e64ac59744dc39d362c9c797864af44f9df8e52f25d549b87090d in /opt/ts3server 
# Thu, 20 Dec 2018 00:40:25 GMT
ENTRYPOINT ["entrypoint.sh"]
# Thu, 20 Dec 2018 00:40:25 GMT
CMD ["ts3server"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c48aef8216e8c203dad38f385438250668030f55c6fcb7183e21520fec76feae`  
		Last Modified: Wed, 12 Sep 2018 03:37:23 GMT  
		Size: 757.9 KB (757854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c3183ab34093820d221dc0d7fec24552268781b132abdc4af208c2fb0eb0be`  
		Last Modified: Wed, 12 Sep 2018 03:37:23 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13ea7ff6cbf87ff05bd7847d6a780c586225f497b4aed8a14cde2c8e88e7320`  
		Last Modified: Thu, 20 Dec 2018 00:40:37 GMT  
		Size: 8.1 MB (8082108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8233262b60f4996addbbf65d71fd02eae6decb5d15c2e0da7c6e492415e617c5`  
		Last Modified: Thu, 20 Dec 2018 00:40:35 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `teamspeak:3.5.1`

```console
$ docker pull teamspeak@sha256:6c4a646b38af2c4d68336f5457574efb9181146a1bc8a36bce38c44fb5ac0a52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `teamspeak:3.5.1` - linux; amd64

```console
$ docker pull teamspeak@sha256:12091eeca9559bcc54c7644439b4e76a4953585e460f75c24c61be5dd0d2199f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10949664 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be21ca9a542145505fff579115ecbbf85cd6d0d1a260e83c0cdc5b926344a348`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["ts3server"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:04 GMT
RUN apk add --no-cache ca-certificates libstdc++ su-exec
# Wed, 12 Sep 2018 03:37:05 GMT
RUN set -eux;  addgroup -g 9987 ts3server;  adduser -u 9987 -Hh /var/ts3server -G ts3server -s /sbin/nologin -D ts3server;  mkdir -p /var/ts3server /var/run/ts3server;  chown ts3server:ts3server /var/ts3server /var/run/ts3server;  chmod 777 /var/ts3server /var/run/ts3server
# Wed, 12 Sep 2018 03:37:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ts3server
# Thu, 20 Dec 2018 00:40:18 GMT
ARG TEAMSPEAK_CHECKSUM=9f95621a70ebd4822e1c918ccea15bfc8e83da15358c820422dda5a142ae79e1
# Thu, 20 Dec 2018 00:40:18 GMT
ARG TEAMSPEAK_URL=http://dl.4players.de/ts/releases/3.5.1/teamspeak3-server_linux_alpine-3.5.1.tar.bz2
# Thu, 20 Dec 2018 00:40:23 GMT
# ARGS: TEAMSPEAK_CHECKSUM=9f95621a70ebd4822e1c918ccea15bfc8e83da15358c820422dda5a142ae79e1 TEAMSPEAK_URL=http://dl.4players.de/ts/releases/3.5.1/teamspeak3-server_linux_alpine-3.5.1.tar.bz2
RUN set -eux;  apk add --no-cache --virtual .fetch-deps tar;  wget "${TEAMSPEAK_URL}" -O server.tar.bz2;  echo "${TEAMSPEAK_CHECKSUM} *server.tar.bz2" | sha256sum -c -;  mkdir -p /opt/ts3server;  tar -xf server.tar.bz2 --strip-components=1 -C /opt/ts3server;  rm server.tar.bz2;  apk del .fetch-deps;  mv /opt/ts3server/*.so /opt/ts3server/redist/* /usr/local/lib;  ldconfig /usr/local/lib;  chown -R ts3server:ts3server /opt/ts3server
# Thu, 20 Dec 2018 00:40:24 GMT
VOLUME [/var/ts3server/]
# Thu, 20 Dec 2018 00:40:24 GMT
WORKDIR /var/ts3server/
# Thu, 20 Dec 2018 00:40:24 GMT
EXPOSE 10011 30033 9987/udp
# Thu, 20 Dec 2018 00:40:24 GMT
COPY file:dfecfd43234e64ac59744dc39d362c9c797864af44f9df8e52f25d549b87090d in /opt/ts3server 
# Thu, 20 Dec 2018 00:40:25 GMT
ENTRYPOINT ["entrypoint.sh"]
# Thu, 20 Dec 2018 00:40:25 GMT
CMD ["ts3server"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c48aef8216e8c203dad38f385438250668030f55c6fcb7183e21520fec76feae`  
		Last Modified: Wed, 12 Sep 2018 03:37:23 GMT  
		Size: 757.9 KB (757854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c3183ab34093820d221dc0d7fec24552268781b132abdc4af208c2fb0eb0be`  
		Last Modified: Wed, 12 Sep 2018 03:37:23 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c13ea7ff6cbf87ff05bd7847d6a780c586225f497b4aed8a14cde2c8e88e7320`  
		Last Modified: Thu, 20 Dec 2018 00:40:37 GMT  
		Size: 8.1 MB (8082108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8233262b60f4996addbbf65d71fd02eae6decb5d15c2e0da7c6e492415e617c5`  
		Last Modified: Thu, 20 Dec 2018 00:40:35 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `teamspeak:latest`

```console
$ docker pull teamspeak@sha256:412859f6d1cc625b374fde9ef3e47c47294dcacbd167ceed1f4da1ffafca9e0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `teamspeak:latest` - linux; amd64

```console
$ docker pull teamspeak@sha256:dfb43509e9f2ee6628011c1e76516138d8d702f825efd68d308e74b2921e8a91
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10788660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:187182a185f26d220af9642b16484eb565fc02b27f280618f6f66ec29b64978b`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["ts3server"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 03:37:04 GMT
RUN apk add --no-cache ca-certificates libstdc++ su-exec
# Wed, 12 Sep 2018 03:37:05 GMT
RUN set -eux;  addgroup -g 9987 ts3server;  adduser -u 9987 -Hh /var/ts3server -G ts3server -s /sbin/nologin -D ts3server;  mkdir -p /var/ts3server /var/run/ts3server;  chown ts3server:ts3server /var/ts3server /var/run/ts3server;  chmod 777 /var/ts3server /var/run/ts3server
# Wed, 12 Sep 2018 03:37:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ts3server
# Mon, 29 Oct 2018 20:23:21 GMT
ARG TEAMSPEAK_CHECKSUM=b21185553e903390908d14542f3210d2077719cb9a1353a4189fbeef5b614ad7
# Mon, 29 Oct 2018 20:23:21 GMT
ARG TEAMSPEAK_URL=http://dl.4players.de/ts/releases/3.5.0/teamspeak3-server_linux_alpine-3.5.0.tar.bz2
# Mon, 29 Oct 2018 20:23:24 GMT
# ARGS: TEAMSPEAK_CHECKSUM=b21185553e903390908d14542f3210d2077719cb9a1353a4189fbeef5b614ad7 TEAMSPEAK_URL=http://dl.4players.de/ts/releases/3.5.0/teamspeak3-server_linux_alpine-3.5.0.tar.bz2
RUN set -eux;  apk add --no-cache --virtual .fetch-deps tar;  wget "${TEAMSPEAK_URL}" -O server.tar.bz2;  echo "${TEAMSPEAK_CHECKSUM} *server.tar.bz2" | sha256sum -c -;  mkdir -p /opt/ts3server;  tar -xf server.tar.bz2 --strip-components=1 -C /opt/ts3server;  rm server.tar.bz2;  apk del .fetch-deps;  mv /opt/ts3server/*.so /opt/ts3server/redist/* /usr/local/lib;  ldconfig /usr/local/lib;  chown -R ts3server:ts3server /opt/ts3server
# Mon, 29 Oct 2018 20:23:34 GMT
VOLUME [/var/ts3server/]
# Mon, 29 Oct 2018 20:23:34 GMT
WORKDIR /var/ts3server/
# Mon, 29 Oct 2018 20:23:34 GMT
EXPOSE 10011/tcp 30033/tcp 9987/udp
# Mon, 29 Oct 2018 20:23:34 GMT
COPY file:8305621bee8422883240aac7725729f4c562557e35a63e06115ac270c86978db in /opt/ts3server 
# Mon, 29 Oct 2018 20:23:35 GMT
ENTRYPOINT ["entrypoint.sh"]
# Mon, 29 Oct 2018 20:23:35 GMT
CMD ["ts3server"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c48aef8216e8c203dad38f385438250668030f55c6fcb7183e21520fec76feae`  
		Last Modified: Wed, 12 Sep 2018 03:37:23 GMT  
		Size: 757.9 KB (757854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7c3183ab34093820d221dc0d7fec24552268781b132abdc4af208c2fb0eb0be`  
		Last Modified: Wed, 12 Sep 2018 03:37:23 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fbddbe7a43a16941384c9ab91b20fc11cba969cddca4e0a29dda914c1a0cb63e`  
		Last Modified: Mon, 29 Oct 2018 20:24:00 GMT  
		Size: 7.9 MB (7921105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75688dc528878cc558cc8acfeb8ee769b95d53759d6f2974aa64bdaeb1bc0f61`  
		Last Modified: Mon, 29 Oct 2018 20:23:58 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
