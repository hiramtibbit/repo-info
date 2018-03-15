<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `rakudo-star`

-	[`rakudo-star:2018.01`](#rakudo-star201801)
-	[`rakudo-star:latest`](#rakudo-starlatest)

## `rakudo-star:2018.01`

```console
$ docker pull rakudo-star@sha256:6edd54d128cdf1008caf9ce39186f893fb67d0e9d4f6845d1a699d712b19cf79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rakudo-star:2018.01` - linux; amd64

```console
$ docker pull rakudo-star@sha256:40a1bcf3750e39a9d3d6bd78d14f3d24e8e5e7ea354b08c2ec3160fb6b933355
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131584644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec8a2650e4987a3c29692f61e07d14f4895e9e805384da6cdc0c36606c869be6`
-	Default Command: `["perl6"]`

```dockerfile
# Tue, 13 Mar 2018 22:26:49 GMT
ADD file:b380df301ccb5ca09f0d7cd5697ed402fa55f3e9bc5df2f4d489ba31f28de58a in / 
# Tue, 13 Mar 2018 22:26:49 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:56:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:56:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 05:41:24 GMT
MAINTAINER Rob Hoelz
# Thu, 15 Mar 2018 05:41:25 GMT
RUN groupadd -r perl6 && useradd -r -g perl6 perl6
# Thu, 15 Mar 2018 05:41:25 GMT
ARG rakudo_version=2018.01
# Thu, 15 Mar 2018 05:41:26 GMT
ENV rakudo_version=2018.01
# Thu, 15 Mar 2018 05:52:27 GMT
RUN buildDeps='         gcc         libc6-dev         libencode-perl         make     '     && set -x     && apt-get update     && apt-get --yes install --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir /root/rakudo     && curl -fsSL http://rakudo.org/downloads/star/rakudo-star-${rakudo_version}.tar.gz -o rakudo.tar.gz     && tar xzf rakudo.tar.gz --strip-components=1 -C /root/rakudo     && (         cd /root/rakudo         && perl Configure.pl --prefix=/usr --gen-moar         && make install     )     && rm -rf /rakudo.tar.gz /root/rakudo     && apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Mar 2018 05:52:27 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/site/bin
# Thu, 15 Mar 2018 05:52:28 GMT
CMD ["perl6"]
```

-	Layers:
	-	`sha256:c73ab1c6897bf5c11da3c95cab103e7ca8cf10a6d041eda2ff836f45a40e3d3b`  
		Last Modified: Tue, 13 Mar 2018 22:52:31 GMT  
		Size: 45.1 MB (45135077 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab373b3deaed929a15574ac1912afc6e173f80d400aba0e96c89f6a58961f2d`  
		Last Modified: Wed, 14 Mar 2018 00:46:17 GMT  
		Size: 11.1 MB (11108010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b542772b417703c0311c0b90136091369bcd9c2176c0e3ceed5a0114d743ee3c`  
		Last Modified: Wed, 14 Mar 2018 00:46:16 GMT  
		Size: 4.3 MB (4335495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57c8de432dbe337bb6cb1ad328e6c564303a3d3fd05b5e872fd9c47c16fdd02c`  
		Last Modified: Wed, 14 Mar 2018 00:47:09 GMT  
		Size: 50.0 MB (50023717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1576a1871583ccafd4136f19a8ab67fdadf5c519049bb52056f598b7981bc95e`  
		Last Modified: Thu, 15 Mar 2018 06:07:48 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ba2f052fb65a034e375b772d7dde53d5001476f4a09f2ecc37cb9d4e7750d5c`  
		Last Modified: Thu, 15 Mar 2018 06:07:53 GMT  
		Size: 21.0 MB (20980578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `rakudo-star:latest`

```console
$ docker pull rakudo-star@sha256:60426c00de616cfd05838304b498e0167e6d3072aa034fa93470b76b5d13c038
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64

### `rakudo-star:latest` - linux; amd64

```console
$ docker pull rakudo-star@sha256:d2054bc9a4d961532350f2f240e82e8abd57f92da4e0e0af19f758c484594a3b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.6 MB (131579275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf875bb65571c382607919aa8db4022e55548904f5186cc317b09e0fca414d3f`
-	Default Command: `["perl6"]`

```dockerfile
# Thu, 15 Feb 2018 01:58:24 GMT
ADD file:7d3b21b18d7bc6d6db1349979cf0e68073647e90c892aebab0da5d679b5550eb in / 
# Thu, 15 Feb 2018 02:01:04 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 03:55:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 03:55:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 03:56:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 16:18:04 GMT
MAINTAINER Rob Hoelz
# Thu, 15 Feb 2018 16:18:05 GMT
RUN groupadd -r perl6 && useradd -r -g perl6 perl6
# Thu, 15 Feb 2018 16:18:06 GMT
ARG rakudo_version=2018.01
# Thu, 15 Feb 2018 16:18:06 GMT
ENV rakudo_version=2018.01
# Thu, 15 Feb 2018 16:34:34 GMT
RUN buildDeps='         gcc         libc6-dev         libencode-perl         make     '     && set -x     && apt-get update     && apt-get --yes install --no-install-recommends $buildDeps     && rm -rf /var/lib/apt/lists/*     && mkdir /root/rakudo     && curl -fsSL http://rakudo.org/downloads/star/rakudo-star-${rakudo_version}.tar.gz -o rakudo.tar.gz     && tar xzf rakudo.tar.gz --strip-components=1 -C /root/rakudo     && (         cd /root/rakudo         && perl Configure.pl --prefix=/usr --gen-moar         && make install     )     && rm -rf /rakudo.tar.gz /root/rakudo     && apt-get purge -y --auto-remove $buildDeps
# Thu, 15 Feb 2018 16:34:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/share/perl6/site/bin
# Thu, 15 Feb 2018 16:34:35 GMT
CMD ["perl6"]
```

-	Layers:
	-	`sha256:3e731ddb7fc902c6fc10f00cd7f99f11d63914692bd8c2816a29e6d016353932`  
		Last Modified: Thu, 15 Feb 2018 02:26:01 GMT  
		Size: 45.1 MB (45132625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47cafa6a79d0be5bd8a64fe52bfc4178072e067e8f5ed5c224d5330107424335`  
		Last Modified: Thu, 15 Feb 2018 04:40:22 GMT  
		Size: 11.1 MB (11107850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79fcf5a213c7dfb0aa4eeed5922f9c2b6261cf60bb27f2dd9d761d6030689b39`  
		Last Modified: Thu, 15 Feb 2018 04:40:19 GMT  
		Size: 4.3 MB (4335400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e99216b7ade69e485ea213e61a54528fde48b4dc4cf05715fa3492b9dad3f1`  
		Last Modified: Thu, 15 Feb 2018 04:41:14 GMT  
		Size: 50.0 MB (50022692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:492ea1adf5b620524747eff3454492ba21de879ce6846407243b92092c81f11a`  
		Last Modified: Thu, 15 Feb 2018 16:35:02 GMT  
		Size: 1.8 KB (1768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f9618dda826666b140761cd7f7fc449096698e1eeb00ce942f3606a566fcdc3`  
		Last Modified: Thu, 15 Feb 2018 16:35:07 GMT  
		Size: 21.0 MB (20978940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
