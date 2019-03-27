## `buildpack-deps:testing`

```console
$ docker pull buildpack-deps@sha256:d509ed1401699bcf9dfc85fc18f56a113194feaf7f55acbdb23d7a26562a1159
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

### `buildpack-deps:testing` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:c1241d91a9c104608339e37cef06c5b8da6034fa63b8f825f02346f91a702b29
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.8 MB (311789785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef95e6b46eeb5863bba36c9c0c672865ac7ab684e909ee822cd373b8457404ac`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:39:10 GMT
ADD file:76176cc6a94815c82ed8b377f8be206dafafdd7656196edce1f3acbf8762b522 in / 
# Tue, 26 Mar 2019 22:39:11 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:13:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:13:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:13:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:15:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8ee468effd219ecb1753308b8b7435b236ea041486108ab102e6f1f7443b892f`  
		Last Modified: Tue, 26 Mar 2019 22:42:44 GMT  
		Size: 50.2 MB (50229764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba055e9cefd1529a52a28e24a0e75e071c7568d5c609fdf0394ad6afc26471b9`  
		Last Modified: Tue, 26 Mar 2019 23:29:11 GMT  
		Size: 7.8 MB (7785603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99cfb1e76ef4c0f2b08b124f240a27ac45d72d215e73f378075ded1e2e8fff4e`  
		Last Modified: Tue, 26 Mar 2019 23:29:11 GMT  
		Size: 10.0 MB (9972847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79bc2a39457078373d63f7cc7f96f9b08e24deabc1ea40e3f6d27670fb4688fb`  
		Last Modified: Tue, 26 Mar 2019 23:29:28 GMT  
		Size: 51.8 MB (51761069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d469f05e8dc81cb1b3471a32f3c3846eea7c1fba80ac36648d0a7ee8f246197`  
		Last Modified: Tue, 26 Mar 2019 23:30:07 GMT  
		Size: 192.0 MB (192040502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:7ef3ab026ad6ec3687140f3f0ad02483e9aecdae6c59e16c079ed03925e6282c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.7 MB (287684223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ccc7a414e1b221c414f6e7b9741e976608169b5d2184477ab813ac7f9fbfe09`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:49:29 GMT
ADD file:ddb75e8b8e9c5b8098708ceb9869c9ea25f7394921fc8f569eeb754a777da554 in / 
# Wed, 27 Mar 2019 08:49:30 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:18:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:23:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:35:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a3a3fca888d0dad8f4d55cdd346e99c4ba5d7cba92d5c48d66d4f9b00391c738`  
		Last Modified: Wed, 27 Mar 2019 08:56:19 GMT  
		Size: 47.9 MB (47935308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c8984ac3b681c03150d9945d2253c3f42a3b4586c43b3c390b5c7e9166f743`  
		Last Modified: Wed, 27 Mar 2019 10:05:45 GMT  
		Size: 7.3 MB (7336821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60b328cd142d9d00a9fc90f0ad794cbf2c4f196f0542149781c22710ea731162`  
		Last Modified: Wed, 27 Mar 2019 10:05:45 GMT  
		Size: 9.7 MB (9668352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b11f27dc400fadef68469da5c311dcee27b33e1cd70c20606ebbe2c6bbf52ba`  
		Last Modified: Wed, 27 Mar 2019 10:06:08 GMT  
		Size: 51.7 MB (51674621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6c0248396e0aa8df026b00b0d03c893f613c59aa9c9c6a8b0c8284fa43a6ab`  
		Last Modified: Wed, 27 Mar 2019 10:07:02 GMT  
		Size: 171.1 MB (171069121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:2371fd61013331cb3ad476dc42cc9914f5b206ba046b291489d524e72a9a8255
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.6 MB (273556045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ef3f8553b718c136831d8c8f0d4d0b1b4fa530423a590056a393717de8de82d`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:04:44 GMT
ADD file:2ba192582fb2c0b337e48196c2698460a194d03e22e4ad12687c4f150d475994 in / 
# Tue, 05 Mar 2019 13:04:46 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:36:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:36:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 13:37:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:39:08 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a48c086c5e2001e71f1a2e0fe0dba658a521a7b873e880e45c8f67746a80c546`  
		Last Modified: Tue, 05 Mar 2019 13:14:52 GMT  
		Size: 45.6 MB (45639642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:770db833cb9de91deb8c935b59bcd4866449b397bf7b62de2282c822f11f8abc`  
		Last Modified: Tue, 05 Mar 2019 13:58:57 GMT  
		Size: 7.1 MB (7076114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:470b23df0815f7fcd22463426cfa2cb0dfe492818b404eb8b8f275653a10444d`  
		Last Modified: Tue, 05 Mar 2019 13:58:57 GMT  
		Size: 9.3 MB (9317079 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac657404e47abd49b78a31177fd17c8be63325a8bdc36ec9afffcb76edb71741`  
		Last Modified: Tue, 05 Mar 2019 13:59:19 GMT  
		Size: 47.3 MB (47304548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a7cd5a6926a5bfb70236969385b58684246c8bc98afdf06454bf7278171c24`  
		Last Modified: Tue, 05 Mar 2019 14:00:13 GMT  
		Size: 164.2 MB (164218662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:81f5c2d05cfe5704b7847d9a147ce208d3f701ebea9e1c793fb45ad286eb5ab9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.4 MB (304380387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1528f47172d93523e2b5f6fa126e6cd96dddc88d7799b1457e936e1c56c0150`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:44:48 GMT
ADD file:efdad40bd88daf011b7ec9e7c3bf62f934bcb8f2e84321dcf5b519af553c8be2 in / 
# Wed, 27 Mar 2019 08:44:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:38:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:38:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:43:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:04:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:83128e932c2f242170e54dd01950ab9384a9fb68c814a77c1632b9fb6a007661`  
		Last Modified: Wed, 27 Mar 2019 08:50:27 GMT  
		Size: 49.0 MB (49022969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea80f3ad9712797dccb9be63a9f07b097495de62f956980d0d2369dfa244cc13`  
		Last Modified: Wed, 27 Mar 2019 10:31:54 GMT  
		Size: 7.6 MB (7649554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223575240873e37aa2265ea9e7b80eb3b7b52bf4e3ee6a95e4fc614db50faa96`  
		Last Modified: Wed, 27 Mar 2019 10:31:55 GMT  
		Size: 10.0 MB (9959515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f001e394762edf0d9410b5d39b7602b0a4578e5a711c04b7719b36c6a2b34b98`  
		Last Modified: Wed, 27 Mar 2019 10:32:30 GMT  
		Size: 54.2 MB (54244244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec3a65a54da77a67bdbf970e61974cf70c1d1d8d5e3c91bb073f111f8ef3d38`  
		Last Modified: Wed, 27 Mar 2019 10:33:47 GMT  
		Size: 183.5 MB (183504105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; 386

```console
$ docker pull buildpack-deps@sha256:de65ba8fd3f02fc3dffc559bc42ae0ee801dac66aaea1f099607b9e0d5625f88
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.7 MB (316683533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27ae2ac2f38805e21e9b541e0928bb7edc4eadac2804949b447d7c69b4cf83ea`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:39:45 GMT
ADD file:13f327af89182501665dd89471b307a8c0b3ae23437ddeb7da2f1bffb908095b in / 
# Tue, 05 Mar 2019 11:39:46 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 20:54:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 20:54:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 20:54:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 20:56:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1b547c12a9a79a6d7efd6e0e99bc0c698e1df51905ed8d34f0fb576a33e69087`  
		Last Modified: Tue, 05 Mar 2019 11:50:22 GMT  
		Size: 50.9 MB (50916845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8097f3a05edb0db816f79d4186a3a1353362dc30c5fd5575ab1b6518fe5a35c1`  
		Last Modified: Tue, 05 Mar 2019 21:14:34 GMT  
		Size: 7.9 MB (7937959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce69f22f8f5b57df149ab1ca3151af16233920955eb20ed6262fb7dbcdd9b269`  
		Last Modified: Tue, 05 Mar 2019 21:14:37 GMT  
		Size: 10.3 MB (10310712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2230c46aa23eb9506eaa1f5c832e22d2d3e074906f9c0dc2b7e1f343c0cafa83`  
		Last Modified: Tue, 05 Mar 2019 21:14:54 GMT  
		Size: 53.4 MB (53373452 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eeff39fa6100e1b9f063041557a821e449380f14a033f41dfbf1567b19edc6c`  
		Last Modified: Tue, 05 Mar 2019 21:15:37 GMT  
		Size: 194.1 MB (194144565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:cf90b69120d651426c0cd7063019f8999b57028b1302b53fa7e6dcc5584c2526
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.6 MB (335595011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfa1d186c25704270b30811b10a393f9fa1da31855d5a41a142878b19b8832e9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:22:41 GMT
ADD file:aa7dc9cdae0cf7507369fae7d6118dcd3d999e00e3ef21068695fe6648ac20ca in / 
# Wed, 27 Mar 2019 08:22:45 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 08:52:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 08:53:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 08:56:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:16:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1bb6234125526f51a6b0bfb06f13173fcd77203e03fd3ea331c9bf5b8b9fd9a8`  
		Last Modified: Wed, 27 Mar 2019 08:28:51 GMT  
		Size: 54.0 MB (53972187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f57cdc447a7a0169ef80f47a0c1720252005fef375ead499d25d52a1cf711ce`  
		Last Modified: Wed, 27 Mar 2019 09:46:17 GMT  
		Size: 8.2 MB (8220179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a73c130df883fca60855727b95f93bac30bf0d5df50fee10997cff4dffe61b`  
		Last Modified: Wed, 27 Mar 2019 09:46:18 GMT  
		Size: 10.7 MB (10710648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd69301347f7a7ffda64b0c611893395c013f32af8193a7a4076862d385ee2bf`  
		Last Modified: Wed, 27 Mar 2019 09:46:56 GMT  
		Size: 59.7 MB (59698998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6a112a592721d205177b8affb38ae34b3ecd53e540e553371d4f7d541ae667d`  
		Last Modified: Wed, 27 Mar 2019 09:48:33 GMT  
		Size: 203.0 MB (202992999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:68494093916606564374ba6a64c30b2bf6c24d503db95a6da19eb34e78401293
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.8 MB (289782007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:946b938fa8f106dc4e4539068e48f6eb17f0ef8f2662dccf1abe049769b8dfa9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 12:41:56 GMT
ADD file:e5027bc6f0310670ee8930b84a7e3ce671be0000267c8b568d7f0d13112b0f2d in / 
# Tue, 05 Mar 2019 12:41:56 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:30:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:30:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 13:31:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:32:54 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:931b689d4ee3f4f1d7abaf2ce3f02f09f00a2ead1ec2e5ab8150fc5bca993e10`  
		Last Modified: Tue, 05 Mar 2019 12:44:22 GMT  
		Size: 48.7 MB (48733424 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:714c460d2e8818aa26138aaedd89c03ff6ad45f951f0440944086630d443b438`  
		Last Modified: Tue, 05 Mar 2019 13:38:35 GMT  
		Size: 7.4 MB (7353931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58747b0755b513c53be17c1fec99456bdd7705d5d22d8d8b73c9eb4ba8946fe0`  
		Last Modified: Tue, 05 Mar 2019 13:38:35 GMT  
		Size: 9.9 MB (9852536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1f2d0d8c14b4643d3a1eea936fc9175f74300cd403d95b261fc2188d46b1bd4`  
		Last Modified: Tue, 05 Mar 2019 13:38:50 GMT  
		Size: 51.3 MB (51303152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:784d499abb6a4376eb43bf58b0ed5c8170180f5bff79c15ed309df8393a5594a`  
		Last Modified: Tue, 05 Mar 2019 13:39:21 GMT  
		Size: 172.5 MB (172538964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
