## `buildpack-deps:buster`

```console
$ docker pull buildpack-deps@sha256:15a3de99f800657c83bf15c7154765d9a2c39df728dcceba0b2bbe743ae7e76e
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

### `buildpack-deps:buster` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:a7e7494a4aaca217221a59c9cbd4dc108a691dc1dcc8a8c21592d4dde0881c89
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.2 MB (312159994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0290089525814bfbe5109ba613a151d825be026386c04df034f62fbfd9751eda`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:21:37 GMT
ADD file:e7b0b4ed23ac0ce3e8c4d65daa6a8896533c92b2dd167ba2c15c7181354d64b6 in / 
# Mon, 10 Jun 2019 23:21:37 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:15:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:15:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:15:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:17:13 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:478cd0aa93c0da2489a29b95d43a21a942cece28ecb0ba0f99770f52eb8ee3dc`  
		Last Modified: Mon, 10 Jun 2019 23:25:52 GMT  
		Size: 50.4 MB (50379147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e87ee23a91fa7c0c19afb429b5a0f3293ceddc584f8f3d9889a83eb6e97ea8`  
		Last Modified: Tue, 11 Jun 2019 00:33:29 GMT  
		Size: 7.8 MB (7791615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4c3ebf254930a8323096e65b35f33db49f8fd72a6f1032ed67b412c25842a39`  
		Last Modified: Tue, 11 Jun 2019 00:33:29 GMT  
		Size: 10.0 MB (9977859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1928340129b14a13cecd45f7a88a0cd79827d158e322ebd07901d0a4602716cf`  
		Last Modified: Tue, 11 Jun 2019 00:33:57 GMT  
		Size: 51.8 MB (51759132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ed431da557ffb54e7d283162e093a2041e544b2ef04ca54a232eb82b75769f9`  
		Last Modified: Tue, 11 Jun 2019 00:34:58 GMT  
		Size: 192.3 MB (192252241 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:ece9cad9ff2f470961c468111bcf523d529f0f7640705facf25086355a873146
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.8 MB (285798206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0770d0dfb9674fe3563e9935f61a30ea70224cc0afa271aa754bd6a84c715eb3`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:49:01 GMT
ADD file:187f1bb7f8cb32f8ee432b6cdcf5f0bce99c3a74da2f3d29d3bb78b6fb9b11e0 in / 
# Mon, 10 Jun 2019 23:49:02 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:17:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:17:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:18:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:20:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6fed64d2c33a11ff19c06da4b865fad43acb0d621096e90181e25fde31fb34d7`  
		Last Modified: Mon, 10 Jun 2019 23:56:04 GMT  
		Size: 48.1 MB (48081162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ff922da61bc37d2c7366ccc61d39beadde95cd3f1117ea074056e34a65bb807`  
		Last Modified: Tue, 11 Jun 2019 00:34:11 GMT  
		Size: 7.3 MB (7340416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9cc9442d04914ecc6bfdb5cf5de5b17a5f1de20b2719e72182563f68fdc5894`  
		Last Modified: Tue, 11 Jun 2019 00:34:11 GMT  
		Size: 9.7 MB (9672637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2b1d432c31ecb30c0fddb6236bba156e304770c141603d458a28a65331bd3f9`  
		Last Modified: Tue, 11 Jun 2019 00:34:34 GMT  
		Size: 49.5 MB (49510000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ab156b9b81b974acfd6a18c4d6c748053ec13328a4688df775635ac98ff0fec`  
		Last Modified: Tue, 11 Jun 2019 00:35:30 GMT  
		Size: 171.2 MB (171193991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:ad780d16427a11ca8a4f7bc563abf70e924046cb1668348f544e0941c1d24f7c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278011109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03973e1aefb14ce271bccafce8e2aba79afd4fb851887a94525d889ac5888a4b`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:57:51 GMT
ADD file:ec5a9b69a45f105825461c10b30b9f4047df8e9a713ee7fa9599e32eca5e4002 in / 
# Mon, 10 Jun 2019 23:57:52 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:56:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:56:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:56:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:58:52 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1a36aa5b88e6314c7ca390b5d4dcdfc92650f48d1e9225c19f82737994f4af83`  
		Last Modified: Tue, 11 Jun 2019 00:05:57 GMT  
		Size: 45.9 MB (45854968 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1c86a0f4dc4e42a58e3635217b802a15f0807a11031eebbe0ff9526d1a18286`  
		Last Modified: Tue, 11 Jun 2019 01:13:27 GMT  
		Size: 7.1 MB (7089730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55cf05842122257c22931cdba3923b5bda987d30795269f9d399ae7267ef9013`  
		Last Modified: Tue, 11 Jun 2019 01:13:28 GMT  
		Size: 9.3 MB (9329067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:419bf05b28dd64277c3c8544e35581e883261d6624876b14864a3246a5ac0b62`  
		Last Modified: Tue, 11 Jun 2019 01:13:49 GMT  
		Size: 47.3 MB (47290301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e84103bf83b9c23ea7d15be7ebfd081752c2f39eb52f45f65284257384e7e26b`  
		Last Modified: Tue, 11 Jun 2019 01:14:42 GMT  
		Size: 168.4 MB (168447043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:47a21cecb55c936b45aa7b1714fe1caaa08dc63dba9cfe67d253a772a9115bf4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.7 MB (302654249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54f95b35db8b8806281e9020cf0ddab8f44d24bd93e20eec2695bd0026f0f6a1`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:40:03 GMT
ADD file:d4ed38275e26cfea6aa8a3f6b394ee5f2b0fa641d0630a3d468e28e28ac1884a in / 
# Mon, 10 Jun 2019 23:40:06 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:06:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:06:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:06:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:08:44 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8689d9294ba4ec1f0c65b9d464daf20e7a8f23953891113e97383cfe25accb70`  
		Last Modified: Mon, 10 Jun 2019 23:43:20 GMT  
		Size: 49.2 MB (49158860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32f677549a90f69ffb66a8816076ff76f735e26af842855caa48e55fb7a62f10`  
		Last Modified: Tue, 11 Jun 2019 00:30:47 GMT  
		Size: 7.7 MB (7666785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:593cd4266304dac1b4b43236f5c5f19dd80d65ec96916fa7592ac3248aaab076`  
		Last Modified: Tue, 11 Jun 2019 00:30:43 GMT  
		Size: 10.0 MB (9967646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b2aa1260a734d045c13557a51c8248c6904530c33b595a597e0837aaa6166d8`  
		Last Modified: Tue, 11 Jun 2019 00:31:11 GMT  
		Size: 52.1 MB (52105876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdd5a8f17721fe7a7209794d8bc6dc1f1a38f078435e4158a636aeaadcfb0693`  
		Last Modified: Tue, 11 Jun 2019 00:32:09 GMT  
		Size: 183.8 MB (183755082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; 386

```console
$ docker pull buildpack-deps@sha256:6825744aacefc331aa1ff44d9796cae11bd24726f372b81d7f8979089ff6e6f1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **321.6 MB (321577502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cb3bed7c44f0b7409aa08330a498fc7abf280d60635bcedfd2b6b6662260749`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:39:00 GMT
ADD file:8099e0f2099a6ff14323cbb04efb8dd47edfdb270e990aa60e452a3da3356e13 in / 
# Mon, 10 Jun 2019 23:39:00 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 02:40:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:41:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 02:41:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:43:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e5a6d4b67a8a57652c10b2598a7c16a4a584c8c7ba82ae32f396af13dc1d9f26`  
		Last Modified: Mon, 10 Jun 2019 23:43:06 GMT  
		Size: 51.1 MB (51138475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b9c92844f4fd6f1c2ec6f626aac11cd049da4fde0948c967985caa400da331e`  
		Last Modified: Tue, 11 Jun 2019 03:04:17 GMT  
		Size: 8.0 MB (7956925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:268bbbd1ef5d201f04b333e1c232a92ff6e14dfdd594040fd1873ca1df21aefc`  
		Last Modified: Tue, 11 Jun 2019 03:04:17 GMT  
		Size: 10.3 MB (10322541 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82a75e4828ffca17afae68d62dd3ffcde5d6ad4e428aaea3b8eb02b5f7bc5348`  
		Last Modified: Tue, 11 Jun 2019 03:04:48 GMT  
		Size: 53.4 MB (53357601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3947b3d06bbf8e76b1fd18051a75dd34d519f391a80a17acd6728fdfdbee7b`  
		Last Modified: Tue, 11 Jun 2019 03:07:20 GMT  
		Size: 198.8 MB (198801960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:f31a70e76b1c53438e1df39d0e4e8b1fc0a2e44fd5c1f3b23927efc3ed1ea6cc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **333.5 MB (333481037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5370af992811b0e4952b36eeb9ec080636f1caa241ed2ddc398fb22e74657970`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:17:03 GMT
ADD file:f644ad961f6c2192550d5b0142404f3839fd950b933183534fa7df274aa50a8a in / 
# Mon, 10 Jun 2019 23:17:06 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:16:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:16:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 01:18:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:27:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:decba7e128fed3715df7927e807908c2c45f9a9d72775dc83425f0f7c77be5af`  
		Last Modified: Mon, 10 Jun 2019 23:21:16 GMT  
		Size: 54.1 MB (54121677 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b51e5ad038d059df24c04eaff8f83c8f0a72768a1a89fd7ca20894278cc120d3`  
		Last Modified: Tue, 11 Jun 2019 02:46:14 GMT  
		Size: 8.2 MB (8239603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0cd98b20f2d2164696f9ddce6dc551f06a9168e9873388d05870446aae8dd9`  
		Last Modified: Tue, 11 Jun 2019 02:46:14 GMT  
		Size: 10.7 MB (10718400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ffa9eb0dbba27d41e8b6ca905a122bfe45ee9bc8cd260b515d134b87e63efd`  
		Last Modified: Tue, 11 Jun 2019 02:46:52 GMT  
		Size: 57.4 MB (57374451 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac48aa1f7742bec97587fecd479fdbd2d6b490b8aeb1e88666dde3b3da80b264`  
		Last Modified: Tue, 11 Jun 2019 02:48:15 GMT  
		Size: 203.0 MB (203026906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:eac51ac8c32d408f3d19d7d92a863eacb1710b062cbd04abb20e9d81468c3d8e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.3 MB (294284863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9d48a881a5a6789dad5d7569fc5b70e31b4ecf59ee6375ec484d18fb676e385`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:42:10 GMT
ADD file:cbda21300f44d484eac1946e33249ae3c8f18773d5d93d8c4855f52598d3050a in / 
# Mon, 10 Jun 2019 23:42:11 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:39:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:39:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 01:39:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:41:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:88d986d403805e24ab0796e7f62c434170153c30560aef3173415aa30db65340`  
		Last Modified: Mon, 10 Jun 2019 23:45:17 GMT  
		Size: 48.9 MB (48948887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f41623bd2cf7e465fb49ff4be996dd9b60de24840e435481713f2c2a0d527257`  
		Last Modified: Tue, 11 Jun 2019 01:48:19 GMT  
		Size: 7.4 MB (7367731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b67c9ca2bcfb0c67d420ca8b67393e72643e195cb240f2906d37a5c53ed393a`  
		Last Modified: Tue, 11 Jun 2019 01:48:19 GMT  
		Size: 9.9 MB (9865652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4b2cfb084cfb5a9ab0848553804b7b26c01b1d45a8baedcbcb6465d0052ca38`  
		Last Modified: Tue, 11 Jun 2019 01:48:33 GMT  
		Size: 51.3 MB (51300678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb1433b1267c14c932dedc1bc68d13bc66b110e2f2d6e64745dc7146ec9d02f4`  
		Last Modified: Tue, 11 Jun 2019 01:49:04 GMT  
		Size: 176.8 MB (176801915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
