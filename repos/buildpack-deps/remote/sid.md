## `buildpack-deps:sid`

```console
$ docker pull buildpack-deps@sha256:c794b905b3691a63bbf1fba83ffa3bb02db56b6b09b489f3523f99001da40863
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

### `buildpack-deps:sid` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:4b2d0765dc8a9ae571ea13ab34cb2d023dbc754dfe6d0a70f5d446f3e2b0875c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **306.7 MB (306714693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7896d59a23c4d9b9a392f0fd9a9dec77eecb49384b6a4843dc58e21a2a912268`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 28 Dec 2018 23:27:16 GMT
ADD file:a8b53d71a5992a0dcc8277eacfbc2320c583cb4afb386a3af91f143319dab415 in / 
# Fri, 28 Dec 2018 23:27:17 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:02:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:02:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 00:03:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:32:26 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6d3c280df34afe0f4fab360f1675e991cbd7c97ec4d88098c1ec85ce64746aab`  
		Last Modified: Fri, 28 Dec 2018 23:35:07 GMT  
		Size: 49.8 MB (49797033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:90a9494815e4cca6f6c58b6a569316db2831809cb1f53f3d53253624ac0aae89`  
		Last Modified: Sat, 29 Dec 2018 00:20:29 GMT  
		Size: 7.7 MB (7703466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f3608709f6cb36e535319ab3567536bb147e1e9b743a26c680b14cc63c983ef`  
		Last Modified: Sat, 29 Dec 2018 00:20:29 GMT  
		Size: 10.0 MB (9965930 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2fb7f43ae6424085fe43a103e560b3b9559962c1f3a7f214c2949931a08e7b6`  
		Last Modified: Sat, 29 Dec 2018 00:20:45 GMT  
		Size: 51.8 MB (51782308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3777e6d10b695ebdaae393a118f40e431d32cbb1515efa396e1fb3bc6fd39c5e`  
		Last Modified: Tue, 08 Jan 2019 23:44:43 GMT  
		Size: 187.5 MB (187465956 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:b09124cb0a4b8e054bae6e69a54bc14980d3c97af3a373c3f521ead0aff202ad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.1 MB (285068261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:341626e092a5fdfc3c81e08ddf334e053d3c041a3e91006b8a9306d6d622a011`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:53:14 GMT
ADD file:bbf3d04b1ab90755a373631c3624fbab9db5026135c8d50af94b7dbe10c2dac1 in / 
# Sat, 29 Dec 2018 09:53:15 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:30:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:30:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 10:31:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 09:56:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:56a0afd770bd9b2fec7b7f148f23cee78c5c9c969a9d714c127b97598862f79d`  
		Last Modified: Sat, 29 Dec 2018 10:01:51 GMT  
		Size: 47.5 MB (47474125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb55adba1c8ee15586b82dbbe62f3ee01c9f99f05e59bd5333da0dda3d2c68f`  
		Last Modified: Sat, 29 Dec 2018 10:42:19 GMT  
		Size: 7.3 MB (7253840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebcaf20e7cc65a07b29893ee04946eb5d5fa9256532d7a99fedcf368574c5a81`  
		Last Modified: Sat, 29 Dec 2018 10:42:19 GMT  
		Size: 9.7 MB (9659000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d979eadd347d863e429d15d26981d6a1b04b5dd7c7e4eb4384d791105a45d4b4`  
		Last Modified: Sat, 29 Dec 2018 10:42:42 GMT  
		Size: 49.5 MB (49522779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c7e2ca29fa71f732fdde9d7a3e2c5b34c79b18f7dda01b1ac7e808230f95b52`  
		Last Modified: Wed, 09 Jan 2019 10:03:32 GMT  
		Size: 171.2 MB (171158517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:d02d69bb9cb173da73cf3af6c21e2683ddc3bb16efb6cbdfaacb1e2f2434dedd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.4 MB (273386378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8da536572062c7f8991a0ade4430fe6206f1019624000770b73a4e4d10f05b0`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 13:02:31 GMT
ADD file:4410480801a6ff66a1068c94456f31359fa9346cc412479929df3ce6cb93e7fb in / 
# Sat, 29 Dec 2018 13:02:32 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:40:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:40:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 13:41:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 13:11:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a17a606f0d1dbe6a3c0c748e0a1e8f502af3849e9263c3d661120fbd26dc6028`  
		Last Modified: Sat, 29 Dec 2018 13:11:20 GMT  
		Size: 45.3 MB (45260316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42b29bb8e755ba510d79248e3ac60d71a3cb2cc962cc578ce24b325cb486e153`  
		Last Modified: Sat, 29 Dec 2018 14:03:11 GMT  
		Size: 7.0 MB (7001572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fb8412e32af8776dfc9b0fd4d86d3cd2baf2200e9f716a0d8d1a0e24ce7628d`  
		Last Modified: Sat, 29 Dec 2018 14:03:11 GMT  
		Size: 9.3 MB (9315839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a0341a91c0354da730faa002267d22df5fc309f4461d5d0f17fbf4743287ffc`  
		Last Modified: Sat, 29 Dec 2018 14:03:32 GMT  
		Size: 47.3 MB (47312891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c8a10835a03b792f087af9fe4463f45e4f5162b4359c2266c00a7903925d422`  
		Last Modified: Wed, 09 Jan 2019 13:24:26 GMT  
		Size: 164.5 MB (164495760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:e574288eec3fa55bdd57a231f72f878acfd5030ac6c66082f3e14a2aa9262c94
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.8 MB (294837780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b15dc849925a4731128457365fcf877b4b17896fcfe8547423e730fef251780`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:05:53 GMT
ADD file:16f19362d47eec8582d5843c93afec247d55ac90bd3e2351e61cbac163b34c0e in / 
# Sat, 29 Dec 2018 10:05:55 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 11:56:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:58:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 12:00:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 10:30:20 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c0d52c910d70508104f9c514efede1ce4866075357222288e85fd8962ababf3f`  
		Last Modified: Sat, 29 Dec 2018 10:13:07 GMT  
		Size: 48.5 MB (48472215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299400b75513a26ee0b2e41cb618ed032e76599ba1eaa1ea85dc39203a221c1f`  
		Last Modified: Sat, 29 Dec 2018 13:31:14 GMT  
		Size: 7.6 MB (7566461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37af55c5fb1ea6a1f3b0966a3001f2f7832ecbf8f96d02c2ff4c114898ed3a4c`  
		Last Modified: Sat, 29 Dec 2018 13:31:03 GMT  
		Size: 10.0 MB (9953658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a34408f761feec62e7ef757b10d6f788719ba9ab7c7f8da75926c2d4f7ee02`  
		Last Modified: Sat, 29 Dec 2018 13:31:45 GMT  
		Size: 52.1 MB (52098960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26775faa9a32ed9bb26393825b94898897a275237192d3a3b430b7f7bba69b2a`  
		Last Modified: Wed, 09 Jan 2019 11:01:47 GMT  
		Size: 176.7 MB (176746486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid` - linux; 386

```console
$ docker pull buildpack-deps@sha256:d9091139571b5a068ff6e45571dd455bcc425ceb0f273eeabf0c222936983180
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.5 MB (316452986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ce7058852563479b938dc6d5634af091dfb013e4a6f8470cdcf4ffdac36963a`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 11:49:49 GMT
ADD file:b879bf0d08d1273e509a19b6ef7111b0ed2dcb1de16a7715dae55f362d2b5efe in / 
# Sat, 29 Dec 2018 11:49:49 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:58:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:58:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 12:58:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 11:52:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6d9293f359b656b26182f0ec7ff44edb5301074fb77a7fb5baa27ff469b778ce`  
		Last Modified: Sat, 29 Dec 2018 12:08:46 GMT  
		Size: 50.6 MB (50553475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d79ce5d52d79c612f6464b51b32d8850c674cb516d79ca4571f22ee2771e73cc`  
		Last Modified: Sat, 29 Dec 2018 13:26:15 GMT  
		Size: 7.9 MB (7855159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efc669298b75e3618f56a635304728f37b5904a5743e9f188d4c136b249917b2`  
		Last Modified: Sat, 29 Dec 2018 13:26:15 GMT  
		Size: 10.3 MB (10307695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:722e1bfbd0fc0c263917ed306fed808276b6b4bd263ccefa39b2d31838ecebc9`  
		Last Modified: Sat, 29 Dec 2018 13:26:47 GMT  
		Size: 53.4 MB (53368183 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30999c4b02c11aa0d3274258784b2309863f8c01108fd801735d7cf34853edbb`  
		Last Modified: Wed, 09 Jan 2019 12:05:50 GMT  
		Size: 194.4 MB (194368474 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:abef1a1b9838329bdb8331b00ed6fb59419c3b0d060ddaa35e31d9aba343957b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.5 MB (324528494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2431e814f63cbda1530485ffdc1411074900ae4f4ff6d3c4fc6372904cfd6d0`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:20:43 GMT
ADD file:2554b79107be415058aa9583ae616c4dbdf53850afe279b6b57c6f4d6cc9b0b1 in / 
# Sat, 29 Dec 2018 09:20:44 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:27:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:28:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 10:30:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 09:50:21 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3e4b2e95f4e41a9cad6c746f1dc0185d059f9b9eacd1287be8d39d0709e4182f`  
		Last Modified: Sat, 29 Dec 2018 09:26:10 GMT  
		Size: 53.4 MB (53407199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d50534b4ae7aac86bc7ccfd4d3cf882820ceaccc4678c0271d9eb539fc55401`  
		Last Modified: Sat, 29 Dec 2018 11:16:08 GMT  
		Size: 8.1 MB (8137820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf43e2e8204d6afcb3f7773107fe0f36295ce802ad9ecf5148a5943555e1ecd0`  
		Last Modified: Sat, 29 Dec 2018 11:16:07 GMT  
		Size: 10.7 MB (10703322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92f24e566940c24024c1617bb230dd55707c1bb7bdb34e39632e09481ede241f`  
		Last Modified: Sat, 29 Dec 2018 11:16:43 GMT  
		Size: 57.4 MB (57421811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d03e60d8b9d5ece19f8b330d31aff0da5affae9d9cb44165617cea3a8fd63bf`  
		Last Modified: Wed, 09 Jan 2019 10:15:57 GMT  
		Size: 194.9 MB (194858342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:b23de5aa7f9d8a93bc96022214862f96509dbbf3ca536e4f78d415e90443bba3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.0 MB (289038370 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:887040eb5bc3f080465339c12175ca66b7628ce4ef186acdf3ab07858b3a5b7c`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:42:41 GMT
ADD file:ea74ad702ee4e4806ae6232378b3387a7e1a47d808be83db391a7d5266cc3450 in / 
# Sat, 29 Dec 2018 12:42:41 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:14:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:14:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 13:14:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:49:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3b95e9248260917e0fbc6d296dfa921cc71782d00d267186d0ba00d2acaeb0d9`  
		Last Modified: Sat, 29 Dec 2018 12:45:53 GMT  
		Size: 48.4 MB (48371149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a407afbf900eb4d1e0a4f909f8c0d352783998773c4b0ad8f409f525697b5f2`  
		Last Modified: Sat, 29 Dec 2018 13:24:02 GMT  
		Size: 7.3 MB (7280243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5bf4c88d71ead92959b1be2e334d0a45b93f3edb5530e7f13ce2864c61e666f4`  
		Last Modified: Sat, 29 Dec 2018 13:24:03 GMT  
		Size: 9.9 MB (9854412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:517a37d4e8335908a2075ec64551117531d0c08d570aabc3fe9101dafb041777`  
		Last Modified: Sat, 29 Dec 2018 13:24:18 GMT  
		Size: 51.3 MB (51302776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef642433485a08b9ebfd777b493d8d8ad624757f8173660db959442edf255cf7`  
		Last Modified: Wed, 09 Jan 2019 12:55:35 GMT  
		Size: 172.2 MB (172229790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
