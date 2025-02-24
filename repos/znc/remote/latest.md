## `znc:latest`

```console
$ docker pull znc@sha256:a60f3f617d3c9f19ba5bc9a031ee704af84f12ec0a6ae994e0f201327178037d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `znc:latest` - linux; amd64

```console
$ docker pull znc@sha256:d44011ca3e3202546047f10532efd5e218e53cc9063f909c76aef6989a82fcd4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.6 MB (122556362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64651629c7d208a102e643b64fadcfd92ebd12e09442fd0a01fde84ca390707a`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 00:39:01 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Fri, 08 Mar 2019 00:39:02 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO
# Fri, 08 Mar 2019 00:39:02 GMT
ARG MAKEFLAGS=
# Mon, 01 Apr 2019 23:23:06 GMT
ENV ZNC_VERSION=1.7.3
# Mon, 01 Apr 2019 23:27:41 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Mon, 01 Apr 2019 23:27:41 GMT
COPY file:15e47c9cc6835e0818d6896aa6537a8adda40ff814c287685183c73fa9df4713 in / 
# Mon, 01 Apr 2019 23:27:42 GMT
COPY file:dfda6761eff5635f2f7a6c1d540b2b14ea67514867578d12226629a780844185 in /startup-sequence/ 
# Mon, 01 Apr 2019 23:27:42 GMT
COPY file:809dccdc6a2a9f5e2a058644d9f71b2f167ab0f237913902896fef13b6315814 in /startup-sequence/ 
# Mon, 01 Apr 2019 23:27:42 GMT
COPY file:84986dd2ebc690804b4c47eb72d1af3a52ba257c76202478879604756431ff5c in /startup-sequence/ 
# Mon, 01 Apr 2019 23:27:42 GMT
COPY file:50e035ea8915a4bc88fd57c8f79152224f23e0c4c4b68ea8469294aedbddd039 in /startup-sequence/ 
# Mon, 01 Apr 2019 23:27:42 GMT
VOLUME [/znc-data]
# Mon, 01 Apr 2019 23:27:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Mon, 01 Apr 2019 23:28:00 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         libressl-dev         perl         python3
# Mon, 01 Apr 2019 23:28:00 GMT
COPY file:765473e154cb7674cba99ed8ee42b51feda01581be870e3d1e7e4930b82a0f37 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2d1ed7c8aa5fc7485e9713ab5a6d40d6efe185e4863b7458ee8f95d5f84416`  
		Last Modified: Mon, 01 Apr 2019 23:28:14 GMT  
		Size: 28.7 MB (28678752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cb23b41ba7df278548fd54e3e0d7d1e14d064c4585df5073bebb3d5dfebe432`  
		Last Modified: Mon, 01 Apr 2019 23:28:07 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d5f66f8e2fc55a0147fc6dda7863a6a74307e669305fb40e101ee060bffe0ed`  
		Last Modified: Mon, 01 Apr 2019 23:28:07 GMT  
		Size: 278.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f0d39881e21f348d6a743745eddb137569b14cefd97a39ea9834289e0955ad6`  
		Last Modified: Mon, 01 Apr 2019 23:28:07 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd5830218480c37c8b148534d537dc7497c57305419232559940cc0eec98aec3`  
		Last Modified: Mon, 01 Apr 2019 23:28:07 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d8de78d34d821abb0ac67d81b0d16d743acbf234724f8cd291faf2548707631`  
		Last Modified: Mon, 01 Apr 2019 23:28:07 GMT  
		Size: 342.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:604b285e31f2bf902f80fed168cdce0629f669912156ba320b2d7f01fd70f877`  
		Last Modified: Mon, 01 Apr 2019 23:28:35 GMT  
		Size: 91.7 MB (91668702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b0e74b591fa03b1795eb664756381052a8bb17300a3fc4f338099d459c59c6d`  
		Last Modified: Mon, 01 Apr 2019 23:28:18 GMT  
		Size: 332.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `znc:latest` - linux; arm variant v6

```console
$ docker pull znc@sha256:da81d9a1334082707a157104e642ab41e968c1452a77f2b2a6e5d8330dfb014d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.9 MB (109865585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85fd084dc4db51769f46d99f79b4382a1737d3f86bdf973d3f45b9bf6da8fcab`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:12 GMT
ADD file:12f605067cb5bbeacec221bac51e31824953cb25bb6660ef15bb4bb4141906ba in / 
# Fri, 08 Mar 2019 03:36:13 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:20:01 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Fri, 08 Mar 2019 04:20:01 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO
# Fri, 08 Mar 2019 04:20:02 GMT
ARG MAKEFLAGS=
# Tue, 02 Apr 2019 07:52:33 GMT
ENV ZNC_VERSION=1.7.3
# Tue, 02 Apr 2019 08:00:22 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Tue, 02 Apr 2019 08:00:23 GMT
COPY file:15e47c9cc6835e0818d6896aa6537a8adda40ff814c287685183c73fa9df4713 in / 
# Tue, 02 Apr 2019 08:00:23 GMT
COPY file:dfda6761eff5635f2f7a6c1d540b2b14ea67514867578d12226629a780844185 in /startup-sequence/ 
# Tue, 02 Apr 2019 08:00:23 GMT
COPY file:809dccdc6a2a9f5e2a058644d9f71b2f167ab0f237913902896fef13b6315814 in /startup-sequence/ 
# Tue, 02 Apr 2019 08:00:24 GMT
COPY file:84986dd2ebc690804b4c47eb72d1af3a52ba257c76202478879604756431ff5c in /startup-sequence/ 
# Tue, 02 Apr 2019 08:00:24 GMT
COPY file:50e035ea8915a4bc88fd57c8f79152224f23e0c4c4b68ea8469294aedbddd039 in /startup-sequence/ 
# Tue, 02 Apr 2019 08:00:25 GMT
VOLUME [/znc-data]
# Tue, 02 Apr 2019 08:00:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 02 Apr 2019 08:00:58 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         libressl-dev         perl         python3
# Tue, 02 Apr 2019 08:01:00 GMT
COPY file:765473e154cb7674cba99ed8ee42b51feda01581be870e3d1e7e4930b82a0f37 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:6a2a63c54ac7e7a10b22eff084af50b3a725b0cff9ba6c6405290906d0eecdec`  
		Last Modified: Fri, 08 Mar 2019 03:36:50 GMT  
		Size: 2.1 MB (2146122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5055de4c2bf97dbc1059b4a17e55c4439858511783d62d101f243d97cc23fd78`  
		Last Modified: Tue, 02 Apr 2019 08:01:24 GMT  
		Size: 27.4 MB (27393764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0af11f02ad5ecf9d5d231978629d226182903349dc26c3a3afd0477c753a85b`  
		Last Modified: Tue, 02 Apr 2019 08:01:12 GMT  
		Size: 171.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59b28b786629b54c7734db5f887e2326b19ffa710340ceb42c180039847869de`  
		Last Modified: Tue, 02 Apr 2019 08:01:12 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd04e31eed48d0092bc46198da215bc65df5107479a8044246d476d0014c9ce6`  
		Last Modified: Tue, 02 Apr 2019 08:01:12 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e19c70f754b5234b43a6195d78c898bb8859580115747a3d8ee3f357bb04fd63`  
		Last Modified: Tue, 02 Apr 2019 08:01:12 GMT  
		Size: 373.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7e4f0f6c9f7ad5d3ef260ef1fa99beb03061ed0d1635ffbed9636c050f554f7`  
		Last Modified: Tue, 02 Apr 2019 08:01:12 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:264dffde08b26c0e71e0edbc79e914fdf313b4ef3295003e809e7c6bb99cc4fe`  
		Last Modified: Tue, 02 Apr 2019 08:02:01 GMT  
		Size: 80.3 MB (80323943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de8eda74f99f6c80e55bf70105438dfff5312b3a9fb31db00fd087497d85f15`  
		Last Modified: Tue, 02 Apr 2019 08:01:31 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `znc:latest` - linux; arm64 variant v8

```console
$ docker pull znc@sha256:899c7c27e85301c4c8bfb61526b26755c20fbf86aabdd7da3fcd79d98d1392e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.9 MB (112904799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95bccf8aad084250b3026b3854aacec0cf40ec155da7cdeb9e217b6122f7669d`
-	Entrypoint: `["\/entrypoint.sh"]`

```dockerfile
# Wed, 19 Jun 2019 20:39:56 GMT
ADD file:bcdcef68213641766a211b02ac762b03c21a178b3ed03c4480cc736abd97b50c in / 
# Wed, 19 Jun 2019 20:39:56 GMT
CMD ["/bin/sh"]
# Wed, 19 Jun 2019 23:22:55 GMT
ENV GPG_KEY=D5823CACB477191CAC0075555AE420CC0209989E
# Wed, 19 Jun 2019 23:22:55 GMT
ARG CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO
# Wed, 19 Jun 2019 23:22:56 GMT
ARG MAKEFLAGS=
# Wed, 19 Jun 2019 23:22:56 GMT
ENV ZNC_VERSION=1.7.3
# Wed, 19 Jun 2019 23:31:01 GMT
# ARGS: CMAKEFLAGS=-DCMAKE_INSTALL_PREFIX=/opt/znc -DWANT_CYRUS=YES -DWANT_PERL=YES -DWANT_PYTHON=YES -DWANT_IPV6=NO MAKEFLAGS=
RUN set -x     && adduser -S znc     && addgroup -S znc     && apk add --no-cache --virtual runtime-dependencies         boost         ca-certificates         cyrus-sasl         icu         su-exec         tini         tzdata     && apk add --no-cache --virtual build-dependencies         boost-dev         build-base         cmake         curl         cyrus-sasl-dev         gettext         gnupg         icu-dev         libressl-dev         perl-dev         python3-dev     && mkdir /znc-src && cd /znc-src     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz" -o znc.tgz     && curl -fsSL "https://znc.in/releases/archive/znc-${ZNC_VERSION}.tar.gz.sig" -o znc.tgz.sig     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "${GPG_KEY}"     && gpg --batch --verify znc.tgz.sig znc.tgz     && rm -rf "$GNUPGHOME"     && tar -zxf znc.tgz --strip-components=1     && mkdir build && cd build     && cmake .. ${CMAKEFLAGS}     && make $MAKEFLAGS     && make install     && apk del build-dependencies     && cd / && rm -rf /znc-src
# Wed, 19 Jun 2019 23:31:02 GMT
COPY file:15e47c9cc6835e0818d6896aa6537a8adda40ff814c287685183c73fa9df4713 in / 
# Wed, 19 Jun 2019 23:31:02 GMT
COPY file:dfda6761eff5635f2f7a6c1d540b2b14ea67514867578d12226629a780844185 in /startup-sequence/ 
# Wed, 19 Jun 2019 23:31:02 GMT
COPY file:809dccdc6a2a9f5e2a058644d9f71b2f167ab0f237913902896fef13b6315814 in /startup-sequence/ 
# Wed, 19 Jun 2019 23:31:03 GMT
COPY file:84986dd2ebc690804b4c47eb72d1af3a52ba257c76202478879604756431ff5c in /startup-sequence/ 
# Wed, 19 Jun 2019 23:31:04 GMT
COPY file:50e035ea8915a4bc88fd57c8f79152224f23e0c4c4b68ea8469294aedbddd039 in /startup-sequence/ 
# Wed, 19 Jun 2019 23:31:04 GMT
VOLUME [/znc-data]
# Wed, 19 Jun 2019 23:31:05 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Jun 2019 23:31:26 GMT
RUN set -x     && apk add --no-cache         build-base         cmake         icu-dev         libressl-dev         perl         python3
# Wed, 19 Jun 2019 23:31:27 GMT
COPY file:765473e154cb7674cba99ed8ee42b51feda01581be870e3d1e7e4930b82a0f37 in /startup-sequence/ 
```

-	Layers:
	-	`sha256:5011838a0b2d66c2c804ad057403a19bac7e263f0748579857f3ce4c0cbfc08c`  
		Last Modified: Fri, 08 Mar 2019 03:38:05 GMT  
		Size: 2.1 MB (2099962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fff6ad2d9313a4ad624198d1323f4f2202ffa2164b0b317ef1df4f13ef549d12`  
		Last Modified: Wed, 19 Jun 2019 23:31:48 GMT  
		Size: 28.1 MB (28056717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:559d4e6c1d257e0376935b79dc1121d0093572107606a4fe2766463076febbcd`  
		Last Modified: Wed, 19 Jun 2019 23:31:38 GMT  
		Size: 172.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09601e268feb0cf343bf3acb2146c768763dcfb05e83a5cf8cfc797279b4e968`  
		Last Modified: Wed, 19 Jun 2019 23:31:37 GMT  
		Size: 305.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25578495cdcdc4091a3904aff2f9092d0eaa659247ab81ec2a328eab49420713`  
		Last Modified: Wed, 19 Jun 2019 23:31:37 GMT  
		Size: 235.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c4815afa8a307d45d4115a5937a3a51d7b231c6a1668c20abec53a2b4eef8ab`  
		Last Modified: Wed, 19 Jun 2019 23:31:37 GMT  
		Size: 374.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07a54e499f82fff72f5c7e0cd7349b68672dd1887f5abf7eb2c210f8247c7e0c`  
		Last Modified: Wed, 19 Jun 2019 23:31:37 GMT  
		Size: 341.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91fac17420dc868d765e4e472f444b055bd3da4e2c909c23b03b0da903cc4f5f`  
		Last Modified: Wed, 19 Jun 2019 23:32:24 GMT  
		Size: 82.7 MB (82746362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300ac21c3028683ddebfe450fef1e70185de59151483a6136ad9cec3b037ca84`  
		Last Modified: Wed, 19 Jun 2019 23:31:55 GMT  
		Size: 331.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
