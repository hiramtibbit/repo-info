## `buildpack-deps:stretch`

```console
$ docker pull buildpack-deps@sha256:74a51985cf1dc35ff983e5e68fa26ad6f6ed25a962ca7987ba1dfde7780aca56
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

### `buildpack-deps:stretch` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:5f66e9c7e65217de7e3f58a022fee1847e426ed28d74700f36db31a300e86e77
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.6 MB (323641071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbe3f8167160cdee7210eff59a7a0b625e4e3bb3aa35d697d1879d0499f6045b`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 03:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:16:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4eee24d4dacb41c21411e0477a741655303cdc48b18a948632c31f0f3a70bb8`  
		Last Modified: Tue, 17 Jul 2018 03:54:59 GMT  
		Size: 50.1 MB (50064642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b59856e9f0abefedc34fcefc3f57c4955cc384785663745532ddc31a89641c83`  
		Last Modified: Tue, 17 Jul 2018 03:57:05 GMT  
		Size: 213.2 MB (213190110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:stretch` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:3a430212723bf881d27f4978c3ec4c16bf8625243520fc8d3871d39544e3c051
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.7 MB (307717325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c61af74c409343976a6f2fd99e198a3e5e85c3bea5283296bf2b5c2822f87caa`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:53:37 GMT
ADD file:d4d15d0259f3c83403f3d0565cbcd5c1d54e80367c46d9a05af1454c0d0e13ac in / 
# Wed, 27 Jun 2018 08:53:37 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 09:38:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:38:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 09:38:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:40:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d8a10c27f1911457fcf0131342ab203c0d98290ccb8731364e7f57f489cadcd4`  
		Last Modified: Wed, 27 Jun 2018 09:02:36 GMT  
		Size: 44.0 MB (44040132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac190b263215d7b1af43574c289285d9adca5216b1188d00cd5d71104d352db2`  
		Last Modified: Wed, 27 Jun 2018 09:48:30 GMT  
		Size: 9.8 MB (9842587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2324a9fd4ad44784b0c5e6d4b25dd11d1cdb7ed900fbcf69c5aa74391a37a10`  
		Last Modified: Wed, 27 Jun 2018 09:48:29 GMT  
		Size: 4.2 MB (4153804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f66256cabdbc7741d09f42298fe50050b54a4c15b5961aba608f067ab0ef1de7`  
		Last Modified: Wed, 27 Jun 2018 09:49:04 GMT  
		Size: 48.3 MB (48262675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c925d031c160388663e82b7d2d4df8da819e2bf66e355daae5223c89fc134002`  
		Last Modified: Wed, 27 Jun 2018 09:50:14 GMT  
		Size: 201.4 MB (201418127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:stretch` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:fa9aae4b68315232b63532412b1ca286d8222003cbc959819427363fc42d6927
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.8 MB (295789603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bdf239f37447e2467440c0a28f13a894f734ec31dd6925af162ad8f4f0d3696`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 12:03:26 GMT
ADD file:b928e6adeb71af1928fc7b8e0ff4770e5521eebf544a3b27f9736ac86e7a0ffa in / 
# Wed, 27 Jun 2018 12:03:27 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:47:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:47:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 12:48:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:49:55 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c675459249e5e2b5c2119c5965490fb00918a71cd19ba6a70e1c14ea0366cc9a`  
		Last Modified: Wed, 27 Jun 2018 12:12:46 GMT  
		Size: 42.1 MB (42062253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a87675d75ec387a55e1b055dfadf15fd7137586ee9acf9be9b2a4840e4001b2a`  
		Last Modified: Wed, 27 Jun 2018 12:58:52 GMT  
		Size: 9.5 MB (9472634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f55e83b4f681428c2fb1542a44d864d0d2f78d235199a33824985049fd42bb5`  
		Last Modified: Wed, 27 Jun 2018 12:58:50 GMT  
		Size: 3.9 MB (3913173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcf79f9923b0cece59f9957dddd92e7c5cd6c8c3311984ae5249217f97be3d0f`  
		Last Modified: Wed, 27 Jun 2018 12:59:26 GMT  
		Size: 46.4 MB (46382240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14cd8ed2ab006145f28b4a6a80fa54438a8edfddc3c94bb7a16ddd895eae4dd9`  
		Last Modified: Wed, 27 Jun 2018 13:00:37 GMT  
		Size: 194.0 MB (193959303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:stretch` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:941bd869c588dc6d58b712167854c60ef767a2105798d96fd60dfc78e71e874a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.5 MB (305514879 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d2163105f6a7b19e553467df621ca917fe7cb850dc0a8217d276fac95273ed6`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:01 GMT
ADD file:0f69db95e9a06ee21c38014c8bc6c142be97ec4d5127ba83f1d0ef48806f7415 in / 
# Wed, 27 Jun 2018 08:47:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:46:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:47:23 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 10:48:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:59:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6054c6775a4e4515d2365ad9337e322dd5c6ad0e0bc8e5bb6b0252461e71afc4`  
		Last Modified: Wed, 27 Jun 2018 08:57:38 GMT  
		Size: 43.1 MB (43115791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d57f1ab872b53f8ac8eff946226a3ff9d5fb929656964b75dae06303e9c8ef4`  
		Last Modified: Wed, 27 Jun 2018 11:06:29 GMT  
		Size: 9.7 MB (9722190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662e63f6b578575fadc2ae00bf10794a2a45166c03105d940c919da9f78c1c43`  
		Last Modified: Wed, 27 Jun 2018 11:06:28 GMT  
		Size: 4.1 MB (4088526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242c1552cb593c1f860dd482a21f1607a2965ef9ac5b5a29aad2a768ce9d699a`  
		Last Modified: Wed, 27 Jun 2018 11:07:20 GMT  
		Size: 48.0 MB (48002203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b998f5fde2603980e88247b2183aa042f85bef2b36f90e0a7b32472aebdbeb43`  
		Last Modified: Wed, 27 Jun 2018 11:08:58 GMT  
		Size: 200.6 MB (200586169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:stretch` - linux; 386

```console
$ docker pull buildpack-deps@sha256:3300569ea6aabff07f39b8091cc290946093e925855de75f720c3619d3b75d01
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **331.2 MB (331189051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9bde83920bc7ea882fc3b5e777a00b27cfa169ecd24a495ff64102d1ab3cab3`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:35 GMT
ADD file:df99f919c7f5a407abee5c74ea019e497e559a75bdd21b36ae581e81230884c3 in / 
# Sat, 28 Apr 2018 10:41:36 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:41:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:42:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 11:42:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:45:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5b858ae16eb844c6834e74a5c76644142d36957121de3f9bccf66d4c10b18816`  
		Last Modified: Sat, 28 Apr 2018 10:48:56 GMT  
		Size: 46.0 MB (46044885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45fb0be3608d00a27aadd5246acebfa684875786308e5e07bd72ecedb1ea550e`  
		Last Modified: Wed, 06 Jun 2018 12:17:46 GMT  
		Size: 10.8 MB (10784612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:109b3030038f2425d43d6f1796554d59323fd256fe621bd3a73249279da3a2e7`  
		Last Modified: Wed, 06 Jun 2018 12:17:44 GMT  
		Size: 4.6 MB (4555092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1af01b2a73367b29b158a599b31f1a8d0e0e964f8ba899158fe801dca9aa54f`  
		Last Modified: Wed, 06 Jun 2018 12:18:38 GMT  
		Size: 51.6 MB (51593154 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fccdc7430291198a7cd90746f94076159d8f379640b3f5718b0d05cc583fbf7`  
		Last Modified: Wed, 06 Jun 2018 12:20:25 GMT  
		Size: 218.2 MB (218211308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:stretch` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:8dd927a250eae6cf0518eef4e96ff0dd26aa2f560bb6c89c37265770e62a2f1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.7 MB (318724455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee887b39962a7bce4656c62a7d60c96e18fae000e59f47003578a8fa6d919adf`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:02 GMT
ADD file:d33614b8c4f66955a915157517ae82c889e6367cfc17a0d89ff64b91c984d7ef in / 
# Wed, 27 Jun 2018 08:21:04 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:15:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:15:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 10:16:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:22:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:80b856b58d8f74e5617ff0b59e5192bd26540b867890becb80ac3b1766e68d1d`  
		Last Modified: Wed, 27 Jun 2018 08:30:43 GMT  
		Size: 45.6 MB (45587028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a98fa77416c63ffab99d98aea7befc5a0d53ec23ebff6abaa40b528d9ca971`  
		Last Modified: Wed, 27 Jun 2018 10:28:49 GMT  
		Size: 10.0 MB (9976097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd479833a536a5f1d2afb81f4d98a720d841227f1a3e2345238f8f966ace8c59`  
		Last Modified: Wed, 27 Jun 2018 10:28:48 GMT  
		Size: 4.3 MB (4289938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4645fc917f498a9483cc812c5015aa0bcb956be63b25957067bc030e84289c`  
		Last Modified: Wed, 27 Jun 2018 10:29:34 GMT  
		Size: 50.1 MB (50059206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9905d349ea37d70bac8f4d7d7090c535f3cc480c216cce1de8ecce07d1ba2a`  
		Last Modified: Wed, 27 Jun 2018 10:30:49 GMT  
		Size: 208.8 MB (208812186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:stretch` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:b4fe9f4053cf4f9eaeb381bd8f21d57038fde1cd784e4ba012df18a82a485b73
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.5 MB (315507467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84601e066bce4b1e5d11ea536f4dfd91ea8fae8492d6ab96c89c8d908e6d6acf`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 11:48:36 GMT
ADD file:75083687b6ec1b46a3ccf759184d7da7ea89555c516ec0b9fe7307869e6e068d in / 
# Wed, 27 Jun 2018 11:48:36 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:20:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:20:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 12:20:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:22:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:879ec09c190353266c9e5cb180d35fce7e1d21e2ed3f577f2708dba824290cec`  
		Last Modified: Wed, 27 Jun 2018 11:53:15 GMT  
		Size: 45.2 MB (45181422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4cd1564a39a86ccb42d24db5044f7c0fc4f4057eb7acae6f1b7b2e4c582cd5a`  
		Last Modified: Wed, 27 Jun 2018 12:25:12 GMT  
		Size: 10.3 MB (10301218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72d677b03f5d7f43f597f3ca3119cce61767eafd68c1cd48fd083dc3eae703de`  
		Last Modified: Wed, 27 Jun 2018 12:25:11 GMT  
		Size: 4.4 MB (4367019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:db908d0308fa64224122e4e37c21ce2473cb5be8b9ac64a32dd006a61e947783`  
		Last Modified: Wed, 27 Jun 2018 12:25:37 GMT  
		Size: 50.5 MB (50478409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c7579639eb4d592b1c19fac041f232619c89cf2cdadb739a59277154722c5f7`  
		Last Modified: Wed, 27 Jun 2018 12:26:23 GMT  
		Size: 205.2 MB (205179399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
