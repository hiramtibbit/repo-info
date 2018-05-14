## `teamspeak:latest`

```console
$ docker pull teamspeak@sha256:d72d013257c748189e72e6bb901def5ea3ae092c2d1010f313692229499ec3a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `teamspeak:latest` - linux; amd64

```console
$ docker pull teamspeak@sha256:2867ae1c98ac6f599352d05b4dab6e7fa6da0300b18ed10e0cc25449d5d0b1ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **10.1 MB (10106999 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e54b135fe1443df6e7f773859726380545a8d33e2bb5a6cff553aee7d08960b`
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
# Mon, 14 May 2018 20:48:18 GMT
ARG TEAMSPEAK_CHECKSUM=f7eff1e4d81a31631a8f27ac1ea8035a036b92853bfaabd4c12d979e3ff0ed76
# Mon, 14 May 2018 20:48:19 GMT
ARG TEAMSPEAK_URL=http://dl.4players.de/ts/releases/3.2.0/teamspeak3-server_linux_alpine-3.2.0.tar.bz2
# Mon, 14 May 2018 20:48:23 GMT
# ARGS: TEAMSPEAK_CHECKSUM=f7eff1e4d81a31631a8f27ac1ea8035a036b92853bfaabd4c12d979e3ff0ed76 TEAMSPEAK_URL=http://dl.4players.de/ts/releases/3.2.0/teamspeak3-server_linux_alpine-3.2.0.tar.bz2
RUN set -eux;  apk add --no-cache --virtual .fetch-deps tar;  wget "${TEAMSPEAK_URL}" -O server.tar.bz2;  echo "${TEAMSPEAK_CHECKSUM} *server.tar.bz2" | sha256sum -c -;  mkdir -p /opt/ts3server;  tar -xf server.tar.bz2 --strip-components=1 -C /opt/ts3server;  rm server.tar.bz2;  apk del .fetch-deps;  mv /opt/ts3server/*.so /opt/ts3server/redist/* /usr/local/lib;  ldconfig /usr/local/lib;  chown -R ts3server:ts3server /opt/ts3server
# Mon, 14 May 2018 20:48:23 GMT
VOLUME [/var/ts3server/]
# Mon, 14 May 2018 20:48:23 GMT
WORKDIR /var/ts3server/
# Mon, 14 May 2018 20:48:24 GMT
EXPOSE 10011/tcp 30033/tcp 9987/udp
# Mon, 14 May 2018 20:48:24 GMT
COPY file:c771229cbb8d7e896bd0ac6fc9f17103075224c82e33767ec4533639c179eb28 in /opt/ts3server 
# Mon, 14 May 2018 20:48:24 GMT
ENTRYPOINT ["entrypoint.sh"]
# Mon, 14 May 2018 20:48:24 GMT
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
	-	`sha256:8150f418b62c0c51f1924e7665c02a85940b939e8f4e8a8c082de846358e408d`  
		Last Modified: Mon, 14 May 2018 20:48:36 GMT  
		Size: 7.3 MB (7281481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb9b1c66f940c909dba708a41661295a4fe808096a6615bfc5481882eeaef4b`  
		Last Modified: Mon, 14 May 2018 20:48:35 GMT  
		Size: 1.2 KB (1163 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
