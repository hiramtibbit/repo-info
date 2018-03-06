<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `znc`

-	[`znc:1.6`](#znc16)
-	[`znc:1.6.6`](#znc166)
-	[`znc:1.6.6-slim`](#znc166-slim)
-	[`znc:1.6-slim`](#znc16-slim)
-	[`znc:latest`](#znclatest)
-	[`znc:slim`](#zncslim)

## `znc:1.6`

```console
$ docker pull znc@sha256:8e6df4020cee43096a999801ba7f34648c40993db74d4a4dc9388399b5586639
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:1.6` - linux; amd64

```console
$ docker pull znc@sha256:3311e9cfbe9ec00df16d658cd1182b68549304efaa9d2a4ffcade7f15582d93a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.5 MB (105514255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2f3e082668e0dbcd692e73a43902049f818ee290332afd922c0e223b556332d`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 03:44:56 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Wed, 10 Jan 2018 03:44:57 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Wed, 10 Jan 2018 03:44:57 GMT
ARG MAKEFLAGS=
# Tue, 06 Mar 2018 01:32:42 GMT
ENV ZNC_VERSION=1.6.6
# Tue, 06 Mar 2018 01:38:13 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "http://people.znc.in/~darthgandalf/znc/1.6.6/znc-1.6.6.tar.gz" -o znc.tgz     && curl -fsSL "http://people.znc.in/~darthgandalf/znc/1.6.6/znc-1.6.6.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Tue, 06 Mar 2018 01:38:13 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Tue, 06 Mar 2018 01:38:14 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Tue, 06 Mar 2018 01:38:14 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Tue, 06 Mar 2018 01:38:14 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Tue, 06 Mar 2018 01:38:15 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Tue, 06 Mar 2018 01:38:15 GMT
VOLUME [/znc-data]
# Tue, 06 Mar 2018 01:38:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Mar 2018 01:40:48 GMT
RUN set -x     && apk add --no-cache         build-base         icu-dev         libressl-dev         perl         python3
# Tue, 06 Mar 2018 01:40:48 GMT
COPY file:d1446fead8db29053b5a4bf7f2af913ddb4d8b1c90f97cc6c099fc74c4322109 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1392b6e741b6550b0e0c645d4fbe7aff097915dcd60b9a89183d453cf290457`  
		Last Modified: Tue, 06 Mar 2018 01:41:14 GMT  
		Size: 21.8 MB (21826583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c327e544802fb2b6b3caad37f6c8c172e6f654c479538d72bb573f7a6a620ec`  
		Last Modified: Tue, 06 Mar 2018 01:41:08 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06841070550ed222aea4fbd11bc19c16dfa087adc21f9062351cbbf7c08ecd75`  
		Last Modified: Tue, 06 Mar 2018 01:41:09 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2bf154c67a40364df8dff68d6434d2adef7fc2bf7b6944b6b31c1396e7caf5a`  
		Last Modified: Tue, 06 Mar 2018 01:41:08 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e69fb1fda44c635b1286bc62b3961270c72f8726a5b9efefaa8361e2ffabb5`  
		Last Modified: Tue, 06 Mar 2018 01:41:09 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a047f04b0eb1c3b8fe67b5da40acaf1d081d435cf03027d9bb79d9ce9e61a2cc`  
		Last Modified: Tue, 06 Mar 2018 01:41:08 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1f464c13a0b1462471b86d7af115b732c7126e8edb9c1bf921048e22b0a6543`  
		Last Modified: Tue, 06 Mar 2018 01:42:17 GMT  
		Size: 81.6 MB (81620485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d9909d3ca6c18389fa4c9066773ef41cdb88c7b581ffdeddf7555d3237e5dab`  
		Last Modified: Tue, 06 Mar 2018 01:42:04 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:1.6.6`

```console
$ docker pull znc@sha256:8e6df4020cee43096a999801ba7f34648c40993db74d4a4dc9388399b5586639
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:1.6.6` - linux; amd64

```console
$ docker pull znc@sha256:3311e9cfbe9ec00df16d658cd1182b68549304efaa9d2a4ffcade7f15582d93a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.5 MB (105514255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2f3e082668e0dbcd692e73a43902049f818ee290332afd922c0e223b556332d`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 03:44:56 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Wed, 10 Jan 2018 03:44:57 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Wed, 10 Jan 2018 03:44:57 GMT
ARG MAKEFLAGS=
# Tue, 06 Mar 2018 01:32:42 GMT
ENV ZNC_VERSION=1.6.6
# Tue, 06 Mar 2018 01:38:13 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "http://people.znc.in/~darthgandalf/znc/1.6.6/znc-1.6.6.tar.gz" -o znc.tgz     && curl -fsSL "http://people.znc.in/~darthgandalf/znc/1.6.6/znc-1.6.6.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Tue, 06 Mar 2018 01:38:13 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Tue, 06 Mar 2018 01:38:14 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Tue, 06 Mar 2018 01:38:14 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Tue, 06 Mar 2018 01:38:14 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Tue, 06 Mar 2018 01:38:15 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Tue, 06 Mar 2018 01:38:15 GMT
VOLUME [/znc-data]
# Tue, 06 Mar 2018 01:38:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Mar 2018 01:40:48 GMT
RUN set -x     && apk add --no-cache         build-base         icu-dev         libressl-dev         perl         python3
# Tue, 06 Mar 2018 01:40:48 GMT
COPY file:d1446fead8db29053b5a4bf7f2af913ddb4d8b1c90f97cc6c099fc74c4322109 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1392b6e741b6550b0e0c645d4fbe7aff097915dcd60b9a89183d453cf290457`  
		Last Modified: Tue, 06 Mar 2018 01:41:14 GMT  
		Size: 21.8 MB (21826583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c327e544802fb2b6b3caad37f6c8c172e6f654c479538d72bb573f7a6a620ec`  
		Last Modified: Tue, 06 Mar 2018 01:41:08 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06841070550ed222aea4fbd11bc19c16dfa087adc21f9062351cbbf7c08ecd75`  
		Last Modified: Tue, 06 Mar 2018 01:41:09 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2bf154c67a40364df8dff68d6434d2adef7fc2bf7b6944b6b31c1396e7caf5a`  
		Last Modified: Tue, 06 Mar 2018 01:41:08 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e69fb1fda44c635b1286bc62b3961270c72f8726a5b9efefaa8361e2ffabb5`  
		Last Modified: Tue, 06 Mar 2018 01:41:09 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a047f04b0eb1c3b8fe67b5da40acaf1d081d435cf03027d9bb79d9ce9e61a2cc`  
		Last Modified: Tue, 06 Mar 2018 01:41:08 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1f464c13a0b1462471b86d7af115b732c7126e8edb9c1bf921048e22b0a6543`  
		Last Modified: Tue, 06 Mar 2018 01:42:17 GMT  
		Size: 81.6 MB (81620485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d9909d3ca6c18389fa4c9066773ef41cdb88c7b581ffdeddf7555d3237e5dab`  
		Last Modified: Tue, 06 Mar 2018 01:42:04 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:1.6.6-slim`

```console
$ docker pull znc@sha256:7306c38726fb6041f341c2e5d14c9a4a272236c307054880c79b527516d18fa1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:1.6.6-slim` - linux; amd64

```console
$ docker pull znc@sha256:209203a31b2ce3384403d8e4480600a0469b18bb756148dca58264a04c0c57a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23893439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07e97c95cd9b1ba6ec38a91ead3b7d8d0683b41d71cb55a87e0f33518261dd1b`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 03:44:56 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Wed, 10 Jan 2018 03:44:57 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Wed, 10 Jan 2018 03:44:57 GMT
ARG MAKEFLAGS=
# Tue, 06 Mar 2018 01:32:42 GMT
ENV ZNC_VERSION=1.6.6
# Tue, 06 Mar 2018 01:38:13 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "http://people.znc.in/~darthgandalf/znc/1.6.6/znc-1.6.6.tar.gz" -o znc.tgz     && curl -fsSL "http://people.znc.in/~darthgandalf/znc/1.6.6/znc-1.6.6.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Tue, 06 Mar 2018 01:38:13 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Tue, 06 Mar 2018 01:38:14 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Tue, 06 Mar 2018 01:38:14 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Tue, 06 Mar 2018 01:38:14 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Tue, 06 Mar 2018 01:38:15 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Tue, 06 Mar 2018 01:38:15 GMT
VOLUME [/znc-data]
# Tue, 06 Mar 2018 01:38:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1392b6e741b6550b0e0c645d4fbe7aff097915dcd60b9a89183d453cf290457`  
		Last Modified: Tue, 06 Mar 2018 01:41:14 GMT  
		Size: 21.8 MB (21826583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c327e544802fb2b6b3caad37f6c8c172e6f654c479538d72bb573f7a6a620ec`  
		Last Modified: Tue, 06 Mar 2018 01:41:08 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06841070550ed222aea4fbd11bc19c16dfa087adc21f9062351cbbf7c08ecd75`  
		Last Modified: Tue, 06 Mar 2018 01:41:09 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2bf154c67a40364df8dff68d6434d2adef7fc2bf7b6944b6b31c1396e7caf5a`  
		Last Modified: Tue, 06 Mar 2018 01:41:08 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e69fb1fda44c635b1286bc62b3961270c72f8726a5b9efefaa8361e2ffabb5`  
		Last Modified: Tue, 06 Mar 2018 01:41:09 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a047f04b0eb1c3b8fe67b5da40acaf1d081d435cf03027d9bb79d9ce9e61a2cc`  
		Last Modified: Tue, 06 Mar 2018 01:41:08 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:1.6-slim`

```console
$ docker pull znc@sha256:7306c38726fb6041f341c2e5d14c9a4a272236c307054880c79b527516d18fa1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:1.6-slim` - linux; amd64

```console
$ docker pull znc@sha256:209203a31b2ce3384403d8e4480600a0469b18bb756148dca58264a04c0c57a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23893439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07e97c95cd9b1ba6ec38a91ead3b7d8d0683b41d71cb55a87e0f33518261dd1b`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 03:44:56 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Wed, 10 Jan 2018 03:44:57 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Wed, 10 Jan 2018 03:44:57 GMT
ARG MAKEFLAGS=
# Tue, 06 Mar 2018 01:32:42 GMT
ENV ZNC_VERSION=1.6.6
# Tue, 06 Mar 2018 01:38:13 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "http://people.znc.in/~darthgandalf/znc/1.6.6/znc-1.6.6.tar.gz" -o znc.tgz     && curl -fsSL "http://people.znc.in/~darthgandalf/znc/1.6.6/znc-1.6.6.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Tue, 06 Mar 2018 01:38:13 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Tue, 06 Mar 2018 01:38:14 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Tue, 06 Mar 2018 01:38:14 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Tue, 06 Mar 2018 01:38:14 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Tue, 06 Mar 2018 01:38:15 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Tue, 06 Mar 2018 01:38:15 GMT
VOLUME [/znc-data]
# Tue, 06 Mar 2018 01:38:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1392b6e741b6550b0e0c645d4fbe7aff097915dcd60b9a89183d453cf290457`  
		Last Modified: Tue, 06 Mar 2018 01:41:14 GMT  
		Size: 21.8 MB (21826583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c327e544802fb2b6b3caad37f6c8c172e6f654c479538d72bb573f7a6a620ec`  
		Last Modified: Tue, 06 Mar 2018 01:41:08 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06841070550ed222aea4fbd11bc19c16dfa087adc21f9062351cbbf7c08ecd75`  
		Last Modified: Tue, 06 Mar 2018 01:41:09 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2bf154c67a40364df8dff68d6434d2adef7fc2bf7b6944b6b31c1396e7caf5a`  
		Last Modified: Tue, 06 Mar 2018 01:41:08 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e69fb1fda44c635b1286bc62b3961270c72f8726a5b9efefaa8361e2ffabb5`  
		Last Modified: Tue, 06 Mar 2018 01:41:09 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a047f04b0eb1c3b8fe67b5da40acaf1d081d435cf03027d9bb79d9ce9e61a2cc`  
		Last Modified: Tue, 06 Mar 2018 01:41:08 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:latest`

```console
$ docker pull znc@sha256:8e6df4020cee43096a999801ba7f34648c40993db74d4a4dc9388399b5586639
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:latest` - linux; amd64

```console
$ docker pull znc@sha256:3311e9cfbe9ec00df16d658cd1182b68549304efaa9d2a4ffcade7f15582d93a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.5 MB (105514255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2f3e082668e0dbcd692e73a43902049f818ee290332afd922c0e223b556332d`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 03:44:56 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Wed, 10 Jan 2018 03:44:57 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Wed, 10 Jan 2018 03:44:57 GMT
ARG MAKEFLAGS=
# Tue, 06 Mar 2018 01:32:42 GMT
ENV ZNC_VERSION=1.6.6
# Tue, 06 Mar 2018 01:38:13 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "http://people.znc.in/~darthgandalf/znc/1.6.6/znc-1.6.6.tar.gz" -o znc.tgz     && curl -fsSL "http://people.znc.in/~darthgandalf/znc/1.6.6/znc-1.6.6.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Tue, 06 Mar 2018 01:38:13 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Tue, 06 Mar 2018 01:38:14 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Tue, 06 Mar 2018 01:38:14 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Tue, 06 Mar 2018 01:38:14 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Tue, 06 Mar 2018 01:38:15 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Tue, 06 Mar 2018 01:38:15 GMT
VOLUME [/znc-data]
# Tue, 06 Mar 2018 01:38:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 06 Mar 2018 01:40:48 GMT
RUN set -x     && apk add --no-cache         build-base         icu-dev         libressl-dev         perl         python3
# Tue, 06 Mar 2018 01:40:48 GMT
COPY file:d1446fead8db29053b5a4bf7f2af913ddb4d8b1c90f97cc6c099fc74c4322109 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1392b6e741b6550b0e0c645d4fbe7aff097915dcd60b9a89183d453cf290457`  
		Last Modified: Tue, 06 Mar 2018 01:41:14 GMT  
		Size: 21.8 MB (21826583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c327e544802fb2b6b3caad37f6c8c172e6f654c479538d72bb573f7a6a620ec`  
		Last Modified: Tue, 06 Mar 2018 01:41:08 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06841070550ed222aea4fbd11bc19c16dfa087adc21f9062351cbbf7c08ecd75`  
		Last Modified: Tue, 06 Mar 2018 01:41:09 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2bf154c67a40364df8dff68d6434d2adef7fc2bf7b6944b6b31c1396e7caf5a`  
		Last Modified: Tue, 06 Mar 2018 01:41:08 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e69fb1fda44c635b1286bc62b3961270c72f8726a5b9efefaa8361e2ffabb5`  
		Last Modified: Tue, 06 Mar 2018 01:41:09 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a047f04b0eb1c3b8fe67b5da40acaf1d081d435cf03027d9bb79d9ce9e61a2cc`  
		Last Modified: Tue, 06 Mar 2018 01:41:08 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1f464c13a0b1462471b86d7af115b732c7126e8edb9c1bf921048e22b0a6543`  
		Last Modified: Tue, 06 Mar 2018 01:42:17 GMT  
		Size: 81.6 MB (81620485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d9909d3ca6c18389fa4c9066773ef41cdb88c7b581ffdeddf7555d3237e5dab`  
		Last Modified: Tue, 06 Mar 2018 01:42:04 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:slim`

```console
$ docker pull znc@sha256:7306c38726fb6041f341c2e5d14c9a4a272236c307054880c79b527516d18fa1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:slim` - linux; amd64

```console
$ docker pull znc@sha256:209203a31b2ce3384403d8e4480600a0469b18bb756148dca58264a04c0c57a6
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.9 MB (23893439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07e97c95cd9b1ba6ec38a91ead3b7d8d0683b41d71cb55a87e0f33518261dd1b`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 03:44:56 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Wed, 10 Jan 2018 03:44:57 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Wed, 10 Jan 2018 03:44:57 GMT
ARG MAKEFLAGS=
# Tue, 06 Mar 2018 01:32:42 GMT
ENV ZNC_VERSION=1.6.6
# Tue, 06 Mar 2018 01:38:13 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "http://people.znc.in/~darthgandalf/znc/1.6.6/znc-1.6.6.tar.gz" -o znc.tgz     && curl -fsSL "http://people.znc.in/~darthgandalf/znc/1.6.6/znc-1.6.6.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Tue, 06 Mar 2018 01:38:13 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Tue, 06 Mar 2018 01:38:14 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Tue, 06 Mar 2018 01:38:14 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Tue, 06 Mar 2018 01:38:14 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Tue, 06 Mar 2018 01:38:15 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Tue, 06 Mar 2018 01:38:15 GMT
VOLUME [/znc-data]
# Tue, 06 Mar 2018 01:38:15 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1392b6e741b6550b0e0c645d4fbe7aff097915dcd60b9a89183d453cf290457`  
		Last Modified: Tue, 06 Mar 2018 01:41:14 GMT  
		Size: 21.8 MB (21826583 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c327e544802fb2b6b3caad37f6c8c172e6f654c479538d72bb573f7a6a620ec`  
		Last Modified: Tue, 06 Mar 2018 01:41:08 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06841070550ed222aea4fbd11bc19c16dfa087adc21f9062351cbbf7c08ecd75`  
		Last Modified: Tue, 06 Mar 2018 01:41:09 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2bf154c67a40364df8dff68d6434d2adef7fc2bf7b6944b6b31c1396e7caf5a`  
		Last Modified: Tue, 06 Mar 2018 01:41:08 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e69fb1fda44c635b1286bc62b3961270c72f8726a5b9efefaa8361e2ffabb5`  
		Last Modified: Tue, 06 Mar 2018 01:41:09 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a047f04b0eb1c3b8fe67b5da40acaf1d081d435cf03027d9bb79d9ce9e61a2cc`  
		Last Modified: Tue, 06 Mar 2018 01:41:08 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
