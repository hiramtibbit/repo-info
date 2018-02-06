<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `teamspeak`

-	[`teamspeak:3.1`](#teamspeak31)
-	[`teamspeak:3.1.0`](#teamspeak310)
-	[`teamspeak:latest`](#teamspeaklatest)

## `teamspeak:3.1`

```console
$ docker pull teamspeak@sha256:6684506050c8a8aff3299602586264eda15fbd641bd77eb86755498d98736669
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `teamspeak:3.1` - linux; amd64

```console
$ docker pull teamspeak@sha256:95af383b85f48114fb6b7fbcf92585d1b95893bd76c141ed26527989bbdfb6aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.0 MB (9962838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2269114c94b117eef0503bc5db32627c807f2c8f2661b5e277035aa6590716d`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["ts3server"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Fri, 02 Feb 2018 19:14:42 GMT
RUN apk add --no-cache ca-certificates libstdc++ su-exec
# Fri, 02 Feb 2018 19:14:43 GMT
RUN set -eux;  addgroup -g 9987 ts3server;  adduser -u 9987 -Hh /var/ts3server -G ts3server -s /sbin/nologin -D ts3server;  mkdir -p /var/ts3server /var/run/ts3server;  chown ts3server:ts3server /var/ts3server /var/run/ts3server;  chmod 777 /var/ts3server /var/run/ts3server
# Fri, 02 Feb 2018 19:14:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ts3server
# Tue, 06 Feb 2018 18:29:53 GMT
ARG TEAMSPEAK_CHECKSUM=8e3de7acac3ed0db4ec59e8290b0b9d9042558f45d75bc85c91dd375162aaf38
# Tue, 06 Feb 2018 18:29:54 GMT
ARG TEAMSPEAK_URL=http://dl.4players.de/ts/releases/pre_releases/server/3.1.0-Beta-3/teamspeak3-server_linux_alpine-3.1.0.tar.bz2
# Tue, 06 Feb 2018 18:30:01 GMT
# ARGS: TEAMSPEAK_CHECKSUM=8e3de7acac3ed0db4ec59e8290b0b9d9042558f45d75bc85c91dd375162aaf38 TEAMSPEAK_URL=http://dl.4players.de/ts/releases/pre_releases/server/3.1.0-Beta-3/teamspeak3-server_linux_alpine-3.1.0.tar.bz2
RUN set -eux;  apk add --no-cache --virtual .fetch-deps tar;  wget "${TEAMSPEAK_URL}" -O server.tar.bz2;  echo "${TEAMSPEAK_CHECKSUM} *server.tar.bz2" | sha256sum -c -;  mkdir -p /opt/ts3server;  tar -xf server.tar.bz2 --strip-components=1 -C /opt/ts3server;  rm server.tar.bz2;  apk del .fetch-deps;  mv /opt/ts3server/*.so /opt/ts3server/redist/* /usr/local/lib;  ldconfig /usr/local/lib;  chown -R ts3server:ts3server /opt/ts3server
# Tue, 06 Feb 2018 18:30:01 GMT
VOLUME [/var/ts3server/]
# Tue, 06 Feb 2018 18:30:01 GMT
WORKDIR /var/ts3server/
# Tue, 06 Feb 2018 18:30:02 GMT
EXPOSE 10011/tcp 30033/tcp 9987/udp
# Tue, 06 Feb 2018 18:30:02 GMT
COPY file:c771229cbb8d7e896bd0ac6fc9f17103075224c82e33767ec4533639c179eb28 in /opt/ts3server 
# Tue, 06 Feb 2018 18:30:02 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 06 Feb 2018 18:30:02 GMT
CMD ["ts3server"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5552be734ebabd19473e4347d594c30487d32a039ce6c95fd31a70bd5c420415`  
		Last Modified: Fri, 02 Feb 2018 19:15:10 GMT  
		Size: 757.6 KB (757551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35da43e4d359722f08d2e5b1c9a012f8ede6de57c93e94a1d32268a466d5655`  
		Last Modified: Fri, 02 Feb 2018 19:15:10 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26259775dc2668e8dd61fa278e8711196a4c3e95f002081c86185f893cd24b2b`  
		Last Modified: Tue, 06 Feb 2018 18:30:25 GMT  
		Size: 7.1 MB (7137320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459ecd71508606d48e37106bab3fde5b06068d80e7048bac0af84ea1662140d3`  
		Last Modified: Tue, 06 Feb 2018 18:30:25 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `teamspeak:3.1.0`

```console
$ docker pull teamspeak@sha256:6684506050c8a8aff3299602586264eda15fbd641bd77eb86755498d98736669
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `teamspeak:3.1.0` - linux; amd64

```console
$ docker pull teamspeak@sha256:95af383b85f48114fb6b7fbcf92585d1b95893bd76c141ed26527989bbdfb6aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.0 MB (9962838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2269114c94b117eef0503bc5db32627c807f2c8f2661b5e277035aa6590716d`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["ts3server"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Fri, 02 Feb 2018 19:14:42 GMT
RUN apk add --no-cache ca-certificates libstdc++ su-exec
# Fri, 02 Feb 2018 19:14:43 GMT
RUN set -eux;  addgroup -g 9987 ts3server;  adduser -u 9987 -Hh /var/ts3server -G ts3server -s /sbin/nologin -D ts3server;  mkdir -p /var/ts3server /var/run/ts3server;  chown ts3server:ts3server /var/ts3server /var/run/ts3server;  chmod 777 /var/ts3server /var/run/ts3server
# Fri, 02 Feb 2018 19:14:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ts3server
# Tue, 06 Feb 2018 18:29:53 GMT
ARG TEAMSPEAK_CHECKSUM=8e3de7acac3ed0db4ec59e8290b0b9d9042558f45d75bc85c91dd375162aaf38
# Tue, 06 Feb 2018 18:29:54 GMT
ARG TEAMSPEAK_URL=http://dl.4players.de/ts/releases/pre_releases/server/3.1.0-Beta-3/teamspeak3-server_linux_alpine-3.1.0.tar.bz2
# Tue, 06 Feb 2018 18:30:01 GMT
# ARGS: TEAMSPEAK_CHECKSUM=8e3de7acac3ed0db4ec59e8290b0b9d9042558f45d75bc85c91dd375162aaf38 TEAMSPEAK_URL=http://dl.4players.de/ts/releases/pre_releases/server/3.1.0-Beta-3/teamspeak3-server_linux_alpine-3.1.0.tar.bz2
RUN set -eux;  apk add --no-cache --virtual .fetch-deps tar;  wget "${TEAMSPEAK_URL}" -O server.tar.bz2;  echo "${TEAMSPEAK_CHECKSUM} *server.tar.bz2" | sha256sum -c -;  mkdir -p /opt/ts3server;  tar -xf server.tar.bz2 --strip-components=1 -C /opt/ts3server;  rm server.tar.bz2;  apk del .fetch-deps;  mv /opt/ts3server/*.so /opt/ts3server/redist/* /usr/local/lib;  ldconfig /usr/local/lib;  chown -R ts3server:ts3server /opt/ts3server
# Tue, 06 Feb 2018 18:30:01 GMT
VOLUME [/var/ts3server/]
# Tue, 06 Feb 2018 18:30:01 GMT
WORKDIR /var/ts3server/
# Tue, 06 Feb 2018 18:30:02 GMT
EXPOSE 10011/tcp 30033/tcp 9987/udp
# Tue, 06 Feb 2018 18:30:02 GMT
COPY file:c771229cbb8d7e896bd0ac6fc9f17103075224c82e33767ec4533639c179eb28 in /opt/ts3server 
# Tue, 06 Feb 2018 18:30:02 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 06 Feb 2018 18:30:02 GMT
CMD ["ts3server"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5552be734ebabd19473e4347d594c30487d32a039ce6c95fd31a70bd5c420415`  
		Last Modified: Fri, 02 Feb 2018 19:15:10 GMT  
		Size: 757.6 KB (757551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35da43e4d359722f08d2e5b1c9a012f8ede6de57c93e94a1d32268a466d5655`  
		Last Modified: Fri, 02 Feb 2018 19:15:10 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26259775dc2668e8dd61fa278e8711196a4c3e95f002081c86185f893cd24b2b`  
		Last Modified: Tue, 06 Feb 2018 18:30:25 GMT  
		Size: 7.1 MB (7137320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459ecd71508606d48e37106bab3fde5b06068d80e7048bac0af84ea1662140d3`  
		Last Modified: Tue, 06 Feb 2018 18:30:25 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `teamspeak:latest`

```console
$ docker pull teamspeak@sha256:6684506050c8a8aff3299602586264eda15fbd641bd77eb86755498d98736669
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `teamspeak:latest` - linux; amd64

```console
$ docker pull teamspeak@sha256:95af383b85f48114fb6b7fbcf92585d1b95893bd76c141ed26527989bbdfb6aa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.0 MB (9962838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2269114c94b117eef0503bc5db32627c807f2c8f2661b5e277035aa6590716d`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["ts3server"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Fri, 02 Feb 2018 19:14:42 GMT
RUN apk add --no-cache ca-certificates libstdc++ su-exec
# Fri, 02 Feb 2018 19:14:43 GMT
RUN set -eux;  addgroup -g 9987 ts3server;  adduser -u 9987 -Hh /var/ts3server -G ts3server -s /sbin/nologin -D ts3server;  mkdir -p /var/ts3server /var/run/ts3server;  chown ts3server:ts3server /var/ts3server /var/run/ts3server;  chmod 777 /var/ts3server /var/run/ts3server
# Fri, 02 Feb 2018 19:14:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ts3server
# Tue, 06 Feb 2018 18:29:53 GMT
ARG TEAMSPEAK_CHECKSUM=8e3de7acac3ed0db4ec59e8290b0b9d9042558f45d75bc85c91dd375162aaf38
# Tue, 06 Feb 2018 18:29:54 GMT
ARG TEAMSPEAK_URL=http://dl.4players.de/ts/releases/pre_releases/server/3.1.0-Beta-3/teamspeak3-server_linux_alpine-3.1.0.tar.bz2
# Tue, 06 Feb 2018 18:30:01 GMT
# ARGS: TEAMSPEAK_CHECKSUM=8e3de7acac3ed0db4ec59e8290b0b9d9042558f45d75bc85c91dd375162aaf38 TEAMSPEAK_URL=http://dl.4players.de/ts/releases/pre_releases/server/3.1.0-Beta-3/teamspeak3-server_linux_alpine-3.1.0.tar.bz2
RUN set -eux;  apk add --no-cache --virtual .fetch-deps tar;  wget "${TEAMSPEAK_URL}" -O server.tar.bz2;  echo "${TEAMSPEAK_CHECKSUM} *server.tar.bz2" | sha256sum -c -;  mkdir -p /opt/ts3server;  tar -xf server.tar.bz2 --strip-components=1 -C /opt/ts3server;  rm server.tar.bz2;  apk del .fetch-deps;  mv /opt/ts3server/*.so /opt/ts3server/redist/* /usr/local/lib;  ldconfig /usr/local/lib;  chown -R ts3server:ts3server /opt/ts3server
# Tue, 06 Feb 2018 18:30:01 GMT
VOLUME [/var/ts3server/]
# Tue, 06 Feb 2018 18:30:01 GMT
WORKDIR /var/ts3server/
# Tue, 06 Feb 2018 18:30:02 GMT
EXPOSE 10011/tcp 30033/tcp 9987/udp
# Tue, 06 Feb 2018 18:30:02 GMT
COPY file:c771229cbb8d7e896bd0ac6fc9f17103075224c82e33767ec4533639c179eb28 in /opt/ts3server 
# Tue, 06 Feb 2018 18:30:02 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 06 Feb 2018 18:30:02 GMT
CMD ["ts3server"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5552be734ebabd19473e4347d594c30487d32a039ce6c95fd31a70bd5c420415`  
		Last Modified: Fri, 02 Feb 2018 19:15:10 GMT  
		Size: 757.6 KB (757551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35da43e4d359722f08d2e5b1c9a012f8ede6de57c93e94a1d32268a466d5655`  
		Last Modified: Fri, 02 Feb 2018 19:15:10 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26259775dc2668e8dd61fa278e8711196a4c3e95f002081c86185f893cd24b2b`  
		Last Modified: Tue, 06 Feb 2018 18:30:25 GMT  
		Size: 7.1 MB (7137320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:459ecd71508606d48e37106bab3fde5b06068d80e7048bac0af84ea1662140d3`  
		Last Modified: Tue, 06 Feb 2018 18:30:25 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
