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
$ docker pull znc@sha256:0281dc9d67b31d431f07a0da575a36b0557607b92ad6dba1139380b95e59051a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:1.7` - linux; amd64

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

## `znc:1.7.0`

```console
$ docker pull znc@sha256:0281dc9d67b31d431f07a0da575a36b0557607b92ad6dba1139380b95e59051a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:1.7.0` - linux; amd64

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

## `znc:1.7.0-slim`

```console
$ docker pull znc@sha256:027e94bb299b9117c7dcae01875bb5ab249a98dabac5109db4319705c48d684c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:1.7.0-slim` - linux; amd64

```console
$ docker pull znc@sha256:8d228f5b856d9e71efe216ccdab25558fa27c12b814abba9af16b175c917d758
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31102095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:021891a21d4cc735a33d27fc161166ea6bad5e560b1cf9420853c93a99b31674`
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

## `znc:1.7-slim`

```console
$ docker pull znc@sha256:027e94bb299b9117c7dcae01875bb5ab249a98dabac5109db4319705c48d684c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:1.7-slim` - linux; amd64

```console
$ docker pull znc@sha256:8d228f5b856d9e71efe216ccdab25558fa27c12b814abba9af16b175c917d758
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31102095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:021891a21d4cc735a33d27fc161166ea6bad5e560b1cf9420853c93a99b31674`
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

## `znc:latest`

```console
$ docker pull znc@sha256:b4865f28dc74b4ad3403846dd206d8450ea136322ee09af16537d362c8728593
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:latest` - linux; amd64

```console
$ docker pull znc@sha256:c2453b75554dc3c2f305a766372692addd0cc9bdfc836c9bbaf2789d71d88c4c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.0 MB (120026896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43c410df61637008688131775acde08f9e79bcce9e4e1148f3c1772acd8554d5`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 03:44:56 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Fri, 04 May 2018 05:47:25 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO
# Fri, 04 May 2018 05:47:35 GMT
ARG MAKEFLAGS=
# Fri, 04 May 2018 05:47:40 GMT
ENV ZNC_VERSION=1.7.0
# Fri, 04 May 2018 05:51:28 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Fri, 04 May 2018 05:51:32 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Fri, 04 May 2018 05:51:35 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Fri, 04 May 2018 05:51:35 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Fri, 04 May 2018 05:51:37 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Fri, 04 May 2018 05:51:41 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Fri, 04 May 2018 05:51:43 GMT
VOLUME [/znc-data]
# Fri, 04 May 2018 05:51:44 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 04 May 2018 06:18:35 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         libressl-dev         perl         python3
# Fri, 04 May 2018 06:18:41 GMT
COPY file:d1446fead8db29053b5a4bf7f2af913ddb4d8b1c90f97cc6c099fc74c4322109 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eecc9060e82715478185d71753e988d475bbb432de5a161c4f7cbe184bceceb3`  
		Last Modified: Fri, 04 May 2018 06:19:28 GMT  
		Size: 28.0 MB (27954790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddb1613421f69a509506c6d43cb7f20d69658fd6e894df68155a49963b4075b9`  
		Last Modified: Fri, 04 May 2018 06:19:16 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:663b39425295a4e92722808e05dd58c002cfcbd782ba9b81b5d54281014ab8aa`  
		Last Modified: Fri, 04 May 2018 06:19:17 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f945bee2810c75f6176fa39c938507cf7be04c32ddf2aa4f6b173c256b5fe482`  
		Last Modified: Fri, 04 May 2018 06:19:17 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90b1475cba653c3db4ab60e34e3f85279fa38cf07df4ac66396e0bed8abb3de8`  
		Last Modified: Fri, 04 May 2018 06:19:16 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44f865e0147f1bad3910cad98e3482aeddfdb3609c20d7b8437c33bf2d6c9f75`  
		Last Modified: Fri, 04 May 2018 06:19:16 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b506469d26384a1e569c29aa563a765cdab85600716e7c6f6c27299aa4e64826`  
		Last Modified: Fri, 04 May 2018 06:47:44 GMT  
		Size: 90.0 MB (90004921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdca5cf40b1992d94e376cd7ce47d1c676b5c9d5e4a846be450f0a813b6255ae`  
		Last Modified: Fri, 04 May 2018 06:47:03 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:slim`

```console
$ docker pull znc@sha256:027e94bb299b9117c7dcae01875bb5ab249a98dabac5109db4319705c48d684c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:slim` - linux; amd64

```console
$ docker pull znc@sha256:8d228f5b856d9e71efe216ccdab25558fa27c12b814abba9af16b175c917d758
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.1 MB (31102095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:021891a21d4cc735a33d27fc161166ea6bad5e560b1cf9420853c93a99b31674`
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
