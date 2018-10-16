<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rakudo-star`

-	[`rakudo-star:2018.06`](#rakudo-star201806)
-	[`rakudo-star:latest`](#rakudo-starlatest)

## `rakudo-star:2018.06`

```console
$ docker pull rakudo-star@sha256:53881becda2f62f96ec54197b8163e47aeb67eb08ad9467dd16bbd54d0f9f30f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `rakudo-star:2018.06` - linux; amd64

```console
$ docker pull rakudo-star@sha256:cc1a18619a40488ebfc403731afc43b9e6ccefde8763a48b13b1df0db3a42452
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132598485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2ca18a2c80b926a646b5a350534c7ddbdfb8df16bf5ac7d221c2b402827d9da`
-	Default Command: `["perl6"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 01:01:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:27:41 GMT
MAINTAINER Rob Hoelz
# Tue, 16 Oct 2018 10:27:42 GMT
RUN groupadd -r perl6 && useradd -r -g perl6 perl6
# Tue, 16 Oct 2018 10:27:42 GMT
ARG rakudo_version=2018.06
# Tue, 16 Oct 2018 10:27:43 GMT
ENV rakudo_version=2018.06
# Tue, 16 Oct 2018 10:53:04 GMT
RUN buildDeps='         gcc         libc6-dev         libencode-perl         make     '     && set -x     && apt-get update     && apt-get --yes install --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir /root/rakudo     && curl -fsSL http://rakudo.org/downloads/star/rakudo-star-${rakudo_version}.tar.gz -o rakudo.tar.gz     && tar xzf rakudo.tar.gz --strip-components=1 -C /root/rakudo     && (         cd /root/rakudo         && perl Configure.pl --prefix=/usr --gen-moar         && make install     )     && rm -rf /rakudo.tar.gz /root/rakudo     && apt-get purge -y --auto-remove $buildDeps
# Tue, 16 Oct 2018 10:53:05 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/site/bin
# Tue, 16 Oct 2018 10:53:05 GMT
CMD ["perl6"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a587a86c9dcb9df6584180042becf21e36ecd8b460a761711227b4b06889a005`  
		Last Modified: Tue, 16 Oct 2018 01:14:38 GMT  
		Size: 50.1 MB (50065549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:740a30e8a5aefc92608f1f5e10ae2bb1ba4e84c2df0a2d50f4cd8bcce9b48f8a`  
		Last Modified: Tue, 16 Oct 2018 10:53:26 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f70f33169d255ea4954e1b9109174f0cf71842e025e46b1e395798cbfa8f09`  
		Last Modified: Tue, 16 Oct 2018 10:53:34 GMT  
		Size: 22.1 MB (22145169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rakudo-star:2018.06` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:046c2bf68506ca66b0924bc0ec02e60e31576bf346b9e1c8d0f62f3ea966ce97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.8 MB (126798037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbfd01c4c6edc851ff3085eddd5c8b3fcf83833adfdfcdf6f34a4ba292a7e889`
-	Default Command: `["perl6"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:02:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:02:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 10:04:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:49:21 GMT
MAINTAINER Rob Hoelz
# Wed, 05 Sep 2018 23:49:24 GMT
RUN groupadd -r perl6 && useradd -r -g perl6 perl6
# Wed, 05 Sep 2018 23:49:24 GMT
ARG rakudo_version=2018.06
# Wed, 05 Sep 2018 23:49:25 GMT
ENV rakudo_version=2018.06
# Thu, 06 Sep 2018 00:50:20 GMT
RUN buildDeps='         gcc         libc6-dev         libencode-perl         make     '     && set -x     && apt-get update     && apt-get --yes install --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir /root/rakudo     && curl -fsSL http://rakudo.org/downloads/star/rakudo-star-${rakudo_version}.tar.gz -o rakudo.tar.gz     && tar xzf rakudo.tar.gz --strip-components=1 -C /root/rakudo     && (         cd /root/rakudo         && perl Configure.pl --prefix=/usr --gen-moar         && make install     )     && rm -rf /rakudo.tar.gz /root/rakudo     && apt-get purge -y --auto-remove $buildDeps
# Thu, 06 Sep 2018 00:50:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/site/bin
# Thu, 06 Sep 2018 00:50:22 GMT
CMD ["perl6"]
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185ac5864132647baf5fa26dfe782dbf1645944aca4a8e963d24572bb0b90007`  
		Last Modified: Wed, 05 Sep 2018 10:25:53 GMT  
		Size: 9.7 MB (9690090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69d98c830cad0499c1720f09b5ec6e3dde0f144f0b5ab1b555fa37e4eac6623`  
		Last Modified: Wed, 05 Sep 2018 10:25:51 GMT  
		Size: 4.1 MB (4088370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b9bb8999b31a6d7863b55aa60a4268cb0d6b948e0271befbdd3e6b81af462b`  
		Last Modified: Wed, 05 Sep 2018 10:27:44 GMT  
		Size: 48.0 MB (48003320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4623471a8d29d25bd8631cf9717470e65b3b7c9855d3aa393822bc38d0364951`  
		Last Modified: Thu, 06 Sep 2018 00:51:01 GMT  
		Size: 1.8 KB (1771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421b98e364559a52243eb9a042c48e0fb91436d25a0408676637843e8bdf3a5f`  
		Last Modified: Thu, 06 Sep 2018 00:51:11 GMT  
		Size: 21.9 MB (21890865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rakudo-star:latest`

```console
$ docker pull rakudo-star@sha256:f22b16faf8278f9539b150a4b5b4dcb84028e6440ae66508ac52802a98493f84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm64 variant v8

### `rakudo-star:latest` - linux; amd64

```console
$ docker pull rakudo-star@sha256:ffbc8c5552641054bd8bdaeecff4a49e3a20daa83a58091d702a9b45247c44bb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **132.6 MB (132605973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f236f15ea0bae1cd217297c059ff062717bb736635867f0a65353b1aa9003ef8`
-	Default Command: `["perl6"]`

```dockerfile
# Tue, 04 Sep 2018 21:21:24 GMT
ADD file:58d5c21fcabcf1eec94e8676a3b1e51c5fdc2db5c7b866a761f907fa30ede4d8 in / 
# Tue, 04 Sep 2018 21:21:24 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:33:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:33:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:34:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:31:52 GMT
MAINTAINER Rob Hoelz
# Wed, 05 Sep 2018 10:31:53 GMT
RUN groupadd -r perl6 && useradd -r -g perl6 perl6
# Wed, 05 Sep 2018 10:31:53 GMT
ARG rakudo_version=2018.06
# Wed, 05 Sep 2018 10:31:53 GMT
ENV rakudo_version=2018.06
# Wed, 05 Sep 2018 10:58:20 GMT
RUN buildDeps='         gcc         libc6-dev         libencode-perl         make     '     && set -x     && apt-get update     && apt-get --yes install --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir /root/rakudo     && curl -fsSL http://rakudo.org/downloads/star/rakudo-star-${rakudo_version}.tar.gz -o rakudo.tar.gz     && tar xzf rakudo.tar.gz --strip-components=1 -C /root/rakudo     && (         cd /root/rakudo         && perl Configure.pl --prefix=/usr --gen-moar         && make install     )     && rm -rf /rakudo.tar.gz /root/rakudo     && apt-get purge -y --auto-remove $buildDeps
# Wed, 05 Sep 2018 10:58:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/site/bin
# Wed, 05 Sep 2018 10:58:21 GMT
CMD ["perl6"]
```

-	Layers:
	-	`sha256:05d1a5232b461a4b35424129580054caa878cd56f100e34282510bd4b4082e4d`  
		Last Modified: Tue, 04 Sep 2018 21:25:27 GMT  
		Size: 45.3 MB (45310060 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cee356eda6bfe3a5a229cd3d964e722ade1da4381842b24e943b03a37aec1f2`  
		Last Modified: Tue, 04 Sep 2018 22:52:43 GMT  
		Size: 10.7 MB (10740429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89d3385f0fd3c0c904ff6e87195bb46f5d9d309e8ddd91bc9b20855d103eeffb`  
		Last Modified: Tue, 04 Sep 2018 22:52:42 GMT  
		Size: 4.3 MB (4336162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80ae6b477848b6e03aad8ec9c74f1fb80364e5c8b5fe9ca3ec793df84247f027`  
		Last Modified: Tue, 04 Sep 2018 22:53:04 GMT  
		Size: 50.1 MB (50065233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2ffa5877e9fa5a8124b01f7648cfd3f2b6b7b53628fa3c263019ff51ceba339`  
		Last Modified: Wed, 05 Sep 2018 10:58:45 GMT  
		Size: 1.8 KB (1765 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12a91b3bf96660a7d40b4363ed344a46217b5848b18df68f0fcebd827d4a46f9`  
		Last Modified: Wed, 05 Sep 2018 10:58:53 GMT  
		Size: 22.2 MB (22152324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `rakudo-star:latest` - linux; arm64 variant v8

```console
$ docker pull rakudo-star@sha256:046c2bf68506ca66b0924bc0ec02e60e31576bf346b9e1c8d0f62f3ea966ce97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **126.8 MB (126798037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbfd01c4c6edc851ff3085eddd5c8b3fcf83833adfdfcdf6f34a4ba292a7e889`
-	Default Command: `["perl6"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:16 GMT
ADD file:4e01bc399974f6fe22cd2b4421c2e52c52380aa00a770986939071dbc59d734e in / 
# Wed, 05 Sep 2018 08:50:30 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:02:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:02:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 10:04:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 23:49:21 GMT
MAINTAINER Rob Hoelz
# Wed, 05 Sep 2018 23:49:24 GMT
RUN groupadd -r perl6 && useradd -r -g perl6 perl6
# Wed, 05 Sep 2018 23:49:24 GMT
ARG rakudo_version=2018.06
# Wed, 05 Sep 2018 23:49:25 GMT
ENV rakudo_version=2018.06
# Thu, 06 Sep 2018 00:50:20 GMT
RUN buildDeps='         gcc         libc6-dev         libencode-perl         make     '     && set -x     && apt-get update     && apt-get --yes install --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir /root/rakudo     && curl -fsSL http://rakudo.org/downloads/star/rakudo-star-${rakudo_version}.tar.gz -o rakudo.tar.gz     && tar xzf rakudo.tar.gz --strip-components=1 -C /root/rakudo     && (         cd /root/rakudo         && perl Configure.pl --prefix=/usr --gen-moar         && make install     )     && rm -rf /rakudo.tar.gz /root/rakudo     && apt-get purge -y --auto-remove $buildDeps
# Thu, 06 Sep 2018 00:50:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/site/bin
# Thu, 06 Sep 2018 00:50:22 GMT
CMD ["perl6"]
```

-	Layers:
	-	`sha256:421608e4e92275f9265604523f9299cf5f4bd493a1ea3affd62c265b38fc8823`  
		Last Modified: Wed, 05 Sep 2018 09:06:53 GMT  
		Size: 43.1 MB (43123621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:185ac5864132647baf5fa26dfe782dbf1645944aca4a8e963d24572bb0b90007`  
		Last Modified: Wed, 05 Sep 2018 10:25:53 GMT  
		Size: 9.7 MB (9690090 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c69d98c830cad0499c1720f09b5ec6e3dde0f144f0b5ab1b555fa37e4eac6623`  
		Last Modified: Wed, 05 Sep 2018 10:25:51 GMT  
		Size: 4.1 MB (4088370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40b9bb8999b31a6d7863b55aa60a4268cb0d6b948e0271befbdd3e6b81af462b`  
		Last Modified: Wed, 05 Sep 2018 10:27:44 GMT  
		Size: 48.0 MB (48003320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4623471a8d29d25bd8631cf9717470e65b3b7c9855d3aa393822bc38d0364951`  
		Last Modified: Thu, 06 Sep 2018 00:51:01 GMT  
		Size: 1.8 KB (1771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:421b98e364559a52243eb9a042c48e0fb91436d25a0408676637843e8bdf3a5f`  
		Last Modified: Thu, 06 Sep 2018 00:51:11 GMT  
		Size: 21.9 MB (21890865 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
