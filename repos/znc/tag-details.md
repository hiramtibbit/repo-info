<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `znc`

-	[`znc:1.7`](#znc17)
-	[`znc:1.7.2`](#znc172)
-	[`znc:1.7.2-slim`](#znc172-slim)
-	[`znc:1.7-slim`](#znc17-slim)
-	[`znc:latest`](#znclatest)
-	[`znc:slim`](#zncslim)

## `znc:1.7`

```console
$ docker pull znc@sha256:fa31e7686e718182d412ee5e5f63d4fd08c628b124ae19570f14bc54543f1c03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:1.7` - linux; amd64

```console
$ docker pull znc@sha256:d03087b72587d6bc485e0222971191a7f8c338342b5bfa5bcab3f299ffcb0018
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.5 MB (122542102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a40ef6371f6446f4ed4f65a90ce3091fec7dfcc8447d9d5d5c291ff8358274fc`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:53:52 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Fri, 21 Dec 2018 00:53:52 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO
# Fri, 21 Dec 2018 00:53:52 GMT
ARG MAKEFLAGS=
# Mon, 28 Jan 2019 23:31:22 GMT
ENV ZNC_VERSION=1.7.2
# Mon, 28 Jan 2019 23:37:35 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Mon, 28 Jan 2019 23:37:35 GMT
COPY file:15e47c9cc6835e0818d6896aa6537a8adda40ff814c287685183c73fa9df4713 in / 
# Mon, 28 Jan 2019 23:37:35 GMT
COPY file:dfda6761eff5635f2f7a6c1d540b2b14ea67514867578d12226629a780844185 in /startup-sequence/ 
# Mon, 28 Jan 2019 23:37:36 GMT
COPY file:809dccdc6a2a9f5e2a058644d9f71b2f167ab0f237913902896fef13b6315814 in /startup-sequence/ 
# Mon, 28 Jan 2019 23:37:36 GMT
COPY file:5e0f569cb97b27c9961c87a9748eb2e2fb3f63b5d43ad5d7079dc7fb8c9ff62f in /startup-sequence/ 
# Mon, 28 Jan 2019 23:37:36 GMT
COPY file:f4f3dd4e08ff4e970f8bceb98bad9970e3424c0b6215921b3e67dd3c3dbd2085 in /startup-sequence/ 
# Mon, 28 Jan 2019 23:37:36 GMT
VOLUME [/znc-data]
# Mon, 28 Jan 2019 23:37:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 28 Jan 2019 23:38:02 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         libressl-dev         perl         python3
# Mon, 28 Jan 2019 23:38:03 GMT
COPY file:765473e154cb7674cba99ed8ee42b51feda01581be870e3d1e7e4930b82a0f37 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230a8b93b537384b3a359b07da9ef6f27cbabee5bb922c10921b5e857c3954ad`  
		Last Modified: Mon, 28 Jan 2019 23:38:18 GMT  
		Size: 28.7 MB (28676591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02a4eec18db79942c13224766cfef2ea8f6e3154a11e0d728aff8da7b1884fe`  
		Last Modified: Mon, 28 Jan 2019 23:38:11 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07b1685205049d1d594870b51962fa25026bfef4db58550963e8816a32aedbfe`  
		Last Modified: Mon, 28 Jan 2019 23:38:11 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780c4bdcf740df3573f45db5a0f8f167a2627b9fdd0b32160bf49b6863accee2`  
		Last Modified: Mon, 28 Jan 2019 23:38:11 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b77686a2d005da0e178dd8edbdbb2f13834fd273d1f9945488fae7b57adde3`  
		Last Modified: Mon, 28 Jan 2019 23:38:11 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781b52f3e98199cff0bfe0caed960415a7d9ffe4c1ff9f0953b69a936ba09eb4`  
		Last Modified: Mon, 28 Jan 2019 23:38:11 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a17b2eb8bba204594e174481cae607be25ecd47052e886d9466cec4fe9fc99a`  
		Last Modified: Mon, 28 Jan 2019 23:38:44 GMT  
		Size: 91.7 MB (91656841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4badf9d1693b3253108965044b07b026c3fefa1ff6c8ec55323750b993ef89fa`  
		Last Modified: Mon, 28 Jan 2019 23:38:24 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:1.7.2`

```console
$ docker pull znc@sha256:fa31e7686e718182d412ee5e5f63d4fd08c628b124ae19570f14bc54543f1c03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:1.7.2` - linux; amd64

```console
$ docker pull znc@sha256:d03087b72587d6bc485e0222971191a7f8c338342b5bfa5bcab3f299ffcb0018
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.5 MB (122542102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a40ef6371f6446f4ed4f65a90ce3091fec7dfcc8447d9d5d5c291ff8358274fc`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:53:52 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Fri, 21 Dec 2018 00:53:52 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO
# Fri, 21 Dec 2018 00:53:52 GMT
ARG MAKEFLAGS=
# Mon, 28 Jan 2019 23:31:22 GMT
ENV ZNC_VERSION=1.7.2
# Mon, 28 Jan 2019 23:37:35 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Mon, 28 Jan 2019 23:37:35 GMT
COPY file:15e47c9cc6835e0818d6896aa6537a8adda40ff814c287685183c73fa9df4713 in / 
# Mon, 28 Jan 2019 23:37:35 GMT
COPY file:dfda6761eff5635f2f7a6c1d540b2b14ea67514867578d12226629a780844185 in /startup-sequence/ 
# Mon, 28 Jan 2019 23:37:36 GMT
COPY file:809dccdc6a2a9f5e2a058644d9f71b2f167ab0f237913902896fef13b6315814 in /startup-sequence/ 
# Mon, 28 Jan 2019 23:37:36 GMT
COPY file:5e0f569cb97b27c9961c87a9748eb2e2fb3f63b5d43ad5d7079dc7fb8c9ff62f in /startup-sequence/ 
# Mon, 28 Jan 2019 23:37:36 GMT
COPY file:f4f3dd4e08ff4e970f8bceb98bad9970e3424c0b6215921b3e67dd3c3dbd2085 in /startup-sequence/ 
# Mon, 28 Jan 2019 23:37:36 GMT
VOLUME [/znc-data]
# Mon, 28 Jan 2019 23:37:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 28 Jan 2019 23:38:02 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         libressl-dev         perl         python3
# Mon, 28 Jan 2019 23:38:03 GMT
COPY file:765473e154cb7674cba99ed8ee42b51feda01581be870e3d1e7e4930b82a0f37 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230a8b93b537384b3a359b07da9ef6f27cbabee5bb922c10921b5e857c3954ad`  
		Last Modified: Mon, 28 Jan 2019 23:38:18 GMT  
		Size: 28.7 MB (28676591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02a4eec18db79942c13224766cfef2ea8f6e3154a11e0d728aff8da7b1884fe`  
		Last Modified: Mon, 28 Jan 2019 23:38:11 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07b1685205049d1d594870b51962fa25026bfef4db58550963e8816a32aedbfe`  
		Last Modified: Mon, 28 Jan 2019 23:38:11 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780c4bdcf740df3573f45db5a0f8f167a2627b9fdd0b32160bf49b6863accee2`  
		Last Modified: Mon, 28 Jan 2019 23:38:11 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b77686a2d005da0e178dd8edbdbb2f13834fd273d1f9945488fae7b57adde3`  
		Last Modified: Mon, 28 Jan 2019 23:38:11 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781b52f3e98199cff0bfe0caed960415a7d9ffe4c1ff9f0953b69a936ba09eb4`  
		Last Modified: Mon, 28 Jan 2019 23:38:11 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a17b2eb8bba204594e174481cae607be25ecd47052e886d9466cec4fe9fc99a`  
		Last Modified: Mon, 28 Jan 2019 23:38:44 GMT  
		Size: 91.7 MB (91656841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4badf9d1693b3253108965044b07b026c3fefa1ff6c8ec55323750b993ef89fa`  
		Last Modified: Mon, 28 Jan 2019 23:38:24 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:1.7.2-slim`

```console
$ docker pull znc@sha256:fd2f13f60a81f6e7da3805dc41251cb708c45eb547b0e033cca62f8dce634089
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:1.7.2-slim` - linux; amd64

```console
$ docker pull znc@sha256:066b58d62199a3910731bd7850a07292b0e74255cc4c4489a65787a803b02e29
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.9 MB (30884930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cac05579309cd3aa609fed1a92fa953ef7e3dc75bf7097bdf3de8a75fdbf0aa`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:53:52 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Fri, 21 Dec 2018 00:53:52 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO
# Fri, 21 Dec 2018 00:53:52 GMT
ARG MAKEFLAGS=
# Mon, 28 Jan 2019 23:31:22 GMT
ENV ZNC_VERSION=1.7.2
# Mon, 28 Jan 2019 23:37:35 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Mon, 28 Jan 2019 23:37:35 GMT
COPY file:15e47c9cc6835e0818d6896aa6537a8adda40ff814c287685183c73fa9df4713 in / 
# Mon, 28 Jan 2019 23:37:35 GMT
COPY file:dfda6761eff5635f2f7a6c1d540b2b14ea67514867578d12226629a780844185 in /startup-sequence/ 
# Mon, 28 Jan 2019 23:37:36 GMT
COPY file:809dccdc6a2a9f5e2a058644d9f71b2f167ab0f237913902896fef13b6315814 in /startup-sequence/ 
# Mon, 28 Jan 2019 23:37:36 GMT
COPY file:5e0f569cb97b27c9961c87a9748eb2e2fb3f63b5d43ad5d7079dc7fb8c9ff62f in /startup-sequence/ 
# Mon, 28 Jan 2019 23:37:36 GMT
COPY file:f4f3dd4e08ff4e970f8bceb98bad9970e3424c0b6215921b3e67dd3c3dbd2085 in /startup-sequence/ 
# Mon, 28 Jan 2019 23:37:36 GMT
VOLUME [/znc-data]
# Mon, 28 Jan 2019 23:37:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230a8b93b537384b3a359b07da9ef6f27cbabee5bb922c10921b5e857c3954ad`  
		Last Modified: Mon, 28 Jan 2019 23:38:18 GMT  
		Size: 28.7 MB (28676591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02a4eec18db79942c13224766cfef2ea8f6e3154a11e0d728aff8da7b1884fe`  
		Last Modified: Mon, 28 Jan 2019 23:38:11 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07b1685205049d1d594870b51962fa25026bfef4db58550963e8816a32aedbfe`  
		Last Modified: Mon, 28 Jan 2019 23:38:11 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780c4bdcf740df3573f45db5a0f8f167a2627b9fdd0b32160bf49b6863accee2`  
		Last Modified: Mon, 28 Jan 2019 23:38:11 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b77686a2d005da0e178dd8edbdbb2f13834fd273d1f9945488fae7b57adde3`  
		Last Modified: Mon, 28 Jan 2019 23:38:11 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781b52f3e98199cff0bfe0caed960415a7d9ffe4c1ff9f0953b69a936ba09eb4`  
		Last Modified: Mon, 28 Jan 2019 23:38:11 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:1.7-slim`

```console
$ docker pull znc@sha256:fd2f13f60a81f6e7da3805dc41251cb708c45eb547b0e033cca62f8dce634089
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:1.7-slim` - linux; amd64

```console
$ docker pull znc@sha256:066b58d62199a3910731bd7850a07292b0e74255cc4c4489a65787a803b02e29
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.9 MB (30884930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cac05579309cd3aa609fed1a92fa953ef7e3dc75bf7097bdf3de8a75fdbf0aa`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:53:52 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Fri, 21 Dec 2018 00:53:52 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO
# Fri, 21 Dec 2018 00:53:52 GMT
ARG MAKEFLAGS=
# Mon, 28 Jan 2019 23:31:22 GMT
ENV ZNC_VERSION=1.7.2
# Mon, 28 Jan 2019 23:37:35 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Mon, 28 Jan 2019 23:37:35 GMT
COPY file:15e47c9cc6835e0818d6896aa6537a8adda40ff814c287685183c73fa9df4713 in / 
# Mon, 28 Jan 2019 23:37:35 GMT
COPY file:dfda6761eff5635f2f7a6c1d540b2b14ea67514867578d12226629a780844185 in /startup-sequence/ 
# Mon, 28 Jan 2019 23:37:36 GMT
COPY file:809dccdc6a2a9f5e2a058644d9f71b2f167ab0f237913902896fef13b6315814 in /startup-sequence/ 
# Mon, 28 Jan 2019 23:37:36 GMT
COPY file:5e0f569cb97b27c9961c87a9748eb2e2fb3f63b5d43ad5d7079dc7fb8c9ff62f in /startup-sequence/ 
# Mon, 28 Jan 2019 23:37:36 GMT
COPY file:f4f3dd4e08ff4e970f8bceb98bad9970e3424c0b6215921b3e67dd3c3dbd2085 in /startup-sequence/ 
# Mon, 28 Jan 2019 23:37:36 GMT
VOLUME [/znc-data]
# Mon, 28 Jan 2019 23:37:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230a8b93b537384b3a359b07da9ef6f27cbabee5bb922c10921b5e857c3954ad`  
		Last Modified: Mon, 28 Jan 2019 23:38:18 GMT  
		Size: 28.7 MB (28676591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02a4eec18db79942c13224766cfef2ea8f6e3154a11e0d728aff8da7b1884fe`  
		Last Modified: Mon, 28 Jan 2019 23:38:11 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07b1685205049d1d594870b51962fa25026bfef4db58550963e8816a32aedbfe`  
		Last Modified: Mon, 28 Jan 2019 23:38:11 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780c4bdcf740df3573f45db5a0f8f167a2627b9fdd0b32160bf49b6863accee2`  
		Last Modified: Mon, 28 Jan 2019 23:38:11 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b77686a2d005da0e178dd8edbdbb2f13834fd273d1f9945488fae7b57adde3`  
		Last Modified: Mon, 28 Jan 2019 23:38:11 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781b52f3e98199cff0bfe0caed960415a7d9ffe4c1ff9f0953b69a936ba09eb4`  
		Last Modified: Mon, 28 Jan 2019 23:38:11 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:latest`

```console
$ docker pull znc@sha256:c9edee3e820c22b44c192653b9cf8483348acd0b744d0a6195c6bf86eecc5a9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `znc:latest` - linux; amd64

```console
$ docker pull znc@sha256:0e6b21d1a951f77c2d4360f194e532c489da7db00eb9e4bd9796b3e56d9f252d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.5 MB (122491901 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:304f8cd4bc0c5e50d5a29bc5e7b5ee4adfd664ee62b6a73ff39e046e058a99da`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:53:52 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Fri, 21 Dec 2018 00:53:52 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO
# Fri, 21 Dec 2018 00:53:52 GMT
ARG MAKEFLAGS=
# Fri, 21 Dec 2018 00:53:53 GMT
ENV ZNC_VERSION=1.7.1
# Fri, 21 Dec 2018 00:58:51 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Fri, 21 Dec 2018 00:58:51 GMT
COPY file:15e47c9cc6835e0818d6896aa6537a8adda40ff814c287685183c73fa9df4713 in / 
# Fri, 21 Dec 2018 00:58:51 GMT
COPY file:dfda6761eff5635f2f7a6c1d540b2b14ea67514867578d12226629a780844185 in /startup-sequence/ 
# Fri, 21 Dec 2018 00:58:51 GMT
COPY file:809dccdc6a2a9f5e2a058644d9f71b2f167ab0f237913902896fef13b6315814 in /startup-sequence/ 
# Fri, 21 Dec 2018 00:58:52 GMT
COPY file:5e0f569cb97b27c9961c87a9748eb2e2fb3f63b5d43ad5d7079dc7fb8c9ff62f in /startup-sequence/ 
# Fri, 21 Dec 2018 00:58:52 GMT
COPY file:f4f3dd4e08ff4e970f8bceb98bad9970e3424c0b6215921b3e67dd3c3dbd2085 in /startup-sequence/ 
# Fri, 21 Dec 2018 00:58:52 GMT
VOLUME [/znc-data]
# Fri, 21 Dec 2018 00:58:52 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 00:59:15 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         libressl-dev         perl         python3
# Fri, 21 Dec 2018 00:59:15 GMT
COPY file:765473e154cb7674cba99ed8ee42b51feda01581be870e3d1e7e4930b82a0f37 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:690613135b95347caad32c923e4308945c3b8a5081553ec06e55eb01c21c7e19`  
		Last Modified: Fri, 21 Dec 2018 00:59:31 GMT  
		Size: 28.6 MB (28626938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:108ce576769112880f4ae94b1ebe82a4c50e19d2a4fc84a24b6cf90fb2e0dbe7`  
		Last Modified: Fri, 21 Dec 2018 00:59:24 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1aa4543a189bed073048df92b98c61738288eff177e2fea4619525e46dc11f39`  
		Last Modified: Fri, 21 Dec 2018 00:59:24 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3b5b43549cc9882ad5e583338dd3241821dc99ee1dc5b9a3ebc72a0fea93028`  
		Last Modified: Fri, 21 Dec 2018 00:59:24 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:265efb52d394560c80c6f9cda573edb48c465a0e44ffb6a7fbd2034c76c64a25`  
		Last Modified: Fri, 21 Dec 2018 00:59:24 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087c291d2aae329548e2e0a32a9f1491dca263324d1e9fa4651332dee2d50f48`  
		Last Modified: Fri, 21 Dec 2018 00:59:24 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f2230358c841b4b07e50175ed3ae9882c65011fdc7148a243feb8e37a33891`  
		Last Modified: Fri, 21 Dec 2018 00:59:58 GMT  
		Size: 91.7 MB (91656291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b83869e7a05bea7cfe4f46725132c12692dce781a38d3b5bf4803f36d0ba9ecb`  
		Last Modified: Fri, 21 Dec 2018 00:59:36 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `znc:latest` - linux; arm variant v6

```console
$ docker pull znc@sha256:f507d5a1ec52046630b3429e101b2e71620d32c692f3a666061d0d7bf1d46551
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.8 MB (109803150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2128a99fb1e954d87a7af5c9909d4abbc1a774a33ecd71ce969b25389f58de00`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 21 Dec 2018 08:49:49 GMT
ADD file:38d34e3ff051a263eab785aca5763d350b82063f0356752117e168349d9e3811 in / 
# Fri, 21 Dec 2018 08:49:50 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 08:49:50 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 09:42:56 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Fri, 21 Dec 2018 09:42:57 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO
# Fri, 21 Dec 2018 09:42:57 GMT
ARG MAKEFLAGS=
# Fri, 21 Dec 2018 09:42:57 GMT
ENV ZNC_VERSION=1.7.1
# Fri, 21 Dec 2018 09:51:17 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Fri, 21 Dec 2018 09:51:18 GMT
COPY file:15e47c9cc6835e0818d6896aa6537a8adda40ff814c287685183c73fa9df4713 in / 
# Fri, 21 Dec 2018 09:51:18 GMT
COPY file:dfda6761eff5635f2f7a6c1d540b2b14ea67514867578d12226629a780844185 in /startup-sequence/ 
# Fri, 21 Dec 2018 09:51:19 GMT
COPY file:809dccdc6a2a9f5e2a058644d9f71b2f167ab0f237913902896fef13b6315814 in /startup-sequence/ 
# Fri, 21 Dec 2018 09:51:19 GMT
COPY file:5e0f569cb97b27c9961c87a9748eb2e2fb3f63b5d43ad5d7079dc7fb8c9ff62f in /startup-sequence/ 
# Fri, 21 Dec 2018 09:51:19 GMT
COPY file:f4f3dd4e08ff4e970f8bceb98bad9970e3424c0b6215921b3e67dd3c3dbd2085 in /startup-sequence/ 
# Fri, 21 Dec 2018 09:51:20 GMT
VOLUME [/znc-data]
# Fri, 21 Dec 2018 09:51:20 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 09:51:49 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         libressl-dev         perl         python3
# Fri, 21 Dec 2018 09:51:51 GMT
COPY file:765473e154cb7674cba99ed8ee42b51feda01581be870e3d1e7e4930b82a0f37 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:5b678b67777fc7983d3563839cc9d511de267ec6de1961f2b590d552d8bfa105`  
		Last Modified: Fri, 21 Dec 2018 08:50:18 GMT  
		Size: 2.1 MB (2145782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9f0b2b885d968636a597331169fce72a69964c911558554f1b2a0d21959f34f`  
		Last Modified: Fri, 21 Dec 2018 08:50:17 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c9f3ae4af2b3f1aa64f26c9e9bd4624a23bff2e7b2e11b52233a48d8deaf8d3`  
		Last Modified: Fri, 21 Dec 2018 09:52:13 GMT  
		Size: 27.3 MB (27334782 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d4502bf895ad03f95158f657616d0666899cde8c57d0149cc8623d9fe7fadf8`  
		Last Modified: Fri, 21 Dec 2018 09:52:01 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5318b4df478982eea3d360a50daa911c1d64480eb57a2c213e8d8bf434285872`  
		Last Modified: Fri, 21 Dec 2018 09:52:01 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e83d20aa91520b16ad54887e98b67a0e55ceda2da8ecca2fa68430739ee2413`  
		Last Modified: Fri, 21 Dec 2018 09:52:02 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d7d70047896eb2980af63722ab50a52d8e39359def763188a90a37c31688857`  
		Last Modified: Fri, 21 Dec 2018 09:52:01 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e80d15f5a47c2ffde81cf491d33f2e5c9c6142976fc365dea8f46eb7a2fdca`  
		Last Modified: Fri, 21 Dec 2018 09:52:01 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:430f265553957a85cc19861d19a7d19f8cf5f49ab6c619be393f5712b9e95b4f`  
		Last Modified: Fri, 21 Dec 2018 09:52:50 GMT  
		Size: 80.3 MB (80320737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb8d53361cd315d0a146d92f8d736b4f7cfade494b8dd754fb79c66ea13cca9`  
		Last Modified: Fri, 21 Dec 2018 09:52:21 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `znc:latest` - linux; arm64 variant v8

```console
$ docker pull znc@sha256:183bc5ad64014bf9f59e49b55d4f308dfe4211480c4ddcf53aa5578dec446cc3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112825133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:166086b6e1dcc0f8cc6f39b8d33dad532199a305b7a45c575d5154b5fc4f1b27`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 21 Dec 2018 09:43:06 GMT
ADD file:79419748674899ac7d5d699fe62f837c69d04af3ceaabbb7951c35c2f0ff46fa in / 
# Fri, 21 Dec 2018 09:43:07 GMT
COPY file:a10c133d8d5e9af3a9a1610709d3ed2f85b1507f1ba5745ac12bb495974e3fe6 in /etc/localtime 
# Fri, 21 Dec 2018 09:43:07 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 10:32:16 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Fri, 21 Dec 2018 10:32:16 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO
# Fri, 21 Dec 2018 10:32:17 GMT
ARG MAKEFLAGS=
# Fri, 21 Dec 2018 10:32:17 GMT
ENV ZNC_VERSION=1.7.1
# Fri, 21 Dec 2018 10:46:30 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Fri, 21 Dec 2018 10:46:30 GMT
COPY file:15e47c9cc6835e0818d6896aa6537a8adda40ff814c287685183c73fa9df4713 in / 
# Fri, 21 Dec 2018 10:46:31 GMT
COPY file:dfda6761eff5635f2f7a6c1d540b2b14ea67514867578d12226629a780844185 in /startup-sequence/ 
# Fri, 21 Dec 2018 10:46:31 GMT
COPY file:809dccdc6a2a9f5e2a058644d9f71b2f167ab0f237913902896fef13b6315814 in /startup-sequence/ 
# Fri, 21 Dec 2018 10:46:32 GMT
COPY file:5e0f569cb97b27c9961c87a9748eb2e2fb3f63b5d43ad5d7079dc7fb8c9ff62f in /startup-sequence/ 
# Fri, 21 Dec 2018 10:46:32 GMT
COPY file:f4f3dd4e08ff4e970f8bceb98bad9970e3424c0b6215921b3e67dd3c3dbd2085 in /startup-sequence/ 
# Fri, 21 Dec 2018 10:46:33 GMT
VOLUME [/znc-data]
# Fri, 21 Dec 2018 10:46:33 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 21 Dec 2018 10:47:20 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         libressl-dev         perl         python3
# Fri, 21 Dec 2018 10:47:22 GMT
COPY file:765473e154cb7674cba99ed8ee42b51feda01581be870e3d1e7e4930b82a0f37 in /startup-sequence/ 
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
	-	`sha256:351ef3bc1042c1324131ed1046ad92f5049bfdeda9114fc9483f20f1948edc67`  
		Last Modified: Fri, 21 Dec 2018 10:47:55 GMT  
		Size: 28.0 MB (28005794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb0797c114fd439a5ce23e9b24d0db6d996dde10ab20731df5de0e924012425e`  
		Last Modified: Fri, 21 Dec 2018 10:47:40 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e84205c6ce111c6faa17a14077f1efc6244ec27f46e4e227966db51ccad1527`  
		Last Modified: Fri, 21 Dec 2018 10:47:40 GMT  
		Size: 277.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:562e051bbc30c8f23ca06c32b55603f7a8eb467d1ba53ded58c1f7b158fbf8a3`  
		Last Modified: Fri, 21 Dec 2018 10:47:40 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff9dd0f12a9bcbcd8e518c318bee5b1b78358c7e3df8e5c62b4619a4684beffa`  
		Last Modified: Fri, 21 Dec 2018 10:47:40 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be3c389e7265b5ae78e9539cdaf7bd7080badb3fd13d0cb4da43239e8fa6bc87`  
		Last Modified: Fri, 21 Dec 2018 10:47:40 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f218d95f6a42efbec24371e31bc8f8a7c146d798642d6b1a7b84a8d6d8ac2d4`  
		Last Modified: Fri, 21 Dec 2018 10:48:47 GMT  
		Size: 82.7 MB (82717681 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a8dcf11a344ed9fb2c86712b3593d87c759581783c1b065f06e8cb209277ed1`  
		Last Modified: Fri, 21 Dec 2018 10:48:05 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:slim`

```console
$ docker pull znc@sha256:fd2f13f60a81f6e7da3805dc41251cb708c45eb547b0e033cca62f8dce634089
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:slim` - linux; amd64

```console
$ docker pull znc@sha256:066b58d62199a3910731bd7850a07292b0e74255cc4c4489a65787a803b02e29
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.9 MB (30884930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cac05579309cd3aa609fed1a92fa953ef7e3dc75bf7097bdf3de8a75fdbf0aa`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 21 Dec 2018 00:21:29 GMT
ADD file:2ff00caea4e83dfade726ca47e3c795a1e9acb8ac24e392785c474ecf9a621f2 in / 
# Fri, 21 Dec 2018 00:21:30 GMT
CMD ["/bin/sh"]
# Fri, 21 Dec 2018 00:53:52 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Fri, 21 Dec 2018 00:53:52 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO
# Fri, 21 Dec 2018 00:53:52 GMT
ARG MAKEFLAGS=
# Mon, 28 Jan 2019 23:31:22 GMT
ENV ZNC_VERSION=1.7.2
# Mon, 28 Jan 2019 23:37:35 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Mon, 28 Jan 2019 23:37:35 GMT
COPY file:15e47c9cc6835e0818d6896aa6537a8adda40ff814c287685183c73fa9df4713 in / 
# Mon, 28 Jan 2019 23:37:35 GMT
COPY file:dfda6761eff5635f2f7a6c1d540b2b14ea67514867578d12226629a780844185 in /startup-sequence/ 
# Mon, 28 Jan 2019 23:37:36 GMT
COPY file:809dccdc6a2a9f5e2a058644d9f71b2f167ab0f237913902896fef13b6315814 in /startup-sequence/ 
# Mon, 28 Jan 2019 23:37:36 GMT
COPY file:5e0f569cb97b27c9961c87a9748eb2e2fb3f63b5d43ad5d7079dc7fb8c9ff62f in /startup-sequence/ 
# Mon, 28 Jan 2019 23:37:36 GMT
COPY file:f4f3dd4e08ff4e970f8bceb98bad9970e3424c0b6215921b3e67dd3c3dbd2085 in /startup-sequence/ 
# Mon, 28 Jan 2019 23:37:36 GMT
VOLUME [/znc-data]
# Mon, 28 Jan 2019 23:37:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:cd784148e3483c2c86c50a48e535302ab0288bebd587accf40b714fffd0646b3`  
		Last Modified: Fri, 21 Dec 2018 00:23:44 GMT  
		Size: 2.2 MB (2207025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:230a8b93b537384b3a359b07da9ef6f27cbabee5bb922c10921b5e857c3954ad`  
		Last Modified: Mon, 28 Jan 2019 23:38:18 GMT  
		Size: 28.7 MB (28676591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e02a4eec18db79942c13224766cfef2ea8f6e3154a11e0d728aff8da7b1884fe`  
		Last Modified: Mon, 28 Jan 2019 23:38:11 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07b1685205049d1d594870b51962fa25026bfef4db58550963e8816a32aedbfe`  
		Last Modified: Mon, 28 Jan 2019 23:38:11 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780c4bdcf740df3573f45db5a0f8f167a2627b9fdd0b32160bf49b6863accee2`  
		Last Modified: Mon, 28 Jan 2019 23:38:11 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35b77686a2d005da0e178dd8edbdbb2f13834fd273d1f9945488fae7b57adde3`  
		Last Modified: Mon, 28 Jan 2019 23:38:11 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781b52f3e98199cff0bfe0caed960415a7d9ffe4c1ff9f0953b69a936ba09eb4`  
		Last Modified: Mon, 28 Jan 2019 23:38:11 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
