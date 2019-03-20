<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `teamspeak`

-	[`teamspeak:3.7`](#teamspeak37)
-	[`teamspeak:3.7.0`](#teamspeak370)
-	[`teamspeak:latest`](#teamspeaklatest)

## `teamspeak:3.7`

```console
$ docker pull teamspeak@sha256:d98e86d03a96d1aa769ce91a8f106c3df523dcb3b7505d4c2c6cac8ce0056d62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `teamspeak:3.7` - linux; amd64

```console
$ docker pull teamspeak@sha256:81407f678e615876010d9e4c8b76c422dfdf17f33530cf5cbf8a464e8fb5001d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11085232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9ca98ddb87997bc657afa006eba1327e5f329a6052a29d6cdd21b5104e106f9`
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
# Wed, 20 Mar 2019 22:57:47 GMT
ARG TEAMSPEAK_CHECKSUM=ac195047f5c8d626c20197f0c01a362ef7cc48d8cf6537acb5c85dfbaf523382
# Wed, 20 Mar 2019 22:57:48 GMT
ARG TEAMSPEAK_URL=https://files.teamspeak-services.com/releases/server/3.7.0/teamspeak3-server_linux_alpine-3.7.0.tar.bz2
# Wed, 20 Mar 2019 22:57:53 GMT
# ARGS: TEAMSPEAK_CHECKSUM=ac195047f5c8d626c20197f0c01a362ef7cc48d8cf6537acb5c85dfbaf523382 TEAMSPEAK_URL=https://files.teamspeak-services.com/releases/server/3.7.0/teamspeak3-server_linux_alpine-3.7.0.tar.bz2
RUN set -eux;  apk add --no-cache --virtual .fetch-deps tar;  wget "${TEAMSPEAK_URL}" -O server.tar.bz2;  echo "${TEAMSPEAK_CHECKSUM} *server.tar.bz2" | sha256sum -c -;  mkdir -p /opt/ts3server;  tar -xf server.tar.bz2 --strip-components=1 -C /opt/ts3server;  rm server.tar.bz2;  apk del .fetch-deps;  mv /opt/ts3server/*.so /opt/ts3server/redist/* /usr/local/lib;  ldconfig /usr/local/lib;  chown -R ts3server:ts3server /opt/ts3server
# Wed, 20 Mar 2019 22:57:53 GMT
VOLUME [/var/ts3server/]
# Wed, 20 Mar 2019 22:57:53 GMT
WORKDIR /var/ts3server/
# Wed, 20 Mar 2019 22:57:54 GMT
EXPOSE 10011 30033 9987/udp
# Wed, 20 Mar 2019 22:57:54 GMT
COPY file:b44984fadef5287b307deb1ccb14a574319412486ee57f577500f131824ae933 in /opt/ts3server 
# Wed, 20 Mar 2019 22:57:54 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 20 Mar 2019 22:57:54 GMT
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
	-	`sha256:0a2ee45397b123895002818ef0f6273475454bbd2263be1f06fb7e8f6a9fcba6`  
		Last Modified: Wed, 20 Mar 2019 22:58:04 GMT  
		Size: 8.2 MB (8217577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa0201c00ed4557fcc1f120d07f007a4b0192b767d839eda5332d4a1942c867`  
		Last Modified: Wed, 20 Mar 2019 22:58:03 GMT  
		Size: 1.3 KB (1265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `teamspeak:3.7.0`

```console
$ docker pull teamspeak@sha256:d98e86d03a96d1aa769ce91a8f106c3df523dcb3b7505d4c2c6cac8ce0056d62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `teamspeak:3.7.0` - linux; amd64

```console
$ docker pull teamspeak@sha256:81407f678e615876010d9e4c8b76c422dfdf17f33530cf5cbf8a464e8fb5001d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11085232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9ca98ddb87997bc657afa006eba1327e5f329a6052a29d6cdd21b5104e106f9`
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
# Wed, 20 Mar 2019 22:57:47 GMT
ARG TEAMSPEAK_CHECKSUM=ac195047f5c8d626c20197f0c01a362ef7cc48d8cf6537acb5c85dfbaf523382
# Wed, 20 Mar 2019 22:57:48 GMT
ARG TEAMSPEAK_URL=https://files.teamspeak-services.com/releases/server/3.7.0/teamspeak3-server_linux_alpine-3.7.0.tar.bz2
# Wed, 20 Mar 2019 22:57:53 GMT
# ARGS: TEAMSPEAK_CHECKSUM=ac195047f5c8d626c20197f0c01a362ef7cc48d8cf6537acb5c85dfbaf523382 TEAMSPEAK_URL=https://files.teamspeak-services.com/releases/server/3.7.0/teamspeak3-server_linux_alpine-3.7.0.tar.bz2
RUN set -eux;  apk add --no-cache --virtual .fetch-deps tar;  wget "${TEAMSPEAK_URL}" -O server.tar.bz2;  echo "${TEAMSPEAK_CHECKSUM} *server.tar.bz2" | sha256sum -c -;  mkdir -p /opt/ts3server;  tar -xf server.tar.bz2 --strip-components=1 -C /opt/ts3server;  rm server.tar.bz2;  apk del .fetch-deps;  mv /opt/ts3server/*.so /opt/ts3server/redist/* /usr/local/lib;  ldconfig /usr/local/lib;  chown -R ts3server:ts3server /opt/ts3server
# Wed, 20 Mar 2019 22:57:53 GMT
VOLUME [/var/ts3server/]
# Wed, 20 Mar 2019 22:57:53 GMT
WORKDIR /var/ts3server/
# Wed, 20 Mar 2019 22:57:54 GMT
EXPOSE 10011 30033 9987/udp
# Wed, 20 Mar 2019 22:57:54 GMT
COPY file:b44984fadef5287b307deb1ccb14a574319412486ee57f577500f131824ae933 in /opt/ts3server 
# Wed, 20 Mar 2019 22:57:54 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 20 Mar 2019 22:57:54 GMT
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
	-	`sha256:0a2ee45397b123895002818ef0f6273475454bbd2263be1f06fb7e8f6a9fcba6`  
		Last Modified: Wed, 20 Mar 2019 22:58:04 GMT  
		Size: 8.2 MB (8217577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aa0201c00ed4557fcc1f120d07f007a4b0192b767d839eda5332d4a1942c867`  
		Last Modified: Wed, 20 Mar 2019 22:58:03 GMT  
		Size: 1.3 KB (1265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `teamspeak:latest`

```console
$ docker pull teamspeak@sha256:496ce53f59f0cb0a5c1d1cda5321420725c24926a2fda1c300b71747bbb3940c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `teamspeak:latest` - linux; amd64

```console
$ docker pull teamspeak@sha256:141b0caeddcfcb13ff19088b37d0f60f166ac2bbda7d86cb8c8e43a1d978b581
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (10979306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f74d29e0f79ff7eb0ce7fb22b4d91f3c88d3243639ebebdd30be46770140a2c`
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
# Thu, 07 Mar 2019 23:35:06 GMT
ARG TEAMSPEAK_CHECKSUM=3f98dbb92c562f101aa9b3b78e22452c5e57290f72c98cc074a332e2e3963a1e
# Thu, 07 Mar 2019 23:35:07 GMT
ARG TEAMSPEAK_URL=https://files.teamspeak-services.com/releases/server/3.6.1/teamspeak3-server_linux_alpine-3.6.1.tar.bz2
# Thu, 07 Mar 2019 23:35:12 GMT
# ARGS: TEAMSPEAK_CHECKSUM=3f98dbb92c562f101aa9b3b78e22452c5e57290f72c98cc074a332e2e3963a1e TEAMSPEAK_URL=https://files.teamspeak-services.com/releases/server/3.6.1/teamspeak3-server_linux_alpine-3.6.1.tar.bz2
RUN set -eux;  apk add --no-cache --virtual .fetch-deps tar;  wget "${TEAMSPEAK_URL}" -O server.tar.bz2;  echo "${TEAMSPEAK_CHECKSUM} *server.tar.bz2" | sha256sum -c -;  mkdir -p /opt/ts3server;  tar -xf server.tar.bz2 --strip-components=1 -C /opt/ts3server;  rm server.tar.bz2;  apk del .fetch-deps;  mv /opt/ts3server/*.so /opt/ts3server/redist/* /usr/local/lib;  ldconfig /usr/local/lib;  chown -R ts3server:ts3server /opt/ts3server
# Thu, 07 Mar 2019 23:35:13 GMT
VOLUME [/var/ts3server/]
# Thu, 07 Mar 2019 23:35:13 GMT
WORKDIR /var/ts3server/
# Thu, 07 Mar 2019 23:35:13 GMT
EXPOSE 10011 30033 9987/udp
# Thu, 07 Mar 2019 23:35:14 GMT
COPY file:b44984fadef5287b307deb1ccb14a574319412486ee57f577500f131824ae933 in /opt/ts3server 
# Thu, 07 Mar 2019 23:35:14 GMT
ENTRYPOINT ["entrypoint.sh"]
# Thu, 07 Mar 2019 23:35:15 GMT
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
	-	`sha256:de7c7311daa795bfb533dae77f272c2d394fd37513856202712e0841eefad110`  
		Last Modified: Thu, 07 Mar 2019 23:35:25 GMT  
		Size: 8.1 MB (8111649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a173294ccc6a0c26068460ac64cbdb6798fd2eb04d81b73d8e50f2eed5d639e7`  
		Last Modified: Thu, 07 Mar 2019 23:35:24 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
