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
$ docker pull znc@sha256:4aaef5bbc4808a309704b3f482facb424719f801c5ea676dba2d3402855f843e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

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
