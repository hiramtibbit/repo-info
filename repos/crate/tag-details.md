<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `crate`

-	[`crate:2.2`](#crate22)
-	[`crate:2.2.7`](#crate227)
-	[`crate:2.3`](#crate23)
-	[`crate:2.3.11`](#crate2311)
-	[`crate:3.0`](#crate30)
-	[`crate:3.0.7`](#crate307)
-	[`crate:3.1`](#crate31)
-	[`crate:3.1.6`](#crate316)
-	[`crate:3.2`](#crate32)
-	[`crate:3.2.8`](#crate328)
-	[`crate:3.3`](#crate33)
-	[`crate:3.3.3`](#crate333)
-	[`crate:latest`](#cratelatest)

## `crate:2.2`

```console
$ docker pull crate@sha256:3766aff10d3734b6b1eae33c8f5c84624e8537d9ffd256b6354913a3260b6ac4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.2` - linux; amd64

```console
$ docker pull crate@sha256:126a2ff179ce664dffaf13c0b9d296263c111fe4cb19f66e6fdfe9ca259afd93
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129747828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:436afb6f76a8240b00309a071cb7bfae563cc653baf7bfba7c574a1d3421bbec`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 22:36:17 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Thu, 07 Mar 2019 22:36:17 GMT
ENV GOSU_VERSION=1.9
# Thu, 07 Mar 2019 22:36:22 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Thu, 07 Mar 2019 22:36:23 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Thu, 07 Mar 2019 22:37:23 GMT
ENV CRATE_VERSION=2.2.7
# Thu, 07 Mar 2019 22:37:41 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/lib/sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Thu, 07 Mar 2019 22:37:42 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Mar 2019 22:37:42 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 07 Mar 2019 22:37:42 GMT
VOLUME [/data]
# Thu, 07 Mar 2019 22:37:42 GMT
ADD file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Thu, 07 Mar 2019 22:37:42 GMT
ADD file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Thu, 07 Mar 2019 22:37:43 GMT
COPY file:ea98b754ebed5b2e3ef56402a0fb40312373c7a03ee548e02924ff33ed78ba36 in / 
# Thu, 07 Mar 2019 22:37:43 GMT
WORKDIR /data
# Thu, 07 Mar 2019 22:37:43 GMT
EXPOSE 4200 4300 5432
# Thu, 07 Mar 2019 22:37:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Mar 2019 22:37:43 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2e61a39c777e828f0cf631f201ea03a0be46b0b4335685cfb77fb50bc1f5c2`  
		Last Modified: Thu, 07 Mar 2019 22:38:22 GMT  
		Size: 593.4 KB (593426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546ae00c08113574f550b2dae33cf8a92c5e82ca7b831ed94e8cca4538a403d6`  
		Last Modified: Thu, 07 Mar 2019 22:38:22 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820a011bd7a36f5a805411ddbc94c9433bd219bdde320560f3cb0616528b30df`  
		Last Modified: Thu, 07 Mar 2019 22:39:08 GMT  
		Size: 127.0 MB (127044585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54fb83f205e9ee84124fdba5a14f8d02ca63670acb72e2ea827231a82cd38418`  
		Last Modified: Thu, 07 Mar 2019 22:38:55 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2af2b2f23c3f1910ecd93727f04fc54a7d6d5822991a5a2954ab612e67227b0`  
		Last Modified: Thu, 07 Mar 2019 22:38:55 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a6468edc8dbbec6a7534e3bece208c50770fd17163992237c04a33acecd0ac`  
		Last Modified: Thu, 07 Mar 2019 22:38:55 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d61c5ba0a909693f64395ac305d0bab64b9d2d573e7921a1f1923250303701e`  
		Last Modified: Thu, 07 Mar 2019 22:38:55 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.2.7`

```console
$ docker pull crate@sha256:3766aff10d3734b6b1eae33c8f5c84624e8537d9ffd256b6354913a3260b6ac4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.2.7` - linux; amd64

```console
$ docker pull crate@sha256:126a2ff179ce664dffaf13c0b9d296263c111fe4cb19f66e6fdfe9ca259afd93
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **129.7 MB (129747828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:436afb6f76a8240b00309a071cb7bfae563cc653baf7bfba7c574a1d3421bbec`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 22:36:17 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Thu, 07 Mar 2019 22:36:17 GMT
ENV GOSU_VERSION=1.9
# Thu, 07 Mar 2019 22:36:22 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Thu, 07 Mar 2019 22:36:23 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Thu, 07 Mar 2019 22:37:23 GMT
ENV CRATE_VERSION=2.2.7
# Thu, 07 Mar 2019 22:37:41 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         sigar     && apk add --no-cache --virtual .build-deps         curl         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && rm /crate/lib/sigar/libsigar-amd64-linux.so     && apk del .build-deps
# Thu, 07 Mar 2019 22:37:42 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Mar 2019 22:37:42 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 07 Mar 2019 22:37:42 GMT
VOLUME [/data]
# Thu, 07 Mar 2019 22:37:42 GMT
ADD file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Thu, 07 Mar 2019 22:37:42 GMT
ADD file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Thu, 07 Mar 2019 22:37:43 GMT
COPY file:ea98b754ebed5b2e3ef56402a0fb40312373c7a03ee548e02924ff33ed78ba36 in / 
# Thu, 07 Mar 2019 22:37:43 GMT
WORKDIR /data
# Thu, 07 Mar 2019 22:37:43 GMT
EXPOSE 4200 4300 5432
# Thu, 07 Mar 2019 22:37:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Mar 2019 22:37:43 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2e61a39c777e828f0cf631f201ea03a0be46b0b4335685cfb77fb50bc1f5c2`  
		Last Modified: Thu, 07 Mar 2019 22:38:22 GMT  
		Size: 593.4 KB (593426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546ae00c08113574f550b2dae33cf8a92c5e82ca7b831ed94e8cca4538a403d6`  
		Last Modified: Thu, 07 Mar 2019 22:38:22 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:820a011bd7a36f5a805411ddbc94c9433bd219bdde320560f3cb0616528b30df`  
		Last Modified: Thu, 07 Mar 2019 22:39:08 GMT  
		Size: 127.0 MB (127044585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54fb83f205e9ee84124fdba5a14f8d02ca63670acb72e2ea827231a82cd38418`  
		Last Modified: Thu, 07 Mar 2019 22:38:55 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2af2b2f23c3f1910ecd93727f04fc54a7d6d5822991a5a2954ab612e67227b0`  
		Last Modified: Thu, 07 Mar 2019 22:38:55 GMT  
		Size: 933.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9a6468edc8dbbec6a7534e3bece208c50770fd17163992237c04a33acecd0ac`  
		Last Modified: Thu, 07 Mar 2019 22:38:55 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d61c5ba0a909693f64395ac305d0bab64b9d2d573e7921a1f1923250303701e`  
		Last Modified: Thu, 07 Mar 2019 22:38:55 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.3`

```console
$ docker pull crate@sha256:a858981882e9b282eb03c50a89e88908b16edd60ab75e2e541766b09c3c3cdb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.3` - linux; amd64

```console
$ docker pull crate@sha256:0d52d170631f09d4b96c262583c4100b516601b1d7404f4ee308c28723e49910
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130611407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43c1bb940652e94241cdf822433595804d4b6b2e3e6f4e367b530f6f310fcaba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 22:36:17 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Thu, 07 Mar 2019 22:36:17 GMT
ENV GOSU_VERSION=1.9
# Thu, 07 Mar 2019 22:36:22 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Thu, 07 Mar 2019 22:36:23 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Thu, 07 Mar 2019 22:36:55 GMT
ENV CRATE_VERSION=2.3.11
# Thu, 07 Mar 2019 22:37:17 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Thu, 07 Mar 2019 22:37:17 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Mar 2019 22:37:18 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 07 Mar 2019 22:37:18 GMT
HEALTHCHECK &{["CMD-SHELL" "curl $(hostname):4200"] "0s" "0s" "0s" '\x00'}
# Thu, 07 Mar 2019 22:37:18 GMT
VOLUME [/data]
# Thu, 07 Mar 2019 22:37:18 GMT
ADD file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Thu, 07 Mar 2019 22:37:18 GMT
ADD file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Thu, 07 Mar 2019 22:37:19 GMT
COPY file:e6a7b71a02b8bea038a1d23371bfd510dd74404a43443474622b1534a0ea994b in / 
# Thu, 07 Mar 2019 22:37:19 GMT
WORKDIR /data
# Thu, 07 Mar 2019 22:37:19 GMT
EXPOSE 4200 4300 5432
# Thu, 07 Mar 2019 22:37:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Mar 2019 22:37:19 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2e61a39c777e828f0cf631f201ea03a0be46b0b4335685cfb77fb50bc1f5c2`  
		Last Modified: Thu, 07 Mar 2019 22:38:22 GMT  
		Size: 593.4 KB (593426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546ae00c08113574f550b2dae33cf8a92c5e82ca7b831ed94e8cca4538a403d6`  
		Last Modified: Thu, 07 Mar 2019 22:38:22 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c8e14e3f0cf342f5cd90607715a408e46a8ef04e1ae452a9660847db86aa7`  
		Last Modified: Thu, 07 Mar 2019 22:38:51 GMT  
		Size: 127.9 MB (127908034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f251eb834d9514ee1b3472d47f5341942628fcf04ad01c125708f9a946595b`  
		Last Modified: Thu, 07 Mar 2019 22:38:37 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6f631258fb5edb6084033ec3ca2409a985e271e27d07c1a6600e36349cc2e1`  
		Last Modified: Thu, 07 Mar 2019 22:38:38 GMT  
		Size: 934.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9df4fea6e6f794c5cf59dda5c8fd653924f3680e9aa4a590345d91962315d74`  
		Last Modified: Thu, 07 Mar 2019 22:38:37 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94d26e200819fbf3cee920728ba2350bf8fc4a55f788577588b6bc88b55e4f75`  
		Last Modified: Thu, 07 Mar 2019 22:38:38 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:2.3.11`

```console
$ docker pull crate@sha256:a858981882e9b282eb03c50a89e88908b16edd60ab75e2e541766b09c3c3cdb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:2.3.11` - linux; amd64

```console
$ docker pull crate@sha256:0d52d170631f09d4b96c262583c4100b516601b1d7404f4ee308c28723e49910
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130611407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43c1bb940652e94241cdf822433595804d4b6b2e3e6f4e367b530f6f310fcaba`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 22:36:17 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Thu, 07 Mar 2019 22:36:17 GMT
ENV GOSU_VERSION=1.9
# Thu, 07 Mar 2019 22:36:22 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Thu, 07 Mar 2019 22:36:23 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Thu, 07 Mar 2019 22:36:55 GMT
ENV CRATE_VERSION=2.3.11
# Thu, 07 Mar 2019 22:37:17 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Thu, 07 Mar 2019 22:37:17 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Mar 2019 22:37:18 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 07 Mar 2019 22:37:18 GMT
HEALTHCHECK &{["CMD-SHELL" "curl $(hostname):4200"] "0s" "0s" "0s" '\x00'}
# Thu, 07 Mar 2019 22:37:18 GMT
VOLUME [/data]
# Thu, 07 Mar 2019 22:37:18 GMT
ADD file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Thu, 07 Mar 2019 22:37:18 GMT
ADD file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Thu, 07 Mar 2019 22:37:19 GMT
COPY file:e6a7b71a02b8bea038a1d23371bfd510dd74404a43443474622b1534a0ea994b in / 
# Thu, 07 Mar 2019 22:37:19 GMT
WORKDIR /data
# Thu, 07 Mar 2019 22:37:19 GMT
EXPOSE 4200 4300 5432
# Thu, 07 Mar 2019 22:37:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Mar 2019 22:37:19 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2e61a39c777e828f0cf631f201ea03a0be46b0b4335685cfb77fb50bc1f5c2`  
		Last Modified: Thu, 07 Mar 2019 22:38:22 GMT  
		Size: 593.4 KB (593426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546ae00c08113574f550b2dae33cf8a92c5e82ca7b831ed94e8cca4538a403d6`  
		Last Modified: Thu, 07 Mar 2019 22:38:22 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b6c8e14e3f0cf342f5cd90607715a408e46a8ef04e1ae452a9660847db86aa7`  
		Last Modified: Thu, 07 Mar 2019 22:38:51 GMT  
		Size: 127.9 MB (127908034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65f251eb834d9514ee1b3472d47f5341942628fcf04ad01c125708f9a946595b`  
		Last Modified: Thu, 07 Mar 2019 22:38:37 GMT  
		Size: 252.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba6f631258fb5edb6084033ec3ca2409a985e271e27d07c1a6600e36349cc2e1`  
		Last Modified: Thu, 07 Mar 2019 22:38:38 GMT  
		Size: 934.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9df4fea6e6f794c5cf59dda5c8fd653924f3680e9aa4a590345d91962315d74`  
		Last Modified: Thu, 07 Mar 2019 22:38:37 GMT  
		Size: 361.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94d26e200819fbf3cee920728ba2350bf8fc4a55f788577588b6bc88b55e4f75`  
		Last Modified: Thu, 07 Mar 2019 22:38:38 GMT  
		Size: 93.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:3.0`

```console
$ docker pull crate@sha256:715d150780adea772523bbb138263c352c8d04945c9aa32100c323bb09e1d463
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:3.0` - linux; amd64

```console
$ docker pull crate@sha256:06a4ee5bdc836681765242f9cd5fd75dc475bff275ac6923dcf4d57131233cf1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.0 MB (130021510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7218fdd96f30281c98e0060b14b4b75de6ab8fa7ce4555fad3eb12acb51e66d2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 22:36:17 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Thu, 07 Mar 2019 22:36:17 GMT
ENV GOSU_VERSION=1.9
# Thu, 07 Mar 2019 22:36:22 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Thu, 07 Mar 2019 22:36:23 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Thu, 07 Mar 2019 22:36:23 GMT
ENV CRATE_VERSION=3.0.7
# Thu, 07 Mar 2019 22:36:43 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Thu, 07 Mar 2019 22:36:43 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Mar 2019 22:36:44 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 07 Mar 2019 22:36:44 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --fail --max-time 25 $(hostname):4200"] "30s" "30s" "0s" '\x00'}
# Thu, 07 Mar 2019 22:36:45 GMT
RUN mkdir -p /data/data /data/log
# Thu, 07 Mar 2019 22:36:45 GMT
VOLUME [/data]
# Thu, 07 Mar 2019 22:36:45 GMT
ADD file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Thu, 07 Mar 2019 22:36:46 GMT
ADD file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Thu, 07 Mar 2019 22:36:46 GMT
COPY file:a7eedb1118b4d8951c8e0ef42f0961a143eaad99c69b8f07a3f2d8c0d7b82c92 in / 
# Thu, 07 Mar 2019 22:36:46 GMT
WORKDIR /data
# Thu, 07 Mar 2019 22:36:47 GMT
EXPOSE 4200 4300 5432
# Thu, 07 Mar 2019 22:36:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Mar 2019 22:36:47 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2e61a39c777e828f0cf631f201ea03a0be46b0b4335685cfb77fb50bc1f5c2`  
		Last Modified: Thu, 07 Mar 2019 22:38:22 GMT  
		Size: 593.4 KB (593426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546ae00c08113574f550b2dae33cf8a92c5e82ca7b831ed94e8cca4538a403d6`  
		Last Modified: Thu, 07 Mar 2019 22:38:22 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed701f3d63b10bd0dac060b66525eaf3259f3ba20af83d5ebb9024abea5ec2f9`  
		Last Modified: Thu, 07 Mar 2019 22:38:34 GMT  
		Size: 127.3 MB (127317928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c2ad740b63c7f3eea0d7ae5cb9d1ba781e1be33e226919f020923ec061c996`  
		Last Modified: Thu, 07 Mar 2019 22:38:21 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd6fa06a5d60d2ab279c52b855b0d94a2419eafb2b034c7c1bae4e835abe900`  
		Last Modified: Thu, 07 Mar 2019 22:38:21 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec1066850f6889b20b8746700e20ada842ffce536c4dd6529bee5593967836d`  
		Last Modified: Thu, 07 Mar 2019 22:38:21 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2406933fcaae3dbbef9e7d78e46d9302a14f894b10443af5d9d6e5b862d96d1`  
		Last Modified: Thu, 07 Mar 2019 22:38:21 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:3.0.7`

```console
$ docker pull crate@sha256:715d150780adea772523bbb138263c352c8d04945c9aa32100c323bb09e1d463
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:3.0.7` - linux; amd64

```console
$ docker pull crate@sha256:06a4ee5bdc836681765242f9cd5fd75dc475bff275ac6923dcf4d57131233cf1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.0 MB (130021510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7218fdd96f30281c98e0060b14b4b75de6ab8fa7ce4555fad3eb12acb51e66d2`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:53 GMT
ADD file:aa17928040e31624cad9c7ed19ac277c5402c4b9ba39f834250affca40c4046e in / 
# Thu, 07 Mar 2019 22:19:53 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 22:36:17 GMT
MAINTAINER Crate.IO GmbH office@crate.io
# Thu, 07 Mar 2019 22:36:17 GMT
ENV GOSU_VERSION=1.9
# Thu, 07 Mar 2019 22:36:22 GMT
RUN set -x     && apk add --no-cache --virtual .gosu-deps         dpkg         gnupg         curl     && export ARCH=$(echo $(dpkg --print-architecture) | cut -d"-" -f3)     && curl -o /usr/local/bin/gosu -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH"     && curl -o /usr/local/bin/gosu.asc -fSL "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$ARCH.asc"     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4     && gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu     && rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc     && chmod +x /usr/local/bin/gosu     && gosu nobody true     && apk del .gosu-deps
# Thu, 07 Mar 2019 22:36:23 GMT
RUN addgroup crate && adduser -G crate -H crate -D
# Thu, 07 Mar 2019 22:36:23 GMT
ENV CRATE_VERSION=3.0.7
# Thu, 07 Mar 2019 22:36:43 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-$CRATE_VERSION.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-$CRATE_VERSION.tar.gz.asc crate-$CRATE_VERSION.tar.gz     && rm -rf "$GNUPGHOME" crate-$CRATE_VERSION.tar.gz.asc     && mkdir /crate     && tar -xf crate-$CRATE_VERSION.tar.gz -C /crate --strip-components=1     && rm crate-$CRATE_VERSION.tar.gz     && ln -s /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Thu, 07 Mar 2019 22:36:43 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Mar 2019 22:36:44 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 07 Mar 2019 22:36:44 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --fail --max-time 25 $(hostname):4200"] "30s" "30s" "0s" '\x00'}
# Thu, 07 Mar 2019 22:36:45 GMT
RUN mkdir -p /data/data /data/log
# Thu, 07 Mar 2019 22:36:45 GMT
VOLUME [/data]
# Thu, 07 Mar 2019 22:36:45 GMT
ADD file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Thu, 07 Mar 2019 22:36:46 GMT
ADD file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Thu, 07 Mar 2019 22:36:46 GMT
COPY file:a7eedb1118b4d8951c8e0ef42f0961a143eaad99c69b8f07a3f2d8c0d7b82c92 in / 
# Thu, 07 Mar 2019 22:36:46 GMT
WORKDIR /data
# Thu, 07 Mar 2019 22:36:47 GMT
EXPOSE 4200 4300 5432
# Thu, 07 Mar 2019 22:36:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Mar 2019 22:36:47 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:5d20c808ce198565ff70b3ed23a991dd49afac45dece63474b27ce6ed036adc6`  
		Last Modified: Thu, 07 Mar 2019 22:20:24 GMT  
		Size: 2.1 MB (2107098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2e61a39c777e828f0cf631f201ea03a0be46b0b4335685cfb77fb50bc1f5c2`  
		Last Modified: Thu, 07 Mar 2019 22:38:22 GMT  
		Size: 593.4 KB (593426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:546ae00c08113574f550b2dae33cf8a92c5e82ca7b831ed94e8cca4538a403d6`  
		Last Modified: Thu, 07 Mar 2019 22:38:22 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed701f3d63b10bd0dac060b66525eaf3259f3ba20af83d5ebb9024abea5ec2f9`  
		Last Modified: Thu, 07 Mar 2019 22:38:34 GMT  
		Size: 127.3 MB (127317928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0c2ad740b63c7f3eea0d7ae5cb9d1ba781e1be33e226919f020923ec061c996`  
		Last Modified: Thu, 07 Mar 2019 22:38:21 GMT  
		Size: 125.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cd6fa06a5d60d2ab279c52b855b0d94a2419eafb2b034c7c1bae4e835abe900`  
		Last Modified: Thu, 07 Mar 2019 22:38:21 GMT  
		Size: 253.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ec1066850f6889b20b8746700e20ada842ffce536c4dd6529bee5593967836d`  
		Last Modified: Thu, 07 Mar 2019 22:38:21 GMT  
		Size: 936.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2406933fcaae3dbbef9e7d78e46d9302a14f894b10443af5d9d6e5b862d96d1`  
		Last Modified: Thu, 07 Mar 2019 22:38:21 GMT  
		Size: 535.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:3.1`

```console
$ docker pull crate@sha256:ec583333672fe3311b8e16442ab59e5617119269910add132ba680e5198ae9d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `crate:3.1` - linux; amd64

```console
$ docker pull crate@sha256:7bc7260749e92546e307c59fd06356d9311b4065e38f5a2b79b00d190b33e640
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130583146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca53bf614c6766065ca5ca3bd1275754f32097a4155ad68ac1c7a8dae2991d42`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 22:35:49 GMT
RUN addgroup -g 1000 -S crate     && adduser -u 1000 -G crate -h /crate -S crate
# Thu, 07 Mar 2019 22:36:07 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl         coreutils     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.6.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.6.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.1.6.tar.gz.asc crate-3.1.6.tar.gz     && rm -rf "$GNUPGHOME" crate-3.1.6.tar.gz.asc     && tar -xf crate-3.1.6.tar.gz -C /crate --strip-components=1     && rm crate-3.1.6.tar.gz     && ln -sf /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Thu, 07 Mar 2019 22:36:11 GMT
RUN apk add --no-cache --virtual .build-deps         gnupg     && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash     && apk del .build-deps
# Thu, 07 Mar 2019 22:36:11 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Mar 2019 22:36:11 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 07 Mar 2019 22:36:11 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --max-time 25 $(hostname):4200 || exit 1"] "30s" "30s" "0s" '\x00'}
# Thu, 07 Mar 2019 22:36:12 GMT
RUN mkdir -p /data/data /data/log
# Thu, 07 Mar 2019 22:36:12 GMT
VOLUME [/data]
# Thu, 07 Mar 2019 22:36:12 GMT
WORKDIR /data
# Thu, 07 Mar 2019 22:36:13 GMT
EXPOSE 4200 4300 5432
# Thu, 07 Mar 2019 22:36:13 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2019-02-07T11:22:48.301309289+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.1.6
# Thu, 07 Mar 2019 22:36:13 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Thu, 07 Mar 2019 22:36:13 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Thu, 07 Mar 2019 22:36:13 GMT
COPY file:45928eb9f61bad7db8a236ab07cde77661e3e034d86ecfba093f320e019b3ce0 in /docker-entrypoint.sh 
# Thu, 07 Mar 2019 22:36:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Mar 2019 22:36:14 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8967283cac7342cadba13d257c2d1e7108b6ece0f6c21c134d4bc6ce12aa25fa`  
		Last Modified: Thu, 07 Mar 2019 22:38:00 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85853adcfa1bb2986b8cbd5c563eef8d2a475ce5184c5ffe0f0276b0b07fa0bb`  
		Last Modified: Thu, 07 Mar 2019 22:38:13 GMT  
		Size: 126.9 MB (126914995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef84890a8076a6dcc19561d4656b6ef7739356ff80484d3bdd5236db4ecbdc8`  
		Last Modified: Thu, 07 Mar 2019 22:37:59 GMT  
		Size: 1.5 MB (1457853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7744e5827910aac021c964f1209058bc13ce3c7733460986eabf8764d7ed620f`  
		Last Modified: Thu, 07 Mar 2019 22:37:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011393c49c30897d9fcad8cbad6f68c7f89a45f59883bc15923c847cc14e46c3`  
		Last Modified: Thu, 07 Mar 2019 22:37:59 GMT  
		Size: 264.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8c023ac06c1220e7647dd200180764a863c5c366361a5582c72cc088341974d`  
		Last Modified: Thu, 07 Mar 2019 22:37:59 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9bc80a7da5f450e5cd8b45bf599f4e8bb0701446c2f240cba562e7c4b78343`  
		Last Modified: Thu, 07 Mar 2019 22:37:59 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `crate:3.1` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:9dbb47b10b0829a1fa12c85e14fc76cdd4beb1d5c8552ea1eb306460db32b7a5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.2 MB (127198377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:710036258f8c67c0603594f6a553e7ddc860b07ffc39900db6d847192c416951`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:11 GMT
ADD file:bcdcef68213641766a211b02ac762b03c21a178b3ed03c4480cc736abd97b50c in / 
# Fri, 08 Mar 2019 03:37:12 GMT
CMD ["/bin/sh"]
# Wed, 15 May 2019 21:55:00 GMT
RUN addgroup -g 1000 -S crate     && adduser -u 1000 -G crate -h /crate -S crate
# Wed, 15 May 2019 21:55:20 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl         coreutils     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.6.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.6.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.1.6.tar.gz.asc crate-3.1.6.tar.gz     && rm -rf "$GNUPGHOME" crate-3.1.6.tar.gz.asc     && tar -xf crate-3.1.6.tar.gz -C /crate --strip-components=1     && rm crate-3.1.6.tar.gz     && ln -sf /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Wed, 15 May 2019 21:55:27 GMT
RUN apk add --no-cache --virtual .build-deps         gnupg     && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash     && apk del .build-deps
# Wed, 15 May 2019 21:55:28 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 15 May 2019 21:55:28 GMT
ENV CRATE_HEAP_SIZE=512M
# Wed, 15 May 2019 21:55:28 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --max-time 25 $(hostname):4200 || exit 1"] "30s" "30s" "0s" '\x00'}
# Wed, 15 May 2019 21:55:29 GMT
RUN mkdir -p /data/data /data/log
# Wed, 15 May 2019 21:55:30 GMT
VOLUME [/data]
# Wed, 15 May 2019 21:55:30 GMT
WORKDIR /data
# Wed, 15 May 2019 21:55:31 GMT
EXPOSE 4200 4300 5432
# Wed, 15 May 2019 21:55:31 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2019-02-07T11:22:48.301309289+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.1.6
# Wed, 15 May 2019 21:55:31 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Wed, 15 May 2019 21:55:32 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Wed, 15 May 2019 21:55:32 GMT
COPY file:45928eb9f61bad7db8a236ab07cde77661e3e034d86ecfba093f320e019b3ce0 in /docker-entrypoint.sh 
# Wed, 15 May 2019 21:55:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 15 May 2019 21:55:33 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:5011838a0b2d66c2c804ad057403a19bac7e263f0748579857f3ce4c0cbfc08c`  
		Last Modified: Fri, 08 Mar 2019 03:38:05 GMT  
		Size: 2.1 MB (2099962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661266dee8b00b667490d7b80006405851626fb14f9374a616d0adbd232e6779`  
		Last Modified: Wed, 15 May 2019 21:55:43 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a715736b84f2a68a5a5cb419d37717e01f1ef6c2c61f58ade90193e2f1219a0e`  
		Last Modified: Wed, 15 May 2019 21:56:06 GMT  
		Size: 123.6 MB (123638921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf3f338a15a5e5b24b1248de85164fce8561b5f4ef80cb15cda1fa3c13e4334`  
		Last Modified: Wed, 15 May 2019 21:55:42 GMT  
		Size: 1.5 MB (1456309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138dbb057c262a11773a184e225f5fd6a3a4c701b22e9992c5dab6a91ab5e173`  
		Last Modified: Wed, 15 May 2019 21:55:42 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993b217d9818e3a9d545ca284179e880734fefc9bbd21f58cc1cf3c37c7e9a8e`  
		Last Modified: Wed, 15 May 2019 21:55:42 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bfbb80159a08c9ea26731394700bb3da726b34a2994f6958075e0f484d77a8d`  
		Last Modified: Wed, 15 May 2019 21:55:42 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71b2883ef875e5088d12604eb216e449991e761c92466c152660b9eef022b94c`  
		Last Modified: Wed, 15 May 2019 21:55:42 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:3.1.6`

```console
$ docker pull crate@sha256:ec583333672fe3311b8e16442ab59e5617119269910add132ba680e5198ae9d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `crate:3.1.6` - linux; amd64

```console
$ docker pull crate@sha256:7bc7260749e92546e307c59fd06356d9311b4065e38f5a2b79b00d190b33e640
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **130.6 MB (130583146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca53bf614c6766065ca5ca3bd1275754f32097a4155ad68ac1c7a8dae2991d42`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 22:35:49 GMT
RUN addgroup -g 1000 -S crate     && adduser -u 1000 -G crate -h /crate -S crate
# Thu, 07 Mar 2019 22:36:07 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl         coreutils     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.6.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.6.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.1.6.tar.gz.asc crate-3.1.6.tar.gz     && rm -rf "$GNUPGHOME" crate-3.1.6.tar.gz.asc     && tar -xf crate-3.1.6.tar.gz -C /crate --strip-components=1     && rm crate-3.1.6.tar.gz     && ln -sf /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Thu, 07 Mar 2019 22:36:11 GMT
RUN apk add --no-cache --virtual .build-deps         gnupg     && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash     && apk del .build-deps
# Thu, 07 Mar 2019 22:36:11 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Mar 2019 22:36:11 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 07 Mar 2019 22:36:11 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --max-time 25 $(hostname):4200 || exit 1"] "30s" "30s" "0s" '\x00'}
# Thu, 07 Mar 2019 22:36:12 GMT
RUN mkdir -p /data/data /data/log
# Thu, 07 Mar 2019 22:36:12 GMT
VOLUME [/data]
# Thu, 07 Mar 2019 22:36:12 GMT
WORKDIR /data
# Thu, 07 Mar 2019 22:36:13 GMT
EXPOSE 4200 4300 5432
# Thu, 07 Mar 2019 22:36:13 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2019-02-07T11:22:48.301309289+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.1.6
# Thu, 07 Mar 2019 22:36:13 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Thu, 07 Mar 2019 22:36:13 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Thu, 07 Mar 2019 22:36:13 GMT
COPY file:45928eb9f61bad7db8a236ab07cde77661e3e034d86ecfba093f320e019b3ce0 in /docker-entrypoint.sh 
# Thu, 07 Mar 2019 22:36:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 07 Mar 2019 22:36:14 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8967283cac7342cadba13d257c2d1e7108b6ece0f6c21c134d4bc6ce12aa25fa`  
		Last Modified: Thu, 07 Mar 2019 22:38:00 GMT  
		Size: 1.2 KB (1236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85853adcfa1bb2986b8cbd5c563eef8d2a475ce5184c5ffe0f0276b0b07fa0bb`  
		Last Modified: Thu, 07 Mar 2019 22:38:13 GMT  
		Size: 126.9 MB (126914995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ef84890a8076a6dcc19561d4656b6ef7739356ff80484d3bdd5236db4ecbdc8`  
		Last Modified: Thu, 07 Mar 2019 22:37:59 GMT  
		Size: 1.5 MB (1457853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7744e5827910aac021c964f1209058bc13ce3c7733460986eabf8764d7ed620f`  
		Last Modified: Thu, 07 Mar 2019 22:37:59 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:011393c49c30897d9fcad8cbad6f68c7f89a45f59883bc15923c847cc14e46c3`  
		Last Modified: Thu, 07 Mar 2019 22:37:59 GMT  
		Size: 264.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8c023ac06c1220e7647dd200180764a863c5c366361a5582c72cc088341974d`  
		Last Modified: Thu, 07 Mar 2019 22:37:59 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc9bc80a7da5f450e5cd8b45bf599f4e8bb0701446c2f240cba562e7c4b78343`  
		Last Modified: Thu, 07 Mar 2019 22:37:59 GMT  
		Size: 549.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `crate:3.1.6` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:9dbb47b10b0829a1fa12c85e14fc76cdd4beb1d5c8552ea1eb306460db32b7a5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.2 MB (127198377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:710036258f8c67c0603594f6a553e7ddc860b07ffc39900db6d847192c416951`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:11 GMT
ADD file:bcdcef68213641766a211b02ac762b03c21a178b3ed03c4480cc736abd97b50c in / 
# Fri, 08 Mar 2019 03:37:12 GMT
CMD ["/bin/sh"]
# Wed, 15 May 2019 21:55:00 GMT
RUN addgroup -g 1000 -S crate     && adduser -u 1000 -G crate -h /crate -S crate
# Wed, 15 May 2019 21:55:20 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl         coreutils     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.6.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.6.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.1.6.tar.gz.asc crate-3.1.6.tar.gz     && rm -rf "$GNUPGHOME" crate-3.1.6.tar.gz.asc     && tar -xf crate-3.1.6.tar.gz -C /crate --strip-components=1     && rm crate-3.1.6.tar.gz     && ln -sf /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Wed, 15 May 2019 21:55:27 GMT
RUN apk add --no-cache --virtual .build-deps         gnupg     && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash     && apk del .build-deps
# Wed, 15 May 2019 21:55:28 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 15 May 2019 21:55:28 GMT
ENV CRATE_HEAP_SIZE=512M
# Wed, 15 May 2019 21:55:28 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --max-time 25 $(hostname):4200 || exit 1"] "30s" "30s" "0s" '\x00'}
# Wed, 15 May 2019 21:55:29 GMT
RUN mkdir -p /data/data /data/log
# Wed, 15 May 2019 21:55:30 GMT
VOLUME [/data]
# Wed, 15 May 2019 21:55:30 GMT
WORKDIR /data
# Wed, 15 May 2019 21:55:31 GMT
EXPOSE 4200 4300 5432
# Wed, 15 May 2019 21:55:31 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2019-02-07T11:22:48.301309289+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.1.6
# Wed, 15 May 2019 21:55:31 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Wed, 15 May 2019 21:55:32 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Wed, 15 May 2019 21:55:32 GMT
COPY file:45928eb9f61bad7db8a236ab07cde77661e3e034d86ecfba093f320e019b3ce0 in /docker-entrypoint.sh 
# Wed, 15 May 2019 21:55:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 15 May 2019 21:55:33 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:5011838a0b2d66c2c804ad057403a19bac7e263f0748579857f3ce4c0cbfc08c`  
		Last Modified: Fri, 08 Mar 2019 03:38:05 GMT  
		Size: 2.1 MB (2099962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:661266dee8b00b667490d7b80006405851626fb14f9374a616d0adbd232e6779`  
		Last Modified: Wed, 15 May 2019 21:55:43 GMT  
		Size: 1.3 KB (1266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a715736b84f2a68a5a5cb419d37717e01f1ef6c2c61f58ade90193e2f1219a0e`  
		Last Modified: Wed, 15 May 2019 21:56:06 GMT  
		Size: 123.6 MB (123638921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adf3f338a15a5e5b24b1248de85164fce8561b5f4ef80cb15cda1fa3c13e4334`  
		Last Modified: Wed, 15 May 2019 21:55:42 GMT  
		Size: 1.5 MB (1456309 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:138dbb057c262a11773a184e225f5fd6a3a4c701b22e9992c5dab6a91ab5e173`  
		Last Modified: Wed, 15 May 2019 21:55:42 GMT  
		Size: 157.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:993b217d9818e3a9d545ca284179e880734fefc9bbd21f58cc1cf3c37c7e9a8e`  
		Last Modified: Wed, 15 May 2019 21:55:42 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6bfbb80159a08c9ea26731394700bb3da726b34a2994f6958075e0f484d77a8d`  
		Last Modified: Wed, 15 May 2019 21:55:42 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71b2883ef875e5088d12604eb216e449991e761c92466c152660b9eef022b94c`  
		Last Modified: Wed, 15 May 2019 21:55:42 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:3.2`

```console
$ docker pull crate@sha256:7c475eae2bc5aa3035456ce8529e046ebb866a782e51d3e5b197ede0c50569be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:3.2` - linux; amd64

```console
$ docker pull crate@sha256:e856ccefb2d9dff0bf2b9e6b3ade12623edabe5d8326459b33e58c414d5d2887
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.9 MB (343901004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5211e47c5a45885e40cad6e41ed12b14abd2fb1d69778a2c031b263e442e7fc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:11:34 GMT
RUN groupadd crate && useradd -u 1000 -g crate -d /crate crate
# Thu, 14 Mar 2019 22:12:17 GMT
RUN curl --retry 8 -o /openjdk.tar.gz https://download.java.net/java/GA/jdk11/13/GPL/openjdk-11.0.1_linux-x64_bin.tar.gz     && echo "7a6bb980b9c91c478421f865087ad2d69086a0583aeeb9e69204785e8e97dcfd */openjdk.tar.gz" | sha256sum -c -     && tar -C /opt -zxf /openjdk.tar.gz     && rm /openjdk.tar.gz
# Thu, 14 Mar 2019 22:12:18 GMT
ENV JAVA_HOME=/opt/jdk-11.0.1
# Thu, 14 Mar 2019 22:12:18 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts /opt/jdk-11.0.1/lib/security/cacerts
# Tue, 14 May 2019 23:20:06 GMT
RUN yum install -y yum-utils https://centos7.iuscommunity.org/ius-release.rpm     && yum makecache     && yum install -y python36u openssl     && yum clean all     && rm -rf /var/cache/yum     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.2.8.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.2.8.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.2.8.tar.gz.asc crate-3.2.8.tar.gz     && rm -rf "$GNUPGHOME" crate-3.2.8.tar.gz.asc     && tar -xf crate-3.2.8.tar.gz -C /crate --strip-components=1     && rm crate-3.2.8.tar.gz     && ln -sf /usr/bin/python3.6 /usr/bin/python3     && ln -sf /usr/bin/python3.6 /usr/bin/python
# Tue, 14 May 2019 23:20:06 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Tue, 14 May 2019 23:20:06 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Tue, 14 May 2019 23:20:09 GMT
RUN curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash
# Tue, 14 May 2019 23:20:09 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 May 2019 23:20:09 GMT
ENV CRATE_HEAP_SIZE=512M
# Tue, 14 May 2019 23:20:10 GMT
RUN mkdir -p /data/data /data/log
# Tue, 14 May 2019 23:20:10 GMT
VOLUME [/data]
# Tue, 14 May 2019 23:20:10 GMT
WORKDIR /data
# Tue, 14 May 2019 23:20:10 GMT
EXPOSE 4200 4300 5432
# Tue, 14 May 2019 23:20:11 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Tue, 14 May 2019 23:20:11 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Tue, 14 May 2019 23:20:11 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2019-04-16T16:01:11.365468982+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.2.8
# Tue, 14 May 2019 23:20:11 GMT
COPY file:9830363b41b8063591887d9dc9ce2767bf0e91dc4cb05efcb6ea622a60ec15e3 in / 
# Tue, 14 May 2019 23:20:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 May 2019 23:20:11 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a6ddc97e717216c4d09cb226d7c28378812cda87215ea56c16e1af8b56e38e`  
		Last Modified: Thu, 14 Mar 2019 22:13:39 GMT  
		Size: 2.0 KB (2015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1359655471fc316d2654fe88e0ffbd8ad33d956afbd82d89eb5e8bf6cb32a54d`  
		Last Modified: Thu, 14 Mar 2019 22:13:59 GMT  
		Size: 188.1 MB (188101289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5766c8b329a683dcdadf719e0994c62a435da699445e5f734ad0df71bdc399e1`  
		Last Modified: Thu, 14 Mar 2019 22:13:39 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6435ef45a85ee3fcb141f23ff616508bfb62faacc4877152ea9e81d4568312e`  
		Last Modified: Tue, 14 May 2019 23:20:43 GMT  
		Size: 79.1 MB (79096529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153cc691ab1ad13b6800d12530c5030cc3117da849cc37735b0f568dc89d0e3e`  
		Last Modified: Tue, 14 May 2019 23:20:34 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcff5844d00e98d5fb5fd2fe3c00160add7beadf0db21faa36e1208def49527`  
		Last Modified: Tue, 14 May 2019 23:20:34 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c220834b61dce03e4ebba945f70afd713a4df81b5254a755e5a2d4cb5de54eb2`  
		Last Modified: Tue, 14 May 2019 23:20:33 GMT  
		Size: 1.3 MB (1294054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef82a7c52ea74539599c9bd7ec6e8817f9893ebe6d382e282a9a24ada5cb8fc1`  
		Last Modified: Tue, 14 May 2019 23:20:33 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c2872c9beedb658589a9afc480e17276c0e8df025e0b7a09022b99782f0a62`  
		Last Modified: Tue, 14 May 2019 23:20:33 GMT  
		Size: 263.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1565439d65ea87b5f138e1be7186497dcdfc7f75390e811df207b025d03986`  
		Last Modified: Tue, 14 May 2019 23:20:33 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2dc097b3b21e7a673c51b897eb88f2a02fed72f962991cf91ad247c04a777a0`  
		Last Modified: Tue, 14 May 2019 23:20:33 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:3.2.8`

```console
$ docker pull crate@sha256:7c475eae2bc5aa3035456ce8529e046ebb866a782e51d3e5b197ede0c50569be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:3.2.8` - linux; amd64

```console
$ docker pull crate@sha256:e856ccefb2d9dff0bf2b9e6b3ade12623edabe5d8326459b33e58c414d5d2887
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.9 MB (343901004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5211e47c5a45885e40cad6e41ed12b14abd2fb1d69778a2c031b263e442e7fc`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:11:34 GMT
RUN groupadd crate && useradd -u 1000 -g crate -d /crate crate
# Thu, 14 Mar 2019 22:12:17 GMT
RUN curl --retry 8 -o /openjdk.tar.gz https://download.java.net/java/GA/jdk11/13/GPL/openjdk-11.0.1_linux-x64_bin.tar.gz     && echo "7a6bb980b9c91c478421f865087ad2d69086a0583aeeb9e69204785e8e97dcfd */openjdk.tar.gz" | sha256sum -c -     && tar -C /opt -zxf /openjdk.tar.gz     && rm /openjdk.tar.gz
# Thu, 14 Mar 2019 22:12:18 GMT
ENV JAVA_HOME=/opt/jdk-11.0.1
# Thu, 14 Mar 2019 22:12:18 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts /opt/jdk-11.0.1/lib/security/cacerts
# Tue, 14 May 2019 23:20:06 GMT
RUN yum install -y yum-utils https://centos7.iuscommunity.org/ius-release.rpm     && yum makecache     && yum install -y python36u openssl     && yum clean all     && rm -rf /var/cache/yum     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.2.8.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.2.8.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.2.8.tar.gz.asc crate-3.2.8.tar.gz     && rm -rf "$GNUPGHOME" crate-3.2.8.tar.gz.asc     && tar -xf crate-3.2.8.tar.gz -C /crate --strip-components=1     && rm crate-3.2.8.tar.gz     && ln -sf /usr/bin/python3.6 /usr/bin/python3     && ln -sf /usr/bin/python3.6 /usr/bin/python
# Tue, 14 May 2019 23:20:06 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Tue, 14 May 2019 23:20:06 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Tue, 14 May 2019 23:20:09 GMT
RUN curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash
# Tue, 14 May 2019 23:20:09 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 May 2019 23:20:09 GMT
ENV CRATE_HEAP_SIZE=512M
# Tue, 14 May 2019 23:20:10 GMT
RUN mkdir -p /data/data /data/log
# Tue, 14 May 2019 23:20:10 GMT
VOLUME [/data]
# Tue, 14 May 2019 23:20:10 GMT
WORKDIR /data
# Tue, 14 May 2019 23:20:10 GMT
EXPOSE 4200 4300 5432
# Tue, 14 May 2019 23:20:11 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Tue, 14 May 2019 23:20:11 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Tue, 14 May 2019 23:20:11 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2019-04-16T16:01:11.365468982+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.2.8
# Tue, 14 May 2019 23:20:11 GMT
COPY file:9830363b41b8063591887d9dc9ce2767bf0e91dc4cb05efcb6ea622a60ec15e3 in / 
# Tue, 14 May 2019 23:20:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 14 May 2019 23:20:11 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a6ddc97e717216c4d09cb226d7c28378812cda87215ea56c16e1af8b56e38e`  
		Last Modified: Thu, 14 Mar 2019 22:13:39 GMT  
		Size: 2.0 KB (2015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1359655471fc316d2654fe88e0ffbd8ad33d956afbd82d89eb5e8bf6cb32a54d`  
		Last Modified: Thu, 14 Mar 2019 22:13:59 GMT  
		Size: 188.1 MB (188101289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5766c8b329a683dcdadf719e0994c62a435da699445e5f734ad0df71bdc399e1`  
		Last Modified: Thu, 14 Mar 2019 22:13:39 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6435ef45a85ee3fcb141f23ff616508bfb62faacc4877152ea9e81d4568312e`  
		Last Modified: Tue, 14 May 2019 23:20:43 GMT  
		Size: 79.1 MB (79096529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:153cc691ab1ad13b6800d12530c5030cc3117da849cc37735b0f568dc89d0e3e`  
		Last Modified: Tue, 14 May 2019 23:20:34 GMT  
		Size: 262.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fcff5844d00e98d5fb5fd2fe3c00160add7beadf0db21faa36e1208def49527`  
		Last Modified: Tue, 14 May 2019 23:20:34 GMT  
		Size: 943.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c220834b61dce03e4ebba945f70afd713a4df81b5254a755e5a2d4cb5de54eb2`  
		Last Modified: Tue, 14 May 2019 23:20:33 GMT  
		Size: 1.3 MB (1294054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef82a7c52ea74539599c9bd7ec6e8817f9893ebe6d382e282a9a24ada5cb8fc1`  
		Last Modified: Tue, 14 May 2019 23:20:33 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c2872c9beedb658589a9afc480e17276c0e8df025e0b7a09022b99782f0a62`  
		Last Modified: Tue, 14 May 2019 23:20:33 GMT  
		Size: 263.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f1565439d65ea87b5f138e1be7186497dcdfc7f75390e811df207b025d03986`  
		Last Modified: Tue, 14 May 2019 23:20:33 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2dc097b3b21e7a673c51b897eb88f2a02fed72f962991cf91ad247c04a777a0`  
		Last Modified: Tue, 14 May 2019 23:20:33 GMT  
		Size: 529.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:3.3`

```console
$ docker pull crate@sha256:750c50b85f0e9e67ea54594044c85ba5107cc457412cea361cf20a5fe000bd3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:3.3` - linux; amd64

```console
$ docker pull crate@sha256:fb2c16570d7785103b3d13ef5a10bbbc5b4746525ad303b505f427c7aab5a34c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.8 MB (343799768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84016f89bc83ee98ae06f2bc0d04f7096abe4bf3bd503a1f9751027254e99347`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:11:34 GMT
RUN groupadd crate && useradd -u 1000 -g crate -d /crate crate
# Thu, 14 Mar 2019 22:12:17 GMT
RUN curl --retry 8 -o /openjdk.tar.gz https://download.java.net/java/GA/jdk11/13/GPL/openjdk-11.0.1_linux-x64_bin.tar.gz     && echo "7a6bb980b9c91c478421f865087ad2d69086a0583aeeb9e69204785e8e97dcfd */openjdk.tar.gz" | sha256sum -c -     && tar -C /opt -zxf /openjdk.tar.gz     && rm /openjdk.tar.gz
# Thu, 14 Mar 2019 22:12:18 GMT
ENV JAVA_HOME=/opt/jdk-11.0.1
# Thu, 14 Mar 2019 22:12:18 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts /opt/jdk-11.0.1/lib/security/cacerts
# Tue, 28 May 2019 22:19:59 GMT
RUN yum install -y yum-utils https://centos7.iuscommunity.org/ius-release.rpm     && yum makecache     && yum install -y python36u openssl     && yum clean all     && rm -rf /var/cache/yum     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.3.3.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.3.3.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.3.3.tar.gz.asc crate-3.3.3.tar.gz     && rm -rf "$GNUPGHOME" crate-3.3.3.tar.gz.asc     && tar -xf crate-3.3.3.tar.gz -C /crate --strip-components=1     && rm crate-3.3.3.tar.gz     && ln -sf /usr/bin/python3.6 /usr/bin/python3     && ln -sf /usr/bin/python3.6 /usr/bin/python
# Tue, 28 May 2019 22:20:02 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Tue, 28 May 2019 22:20:02 GMT
COPY --chown=1000:0file:5f0d1b776d3a6517508a00a88f8053bd0933a642599374c9dff00dc3b632fd09 in /crate/config/log4j2.properties 
# Tue, 28 May 2019 22:20:04 GMT
RUN curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash
# Tue, 28 May 2019 22:20:04 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 May 2019 22:20:04 GMT
ENV CRATE_HEAP_SIZE=512M
# Tue, 28 May 2019 22:20:05 GMT
RUN mkdir -p /data/data /data/log
# Tue, 28 May 2019 22:20:05 GMT
VOLUME [/data]
# Tue, 28 May 2019 22:20:05 GMT
WORKDIR /data
# Tue, 28 May 2019 22:20:05 GMT
EXPOSE 4200 4300 5432
# Tue, 28 May 2019 22:20:06 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Tue, 28 May 2019 22:20:06 GMT
COPY --chown=1000:0file:5f0d1b776d3a6517508a00a88f8053bd0933a642599374c9dff00dc3b632fd09 in /crate/config/log4j2.properties 
# Tue, 28 May 2019 22:20:06 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2019-05-23T12:13:14.395117312+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.3.3
# Tue, 28 May 2019 22:20:06 GMT
COPY file:9830363b41b8063591887d9dc9ce2767bf0e91dc4cb05efcb6ea622a60ec15e3 in / 
# Tue, 28 May 2019 22:20:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 May 2019 22:20:07 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a6ddc97e717216c4d09cb226d7c28378812cda87215ea56c16e1af8b56e38e`  
		Last Modified: Thu, 14 Mar 2019 22:13:39 GMT  
		Size: 2.0 KB (2015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1359655471fc316d2654fe88e0ffbd8ad33d956afbd82d89eb5e8bf6cb32a54d`  
		Last Modified: Thu, 14 Mar 2019 22:13:59 GMT  
		Size: 188.1 MB (188101289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5766c8b329a683dcdadf719e0994c62a435da699445e5f734ad0df71bdc399e1`  
		Last Modified: Thu, 14 Mar 2019 22:13:39 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c4feec9d37b2d32837d2819df1991ae60c62f0a196b453a49ee785b2f4471a`  
		Last Modified: Tue, 28 May 2019 22:20:37 GMT  
		Size: 79.0 MB (78995270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152634989adcb88fd031beaa7faed201b80374b7bc531a2f1547507b05dd0d2c`  
		Last Modified: Tue, 28 May 2019 22:20:29 GMT  
		Size: 265.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04782039476bf7a53891eed7e01d44612b5e523a935191486ae4106417a90ca`  
		Last Modified: Tue, 28 May 2019 22:20:29 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ff93884fba2944c92c8dfab8122c999642c3fd69fa8fd7a158ad684f0aaa14`  
		Last Modified: Tue, 28 May 2019 22:20:29 GMT  
		Size: 1.3 MB (1294046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b526805d8310addeef79624ecec5e271f67c3bde277a88c1594c6fdd26ea075`  
		Last Modified: Tue, 28 May 2019 22:20:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1280c8f4f0d473649eb00ee069734cf4adc5f6f49ca937ea890c5e19e109192`  
		Last Modified: Tue, 28 May 2019 22:20:28 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c279cc6fa7a50a2858dfbd28a1efe567297c19e191a76bfa75edd223a4044934`  
		Last Modified: Tue, 28 May 2019 22:20:28 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f42b631301542a1b1acce4fd561bb94540c1263526ee3405ce9c54d035ec53`  
		Last Modified: Tue, 28 May 2019 22:20:28 GMT  
		Size: 527.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:3.3.3`

```console
$ docker pull crate@sha256:750c50b85f0e9e67ea54594044c85ba5107cc457412cea361cf20a5fe000bd3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:3.3.3` - linux; amd64

```console
$ docker pull crate@sha256:fb2c16570d7785103b3d13ef5a10bbbc5b4746525ad303b505f427c7aab5a34c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.8 MB (343799768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84016f89bc83ee98ae06f2bc0d04f7096abe4bf3bd503a1f9751027254e99347`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:11:34 GMT
RUN groupadd crate && useradd -u 1000 -g crate -d /crate crate
# Thu, 14 Mar 2019 22:12:17 GMT
RUN curl --retry 8 -o /openjdk.tar.gz https://download.java.net/java/GA/jdk11/13/GPL/openjdk-11.0.1_linux-x64_bin.tar.gz     && echo "7a6bb980b9c91c478421f865087ad2d69086a0583aeeb9e69204785e8e97dcfd */openjdk.tar.gz" | sha256sum -c -     && tar -C /opt -zxf /openjdk.tar.gz     && rm /openjdk.tar.gz
# Thu, 14 Mar 2019 22:12:18 GMT
ENV JAVA_HOME=/opt/jdk-11.0.1
# Thu, 14 Mar 2019 22:12:18 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts /opt/jdk-11.0.1/lib/security/cacerts
# Tue, 28 May 2019 22:19:59 GMT
RUN yum install -y yum-utils https://centos7.iuscommunity.org/ius-release.rpm     && yum makecache     && yum install -y python36u openssl     && yum clean all     && rm -rf /var/cache/yum     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.3.3.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.3.3.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.3.3.tar.gz.asc crate-3.3.3.tar.gz     && rm -rf "$GNUPGHOME" crate-3.3.3.tar.gz.asc     && tar -xf crate-3.3.3.tar.gz -C /crate --strip-components=1     && rm crate-3.3.3.tar.gz     && ln -sf /usr/bin/python3.6 /usr/bin/python3     && ln -sf /usr/bin/python3.6 /usr/bin/python
# Tue, 28 May 2019 22:20:02 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Tue, 28 May 2019 22:20:02 GMT
COPY --chown=1000:0file:5f0d1b776d3a6517508a00a88f8053bd0933a642599374c9dff00dc3b632fd09 in /crate/config/log4j2.properties 
# Tue, 28 May 2019 22:20:04 GMT
RUN curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash
# Tue, 28 May 2019 22:20:04 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 May 2019 22:20:04 GMT
ENV CRATE_HEAP_SIZE=512M
# Tue, 28 May 2019 22:20:05 GMT
RUN mkdir -p /data/data /data/log
# Tue, 28 May 2019 22:20:05 GMT
VOLUME [/data]
# Tue, 28 May 2019 22:20:05 GMT
WORKDIR /data
# Tue, 28 May 2019 22:20:05 GMT
EXPOSE 4200 4300 5432
# Tue, 28 May 2019 22:20:06 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Tue, 28 May 2019 22:20:06 GMT
COPY --chown=1000:0file:5f0d1b776d3a6517508a00a88f8053bd0933a642599374c9dff00dc3b632fd09 in /crate/config/log4j2.properties 
# Tue, 28 May 2019 22:20:06 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2019-05-23T12:13:14.395117312+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.3.3
# Tue, 28 May 2019 22:20:06 GMT
COPY file:9830363b41b8063591887d9dc9ce2767bf0e91dc4cb05efcb6ea622a60ec15e3 in / 
# Tue, 28 May 2019 22:20:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 May 2019 22:20:07 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a6ddc97e717216c4d09cb226d7c28378812cda87215ea56c16e1af8b56e38e`  
		Last Modified: Thu, 14 Mar 2019 22:13:39 GMT  
		Size: 2.0 KB (2015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1359655471fc316d2654fe88e0ffbd8ad33d956afbd82d89eb5e8bf6cb32a54d`  
		Last Modified: Thu, 14 Mar 2019 22:13:59 GMT  
		Size: 188.1 MB (188101289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5766c8b329a683dcdadf719e0994c62a435da699445e5f734ad0df71bdc399e1`  
		Last Modified: Thu, 14 Mar 2019 22:13:39 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c4feec9d37b2d32837d2819df1991ae60c62f0a196b453a49ee785b2f4471a`  
		Last Modified: Tue, 28 May 2019 22:20:37 GMT  
		Size: 79.0 MB (78995270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152634989adcb88fd031beaa7faed201b80374b7bc531a2f1547507b05dd0d2c`  
		Last Modified: Tue, 28 May 2019 22:20:29 GMT  
		Size: 265.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04782039476bf7a53891eed7e01d44612b5e523a935191486ae4106417a90ca`  
		Last Modified: Tue, 28 May 2019 22:20:29 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ff93884fba2944c92c8dfab8122c999642c3fd69fa8fd7a158ad684f0aaa14`  
		Last Modified: Tue, 28 May 2019 22:20:29 GMT  
		Size: 1.3 MB (1294046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b526805d8310addeef79624ecec5e271f67c3bde277a88c1594c6fdd26ea075`  
		Last Modified: Tue, 28 May 2019 22:20:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1280c8f4f0d473649eb00ee069734cf4adc5f6f49ca937ea890c5e19e109192`  
		Last Modified: Tue, 28 May 2019 22:20:28 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c279cc6fa7a50a2858dfbd28a1efe567297c19e191a76bfa75edd223a4044934`  
		Last Modified: Tue, 28 May 2019 22:20:28 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f42b631301542a1b1acce4fd561bb94540c1263526ee3405ce9c54d035ec53`  
		Last Modified: Tue, 28 May 2019 22:20:28 GMT  
		Size: 527.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:latest`

```console
$ docker pull crate@sha256:9067f6bc104173fdb0a93ae6a87ad7b36f648310e3e3ba9cc3f824393a26ad2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `crate:latest` - linux; amd64

```console
$ docker pull crate@sha256:fb2c16570d7785103b3d13ef5a10bbbc5b4746525ad303b505f427c7aab5a34c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.8 MB (343799768 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84016f89bc83ee98ae06f2bc0d04f7096abe4bf3bd503a1f9751027254e99347`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Thu, 14 Mar 2019 21:19:52 GMT
ADD file:074f2c974463ab38cf3532134e8ba2c91c9e346457713f2e8b8e2ac0ee9fd83d in / 
# Thu, 14 Mar 2019 21:19:53 GMT
LABEL org.label-schema.schema-version=1.0 org.label-schema.name=CentOS Base Image org.label-schema.vendor=CentOS org.label-schema.license=GPLv2 org.label-schema.build-date=20190305
# Thu, 14 Mar 2019 21:19:53 GMT
CMD ["/bin/bash"]
# Thu, 14 Mar 2019 22:11:34 GMT
RUN groupadd crate && useradd -u 1000 -g crate -d /crate crate
# Thu, 14 Mar 2019 22:12:17 GMT
RUN curl --retry 8 -o /openjdk.tar.gz https://download.java.net/java/GA/jdk11/13/GPL/openjdk-11.0.1_linux-x64_bin.tar.gz     && echo "7a6bb980b9c91c478421f865087ad2d69086a0583aeeb9e69204785e8e97dcfd */openjdk.tar.gz" | sha256sum -c -     && tar -C /opt -zxf /openjdk.tar.gz     && rm /openjdk.tar.gz
# Thu, 14 Mar 2019 22:12:18 GMT
ENV JAVA_HOME=/opt/jdk-11.0.1
# Thu, 14 Mar 2019 22:12:18 GMT
RUN ln -sf /etc/pki/ca-trust/extracted/java/cacerts /opt/jdk-11.0.1/lib/security/cacerts
# Tue, 28 May 2019 22:19:59 GMT
RUN yum install -y yum-utils https://centos7.iuscommunity.org/ius-release.rpm     && yum makecache     && yum install -y python36u openssl     && yum clean all     && rm -rf /var/cache/yum     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.3.3.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.3.3.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.3.3.tar.gz.asc crate-3.3.3.tar.gz     && rm -rf "$GNUPGHOME" crate-3.3.3.tar.gz.asc     && tar -xf crate-3.3.3.tar.gz -C /crate --strip-components=1     && rm crate-3.3.3.tar.gz     && ln -sf /usr/bin/python3.6 /usr/bin/python3     && ln -sf /usr/bin/python3.6 /usr/bin/python
# Tue, 28 May 2019 22:20:02 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Tue, 28 May 2019 22:20:02 GMT
COPY --chown=1000:0file:5f0d1b776d3a6517508a00a88f8053bd0933a642599374c9dff00dc3b632fd09 in /crate/config/log4j2.properties 
# Tue, 28 May 2019 22:20:04 GMT
RUN curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash
# Tue, 28 May 2019 22:20:04 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 28 May 2019 22:20:04 GMT
ENV CRATE_HEAP_SIZE=512M
# Tue, 28 May 2019 22:20:05 GMT
RUN mkdir -p /data/data /data/log
# Tue, 28 May 2019 22:20:05 GMT
VOLUME [/data]
# Tue, 28 May 2019 22:20:05 GMT
WORKDIR /data
# Tue, 28 May 2019 22:20:05 GMT
EXPOSE 4200 4300 5432
# Tue, 28 May 2019 22:20:06 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Tue, 28 May 2019 22:20:06 GMT
COPY --chown=1000:0file:5f0d1b776d3a6517508a00a88f8053bd0933a642599374c9dff00dc3b632fd09 in /crate/config/log4j2.properties 
# Tue, 28 May 2019 22:20:06 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2019-05-23T12:13:14.395117312+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.3.3
# Tue, 28 May 2019 22:20:06 GMT
COPY file:9830363b41b8063591887d9dc9ce2767bf0e91dc4cb05efcb6ea622a60ec15e3 in / 
# Tue, 28 May 2019 22:20:06 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 28 May 2019 22:20:07 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:8ba884070f611d31cb2c42eddb691319dc9facf5e0ec67672fcfa135181ab3df`  
		Last Modified: Thu, 14 Mar 2019 21:24:11 GMT  
		Size: 75.4 MB (75403831 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3a6ddc97e717216c4d09cb226d7c28378812cda87215ea56c16e1af8b56e38e`  
		Last Modified: Thu, 14 Mar 2019 22:13:39 GMT  
		Size: 2.0 KB (2015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1359655471fc316d2654fe88e0ffbd8ad33d956afbd82d89eb5e8bf6cb32a54d`  
		Last Modified: Thu, 14 Mar 2019 22:13:59 GMT  
		Size: 188.1 MB (188101289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5766c8b329a683dcdadf719e0994c62a435da699445e5f734ad0df71bdc399e1`  
		Last Modified: Thu, 14 Mar 2019 22:13:39 GMT  
		Size: 218.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85c4feec9d37b2d32837d2819df1991ae60c62f0a196b453a49ee785b2f4471a`  
		Last Modified: Tue, 28 May 2019 22:20:37 GMT  
		Size: 79.0 MB (78995270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152634989adcb88fd031beaa7faed201b80374b7bc531a2f1547507b05dd0d2c`  
		Last Modified: Tue, 28 May 2019 22:20:29 GMT  
		Size: 265.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e04782039476bf7a53891eed7e01d44612b5e523a935191486ae4106417a90ca`  
		Last Modified: Tue, 28 May 2019 22:20:29 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ff93884fba2944c92c8dfab8122c999642c3fd69fa8fd7a158ad684f0aaa14`  
		Last Modified: Tue, 28 May 2019 22:20:29 GMT  
		Size: 1.3 MB (1294046 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b526805d8310addeef79624ecec5e271f67c3bde277a88c1594c6fdd26ea075`  
		Last Modified: Tue, 28 May 2019 22:20:28 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1280c8f4f0d473649eb00ee069734cf4adc5f6f49ca937ea890c5e19e109192`  
		Last Modified: Tue, 28 May 2019 22:20:28 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c279cc6fa7a50a2858dfbd28a1efe567297c19e191a76bfa75edd223a4044934`  
		Last Modified: Tue, 28 May 2019 22:20:28 GMT  
		Size: 957.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79f42b631301542a1b1acce4fd561bb94540c1263526ee3405ce9c54d035ec53`  
		Last Modified: Tue, 28 May 2019 22:20:28 GMT  
		Size: 527.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `crate:latest` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:db0c912f2ffb291abdf1b8ac7032599f0a3d98e1f05af9834b8395666dd5a9b3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128570784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f194b7a8010074bbd1dea99993ec8e283b3283be7a20122711e3152938467d0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 13:40:52 GMT
RUN addgroup -g 1000 -S crate     && adduser -u 1000 -G crate -h /crate -S crate
# Fri, 25 Jan 2019 09:53:30 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl         coreutils     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.5.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.5.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.1.5.tar.gz.asc crate-3.1.5.tar.gz     && rm -rf "$GNUPGHOME" crate-3.1.5.tar.gz.asc     && tar -xf crate-3.1.5.tar.gz -C /crate --strip-components=1     && rm crate-3.1.5.tar.gz     && ln -sf /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Fri, 25 Jan 2019 09:53:43 GMT
RUN apk add --no-cache --virtual .build-deps         gnupg     && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash     && apk del .build-deps
# Fri, 25 Jan 2019 09:53:45 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Jan 2019 09:53:47 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 25 Jan 2019 09:53:50 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --max-time 25 $(hostname):4200 || exit 1"] "30s" "30s" "0s" '\x00'}
# Fri, 25 Jan 2019 09:53:57 GMT
RUN mkdir -p /data/data /data/log
# Fri, 25 Jan 2019 09:53:58 GMT
VOLUME [/data]
# Fri, 25 Jan 2019 09:54:01 GMT
WORKDIR /data
# Fri, 25 Jan 2019 09:54:03 GMT
EXPOSE 4200 4300 5432
# Fri, 25 Jan 2019 09:54:05 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2019-01-22T17:02:01.628483081+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.1.5
# Fri, 25 Jan 2019 09:54:06 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Fri, 25 Jan 2019 09:54:08 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Fri, 25 Jan 2019 09:54:08 GMT
COPY file:45928eb9f61bad7db8a236ab07cde77661e3e034d86ecfba093f320e019b3ce0 in /docker-entrypoint.sh 
# Fri, 25 Jan 2019 09:54:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 25 Jan 2019 09:54:13 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:e3c488b39803d9194cf010f6127b1121d5387b90a1562d44b50b749d0e7a69bf`  
		Last Modified: Fri, 21 Dec 2018 09:43:51 GMT  
		Size: 2.1 MB (2099839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a63128803b1ea223f87244cb8d3faa97817f6cf3ca8249e485430218758510`  
		Last Modified: Fri, 21 Dec 2018 09:43:50 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3cf6e4828a3e9f80bfa761b39062e4481c11b4a610152a814acd32573231fa99`  
		Last Modified: Fri, 21 Dec 2018 13:42:11 GMT  
		Size: 1.2 KB (1230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c0e67bbf3f48cc5272f52f25ca390d32d7129326881f72227fa77c036063c0d`  
		Last Modified: Fri, 25 Jan 2019 09:55:07 GMT  
		Size: 125.0 MB (125011209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b7f21460e9575c38dc2e949517a38a8879a2cd80160ec7ab0c0bd58aed14fc0`  
		Last Modified: Fri, 25 Jan 2019 09:54:36 GMT  
		Size: 1.5 MB (1456441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da11ea425af1731ea21a870fa115175477cae145c8ade3c1daaf9e87bf216f13`  
		Last Modified: Fri, 25 Jan 2019 09:54:36 GMT  
		Size: 126.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e901e4006cebfb1689df93628a914d428008bc5a4998a3794fcb564853083d3`  
		Last Modified: Fri, 25 Jan 2019 09:54:36 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6aff0b367ba9ee7651f99121048f8d6d970a02d5634af435b7e1cd68f238c6c6`  
		Last Modified: Fri, 25 Jan 2019 09:54:36 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a0c2d26d4648beea5d96e217db832b78f33579544be71ffe03f3dfbe30f6fe4`  
		Last Modified: Fri, 25 Jan 2019 09:54:36 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
