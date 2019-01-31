## `teamspeak:latest`

```console
$ docker pull teamspeak@sha256:8c343b97f9773b3ff65897d1099c5dab3c9da40e81a8b0d320bd2814faeb3e2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `teamspeak:latest` - linux; amd64

```console
$ docker pull teamspeak@sha256:1b3af1f3b4028e48201d28d71bfbe06923a78f58350d39fb5bc5152302677ed7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (10979369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2f6f69eb7fc0db59eca5d592d743e12a1a295b8edf0d4a29aa89599cc556d40`
-	Entrypoint: `["entrypoint.sh"]`
-	Default Command: `["ts3server"]`

```dockerfile
# Wed, 30 Jan 2019 22:19:40 GMT
ADD file:9c13ab388a8e4c772b97ec8f6d2c576bece32cecdcfb6fee5175e1d3f613dd12 in / 
# Wed, 30 Jan 2019 22:19:40 GMT
CMD ["/bin/sh"]
# Thu, 31 Jan 2019 02:03:28 GMT
RUN apk add --no-cache ca-certificates libstdc++ su-exec
# Thu, 31 Jan 2019 02:03:29 GMT
RUN set -eux;  addgroup -g 9987 ts3server;  adduser -u 9987 -Hh /var/ts3server -G ts3server -s /sbin/nologin -D ts3server;  mkdir -p /var/ts3server /var/run/ts3server;  chown ts3server:ts3server /var/ts3server /var/run/ts3server;  chmod 777 /var/ts3server /var/run/ts3server
# Thu, 31 Jan 2019 02:03:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ts3server
# Thu, 31 Jan 2019 02:03:29 GMT
ARG TEAMSPEAK_CHECKSUM=3f98dbb92c562f101aa9b3b78e22452c5e57290f72c98cc074a332e2e3963a1e
# Thu, 31 Jan 2019 02:03:29 GMT
ARG TEAMSPEAK_URL=https://files.teamspeak-services.com/releases/server/3.6.1/teamspeak3-server_linux_alpine-3.6.1.tar.bz2
# Thu, 31 Jan 2019 02:03:39 GMT
# ARGS: TEAMSPEAK_CHECKSUM=3f98dbb92c562f101aa9b3b78e22452c5e57290f72c98cc074a332e2e3963a1e TEAMSPEAK_URL=https://files.teamspeak-services.com/releases/server/3.6.1/teamspeak3-server_linux_alpine-3.6.1.tar.bz2
RUN set -eux;  apk add --no-cache --virtual .fetch-deps tar;  wget "${TEAMSPEAK_URL}" -O server.tar.bz2;  echo "${TEAMSPEAK_CHECKSUM} *server.tar.bz2" | sha256sum -c -;  mkdir -p /opt/ts3server;  tar -xf server.tar.bz2 --strip-components=1 -C /opt/ts3server;  rm server.tar.bz2;  apk del .fetch-deps;  mv /opt/ts3server/*.so /opt/ts3server/redist/* /usr/local/lib;  ldconfig /usr/local/lib;  chown -R ts3server:ts3server /opt/ts3server
# Thu, 31 Jan 2019 02:03:39 GMT
VOLUME [/var/ts3server/]
# Thu, 31 Jan 2019 02:03:39 GMT
WORKDIR /var/ts3server/
# Thu, 31 Jan 2019 02:03:39 GMT
EXPOSE 10011 30033 9987/udp
# Thu, 31 Jan 2019 02:03:39 GMT
COPY file:b44984fadef5287b307deb1ccb14a574319412486ee57f577500f131824ae933 in /opt/ts3server 
# Thu, 31 Jan 2019 02:03:40 GMT
ENTRYPOINT ["entrypoint.sh"]
# Thu, 31 Jan 2019 02:03:40 GMT
CMD ["ts3server"]
```

-	Layers:
	-	`sha256:48ecbb6b270eb481cb6df2a5b0332de294ec729e1968e92d725f1329637ce01b`  
		Last Modified: Wed, 30 Jan 2019 22:21:00 GMT  
		Size: 2.1 MB (2107173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2443e25dbee72ca29a9232cd02dae7496929a748fa1a78efb4f8cafcacf117de`  
		Last Modified: Thu, 31 Jan 2019 02:03:51 GMT  
		Size: 758.0 KB (758028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff74f23befceed8de337c4c92bf4a9ae56c63c73a89ec34e9bd3453fdda58ef7`  
		Last Modified: Thu, 31 Jan 2019 02:03:51 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ffff56134291ed6e0b68a7f28d1a9454a69df9be78c8e3a5ad1b62f7002eeea`  
		Last Modified: Thu, 31 Jan 2019 02:03:53 GMT  
		Size: 8.1 MB (8111635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4ab092a073cdfce2fc82035bbed91be3cfe81787ecb2b719d3bf27f42ce37eb`  
		Last Modified: Thu, 31 Jan 2019 02:03:51 GMT  
		Size: 1.3 KB (1264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
