## `crate:latest`

```console
$ docker pull crate@sha256:97eeb9e414abbeb21ecb9f831ba9488f1995a081ad96bc6ff2f5a821d29d51da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `crate:latest` - linux; amd64

```console
$ docker pull crate@sha256:de205c4fae991de8588b6d8ffe859382fbc902a40e8934e856f79385320aca8d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.5 MB (130536907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:011e111d656cf60fd41749f7f7baee91abaae8025156dd4330a3663d8efa31bf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Fri, 14 Dec 2018 18:19:25 GMT
RUN addgroup -g 1000 -S crate     && adduser -u 1000 -G crate -h /crate -S crate
# Fri, 14 Dec 2018 18:19:45 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl         coreutils     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.3.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.3.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.1.3.tar.gz.asc crate-3.1.3.tar.gz     && rm -rf "$GNUPGHOME" crate-3.1.3.tar.gz.asc     && tar -xf crate-3.1.3.tar.gz -C /crate --strip-components=1     && rm crate-3.1.3.tar.gz     && ln -sf /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Fri, 14 Dec 2018 18:19:50 GMT
RUN apk add --no-cache --virtual .build-deps         gnupg     && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash     && apk del .build-deps
# Fri, 14 Dec 2018 18:19:50 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 14 Dec 2018 18:19:50 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 14 Dec 2018 18:19:50 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --max-time 25 $(hostname):4200 || exit 1"] "30s" "30s" "0s" '\x00'}
# Fri, 14 Dec 2018 18:19:51 GMT
RUN mkdir -p /data/data /data/log
# Fri, 14 Dec 2018 18:19:51 GMT
VOLUME [/data]
# Fri, 14 Dec 2018 18:19:52 GMT
WORKDIR /data
# Fri, 14 Dec 2018 18:19:52 GMT
EXPOSE 4200 4300 5432
# Fri, 14 Dec 2018 18:19:52 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2018-12-06T23:39:49.888248104+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.1.3
# Fri, 14 Dec 2018 18:19:52 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Fri, 14 Dec 2018 18:19:52 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Fri, 14 Dec 2018 18:19:52 GMT
COPY file:dcdba4de3b5ee86e3ed391c361c223b50022f9865a89a53d53f5c45521bd6989 in / 
# Fri, 14 Dec 2018 18:19:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 14 Dec 2018 18:19:53 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2fa2aebfc583d590aab480446de1cc1b0e687f08c1d6a1e0a7e479d6fe281c0`  
		Last Modified: Fri, 14 Dec 2018 18:20:27 GMT  
		Size: 1.2 KB (1229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6386a492d80fdf529b42f9b1b47ebc20cd99add8855fa34df35d6d4fb6bbd3ea`  
		Last Modified: Fri, 14 Dec 2018 18:20:41 GMT  
		Size: 126.9 MB (126868996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82fbb6748470d2d4265caec1d0af60ea30f03a7918e869d068c1471dc8fa1533`  
		Last Modified: Fri, 14 Dec 2018 18:20:27 GMT  
		Size: 1.5 MB (1457863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d58e12d8cb857fb0f4f3cd84054bc1aa461eed72254482bb3868a4ced85ebf6c`  
		Last Modified: Fri, 14 Dec 2018 18:20:26 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be5aa1680e85936e70d191acc4d9c28f4c2803c37680e96c230195adc9ab84b7`  
		Last Modified: Fri, 14 Dec 2018 18:20:26 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8880a2a301ba9f04f5ac405eec0010f2e164e9be245d75f4e034b5ed588254db`  
		Last Modified: Fri, 14 Dec 2018 18:20:27 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3e233b7d9490744f3cc5f4c811cda1aca0a197e77a82de1f7b746c49af31f2b`  
		Last Modified: Fri, 14 Dec 2018 18:20:27 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `crate:latest` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:53f7da1d4d4fe1a4a4958aeec78548776278bf24cfae4c1cc1171f2502503547
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.5 MB (128515398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:978517c3c5f9c5375858b0f4b820b9628ae992fd821755f40c0a6be66b406d5b`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Tue, 18 Dec 2018 09:40:49 GMT
RUN addgroup -g 1000 -S crate     && adduser -u 1000 -G crate -h /crate -S crate
# Tue, 18 Dec 2018 09:41:17 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl         coreutils     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.3.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.3.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.1.3.tar.gz.asc crate-3.1.3.tar.gz     && rm -rf "$GNUPGHOME" crate-3.1.3.tar.gz.asc     && tar -xf crate-3.1.3.tar.gz -C /crate --strip-components=1     && rm crate-3.1.3.tar.gz     && ln -sf /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Tue, 18 Dec 2018 09:41:25 GMT
RUN apk add --no-cache --virtual .build-deps         gnupg     && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash     && apk del .build-deps
# Tue, 18 Dec 2018 09:41:26 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Dec 2018 09:41:27 GMT
ENV CRATE_HEAP_SIZE=512M
# Tue, 18 Dec 2018 09:41:28 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --max-time 25 $(hostname):4200 || exit 1"] "30s" "30s" "0s" '\x00'}
# Tue, 18 Dec 2018 09:41:30 GMT
RUN mkdir -p /data/data /data/log
# Tue, 18 Dec 2018 09:41:31 GMT
VOLUME [/data]
# Tue, 18 Dec 2018 09:41:31 GMT
WORKDIR /data
# Tue, 18 Dec 2018 09:41:32 GMT
EXPOSE 4200 4300 5432
# Tue, 18 Dec 2018 09:41:33 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2018-12-06T23:39:49.888248104+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.1.3
# Tue, 18 Dec 2018 09:41:33 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Tue, 18 Dec 2018 09:41:34 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Tue, 18 Dec 2018 09:41:35 GMT
COPY file:dcdba4de3b5ee86e3ed391c361c223b50022f9865a89a53d53f5c45521bd6989 in / 
# Tue, 18 Dec 2018 09:41:35 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 18 Dec 2018 09:41:36 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccf8cc670f3463e16e85a99b2bd9232b33111c7c97b74f945ba85e22718ce00c`  
		Last Modified: Tue, 18 Dec 2018 09:41:57 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f2643cefb17ec2a2038da517f1a13516f2af4607df3f7d0f3dc152e2208880e`  
		Last Modified: Tue, 18 Dec 2018 09:42:23 GMT  
		Size: 125.0 MB (124955909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c65585b8a10f105479de9cc59a11790b44a49597fda9ee310c71f43152bb7d96`  
		Last Modified: Tue, 18 Dec 2018 09:41:57 GMT  
		Size: 1.5 MB (1456431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4326a42c4096bf6697fbfd50f6a4dac457080cad1677558ce70e651cdb51eec`  
		Last Modified: Tue, 18 Dec 2018 09:41:57 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6990b2deb40e5376f668ee954d1222a7d5e3a51ed0bbd60b581a3a14b16cd03f`  
		Last Modified: Tue, 18 Dec 2018 09:41:56 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da326e53186938fafac0f4671c6006dc94314edd19e82333f060fc7663a9a8b8`  
		Last Modified: Tue, 18 Dec 2018 09:41:55 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6381cf6496522512df8645113aa035bd0cb1ce03c68b8418de0f5af7b3508dc2`  
		Last Modified: Tue, 18 Dec 2018 09:41:55 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
