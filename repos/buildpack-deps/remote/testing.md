## `buildpack-deps:testing`

```console
$ docker pull buildpack-deps@sha256:a1105655086e70ac3862aa0680dbc321714ddfe363dc90e6b361786ba1859260
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
$ docker pull buildpack-deps@sha256:e5b9d7c20db6143b5c96872d8b2b34b15b214c3a7a95495f55498add9e2b8b3c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.1 MB (302121938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:586e87081b6897b2c466556b0d58a99ef458d96ebfe246db361523ef76c0b7da`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:19:59 GMT
ADD file:77123e0dee1f75d14c3a803926a54be0174b5d55d798ae1a240adf922685bf81 in / 
# Tue, 26 Jun 2018 21:20:00 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:05:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:06:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 22:06:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:08:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2f2e558a3b7445474755ee176690eb10aba6c1079dd13bd366e0614229f6ba77`  
		Last Modified: Tue, 26 Jun 2018 21:28:36 GMT  
		Size: 48.6 MB (48636993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62bdd5edebef48192e5d30f4d39ab75183b7a7ea0e73fbf0f026f9d787c41a6b`  
		Last Modified: Tue, 26 Jun 2018 22:22:27 GMT  
		Size: 7.1 MB (7070051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b9bf90f37ce025a431f02e706c3e7b357636a52e4fa5100322ddcab7803f334`  
		Last Modified: Tue, 26 Jun 2018 22:22:28 GMT  
		Size: 9.2 MB (9245365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b142a5380cdd7b4baa4886d490e10b34d5a0fcccf075df14ce93df2a7130580`  
		Last Modified: Tue, 26 Jun 2018 22:23:11 GMT  
		Size: 51.4 MB (51430437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79425b329fe6da193bf73e689fd11f4d8efda93977aa3c604222905a57c7b13d`  
		Last Modified: Tue, 26 Jun 2018 22:24:31 GMT  
		Size: 185.7 MB (185739092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:1939030061bdfbf33cb460b8a96abbee5b36099f219f995e6fb8e6420860359a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.4 MB (284435918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:caa523a33a6b57ebf6fb451bd16b60c39cdb370cb28afb65e30f90fe6d0d43e1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:48:50 GMT
ADD file:4778697158175a2af51c8cbeaf8bec61efab05c4a6f6b5403b91209f4dc9d655 in / 
# Wed, 27 Jun 2018 08:48:53 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 09:28:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:28:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 09:29:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:30:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5bfc9cce84e1c346da81ecaef0a7952337712f0f61622a78fbbc12737ad284ee`  
		Last Modified: Wed, 27 Jun 2018 08:57:31 GMT  
		Size: 46.6 MB (46591255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80dd016babef5e799c720090a6fc6b502a103bfb7f86c2d1261c5426cf3860f2`  
		Last Modified: Wed, 27 Jun 2018 09:43:41 GMT  
		Size: 6.7 MB (6661958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fe34ab1d5599bd9556ab436e4857202e85e35f6c6340e8f9f73d2d825a18813`  
		Last Modified: Wed, 27 Jun 2018 09:43:41 GMT  
		Size: 9.0 MB (8986962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f821d619291c18cde82b62b20cab4d666d6b8eaaf9a9250f47e09894d6c0af1`  
		Last Modified: Wed, 27 Jun 2018 09:44:08 GMT  
		Size: 48.7 MB (48707511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f53e6857885640c603f305b48fbb7a59e08e0f5f300d4d4382b88ad40fa88667`  
		Last Modified: Wed, 27 Jun 2018 09:45:05 GMT  
		Size: 173.5 MB (173488232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:c7b5ae9dc37ed06e6b6141998f9efa6e43c353c91262d00332898a58e45b50eb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.7 MB (284691568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ac13f94384b61177c2a5eb60bffd585b55871cd043e8aafd1b892e1ac95a0ed`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:58:11 GMT
ADD file:f2876a722dd3fec61e9051a68a520019d6a5c08e33fe8e9e4c9ea2fca23db046 in / 
# Sat, 28 Apr 2018 11:58:12 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:03:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:03:33 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:04:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:06:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:538e2267e0d08299ff1f9bdc7a7e667616481e0dc6c2902bcae25740b91adb42`  
		Last Modified: Sat, 28 Apr 2018 12:09:39 GMT  
		Size: 44.2 MB (44192112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:002a940fa942ef835ff30908d7e739d52a9680081354a1109c224644f942704e`  
		Last Modified: Sat, 05 May 2018 12:29:30 GMT  
		Size: 7.6 MB (7564613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e65ea37767e19d753eb7d500b6ddc25fd380a50c602d74501a8e4f27125b696`  
		Last Modified: Sat, 05 May 2018 12:29:30 GMT  
		Size: 8.6 MB (8568225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fed6a0fa58668f317bd6cb203c5c93b37a7dbf5916d879ebf5ca06e64597b119`  
		Last Modified: Sat, 05 May 2018 12:30:06 GMT  
		Size: 48.3 MB (48257955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f41bb73114032cee879e6eea1b4c3f43157ae915e227e36df66a3f8c4cd85bcf`  
		Last Modified: Sat, 05 May 2018 12:31:11 GMT  
		Size: 176.1 MB (176108663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:7e4da8aca3bcbbbd85195d1f42c75613eb36de5c335c902869bb1eeb56b407da
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.0 MB (299958373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c14fe2c60b663b887e73503f428624a50fde97b3931cba7b1f6653fd4883f464`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 30 Apr 2018 23:17:08 GMT
ADD file:5036a242bb6fa4ea561cf86ebf48f2b1a664f2d77cf24b666f81097e1a7b7d16 in / 
# Mon, 30 Apr 2018 23:17:25 GMT
CMD ["bash"]
# Sat, 05 May 2018 09:02:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:03:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 09:05:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 09:15:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d9305dcbea4d3f6c722c3515486f787b6f5101c0713f49efe747fb5c54a456a3`  
		Last Modified: Mon, 30 Apr 2018 23:39:15 GMT  
		Size: 45.6 MB (45610650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bace1328ae4231253fb361afbfd80f0103d2bc07edaa8fececea36a3878b5bf`  
		Last Modified: Sat, 05 May 2018 10:20:40 GMT  
		Size: 7.9 MB (7894042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95e5ab4f023875d9bd5cbbc9f39a53e779acd7402585aa71262ee2290c2c7945`  
		Last Modified: Sat, 05 May 2018 10:20:39 GMT  
		Size: 8.8 MB (8847764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11a632e21db176e05849f14afb27c4d59521c28342c101cc56920d1dbc9a3466`  
		Last Modified: Sat, 05 May 2018 10:21:48 GMT  
		Size: 51.1 MB (51149162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c82b572cdb068c4c11483496eb8600c85a45d9177499c293e154d569d0367ec3`  
		Last Modified: Sat, 05 May 2018 10:24:21 GMT  
		Size: 186.5 MB (186456755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; 386

```console
$ docker pull buildpack-deps@sha256:f84c2fc8c71c3e09f04442b5ef2ddfc32b1877d2237ba782753ce95d49244b09
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.5 MB (316524039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93984a468d69fed60e4944a549bd5f064763f3f95e206966ea6ecae4b7306cf4`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:09 GMT
ADD file:c7f45bbb36a6dc2b6b0b33d053bb2770ec06cdb2c900cff5af14d6489490b12e in / 
# Sat, 28 Apr 2018 10:39:09 GMT
CMD ["bash"]
# Wed, 06 Jun 2018 11:27:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:27:40 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Jun 2018 11:28:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Jun 2018 11:31:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5a8e1be398ceea51bbc9f18e247db10203d8e023e0be4dcf256a6756222e8879`  
		Last Modified: Sat, 28 Apr 2018 10:43:33 GMT  
		Size: 49.1 MB (49088138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ef2dc3dd10934addd8e287550e5c6b3338b49cc5ac3ec02fc0dcc50f0c0793d`  
		Last Modified: Wed, 06 Jun 2018 12:09:36 GMT  
		Size: 7.2 MB (7219988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37d7ab70a893b261bd67725cbf1c30ba8d02b42bf0ba2239c075d542a06b5dda`  
		Last Modified: Wed, 06 Jun 2018 12:09:37 GMT  
		Size: 9.9 MB (9908071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93e0bc95ee8542514d17b841a9a9c7a18c5e18b222a5f9dc3d8215992e5d7767`  
		Last Modified: Wed, 06 Jun 2018 12:10:29 GMT  
		Size: 56.0 MB (55957704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29363fc8b3b16d2482ccc679c117544fbca4f540ee1de57e922578881ae64733`  
		Last Modified: Wed, 06 Jun 2018 12:12:03 GMT  
		Size: 194.4 MB (194350138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:9dc37b3c921692c1e1ff385b2992c955c04d64b3566051169dcb0a1dab34d2f5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **309.0 MB (308976605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd049dd48965cac05a7fb5558f3dfd464ac9d4c2416f23ce2e7accc9125535fd`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:16:54 GMT
ADD file:1f6317457e3791b2fabb705b84b7213ace2b230e8804fd9e52ae26d15acf30b0 in / 
# Wed, 27 Jun 2018 08:16:55 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 09:42:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:44:12 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 09:49:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:57:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:fb9b99e970f3f978a0c6371622d99d0ec52cdfb55bd979c923b3e553b0d86c23`  
		Last Modified: Wed, 27 Jun 2018 08:24:10 GMT  
		Size: 50.1 MB (50108359 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:673f94fe3dc0e7651a07a5307ac8319558f8a2c9dcf7da9209a2f4fce5c8d319`  
		Last Modified: Wed, 27 Jun 2018 10:23:38 GMT  
		Size: 6.9 MB (6907033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b8ee03424d76a1fe8b3c8444030270ec8653f04a53c5773679d3779447eaaf`  
		Last Modified: Wed, 27 Jun 2018 10:23:38 GMT  
		Size: 9.5 MB (9494288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91c63e000d6c0438f79e3905685815b33d2b9b9ffae4b91f9901770119e6d5a7`  
		Last Modified: Wed, 27 Jun 2018 10:24:28 GMT  
		Size: 54.1 MB (54092102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e4a41fb2691695e658dc3b669db3a6ff93b2d33839926ea31c4e95951a95f53`  
		Last Modified: Wed, 27 Jun 2018 10:26:05 GMT  
		Size: 188.4 MB (188374823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:5068c165f1462a9d77da9e777aaeb17b90d7de86d0aa54b90d9feca06412f2d0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.2 MB (302239520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d523566b0c67354db873eec247ebe5729830428c2109a3ba7bce11c72039491f`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 11:41:56 GMT
ADD file:a585239e7bbf89417d8a69d8397ff18404f3e0baf7c0d648078be548627561b1 in / 
# Sat, 28 Apr 2018 11:41:56 GMT
CMD ["bash"]
# Sat, 05 May 2018 12:27:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:27:35 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 12:28:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 12:30:08 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:811bf1512e7bc49075b48591994ed3209ccd1ed59f6a9260e4fec18bec422a32`  
		Last Modified: Sat, 28 Apr 2018 11:47:16 GMT  
		Size: 47.3 MB (47336918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5638d6eb64b30dc68efd35f21f3da998e571384fe8c865d310ffcf6e56c4f5`  
		Last Modified: Sat, 05 May 2018 12:44:01 GMT  
		Size: 8.2 MB (8166660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de84873a88d576315068a1425e315dc1169f59e806900fc4d47b591369d633f`  
		Last Modified: Sat, 05 May 2018 12:44:01 GMT  
		Size: 9.1 MB (9076502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93f922eacec1ee73cc9bcbfea8e42c00238a55fd33946531bafd6316b5d876f6`  
		Last Modified: Sat, 05 May 2018 12:44:27 GMT  
		Size: 52.6 MB (52606289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8a8623b452b329c3ff299a0612002d7a526f52794fc0b26c9bc3c82c32d5469`  
		Last Modified: Sat, 05 May 2018 12:45:18 GMT  
		Size: 185.1 MB (185053151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
