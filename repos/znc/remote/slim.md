## `znc:slim`

```console
$ docker pull znc@sha256:72ef6cd5c03642695448eaa6a0de9005f1ae934ce3c28a49b552ca99cbe5b356
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `znc:slim` - linux; amd64

```console
$ docker pull znc@sha256:b567f64ddf36e703f1b679488b264e6116f05bef145515dd38b74cb21ef2050e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.8 MB (30835280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d159adb5681301aafb21070b51a46789375602eb87496307f826f75d360b38a`
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

### `znc:slim` - linux; arm variant v6

```console
$ docker pull znc@sha256:7e6b4911a1a958f15727f52b22e318c95b7e250d5375a784fd8b5d4b87f912eb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.5 MB (29482082 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfc3fbaeb3f38576204d652e868c337eb66a5909405ff999e798b9e8d814ade6`
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

### `znc:slim` - linux; arm64 variant v8

```console
$ docker pull znc@sha256:2af071147c37eee4c40cd871d155a8689aa2cb17f92f4f43d96b0f4878ec2656
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.1 MB (30106779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4cecc02e8283b6ae55c9271ae3788b538752c46d64d78bab0b11a653c52ac3c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Wed, 12 Sep 2018 08:42:24 GMT
ADD file:a4b53e2a2e207c5107a76c16d91b99cb1ed4ecb90b363913798e663426137d45 in / 
# Wed, 12 Sep 2018 08:42:24 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:42:25 GMT
CMD ["/bin/sh"]
# Fri, 26 Oct 2018 08:51:57 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Fri, 26 Oct 2018 08:51:57 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO
# Fri, 26 Oct 2018 08:51:58 GMT
ARG MAKEFLAGS=
# Fri, 26 Oct 2018 08:51:59 GMT
ENV ZNC_VERSION=1.7.1
# Fri, 26 Oct 2018 09:03:16 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Fri, 26 Oct 2018 09:03:17 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Fri, 26 Oct 2018 09:03:18 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Fri, 26 Oct 2018 09:03:19 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Fri, 26 Oct 2018 09:03:19 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Fri, 26 Oct 2018 09:03:20 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Fri, 26 Oct 2018 09:03:21 GMT
VOLUME [/znc-data]
# Fri, 26 Oct 2018 09:03:21 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:9941776d74c9129fd585b6f0434ba48bd3a7112d6736bc02e6d12f41153cab26`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 2.1 MB (2099762 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae94b3cb7a1b2cef0ceffe3303cd03f83434d283aab43389e586b42bea00b358`  
		Last Modified: Wed, 12 Sep 2018 08:44:55 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ead01a90188368f95b1939831693cac74274b8edab9cb913fbaba450193a2fdf`  
		Last Modified: Fri, 26 Oct 2018 09:04:43 GMT  
		Size: 28.0 MB (28005523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b927bae9ce985e3c8a9a6b95c6d6cf76bbb2492ba9ba0eabb252fa4465ea85db`  
		Last Modified: Fri, 26 Oct 2018 09:04:31 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5eb03af3ece626b19d8dc39d0db79622d0597e2f5729717c468dccace09bb9e7`  
		Last Modified: Fri, 26 Oct 2018 09:04:31 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02f7bf67d63e93cf3368c18c2e38a6a675b2cc2e0112c82b02328b15d41fa50d`  
		Last Modified: Fri, 26 Oct 2018 09:04:31 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a72aa1837907720f1686974f165f36aeee690b4580ab886b17746938b84ad3a6`  
		Last Modified: Fri, 26 Oct 2018 09:04:31 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90be2943b89a6c5bb693e2c43561e453138b33af6be81491cd6f8ad23741a5fe`  
		Last Modified: Fri, 26 Oct 2018 09:04:31 GMT  
		Size: 350.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
