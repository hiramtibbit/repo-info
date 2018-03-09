## `crate:latest`

```console
$ docker pull crate@sha256:515b13a79518fff1f2aa01bbed36e97f822278e6fb0d06be76b310fbfa308920
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:latest` - linux; amd64

```console
$ docker pull crate@sha256:bef56f51e5d81bd96de5cf41f683513d3e8bdfd071eca4d9d49eb8474a5d738c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129678542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1efead53a048501a5ac44167c2f99afceb73a8a3485a3596255a0590db989f4`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Tue, 09 Jan 2018 21:53:00 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Tue, 09 Jan 2018 21:53:01 GMT
ENV GOSU_VERSION=1.9
# Fri, 19 Jan 2018 20:49:04 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Fri, 19 Jan 2018 20:49:05 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Fri, 09 Mar 2018 17:49:02 GMT
ENV CRATE_VERSION=2.3.4
# Fri, 09 Mar 2018 17:49:25 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Fri, 09 Mar 2018 17:49:25 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 09 Mar 2018 17:49:25 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 09 Mar 2018 17:49:26 GMT
HEALTHCHECK &{["CMD-SHELL" "curl $(hostname):4200"] "0s" "0s" "0s" '\x00'}
# Fri, 09 Mar 2018 17:49:26 GMT
VOLUME [/data]
# Fri, 09 Mar 2018 17:49:26 GMT
ADD file:5ffe7502a8e59c1690f1c10bd4f7c3843fa35e03c99223a05215c7b021cec1a1 in /crate/config/crate.yml 
# Fri, 09 Mar 2018 17:49:27 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Fri, 09 Mar 2018 17:49:27 GMT
COPY file:2e96d63ad898925a7e7d49d4440efe616689a56ac5b315dc06aa1bf54f1c2e08 in / 
# Fri, 09 Mar 2018 17:49:27 GMT
WORKDIR /data
# Fri, 09 Mar 2018 17:49:27 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Fri, 09 Mar 2018 17:49:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 09 Mar 2018 17:49:28 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c9f08eae0aa06fa4473faeb205e680c751310a69b91dadd89bab1324525c9b`  
		Last Modified: Fri, 19 Jan 2018 20:50:30 GMT  
		Size: 593.1 KB (593129 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a997c15a6dc91e11f2154076f4c90943254fe240f94a281ad62ce4dd878b0efe`  
		Last Modified: Fri, 19 Jan 2018 20:50:30 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85e7862a763890094abc7922540a7ad68b2f695a39e0dbbf0c6956082e3e8704`  
		Last Modified: Fri, 09 Mar 2018 18:04:43 GMT  
		Size: 127.0 MB (127017031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82d7294c6d2fd38e1ecebfd2abed10fdeaf9c0bf2a098e400e38e3c6159c13d9`  
		Last Modified: Fri, 09 Mar 2018 18:04:27 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36ed5dc70fc1359010bb5d3f59bf440505fdf4b24cc536f12a9c2882be090a66`  
		Last Modified: Fri, 09 Mar 2018 18:04:26 GMT  
		Size: 932.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c2b66ef253f16de430dc1c3cbbc23c5536b6545dfc11aee6ce19027beba6b9`  
		Last Modified: Fri, 09 Mar 2018 18:04:27 GMT  
		Size: 363.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48d7a2e4cda16bae246a13b1ef42e3758cf8d688389715289de8b1434a5d50e0`  
		Last Modified: Fri, 09 Mar 2018 18:04:26 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
