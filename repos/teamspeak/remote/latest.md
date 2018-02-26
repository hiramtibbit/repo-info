## `teamspeak:latest`

```console
$ docker pull teamspeak@sha256:346f96096409bf34748724af9c14cf233e21756da465f8a78a8c1a156705954f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `teamspeak:latest` - linux; amd64

```console
$ docker pull teamspeak@sha256:4af7de2201d2721882b7ebbc894968d0008ebd7631f2aba3f381c2b97cd463c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.0 MB (9962597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd88659c70b6dd1d1d12659073b800e0b3dbc8415822bb8a52b25c671e72e035`
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
# Mon, 26 Feb 2018 20:46:45 GMT
ARG TEAMSPEAK_CHECKSUM=5a0c0c9e6f41142d98a1171af68dcefd19532a8a4ae9cf5d1e2c424a554f7ea9
# Mon, 26 Feb 2018 20:46:45 GMT
ARG TEAMSPEAK_URL=http://dl.4players.de/ts/releases/3.1.1/teamspeak3-server_linux_alpine-3.1.1.tar.bz2
# Mon, 26 Feb 2018 20:46:53 GMT
# ARGS: TEAMSPEAK_CHECKSUM=5a0c0c9e6f41142d98a1171af68dcefd19532a8a4ae9cf5d1e2c424a554f7ea9 TEAMSPEAK_URL=http://dl.4players.de/ts/releases/3.1.1/teamspeak3-server_linux_alpine-3.1.1.tar.bz2
RUN set -eux;  apk add --no-cache --virtual .fetch-deps tar;  wget "${TEAMSPEAK_URL}" -O server.tar.bz2;  echo "${TEAMSPEAK_CHECKSUM} *server.tar.bz2" | sha256sum -c -;  mkdir -p /opt/ts3server;  tar -xf server.tar.bz2 --strip-components=1 -C /opt/ts3server;  rm server.tar.bz2;  apk del .fetch-deps;  mv /opt/ts3server/*.so /opt/ts3server/redist/* /usr/local/lib;  ldconfig /usr/local/lib;  chown -R ts3server:ts3server /opt/ts3server
# Mon, 26 Feb 2018 20:46:54 GMT
VOLUME [/var/ts3server/]
# Mon, 26 Feb 2018 20:46:54 GMT
WORKDIR /var/ts3server/
# Mon, 26 Feb 2018 20:46:54 GMT
EXPOSE 10011/tcp 30033/tcp 9987/udp
# Mon, 26 Feb 2018 20:46:54 GMT
COPY file:c771229cbb8d7e896bd0ac6fc9f17103075224c82e33767ec4533639c179eb28 in /opt/ts3server 
# Mon, 26 Feb 2018 20:46:55 GMT
ENTRYPOINT ["entrypoint.sh"]
# Mon, 26 Feb 2018 20:46:55 GMT
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
	-	`sha256:130785b60e2bcb6f58e899533828ab080e12c5c28880c7c1050a9397e3f72c35`  
		Last Modified: Mon, 26 Feb 2018 20:47:19 GMT  
		Size: 7.1 MB (7137080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aadb7d2fd685f4fd056a1fcd956025b34cf0205ff8dca99e442bd5496b951cc9`  
		Last Modified: Mon, 26 Feb 2018 20:47:16 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
