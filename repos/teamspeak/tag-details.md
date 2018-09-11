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
$ docker pull teamspeak@sha256:0f8d5ba4906e1609579318cf606b097a503d602b42dc76ff8aafe3be99e6f0b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `teamspeak:latest` - linux; amd64

```console
$ docker pull teamspeak@sha256:86322f7abec3174d704a54c450d7e996c6e2ac33b949e060be5ffd66d8b559ca
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **12.0 MB (11976789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a07829ebdf38f5c2f1d16fc984db5d31e832b751f6f05704d5d772e610941787`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["ts3server"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 18:44:56 GMT
RUN apk add --no-cache ca-certificates libstdc++ su-exec
# Fri, 06 Jul 2018 18:44:56 GMT
RUN set -eux;  addgroup -g 9987 ts3server;  adduser -u 9987 -Hh /var/ts3server -G ts3server -s /sbin/nologin -D ts3server;  mkdir -p /var/ts3server /var/run/ts3server;  chown ts3server:ts3server /var/ts3server /var/run/ts3server;  chmod 777 /var/ts3server /var/run/ts3server
# Fri, 06 Jul 2018 18:44:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ts3server
# Mon, 20 Aug 2018 21:20:36 GMT
ARG TEAMSPEAK_CHECKSUM=a1b8c896f1b132d7196d4988a331b3fb1ecd05495e4dce6706cedbbe571acd56
# Mon, 20 Aug 2018 21:20:37 GMT
ARG TEAMSPEAK_URL=http://dl.4players.de/ts/releases/3.3.1/teamspeak3-server_linux_alpine-3.3.1.tar.bz2
# Mon, 20 Aug 2018 21:20:43 GMT
# ARGS: TEAMSPEAK_CHECKSUM=a1b8c896f1b132d7196d4988a331b3fb1ecd05495e4dce6706cedbbe571acd56 TEAMSPEAK_URL=http://dl.4players.de/ts/releases/3.3.1/teamspeak3-server_linux_alpine-3.3.1.tar.bz2
RUN set -eux;  apk add --no-cache --virtual .fetch-deps tar;  wget "${TEAMSPEAK_URL}" -O server.tar.bz2;  echo "${TEAMSPEAK_CHECKSUM} *server.tar.bz2" | sha256sum -c -;  mkdir -p /opt/ts3server;  tar -xf server.tar.bz2 --strip-components=1 -C /opt/ts3server;  rm server.tar.bz2;  apk del .fetch-deps;  mv /opt/ts3server/*.so /opt/ts3server/redist/* /usr/local/lib;  ldconfig /usr/local/lib;  chown -R ts3server:ts3server /opt/ts3server
# Mon, 20 Aug 2018 21:20:57 GMT
VOLUME [/var/ts3server/]
# Mon, 20 Aug 2018 21:20:57 GMT
WORKDIR /var/ts3server/
# Mon, 20 Aug 2018 21:20:58 GMT
EXPOSE 10011/tcp 30033/tcp 9987/udp
# Mon, 20 Aug 2018 21:20:58 GMT
COPY file:8305621bee8422883240aac7725729f4c562557e35a63e06115ac270c86978db in /opt/ts3server 
# Mon, 20 Aug 2018 21:20:58 GMT
ENTRYPOINT ["entrypoint.sh"]
# Mon, 20 Aug 2018 21:20:59 GMT
CMD ["ts3server"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2967007df3cfe92ab97d58a86ae4578cf4c01e145d6a6ae810aec8d826345afe`  
		Last Modified: Fri, 06 Jul 2018 18:45:29 GMT  
		Size: 757.9 KB (757869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54aecb1936179c4b4cb20fa0eec23ba23ce130f80b96120434f941990fb252e6`  
		Last Modified: Fri, 06 Jul 2018 18:45:28 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84338361265238737a83e4dca8503977d2ed7997a8bd82f015464ea8875517d3`  
		Last Modified: Mon, 20 Aug 2018 21:21:40 GMT  
		Size: 9.1 MB (9112839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5abe219b7bac1177a6e2fead9f930252f0a95c672d59c2a19f4d6c27da929c2`  
		Last Modified: Mon, 20 Aug 2018 21:21:37 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
