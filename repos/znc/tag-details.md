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
$ docker pull znc@sha256:4aaef5bbc4808a309704b3f482facb424719f801c5ea676dba2d3402855f843e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:1.7` - linux; amd64

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

## `znc:1.7.1`

```console
$ docker pull znc@sha256:4aaef5bbc4808a309704b3f482facb424719f801c5ea676dba2d3402855f843e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:1.7.1` - linux; amd64

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

## `znc:1.7.1-slim`

```console
$ docker pull znc@sha256:8efe60e282bd2da989b44c17360bb9b327398f24bea9c7f3893c73fadf70ae92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:1.7.1-slim` - linux; amd64

```console
$ docker pull znc@sha256:8d18ee94fddb452848ce492a13c3818bb458ce6daaafa2b3f401e244b536c023
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31282657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab2959dca3c0c7ded3edc742fac48a66f1a44ef60f76b366b9bed862965e43ea`
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

## `znc:1.7-slim`

```console
$ docker pull znc@sha256:8efe60e282bd2da989b44c17360bb9b327398f24bea9c7f3893c73fadf70ae92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:1.7-slim` - linux; amd64

```console
$ docker pull znc@sha256:8d18ee94fddb452848ce492a13c3818bb458ce6daaafa2b3f401e244b536c023
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31282657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab2959dca3c0c7ded3edc742fac48a66f1a44ef60f76b366b9bed862965e43ea`
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

## `znc:latest`

```console
$ docker pull znc@sha256:a3d6b638f982b3145e2d55f182b8415081d7ff93f50c34c970b1075caf9a6dac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `znc:latest` - linux; amd64

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

### `znc:latest` - linux; arm64 variant v8

```console
$ docker pull znc@sha256:19682cb7b02fe282ed4bed9d7b76912134390f9e3db5f738827c02e5ed24f354
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.0 MB (111955139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea41be78196b6e8bbd1029dc4559f974cc27d34471c576a0a5beae48b2edf2ae`
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
# Wed, 11 Jul 2018 09:57:05 GMT
ENV ZNC_VERSION=1.7.0
# Wed, 11 Jul 2018 10:07:55 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Wed, 11 Jul 2018 10:07:57 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Wed, 11 Jul 2018 10:07:58 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Wed, 11 Jul 2018 10:07:59 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Wed, 11 Jul 2018 10:08:00 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Wed, 11 Jul 2018 10:08:11 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Wed, 11 Jul 2018 10:08:12 GMT
VOLUME [/znc-data]
# Wed, 11 Jul 2018 10:08:13 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 11 Jul 2018 10:09:07 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         libressl-dev         perl         python3
# Wed, 11 Jul 2018 10:09:09 GMT
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
	-	`sha256:61504c6f11a46db66a0cc7da83a45ae234d6a6192440cc706c7330c8d00d6bae`  
		Last Modified: Wed, 11 Jul 2018 10:09:51 GMT  
		Size: 28.5 MB (28521665 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc152283c559b8cad70c4fd03b6a716f314482c22eae7411564b5f1d6c9e021a`  
		Last Modified: Wed, 11 Jul 2018 10:09:38 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081606029f7ab2486f3c32fd855d7a951af60f179edb9e8231b2269aafdcc496`  
		Last Modified: Wed, 11 Jul 2018 10:09:38 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa52ce5a10d6454fb6ef2a8204aa07f1d48a8a755a4661d451a2d57cdecba565`  
		Last Modified: Wed, 11 Jul 2018 10:09:38 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93cd3f0ad65b35befcb4674268a483c30e2ba6009d2a8b9211672ab9fab21e58`  
		Last Modified: Wed, 11 Jul 2018 10:09:38 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b38e8c8163515600409d0e28ab6c4442c4198c890f0c687b41830a3931496868`  
		Last Modified: Wed, 11 Jul 2018 10:09:38 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d36c4bacd7d4c175c3b1eddbe460df8c393e9db0ec06654a2aedea358f53abe`  
		Last Modified: Wed, 11 Jul 2018 10:11:20 GMT  
		Size: 81.4 MB (81442793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d63eaeb6024c74522ae2e6934a6bcfcd081dc560a7bccb76b0830ce3ea8c28f`  
		Last Modified: Wed, 11 Jul 2018 10:10:43 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:slim`

```console
$ docker pull znc@sha256:8efe60e282bd2da989b44c17360bb9b327398f24bea9c7f3893c73fadf70ae92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `znc:slim` - linux; amd64

```console
$ docker pull znc@sha256:8d18ee94fddb452848ce492a13c3818bb458ce6daaafa2b3f401e244b536c023
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.3 MB (31282657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab2959dca3c0c7ded3edc742fac48a66f1a44ef60f76b366b9bed862965e43ea`
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
