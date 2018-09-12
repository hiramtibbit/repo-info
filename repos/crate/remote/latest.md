## `crate:latest`

```console
$ docker pull crate@sha256:9b6a58d95941320cc9a0378434ee4d5ee2f16a0932d1687b01f1eb0e0335239a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:latest` - linux; amd64

```console
$ docker pull crate@sha256:309c83eba6b89de2fd9d95f269569a7b3b4dc9ababc0333efdc4e82cd646aac2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.0 MB (129951294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c351e99a8b995d01639489e647266a18ae711ad6bfc09f79cf19d75cc1a07a86`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:46:57 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Tue, 11 Sep 2018 22:46:57 GMT
ENV GOSU_VERSION=1.9
# Tue, 11 Sep 2018 22:47:01 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Tue, 11 Sep 2018 22:47:05 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Tue, 11 Sep 2018 22:47:06 GMT
ENV CRATE_VERSION=3.0.6
# Tue, 11 Sep 2018 22:47:16 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Tue, 11 Sep 2018 22:47:16 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Sep 2018 22:47:16 GMT
ENV CRATE_HEAP_SIZE=512M
# Tue, 11 Sep 2018 22:47:17 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --fail --max-time 25 $(hostname):4200"] "30s" "30s" "0s" '\x00'}
# Tue, 11 Sep 2018 22:47:17 GMT
RUN mkdir -p /data/data /data/log
# Tue, 11 Sep 2018 22:47:17 GMT
VOLUME [/data]
# Tue, 11 Sep 2018 22:47:18 GMT
ADD file:5ffe7502a8e59c1690f1c10bd4f7c3843fa35e03c99223a05215c7b021cec1a1 in /crate/config/crate.yml 
# Tue, 11 Sep 2018 22:47:18 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Tue, 11 Sep 2018 22:47:19 GMT
COPY file:c6f6e45bb8f3e89d4a775eb38302ed557fb3c1d1db73b36eb9c21e4f3771a555 in /docker-entrypoint.sh 
# Tue, 11 Sep 2018 22:47:19 GMT
WORKDIR /data
# Tue, 11 Sep 2018 22:47:19 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Tue, 11 Sep 2018 22:47:20 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 11 Sep 2018 22:47:20 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1151b8f33c3f69a31caa82008fd08a66d46721d663753d985b2a8119590e68bf`  
		Last Modified: Tue, 11 Sep 2018 22:49:55 GMT  
		Size: 593.4 KB (593423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80620c5354abd5bda7d597223d14f4a5a87e4f239c643013bc595bd5f96cbca6`  
		Last Modified: Tue, 11 Sep 2018 22:49:56 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4809c9ee5c11fd384fcebc3a78541b2fce0735694d9e805507a49def91e9d86e`  
		Last Modified: Tue, 11 Sep 2018 22:50:08 GMT  
		Size: 127.2 MB (127247645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d64e93763963660bfb417e4d0a85252f0409c5e1d55ef43fc1e6f040b82c7a25`  
		Last Modified: Tue, 11 Sep 2018 22:49:54 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e8acb9c53a795108cc0482cb3b8f37455bf0ca7851b40c8172a0272c2ab4800`  
		Last Modified: Tue, 11 Sep 2018 22:49:54 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7168fbba35fcc18d4ab9a66ede740707078894c949b323b9e645f39a944d0066`  
		Last Modified: Tue, 11 Sep 2018 22:49:54 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2e31b570d70447744c36eb3ffeb19a3e45863ad3bc7a71899fa5f6b6f7ac64d`  
		Last Modified: Tue, 11 Sep 2018 22:49:53 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
