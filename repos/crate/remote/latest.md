## `crate:latest`

```console
$ docker pull crate@sha256:48b49d927e37f8ed83e8364fb659f34839d0d009415468f303fb0ba4db8f8ebb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:latest` - linux; amd64

```console
$ docker pull crate@sha256:96d6669bba16aa5516b9b61581e8850ce963eb49260e3c681d394d903be1407a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.2 MB (131170027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83c6ed3f9d43169ab6ce4d1aaebdfba1147bca6b566f885de3136f7939b4c851`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Mon, 10 Sep 2018 20:19:46 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Mon, 10 Sep 2018 20:19:46 GMT
ENV GOSU_VERSION=1.9
# Mon, 10 Sep 2018 20:19:51 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Mon, 10 Sep 2018 20:19:51 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Mon, 10 Sep 2018 20:19:51 GMT
ENV CRATE_VERSION=3.0.6
# Mon, 10 Sep 2018 20:20:11 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Mon, 10 Sep 2018 20:20:11 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 10 Sep 2018 20:20:11 GMT
ENV CRATE_HEAP_SIZE=512M
# Mon, 10 Sep 2018 20:20:12 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --fail --max-time 25 $(hostname):4200"] "30s" "30s" "0s" '\x00'}
# Mon, 10 Sep 2018 20:20:12 GMT
RUN mkdir -p /data/data /data/log
# Mon, 10 Sep 2018 20:20:13 GMT
VOLUME [/data]
# Mon, 10 Sep 2018 20:20:13 GMT
ADD file:5ffe7502a8e59c1690f1c10bd4f7c3843fa35e03c99223a05215c7b021cec1a1 in /crate/config/crate.yml 
# Mon, 10 Sep 2018 20:20:13 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Mon, 10 Sep 2018 20:20:14 GMT
COPY file:c6f6e45bb8f3e89d4a775eb38302ed557fb3c1d1db73b36eb9c21e4f3771a555 in /docker-entrypoint.sh 
# Mon, 10 Sep 2018 20:20:14 GMT
WORKDIR /data
# Mon, 10 Sep 2018 20:20:14 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Mon, 10 Sep 2018 20:20:15 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 10 Sep 2018 20:20:15 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:228d63e73fc15813217ee2c44e5bcb45e7945ffdc84a936d0a3d2e540c0f4f70`  
		Last Modified: Mon, 10 Sep 2018 20:23:02 GMT  
		Size: 1.8 MB (1815634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80255143a316fe9757ffe00ec06564ce979dfbb8ea2593b53fba2bdc083db86e`  
		Last Modified: Mon, 10 Sep 2018 20:23:01 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7912b723e7dbf5ccb8f4ee759aadfbd9971636fde751d1f5b3f703baae80ce72`  
		Last Modified: Mon, 10 Sep 2018 20:23:17 GMT  
		Size: 127.2 MB (127247790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:105e09b80bda4995bc2147b2809821c3d86093711cc6b8614aabbe6f2a9a8fbc`  
		Last Modified: Mon, 10 Sep 2018 20:23:00 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec983dfc24943d791e1580e0c29ed807b774edd6bbc18c6adc256cf77b50fe2`  
		Last Modified: Mon, 10 Sep 2018 20:23:01 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a983462c7a628e890b108c17cb9d2e6d2a0481b859682db2f748884291521685`  
		Last Modified: Mon, 10 Sep 2018 20:23:00 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:985920e40d9ebe6b3e01c0d2dc1f44bff593a8b7f2ec81061f127c86b1cc27d2`  
		Last Modified: Mon, 10 Sep 2018 20:23:00 GMT  
		Size: 534.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
