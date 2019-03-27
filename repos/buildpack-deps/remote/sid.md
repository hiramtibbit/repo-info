## `buildpack-deps:sid`

```console
$ docker pull buildpack-deps@sha256:2083b7d3fc945c258961cb411e2e86c7015245a971ecb461d863efba416a2228
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
$ docker pull buildpack-deps@sha256:e2047e94cd8b5b58abd52fe1e801ac4e990f936f8f59db968de439038e49a0e0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.3 MB (312270407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10008e185cc8a03d62e30be25bb2442196a1ac05a9360819de01455ec0b46833`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:40:23 GMT
ADD file:ae997b4827aa33b5d2a8d031fee7fd4a7f0d7839e72d2cd38977fdf806b1e21c in / 
# Tue, 26 Mar 2019 22:40:23 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:24:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:24:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:24:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:26:08 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f747399e18307cd4cfb6e3aa0f45160b5c14d6b14f60316342b9f37bac4e7a2d`  
		Last Modified: Tue, 26 Mar 2019 22:43:49 GMT  
		Size: 50.3 MB (50280305 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ed3f0fd634fcec3c6557dd8bca5f8eac4f290cce090459ec6d0515d5fb76e13`  
		Last Modified: Tue, 26 Mar 2019 23:31:09 GMT  
		Size: 7.8 MB (7787505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32446fe911be1a551426461c98ca9b48b5bb404064850c52997183fa960325c0`  
		Last Modified: Tue, 26 Mar 2019 23:31:09 GMT  
		Size: 10.0 MB (10049263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4349b85ee2affafe0e68ec8d715d14adcbf7326e47cabe649f48847542d91c1d`  
		Last Modified: Tue, 26 Mar 2019 23:31:24 GMT  
		Size: 52.0 MB (51993073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c55de849470b6eaa6463bbbfd7a1ac9151c891d234c958e53afd2fb03aa2fa`  
		Last Modified: Tue, 26 Mar 2019 23:32:02 GMT  
		Size: 192.2 MB (192160261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:888f9bb1744c923f5831adc4d008e91d43018de97eca8b1fa8c467adb71b430a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.7 MB (286694939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd3938f2ea86b55bfbbc8bed85601f4c55ee23bc3c072c9e084942006316c315`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:52:02 GMT
ADD file:ac5e335fe2fd6af8593e884cf6e7ba86f073712dd654c8b8aa8fc7c0075195b0 in / 
# Wed, 27 Mar 2019 08:52:03 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:45:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:46:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:50:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:53:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bfd21f8be5c8af18db3021973af86c6d365dbccbad50938d0d5755ee3ec740c6`  
		Last Modified: Wed, 27 Mar 2019 08:58:12 GMT  
		Size: 48.0 MB (48001625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:480d677c0002914b59fca9d431aafd9b14641a83efa24cc32d8a435033a658dc`  
		Last Modified: Wed, 27 Mar 2019 10:08:19 GMT  
		Size: 7.3 MB (7339934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:781405708c553baa144575646540906584f022ff615ac8994d4c2a3e731c958d`  
		Last Modified: Wed, 27 Mar 2019 10:08:19 GMT  
		Size: 9.7 MB (9739403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e176194fda64df092030da52d01d21588f48ba484310acabaac5c19a8336a01`  
		Last Modified: Wed, 27 Mar 2019 10:08:41 GMT  
		Size: 49.7 MB (49745386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc56fd10b055e982b80aabdeebbe2b55177e05c66e39f2751c4f983b1222eeff`  
		Last Modified: Wed, 27 Mar 2019 10:09:34 GMT  
		Size: 171.9 MB (171868591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:1384d0eabb60dfc53b7c9c7de9ad81b9904ea28d4635b0c933b22e0a4dbb6343
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.0 MB (278991417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b87015b75db56a91d4005447527d8f66cf96ff1897e6711044a165befd9d6e26`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 12:05:39 GMT
ADD file:a03e2558b36105c53a68a3064a22313273ed3d28e338785fc91b482aafc646ce in / 
# Wed, 27 Mar 2019 12:05:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:09:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:09:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:10:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:12:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:10b13a095ef589d26e82bbb83fae57a71c62e84dac2b1fb806528f2b9b7632e0`  
		Last Modified: Wed, 27 Mar 2019 12:11:57 GMT  
		Size: 45.8 MB (45774821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:377969bb0947ea163bd219fa06e75dc143b5b1eb11721c90bd236e08c2b8164c`  
		Last Modified: Wed, 27 Mar 2019 13:20:18 GMT  
		Size: 7.1 MB (7085635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65db9a37d70af034179accf5dc26b6bfe918264fce2bfb7d3d1faafcd803fb81`  
		Last Modified: Wed, 27 Mar 2019 13:20:18 GMT  
		Size: 9.4 MB (9396874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1339bb8746b529bbd50a4ed7f94643d7e336324518d1acad0022097c5c0ac2c3`  
		Last Modified: Wed, 27 Mar 2019 13:20:42 GMT  
		Size: 47.5 MB (47521420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5bdd85edb7279104715ac873a78833178172b3a1bc005609f30bfde75cec4bc`  
		Last Modified: Wed, 27 Mar 2019 13:22:04 GMT  
		Size: 169.2 MB (169212667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:24fe56ece38c6cf00b6b83b3bedc0cc240b55a70084281e2fa16f18ef386b664
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.6 MB (303593372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75b3f9143f4f498528872a75e32959cdc2fdb509e8b92a58b08d7e856e5e04ad`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:45:41 GMT
ADD file:68cb85d4af7b927b8543f3786f7ca7100ac3b9c18b420b47dac25daf5799832b in / 
# Wed, 27 Mar 2019 08:45:42 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:05:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:06:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 10:07:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:15:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ec45e1f43eaad20885a807eff4b048b1dcf620827bffc3e1060a75bb358a1c7a`  
		Last Modified: Wed, 27 Mar 2019 08:51:07 GMT  
		Size: 49.1 MB (49075641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba7d470ff2f1e2e1bcb47aa4cd6dd5490bc5d3c4e107dca4f28c486928335e6c`  
		Last Modified: Wed, 27 Mar 2019 10:34:03 GMT  
		Size: 7.7 MB (7652313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b807aee712d82fec33d798a7daf3c4aa366089bde485475e5050b45c0d85aad`  
		Last Modified: Wed, 27 Mar 2019 10:34:03 GMT  
		Size: 10.0 MB (10036065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91ddc8f79b5c5880232ee330ebe0bff7d6c8b10b609069c7d175fd5ea8acc613`  
		Last Modified: Wed, 27 Mar 2019 10:34:40 GMT  
		Size: 52.3 MB (52318295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:775c8b3ff15dd4258b22200a644d24b3d3da14840247aa13fd570691577cfa4f`  
		Last Modified: Wed, 27 Mar 2019 10:35:56 GMT  
		Size: 184.5 MB (184511058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid` - linux; 386

```console
$ docker pull buildpack-deps@sha256:55abf3feaacc585c692ed615f03027c6c060a4aaead719880e5667151db8f551
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.5 MB (322466573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f34785dcf27ea525f162473d375f0e7d08403f7c560489b59c7684aafdd655b`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 10:41:58 GMT
ADD file:35788f1e7dcbb1ec1f7f2defd3659b41f24da20c68bfeab196967df87fc8e51c in / 
# Wed, 27 Mar 2019 10:41:58 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:53:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:53:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:54:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:55:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4a9b095f08b70612fc43d5a6994ce29ec5bf30a08f4d667c9001e554c1087a6b`  
		Last Modified: Wed, 27 Mar 2019 10:48:02 GMT  
		Size: 51.0 MB (51036251 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ac3f749258c84adbc388b501b458b24b72c90c3cf1af139bea2bebaeaf42599`  
		Last Modified: Wed, 27 Mar 2019 14:08:42 GMT  
		Size: 8.0 MB (7953730 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08ce019039fc3caacd4821deda7e87d1571f28280ec42c867bba2a563d2c8288`  
		Last Modified: Wed, 27 Mar 2019 14:08:43 GMT  
		Size: 10.4 MB (10395856 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e192895cb0b8de5cfcddef41f1b20fe685861e57251c1c0e030154421dfa4b2`  
		Last Modified: Wed, 27 Mar 2019 14:09:00 GMT  
		Size: 53.6 MB (53589196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65e8febd5bc2db09637615631f3977737b5cba7dd7f7451d101204ade04e20fc`  
		Last Modified: Wed, 27 Mar 2019 14:09:44 GMT  
		Size: 199.5 MB (199491540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:18faff06fac0e5c1853089a73640c35c39003691274be8a8f7fb75f824fe528e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.5 MB (334509616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc7e18fa1f06e00cec8616af95bd81669dd64b73d9b225b8ebf1b6f156d8003c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:23:25 GMT
ADD file:a95861734bc310e50b882d74e42d04bbd062e0e399fad88a4514440fa4d6c983 in / 
# Wed, 27 Mar 2019 08:23:29 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:18:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:19:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:21:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:31:13 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:de010fce00f5a67d16b84c1807875f16c577630cf29414a47d72c806e1dd7fdb`  
		Last Modified: Wed, 27 Mar 2019 08:29:58 GMT  
		Size: 54.0 MB (54027867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc8973a9087cce195d08df0036cbd4ad7947844d92995a1c5a4715d7f60fc6f2`  
		Last Modified: Wed, 27 Mar 2019 09:48:50 GMT  
		Size: 8.2 MB (8222691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e5c4202494b5950b1fb154e8321cc6aaf924e6142ba18ebfb4d8cc7c4a39aa9`  
		Last Modified: Wed, 27 Mar 2019 09:48:50 GMT  
		Size: 10.8 MB (10790123 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:495276f2465298f87734c773315403a25fb3e8d4da090ee345e2b281f2d9cb28`  
		Last Modified: Wed, 27 Mar 2019 09:49:41 GMT  
		Size: 57.6 MB (57609276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35a148a54f818f56797d35d21a04bc8e063b2b6b85ed3f5687617f8327797c88`  
		Last Modified: Wed, 27 Mar 2019 09:51:14 GMT  
		Size: 203.9 MB (203859659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:sid` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:cb11dd03f574d57bfeae08ba55beade883ac15918a1710b854d3098002fde1ba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.3 MB (295303090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac14fa01c3e0bbe3a400fc94100e3496644e8f3c89b27fb856e7de20c7a7aaa5`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 11:42:38 GMT
ADD file:36dcfde5a08a63c13bc857704c7de28a5770bc391a4ba334cc504fa9b2e753d6 in / 
# Wed, 27 Mar 2019 11:42:39 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:37:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:37:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 12:39:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:43:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c261d71864e6171524f880b50b73807b618879f2c3f338e41e3a336f232a2e71`  
		Last Modified: Wed, 27 Mar 2019 11:45:45 GMT  
		Size: 48.8 MB (48849433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66c271e6f477e8d30f77c6925e6b7912cd008a15591d93a621303a9390904980`  
		Last Modified: Wed, 27 Mar 2019 12:52:47 GMT  
		Size: 7.4 MB (7362642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1faea0f9c5c2a8a91eae3a15ca714a9f294010a20d4ecc89261f4b365654c48`  
		Last Modified: Wed, 27 Mar 2019 12:52:48 GMT  
		Size: 9.9 MB (9935745 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b56a34cfbe3059ab341477c94aa9fc058c5f790d530260aa7bbd14f259b465ff`  
		Last Modified: Wed, 27 Mar 2019 12:53:04 GMT  
		Size: 51.5 MB (51540775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5772db80bd2b6ee720d697d948fc6bbdd9ca407f71c137f8c227f174e5c0d49d`  
		Last Modified: Wed, 27 Mar 2019 12:53:40 GMT  
		Size: 177.6 MB (177614495 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
