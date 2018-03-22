## `crate:latest`

```console
$ docker pull crate@sha256:3f81301c3815ad46d5300eda4945dab71d286b8da20d3999f7a3890e8277efe5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:latest` - linux; amd64

```console
$ docker pull crate@sha256:732d220696e9a224092d090d8f70ee0cd57071a8ad7436140e0a5f6811b6a49c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129681773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a028b692295d7024dc6a0f46256e229a02f6c86ef00ce4af9dd1a583518b7d1`
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
# Thu, 22 Mar 2018 18:06:58 GMT
ENV CRATE_VERSION=2.3.5
# Thu, 22 Mar 2018 18:07:28 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Thu, 22 Mar 2018 18:07:29 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 22 Mar 2018 18:07:29 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 22 Mar 2018 18:07:29 GMT
HEALTHCHECK &{["CMD-SHELL" "curl $(hostname):4200"] "0s" "0s" "0s" '\x00'}
# Thu, 22 Mar 2018 18:07:30 GMT
VOLUME [/data]
# Thu, 22 Mar 2018 18:07:30 GMT
ADD file:5ffe7502a8e59c1690f1c10bd4f7c3843fa35e03c99223a05215c7b021cec1a1 in /crate/config/crate.yml 
# Thu, 22 Mar 2018 18:07:30 GMT
ADD file:10c08bc017b942a11ef7f1221f33b8224b4549e98c74b9f84e2495fcfb60d8ce in /crate/config/log4j2.properties 
# Thu, 22 Mar 2018 18:07:31 GMT
COPY file:2e96d63ad898925a7e7d49d4440efe616689a56ac5b315dc06aa1bf54f1c2e08 in / 
# Thu, 22 Mar 2018 18:07:31 GMT
WORKDIR /data
# Thu, 22 Mar 2018 18:07:31 GMT
EXPOSE 4200/tcp 4300/tcp 5432/tcp
# Thu, 22 Mar 2018 18:07:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 22 Mar 2018 18:07:32 GMT
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
	-	`sha256:2a957830286a1287902c0068984bdaf96828114e8d24a50d13df706a92cfc435`  
		Last Modified: Thu, 22 Mar 2018 18:12:35 GMT  
		Size: 127.0 MB (127020260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcfcd5f872f059c7bf9f80302a8c4ddad17def1531c4a27a33ed2e088d16a47e`  
		Last Modified: Thu, 22 Mar 2018 18:12:19 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d61496422f4d73399319ccc350643d89c6e233f0edbfe91fbe22dc8128e9d0`  
		Last Modified: Thu, 22 Mar 2018 18:12:19 GMT  
		Size: 935.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ee9d09f4f7d517df753658cd01c5605c85d12cb13b8f4708f18ceba4e749834`  
		Last Modified: Thu, 22 Mar 2018 18:12:19 GMT  
		Size: 362.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1e1456a014e1565d95222db207f7449935c8449a61cfc4687d6302432590cf1`  
		Last Modified: Thu, 22 Mar 2018 18:12:19 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
