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
$ docker pull znc@sha256:fa31e7686e718182d412ee5e5f63d4fd08c628b124ae19570f14bc54543f1c03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:latest` - linux; amd64

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
