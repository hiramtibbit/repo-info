## `buildpack-deps:sid`

```console
$ docker pull buildpack-deps@sha256:9b487cc187aea0dd816c21028ec3d174d018a2546eb57125d70a65002f893740
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
$ docker pull buildpack-deps@sha256:898f23f0078e4e13bcd17141831436949152364bfe2b39540c88b23059289cdd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.8 MB (282787842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae9ed730bb77c81af3469f4c523c90b30ebfa9dc2a197c9b8b710db4a5637cb7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:08:38 GMT
ADD file:b72300898197970109a36b5e6d6d7a6bb43e7b98f2031ae4e0209656631a1896 in / 
# Tue, 05 Mar 2019 13:08:40 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:47:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:47:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 13:48:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:49:53 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4d624d22f7bf6fc6089b3a8dad99963dba88224793cf4fd6e125d78127c11b12`  
		Last Modified: Tue, 05 Mar 2019 13:17:19 GMT  
		Size: 45.7 MB (45702215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1efd7518521f31fa10a388738bf1f88c27ca903200f6142f6a055cf36cde6e0c`  
		Last Modified: Tue, 05 Mar 2019 14:01:34 GMT  
		Size: 7.1 MB (7082522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7401310a12e54a641edd646e202ab8fc761837c53b172213c67d172f3ae3a985`  
		Last Modified: Tue, 05 Mar 2019 14:01:34 GMT  
		Size: 10.0 MB (9975606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360b4a90ff4dea06f06d32a0b67f8e935b2b0026f481d570b65db22061de52a4`  
		Last Modified: Tue, 05 Mar 2019 14:01:56 GMT  
		Size: 47.5 MB (47515521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2eda353e18b1957ea256738871fb350a7d8592188ab5cae2bb2aa4982d1ac8b`  
		Last Modified: Tue, 05 Mar 2019 14:02:49 GMT  
		Size: 172.5 MB (172511978 bytes)  
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
$ docker pull buildpack-deps@sha256:e8da864b56409b7ff028ec16d7af7dcc2220ae0954dd05b30ac09c984e7f8bbc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.9 MB (326886156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa53a00778d57d940b86ffdc7553cf95315d2856880b7edd4c261ba902634c14`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:43:40 GMT
ADD file:aabddc8503779289fa215ba4c8cedd2315637c37836b974d0cd854497316f3f6 in / 
# Tue, 05 Mar 2019 11:43:40 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 21:07:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 21:08:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 21:08:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 21:09:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ac3a27f255b7ba1504a24556064a0ff04577e55ba608928511824b9082daf96d`  
		Last Modified: Tue, 05 Mar 2019 11:53:28 GMT  
		Size: 51.0 MB (50983496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36bc0d170f107a8a8fd0c413158849c3b7ee2c0cd150567e7cbf6c80dca37b24`  
		Last Modified: Tue, 05 Mar 2019 21:16:37 GMT  
		Size: 7.9 MB (7948271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34bc50443f43bb98bad15dc3986ff01968f8482cb3aa13a58e5d7461a4113097`  
		Last Modified: Tue, 05 Mar 2019 21:16:37 GMT  
		Size: 11.0 MB (11042772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7740780869cb7c84831c01dbfcffda0848807e717fed57048110485da5666a8e`  
		Last Modified: Tue, 05 Mar 2019 21:17:03 GMT  
		Size: 53.6 MB (53585209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d61cd2236acfe929a7842f9afa57d7b1ea118c228c08c3e2e6e307ca6518aeb3`  
		Last Modified: Tue, 05 Mar 2019 21:17:46 GMT  
		Size: 203.3 MB (203326408 bytes)  
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
$ docker pull buildpack-deps@sha256:16c4e82a829fcc5dcc529a07ce9a09398b7e6f30d5648a439cc1917ebd088c0e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.5 MB (299506481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d0884fcd29e73f9691bd0672d60bea3c9e11203c9179ca0a813593c8af1e457`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 12:42:17 GMT
ADD file:1f39bab5b8349914aec5d4d7288d3789725c246ce0f265333d09a89c90440aed in / 
# Tue, 05 Mar 2019 12:42:17 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:33:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:33:41 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 13:34:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:35:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:536f0d4b71a17b5b6bc1c252fc284b7fc8706b9e795c0e4d2deea17eba78a0ad`  
		Last Modified: Tue, 05 Mar 2019 12:44:44 GMT  
		Size: 48.8 MB (48790038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8403a183fbdbe6a15804cab9423acd790ec2a65a956e4737c2180da831e9fa9`  
		Last Modified: Tue, 05 Mar 2019 13:39:31 GMT  
		Size: 7.4 MB (7359778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04c076f27a63a721173e5f70a226c82d25b5bb5d02641c41bce852d28f8142bd`  
		Last Modified: Tue, 05 Mar 2019 13:39:31 GMT  
		Size: 10.5 MB (10546789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:177ef8ea8182d28ac43b37353281ce935ec2313b9770e4a1d90ff9b56d5c0c3c`  
		Last Modified: Tue, 05 Mar 2019 13:39:45 GMT  
		Size: 51.5 MB (51532770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b2812c164e7efb559db0a647fcdc3ee48343f3373c570e9cd7734690e0f41d3`  
		Last Modified: Tue, 05 Mar 2019 13:40:19 GMT  
		Size: 181.3 MB (181277106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
