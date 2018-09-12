<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `znc`

-	[`znc:1.7`](#znc17)
-	[`znc:1.7.1`](#znc171)
-	[`znc:1.7.1-slim`](#znc171-slim)
-	[`znc:1.7-slim`](#znc17-slim)
-	[`znc:latest`](#znclatest)
-	[`znc:slim`](#zncslim)

## `znc:1.7`

```console
$ docker pull znc@sha256:d2f7e1f81a316c9b88377283864cefaba1cb173554315cc8cbf6f9c4d8db34b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `znc:1.7` - linux; amd64

```console
$ docker pull znc@sha256:0f4463bcf5d89cf5f9384c246d6f444e3f9ac07177d2f426af9cecd0b48b00c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.9 MB (120875711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cc23d8b416c3b2ceff9161ab60ea08eae4898b7ca9e309ee9d5cc481767780e`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:37:42 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Tue, 11 Sep 2018 22:37:43 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO
# Tue, 11 Sep 2018 22:37:43 GMT
ARG MAKEFLAGS=
# Tue, 11 Sep 2018 22:37:43 GMT
ENV ZNC_VERSION=1.7.1
# Tue, 11 Sep 2018 22:42:32 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Tue, 11 Sep 2018 22:42:33 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Tue, 11 Sep 2018 22:42:33 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Tue, 11 Sep 2018 22:42:33 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Tue, 11 Sep 2018 22:42:34 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Tue, 11 Sep 2018 22:42:34 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Tue, 11 Sep 2018 22:42:35 GMT
VOLUME [/znc-data]
# Tue, 11 Sep 2018 22:42:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Sep 2018 22:42:56 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         libressl-dev         perl         python3
# Tue, 11 Sep 2018 22:43:00 GMT
COPY file:d1446fead8db29053b5a4bf7f2af913ddb4d8b1c90f97cc6c099fc74c4322109 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a97133ab483ae3dbd0ddf579490eac30cc524b06de4f3472fba29153481e570`  
		Last Modified: Tue, 11 Sep 2018 22:43:20 GMT  
		Size: 28.0 MB (27960030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6287f420b8cd8ffd09cb8b5bdbb43c01c28f12d15315b54ede0278ffbcc7c8c`  
		Last Modified: Tue, 11 Sep 2018 22:43:12 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2175017d700f45f8dc272c05680346174e043dc5b6f59fa7b1813e8daf4d49`  
		Last Modified: Tue, 11 Sep 2018 22:43:12 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b181700fbc01c2d19e7019a1848be7f870b3ad237fb650509dcf54f23a670a93`  
		Last Modified: Tue, 11 Sep 2018 22:43:12 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9836df5c3fc3c6df36757e38f70aa01d8b3829284b33ca85baeb5ebddf42d9ab`  
		Last Modified: Tue, 11 Sep 2018 22:43:12 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8320dfdeca5b7d0a2e8a89bea801a016b48da283ca47bd9ca2e13f5f3905fcb9`  
		Last Modified: Tue, 11 Sep 2018 22:43:12 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c1b57a703da3335fe2fa9bcf7b167679948ce8127b9dd825ddb348ff9684a7`  
		Last Modified: Tue, 11 Sep 2018 22:43:59 GMT  
		Size: 90.8 MB (90806858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8cd8c6bc87ead811a6f34106fcdac70057b0adb44d2b6f2d147c4e1f1e780f`  
		Last Modified: Tue, 11 Sep 2018 22:43:41 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `znc:1.7` - linux; arm64 variant v8

```console
$ docker pull znc@sha256:6413efc2a539ec352a995dd7296dac54a9fe68a9b17d338ac1cb9b4455f7d8bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.1 MB (112145475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44655976ffa4152acf398ec6d2b14715aa481e107b5379593922f365bb4c1465`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 09:56:52 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Wed, 11 Jul 2018 09:56:53 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO
# Wed, 11 Jul 2018 09:56:54 GMT
ARG MAKEFLAGS=
# Sat, 21 Jul 2018 12:29:14 GMT
ENV ZNC_VERSION=1.7.1
# Sat, 21 Jul 2018 12:42:24 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Sat, 21 Jul 2018 12:42:25 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Sat, 21 Jul 2018 12:42:26 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Sat, 21 Jul 2018 12:42:27 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Sat, 21 Jul 2018 12:42:28 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Sat, 21 Jul 2018 12:42:29 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Sat, 21 Jul 2018 12:42:29 GMT
VOLUME [/znc-data]
# Sat, 21 Jul 2018 12:42:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 21 Jul 2018 12:43:06 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         libressl-dev         perl         python3
# Sat, 21 Jul 2018 12:43:08 GMT
COPY file:d1446fead8db29053b5a4bf7f2af913ddb4d8b1c90f97cc6c099fc74c4322109 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561570bc00e073ccea95404f611bd7accfde1b7cbe21b49276aab26f94c07fa4`  
		Last Modified: Sat, 21 Jul 2018 12:43:46 GMT  
		Size: 28.7 MB (28714849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e61065298b3ecc79a0ab5681109f229576c6e4741be832f7666db39985ab4dda`  
		Last Modified: Sat, 21 Jul 2018 12:43:33 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dee37c50568cc7cd2ed921b6eae634687112f5806d24fae7175434e9d82d344`  
		Last Modified: Sat, 21 Jul 2018 12:43:33 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2f5ea31177b735c510269f9d32d73758e2470ec9abe94991ae0d34f7dc3b650`  
		Last Modified: Sat, 21 Jul 2018 12:43:33 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:005643b3a8653695d1a8e375111b35053e302071a884c24b9bf1eace1be04f8a`  
		Last Modified: Sat, 21 Jul 2018 12:43:33 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c4bff3576f1c9ae479f2c5257ba0729afb318958faaacee7bce9fd57bc8677`  
		Last Modified: Sat, 21 Jul 2018 12:43:33 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84d81694bde27db1f8348f15dd5943cff897b4aeff6cd0d154ba424b9cc91c4`  
		Last Modified: Sat, 21 Jul 2018 12:45:42 GMT  
		Size: 81.4 MB (81439951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4386d359c59766339289da7d58166aca62796b72a8128d137c35db4227929ec`  
		Last Modified: Sat, 21 Jul 2018 12:44:46 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:1.7.1`

```console
$ docker pull znc@sha256:d2f7e1f81a316c9b88377283864cefaba1cb173554315cc8cbf6f9c4d8db34b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `znc:1.7.1` - linux; amd64

```console
$ docker pull znc@sha256:0f4463bcf5d89cf5f9384c246d6f444e3f9ac07177d2f426af9cecd0b48b00c2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **120.9 MB (120875711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cc23d8b416c3b2ceff9161ab60ea08eae4898b7ca9e309ee9d5cc481767780e`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:37:42 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Tue, 11 Sep 2018 22:37:43 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO
# Tue, 11 Sep 2018 22:37:43 GMT
ARG MAKEFLAGS=
# Tue, 11 Sep 2018 22:37:43 GMT
ENV ZNC_VERSION=1.7.1
# Tue, 11 Sep 2018 22:42:32 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Tue, 11 Sep 2018 22:42:33 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Tue, 11 Sep 2018 22:42:33 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Tue, 11 Sep 2018 22:42:33 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Tue, 11 Sep 2018 22:42:34 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Tue, 11 Sep 2018 22:42:34 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Tue, 11 Sep 2018 22:42:35 GMT
VOLUME [/znc-data]
# Tue, 11 Sep 2018 22:42:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 11 Sep 2018 22:42:56 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         libressl-dev         perl         python3
# Tue, 11 Sep 2018 22:43:00 GMT
COPY file:d1446fead8db29053b5a4bf7f2af913ddb4d8b1c90f97cc6c099fc74c4322109 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a97133ab483ae3dbd0ddf579490eac30cc524b06de4f3472fba29153481e570`  
		Last Modified: Tue, 11 Sep 2018 22:43:20 GMT  
		Size: 28.0 MB (27960030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6287f420b8cd8ffd09cb8b5bdbb43c01c28f12d15315b54ede0278ffbcc7c8c`  
		Last Modified: Tue, 11 Sep 2018 22:43:12 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2175017d700f45f8dc272c05680346174e043dc5b6f59fa7b1813e8daf4d49`  
		Last Modified: Tue, 11 Sep 2018 22:43:12 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b181700fbc01c2d19e7019a1848be7f870b3ad237fb650509dcf54f23a670a93`  
		Last Modified: Tue, 11 Sep 2018 22:43:12 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9836df5c3fc3c6df36757e38f70aa01d8b3829284b33ca85baeb5ebddf42d9ab`  
		Last Modified: Tue, 11 Sep 2018 22:43:12 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8320dfdeca5b7d0a2e8a89bea801a016b48da283ca47bd9ca2e13f5f3905fcb9`  
		Last Modified: Tue, 11 Sep 2018 22:43:12 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3c1b57a703da3335fe2fa9bcf7b167679948ce8127b9dd825ddb348ff9684a7`  
		Last Modified: Tue, 11 Sep 2018 22:43:59 GMT  
		Size: 90.8 MB (90806858 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b8cd8c6bc87ead811a6f34106fcdac70057b0adb44d2b6f2d147c4e1f1e780f`  
		Last Modified: Tue, 11 Sep 2018 22:43:41 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `znc:1.7.1` - linux; arm64 variant v8

```console
$ docker pull znc@sha256:6413efc2a539ec352a995dd7296dac54a9fe68a9b17d338ac1cb9b4455f7d8bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.1 MB (112145475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44655976ffa4152acf398ec6d2b14715aa481e107b5379593922f365bb4c1465`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 09:56:52 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Wed, 11 Jul 2018 09:56:53 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO
# Wed, 11 Jul 2018 09:56:54 GMT
ARG MAKEFLAGS=
# Sat, 21 Jul 2018 12:29:14 GMT
ENV ZNC_VERSION=1.7.1
# Sat, 21 Jul 2018 12:42:24 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Sat, 21 Jul 2018 12:42:25 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Sat, 21 Jul 2018 12:42:26 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Sat, 21 Jul 2018 12:42:27 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Sat, 21 Jul 2018 12:42:28 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Sat, 21 Jul 2018 12:42:29 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Sat, 21 Jul 2018 12:42:29 GMT
VOLUME [/znc-data]
# Sat, 21 Jul 2018 12:42:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 21 Jul 2018 12:43:06 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         libressl-dev         perl         python3
# Sat, 21 Jul 2018 12:43:08 GMT
COPY file:d1446fead8db29053b5a4bf7f2af913ddb4d8b1c90f97cc6c099fc74c4322109 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561570bc00e073ccea95404f611bd7accfde1b7cbe21b49276aab26f94c07fa4`  
		Last Modified: Sat, 21 Jul 2018 12:43:46 GMT  
		Size: 28.7 MB (28714849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e61065298b3ecc79a0ab5681109f229576c6e4741be832f7666db39985ab4dda`  
		Last Modified: Sat, 21 Jul 2018 12:43:33 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dee37c50568cc7cd2ed921b6eae634687112f5806d24fae7175434e9d82d344`  
		Last Modified: Sat, 21 Jul 2018 12:43:33 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2f5ea31177b735c510269f9d32d73758e2470ec9abe94991ae0d34f7dc3b650`  
		Last Modified: Sat, 21 Jul 2018 12:43:33 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:005643b3a8653695d1a8e375111b35053e302071a884c24b9bf1eace1be04f8a`  
		Last Modified: Sat, 21 Jul 2018 12:43:33 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c4bff3576f1c9ae479f2c5257ba0729afb318958faaacee7bce9fd57bc8677`  
		Last Modified: Sat, 21 Jul 2018 12:43:33 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84d81694bde27db1f8348f15dd5943cff897b4aeff6cd0d154ba424b9cc91c4`  
		Last Modified: Sat, 21 Jul 2018 12:45:42 GMT  
		Size: 81.4 MB (81439951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4386d359c59766339289da7d58166aca62796b72a8128d137c35db4227929ec`  
		Last Modified: Sat, 21 Jul 2018 12:44:46 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:1.7.1-slim`

```console
$ docker pull znc@sha256:35eb6a7455954574c27205aaa4dcdfec68d05defc5154617c0f059c22bf9bcfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `znc:1.7.1-slim` - linux; amd64

```console
$ docker pull znc@sha256:e3d16d434919e34e799f668ae315621a6dba5bbad4399b64f5150a686f6bc7c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.1 MB (30068520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9540b97b890fbb971d03e4872c2fdf6d30c98ded1253753d9c2405d44f7cc31`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:37:42 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Tue, 11 Sep 2018 22:37:43 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO
# Tue, 11 Sep 2018 22:37:43 GMT
ARG MAKEFLAGS=
# Tue, 11 Sep 2018 22:37:43 GMT
ENV ZNC_VERSION=1.7.1
# Tue, 11 Sep 2018 22:42:32 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Tue, 11 Sep 2018 22:42:33 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Tue, 11 Sep 2018 22:42:33 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Tue, 11 Sep 2018 22:42:33 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Tue, 11 Sep 2018 22:42:34 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Tue, 11 Sep 2018 22:42:34 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Tue, 11 Sep 2018 22:42:35 GMT
VOLUME [/znc-data]
# Tue, 11 Sep 2018 22:42:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a97133ab483ae3dbd0ddf579490eac30cc524b06de4f3472fba29153481e570`  
		Last Modified: Tue, 11 Sep 2018 22:43:20 GMT  
		Size: 28.0 MB (27960030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6287f420b8cd8ffd09cb8b5bdbb43c01c28f12d15315b54ede0278ffbcc7c8c`  
		Last Modified: Tue, 11 Sep 2018 22:43:12 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2175017d700f45f8dc272c05680346174e043dc5b6f59fa7b1813e8daf4d49`  
		Last Modified: Tue, 11 Sep 2018 22:43:12 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b181700fbc01c2d19e7019a1848be7f870b3ad237fb650509dcf54f23a670a93`  
		Last Modified: Tue, 11 Sep 2018 22:43:12 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9836df5c3fc3c6df36757e38f70aa01d8b3829284b33ca85baeb5ebddf42d9ab`  
		Last Modified: Tue, 11 Sep 2018 22:43:12 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8320dfdeca5b7d0a2e8a89bea801a016b48da283ca47bd9ca2e13f5f3905fcb9`  
		Last Modified: Tue, 11 Sep 2018 22:43:12 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `znc:1.7.1-slim` - linux; arm64 variant v8

```console
$ docker pull znc@sha256:f8f4e0d96903e4bd83928bdbeea7fe04a58473a5bde4341bfce3296c01b52a04
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30705194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fa15ab37492ee0668e5b303b43f7dcb0204b4e843733864837736011ab6362d`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 09:56:52 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Wed, 11 Jul 2018 09:56:53 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO
# Wed, 11 Jul 2018 09:56:54 GMT
ARG MAKEFLAGS=
# Sat, 21 Jul 2018 12:29:14 GMT
ENV ZNC_VERSION=1.7.1
# Sat, 21 Jul 2018 12:42:24 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Sat, 21 Jul 2018 12:42:25 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Sat, 21 Jul 2018 12:42:26 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Sat, 21 Jul 2018 12:42:27 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Sat, 21 Jul 2018 12:42:28 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Sat, 21 Jul 2018 12:42:29 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Sat, 21 Jul 2018 12:42:29 GMT
VOLUME [/znc-data]
# Sat, 21 Jul 2018 12:42:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561570bc00e073ccea95404f611bd7accfde1b7cbe21b49276aab26f94c07fa4`  
		Last Modified: Sat, 21 Jul 2018 12:43:46 GMT  
		Size: 28.7 MB (28714849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e61065298b3ecc79a0ab5681109f229576c6e4741be832f7666db39985ab4dda`  
		Last Modified: Sat, 21 Jul 2018 12:43:33 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dee37c50568cc7cd2ed921b6eae634687112f5806d24fae7175434e9d82d344`  
		Last Modified: Sat, 21 Jul 2018 12:43:33 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2f5ea31177b735c510269f9d32d73758e2470ec9abe94991ae0d34f7dc3b650`  
		Last Modified: Sat, 21 Jul 2018 12:43:33 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:005643b3a8653695d1a8e375111b35053e302071a884c24b9bf1eace1be04f8a`  
		Last Modified: Sat, 21 Jul 2018 12:43:33 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c4bff3576f1c9ae479f2c5257ba0729afb318958faaacee7bce9fd57bc8677`  
		Last Modified: Sat, 21 Jul 2018 12:43:33 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:1.7-slim`

```console
$ docker pull znc@sha256:35eb6a7455954574c27205aaa4dcdfec68d05defc5154617c0f059c22bf9bcfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `znc:1.7-slim` - linux; amd64

```console
$ docker pull znc@sha256:e3d16d434919e34e799f668ae315621a6dba5bbad4399b64f5150a686f6bc7c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.1 MB (30068520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9540b97b890fbb971d03e4872c2fdf6d30c98ded1253753d9c2405d44f7cc31`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:37:42 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Tue, 11 Sep 2018 22:37:43 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO
# Tue, 11 Sep 2018 22:37:43 GMT
ARG MAKEFLAGS=
# Tue, 11 Sep 2018 22:37:43 GMT
ENV ZNC_VERSION=1.7.1
# Tue, 11 Sep 2018 22:42:32 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Tue, 11 Sep 2018 22:42:33 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Tue, 11 Sep 2018 22:42:33 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Tue, 11 Sep 2018 22:42:33 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Tue, 11 Sep 2018 22:42:34 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Tue, 11 Sep 2018 22:42:34 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Tue, 11 Sep 2018 22:42:35 GMT
VOLUME [/znc-data]
# Tue, 11 Sep 2018 22:42:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a97133ab483ae3dbd0ddf579490eac30cc524b06de4f3472fba29153481e570`  
		Last Modified: Tue, 11 Sep 2018 22:43:20 GMT  
		Size: 28.0 MB (27960030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6287f420b8cd8ffd09cb8b5bdbb43c01c28f12d15315b54ede0278ffbcc7c8c`  
		Last Modified: Tue, 11 Sep 2018 22:43:12 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2175017d700f45f8dc272c05680346174e043dc5b6f59fa7b1813e8daf4d49`  
		Last Modified: Tue, 11 Sep 2018 22:43:12 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b181700fbc01c2d19e7019a1848be7f870b3ad237fb650509dcf54f23a670a93`  
		Last Modified: Tue, 11 Sep 2018 22:43:12 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9836df5c3fc3c6df36757e38f70aa01d8b3829284b33ca85baeb5ebddf42d9ab`  
		Last Modified: Tue, 11 Sep 2018 22:43:12 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8320dfdeca5b7d0a2e8a89bea801a016b48da283ca47bd9ca2e13f5f3905fcb9`  
		Last Modified: Tue, 11 Sep 2018 22:43:12 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `znc:1.7-slim` - linux; arm64 variant v8

```console
$ docker pull znc@sha256:f8f4e0d96903e4bd83928bdbeea7fe04a58473a5bde4341bfce3296c01b52a04
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30705194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fa15ab37492ee0668e5b303b43f7dcb0204b4e843733864837736011ab6362d`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 09:56:52 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Wed, 11 Jul 2018 09:56:53 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO
# Wed, 11 Jul 2018 09:56:54 GMT
ARG MAKEFLAGS=
# Sat, 21 Jul 2018 12:29:14 GMT
ENV ZNC_VERSION=1.7.1
# Sat, 21 Jul 2018 12:42:24 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Sat, 21 Jul 2018 12:42:25 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Sat, 21 Jul 2018 12:42:26 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Sat, 21 Jul 2018 12:42:27 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Sat, 21 Jul 2018 12:42:28 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Sat, 21 Jul 2018 12:42:29 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Sat, 21 Jul 2018 12:42:29 GMT
VOLUME [/znc-data]
# Sat, 21 Jul 2018 12:42:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561570bc00e073ccea95404f611bd7accfde1b7cbe21b49276aab26f94c07fa4`  
		Last Modified: Sat, 21 Jul 2018 12:43:46 GMT  
		Size: 28.7 MB (28714849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e61065298b3ecc79a0ab5681109f229576c6e4741be832f7666db39985ab4dda`  
		Last Modified: Sat, 21 Jul 2018 12:43:33 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dee37c50568cc7cd2ed921b6eae634687112f5806d24fae7175434e9d82d344`  
		Last Modified: Sat, 21 Jul 2018 12:43:33 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2f5ea31177b735c510269f9d32d73758e2470ec9abe94991ae0d34f7dc3b650`  
		Last Modified: Sat, 21 Jul 2018 12:43:33 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:005643b3a8653695d1a8e375111b35053e302071a884c24b9bf1eace1be04f8a`  
		Last Modified: Sat, 21 Jul 2018 12:43:33 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c4bff3576f1c9ae479f2c5257ba0729afb318958faaacee7bce9fd57bc8677`  
		Last Modified: Sat, 21 Jul 2018 12:43:33 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:latest`

```console
$ docker pull znc@sha256:2ad8a067d0463aa8fac5a3f48761680b2d185d02102a94cd859e9c9235dcaaf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `znc:latest` - linux; amd64

```console
$ docker pull znc@sha256:3d106d418da0eb8f0eef112fed2940c9907562c265163ac0842ba2249cd07f9c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.4 MB (121386439 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b831cce8dc11282b7a404dcd1dac53edfe9506cc8cca15706086d1bdea4febd`
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
# Fri, 20 Jul 2018 17:51:21 GMT
ENV ZNC_VERSION=1.7.1
# Fri, 20 Jul 2018 17:57:34 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Fri, 20 Jul 2018 17:57:35 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Fri, 20 Jul 2018 17:57:35 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Fri, 20 Jul 2018 17:57:36 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Fri, 20 Jul 2018 17:57:36 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Fri, 20 Jul 2018 17:57:36 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Fri, 20 Jul 2018 17:57:36 GMT
VOLUME [/znc-data]
# Fri, 20 Jul 2018 17:57:37 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 20 Jul 2018 17:58:15 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         libressl-dev         perl         python3
# Fri, 20 Jul 2018 17:58:16 GMT
COPY file:d1446fead8db29053b5a4bf7f2af913ddb4d8b1c90f97cc6c099fc74c4322109 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:911c6d0c7995e5d9763c1864d54fb6deccda04a55d7955123a8e22dd9d44c497`  
		Last Modified: Fri, 06 Jul 2018 14:16:43 GMT  
		Size: 2.1 MB (2103553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e11d4c87fcb942fda7af568e33c1cc783ed28caa8a6a5dd61f79be9c680115f`  
		Last Modified: Fri, 20 Jul 2018 17:58:53 GMT  
		Size: 29.2 MB (29177789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a3f3a3fcfbd7b8a3000207bb3637e1291326aa2ef52b66d9bf8b2c9d756b99`  
		Last Modified: Fri, 20 Jul 2018 17:58:39 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e4d569fada03ab8b913d413d758383103c88434edaba756c6d9d495805dad5a`  
		Last Modified: Fri, 20 Jul 2018 17:58:39 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad1a1010aac515a903a951585bd777bf6bf63d891adc87248c386dd2c3387756`  
		Last Modified: Fri, 20 Jul 2018 17:58:39 GMT  
		Size: 234.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed0188aad30187ffd174a12dd016a7431eed617835eb60f3d8e0163767357ac1`  
		Last Modified: Fri, 20 Jul 2018 17:58:39 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfd87d008df72e0bec4bc0ef2fe2e029fcd3861bb448a52dfc4694dd099fd6f7`  
		Last Modified: Fri, 20 Jul 2018 17:58:39 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f47ff6bff6a3356e17b0217308ae10823d169360d1c6d452ec718aee3716ccb0`  
		Last Modified: Fri, 20 Jul 2018 18:00:21 GMT  
		Size: 90.1 MB (90103451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b00d880030d5df68840b942515cd276c88aca8e87b0bcb64cf141fa57b52eae5`  
		Last Modified: Fri, 20 Jul 2018 17:59:47 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `znc:latest` - linux; arm64 variant v8

```console
$ docker pull znc@sha256:6413efc2a539ec352a995dd7296dac54a9fe68a9b17d338ac1cb9b4455f7d8bd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.1 MB (112145475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44655976ffa4152acf398ec6d2b14715aa481e107b5379593922f365bb4c1465`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 09:56:52 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Wed, 11 Jul 2018 09:56:53 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO
# Wed, 11 Jul 2018 09:56:54 GMT
ARG MAKEFLAGS=
# Sat, 21 Jul 2018 12:29:14 GMT
ENV ZNC_VERSION=1.7.1
# Sat, 21 Jul 2018 12:42:24 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Sat, 21 Jul 2018 12:42:25 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Sat, 21 Jul 2018 12:42:26 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Sat, 21 Jul 2018 12:42:27 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Sat, 21 Jul 2018 12:42:28 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Sat, 21 Jul 2018 12:42:29 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Sat, 21 Jul 2018 12:42:29 GMT
VOLUME [/znc-data]
# Sat, 21 Jul 2018 12:42:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 21 Jul 2018 12:43:06 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         libressl-dev         perl         python3
# Sat, 21 Jul 2018 12:43:08 GMT
COPY file:d1446fead8db29053b5a4bf7f2af913ddb4d8b1c90f97cc6c099fc74c4322109 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561570bc00e073ccea95404f611bd7accfde1b7cbe21b49276aab26f94c07fa4`  
		Last Modified: Sat, 21 Jul 2018 12:43:46 GMT  
		Size: 28.7 MB (28714849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e61065298b3ecc79a0ab5681109f229576c6e4741be832f7666db39985ab4dda`  
		Last Modified: Sat, 21 Jul 2018 12:43:33 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dee37c50568cc7cd2ed921b6eae634687112f5806d24fae7175434e9d82d344`  
		Last Modified: Sat, 21 Jul 2018 12:43:33 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2f5ea31177b735c510269f9d32d73758e2470ec9abe94991ae0d34f7dc3b650`  
		Last Modified: Sat, 21 Jul 2018 12:43:33 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:005643b3a8653695d1a8e375111b35053e302071a884c24b9bf1eace1be04f8a`  
		Last Modified: Sat, 21 Jul 2018 12:43:33 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c4bff3576f1c9ae479f2c5257ba0729afb318958faaacee7bce9fd57bc8677`  
		Last Modified: Sat, 21 Jul 2018 12:43:33 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84d81694bde27db1f8348f15dd5943cff897b4aeff6cd0d154ba424b9cc91c4`  
		Last Modified: Sat, 21 Jul 2018 12:45:42 GMT  
		Size: 81.4 MB (81439951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4386d359c59766339289da7d58166aca62796b72a8128d137c35db4227929ec`  
		Last Modified: Sat, 21 Jul 2018 12:44:46 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:slim`

```console
$ docker pull znc@sha256:35eb6a7455954574c27205aaa4dcdfec68d05defc5154617c0f059c22bf9bcfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `znc:slim` - linux; amd64

```console
$ docker pull znc@sha256:e3d16d434919e34e799f668ae315621a6dba5bbad4399b64f5150a686f6bc7c9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.1 MB (30068520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9540b97b890fbb971d03e4872c2fdf6d30c98ded1253753d9c2405d44f7cc31`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:38 GMT
ADD file:49f9e47e678d868d5b023482aa8dded71276a241a665c4f8b55ca77269321b34 in / 
# Tue, 11 Sep 2018 22:19:39 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 22:37:42 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Tue, 11 Sep 2018 22:37:43 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO
# Tue, 11 Sep 2018 22:37:43 GMT
ARG MAKEFLAGS=
# Tue, 11 Sep 2018 22:37:43 GMT
ENV ZNC_VERSION=1.7.1
# Tue, 11 Sep 2018 22:42:32 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Tue, 11 Sep 2018 22:42:33 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Tue, 11 Sep 2018 22:42:33 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Tue, 11 Sep 2018 22:42:33 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Tue, 11 Sep 2018 22:42:34 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Tue, 11 Sep 2018 22:42:34 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Tue, 11 Sep 2018 22:42:35 GMT
VOLUME [/znc-data]
# Tue, 11 Sep 2018 22:42:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:c67f3896b22c1378881cbbb9c9d1edfe881fd07f713371835ef46d93c649684d`  
		Last Modified: Tue, 11 Sep 2018 22:21:16 GMT  
		Size: 2.1 MB (2107175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a97133ab483ae3dbd0ddf579490eac30cc524b06de4f3472fba29153481e570`  
		Last Modified: Tue, 11 Sep 2018 22:43:20 GMT  
		Size: 28.0 MB (27960030 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6287f420b8cd8ffd09cb8b5bdbb43c01c28f12d15315b54ede0278ffbcc7c8c`  
		Last Modified: Tue, 11 Sep 2018 22:43:12 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb2175017d700f45f8dc272c05680346174e043dc5b6f59fa7b1813e8daf4d49`  
		Last Modified: Tue, 11 Sep 2018 22:43:12 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b181700fbc01c2d19e7019a1848be7f870b3ad237fb650509dcf54f23a670a93`  
		Last Modified: Tue, 11 Sep 2018 22:43:12 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9836df5c3fc3c6df36757e38f70aa01d8b3829284b33ca85baeb5ebddf42d9ab`  
		Last Modified: Tue, 11 Sep 2018 22:43:12 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8320dfdeca5b7d0a2e8a89bea801a016b48da283ca47bd9ca2e13f5f3905fcb9`  
		Last Modified: Tue, 11 Sep 2018 22:43:12 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `znc:slim` - linux; arm64 variant v8

```console
$ docker pull znc@sha256:f8f4e0d96903e4bd83928bdbeea7fe04a58473a5bde4341bfce3296c01b52a04
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.7 MB (30705194 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fa15ab37492ee0668e5b303b43f7dcb0204b4e843733864837736011ab6362d`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 01 Dec 2017 18:42:42 GMT
ADD file:a6ef3cbbb1c0e5dfc6c3e41d70fd93e548594d9cb42c067e52df46d418c10a79 in / 
# Fri, 01 Dec 2017 18:42:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Fri, 01 Dec 2017 18:42:43 GMT
CMD ["/bin/sh"]
# Wed, 11 Jul 2018 09:56:52 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Wed, 11 Jul 2018 09:56:53 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO
# Wed, 11 Jul 2018 09:56:54 GMT
ARG MAKEFLAGS=
# Sat, 21 Jul 2018 12:29:14 GMT
ENV ZNC_VERSION=1.7.1
# Sat, 21 Jul 2018 12:42:24 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Sat, 21 Jul 2018 12:42:25 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Sat, 21 Jul 2018 12:42:26 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Sat, 21 Jul 2018 12:42:27 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Sat, 21 Jul 2018 12:42:28 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Sat, 21 Jul 2018 12:42:29 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Sat, 21 Jul 2018 12:42:29 GMT
VOLUME [/znc-data]
# Sat, 21 Jul 2018 12:42:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:b78042c299ad99d1e646b18762d4bc22a84c4f88e5bb491ea6293a10f53ddf79`  
		Last Modified: Fri, 01 Dec 2017 18:43:42 GMT  
		Size: 2.0 MB (1988857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fd45b97b6c2a3ac869ae5c99e087e97bc29714b165180e06f0c9116f400f2dd`  
		Last Modified: Fri, 01 Dec 2017 18:43:41 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:561570bc00e073ccea95404f611bd7accfde1b7cbe21b49276aab26f94c07fa4`  
		Last Modified: Sat, 21 Jul 2018 12:43:46 GMT  
		Size: 28.7 MB (28714849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e61065298b3ecc79a0ab5681109f229576c6e4741be832f7666db39985ab4dda`  
		Last Modified: Sat, 21 Jul 2018 12:43:33 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dee37c50568cc7cd2ed921b6eae634687112f5806d24fae7175434e9d82d344`  
		Last Modified: Sat, 21 Jul 2018 12:43:33 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2f5ea31177b735c510269f9d32d73758e2470ec9abe94991ae0d34f7dc3b650`  
		Last Modified: Sat, 21 Jul 2018 12:43:33 GMT  
		Size: 233.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:005643b3a8653695d1a8e375111b35053e302071a884c24b9bf1eace1be04f8a`  
		Last Modified: Sat, 21 Jul 2018 12:43:33 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33c4bff3576f1c9ae479f2c5257ba0729afb318958faaacee7bce9fd57bc8677`  
		Last Modified: Sat, 21 Jul 2018 12:43:33 GMT  
		Size: 349.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
