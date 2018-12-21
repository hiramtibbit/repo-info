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
$ docker pull znc@sha256:2e851592b72def97448e22e6c7e3c849d2fb0e7325e64cb8b8142f29e6722c0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `znc:1.7` - linux; amd64

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

### `znc:1.7` - linux; arm variant v6

```console
$ docker pull znc@sha256:a1545cfb61a45d998d7568efae9c50530516f46cf79d74d5eee7474bea08d04f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.8 MB (109802779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f0d0fc760da15c7b6e2a43217ef4e1bc0de4772ca62e331c778d7fb184ccb4c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Fri, 26 Oct 2018 07:50:27 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Fri, 26 Oct 2018 07:50:27 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO
# Fri, 26 Oct 2018 07:50:28 GMT
ARG MAKEFLAGS=
# Fri, 26 Oct 2018 07:50:28 GMT
ENV ZNC_VERSION=1.7.1
# Fri, 26 Oct 2018 07:58:05 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Fri, 26 Oct 2018 07:58:06 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Fri, 26 Oct 2018 07:58:06 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Fri, 26 Oct 2018 07:58:07 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Fri, 26 Oct 2018 07:58:07 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Fri, 26 Oct 2018 07:58:08 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Fri, 26 Oct 2018 07:58:08 GMT
VOLUME [/znc-data]
# Fri, 26 Oct 2018 07:58:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 26 Oct 2018 07:58:55 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         libressl-dev         perl         python3
# Fri, 26 Oct 2018 07:58:57 GMT
COPY file:d1446fead8db29053b5a4bf7f2af913ddb4d8b1c90f97cc6c099fc74c4322109 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38cd7ba02da6c5969de16d9f9bdea21f13f59f954ae0b356b198ac93e2926d3`  
		Last Modified: Fri, 26 Oct 2018 07:59:23 GMT  
		Size: 27.3 MB (27334876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c75fe0d3998124e5391e271bedd26545163c3a424610a7b212065ab31ff946`  
		Last Modified: Fri, 26 Oct 2018 07:59:13 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5fd26f09ff3adb33f97bcee67f65db60a3366c34b93b0f2fccc1540a6a8532`  
		Last Modified: Fri, 26 Oct 2018 07:59:13 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986eef77e0b6e74c6418c31be3f465b40517a7978b7d59643b139df8ae7c4782`  
		Last Modified: Fri, 26 Oct 2018 07:59:13 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb40517a7a0ba705420a5c82ee96e88c84f7ba056ed3ea904a5065dae91b9aa`  
		Last Modified: Fri, 26 Oct 2018 07:59:13 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ca256cc4958443f1c54fa5f64175aa8088747eeef92d2a767a8499042bcbf2`  
		Last Modified: Fri, 26 Oct 2018 07:59:13 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1975ccce7a1620a372340bdf526e5d053f00f2106bd50275a26e877135868a70`  
		Last Modified: Fri, 26 Oct 2018 08:00:07 GMT  
		Size: 80.3 MB (80319599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb511d530f45a3be4a8893407b712a89d0eb3c113b10fba1f9f737aafb68fcc3`  
		Last Modified: Fri, 26 Oct 2018 07:59:39 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `znc:1.7` - linux; arm64 variant v8

```console
$ docker pull znc@sha256:5fed56fb279e861b3e1bd4469b502e8bbd36e252d1d6189ec9e3705f88b68133
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112824150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4709faf8dbd85df1eb7b9065604620d5d9d79bb3f2c13cf3a3ded3158d53dd5c`
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
# Fri, 26 Oct 2018 09:04:06 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         libressl-dev         perl         python3
# Fri, 26 Oct 2018 09:04:08 GMT
COPY file:d1446fead8db29053b5a4bf7f2af913ddb4d8b1c90f97cc6c099fc74c4322109 in /startup-sequence/ 
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
	-	`sha256:3ae52affe0be7f5879a53e6772f458be65369462266f15129644706b299924e0`  
		Last Modified: Fri, 26 Oct 2018 09:06:01 GMT  
		Size: 82.7 MB (82717038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240cd9f4f0ca5b2605999acb5a584cd24fc5299eb9c13ed05f07508aa408e616`  
		Last Modified: Fri, 26 Oct 2018 09:05:25 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:1.7.1`

```console
$ docker pull znc@sha256:2e851592b72def97448e22e6c7e3c849d2fb0e7325e64cb8b8142f29e6722c0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `znc:1.7.1` - linux; amd64

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

### `znc:1.7.1` - linux; arm variant v6

```console
$ docker pull znc@sha256:a1545cfb61a45d998d7568efae9c50530516f46cf79d74d5eee7474bea08d04f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.8 MB (109802779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f0d0fc760da15c7b6e2a43217ef4e1bc0de4772ca62e331c778d7fb184ccb4c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Fri, 26 Oct 2018 07:50:27 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Fri, 26 Oct 2018 07:50:27 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO
# Fri, 26 Oct 2018 07:50:28 GMT
ARG MAKEFLAGS=
# Fri, 26 Oct 2018 07:50:28 GMT
ENV ZNC_VERSION=1.7.1
# Fri, 26 Oct 2018 07:58:05 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Fri, 26 Oct 2018 07:58:06 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Fri, 26 Oct 2018 07:58:06 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Fri, 26 Oct 2018 07:58:07 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Fri, 26 Oct 2018 07:58:07 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Fri, 26 Oct 2018 07:58:08 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Fri, 26 Oct 2018 07:58:08 GMT
VOLUME [/znc-data]
# Fri, 26 Oct 2018 07:58:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 26 Oct 2018 07:58:55 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         libressl-dev         perl         python3
# Fri, 26 Oct 2018 07:58:57 GMT
COPY file:d1446fead8db29053b5a4bf7f2af913ddb4d8b1c90f97cc6c099fc74c4322109 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38cd7ba02da6c5969de16d9f9bdea21f13f59f954ae0b356b198ac93e2926d3`  
		Last Modified: Fri, 26 Oct 2018 07:59:23 GMT  
		Size: 27.3 MB (27334876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c75fe0d3998124e5391e271bedd26545163c3a424610a7b212065ab31ff946`  
		Last Modified: Fri, 26 Oct 2018 07:59:13 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5fd26f09ff3adb33f97bcee67f65db60a3366c34b93b0f2fccc1540a6a8532`  
		Last Modified: Fri, 26 Oct 2018 07:59:13 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986eef77e0b6e74c6418c31be3f465b40517a7978b7d59643b139df8ae7c4782`  
		Last Modified: Fri, 26 Oct 2018 07:59:13 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb40517a7a0ba705420a5c82ee96e88c84f7ba056ed3ea904a5065dae91b9aa`  
		Last Modified: Fri, 26 Oct 2018 07:59:13 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ca256cc4958443f1c54fa5f64175aa8088747eeef92d2a767a8499042bcbf2`  
		Last Modified: Fri, 26 Oct 2018 07:59:13 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1975ccce7a1620a372340bdf526e5d053f00f2106bd50275a26e877135868a70`  
		Last Modified: Fri, 26 Oct 2018 08:00:07 GMT  
		Size: 80.3 MB (80319599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb511d530f45a3be4a8893407b712a89d0eb3c113b10fba1f9f737aafb68fcc3`  
		Last Modified: Fri, 26 Oct 2018 07:59:39 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `znc:1.7.1` - linux; arm64 variant v8

```console
$ docker pull znc@sha256:5fed56fb279e861b3e1bd4469b502e8bbd36e252d1d6189ec9e3705f88b68133
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112824150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4709faf8dbd85df1eb7b9065604620d5d9d79bb3f2c13cf3a3ded3158d53dd5c`
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
# Fri, 26 Oct 2018 09:04:06 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         libressl-dev         perl         python3
# Fri, 26 Oct 2018 09:04:08 GMT
COPY file:d1446fead8db29053b5a4bf7f2af913ddb4d8b1c90f97cc6c099fc74c4322109 in /startup-sequence/ 
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
	-	`sha256:3ae52affe0be7f5879a53e6772f458be65369462266f15129644706b299924e0`  
		Last Modified: Fri, 26 Oct 2018 09:06:01 GMT  
		Size: 82.7 MB (82717038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240cd9f4f0ca5b2605999acb5a584cd24fc5299eb9c13ed05f07508aa408e616`  
		Last Modified: Fri, 26 Oct 2018 09:05:25 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:1.7.1-slim`

```console
$ docker pull znc@sha256:bcdb1cc4d50df83773ebefe4fc108ff054ea95459e69a82ad4633a77d6e43e7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `znc:1.7.1-slim` - linux; amd64

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

### `znc:1.7.1-slim` - linux; arm variant v6

```console
$ docker pull znc@sha256:afba19ed0dac33001b75a48db0b19fba17d3784ad21caede57bae0580d821a13
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.5 MB (29482849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad27f850cfabd2ab1d1780ac058dc62ece87c8567ae4aab55698a74f55a2aaa5`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Fri, 26 Oct 2018 07:50:27 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Fri, 26 Oct 2018 07:50:27 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO
# Fri, 26 Oct 2018 07:50:28 GMT
ARG MAKEFLAGS=
# Fri, 26 Oct 2018 07:50:28 GMT
ENV ZNC_VERSION=1.7.1
# Fri, 26 Oct 2018 07:58:05 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Fri, 26 Oct 2018 07:58:06 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Fri, 26 Oct 2018 07:58:06 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Fri, 26 Oct 2018 07:58:07 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Fri, 26 Oct 2018 07:58:07 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Fri, 26 Oct 2018 07:58:08 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Fri, 26 Oct 2018 07:58:08 GMT
VOLUME [/znc-data]
# Fri, 26 Oct 2018 07:58:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38cd7ba02da6c5969de16d9f9bdea21f13f59f954ae0b356b198ac93e2926d3`  
		Last Modified: Fri, 26 Oct 2018 07:59:23 GMT  
		Size: 27.3 MB (27334876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c75fe0d3998124e5391e271bedd26545163c3a424610a7b212065ab31ff946`  
		Last Modified: Fri, 26 Oct 2018 07:59:13 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5fd26f09ff3adb33f97bcee67f65db60a3366c34b93b0f2fccc1540a6a8532`  
		Last Modified: Fri, 26 Oct 2018 07:59:13 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986eef77e0b6e74c6418c31be3f465b40517a7978b7d59643b139df8ae7c4782`  
		Last Modified: Fri, 26 Oct 2018 07:59:13 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb40517a7a0ba705420a5c82ee96e88c84f7ba056ed3ea904a5065dae91b9aa`  
		Last Modified: Fri, 26 Oct 2018 07:59:13 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ca256cc4958443f1c54fa5f64175aa8088747eeef92d2a767a8499042bcbf2`  
		Last Modified: Fri, 26 Oct 2018 07:59:13 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `znc:1.7.1-slim` - linux; arm64 variant v8

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

## `znc:1.7-slim`

```console
$ docker pull znc@sha256:bcdb1cc4d50df83773ebefe4fc108ff054ea95459e69a82ad4633a77d6e43e7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `znc:1.7-slim` - linux; amd64

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

### `znc:1.7-slim` - linux; arm variant v6

```console
$ docker pull znc@sha256:afba19ed0dac33001b75a48db0b19fba17d3784ad21caede57bae0580d821a13
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.5 MB (29482849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad27f850cfabd2ab1d1780ac058dc62ece87c8567ae4aab55698a74f55a2aaa5`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Fri, 26 Oct 2018 07:50:27 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Fri, 26 Oct 2018 07:50:27 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO
# Fri, 26 Oct 2018 07:50:28 GMT
ARG MAKEFLAGS=
# Fri, 26 Oct 2018 07:50:28 GMT
ENV ZNC_VERSION=1.7.1
# Fri, 26 Oct 2018 07:58:05 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Fri, 26 Oct 2018 07:58:06 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Fri, 26 Oct 2018 07:58:06 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Fri, 26 Oct 2018 07:58:07 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Fri, 26 Oct 2018 07:58:07 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Fri, 26 Oct 2018 07:58:08 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Fri, 26 Oct 2018 07:58:08 GMT
VOLUME [/znc-data]
# Fri, 26 Oct 2018 07:58:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38cd7ba02da6c5969de16d9f9bdea21f13f59f954ae0b356b198ac93e2926d3`  
		Last Modified: Fri, 26 Oct 2018 07:59:23 GMT  
		Size: 27.3 MB (27334876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c75fe0d3998124e5391e271bedd26545163c3a424610a7b212065ab31ff946`  
		Last Modified: Fri, 26 Oct 2018 07:59:13 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5fd26f09ff3adb33f97bcee67f65db60a3366c34b93b0f2fccc1540a6a8532`  
		Last Modified: Fri, 26 Oct 2018 07:59:13 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986eef77e0b6e74c6418c31be3f465b40517a7978b7d59643b139df8ae7c4782`  
		Last Modified: Fri, 26 Oct 2018 07:59:13 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb40517a7a0ba705420a5c82ee96e88c84f7ba056ed3ea904a5065dae91b9aa`  
		Last Modified: Fri, 26 Oct 2018 07:59:13 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ca256cc4958443f1c54fa5f64175aa8088747eeef92d2a767a8499042bcbf2`  
		Last Modified: Fri, 26 Oct 2018 07:59:13 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `znc:1.7-slim` - linux; arm64 variant v8

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

## `znc:latest`

```console
$ docker pull znc@sha256:de130a0a3d988b0d78565f581634f754e0c65c74c8e5c34618b3a7d25d2a5db3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `znc:latest` - linux; amd64

```console
$ docker pull znc@sha256:70ec474a6754276eb0f1b70ea1c5a041237ff3ce2af86954b29ce348fe24092e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.5 MB (122495147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f12cb96aac47bb9cd614ee1e12859833a0ce700e7d9a19af058f7a0485992df8`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:50 GMT
ADD file:25c10b1d1b41d46a1827ad0b0d2389c24df6d31430005ff4e9a2d84ea23ebd42 in / 
# Tue, 11 Sep 2018 22:19:50 GMT
CMD ["/bin/sh"]
# Thu, 25 Oct 2018 21:21:22 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Thu, 25 Oct 2018 21:21:22 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO
# Thu, 25 Oct 2018 21:21:23 GMT
ARG MAKEFLAGS=
# Thu, 25 Oct 2018 21:21:23 GMT
ENV ZNC_VERSION=1.7.1
# Thu, 25 Oct 2018 21:25:48 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Thu, 25 Oct 2018 21:25:58 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Thu, 25 Oct 2018 21:25:58 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Thu, 25 Oct 2018 21:25:59 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Thu, 25 Oct 2018 21:25:59 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Thu, 25 Oct 2018 21:25:59 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Thu, 25 Oct 2018 21:26:00 GMT
VOLUME [/znc-data]
# Thu, 25 Oct 2018 21:26:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 25 Oct 2018 21:26:36 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         libressl-dev         perl         python3
# Thu, 25 Oct 2018 21:26:37 GMT
COPY file:d1446fead8db29053b5a4bf7f2af913ddb4d8b1c90f97cc6c099fc74c4322109 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:4fe2ade4980c2dda4fc95858ebb981489baec8c1e4bd282ab1c3560be8ff9bde`  
		Last Modified: Tue, 11 Sep 2018 22:21:23 GMT  
		Size: 2.2 MB (2206931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00766c08070d58bda9b03fcdc1414a80d54b9b0a53b149e3fff042cd529fc4da`  
		Last Modified: Thu, 25 Oct 2018 21:27:01 GMT  
		Size: 28.6 MB (28627175 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c22bc07ca1439d7448d4ee51f26f9549d9ab2e2d4cff15afde2b4daeb6a6e7e0`  
		Last Modified: Thu, 25 Oct 2018 21:26:55 GMT  
		Size: 170.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2ac01970898119d1b2c5a4465468872c6854b9b77337a1b5da4c11656cd6559`  
		Last Modified: Thu, 25 Oct 2018 21:26:54 GMT  
		Size: 279.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f81e8b912f0e5001120aa57ecf0c2438d25a53f204b67f041e92b207a2e4d27`  
		Last Modified: Thu, 25 Oct 2018 21:26:54 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:304d3b552505d587b6ec927ce3a19b175bcc2d16fb8b930d791182985356ac19`  
		Last Modified: Thu, 25 Oct 2018 21:26:55 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e424d2065fa06c069d47919e2d56e23a2e1b68d946c5a9816d2e374ef1c760e`  
		Last Modified: Thu, 25 Oct 2018 21:26:54 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:053049afaac53fbcc668f6f22d4716956e9e89bfb58efbab24f56a3f7df4c20f`  
		Last Modified: Thu, 25 Oct 2018 21:27:56 GMT  
		Size: 91.7 MB (91659393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9666b8fa7c3c98baec50ae799226cb72f4c85b27d22003ef73e3863f78ee2bc5`  
		Last Modified: Thu, 25 Oct 2018 21:27:36 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `znc:latest` - linux; arm variant v6

```console
$ docker pull znc@sha256:a1545cfb61a45d998d7568efae9c50530516f46cf79d74d5eee7474bea08d04f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.8 MB (109802779 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f0d0fc760da15c7b6e2a43217ef4e1bc0de4772ca62e331c778d7fb184ccb4c`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Fri, 26 Oct 2018 07:50:27 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Fri, 26 Oct 2018 07:50:27 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO
# Fri, 26 Oct 2018 07:50:28 GMT
ARG MAKEFLAGS=
# Fri, 26 Oct 2018 07:50:28 GMT
ENV ZNC_VERSION=1.7.1
# Fri, 26 Oct 2018 07:58:05 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Fri, 26 Oct 2018 07:58:06 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Fri, 26 Oct 2018 07:58:06 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Fri, 26 Oct 2018 07:58:07 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Fri, 26 Oct 2018 07:58:07 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Fri, 26 Oct 2018 07:58:08 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Fri, 26 Oct 2018 07:58:08 GMT
VOLUME [/znc-data]
# Fri, 26 Oct 2018 07:58:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 26 Oct 2018 07:58:55 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         libressl-dev         perl         python3
# Fri, 26 Oct 2018 07:58:57 GMT
COPY file:d1446fead8db29053b5a4bf7f2af913ddb4d8b1c90f97cc6c099fc74c4322109 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38cd7ba02da6c5969de16d9f9bdea21f13f59f954ae0b356b198ac93e2926d3`  
		Last Modified: Fri, 26 Oct 2018 07:59:23 GMT  
		Size: 27.3 MB (27334876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c75fe0d3998124e5391e271bedd26545163c3a424610a7b212065ab31ff946`  
		Last Modified: Fri, 26 Oct 2018 07:59:13 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5fd26f09ff3adb33f97bcee67f65db60a3366c34b93b0f2fccc1540a6a8532`  
		Last Modified: Fri, 26 Oct 2018 07:59:13 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986eef77e0b6e74c6418c31be3f465b40517a7978b7d59643b139df8ae7c4782`  
		Last Modified: Fri, 26 Oct 2018 07:59:13 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb40517a7a0ba705420a5c82ee96e88c84f7ba056ed3ea904a5065dae91b9aa`  
		Last Modified: Fri, 26 Oct 2018 07:59:13 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ca256cc4958443f1c54fa5f64175aa8088747eeef92d2a767a8499042bcbf2`  
		Last Modified: Fri, 26 Oct 2018 07:59:13 GMT  
		Size: 352.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1975ccce7a1620a372340bdf526e5d053f00f2106bd50275a26e877135868a70`  
		Last Modified: Fri, 26 Oct 2018 08:00:07 GMT  
		Size: 80.3 MB (80319599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb511d530f45a3be4a8893407b712a89d0eb3c113b10fba1f9f737aafb68fcc3`  
		Last Modified: Fri, 26 Oct 2018 07:59:39 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `znc:latest` - linux; arm64 variant v8

```console
$ docker pull znc@sha256:5fed56fb279e861b3e1bd4469b502e8bbd36e252d1d6189ec9e3705f88b68133
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112824150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4709faf8dbd85df1eb7b9065604620d5d9d79bb3f2c13cf3a3ded3158d53dd5c`
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
# Fri, 26 Oct 2018 09:04:06 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         libressl-dev         perl         python3
# Fri, 26 Oct 2018 09:04:08 GMT
COPY file:d1446fead8db29053b5a4bf7f2af913ddb4d8b1c90f97cc6c099fc74c4322109 in /startup-sequence/ 
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
	-	`sha256:3ae52affe0be7f5879a53e6772f458be65369462266f15129644706b299924e0`  
		Last Modified: Fri, 26 Oct 2018 09:06:01 GMT  
		Size: 82.7 MB (82717038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:240cd9f4f0ca5b2605999acb5a584cd24fc5299eb9c13ed05f07508aa408e616`  
		Last Modified: Fri, 26 Oct 2018 09:05:25 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `znc:slim`

```console
$ docker pull znc@sha256:bcdb1cc4d50df83773ebefe4fc108ff054ea95459e69a82ad4633a77d6e43e7b
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
$ docker pull znc@sha256:afba19ed0dac33001b75a48db0b19fba17d3784ad21caede57bae0580d821a13
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.5 MB (29482849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad27f850cfabd2ab1d1780ac058dc62ece87c8567ae4aab55698a74f55a2aaa5`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:40 GMT
ADD file:9c713f2312a88f19529816851673353155f329a4b024d62b03f656b0ce32f2a6 in / 
# Wed, 12 Sep 2018 07:49:40 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:40 GMT
CMD ["/bin/sh"]
# Fri, 26 Oct 2018 07:50:27 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Fri, 26 Oct 2018 07:50:27 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO
# Fri, 26 Oct 2018 07:50:28 GMT
ARG MAKEFLAGS=
# Fri, 26 Oct 2018 07:50:28 GMT
ENV ZNC_VERSION=1.7.1
# Fri, 26 Oct 2018 07:58:05 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Fri, 26 Oct 2018 07:58:06 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Fri, 26 Oct 2018 07:58:06 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Fri, 26 Oct 2018 07:58:07 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Fri, 26 Oct 2018 07:58:07 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Fri, 26 Oct 2018 07:58:08 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Fri, 26 Oct 2018 07:58:08 GMT
VOLUME [/znc-data]
# Fri, 26 Oct 2018 07:58:08 GMT
ENTRYPOINT ["/entrypoint.sh"]
```

-	Layers:
	-	`sha256:905674ea9d9448b14f15ae82e3c34138680bac1ef4fc29088aae8c9639b502fe`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 2.1 MB (2146453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d91fe322e1690c8fb3f2b684fd85335d36a45e509b1568683232aede6d8a5e2b`  
		Last Modified: Wed, 12 Sep 2018 07:50:09 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f38cd7ba02da6c5969de16d9f9bdea21f13f59f954ae0b356b198ac93e2926d3`  
		Last Modified: Fri, 26 Oct 2018 07:59:23 GMT  
		Size: 27.3 MB (27334876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c75fe0d3998124e5391e271bedd26545163c3a424610a7b212065ab31ff946`  
		Last Modified: Fri, 26 Oct 2018 07:59:13 GMT  
		Size: 174.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de5fd26f09ff3adb33f97bcee67f65db60a3366c34b93b0f2fccc1540a6a8532`  
		Last Modified: Fri, 26 Oct 2018 07:59:13 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986eef77e0b6e74c6418c31be3f465b40517a7978b7d59643b139df8ae7c4782`  
		Last Modified: Fri, 26 Oct 2018 07:59:13 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7fb40517a7a0ba705420a5c82ee96e88c84f7ba056ed3ea904a5065dae91b9aa`  
		Last Modified: Fri, 26 Oct 2018 07:59:13 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ca256cc4958443f1c54fa5f64175aa8088747eeef92d2a767a8499042bcbf2`  
		Last Modified: Fri, 26 Oct 2018 07:59:13 GMT  
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
