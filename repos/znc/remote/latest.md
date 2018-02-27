## `znc:latest`

```console
$ docker pull znc@sha256:51dd20bb89b88517a4fe0bcb3b4824a64e8d73712c726361275b0a0033ad3e46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6

### `znc:latest` - linux; amd64

```console
$ docker pull znc@sha256:75b7906d5c0be6bd8f6dac0e93e672a3d4c9928695ecc382e8547f8be6a4fab1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.1 MB (105113289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b687b33cc6d197b8869ecb4958dd44eafa108acf7ea04abfe6590004e41debd6`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Tue, 09 Jan 2018 21:10:58 GMT
ADD file:093f0723fa46f6cdbd6f7bd146448bb70ecce54254c35701feeceb956414622f in / 
# Tue, 09 Jan 2018 21:10:58 GMT
CMD ["/bin/sh"]
# Wed, 10 Jan 2018 03:44:56 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Wed, 10 Jan 2018 03:44:57 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Wed, 10 Jan 2018 03:44:57 GMT
ARG MAKEFLAGS=
# Wed, 10 Jan 2018 03:44:57 GMT
ENV ZNC_VERSION=1.6.5
# Wed, 10 Jan 2018 03:50:08 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Wed, 10 Jan 2018 03:54:25 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Wed, 10 Jan 2018 03:54:25 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Wed, 10 Jan 2018 03:54:26 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Wed, 10 Jan 2018 03:54:26 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Wed, 10 Jan 2018 03:54:26 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Wed, 10 Jan 2018 03:54:26 GMT
VOLUME [/znc-data]
# Wed, 10 Jan 2018 03:54:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 10 Jan 2018 03:54:56 GMT
RUN set -x     && apk add --no-cache         build-base         icu-dev         libressl-dev         perl         python3
# Wed, 10 Jan 2018 03:54:57 GMT
COPY file:d1446fead8db29053b5a4bf7f2af913ddb4d8b1c90f97cc6c099fc74c4322109 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:ff3a5c916c92643ff77519ffa742d3ec61b7f591b6b7504599d95a4a41134e28`  
		Last Modified: Tue, 09 Jan 2018 21:13:34 GMT  
		Size: 2.1 MB (2065537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ad32a3613d96bafbe16a4754923db35f7076716384385e7ac32948f23da053f`  
		Last Modified: Wed, 10 Jan 2018 03:58:18 GMT  
		Size: 21.4 MB (21424900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc3965ea6bf1ad0f2d455407cd841c93257b9d8e2b468f1c97badbf2e9d38e40`  
		Last Modified: Wed, 10 Jan 2018 03:58:09 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e899407d7a2e78e94234f5c05ccde7d3098f8107f055add7c534bda293e498bf`  
		Last Modified: Wed, 10 Jan 2018 03:58:09 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3692e7d9d5cb8faeb0a40eb5204fd9ddf121d25d6aa93c0504a18fef0db5669`  
		Last Modified: Wed, 10 Jan 2018 03:58:09 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afeb522d2f31b5f0aa2c7a1b1cd9900529f2ca33663e30c2a657039558168090`  
		Last Modified: Wed, 10 Jan 2018 03:58:09 GMT  
		Size: 280.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f16dfa2877b3008a9e6da4ca0fa813f804d29ce4b074d61d5965f57ea717ecc5`  
		Last Modified: Wed, 10 Jan 2018 03:58:09 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ee1916ba916c105ec4d50f6e9bceb323615a6e3bc074bf5f7d70f583da2552`  
		Last Modified: Wed, 10 Jan 2018 04:07:22 GMT  
		Size: 81.6 MB (81621206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aed17e4358e3515a97c06f924876f32a2760047ebaf4eca4dab1629a39cf9a0e`  
		Last Modified: Wed, 10 Jan 2018 04:06:54 GMT  
		Size: 330.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `znc:latest` - linux; arm variant v6

```console
$ docker pull znc@sha256:92b60157694c1eef59cac9d9b711728bb466284a41a5249dd05e2a396db71a3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.3 MB (94342486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:edeffd546b4b0d1d331240a02f431966804f4b9b1443783b9b95a664cbdb71ca`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Mon, 26 Feb 2018 23:48:41 GMT
ADD file:966d84204dc4860e9281f7c93c792137c88298edb284f267def4b38a11b79a1f in / 
# Mon, 26 Feb 2018 23:48:42 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Mon, 26 Feb 2018 23:48:42 GMT
CMD ["/bin/sh"]
# Tue, 27 Feb 2018 02:07:35 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Tue, 27 Feb 2018 02:07:35 GMT
ARG CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6
# Tue, 27 Feb 2018 02:07:36 GMT
ARG MAKEFLAGS=
# Tue, 27 Feb 2018 02:07:37 GMT
ENV ZNC_VERSION=1.6.5
# Tue, 27 Feb 2018 03:38:18 GMT
# ARGS: CONFIGUREFLAGS=--prefix=/opt/znc --enable-cyrus --enable-perl --enable-python --disable-ipv6 MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         build-base         curl         cyrus-sasl-dev         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && ../configure ${CONFIGUREFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Tue, 27 Feb 2018 03:38:21 GMT
COPY file:9d7b3114446d239420ea168b9310c1d20e26b75d069079c5742a25823c4c2aab in / 
# Tue, 27 Feb 2018 03:38:22 GMT
COPY file:e0192a282adc7f54a8a1ff4594ead3ef35387b9ac6cad11dc37da9ea1b048a13 in /startup-sequence/ 
# Tue, 27 Feb 2018 03:38:23 GMT
COPY file:378c136273fef23830ba35f7a8a99554baf86a694f5366f4ba9e9bbabcb8ee6a in /startup-sequence/ 
# Tue, 27 Feb 2018 03:38:24 GMT
COPY file:9c43478daa2a1fccaed5a69ad3c74782d9efa3cd18a66d033f2ddf6956451ba5 in /startup-sequence/ 
# Tue, 27 Feb 2018 03:38:25 GMT
COPY file:0aff452a445b305c16e9c2c7fb36e9b027100f93ff8f18f4a9342fb94cc44b9c in /startup-sequence/ 
# Tue, 27 Feb 2018 03:38:26 GMT
VOLUME [/znc-data]
# Tue, 27 Feb 2018 03:38:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 27 Feb 2018 03:39:44 GMT
RUN set -x     && apk add --no-cache         build-base         icu-dev         libressl-dev         perl         python3
# Tue, 27 Feb 2018 03:39:49 GMT
COPY file:d1446fead8db29053b5a4bf7f2af913ddb4d8b1c90f97cc6c099fc74c4322109 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:95d54dd4bdadebb53f9b91b25aa7dc5fcb83c534eb1d196eb0814aa1e16f3db2`  
		Last Modified: Fri, 01 Dec 2017 18:41:57 GMT  
		Size: 2.0 MB (2038298 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5993b3593c77413be85d318297ad8313b945069768a7e454d487fd47fa4b4343`  
		Last Modified: Mon, 26 Feb 2018 23:49:26 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e2874a790fc57e00de45736b0301ff400c412a8b93e0de2405c762bd0b950c3`  
		Last Modified: Tue, 27 Feb 2018 03:40:34 GMT  
		Size: 21.3 MB (21294784 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6f78a51c316ff193e414fa8bef0d8d15ae08993fed03d4953b85622018a2f52`  
		Last Modified: Tue, 27 Feb 2018 03:40:03 GMT  
		Size: 173.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aebe04be340c59095bfeab06ed19c29e4b3fc95f24a79d14881a14c997c5bf1b`  
		Last Modified: Tue, 27 Feb 2018 03:40:04 GMT  
		Size: 304.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38e0e25207f1467318d8405554a95eef6cfca1188d73162162f6c1fd266fcdef`  
		Last Modified: Tue, 27 Feb 2018 03:40:03 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef33a19d9065575df3172a57d3f057c329fa91c430b49bece63a4523018ba31`  
		Last Modified: Tue, 27 Feb 2018 03:40:03 GMT  
		Size: 281.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7527f0c92bc75bef7b7d95d66606cf682461d7c54fd3e38723c974a92cad2ae1`  
		Last Modified: Tue, 27 Feb 2018 03:40:03 GMT  
		Size: 351.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d5f12d350482569c226030d735aa42340f44bee0b09c782af83d390e409c5d8`  
		Last Modified: Tue, 27 Feb 2018 03:42:54 GMT  
		Size: 71.0 MB (71007552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5943a5f45fe7ebd36c1c6936e39f363d9fdabb8d274f4d2f1e9c930c1d66bc4f`  
		Last Modified: Tue, 27 Feb 2018 03:41:07 GMT  
		Size: 333.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
