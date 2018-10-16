## `buildpack-deps:unstable`

```console
$ docker pull buildpack-deps@sha256:0bfb7f72079500ac2625c6af4497e01562ec5be912986f80632de8c544100dea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `buildpack-deps:unstable` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:bb7b511348bda1d674e795c800e9e2613e9176c440d3d225478db424ce01586f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.3 MB (298347389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07317caa8d7c10ef23d90df516f72da7927f842a3054609c55fc934545cca055`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:22:53 GMT
ADD file:12e34cd91f24d3d0c4716498cdd87838722af59e568ba8c18c457c367a53a315 in / 
# Mon, 15 Oct 2018 23:22:53 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 00:58:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 00:58:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 00:59:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:21 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:38517b3035164966f7e2b960f3e87e1f9178537d06992e6045fbd375b84cddfa`  
		Last Modified: Mon, 15 Oct 2018 23:31:59 GMT  
		Size: 49.1 MB (49107897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d518e0b86e7ef6483709500f0dc9be4abfd5336b2516ddb335a46601ebabbd3f`  
		Last Modified: Tue, 16 Oct 2018 01:10:56 GMT  
		Size: 7.4 MB (7366348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75323769698f687431e704e4c1f298f8e803cf5a000e24ccb08f94cbf4a7fda8`  
		Last Modified: Tue, 16 Oct 2018 01:10:55 GMT  
		Size: 9.8 MB (9779476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56058d5d210a80427df6a7f06ac6759e9f5b4b1b064101e843857b0cd4774fc4`  
		Last Modified: Tue, 16 Oct 2018 01:11:36 GMT  
		Size: 51.5 MB (51540357 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2efaad4e511ba234c3600e9c90ba82e59845152c16bef86446e188cbc9444ac5`  
		Last Modified: Tue, 16 Oct 2018 01:12:50 GMT  
		Size: 180.6 MB (180553311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:66c4fd74802bcf3ca774bfb6176efa82598a64403e6c2f1ccfeb4efeeb038bd5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.8 MB (279774125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af1444a2eccd9b6e527bfffaa5b91a3cb87b088619c0925a7fc8f4ebf1ff2fd0`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:53:12 GMT
ADD file:d204a837dc7c47c406943c2337da21ccd177ea67f346558d9dd6ba518eb5e445 in / 
# Tue, 16 Oct 2018 08:53:15 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 09:57:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:57:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 09:57:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:59:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3a2a7cefe87adee1328d1887984c79e8eb71aaaefc97a339601a30fd31866a41`  
		Last Modified: Tue, 16 Oct 2018 09:02:27 GMT  
		Size: 46.9 MB (46860503 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60d7aa278f4362b2edbbce821b9f1a65a7261251e406d795abe1de7406022f6e`  
		Last Modified: Tue, 16 Oct 2018 10:07:58 GMT  
		Size: 6.9 MB (6928930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8719d70374582583b66be882a7cbb9628ceb5404972849699d4f2d8ff4b9b1a`  
		Last Modified: Tue, 16 Oct 2018 10:07:58 GMT  
		Size: 9.5 MB (9481567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36a9c33ee17a37fd7e022b0be2efdf422af4924ae617c59a153d82f688846f3b`  
		Last Modified: Tue, 16 Oct 2018 10:08:26 GMT  
		Size: 48.9 MB (48862779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f2c20ed8a98939f0c890e47e2fc910e84a629eb3f0121ffd1e31182587c90b`  
		Last Modified: Tue, 16 Oct 2018 10:09:22 GMT  
		Size: 167.6 MB (167640346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:bab360067b0897a05211921252c90698ca4f1abfeb3009ee34caffd72d69b804
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.0 MB (267991070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e43ad855b1546b7e8523f9650da5c30f637f335388cb5cdfe5f3238cbf9fb98c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 12:03:01 GMT
ADD file:3d47e4eafb1700975274b7c68ee1bd156e101e5252d990f75937d97a90f7b613 in / 
# Tue, 16 Oct 2018 12:03:02 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:56:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:56:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:56:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:58:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4760d7874360cf16afc72e3ed07e58414d51cccfc8023f0bf68562c82bc5c471`  
		Last Modified: Tue, 16 Oct 2018 12:14:27 GMT  
		Size: 44.7 MB (44685243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbf3556848531bb0de55219dfc3b1b3ead9022491a581f3743bb1deed1be8020`  
		Last Modified: Tue, 16 Oct 2018 13:08:04 GMT  
		Size: 6.7 MB (6695969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ff12a4449485ceb38e16a1bd08c8ddf2cb0f1ab093e8bf728aa26f5a57eb3143`  
		Last Modified: Tue, 16 Oct 2018 13:08:05 GMT  
		Size: 9.1 MB (9147432 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09d2c4fc3e2ae61ecf280521f31277e7e3a7402650d05fbc344154d64376bd35`  
		Last Modified: Tue, 16 Oct 2018 13:08:35 GMT  
		Size: 46.7 MB (46655506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a2b911d9b43df8fbf556f2397a44481b627c7c166008db635e24d511d9abe46`  
		Last Modified: Tue, 16 Oct 2018 13:09:36 GMT  
		Size: 160.8 MB (160806920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:d29b53d41f32f1e75c6a90b1a6aefe9b48d831dc498f194ba97a4a920492baec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.6 MB (287646103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0ef0ccb85f81b1a94eedb764f1273ee8c4cc66a1bac4afc629429516938aaa4`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:41:25 GMT
ADD file:993a36018778e74ae6ce1afa2ba4377c60bb69d360987bc158b9081037ec8587 in / 
# Tue, 16 Oct 2018 08:41:26 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:49:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 11:50:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 11:51:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 11:59:48 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:157e3bb7825ebf937e61c4c02ade571002c5e3384dd3ae81d0832ee2d2619b06`  
		Last Modified: Tue, 16 Oct 2018 08:47:21 GMT  
		Size: 47.5 MB (47450464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83f8de04214fdc4137f7d41d3599d88cf4c390e58bb76896eae9237f093061c`  
		Last Modified: Tue, 16 Oct 2018 12:22:21 GMT  
		Size: 7.2 MB (7224934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6deb5de10153c14c4ffdf7b58fb5870696269f775b23af4750ab252a31b2fbd1`  
		Last Modified: Tue, 16 Oct 2018 12:22:21 GMT  
		Size: 9.8 MB (9760024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c085808a9d5ae5dc447f159d9e8f1139527509fd638cb2cea8dca8d2dfd2332`  
		Last Modified: Tue, 16 Oct 2018 12:23:16 GMT  
		Size: 51.4 MB (51402148 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:611f64939bbf2dea33d89d87dbfea7852604cbed48afd8792cadb95e20a479a3`  
		Last Modified: Tue, 16 Oct 2018 12:25:17 GMT  
		Size: 171.8 MB (171808533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable` - linux; 386

```console
$ docker pull buildpack-deps@sha256:25980ff27af6581a09357c43944ca36dd0e9e40230d913f142deb13a6b217cbf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **313.4 MB (313426619 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:080527305aaf806b0760e2ba5e1a45a41d4c55022f74505a7e351202216cb53b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 05 Sep 2018 10:42:05 GMT
ADD file:8de67e0fc0d437844f80c43c2040a020c9b920f19c3af0645d06ad1f79099fd9 in / 
# Wed, 05 Sep 2018 10:42:06 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:36:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:36:23 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:37:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:39:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c5ab6b8677b80e3d03b9cf7f6d60c5ea5e55c3ef5201228d2a1e02348632bc3b`  
		Last Modified: Wed, 05 Sep 2018 10:50:26 GMT  
		Size: 49.8 MB (49764498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3334592e8df26ecd8135ae4d98e26ee5c2152c588781fdbcb617525eab00347d`  
		Last Modified: Wed, 05 Sep 2018 12:05:57 GMT  
		Size: 7.5 MB (7502763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a22424c58e25912b79ad47701b7d26c1644849d325d1095b43486c45357dce9e`  
		Last Modified: Wed, 05 Sep 2018 12:05:57 GMT  
		Size: 9.6 MB (9583883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:606003a3bac6354e2e80ce2f5036fbff540fbcf335b2bd782faa2a3abf25bc7d`  
		Last Modified: Wed, 05 Sep 2018 12:06:47 GMT  
		Size: 52.8 MB (52818485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466454e819c9bb33fa5f4969efe8619783044a49c1f74bad1dccb1340fae4c72`  
		Last Modified: Wed, 05 Sep 2018 12:08:41 GMT  
		Size: 193.8 MB (193756990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:5b199b7d1eb872dd7113aab436a3d3ecb6f3e4d235f5fc00429430983d550220
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.1 MB (314136105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c7360fd7ba48d0fa0ac88470c1e414998363412e29f1020a9c479e4ee913f84`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:19:05 GMT
ADD file:d9b7fdbd5284d601c2fa0ac9ef56d94501675e8bb1272b818f990813457dad97 in / 
# Tue, 16 Oct 2018 08:19:08 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:32:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:33:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 10:34:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:46:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:266ba3ea23b4937c573be52c8dbda3ecd61615aa8a826c0f19bd1519b482bc99`  
		Last Modified: Tue, 16 Oct 2018 08:27:28 GMT  
		Size: 52.1 MB (52120737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:266e6f3713eef6a8650ec4bf4167b39cb239334429d5c2733fa67322152e2f75`  
		Last Modified: Tue, 16 Oct 2018 11:03:38 GMT  
		Size: 7.8 MB (7767281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c1406edfbf4000946a084c99d2dcae8c42613c41d2b8837c867e2f41f42551`  
		Last Modified: Tue, 16 Oct 2018 11:03:38 GMT  
		Size: 10.5 MB (10523368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb6649af4f26043502717dc3f793eef48c195aecea7c6b420c3bdd490bda630`  
		Last Modified: Tue, 16 Oct 2018 11:04:20 GMT  
		Size: 57.0 MB (56995714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b061702bbd4da65849171513ead0ca8900af8590ee9c543e8eb0c055778520ba`  
		Last Modified: Tue, 16 Oct 2018 11:05:46 GMT  
		Size: 186.7 MB (186729005 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:27115251aa3d957e1848451d882229ca64a4921b52b5dac557911d705d0f2ca7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.9 MB (282854579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ae8e952d5c251fc4bcc04c5b94fc305253d8c86b42ddce31fe58fa984372230`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 11:41:58 GMT
ADD file:c2788418bf37902fd1afb90f8c09580137baf257270ad310c93f4617b2910c5c in / 
# Tue, 16 Oct 2018 11:41:58 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:52:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:52:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:52:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:53:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3d678438ae7450e08efed3c628d6a7e353e585928d4dfe02330f09708b274772`  
		Last Modified: Tue, 16 Oct 2018 11:44:43 GMT  
		Size: 47.7 MB (47695841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:370423f265313c06fe7dd635c4b99d81682ced500c2b77a849335c6f0d80cc04`  
		Last Modified: Tue, 16 Oct 2018 12:57:15 GMT  
		Size: 7.0 MB (7035166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdeca24a03568efca643ee17996da4af2979d3da4313f8c2b884ffa852c56204`  
		Last Modified: Tue, 16 Oct 2018 12:57:15 GMT  
		Size: 9.7 MB (9670377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab206992eb083e779de5da810384a9c84c11310c45a5b9fd82ebae123edb8722`  
		Last Modified: Tue, 16 Oct 2018 12:57:31 GMT  
		Size: 50.8 MB (50751889 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b05154e38948580189b41b42d0a2140f94857f3d54c6151e5a07e3ad04ffa310`  
		Last Modified: Tue, 16 Oct 2018 12:58:06 GMT  
		Size: 167.7 MB (167701306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
