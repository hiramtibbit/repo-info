<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `teamspeak`

-	[`teamspeak:3.3`](#teamspeak33)
-	[`teamspeak:3.3.0`](#teamspeak330)
-	[`teamspeak:latest`](#teamspeaklatest)

## `teamspeak:3.3`

```console
$ docker pull teamspeak@sha256:4798609b7e0671cd670b1df52f487dc06393305617576d83a5c6227ebb4d789c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `teamspeak:3.3` - linux; amd64

```console
$ docker pull teamspeak@sha256:49ad9b9af2a28d88861e06f4ed0a40c4b84163fb8487da2d1af357646450e521
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.9 MB (11940609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af12f00fcc9892835afd39e8a263d9b1a0445f262427f9cb5b795569f4d01bcc`
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
# Thu, 02 Aug 2018 18:48:41 GMT
ARG TEAMSPEAK_CHECKSUM=49b4e05bc7caccde480c6be4592238cc19ed5bd4320c55eac31cabdcd9e27b5c
# Thu, 02 Aug 2018 18:48:41 GMT
ARG TEAMSPEAK_URL=http://dl.4players.de/ts/releases/3.3.0/teamspeak3-server_linux_alpine-3.3.0.tar.bz2
# Thu, 02 Aug 2018 18:48:47 GMT
# ARGS: TEAMSPEAK_CHECKSUM=49b4e05bc7caccde480c6be4592238cc19ed5bd4320c55eac31cabdcd9e27b5c TEAMSPEAK_URL=http://dl.4players.de/ts/releases/3.3.0/teamspeak3-server_linux_alpine-3.3.0.tar.bz2
RUN set -eux;  apk add --no-cache --virtual .fetch-deps tar;  wget "${TEAMSPEAK_URL}" -O server.tar.bz2;  echo "${TEAMSPEAK_CHECKSUM} *server.tar.bz2" | sha256sum -c -;  mkdir -p /opt/ts3server;  tar -xf server.tar.bz2 --strip-components=1 -C /opt/ts3server;  rm server.tar.bz2;  apk del .fetch-deps;  mv /opt/ts3server/*.so /opt/ts3server/redist/* /usr/local/lib;  ldconfig /usr/local/lib;  chown -R ts3server:ts3server /opt/ts3server
# Thu, 02 Aug 2018 18:48:59 GMT
VOLUME [/var/ts3server/]
# Thu, 02 Aug 2018 18:48:59 GMT
WORKDIR /var/ts3server/
# Thu, 02 Aug 2018 18:49:00 GMT
EXPOSE 10011/tcp 30033/tcp 9987/udp
# Thu, 02 Aug 2018 18:49:00 GMT
COPY file:8305621bee8422883240aac7725729f4c562557e35a63e06115ac270c86978db in /opt/ts3server 
# Thu, 02 Aug 2018 18:49:00 GMT
ENTRYPOINT ["entrypoint.sh"]
# Thu, 02 Aug 2018 18:49:01 GMT
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
	-	`sha256:ae3419109992fb1a5cdbc354511a56eb077958f322865ac6229098b9164d062c`  
		Last Modified: Thu, 02 Aug 2018 18:49:30 GMT  
		Size: 9.1 MB (9076659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ab98a8a9ed6c8ead49a9be049473069351db87b03501d98344d6145261761a`  
		Last Modified: Thu, 02 Aug 2018 18:49:27 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `teamspeak:3.3.0`

```console
$ docker pull teamspeak@sha256:4798609b7e0671cd670b1df52f487dc06393305617576d83a5c6227ebb4d789c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `teamspeak:3.3.0` - linux; amd64

```console
$ docker pull teamspeak@sha256:49ad9b9af2a28d88861e06f4ed0a40c4b84163fb8487da2d1af357646450e521
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.9 MB (11940609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af12f00fcc9892835afd39e8a263d9b1a0445f262427f9cb5b795569f4d01bcc`
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
# Thu, 02 Aug 2018 18:48:41 GMT
ARG TEAMSPEAK_CHECKSUM=49b4e05bc7caccde480c6be4592238cc19ed5bd4320c55eac31cabdcd9e27b5c
# Thu, 02 Aug 2018 18:48:41 GMT
ARG TEAMSPEAK_URL=http://dl.4players.de/ts/releases/3.3.0/teamspeak3-server_linux_alpine-3.3.0.tar.bz2
# Thu, 02 Aug 2018 18:48:47 GMT
# ARGS: TEAMSPEAK_CHECKSUM=49b4e05bc7caccde480c6be4592238cc19ed5bd4320c55eac31cabdcd9e27b5c TEAMSPEAK_URL=http://dl.4players.de/ts/releases/3.3.0/teamspeak3-server_linux_alpine-3.3.0.tar.bz2
RUN set -eux;  apk add --no-cache --virtual .fetch-deps tar;  wget "${TEAMSPEAK_URL}" -O server.tar.bz2;  echo "${TEAMSPEAK_CHECKSUM} *server.tar.bz2" | sha256sum -c -;  mkdir -p /opt/ts3server;  tar -xf server.tar.bz2 --strip-components=1 -C /opt/ts3server;  rm server.tar.bz2;  apk del .fetch-deps;  mv /opt/ts3server/*.so /opt/ts3server/redist/* /usr/local/lib;  ldconfig /usr/local/lib;  chown -R ts3server:ts3server /opt/ts3server
# Thu, 02 Aug 2018 18:48:59 GMT
VOLUME [/var/ts3server/]
# Thu, 02 Aug 2018 18:48:59 GMT
WORKDIR /var/ts3server/
# Thu, 02 Aug 2018 18:49:00 GMT
EXPOSE 10011/tcp 30033/tcp 9987/udp
# Thu, 02 Aug 2018 18:49:00 GMT
COPY file:8305621bee8422883240aac7725729f4c562557e35a63e06115ac270c86978db in /opt/ts3server 
# Thu, 02 Aug 2018 18:49:00 GMT
ENTRYPOINT ["entrypoint.sh"]
# Thu, 02 Aug 2018 18:49:01 GMT
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
	-	`sha256:ae3419109992fb1a5cdbc354511a56eb077958f322865ac6229098b9164d062c`  
		Last Modified: Thu, 02 Aug 2018 18:49:30 GMT  
		Size: 9.1 MB (9076659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01ab98a8a9ed6c8ead49a9be049473069351db87b03501d98344d6145261761a`  
		Last Modified: Thu, 02 Aug 2018 18:49:27 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `teamspeak:latest`

```console
$ docker pull teamspeak@sha256:bbf5b190b0b05b88c169f755c731b9bec1504cc7f533213b4fc7a49dc64a66b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `teamspeak:latest` - linux; amd64

```console
$ docker pull teamspeak@sha256:8a5554e56860f586e4457acef1b488414f68f38a4fdd5d750f4259b6da519e0d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11366792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a30df341885340de70d3fb9ce7b2b6266bb97d5d54544b78f4afb459d982892e`
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
# Fri, 06 Jul 2018 18:44:57 GMT
ARG TEAMSPEAK_CHECKSUM=f7eff1e4d81a31631a8f27ac1ea8035a036b92853bfaabd4c12d979e3ff0ed76
# Fri, 06 Jul 2018 18:44:57 GMT
ARG TEAMSPEAK_URL=http://dl.4players.de/ts/releases/3.2.0/teamspeak3-server_linux_alpine-3.2.0.tar.bz2
# Fri, 06 Jul 2018 18:45:02 GMT
# ARGS: TEAMSPEAK_CHECKSUM=f7eff1e4d81a31631a8f27ac1ea8035a036b92853bfaabd4c12d979e3ff0ed76 TEAMSPEAK_URL=http://dl.4players.de/ts/releases/3.2.0/teamspeak3-server_linux_alpine-3.2.0.tar.bz2
RUN set -eux;  apk add --no-cache --virtual .fetch-deps tar;  wget "${TEAMSPEAK_URL}" -O server.tar.bz2;  echo "${TEAMSPEAK_CHECKSUM} *server.tar.bz2" | sha256sum -c -;  mkdir -p /opt/ts3server;  tar -xf server.tar.bz2 --strip-components=1 -C /opt/ts3server;  rm server.tar.bz2;  apk del .fetch-deps;  mv /opt/ts3server/*.so /opt/ts3server/redist/* /usr/local/lib;  ldconfig /usr/local/lib;  chown -R ts3server:ts3server /opt/ts3server
# Fri, 06 Jul 2018 18:45:07 GMT
VOLUME [/var/ts3server/]
# Fri, 06 Jul 2018 18:45:08 GMT
WORKDIR /var/ts3server/
# Fri, 06 Jul 2018 18:45:08 GMT
EXPOSE 10011/tcp 30033/tcp 9987/udp
# Fri, 06 Jul 2018 18:45:08 GMT
COPY file:c771229cbb8d7e896bd0ac6fc9f17103075224c82e33767ec4533639c179eb28 in /opt/ts3server 
# Fri, 06 Jul 2018 18:45:08 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 06 Jul 2018 18:45:09 GMT
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
	-	`sha256:ce7dd674a0465440098c757d413d97f1a67535af45a51c6bc4f652346ff09041`  
		Last Modified: Fri, 06 Jul 2018 18:45:33 GMT  
		Size: 8.5 MB (8502939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83018c5e5415f4a6bde9bc92781a91bf1314ebd530a4a42b1609ade1dda49f62`  
		Last Modified: Fri, 06 Jul 2018 18:45:28 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
