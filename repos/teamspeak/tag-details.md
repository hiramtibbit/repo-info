<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `teamspeak`

-	[`teamspeak:3.4`](#teamspeak34)
-	[`teamspeak:3.4.0`](#teamspeak340)
-	[`teamspeak:latest`](#teamspeaklatest)

## `teamspeak:3.4`

```console
$ docker pull teamspeak@sha256:0e2468eddd8ed4a08c39f7d55912c8d7509f8c893574a10896d9780957b6daa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `teamspeak:3.4` - linux; amd64

```console
$ docker pull teamspeak@sha256:cf957a1c264a6f3c4f312f585dca8f070af1b6344283dc7851efca252ffa1847
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.0 MB (11981319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7de10014e076d47f690e0a5fb2f40bb3d5c40f7c7871b3342f858b53f811918`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["ts3server"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 17:20:08 GMT
RUN apk add --no-cache ca-certificates libstdc++ su-exec
# Tue, 11 Sep 2018 17:20:09 GMT
RUN set -eux;  addgroup -g 9987 ts3server;  adduser -u 9987 -Hh /var/ts3server -G ts3server -s /sbin/nologin -D ts3server;  mkdir -p /var/ts3server /var/run/ts3server;  chown ts3server:ts3server /var/ts3server /var/run/ts3server;  chmod 777 /var/ts3server /var/run/ts3server
# Tue, 11 Sep 2018 17:20:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ts3server
# Tue, 11 Sep 2018 17:20:09 GMT
ARG TEAMSPEAK_CHECKSUM=e356d0013d7e894fd1ed91725f09525e39f077901f84b50ecad0f1e5ab4ad527
# Tue, 11 Sep 2018 17:20:10 GMT
ARG TEAMSPEAK_URL=http://dl.4players.de/ts/releases/3.4.0/teamspeak3-server_linux_alpine-3.4.0.tar.bz2
# Tue, 11 Sep 2018 17:20:13 GMT
# ARGS: TEAMSPEAK_CHECKSUM=e356d0013d7e894fd1ed91725f09525e39f077901f84b50ecad0f1e5ab4ad527 TEAMSPEAK_URL=http://dl.4players.de/ts/releases/3.4.0/teamspeak3-server_linux_alpine-3.4.0.tar.bz2
RUN set -eux;  apk add --no-cache --virtual .fetch-deps tar;  wget "${TEAMSPEAK_URL}" -O server.tar.bz2;  echo "${TEAMSPEAK_CHECKSUM} *server.tar.bz2" | sha256sum -c -;  mkdir -p /opt/ts3server;  tar -xf server.tar.bz2 --strip-components=1 -C /opt/ts3server;  rm server.tar.bz2;  apk del .fetch-deps;  mv /opt/ts3server/*.so /opt/ts3server/redist/* /usr/local/lib;  ldconfig /usr/local/lib;  chown -R ts3server:ts3server /opt/ts3server
# Tue, 11 Sep 2018 17:20:13 GMT
VOLUME [/var/ts3server/]
# Tue, 11 Sep 2018 17:20:13 GMT
WORKDIR /var/ts3server/
# Tue, 11 Sep 2018 17:20:14 GMT
EXPOSE 10011/tcp 30033/tcp 9987/udp
# Tue, 11 Sep 2018 17:20:14 GMT
COPY file:8305621bee8422883240aac7725729f4c562557e35a63e06115ac270c86978db in /opt/ts3server 
# Tue, 11 Sep 2018 17:20:14 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 11 Sep 2018 17:20:14 GMT
CMD ["ts3server"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4f7b303eb101a809a2af59755ea6e64b6fe4be87f6ffbf4dee32ebf0eda41fd`  
		Last Modified: Tue, 11 Sep 2018 17:20:29 GMT  
		Size: 757.9 KB (757866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5735ee115b5dbdcc4d391e001a7586120c1360b200d2304bf9914de62f89a5da`  
		Last Modified: Tue, 11 Sep 2018 17:20:29 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe46bbccc55fa7a9239a51c1a17fd78f6a7915ca03d90d98b7b56f977de665d1`  
		Last Modified: Tue, 11 Sep 2018 17:20:31 GMT  
		Size: 9.1 MB (9117372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc88e7c053c252a8061a4f3965489c14e7d76c620d0f68b6890a4c86f53a9a70`  
		Last Modified: Tue, 11 Sep 2018 17:20:29 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `teamspeak:3.4.0`

```console
$ docker pull teamspeak@sha256:0e2468eddd8ed4a08c39f7d55912c8d7509f8c893574a10896d9780957b6daa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `teamspeak:3.4.0` - linux; amd64

```console
$ docker pull teamspeak@sha256:cf957a1c264a6f3c4f312f585dca8f070af1b6344283dc7851efca252ffa1847
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.0 MB (11981319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7de10014e076d47f690e0a5fb2f40bb3d5c40f7c7871b3342f858b53f811918`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["ts3server"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 17:20:08 GMT
RUN apk add --no-cache ca-certificates libstdc++ su-exec
# Tue, 11 Sep 2018 17:20:09 GMT
RUN set -eux;  addgroup -g 9987 ts3server;  adduser -u 9987 -Hh /var/ts3server -G ts3server -s /sbin/nologin -D ts3server;  mkdir -p /var/ts3server /var/run/ts3server;  chown ts3server:ts3server /var/ts3server /var/run/ts3server;  chmod 777 /var/ts3server /var/run/ts3server
# Tue, 11 Sep 2018 17:20:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ts3server
# Tue, 11 Sep 2018 17:20:09 GMT
ARG TEAMSPEAK_CHECKSUM=e356d0013d7e894fd1ed91725f09525e39f077901f84b50ecad0f1e5ab4ad527
# Tue, 11 Sep 2018 17:20:10 GMT
ARG TEAMSPEAK_URL=http://dl.4players.de/ts/releases/3.4.0/teamspeak3-server_linux_alpine-3.4.0.tar.bz2
# Tue, 11 Sep 2018 17:20:13 GMT
# ARGS: TEAMSPEAK_CHECKSUM=e356d0013d7e894fd1ed91725f09525e39f077901f84b50ecad0f1e5ab4ad527 TEAMSPEAK_URL=http://dl.4players.de/ts/releases/3.4.0/teamspeak3-server_linux_alpine-3.4.0.tar.bz2
RUN set -eux;  apk add --no-cache --virtual .fetch-deps tar;  wget "${TEAMSPEAK_URL}" -O server.tar.bz2;  echo "${TEAMSPEAK_CHECKSUM} *server.tar.bz2" | sha256sum -c -;  mkdir -p /opt/ts3server;  tar -xf server.tar.bz2 --strip-components=1 -C /opt/ts3server;  rm server.tar.bz2;  apk del .fetch-deps;  mv /opt/ts3server/*.so /opt/ts3server/redist/* /usr/local/lib;  ldconfig /usr/local/lib;  chown -R ts3server:ts3server /opt/ts3server
# Tue, 11 Sep 2018 17:20:13 GMT
VOLUME [/var/ts3server/]
# Tue, 11 Sep 2018 17:20:13 GMT
WORKDIR /var/ts3server/
# Tue, 11 Sep 2018 17:20:14 GMT
EXPOSE 10011/tcp 30033/tcp 9987/udp
# Tue, 11 Sep 2018 17:20:14 GMT
COPY file:8305621bee8422883240aac7725729f4c562557e35a63e06115ac270c86978db in /opt/ts3server 
# Tue, 11 Sep 2018 17:20:14 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 11 Sep 2018 17:20:14 GMT
CMD ["ts3server"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4f7b303eb101a809a2af59755ea6e64b6fe4be87f6ffbf4dee32ebf0eda41fd`  
		Last Modified: Tue, 11 Sep 2018 17:20:29 GMT  
		Size: 757.9 KB (757866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5735ee115b5dbdcc4d391e001a7586120c1360b200d2304bf9914de62f89a5da`  
		Last Modified: Tue, 11 Sep 2018 17:20:29 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe46bbccc55fa7a9239a51c1a17fd78f6a7915ca03d90d98b7b56f977de665d1`  
		Last Modified: Tue, 11 Sep 2018 17:20:31 GMT  
		Size: 9.1 MB (9117372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc88e7c053c252a8061a4f3965489c14e7d76c620d0f68b6890a4c86f53a9a70`  
		Last Modified: Tue, 11 Sep 2018 17:20:29 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `teamspeak:latest`

```console
$ docker pull teamspeak@sha256:0e2468eddd8ed4a08c39f7d55912c8d7509f8c893574a10896d9780957b6daa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `teamspeak:latest` - linux; amd64

```console
$ docker pull teamspeak@sha256:cf957a1c264a6f3c4f312f585dca8f070af1b6344283dc7851efca252ffa1847
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.0 MB (11981319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7de10014e076d47f690e0a5fb2f40bb3d5c40f7c7871b3342f858b53f811918`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["ts3server"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 17:20:08 GMT
RUN apk add --no-cache ca-certificates libstdc++ su-exec
# Tue, 11 Sep 2018 17:20:09 GMT
RUN set -eux;  addgroup -g 9987 ts3server;  adduser -u 9987 -Hh /var/ts3server -G ts3server -s /sbin/nologin -D ts3server;  mkdir -p /var/ts3server /var/run/ts3server;  chown ts3server:ts3server /var/ts3server /var/run/ts3server;  chmod 777 /var/ts3server /var/run/ts3server
# Tue, 11 Sep 2018 17:20:09 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ts3server
# Tue, 11 Sep 2018 17:20:09 GMT
ARG TEAMSPEAK_CHECKSUM=e356d0013d7e894fd1ed91725f09525e39f077901f84b50ecad0f1e5ab4ad527
# Tue, 11 Sep 2018 17:20:10 GMT
ARG TEAMSPEAK_URL=http://dl.4players.de/ts/releases/3.4.0/teamspeak3-server_linux_alpine-3.4.0.tar.bz2
# Tue, 11 Sep 2018 17:20:13 GMT
# ARGS: TEAMSPEAK_CHECKSUM=e356d0013d7e894fd1ed91725f09525e39f077901f84b50ecad0f1e5ab4ad527 TEAMSPEAK_URL=http://dl.4players.de/ts/releases/3.4.0/teamspeak3-server_linux_alpine-3.4.0.tar.bz2
RUN set -eux;  apk add --no-cache --virtual .fetch-deps tar;  wget "${TEAMSPEAK_URL}" -O server.tar.bz2;  echo "${TEAMSPEAK_CHECKSUM} *server.tar.bz2" | sha256sum -c -;  mkdir -p /opt/ts3server;  tar -xf server.tar.bz2 --strip-components=1 -C /opt/ts3server;  rm server.tar.bz2;  apk del .fetch-deps;  mv /opt/ts3server/*.so /opt/ts3server/redist/* /usr/local/lib;  ldconfig /usr/local/lib;  chown -R ts3server:ts3server /opt/ts3server
# Tue, 11 Sep 2018 17:20:13 GMT
VOLUME [/var/ts3server/]
# Tue, 11 Sep 2018 17:20:13 GMT
WORKDIR /var/ts3server/
# Tue, 11 Sep 2018 17:20:14 GMT
EXPOSE 10011/tcp 30033/tcp 9987/udp
# Tue, 11 Sep 2018 17:20:14 GMT
COPY file:8305621bee8422883240aac7725729f4c562557e35a63e06115ac270c86978db in /opt/ts3server 
# Tue, 11 Sep 2018 17:20:14 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 11 Sep 2018 17:20:14 GMT
CMD ["ts3server"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4f7b303eb101a809a2af59755ea6e64b6fe4be87f6ffbf4dee32ebf0eda41fd`  
		Last Modified: Tue, 11 Sep 2018 17:20:29 GMT  
		Size: 757.9 KB (757866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5735ee115b5dbdcc4d391e001a7586120c1360b200d2304bf9914de62f89a5da`  
		Last Modified: Tue, 11 Sep 2018 17:20:29 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe46bbccc55fa7a9239a51c1a17fd78f6a7915ca03d90d98b7b56f977de665d1`  
		Last Modified: Tue, 11 Sep 2018 17:20:31 GMT  
		Size: 9.1 MB (9117372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc88e7c053c252a8061a4f3965489c14e7d76c620d0f68b6890a4c86f53a9a70`  
		Last Modified: Tue, 11 Sep 2018 17:20:29 GMT  
		Size: 1.3 KB (1260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
