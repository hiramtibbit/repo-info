<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `teamspeak`

-	[`teamspeak:3.8`](#teamspeak38)
-	[`teamspeak:3.8.0`](#teamspeak380)
-	[`teamspeak:latest`](#teamspeaklatest)

## `teamspeak:3.8`

```console
$ docker pull teamspeak@sha256:0fd0c59b3ab7248d66df74a29035910a1486a3148376dacb57cd881c639bfc56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `teamspeak:3.8` - linux; amd64

```console
$ docker pull teamspeak@sha256:39cb9f17fa4a751f089fedd746a4fdb763ab2b285a43ac227400b98cf9d86608
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11174572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba17568266d3a2743b1377fc3b84785e45568d54bde2080bb9418d089e5edeff`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["ts3server"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:35:04 GMT
RUN apk add --no-cache ca-certificates libstdc++ su-exec
# Thu, 07 Mar 2019 23:35:05 GMT
RUN set -eux;  addgroup -g 9987 ts3server;  adduser -u 9987 -Hh /var/ts3server -G ts3server -s /sbin/nologin -D ts3server;  mkdir -p /var/ts3server /var/run/ts3server;  chown ts3server:ts3server /var/ts3server /var/run/ts3server;  chmod 777 /var/ts3server /var/run/ts3server
# Thu, 07 Mar 2019 23:35:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ts3server
# Tue, 28 May 2019 23:24:08 GMT
ARG TEAMSPEAK_CHECKSUM=4782b19514abecdaefe498fced970bf9ae74f7d9699c5b60960f422add8dbb50
# Tue, 28 May 2019 23:24:08 GMT
ARG TEAMSPEAK_URL=https://files.teamspeak-services.com/releases/server/3.8.0/teamspeak3-server_linux_alpine-3.8.0.tar.bz2
# Tue, 28 May 2019 23:24:12 GMT
# ARGS: TEAMSPEAK_CHECKSUM=4782b19514abecdaefe498fced970bf9ae74f7d9699c5b60960f422add8dbb50 TEAMSPEAK_URL=https://files.teamspeak-services.com/releases/server/3.8.0/teamspeak3-server_linux_alpine-3.8.0.tar.bz2
RUN set -eux;  apk add --no-cache --virtual .fetch-deps tar;  wget "${TEAMSPEAK_URL}" -O server.tar.bz2;  echo "${TEAMSPEAK_CHECKSUM} *server.tar.bz2" | sha256sum -c -;  mkdir -p /opt/ts3server;  tar -xf server.tar.bz2 --strip-components=1 -C /opt/ts3server;  rm server.tar.bz2;  apk del .fetch-deps;  mv /opt/ts3server/*.so /opt/ts3server/redist/* /usr/local/lib;  ldconfig /usr/local/lib;  chown -R ts3server:ts3server /opt/ts3server
# Tue, 28 May 2019 23:24:12 GMT
VOLUME [/var/ts3server/]
# Tue, 28 May 2019 23:24:12 GMT
WORKDIR /var/ts3server/
# Tue, 28 May 2019 23:24:12 GMT
EXPOSE 10011 30033 9987/udp
# Tue, 28 May 2019 23:24:13 GMT
COPY file:b44984fadef5287b307deb1ccb14a574319412486ee57f577500f131824ae933 in /opt/ts3server 
# Tue, 28 May 2019 23:24:13 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 28 May 2019 23:24:13 GMT
CMD ["ts3server"]
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12c76a78c10cad2efa9144131202c33680364c0775970da2b6fb93ad1bff92f`  
		Last Modified: Thu, 07 Mar 2019 23:35:24 GMT  
		Size: 758.0 KB (758016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad7952eb3bf63977a422ecacba3bf7c2aa85b717163a2402776dbf55e48fe90`  
		Last Modified: Thu, 07 Mar 2019 23:35:24 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0101351150e86e5b36045de3b57c2b7f8fc07bcb0962e7e399f4707994bf4587`  
		Last Modified: Tue, 28 May 2019 23:24:25 GMT  
		Size: 8.3 MB (8306919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a0e8d691d4b22daa369aa729e5c3bbe26f7989f54302d04644445ee92a9b19f`  
		Last Modified: Tue, 28 May 2019 23:24:21 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `teamspeak:3.8.0`

```console
$ docker pull teamspeak@sha256:0fd0c59b3ab7248d66df74a29035910a1486a3148376dacb57cd881c639bfc56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `teamspeak:3.8.0` - linux; amd64

```console
$ docker pull teamspeak@sha256:39cb9f17fa4a751f089fedd746a4fdb763ab2b285a43ac227400b98cf9d86608
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11174572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba17568266d3a2743b1377fc3b84785e45568d54bde2080bb9418d089e5edeff`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["ts3server"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:35:04 GMT
RUN apk add --no-cache ca-certificates libstdc++ su-exec
# Thu, 07 Mar 2019 23:35:05 GMT
RUN set -eux;  addgroup -g 9987 ts3server;  adduser -u 9987 -Hh /var/ts3server -G ts3server -s /sbin/nologin -D ts3server;  mkdir -p /var/ts3server /var/run/ts3server;  chown ts3server:ts3server /var/ts3server /var/run/ts3server;  chmod 777 /var/ts3server /var/run/ts3server
# Thu, 07 Mar 2019 23:35:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ts3server
# Tue, 28 May 2019 23:24:08 GMT
ARG TEAMSPEAK_CHECKSUM=4782b19514abecdaefe498fced970bf9ae74f7d9699c5b60960f422add8dbb50
# Tue, 28 May 2019 23:24:08 GMT
ARG TEAMSPEAK_URL=https://files.teamspeak-services.com/releases/server/3.8.0/teamspeak3-server_linux_alpine-3.8.0.tar.bz2
# Tue, 28 May 2019 23:24:12 GMT
# ARGS: TEAMSPEAK_CHECKSUM=4782b19514abecdaefe498fced970bf9ae74f7d9699c5b60960f422add8dbb50 TEAMSPEAK_URL=https://files.teamspeak-services.com/releases/server/3.8.0/teamspeak3-server_linux_alpine-3.8.0.tar.bz2
RUN set -eux;  apk add --no-cache --virtual .fetch-deps tar;  wget "${TEAMSPEAK_URL}" -O server.tar.bz2;  echo "${TEAMSPEAK_CHECKSUM} *server.tar.bz2" | sha256sum -c -;  mkdir -p /opt/ts3server;  tar -xf server.tar.bz2 --strip-components=1 -C /opt/ts3server;  rm server.tar.bz2;  apk del .fetch-deps;  mv /opt/ts3server/*.so /opt/ts3server/redist/* /usr/local/lib;  ldconfig /usr/local/lib;  chown -R ts3server:ts3server /opt/ts3server
# Tue, 28 May 2019 23:24:12 GMT
VOLUME [/var/ts3server/]
# Tue, 28 May 2019 23:24:12 GMT
WORKDIR /var/ts3server/
# Tue, 28 May 2019 23:24:12 GMT
EXPOSE 10011 30033 9987/udp
# Tue, 28 May 2019 23:24:13 GMT
COPY file:b44984fadef5287b307deb1ccb14a574319412486ee57f577500f131824ae933 in /opt/ts3server 
# Tue, 28 May 2019 23:24:13 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 28 May 2019 23:24:13 GMT
CMD ["ts3server"]
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12c76a78c10cad2efa9144131202c33680364c0775970da2b6fb93ad1bff92f`  
		Last Modified: Thu, 07 Mar 2019 23:35:24 GMT  
		Size: 758.0 KB (758016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad7952eb3bf63977a422ecacba3bf7c2aa85b717163a2402776dbf55e48fe90`  
		Last Modified: Thu, 07 Mar 2019 23:35:24 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0101351150e86e5b36045de3b57c2b7f8fc07bcb0962e7e399f4707994bf4587`  
		Last Modified: Tue, 28 May 2019 23:24:25 GMT  
		Size: 8.3 MB (8306919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a0e8d691d4b22daa369aa729e5c3bbe26f7989f54302d04644445ee92a9b19f`  
		Last Modified: Tue, 28 May 2019 23:24:21 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `teamspeak:latest`

```console
$ docker pull teamspeak@sha256:0fd0c59b3ab7248d66df74a29035910a1486a3148376dacb57cd881c639bfc56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `teamspeak:latest` - linux; amd64

```console
$ docker pull teamspeak@sha256:39cb9f17fa4a751f089fedd746a4fdb763ab2b285a43ac227400b98cf9d86608
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11174572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba17568266d3a2743b1377fc3b84785e45568d54bde2080bb9418d089e5edeff`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["ts3server"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 23:35:04 GMT
RUN apk add --no-cache ca-certificates libstdc++ su-exec
# Thu, 07 Mar 2019 23:35:05 GMT
RUN set -eux;  addgroup -g 9987 ts3server;  adduser -u 9987 -Hh /var/ts3server -G ts3server -s /sbin/nologin -D ts3server;  mkdir -p /var/ts3server /var/run/ts3server;  chown ts3server:ts3server /var/ts3server /var/run/ts3server;  chmod 777 /var/ts3server /var/run/ts3server
# Thu, 07 Mar 2019 23:35:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ts3server
# Tue, 28 May 2019 23:24:08 GMT
ARG TEAMSPEAK_CHECKSUM=4782b19514abecdaefe498fced970bf9ae74f7d9699c5b60960f422add8dbb50
# Tue, 28 May 2019 23:24:08 GMT
ARG TEAMSPEAK_URL=https://files.teamspeak-services.com/releases/server/3.8.0/teamspeak3-server_linux_alpine-3.8.0.tar.bz2
# Tue, 28 May 2019 23:24:12 GMT
# ARGS: TEAMSPEAK_CHECKSUM=4782b19514abecdaefe498fced970bf9ae74f7d9699c5b60960f422add8dbb50 TEAMSPEAK_URL=https://files.teamspeak-services.com/releases/server/3.8.0/teamspeak3-server_linux_alpine-3.8.0.tar.bz2
RUN set -eux;  apk add --no-cache --virtual .fetch-deps tar;  wget "${TEAMSPEAK_URL}" -O server.tar.bz2;  echo "${TEAMSPEAK_CHECKSUM} *server.tar.bz2" | sha256sum -c -;  mkdir -p /opt/ts3server;  tar -xf server.tar.bz2 --strip-components=1 -C /opt/ts3server;  rm server.tar.bz2;  apk del .fetch-deps;  mv /opt/ts3server/*.so /opt/ts3server/redist/* /usr/local/lib;  ldconfig /usr/local/lib;  chown -R ts3server:ts3server /opt/ts3server
# Tue, 28 May 2019 23:24:12 GMT
VOLUME [/var/ts3server/]
# Tue, 28 May 2019 23:24:12 GMT
WORKDIR /var/ts3server/
# Tue, 28 May 2019 23:24:12 GMT
EXPOSE 10011 30033 9987/udp
# Tue, 28 May 2019 23:24:13 GMT
COPY file:b44984fadef5287b307deb1ccb14a574319412486ee57f577500f131824ae933 in /opt/ts3server 
# Tue, 28 May 2019 23:24:13 GMT
ENTRYPOINT ["entrypoint.sh"]
# Tue, 28 May 2019 23:24:13 GMT
CMD ["ts3server"]
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e12c76a78c10cad2efa9144131202c33680364c0775970da2b6fb93ad1bff92f`  
		Last Modified: Thu, 07 Mar 2019 23:35:24 GMT  
		Size: 758.0 KB (758016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad7952eb3bf63977a422ecacba3bf7c2aa85b717163a2402776dbf55e48fe90`  
		Last Modified: Thu, 07 Mar 2019 23:35:24 GMT  
		Size: 1.3 KB (1276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0101351150e86e5b36045de3b57c2b7f8fc07bcb0962e7e399f4707994bf4587`  
		Last Modified: Tue, 28 May 2019 23:24:25 GMT  
		Size: 8.3 MB (8306919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a0e8d691d4b22daa369aa729e5c3bbe26f7989f54302d04644445ee92a9b19f`  
		Last Modified: Tue, 28 May 2019 23:24:21 GMT  
		Size: 1.3 KB (1263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
