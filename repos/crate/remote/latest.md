## `crate:latest`

```console
$ docker pull crate@sha256:380040490a30d68a45afbc063b29340ef88dfda3bcd545a029a0ae6caa59ba71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:latest` - linux; amd64

```console
$ docker pull crate@sha256:1393543043d0ff67904dd3f9cd7bc670e05df26ecb634a7f2284d5c7134ce369
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129664102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:026d02147ca658587d5d96e8f56a2501aabd8df3cf3a34080c40c5134ef70d6f`
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
# Thu, 17 May 2018 18:19:38 GMT
ENV CRATE_VERSION=2.3.9
# Thu, 17 May 2018 18:20:02 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Thu, 17 May 2018 18:20:02 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 May 2018 18:20:02 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 17 May 2018 18:20:02 GMT
HEALTHCHECK &{["CMD-SHELL" "curl $(hostname):4200"] "0s" "0s" "0s" '\x00'}
# Thu, 17 May 2018 18:20:03 GMT
VOLUME [/data]
# Thu, 17 May 2018 18:20:03 GMT
ADD file:5ffe7502a8e59c1690f1c10bd4f7c3843fa35e03c99223a05215c7b021cec1a1 in /crate/config/crate.yml 
# Thu, 17 May 2018 18:20:03 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Thu, 17 May 2018 18:20:04 GMT
COPY file:2e96d63ad898925a7e7d49d4440efe616689a56ac5b315dc06aa1bf54f1c2e08 in / 
# Thu, 17 May 2018 18:20:04 GMT
WORKDIR /data
# Thu, 17 May 2018 18:20:04 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Thu, 17 May 2018 18:20:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 17 May 2018 18:20:04 GMT
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
	-	`sha256:7a3c1c4f66e82a1fc41ab191810e8ea7698dffb040cf99d291f3318ce62cce0f`  
		Last Modified: Thu, 17 May 2018 18:20:30 GMT  
		Size: 127.0 MB (127002587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b789270a0097e79ea97cf76247015f525965af07ca2f3320d36a1465fc26bec`  
		Last Modified: Thu, 17 May 2018 18:20:18 GMT  
		Size: 254.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1395230cf8075046a562ac74e50b1470b671127cbfa51eec1d8fec4e0ac4355a`  
		Last Modified: Thu, 17 May 2018 18:20:18 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b47dd88c3d87a14871b2ba71b6fd57dcb53cdc1b4ad42870f9b734881fc648`  
		Last Modified: Thu, 17 May 2018 18:20:18 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:989b2e002177c3a6b898225d1a14a1e8ffec729465293dac87be35b779fd434b`  
		Last Modified: Thu, 17 May 2018 18:20:18 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
