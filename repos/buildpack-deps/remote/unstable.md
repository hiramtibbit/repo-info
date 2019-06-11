## `buildpack-deps:unstable`

```console
$ docker pull buildpack-deps@sha256:c174e3c3597b68f42c3073cd7d17a8db9abec91348a811c58ca424709fd88634
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
$ docker pull buildpack-deps@sha256:72427cab5598b2ea0fe972aee939864d0092d8cbd305573e8a65e574f85544fc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **312.6 MB (312643290 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55f9419f03203127e99f0863e82edda01fb7551b0f70b7fe59763af1b76e467c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:23:11 GMT
ADD file:dd0986a5b74404f77d300a1f66ca28f1d810b9563bb0ad60166c42c86a3951a3 in / 
# Mon, 10 Jun 2019 23:23:12 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:26:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:27:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:27:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:29:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:26a3de69c889cd62b7ca9d1a2acfcd53ec6a80624f14b8ac06f623e5e4cd3a83`  
		Last Modified: Mon, 10 Jun 2019 23:27:10 GMT  
		Size: 50.4 MB (50416288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6493fd7de50953fa5b404cfae2364c5ff138cb9192465cac0e40706d8b2042e`  
		Last Modified: Tue, 11 Jun 2019 00:36:22 GMT  
		Size: 7.8 MB (7802781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee800df4f2de854aeb7d62550801c93e12dc2a11e6a763361db7d88c20651319`  
		Last Modified: Tue, 11 Jun 2019 00:36:22 GMT  
		Size: 10.1 MB (10052757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21ca703c0ec03140a4d00b8661ef09017a6a6c8e4d03d851f4f55f5afe8b928a`  
		Last Modified: Tue, 11 Jun 2019 00:36:46 GMT  
		Size: 52.0 MB (51998336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c26d48ae65881f4fade8c04cdcab6e593a14dd03bf8c6491073bf14aebf2019e`  
		Last Modified: Tue, 11 Jun 2019 00:37:48 GMT  
		Size: 192.4 MB (192373128 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:663cb6e0bb083f9be1c67cf02c3a2bb80018bd058b48a40e366928b011f14784
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.3 MB (286284882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d80af6dc9a5730ddaaf17e186441a2cfbd5795712e9c0cd3a9395c5921d195d`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:51:39 GMT
ADD file:5f8cd1843f0af74cc337fee41fb8a27c05328ba7b4a3bafba58f5e536f529f08 in / 
# Mon, 10 Jun 2019 23:51:40 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:26:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:27:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:27:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:29:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1c264d4806521431a7eb41380bbd57ec7719e567e4c180ac833eb83c4c6ca788`  
		Last Modified: Mon, 10 Jun 2019 23:58:03 GMT  
		Size: 48.1 MB (48133931 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02b2114760c34b1f3d97c6b8cbac971e2888b078338d4378ece274f373864e6c`  
		Last Modified: Tue, 11 Jun 2019 00:36:58 GMT  
		Size: 7.3 MB (7344359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b7d6b6e7ff207583df1146f0ef9b4c677aa2bc733147fd7e82636adf1400712`  
		Last Modified: Tue, 11 Jun 2019 00:36:58 GMT  
		Size: 9.7 MB (9742449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d92fae5be1f8202b445946bb8b15932431e278f639a38cd0b7bc334b1794d7df`  
		Last Modified: Tue, 11 Jun 2019 00:37:21 GMT  
		Size: 49.7 MB (49743493 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9701fd1f5a28ff26aa9c3e473e1a5c44cb9f1b4f7a892eab4c0c42f94d72c88`  
		Last Modified: Tue, 11 Jun 2019 00:38:21 GMT  
		Size: 171.3 MB (171320650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:5ce6b771e7f9454e6f76eec5a3c5ad8b441beac21d375354ef4879ff9448c84f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.5 MB (278502569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32d6ded8e6ee36baaa17161294d9a5d15fab84a607abfcd89932e68d7fa3ab86`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 11 Jun 2019 00:00:53 GMT
ADD file:7d67e93cad2e9cf97ccb5ccea431d24a0d9542dddf05cd63187fa9d62b4bcb3e in / 
# Tue, 11 Jun 2019 00:00:54 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:05:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:06:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 01:06:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:08:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3ab8e76dd11aca2600e6ee2ee15515d8c054e337b5b731bbe393d6fbe778e5fa`  
		Last Modified: Tue, 11 Jun 2019 00:07:56 GMT  
		Size: 45.9 MB (45891294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64a6ec1ae5787190a16008b977426b2596eb790ef8f702359e24b562174caeef`  
		Last Modified: Tue, 11 Jun 2019 01:15:59 GMT  
		Size: 7.1 MB (7090942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:787a622c44e3de782ec7399057f4cec4eead2bd90324049d1cc952cabd882691`  
		Last Modified: Tue, 11 Jun 2019 01:15:59 GMT  
		Size: 9.4 MB (9398901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed471363a1dae15ca3046e8b87de7ffb49848cb750441236a722652b89e2d3c0`  
		Last Modified: Tue, 11 Jun 2019 01:16:24 GMT  
		Size: 47.5 MB (47521716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dae526bf6ef678673fcf488ce27baf09894e77bbeaf12a4a9bf0b11a15e8f6f`  
		Last Modified: Tue, 11 Jun 2019 01:17:22 GMT  
		Size: 168.6 MB (168599716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:3f2a3e7188daee43ae098964bd609b0eabcd115b259789cb7d50d219ad4b8c7e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.1 MB (303065383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b4ce661c6d3d44140fcb4afbb865dc57cb114229aec93a0ede6e68fcadc216c`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:40:35 GMT
ADD file:68b10e662aced8b803f6c9bd363289416da46c92903fb76bbfa649a85b7d8ab2 in / 
# Mon, 10 Jun 2019 23:40:36 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:16:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:16:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:17:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:18:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4ff0b6eff82f60ec8e5a22c5610424c7c50c25da3f3290acff23fdafea091921`  
		Last Modified: Mon, 10 Jun 2019 23:43:55 GMT  
		Size: 49.2 MB (49193137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f2af56acdc1f965b792cf19e86eaab158c5998fa15982c03f3a30f1df429d6b5`  
		Last Modified: Tue, 11 Jun 2019 00:35:08 GMT  
		Size: 7.7 MB (7669448 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77cb37e9d0aff1a89d21497dbec3845624e5d13afb929effca495457880a2a4a`  
		Last Modified: Tue, 11 Jun 2019 00:35:05 GMT  
		Size: 10.0 MB (10041779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f24352ba4d1e02e7841be6a3559f4e9ce396a72078f85e88bc50db8ad4a22bb`  
		Last Modified: Tue, 11 Jun 2019 00:35:32 GMT  
		Size: 52.3 MB (52327653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54e2bd5fe016416b1ac2b0dc41fa3ceb38dbfbe97b0cb5554666cdbd87e27d0e`  
		Last Modified: Tue, 11 Jun 2019 00:36:32 GMT  
		Size: 183.8 MB (183833366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable` - linux; 386

```console
$ docker pull buildpack-deps@sha256:551122cea1643ffa45154ca3812a52ac48fe7bd8b17bd1298f3855334f9dcf8d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.1 MB (322132814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:883bf6c10dd4a26eec4593f374c096efa0f3446d5454df4ea24cf19817c4396f`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:40:27 GMT
ADD file:94428624b8a12a143621d6a227fb8362d1c9f9722446b0243cf4b2782a45eafb in / 
# Mon, 10 Jun 2019 23:40:27 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 02:57:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:57:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 02:58:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:59:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:42161218c4a20dafac7bfc240e36303807ce4515329f48b3a264b093e3ce57c0`  
		Last Modified: Mon, 10 Jun 2019 23:44:35 GMT  
		Size: 51.2 MB (51166982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed67cc530b90d8f0b220c0c8ca62822c6eb905724bffcd7e419e556f6962078`  
		Last Modified: Tue, 11 Jun 2019 03:09:17 GMT  
		Size: 8.0 MB (7966666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa131f953a939da7d8fa9aafa9d96a1228222e561cbf201fbd21655968182431`  
		Last Modified: Tue, 11 Jun 2019 03:09:17 GMT  
		Size: 10.4 MB (10397581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd42e7cecf95b9e39f1934504742e3d8028016dfbedc2de30410fc26136bec98`  
		Last Modified: Tue, 11 Jun 2019 03:09:50 GMT  
		Size: 53.6 MB (53590203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f642637ab07d65cd6b151ccfb3732423f533e742c9a800cdd7c34bfc7c9d0426`  
		Last Modified: Tue, 11 Jun 2019 03:11:11 GMT  
		Size: 199.0 MB (199011382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:71fdb0183142c82202049cb70274603d1a0ac8d864768a0275f9fb42ed389a77
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.0 MB (334036706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82ac38dc34a24ddd56fb92c91de9ddcd5250ebec01c72dc97e0a9d790481bd26`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:17:44 GMT
ADD file:9e0f17640dbfd63699c5e94379034b1350422dc0f982e4061195002a081b16a8 in / 
# Mon, 10 Jun 2019 23:17:46 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:51:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:52:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 01:54:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:02:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:695a4a9a1dde5df6d15ecb468cc4a42fd972a411bcb57af71813c348a2b9beea`  
		Last Modified: Mon, 10 Jun 2019 23:22:09 GMT  
		Size: 54.1 MB (54137390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3baed8e1ccfe59eb20056817a588b7228b5ba94681496d73b9de177cc9bfde9`  
		Last Modified: Tue, 11 Jun 2019 02:53:17 GMT  
		Size: 8.2 MB (8241567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b47fd349dbfcf7df41b8bd818ddec4d28ee1af77a180084c036c9ff5c75c5a30`  
		Last Modified: Tue, 11 Jun 2019 02:53:17 GMT  
		Size: 10.8 MB (10792941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7751b76d736b0bccb832b6fd494eb1cc75b4945651a49ea8fcaea5ae98bb9f`  
		Last Modified: Tue, 11 Jun 2019 02:53:58 GMT  
		Size: 57.6 MB (57604070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b5ac0cbe974923058e97d753cc1b1a37965d1da6ab071dedb3c40cc382b3031`  
		Last Modified: Tue, 11 Jun 2019 02:55:24 GMT  
		Size: 203.3 MB (203260738 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:unstable` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:9690684024ca937f3935a5b7343facb0d4a33427eefab7a45f4736a5b544ce30
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.8 MB (294773286 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9424d83a4defd14e667cbcec911d27d96e632fa2462db106b2c093c365f986f8`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 10 Jun 2019 23:42:46 GMT
ADD file:28077e50828d6774a43958ba5a5e3dedc98f956b3e14ea7d505aa4968f5603f5 in / 
# Mon, 10 Jun 2019 23:42:47 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:42:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:42:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 01:43:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:44:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:61701f4be07d298ce1009eaf03d90fea9c4f19d146a7badc0e34e63e4c3df580`  
		Last Modified: Mon, 10 Jun 2019 23:45:41 GMT  
		Size: 49.0 MB (48985461 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0add1daa1e4badde1e715d2dbd34a7172d241ddf7a438741b265ce7b6b4f3c0`  
		Last Modified: Tue, 11 Jun 2019 01:49:13 GMT  
		Size: 7.4 MB (7369590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d023522355acf85a67cc5b20a3c62e3000552f9e6def8d3ef91fdeb74a670e03`  
		Last Modified: Tue, 11 Jun 2019 01:49:13 GMT  
		Size: 9.9 MB (9939866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e19542962c0c2ffa4a2f211062c0920e45d09c4c3e8d9bcb4257e5153b14347`  
		Last Modified: Tue, 11 Jun 2019 01:49:33 GMT  
		Size: 51.5 MB (51540996 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b408aaf5903b36c0ef126df8eb04aa5432a0c97318241f18385530be1cf4f7`  
		Last Modified: Tue, 11 Jun 2019 01:50:04 GMT  
		Size: 176.9 MB (176937373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
