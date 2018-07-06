## `crate:latest`

```console
$ docker pull crate@sha256:50392071f09af74a4e5e6b6bcdb6d65838bc19a1f01e02152f270af3028144fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:latest` - linux; amd64

```console
$ docker pull crate@sha256:f20606a5f7ac41f84d40b5fdd599a493fe56bc4410f8cfe28673d9b7bbcc3810
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.4 MB (130411480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adb256795acc47cf654190f18a66166902c4ec615e06f3fcb905a385e890fdcd`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 14:34:33 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Fri, 06 Jul 2018 14:34:34 GMT
ENV GOSU_VERSION=1.9
# Fri, 06 Jul 2018 14:34:41 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Fri, 06 Jul 2018 14:34:43 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Fri, 06 Jul 2018 14:34:43 GMT
ENV CRATE_VERSION=3.0.3
# Fri, 06 Jul 2018 14:35:02 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Fri, 06 Jul 2018 14:35:03 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Jul 2018 14:35:03 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 06 Jul 2018 14:35:04 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --fail --max-time 25 $(hostname):4200"] "30s" "30s" "0s" '\x00'}
# Fri, 06 Jul 2018 14:35:06 GMT
RUN mkdir -p /data/data /data/log
# Fri, 06 Jul 2018 14:35:06 GMT
VOLUME [/data]
# Fri, 06 Jul 2018 14:35:08 GMT
ADD file:5ffe7502a8e59c1690f1c10bd4f7c3843fa35e03c99223a05215c7b021cec1a1 in /crate/config/crate.yml 
# Fri, 06 Jul 2018 14:35:09 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Fri, 06 Jul 2018 14:35:10 GMT
COPY file:c6f6e45bb8f3e89d4a775eb38302ed557fb3c1d1db73b36eb9c21e4f3771a555 in /docker-entrypoint.sh 
# Fri, 06 Jul 2018 14:35:10 GMT
WORKDIR /data
# Fri, 06 Jul 2018 14:35:11 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Fri, 06 Jul 2018 14:35:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 06 Jul 2018 14:35:13 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d4df806bbcff7011d61f9a3d9b5c48e853a21b6fb33492ca65ed20332682a07`  
		Last Modified: Fri, 06 Jul 2018 14:38:36 GMT  
		Size: 1.8 MB (1814904 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e298188a06272973610923ec188bf67edba443a3ade72188ab970e0377ef83c0`  
		Last Modified: Fri, 06 Jul 2018 14:38:35 GMT  
		Size: 1.2 KB (1204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8998e73a1c114925ecd74c76cbb0ad3d9b5d2a40b57ec68712d550c5e58f79d`  
		Last Modified: Fri, 06 Jul 2018 14:38:45 GMT  
		Size: 126.5 MB (126489970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b561712fb5b0d1cadbe14788f723aab5855a95a0205eb6c9bfedb5c8f7b73baf`  
		Last Modified: Fri, 06 Jul 2018 14:38:32 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0db43b188df8089a46961b9f6fec2f4d3abe676c95806cf859f685a15d715cb9`  
		Last Modified: Fri, 06 Jul 2018 14:38:32 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170b9e1775f6b2684b9eae492dc6bcaf9a69d5b33c26c642932b67c66dfef4be`  
		Last Modified: Fri, 06 Jul 2018 14:38:32 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83e0851668e5c6f99f46b27e73649433bb8c33fd7058f66e63185ce8054087ae`  
		Last Modified: Fri, 06 Jul 2018 14:38:32 GMT  
		Size: 532.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
