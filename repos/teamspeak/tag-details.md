<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `teamspeak`

-	[`teamspeak:3.6`](#teamspeak36)
-	[`teamspeak:3.6.0`](#teamspeak360)
-	[`teamspeak:latest`](#teamspeaklatest)

## `teamspeak:3.6`

```console
$ docker pull teamspeak@sha256:6b604263b1e9555192ebe6af3b8004b5e9e701be5e81cbd9f4fca35c34922ca9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `teamspeak:3.6` - linux; amd64

```console
$ docker pull teamspeak@sha256:4bf57901416a86d1e863a9bb805fab74dfd051d6aad1beaa5d7257e641383dad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (10979271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8da9db06957461b180bf30e888b1059f1179facb4c45d028b705d6fe7c2490c6`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["ts3server"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:46:29 GMT
RUN apk add --no-cache ca-certificates libstdc++ su-exec
# Fri, 21 Dec 2018 00:46:30 GMT
RUN set -eux;  addgroup -g 9987 ts3server;  adduser -u 9987 -Hh /var/ts3server -G ts3server -s /sbin/nologin -D ts3server;  mkdir -p /var/ts3server /var/run/ts3server;  chown ts3server:ts3server /var/ts3server /var/run/ts3server;  chmod 777 /var/ts3server /var/run/ts3server
# Fri, 21 Dec 2018 00:46:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ts3server
# Wed, 23 Jan 2019 22:21:08 GMT
ARG TEAMSPEAK_CHECKSUM=9ebc46917792ca4b7e7cdaf3eeff11a5f55347a018c76b83da0d9bb2b56abd5b
# Wed, 23 Jan 2019 22:21:08 GMT
ARG TEAMSPEAK_URL=https://files.teamspeak-services.com/releases/server/3.6.0/teamspeak3-server_linux_alpine-3.6.0.tar.bz2
# Wed, 23 Jan 2019 22:21:15 GMT
# ARGS: TEAMSPEAK_CHECKSUM=9ebc46917792ca4b7e7cdaf3eeff11a5f55347a018c76b83da0d9bb2b56abd5b TEAMSPEAK_URL=https://files.teamspeak-services.com/releases/server/3.6.0/teamspeak3-server_linux_alpine-3.6.0.tar.bz2
RUN set -eux;  apk add --no-cache --virtual .fetch-deps tar;  wget "${TEAMSPEAK_URL}" -O server.tar.bz2;  echo "${TEAMSPEAK_CHECKSUM} *server.tar.bz2" | sha256sum -c -;  mkdir -p /opt/ts3server;  tar -xf server.tar.bz2 --strip-components=1 -C /opt/ts3server;  rm server.tar.bz2;  apk del .fetch-deps;  mv /opt/ts3server/*.so /opt/ts3server/redist/* /usr/local/lib;  ldconfig /usr/local/lib;  chown -R ts3server:ts3server /opt/ts3server
# Wed, 23 Jan 2019 22:21:15 GMT
VOLUME [/var/ts3server/]
# Wed, 23 Jan 2019 22:21:15 GMT
WORKDIR /var/ts3server/
# Wed, 23 Jan 2019 22:21:15 GMT
EXPOSE 10011 30033 9987/udp
# Wed, 23 Jan 2019 22:21:16 GMT
COPY file:dfecfd43234e64ac59744dc39d362c9c797864af44f9df8e52f25d549b87090d in /opt/ts3server 
# Wed, 23 Jan 2019 22:21:16 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 23 Jan 2019 22:21:16 GMT
CMD ["ts3server"]
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d3fd8a49b8acf896d8aa9f596b0dfd5b159f6272713cfdd42d24f419acc1fb`  
		Last Modified: Fri, 21 Dec 2018 00:46:43 GMT  
		Size: 758.0 KB (758030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486fc8ad05b0426b550ac1ed6f8bac30a36643545b881d77976c43b15e4fe08d`  
		Last Modified: Fri, 21 Dec 2018 00:46:43 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b7fdb001838b9143848d1e506ca9341c59a9b4484b927a0d105eb0084ab8e0`  
		Last Modified: Wed, 23 Jan 2019 22:21:26 GMT  
		Size: 8.1 MB (8111563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1414aa14d1751313ef9199dfa0ab3214d6b57f2ffd5283843fb64d38b31c73a`  
		Last Modified: Wed, 23 Jan 2019 22:21:25 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `teamspeak:3.6.0`

```console
$ docker pull teamspeak@sha256:6b604263b1e9555192ebe6af3b8004b5e9e701be5e81cbd9f4fca35c34922ca9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `teamspeak:3.6.0` - linux; amd64

```console
$ docker pull teamspeak@sha256:4bf57901416a86d1e863a9bb805fab74dfd051d6aad1beaa5d7257e641383dad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (10979271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8da9db06957461b180bf30e888b1059f1179facb4c45d028b705d6fe7c2490c6`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["ts3server"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:46:29 GMT
RUN apk add --no-cache ca-certificates libstdc++ su-exec
# Fri, 21 Dec 2018 00:46:30 GMT
RUN set -eux;  addgroup -g 9987 ts3server;  adduser -u 9987 -Hh /var/ts3server -G ts3server -s /sbin/nologin -D ts3server;  mkdir -p /var/ts3server /var/run/ts3server;  chown ts3server:ts3server /var/ts3server /var/run/ts3server;  chmod 777 /var/ts3server /var/run/ts3server
# Fri, 21 Dec 2018 00:46:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ts3server
# Wed, 23 Jan 2019 22:21:08 GMT
ARG TEAMSPEAK_CHECKSUM=9ebc46917792ca4b7e7cdaf3eeff11a5f55347a018c76b83da0d9bb2b56abd5b
# Wed, 23 Jan 2019 22:21:08 GMT
ARG TEAMSPEAK_URL=https://files.teamspeak-services.com/releases/server/3.6.0/teamspeak3-server_linux_alpine-3.6.0.tar.bz2
# Wed, 23 Jan 2019 22:21:15 GMT
# ARGS: TEAMSPEAK_CHECKSUM=9ebc46917792ca4b7e7cdaf3eeff11a5f55347a018c76b83da0d9bb2b56abd5b TEAMSPEAK_URL=https://files.teamspeak-services.com/releases/server/3.6.0/teamspeak3-server_linux_alpine-3.6.0.tar.bz2
RUN set -eux;  apk add --no-cache --virtual .fetch-deps tar;  wget "${TEAMSPEAK_URL}" -O server.tar.bz2;  echo "${TEAMSPEAK_CHECKSUM} *server.tar.bz2" | sha256sum -c -;  mkdir -p /opt/ts3server;  tar -xf server.tar.bz2 --strip-components=1 -C /opt/ts3server;  rm server.tar.bz2;  apk del .fetch-deps;  mv /opt/ts3server/*.so /opt/ts3server/redist/* /usr/local/lib;  ldconfig /usr/local/lib;  chown -R ts3server:ts3server /opt/ts3server
# Wed, 23 Jan 2019 22:21:15 GMT
VOLUME [/var/ts3server/]
# Wed, 23 Jan 2019 22:21:15 GMT
WORKDIR /var/ts3server/
# Wed, 23 Jan 2019 22:21:15 GMT
EXPOSE 10011 30033 9987/udp
# Wed, 23 Jan 2019 22:21:16 GMT
COPY file:dfecfd43234e64ac59744dc39d362c9c797864af44f9df8e52f25d549b87090d in /opt/ts3server 
# Wed, 23 Jan 2019 22:21:16 GMT
ENTRYPOINT ["entrypoint.sh"]
# Wed, 23 Jan 2019 22:21:16 GMT
CMD ["ts3server"]
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d3fd8a49b8acf896d8aa9f596b0dfd5b159f6272713cfdd42d24f419acc1fb`  
		Last Modified: Fri, 21 Dec 2018 00:46:43 GMT  
		Size: 758.0 KB (758030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486fc8ad05b0426b550ac1ed6f8bac30a36643545b881d77976c43b15e4fe08d`  
		Last Modified: Fri, 21 Dec 2018 00:46:43 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3b7fdb001838b9143848d1e506ca9341c59a9b4484b927a0d105eb0084ab8e0`  
		Last Modified: Wed, 23 Jan 2019 22:21:26 GMT  
		Size: 8.1 MB (8111563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1414aa14d1751313ef9199dfa0ab3214d6b57f2ffd5283843fb64d38b31c73a`  
		Last Modified: Wed, 23 Jan 2019 22:21:25 GMT  
		Size: 1.3 KB (1258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `teamspeak:latest`

```console
$ docker pull teamspeak@sha256:f9d1f1bf8ca40a43d145c2cf62695751caf5b0e1f48a19b78ef7b1340152a01a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `teamspeak:latest` - linux; amd64

```console
$ docker pull teamspeak@sha256:57fa976db7d3b12615332a0f76bf49ddfc85af52042d71ed531ebe6f900f36b1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.9 MB (10949804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:282d903514c203f853a67468379fce66c44930d3ef267c24b9a9aa981407abcc`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["ts3server"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:10 GMT
ADD file:1c654f8c89128c1ac8363b251cb5e1e7d9326e430ae2740963f77cf6726aee0b in / 
# Fri, 21 Dec 2018 00:21:11 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:46:29 GMT
RUN apk add --no-cache ca-certificates libstdc++ su-exec
# Fri, 21 Dec 2018 00:46:30 GMT
RUN set -eux;  addgroup -g 9987 ts3server;  adduser -u 9987 -Hh /var/ts3server -G ts3server -s /sbin/nologin -D ts3server;  mkdir -p /var/ts3server /var/run/ts3server;  chown ts3server:ts3server /var/ts3server /var/run/ts3server;  chmod 777 /var/ts3server /var/run/ts3server
# Fri, 21 Dec 2018 00:46:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ts3server
# Fri, 21 Dec 2018 00:46:30 GMT
ARG TEAMSPEAK_CHECKSUM=9f95621a70ebd4822e1c918ccea15bfc8e83da15358c820422dda5a142ae79e1
# Fri, 21 Dec 2018 00:46:31 GMT
ARG TEAMSPEAK_URL=http://dl.4players.de/ts/releases/3.5.1/teamspeak3-server_linux_alpine-3.5.1.tar.bz2
# Fri, 21 Dec 2018 00:46:34 GMT
# ARGS: TEAMSPEAK_CHECKSUM=9f95621a70ebd4822e1c918ccea15bfc8e83da15358c820422dda5a142ae79e1 TEAMSPEAK_URL=http://dl.4players.de/ts/releases/3.5.1/teamspeak3-server_linux_alpine-3.5.1.tar.bz2
RUN set -eux;  apk add --no-cache --virtual .fetch-deps tar;  wget "${TEAMSPEAK_URL}" -O server.tar.bz2;  echo "${TEAMSPEAK_CHECKSUM} *server.tar.bz2" | sha256sum -c -;  mkdir -p /opt/ts3server;  tar -xf server.tar.bz2 --strip-components=1 -C /opt/ts3server;  rm server.tar.bz2;  apk del .fetch-deps;  mv /opt/ts3server/*.so /opt/ts3server/redist/* /usr/local/lib;  ldconfig /usr/local/lib;  chown -R ts3server:ts3server /opt/ts3server
# Fri, 21 Dec 2018 00:46:35 GMT
VOLUME [/var/ts3server/]
# Fri, 21 Dec 2018 00:46:35 GMT
WORKDIR /var/ts3server/
# Fri, 21 Dec 2018 00:46:35 GMT
EXPOSE 10011 30033 9987/udp
# Fri, 21 Dec 2018 00:46:35 GMT
COPY file:dfecfd43234e64ac59744dc39d362c9c797864af44f9df8e52f25d549b87090d in /opt/ts3server 
# Fri, 21 Dec 2018 00:46:35 GMT
ENTRYPOINT ["entrypoint.sh"]
# Fri, 21 Dec 2018 00:46:35 GMT
CMD ["ts3server"]
```

-	Layers:
	-	`sha256:407ea412d82cbc18a270f0ae17d5e528e620bcf4661229e757446f6e6443768b`  
		Last Modified: Fri, 21 Dec 2018 00:23:41 GMT  
		Size: 2.1 MB (2107153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d3fd8a49b8acf896d8aa9f596b0dfd5b159f6272713cfdd42d24f419acc1fb`  
		Last Modified: Fri, 21 Dec 2018 00:46:43 GMT  
		Size: 758.0 KB (758030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:486fc8ad05b0426b550ac1ed6f8bac30a36643545b881d77976c43b15e4fe08d`  
		Last Modified: Fri, 21 Dec 2018 00:46:43 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee06911fd43f597d9ca5edbdfda68634aac08723c85f04962bac7b64cd59845f`  
		Last Modified: Fri, 21 Dec 2018 00:46:44 GMT  
		Size: 8.1 MB (8082097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c39aa40ac65b528417c3459ead5c46c10911c49eb9b34565b021e0635f436b7d`  
		Last Modified: Fri, 21 Dec 2018 00:46:42 GMT  
		Size: 1.3 KB (1257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
