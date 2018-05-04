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
$ docker pull znc@sha256:b4865f28dc74b4ad3403846dd206d8450ea136322ee09af16537d362c8728593
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:1.7` - linux; amd64

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

## `znc:1.7.0`

```console
$ docker pull znc@sha256:b4865f28dc74b4ad3403846dd206d8450ea136322ee09af16537d362c8728593
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:1.7.0` - linux; amd64

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

## `znc:1.7.0-slim`

```console
$ docker pull znc@sha256:5b9ac28c1e9c1b83f2af5e8ea8bea3cd8c306ffb860e6f371423496c29c85051
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:1.7.0-slim` - linux; amd64

```console
$ docker pull znc@sha256:ac33b7f1765bcbf5e15bee5ea5aac39b2310d6cf040115deed0ad8451709389c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.0 MB (30021643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c027fc372146aee60664947f5bdbb1e2818e918e8fe279f512aa4fcf6535fc0b`
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

## `znc:1.7-slim`

```console
$ docker pull znc@sha256:5b9ac28c1e9c1b83f2af5e8ea8bea3cd8c306ffb860e6f371423496c29c85051
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:1.7-slim` - linux; amd64

```console
$ docker pull znc@sha256:ac33b7f1765bcbf5e15bee5ea5aac39b2310d6cf040115deed0ad8451709389c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.0 MB (30021643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c027fc372146aee60664947f5bdbb1e2818e918e8fe279f512aa4fcf6535fc0b`
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
$ docker pull znc@sha256:5b9ac28c1e9c1b83f2af5e8ea8bea3cd8c306ffb860e6f371423496c29c85051
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:slim` - linux; amd64

```console
$ docker pull znc@sha256:ac33b7f1765bcbf5e15bee5ea5aac39b2310d6cf040115deed0ad8451709389c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.0 MB (30021643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c027fc372146aee60664947f5bdbb1e2818e918e8fe279f512aa4fcf6535fc0b`
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
