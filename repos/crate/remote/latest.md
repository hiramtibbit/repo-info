## `crate:latest`

```console
$ docker pull crate@sha256:62cfa3225aaccac76888c3c9a8fddcdcac1217f1ff0988fe603c3e922d589b93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:latest` - linux; amd64

```console
$ docker pull crate@sha256:34937d47fb92060cef6c23b238d7ea2843155b8106ab58be984d1ef275908163
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129670430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56e3e6c27b149e254949fe9a8f0df00d0e6ceeeafd6c182c3faa293c41cdfee8`
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
# Tue, 29 May 2018 19:19:25 GMT
ENV CRATE_VERSION=2.3.11
# Tue, 29 May 2018 19:19:35 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Tue, 29 May 2018 19:19:35 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 29 May 2018 19:19:35 GMT
ENV CRATE_HEAP_SIZE=512M
# Tue, 29 May 2018 19:19:36 GMT
HEALTHCHECK &{["CMD-SHELL" "curl $(hostname):4200"] "0s" "0s" "0s" '\x00'}
# Tue, 29 May 2018 19:19:36 GMT
VOLUME [/data]
# Tue, 29 May 2018 19:19:36 GMT
ADD file:5ffe7502a8e59c1690f1c10bd4f7c3843fa35e03c99223a05215c7b021cec1a1 in /crate/config/crate.yml 
# Tue, 29 May 2018 19:19:36 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Tue, 29 May 2018 19:19:37 GMT
COPY file:2e96d63ad898925a7e7d49d4440efe616689a56ac5b315dc06aa1bf54f1c2e08 in / 
# Tue, 29 May 2018 19:19:37 GMT
WORKDIR /data
# Tue, 29 May 2018 19:19:37 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Tue, 29 May 2018 19:19:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 29 May 2018 19:19:38 GMT
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
	-	`sha256:9e5f5861dfde5f1d3d094820eceb3089996198551e2a997f2b6344ec5e21817c`  
		Last Modified: Tue, 29 May 2018 19:20:06 GMT  
		Size: 127.0 MB (127008915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f61e587f213413be3b799dd8b80ec175f8a255ae3a6929cd0bec817c109ff2b`  
		Last Modified: Tue, 29 May 2018 19:19:53 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:246751f3f018f01500a8a336b7f3cd563b14e1c14304f32daa85903fae36e38e`  
		Last Modified: Tue, 29 May 2018 19:19:54 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6afa68f83ceb569e5410729c580fc9f2ebc7ecc715b85e3d7b82cd74d43e0766`  
		Last Modified: Tue, 29 May 2018 19:19:53 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4188a1e98fd2f5ac190f8ebb3bc12e7d0e48787756bb87687029352a953c6be`  
		Last Modified: Tue, 29 May 2018 19:19:53 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
