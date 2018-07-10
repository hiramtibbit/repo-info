<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `znc`

-	[`znc:1.7`](#znc17)
-	[`znc:1.7.0`](#znc170)
-	[`znc:1.7.0-slim`](#znc170-slim)
-	[`znc:1.7-slim`](#znc17-slim)
-	[`znc:latest`](#znclatest)
-	[`znc:slim`](#zncslim)

## `znc:1.7`

```console
$ docker pull znc@sha256:17198bf5ad4c03904caac4abb1d2a036f590c574f37e6d46f823d3d44dd67180
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:1.7` - linux; amd64

```console
$ docker pull znc@sha256:93c6ba879bd7b612a75c72d0242ac6b348613f15a4b620ecda84503f7e8499d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.2 MB (121196633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15d5ef71c84dcc4b8b633edb6c5b9774933ea92bd7164a6de6b74ae4c5f74abd`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Tue, 10 Jul 2018 21:36:23 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Tue, 10 Jul 2018 21:36:23 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO
# Tue, 10 Jul 2018 21:36:24 GMT
ARG MAKEFLAGS=
# Tue, 10 Jul 2018 21:36:24 GMT
ENV ZNC_VERSION=1.7.0
# Tue, 10 Jul 2018 21:42:23 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Tue, 10 Jul 2018 21:42:24 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Tue, 10 Jul 2018 21:42:24 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Tue, 10 Jul 2018 21:42:25 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Tue, 10 Jul 2018 21:42:25 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Tue, 10 Jul 2018 21:42:25 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Tue, 10 Jul 2018 21:42:26 GMT
VOLUME [/znc-data]
# Tue, 10 Jul 2018 21:42:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Jul 2018 21:43:08 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         libressl-dev         perl         python3
# Tue, 10 Jul 2018 21:43:12 GMT
COPY file:d1446fead8db29053b5a4bf7f2af913ddb4d8b1c90f97cc6c099fc74c4322109 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8759780eaaa9da36d61d44b8552ffa7b75468f947686f42a198499433ea23345`  
		Last Modified: Tue, 10 Jul 2018 21:43:56 GMT  
		Size: 29.0 MB (28997615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a282189d0feec5a5a98140cef07ed100777bb77ce550bd86ffb846cd3b1dd966`  
		Last Modified: Tue, 10 Jul 2018 21:43:39 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6234230b6b8c9affa4acf469c1c191ed0dc304ac715cdb78ba1a3696715758d6`  
		Last Modified: Tue, 10 Jul 2018 21:43:39 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:788a1c1a7e7ce64c913ea385cc8588c603c557911e6a44cf850d49bb0c5a3369`  
		Last Modified: Tue, 10 Jul 2018 21:43:39 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:156b49afe9a0a212a8f21e83d46ad6d131de3a7fa0e7d1a35d5fcdc44acb6f05`  
		Last Modified: Tue, 10 Jul 2018 21:43:39 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de2df86485578122f2292ec4b54b71c401d91013cdbbfdb0ee66c615cdae928`  
		Last Modified: Tue, 10 Jul 2018 21:43:39 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b60f69c1362c500476d3e2a16d4d32296217334b2b5406fc35e014bf5790b6`  
		Last Modified: Tue, 10 Jul 2018 21:45:21 GMT  
		Size: 90.1 MB (90093822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c66902757a120bcb387fd27760dd29afc25507a7e013fddd9aaf9c1db116423e`  
		Last Modified: Tue, 10 Jul 2018 21:44:46 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:1.7.0`

```console
$ docker pull znc@sha256:17198bf5ad4c03904caac4abb1d2a036f590c574f37e6d46f823d3d44dd67180
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:1.7.0` - linux; amd64

```console
$ docker pull znc@sha256:93c6ba879bd7b612a75c72d0242ac6b348613f15a4b620ecda84503f7e8499d5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.2 MB (121196633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15d5ef71c84dcc4b8b633edb6c5b9774933ea92bd7164a6de6b74ae4c5f74abd`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Tue, 10 Jul 2018 21:36:23 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Tue, 10 Jul 2018 21:36:23 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO
# Tue, 10 Jul 2018 21:36:24 GMT
ARG MAKEFLAGS=
# Tue, 10 Jul 2018 21:36:24 GMT
ENV ZNC_VERSION=1.7.0
# Tue, 10 Jul 2018 21:42:23 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Tue, 10 Jul 2018 21:42:24 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Tue, 10 Jul 2018 21:42:24 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Tue, 10 Jul 2018 21:42:25 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Tue, 10 Jul 2018 21:42:25 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Tue, 10 Jul 2018 21:42:25 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Tue, 10 Jul 2018 21:42:26 GMT
VOLUME [/znc-data]
# Tue, 10 Jul 2018 21:42:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 10 Jul 2018 21:43:08 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         libressl-dev         perl         python3
# Tue, 10 Jul 2018 21:43:12 GMT
COPY file:d1446fead8db29053b5a4bf7f2af913ddb4d8b1c90f97cc6c099fc74c4322109 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8759780eaaa9da36d61d44b8552ffa7b75468f947686f42a198499433ea23345`  
		Last Modified: Tue, 10 Jul 2018 21:43:56 GMT  
		Size: 29.0 MB (28997615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a282189d0feec5a5a98140cef07ed100777bb77ce550bd86ffb846cd3b1dd966`  
		Last Modified: Tue, 10 Jul 2018 21:43:39 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6234230b6b8c9affa4acf469c1c191ed0dc304ac715cdb78ba1a3696715758d6`  
		Last Modified: Tue, 10 Jul 2018 21:43:39 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:788a1c1a7e7ce64c913ea385cc8588c603c557911e6a44cf850d49bb0c5a3369`  
		Last Modified: Tue, 10 Jul 2018 21:43:39 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:156b49afe9a0a212a8f21e83d46ad6d131de3a7fa0e7d1a35d5fcdc44acb6f05`  
		Last Modified: Tue, 10 Jul 2018 21:43:39 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de2df86485578122f2292ec4b54b71c401d91013cdbbfdb0ee66c615cdae928`  
		Last Modified: Tue, 10 Jul 2018 21:43:39 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b60f69c1362c500476d3e2a16d4d32296217334b2b5406fc35e014bf5790b6`  
		Last Modified: Tue, 10 Jul 2018 21:45:21 GMT  
		Size: 90.1 MB (90093822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c66902757a120bcb387fd27760dd29afc25507a7e013fddd9aaf9c1db116423e`  
		Last Modified: Tue, 10 Jul 2018 21:44:46 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:1.7.0-slim`

```console
$ docker pull znc@sha256:3894fe2c55cb70a7266a0c6cbce08c865335beb13645054de03d59d1ef7e49ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:1.7.0-slim` - linux; amd64

```console
$ docker pull znc@sha256:02869a28b2441ae0812738cc44eb874b5e8760e8483177dfed26cb7824882ae9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31102480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3820e50354ce9aa768cc80c025079c57fe8e4a465381a2e78cfedddb8fce330`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Tue, 10 Jul 2018 21:36:23 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Tue, 10 Jul 2018 21:36:23 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO
# Tue, 10 Jul 2018 21:36:24 GMT
ARG MAKEFLAGS=
# Tue, 10 Jul 2018 21:36:24 GMT
ENV ZNC_VERSION=1.7.0
# Tue, 10 Jul 2018 21:42:23 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Tue, 10 Jul 2018 21:42:24 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Tue, 10 Jul 2018 21:42:24 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Tue, 10 Jul 2018 21:42:25 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Tue, 10 Jul 2018 21:42:25 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Tue, 10 Jul 2018 21:42:25 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Tue, 10 Jul 2018 21:42:26 GMT
VOLUME [/znc-data]
# Tue, 10 Jul 2018 21:42:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8759780eaaa9da36d61d44b8552ffa7b75468f947686f42a198499433ea23345`  
		Last Modified: Tue, 10 Jul 2018 21:43:56 GMT  
		Size: 29.0 MB (28997615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a282189d0feec5a5a98140cef07ed100777bb77ce550bd86ffb846cd3b1dd966`  
		Last Modified: Tue, 10 Jul 2018 21:43:39 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6234230b6b8c9affa4acf469c1c191ed0dc304ac715cdb78ba1a3696715758d6`  
		Last Modified: Tue, 10 Jul 2018 21:43:39 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:788a1c1a7e7ce64c913ea385cc8588c603c557911e6a44cf850d49bb0c5a3369`  
		Last Modified: Tue, 10 Jul 2018 21:43:39 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:156b49afe9a0a212a8f21e83d46ad6d131de3a7fa0e7d1a35d5fcdc44acb6f05`  
		Last Modified: Tue, 10 Jul 2018 21:43:39 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de2df86485578122f2292ec4b54b71c401d91013cdbbfdb0ee66c615cdae928`  
		Last Modified: Tue, 10 Jul 2018 21:43:39 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:1.7-slim`

```console
$ docker pull znc@sha256:3894fe2c55cb70a7266a0c6cbce08c865335beb13645054de03d59d1ef7e49ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:1.7-slim` - linux; amd64

```console
$ docker pull znc@sha256:02869a28b2441ae0812738cc44eb874b5e8760e8483177dfed26cb7824882ae9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31102480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3820e50354ce9aa768cc80c025079c57fe8e4a465381a2e78cfedddb8fce330`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Tue, 10 Jul 2018 21:36:23 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Tue, 10 Jul 2018 21:36:23 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO
# Tue, 10 Jul 2018 21:36:24 GMT
ARG MAKEFLAGS=
# Tue, 10 Jul 2018 21:36:24 GMT
ENV ZNC_VERSION=1.7.0
# Tue, 10 Jul 2018 21:42:23 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Tue, 10 Jul 2018 21:42:24 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Tue, 10 Jul 2018 21:42:24 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Tue, 10 Jul 2018 21:42:25 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Tue, 10 Jul 2018 21:42:25 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Tue, 10 Jul 2018 21:42:25 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Tue, 10 Jul 2018 21:42:26 GMT
VOLUME [/znc-data]
# Tue, 10 Jul 2018 21:42:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8759780eaaa9da36d61d44b8552ffa7b75468f947686f42a198499433ea23345`  
		Last Modified: Tue, 10 Jul 2018 21:43:56 GMT  
		Size: 29.0 MB (28997615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a282189d0feec5a5a98140cef07ed100777bb77ce550bd86ffb846cd3b1dd966`  
		Last Modified: Tue, 10 Jul 2018 21:43:39 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6234230b6b8c9affa4acf469c1c191ed0dc304ac715cdb78ba1a3696715758d6`  
		Last Modified: Tue, 10 Jul 2018 21:43:39 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:788a1c1a7e7ce64c913ea385cc8588c603c557911e6a44cf850d49bb0c5a3369`  
		Last Modified: Tue, 10 Jul 2018 21:43:39 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:156b49afe9a0a212a8f21e83d46ad6d131de3a7fa0e7d1a35d5fcdc44acb6f05`  
		Last Modified: Tue, 10 Jul 2018 21:43:39 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de2df86485578122f2292ec4b54b71c401d91013cdbbfdb0ee66c615cdae928`  
		Last Modified: Tue, 10 Jul 2018 21:43:39 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:latest`

```console
$ docker pull znc@sha256:0281dc9d67b31d431f07a0da575a36b0557607b92ad6dba1139380b95e59051a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:latest` - linux; amd64

```console
$ docker pull znc@sha256:dc3787d56ae3ead2cacabc5341c41196118f0d2810e0b848bbbcfed8f457ee08
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.2 MB (121196143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe558228c0366af923a3e640e9d7941cc0a7c3482f029e8fed3c9a210e55bf34`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Fri, 06 Jul 2018 14:36:57 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Fri, 06 Jul 2018 14:36:57 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO
# Fri, 06 Jul 2018 14:36:58 GMT
ARG MAKEFLAGS=
# Fri, 06 Jul 2018 14:36:58 GMT
ENV ZNC_VERSION=1.7.0
# Fri, 06 Jul 2018 14:40:27 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Fri, 06 Jul 2018 14:40:27 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Fri, 06 Jul 2018 14:40:28 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Fri, 06 Jul 2018 14:40:28 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Fri, 06 Jul 2018 14:40:29 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Fri, 06 Jul 2018 14:40:29 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Fri, 06 Jul 2018 14:40:29 GMT
VOLUME [/znc-data]
# Fri, 06 Jul 2018 14:40:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 06 Jul 2018 14:45:55 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         libressl-dev         perl         python3
# Fri, 06 Jul 2018 14:45:56 GMT
COPY file:d1446fead8db29053b5a4bf7f2af913ddb4d8b1c90f97cc6c099fc74c4322109 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cca94a3a5b0c178369938c6bacde51e1b6706b11ea8eafd14fbd454b24f8d7b`  
		Last Modified: Fri, 06 Jul 2018 14:46:21 GMT  
		Size: 29.0 MB (28997227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cff4c68555a56206f374e5eb5ca8e007113d7a2bd71f676f71618fa51e77757`  
		Last Modified: Fri, 06 Jul 2018 14:46:13 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6de372b3970e48c63fa82bdd23b189ce2f374d85339dbae76d9f8d86c174013b`  
		Last Modified: Fri, 06 Jul 2018 14:46:14 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c38dd64ae6581cd46a8cfd0b619418a16a5760914481c9c7a3549a2aae8542`  
		Last Modified: Fri, 06 Jul 2018 14:46:13 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:151cffa8778201aba6a210301c0c12a838c948e16e6c34a1b63d5738e6363d73`  
		Last Modified: Fri, 06 Jul 2018 14:46:13 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9db01b0b924660cb9954b4b674a7b34f925f5e487682ef1aa2e45a7d2cc0b545`  
		Last Modified: Fri, 06 Jul 2018 14:46:14 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:170bfb3c9293e5cae1fbb4cbfa79870c6f4e42a56f2c8f35f08db15ed1f13efa`  
		Last Modified: Fri, 06 Jul 2018 14:47:14 GMT  
		Size: 90.1 MB (90093718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:359bc6d3c69d21d624305d00ac1b9d2882048ab73b31fb14a9a699031db7f4e3`  
		Last Modified: Fri, 06 Jul 2018 14:46:59 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:slim`

```console
$ docker pull znc@sha256:3894fe2c55cb70a7266a0c6cbce08c865335beb13645054de03d59d1ef7e49ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:slim` - linux; amd64

```console
$ docker pull znc@sha256:02869a28b2441ae0812738cc44eb874b5e8760e8483177dfed26cb7824882ae9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31102480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3820e50354ce9aa768cc80c025079c57fe8e4a465381a2e78cfedddb8fce330`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 06 Jul 2018 14:13:45 GMT
ADD file:6ee19b92d5cb1bf143947fe2e2481cb3b353d42e1e54888a8ba48c03dd4155f2 in / 
# Fri, 06 Jul 2018 14:13:45 GMT
CMD ["/bin/sh"]
# Tue, 10 Jul 2018 21:36:23 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Tue, 10 Jul 2018 21:36:23 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO
# Tue, 10 Jul 2018 21:36:24 GMT
ARG MAKEFLAGS=
# Tue, 10 Jul 2018 21:36:24 GMT
ENV ZNC_VERSION=1.7.0
# Tue, 10 Jul 2018 21:42:23 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Tue, 10 Jul 2018 21:42:24 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Tue, 10 Jul 2018 21:42:24 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Tue, 10 Jul 2018 21:42:25 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Tue, 10 Jul 2018 21:42:25 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Tue, 10 Jul 2018 21:42:25 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Tue, 10 Jul 2018 21:42:26 GMT
VOLUME [/znc-data]
# Tue, 10 Jul 2018 21:42:26 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8759780eaaa9da36d61d44b8552ffa7b75468f947686f42a198499433ea23345`  
		Last Modified: Tue, 10 Jul 2018 21:43:56 GMT  
		Size: 29.0 MB (28997615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a282189d0feec5a5a98140cef07ed100777bb77ce550bd86ffb846cd3b1dd966`  
		Last Modified: Tue, 10 Jul 2018 21:43:39 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6234230b6b8c9affa4acf469c1c191ed0dc304ac715cdb78ba1a3696715758d6`  
		Last Modified: Tue, 10 Jul 2018 21:43:39 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:788a1c1a7e7ce64c913ea385cc8588c603c557911e6a44cf850d49bb0c5a3369`  
		Last Modified: Tue, 10 Jul 2018 21:43:39 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:156b49afe9a0a212a8f21e83d46ad6d131de3a7fa0e7d1a35d5fcdc44acb6f05`  
		Last Modified: Tue, 10 Jul 2018 21:43:39 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1de2df86485578122f2292ec4b54b71c401d91013cdbbfdb0ee66c615cdae928`  
		Last Modified: Tue, 10 Jul 2018 21:43:39 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
