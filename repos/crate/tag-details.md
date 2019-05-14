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
-	[`crate:3.3.2`](#crate332)
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
$ docker pull crate@sha256:e58f167bd2a66d4d3c891889c9442a11e899851f6a4dbaa1de1e037c99d9b6f7
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
$ docker pull crate@sha256:f0fd191fae9d9c38c17913ea34e436f41195a3559118acb3c7ca4616c131f395
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128560280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:629b3f173f07c2c430005e263eb0df114dca789fdc61cae2750d84b052b8ba2c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:11 GMT
ADD file:bcdcef68213641766a211b02ac762b03c21a178b3ed03c4480cc736abd97b50c in / 
# Fri, 08 Mar 2019 03:37:12 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 09:45:20 GMT
RUN addgroup -g 1000 -S crate     && adduser -u 1000 -G crate -h /crate -S crate
# Fri, 08 Mar 2019 09:46:05 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl         coreutils     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.6.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.6.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.1.6.tar.gz.asc crate-3.1.6.tar.gz     && rm -rf "$GNUPGHOME" crate-3.1.6.tar.gz.asc     && tar -xf crate-3.1.6.tar.gz -C /crate --strip-components=1     && rm crate-3.1.6.tar.gz     && ln -sf /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Fri, 08 Mar 2019 09:46:13 GMT
RUN apk add --no-cache --virtual .build-deps         gnupg     && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash     && apk del .build-deps
# Fri, 08 Mar 2019 09:46:14 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Mar 2019 09:46:16 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 08 Mar 2019 09:46:17 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --max-time 25 $(hostname):4200 || exit 1"] "30s" "30s" "0s" '\x00'}
# Fri, 08 Mar 2019 09:46:21 GMT
RUN mkdir -p /data/data /data/log
# Fri, 08 Mar 2019 09:46:22 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 09:46:23 GMT
WORKDIR /data
# Fri, 08 Mar 2019 09:46:24 GMT
EXPOSE 4200 4300 5432
# Fri, 08 Mar 2019 09:46:26 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2019-02-07T11:22:48.301309289+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.1.6
# Fri, 08 Mar 2019 09:46:27 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Fri, 08 Mar 2019 09:46:28 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Fri, 08 Mar 2019 09:46:29 GMT
COPY file:45928eb9f61bad7db8a236ab07cde77661e3e034d86ecfba093f320e019b3ce0 in /docker-entrypoint.sh 
# Fri, 08 Mar 2019 09:46:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 09:46:32 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:5011838a0b2d66c2c804ad057403a19bac7e263f0748579857f3ce4c0cbfc08c`  
		Last Modified: Fri, 08 Mar 2019 03:38:05 GMT  
		Size: 2.1 MB (2099962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc733351a98a9ed2d981f802b71aa6fd00caacfcfef46cc4ac3c86b53d43b45`  
		Last Modified: Fri, 08 Mar 2019 09:46:54 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3600bcbd683ca8c57660d2fe42da69f3c04fa38d61a83fe5ef1a0654ed6a5366`  
		Last Modified: Fri, 08 Mar 2019 09:47:42 GMT  
		Size: 125.0 MB (125000772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b201e2eaacb4b1411e052ee3ad0a2b244dcf53f80ec4629519546082466e72`  
		Last Modified: Fri, 08 Mar 2019 09:46:52 GMT  
		Size: 1.5 MB (1456421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9470eb44cdd4e903932e6f1f0a96accf0fdc3f09ccbbcab215e56280dc364c5`  
		Last Modified: Fri, 08 Mar 2019 09:46:51 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf32811aaee06e4c6a9ac457948526b2dd59facfcbe3d3f69370eeccd20a62ea`  
		Last Modified: Fri, 08 Mar 2019 09:46:51 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69050343c48fe31bd35ab8f8735dacc04fc6d7951bec31e1501768a5661699e3`  
		Last Modified: Fri, 08 Mar 2019 09:46:51 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec77914d636b8b94ea8f22adc7de12c71ece6bd0257c778b254ddf141fa6ffb5`  
		Last Modified: Fri, 08 Mar 2019 09:46:51 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:3.1.6`

```console
$ docker pull crate@sha256:e58f167bd2a66d4d3c891889c9442a11e899851f6a4dbaa1de1e037c99d9b6f7
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
$ docker pull crate@sha256:f0fd191fae9d9c38c17913ea34e436f41195a3559118acb3c7ca4616c131f395
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.6 MB (128560280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:629b3f173f07c2c430005e263eb0df114dca789fdc61cae2750d84b052b8ba2c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:11 GMT
ADD file:bcdcef68213641766a211b02ac762b03c21a178b3ed03c4480cc736abd97b50c in / 
# Fri, 08 Mar 2019 03:37:12 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 09:45:20 GMT
RUN addgroup -g 1000 -S crate     && adduser -u 1000 -G crate -h /crate -S crate
# Fri, 08 Mar 2019 09:46:05 GMT
RUN apk add --no-cache --virtual .crate-rundeps         openjdk8-jre-base         python3         openssl         curl         coreutils     && apk add --no-cache --virtual .build-deps         gnupg         tar     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.6.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.1.6.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.1.6.tar.gz.asc crate-3.1.6.tar.gz     && rm -rf "$GNUPGHOME" crate-3.1.6.tar.gz.asc     && tar -xf crate-3.1.6.tar.gz -C /crate --strip-components=1     && rm crate-3.1.6.tar.gz     && ln -sf /usr/bin/python3 /usr/bin/python     && apk del .build-deps
# Fri, 08 Mar 2019 09:46:13 GMT
RUN apk add --no-cache --virtual .build-deps         gnupg     && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash     && apk del .build-deps
# Fri, 08 Mar 2019 09:46:14 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Mar 2019 09:46:16 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 08 Mar 2019 09:46:17 GMT
HEALTHCHECK &{["CMD-SHELL" "curl --max-time 25 $(hostname):4200 || exit 1"] "30s" "30s" "0s" '\x00'}
# Fri, 08 Mar 2019 09:46:21 GMT
RUN mkdir -p /data/data /data/log
# Fri, 08 Mar 2019 09:46:22 GMT
VOLUME [/data]
# Fri, 08 Mar 2019 09:46:23 GMT
WORKDIR /data
# Fri, 08 Mar 2019 09:46:24 GMT
EXPOSE 4200 4300 5432
# Fri, 08 Mar 2019 09:46:26 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2019-02-07T11:22:48.301309289+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.1.6
# Fri, 08 Mar 2019 09:46:27 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Fri, 08 Mar 2019 09:46:28 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Fri, 08 Mar 2019 09:46:29 GMT
COPY file:45928eb9f61bad7db8a236ab07cde77661e3e034d86ecfba093f320e019b3ce0 in /docker-entrypoint.sh 
# Fri, 08 Mar 2019 09:46:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 08 Mar 2019 09:46:32 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:5011838a0b2d66c2c804ad057403a19bac7e263f0748579857f3ce4c0cbfc08c`  
		Last Modified: Fri, 08 Mar 2019 03:38:05 GMT  
		Size: 2.1 MB (2099962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbc733351a98a9ed2d981f802b71aa6fd00caacfcfef46cc4ac3c86b53d43b45`  
		Last Modified: Fri, 08 Mar 2019 09:46:54 GMT  
		Size: 1.2 KB (1238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3600bcbd683ca8c57660d2fe42da69f3c04fa38d61a83fe5ef1a0654ed6a5366`  
		Last Modified: Fri, 08 Mar 2019 09:47:42 GMT  
		Size: 125.0 MB (125000772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30b201e2eaacb4b1411e052ee3ad0a2b244dcf53f80ec4629519546082466e72`  
		Last Modified: Fri, 08 Mar 2019 09:46:52 GMT  
		Size: 1.5 MB (1456421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9470eb44cdd4e903932e6f1f0a96accf0fdc3f09ccbbcab215e56280dc364c5`  
		Last Modified: Fri, 08 Mar 2019 09:46:51 GMT  
		Size: 124.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf32811aaee06e4c6a9ac457948526b2dd59facfcbe3d3f69370eeccd20a62ea`  
		Last Modified: Fri, 08 Mar 2019 09:46:51 GMT  
		Size: 267.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69050343c48fe31bd35ab8f8735dacc04fc6d7951bec31e1501768a5661699e3`  
		Last Modified: Fri, 08 Mar 2019 09:46:51 GMT  
		Size: 948.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec77914d636b8b94ea8f22adc7de12c71ece6bd0257c778b254ddf141fa6ffb5`  
		Last Modified: Fri, 08 Mar 2019 09:46:51 GMT  
		Size: 548.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:3.2`

```console
$ docker pull crate@sha256:2fc0ffd89ad408acf190cd34861e4eea0254adec065cf6f98a437aa957133cb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:3.2` - linux; amd64

```console
$ docker pull crate@sha256:ac509e19743628d5a35f0c736aa2ba423e420155b4581b8983301d2d0276290c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.9 MB (343889145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:851d5aa296300e09f2ca5c1beda579299bdf1caabfcb7025c7808d5d1a48453a`
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
# Fri, 12 Apr 2019 22:26:29 GMT
RUN yum install -y yum-utils https://centos7.iuscommunity.org/ius-release.rpm     && yum makecache     && yum install -y python36u openssl     && yum clean all     && rm -rf /var/cache/yum     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.2.7.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.2.7.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.2.7.tar.gz.asc crate-3.2.7.tar.gz     && rm -rf "$GNUPGHOME" crate-3.2.7.tar.gz.asc     && tar -xf crate-3.2.7.tar.gz -C /crate --strip-components=1     && rm crate-3.2.7.tar.gz     && ln -sf /usr/bin/python3.6 /usr/bin/python3     && ln -sf /usr/bin/python3.6 /usr/bin/python
# Fri, 12 Apr 2019 22:26:30 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Fri, 12 Apr 2019 22:26:30 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Fri, 12 Apr 2019 22:26:33 GMT
RUN curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash
# Fri, 12 Apr 2019 22:26:34 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 12 Apr 2019 22:26:35 GMT
ENV CRATE_HEAP_SIZE=512M
# Fri, 12 Apr 2019 22:26:35 GMT
RUN mkdir -p /data/data /data/log
# Fri, 12 Apr 2019 22:26:35 GMT
VOLUME [/data]
# Fri, 12 Apr 2019 22:26:36 GMT
WORKDIR /data
# Fri, 12 Apr 2019 22:26:36 GMT
EXPOSE 4200 4300 5432
# Fri, 12 Apr 2019 22:26:36 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Fri, 12 Apr 2019 22:26:36 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Fri, 12 Apr 2019 22:26:37 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2019-04-09T14:51:03.875528243+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.2.7
# Fri, 12 Apr 2019 22:26:37 GMT
COPY file:9830363b41b8063591887d9dc9ce2767bf0e91dc4cb05efcb6ea622a60ec15e3 in / 
# Fri, 12 Apr 2019 22:26:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 12 Apr 2019 22:26:37 GMT
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
	-	`sha256:a2568d7bb517e63faa727f122656cdd3ba28be46a1218e2814ed86774a955169`  
		Last Modified: Fri, 12 Apr 2019 22:27:15 GMT  
		Size: 79.1 MB (79084660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9ce73e69e7c4764dbbc1493929dd534a568c8b760d02977a441e2f7303f53a`  
		Last Modified: Fri, 12 Apr 2019 22:27:04 GMT  
		Size: 265.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8d16f2d93eac85d8d9c24b4cde6d677b8932c5c91ac6d88933b79940b49472b`  
		Last Modified: Fri, 12 Apr 2019 22:27:04 GMT  
		Size: 945.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2e2f6a56a8e3c81fd3e46e5c03be87458a3fcab69fab517b799577ea32516508`  
		Last Modified: Fri, 12 Apr 2019 22:27:04 GMT  
		Size: 1.3 MB (1294055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:544407dca2e0b42b945d2c27604b057b69d0f43016db51b15ccd6ab699fa4ad2`  
		Last Modified: Fri, 12 Apr 2019 22:27:03 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ecc3eca458ca76495323886b0a1de366d64efcabac6087016d8d4b724d55329`  
		Last Modified: Fri, 12 Apr 2019 22:27:03 GMT  
		Size: 266.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf9dfc6f55622053381b81529feff1c8293da6aedbf71e388906b62e8c232ee8`  
		Last Modified: Fri, 12 Apr 2019 22:27:04 GMT  
		Size: 946.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f6c3a3e7c71b6d77f5f226ea49063d9025878383d6da102205f414cb2e144b0`  
		Last Modified: Fri, 12 Apr 2019 22:27:04 GMT  
		Size: 528.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:3.2.8`

**does not exist** (yet?)

## `crate:3.3`

```console
$ docker pull crate@sha256:cdb7159a93cf69ccb9ce175b1d44f417ff28280ef4fcb14501aa55945e807865
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:3.3` - linux; amd64

```console
$ docker pull crate@sha256:60986d10f53740dcab3e15a1a5e79680b8cebf3edd489ea397cb6cc6abca885a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.8 MB (343750826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c0582e5af4129c78da4941e7a672a45142dfcc2d6c06039dec30894a26d5006`
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
# Thu, 25 Apr 2019 23:20:11 GMT
RUN yum install -y yum-utils https://centos7.iuscommunity.org/ius-release.rpm     && yum makecache     && yum install -y python36u openssl     && yum clean all     && rm -rf /var/cache/yum     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.3.2.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.3.2.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.3.2.tar.gz.asc crate-3.3.2.tar.gz     && rm -rf "$GNUPGHOME" crate-3.3.2.tar.gz.asc     && tar -xf crate-3.3.2.tar.gz -C /crate --strip-components=1     && rm crate-3.3.2.tar.gz     && ln -sf /usr/bin/python3.6 /usr/bin/python3     && ln -sf /usr/bin/python3.6 /usr/bin/python
# Thu, 25 Apr 2019 23:20:11 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Thu, 25 Apr 2019 23:20:12 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Thu, 25 Apr 2019 23:20:15 GMT
RUN curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash
# Thu, 25 Apr 2019 23:20:15 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 25 Apr 2019 23:20:15 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 25 Apr 2019 23:20:16 GMT
RUN mkdir -p /data/data /data/log
# Thu, 25 Apr 2019 23:20:16 GMT
VOLUME [/data]
# Thu, 25 Apr 2019 23:20:16 GMT
WORKDIR /data
# Thu, 25 Apr 2019 23:20:16 GMT
EXPOSE 4200 4300 5432
# Thu, 25 Apr 2019 23:20:17 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Thu, 25 Apr 2019 23:20:17 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Thu, 25 Apr 2019 23:20:17 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2019-04-18T12:45:50.167245069+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.3.2
# Thu, 25 Apr 2019 23:20:18 GMT
COPY file:9830363b41b8063591887d9dc9ce2767bf0e91dc4cb05efcb6ea622a60ec15e3 in / 
# Thu, 25 Apr 2019 23:20:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Apr 2019 23:20:19 GMT
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
	-	`sha256:2918992776b541c0ed2d288981c9bb49d98191ed9386067988b79fb182870341`  
		Last Modified: Thu, 25 Apr 2019 23:20:51 GMT  
		Size: 78.9 MB (78946350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c00086f9a8ee8e4583f85d5812ffc4dec0eb6311b48a024319004519c07ffb4`  
		Last Modified: Thu, 25 Apr 2019 23:20:42 GMT  
		Size: 263.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7966c3643cadc9809d90c1e1e6e1e1869fee70428aac7780144858238de8d310`  
		Last Modified: Thu, 25 Apr 2019 23:20:42 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514f47bdd3d4c3037c293b9c40243d5ebde7896f26aabcd637d7e9a3f0328c21`  
		Last Modified: Thu, 25 Apr 2019 23:20:43 GMT  
		Size: 1.3 MB (1294054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994032c6f51fba27c5f63b244002c5dc2a3c8a0c2576104c038ee9187438c13e`  
		Last Modified: Thu, 25 Apr 2019 23:20:41 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a5f22f79bf971d73a0f01e5b1d013ffef67236c4ee7ae400732f580506725b9`  
		Last Modified: Thu, 25 Apr 2019 23:20:41 GMT  
		Size: 264.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3486ff89aeeef3cb0e3efc21374348cb3ca0be3a13a13f34c6c813aaf3dbb799`  
		Last Modified: Thu, 25 Apr 2019 23:20:41 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:936adeb2f1260d61d2bb18193f9bc9aef8c61322fa62faf9c9a489c136aa606b`  
		Last Modified: Thu, 25 Apr 2019 23:20:41 GMT  
		Size: 527.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:3.3.2`

```console
$ docker pull crate@sha256:cdb7159a93cf69ccb9ce175b1d44f417ff28280ef4fcb14501aa55945e807865
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `crate:3.3.2` - linux; amd64

```console
$ docker pull crate@sha256:60986d10f53740dcab3e15a1a5e79680b8cebf3edd489ea397cb6cc6abca885a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.8 MB (343750826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c0582e5af4129c78da4941e7a672a45142dfcc2d6c06039dec30894a26d5006`
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
# Thu, 25 Apr 2019 23:20:11 GMT
RUN yum install -y yum-utils https://centos7.iuscommunity.org/ius-release.rpm     && yum makecache     && yum install -y python36u openssl     && yum clean all     && rm -rf /var/cache/yum     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.3.2.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.3.2.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.3.2.tar.gz.asc crate-3.3.2.tar.gz     && rm -rf "$GNUPGHOME" crate-3.3.2.tar.gz.asc     && tar -xf crate-3.3.2.tar.gz -C /crate --strip-components=1     && rm crate-3.3.2.tar.gz     && ln -sf /usr/bin/python3.6 /usr/bin/python3     && ln -sf /usr/bin/python3.6 /usr/bin/python
# Thu, 25 Apr 2019 23:20:11 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Thu, 25 Apr 2019 23:20:12 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Thu, 25 Apr 2019 23:20:15 GMT
RUN curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash
# Thu, 25 Apr 2019 23:20:15 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 25 Apr 2019 23:20:15 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 25 Apr 2019 23:20:16 GMT
RUN mkdir -p /data/data /data/log
# Thu, 25 Apr 2019 23:20:16 GMT
VOLUME [/data]
# Thu, 25 Apr 2019 23:20:16 GMT
WORKDIR /data
# Thu, 25 Apr 2019 23:20:16 GMT
EXPOSE 4200 4300 5432
# Thu, 25 Apr 2019 23:20:17 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Thu, 25 Apr 2019 23:20:17 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Thu, 25 Apr 2019 23:20:17 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2019-04-18T12:45:50.167245069+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.3.2
# Thu, 25 Apr 2019 23:20:18 GMT
COPY file:9830363b41b8063591887d9dc9ce2767bf0e91dc4cb05efcb6ea622a60ec15e3 in / 
# Thu, 25 Apr 2019 23:20:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Apr 2019 23:20:19 GMT
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
	-	`sha256:2918992776b541c0ed2d288981c9bb49d98191ed9386067988b79fb182870341`  
		Last Modified: Thu, 25 Apr 2019 23:20:51 GMT  
		Size: 78.9 MB (78946350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c00086f9a8ee8e4583f85d5812ffc4dec0eb6311b48a024319004519c07ffb4`  
		Last Modified: Thu, 25 Apr 2019 23:20:42 GMT  
		Size: 263.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7966c3643cadc9809d90c1e1e6e1e1869fee70428aac7780144858238de8d310`  
		Last Modified: Thu, 25 Apr 2019 23:20:42 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514f47bdd3d4c3037c293b9c40243d5ebde7896f26aabcd637d7e9a3f0328c21`  
		Last Modified: Thu, 25 Apr 2019 23:20:43 GMT  
		Size: 1.3 MB (1294054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994032c6f51fba27c5f63b244002c5dc2a3c8a0c2576104c038ee9187438c13e`  
		Last Modified: Thu, 25 Apr 2019 23:20:41 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a5f22f79bf971d73a0f01e5b1d013ffef67236c4ee7ae400732f580506725b9`  
		Last Modified: Thu, 25 Apr 2019 23:20:41 GMT  
		Size: 264.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3486ff89aeeef3cb0e3efc21374348cb3ca0be3a13a13f34c6c813aaf3dbb799`  
		Last Modified: Thu, 25 Apr 2019 23:20:41 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:936adeb2f1260d61d2bb18193f9bc9aef8c61322fa62faf9c9a489c136aa606b`  
		Last Modified: Thu, 25 Apr 2019 23:20:41 GMT  
		Size: 527.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `crate:latest`

```console
$ docker pull crate@sha256:219685c310facac5722d07a25ac07be5c47d8257650bf80b0ea8bb102b1cb162
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `crate:latest` - linux; amd64

```console
$ docker pull crate@sha256:60986d10f53740dcab3e15a1a5e79680b8cebf3edd489ea397cb6cc6abca885a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **343.8 MB (343750826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c0582e5af4129c78da4941e7a672a45142dfcc2d6c06039dec30894a26d5006`
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
# Thu, 25 Apr 2019 23:20:11 GMT
RUN yum install -y yum-utils https://centos7.iuscommunity.org/ius-release.rpm     && yum makecache     && yum install -y python36u openssl     && yum clean all     && rm -rf /var/cache/yum     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.3.2.tar.gz     && curl -fSL -O https://cdn.crate.io/downloads/releases/crate-3.3.2.tar.gz.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-3.3.2.tar.gz.asc crate-3.3.2.tar.gz     && rm -rf "$GNUPGHOME" crate-3.3.2.tar.gz.asc     && tar -xf crate-3.3.2.tar.gz -C /crate --strip-components=1     && rm crate-3.3.2.tar.gz     && ln -sf /usr/bin/python3.6 /usr/bin/python3     && ln -sf /usr/bin/python3.6 /usr/bin/python
# Thu, 25 Apr 2019 23:20:11 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Thu, 25 Apr 2019 23:20:12 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Thu, 25 Apr 2019 23:20:15 GMT
RUN curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2    && curl -fSL -O https://cdn.crate.io/downloads/releases/crash_standalone_0.24.2.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crash_standalone_0.24.2.asc crash_standalone_0.24.2     && rm -rf "$GNUPGHOME" crash_standalone_0.24.2.asc     && mv crash_standalone_0.24.2 /usr/local/bin/crash     && chmod +x /usr/local/bin/crash
# Thu, 25 Apr 2019 23:20:15 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 25 Apr 2019 23:20:15 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 25 Apr 2019 23:20:16 GMT
RUN mkdir -p /data/data /data/log
# Thu, 25 Apr 2019 23:20:16 GMT
VOLUME [/data]
# Thu, 25 Apr 2019 23:20:16 GMT
WORKDIR /data
# Thu, 25 Apr 2019 23:20:16 GMT
EXPOSE 4200 4300 5432
# Thu, 25 Apr 2019 23:20:17 GMT
COPY --chown=1000:0file:bff8d2f33b7a44d36fcd66fc7e7d92b0ee463d0eb0df2a56e42511d4f1b3e9b2 in /crate/config/crate.yml 
# Thu, 25 Apr 2019 23:20:17 GMT
COPY --chown=1000:0file:0d0763ba6bbc9b78b4a05b228e1f3ca6b2b3b56aefaf888ab848f021062291d1 in /crate/config/log4j2.properties 
# Thu, 25 Apr 2019 23:20:17 GMT
LABEL maintainer=Crate.io <office@crate.io> org.label-schema.schema-version=1.0 org.label-schema.build-date=2019-04-18T12:45:50.167245069+00:00 org.label-schema.name=crate org.label-schema.description=CrateDB is a distributed SQL database handles massive amounts of machine data in real-time. org.label-schema.url=https://crate.io/products/cratedb/ org.label-schema.vcs-url=https://github.com/crate/docker-crate org.label-schema.vendor=Crate.io org.label-schema.version=3.3.2
# Thu, 25 Apr 2019 23:20:18 GMT
COPY file:9830363b41b8063591887d9dc9ce2767bf0e91dc4cb05efcb6ea622a60ec15e3 in / 
# Thu, 25 Apr 2019 23:20:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Apr 2019 23:20:19 GMT
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
	-	`sha256:2918992776b541c0ed2d288981c9bb49d98191ed9386067988b79fb182870341`  
		Last Modified: Thu, 25 Apr 2019 23:20:51 GMT  
		Size: 78.9 MB (78946350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c00086f9a8ee8e4583f85d5812ffc4dec0eb6311b48a024319004519c07ffb4`  
		Last Modified: Thu, 25 Apr 2019 23:20:42 GMT  
		Size: 263.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7966c3643cadc9809d90c1e1e6e1e1869fee70428aac7780144858238de8d310`  
		Last Modified: Thu, 25 Apr 2019 23:20:42 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:514f47bdd3d4c3037c293b9c40243d5ebde7896f26aabcd637d7e9a3f0328c21`  
		Last Modified: Thu, 25 Apr 2019 23:20:43 GMT  
		Size: 1.3 MB (1294054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:994032c6f51fba27c5f63b244002c5dc2a3c8a0c2576104c038ee9187438c13e`  
		Last Modified: Thu, 25 Apr 2019 23:20:41 GMT  
		Size: 127.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a5f22f79bf971d73a0f01e5b1d013ffef67236c4ee7ae400732f580506725b9`  
		Last Modified: Thu, 25 Apr 2019 23:20:41 GMT  
		Size: 264.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3486ff89aeeef3cb0e3efc21374348cb3ca0be3a13a13f34c6c813aaf3dbb799`  
		Last Modified: Thu, 25 Apr 2019 23:20:41 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:936adeb2f1260d61d2bb18193f9bc9aef8c61322fa62faf9c9a489c136aa606b`  
		Last Modified: Thu, 25 Apr 2019 23:20:41 GMT  
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
