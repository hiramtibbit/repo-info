## `teamspeak:latest`

```console
$ docker pull teamspeak@sha256:b6e97a4a8233287e5ef16c48349c0c16fba533b5d4ef40bbf55c9a6a92a548b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `teamspeak:latest` - linux; amd64

```console
$ docker pull teamspeak@sha256:22ffc802f7ad33cdd3dd2eef20b6938521ca2d605e9984883880842196ad057e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.8 MB (10762756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a30a0ecd826426a37f1ed72bbb99ab9f2c99ff687abe6b8a52d3676de8a6607`
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
# Wed, 12 Sep 2018 03:37:05 GMT
ARG TEAMSPEAK_CHECKSUM=e356d0013d7e894fd1ed91725f09525e39f077901f84b50ecad0f1e5ab4ad527
# Wed, 12 Sep 2018 03:37:05 GMT
ARG TEAMSPEAK_URL=http://dl.4players.de/ts/releases/3.4.0/teamspeak3-server_linux_alpine-3.4.0.tar.bz2
# Wed, 12 Sep 2018 03:37:08 GMT
# ARGS: TEAMSPEAK_CHECKSUM=e356d0013d7e894fd1ed91725f09525e39f077901f84b50ecad0f1e5ab4ad527 TEAMSPEAK_URL=http://dl.4players.de/ts/releases/3.4.0/teamspeak3-server_linux_alpine-3.4.0.tar.bz2
RUN set -eux;  apk add --no-cache --virtual .fetch-deps tar;  wget "${TEAMSPEAK_URL}" -O server.tar.bz2;  echo "${TEAMSPEAK_CHECKSUM} *server.tar.bz2" | sha256sum -c -;  mkdir -p /opt/ts3server;  tar -xf server.tar.bz2 --strip-components=1 -C /opt/ts3server;  rm server.tar.bz2;  apk del .fetch-deps;  mv /opt/ts3server/*.so /opt/ts3server/redist/* /usr/local/lib;  ldconfig /usr/local/lib;  chown -R ts3server:ts3server /opt/ts3server
# Wed, 12 Sep 2018 03:37:09 GMT
VOLUME [/var/ts3server/]
# Wed, 12 Sep 2018 03:37:09 GMT
WORKDIR /var/ts3server/
# Wed, 12 Sep 2018 03:37:09 GMT
EXPOSE 10011/tcp 30033/tcp 9987/udp
# Wed, 12 Sep 2018 03:37:09 GMT
COPY file:8305621bee8422883240aac7725729f4c562557e35a63e06115ac270c86978db in /opt/ts3server 
# Wed, 12 Sep 2018 03:37:10 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 12 Sep 2018 03:37:10 GMT
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
	-	`sha256:e137baa1c6a5706eb3fff47639e5cba10d408af4bc322669e4bfbfb0444d5d7a`  
		Last Modified: Wed, 12 Sep 2018 03:37:24 GMT  
		Size: 7.9 MB (7895203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73c2ab83169538727f78143575d958175eaa53d635f2937d13fb78f332b568d0`  
		Last Modified: Wed, 12 Sep 2018 03:37:23 GMT  
		Size: 1.3 KB (1256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
