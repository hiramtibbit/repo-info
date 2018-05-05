## `buildpack-deps:testing`

```console
$ docker pull buildpack-deps@sha256:3a12bf2ff576758c6a585973405519c76ad830f9cef9afcb5a483985d294b9ac
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
$ docker pull buildpack-deps@sha256:210287211484df1fcf389aa8a62005289676f47ea20b515929016db4ef83e27a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.2 MB (315189974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94438a652c963048b63a43dd88bbf3a89490c8852db98202298c2ed1b867473f`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 06:42:45 GMT
ADD file:3e44dc3efd4691d66535df49a5a805cae024578f150d8a17b801624a5b9703b5 in / 
# Sat, 28 Apr 2018 06:42:45 GMT
CMD ["bash"]
# Fri, 04 May 2018 17:28:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 17:29:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 04 May 2018 17:29:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 04 May 2018 17:31:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:669cd012b9c151a1111764e66f8edf390cfc1d5c37c41f0268fa241837086cd0`  
		Last Modified: Sat, 28 Apr 2018 08:20:05 GMT  
		Size: 48.3 MB (48310892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f102b372f908c8b822d972176f8f360ce6d14f3e7b778cace8410a95c8db6ce3`  
		Last Modified: Fri, 04 May 2018 18:14:43 GMT  
		Size: 8.7 MB (8674616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59335fe4363af1a2d195c79eee83caca7c8c9de9c3441feb98a949379774a098`  
		Last Modified: Fri, 04 May 2018 18:14:43 GMT  
		Size: 9.1 MB (9113179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4216355ad534197021cfcbe399899f722f38c2f6f114f30591fdf1683384311d`  
		Last Modified: Fri, 04 May 2018 18:15:13 GMT  
		Size: 52.5 MB (52526057 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43686bbcc632518d97fd79e9c4f480f35c5877124f9bb5c61da83b6ce0973ad4`  
		Last Modified: Fri, 04 May 2018 18:16:13 GMT  
		Size: 196.6 MB (196565230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:3d9e1198805ee2a7e6b638a2e9537c95a07dfb2d3529d08e0299da867e85d5cf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.1 MB (296091002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b78afefca679fe1fb049ece524bb5253740f3c298eed021f7815ddc3bbfab998`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:48:43 GMT
ADD file:66d920f27af34778b859ff44ac2f690b2f57a54a25e51a1186bfc8c8227115e0 in / 
# Sat, 28 Apr 2018 08:48:43 GMT
CMD ["bash"]
# Sat, 05 May 2018 08:49:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 08:49:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 08:50:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 08:52:52 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c18fafa90d726e357067435541360e188b0202897339c69c0ec6942c58fe23a7`  
		Last Modified: Sat, 28 Apr 2018 08:56:22 GMT  
		Size: 46.3 MB (46285529 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a5820562fc4968838851b12ea1fb01c7c0bd7dc73a66a95e6c57ce3da8cf8b7`  
		Last Modified: Sat, 05 May 2018 09:07:50 GMT  
		Size: 7.8 MB (7843302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83b8da604e242e2a0eb181149354ba063240ac08d4a310930d4c3a611dadf1d5`  
		Last Modified: Sat, 05 May 2018 09:07:50 GMT  
		Size: 8.9 MB (8856582 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:855d5f15f4cc33ce9cd10e520d237c133e6691ff9b121ae63c02d1bf0e5a06ea`  
		Last Modified: Sat, 05 May 2018 09:08:22 GMT  
		Size: 50.5 MB (50503792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ba67113fe909bd6cf32f93ea4d162461ab9f106b545c2d4e993745c191e7582`  
		Last Modified: Sat, 05 May 2018 09:09:28 GMT  
		Size: 182.6 MB (182601797 bytes)  
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
$ docker pull buildpack-deps@sha256:26a650ec9656cdf968597d2d18fb6dbb91c323cf4432eaf22bcd72f02eaa9203
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **324.0 MB (323982880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5992f5792a1c79b900970613e4130af64754433b1f4f3432dfd0e85207ce1bab`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:09 GMT
ADD file:c7f45bbb36a6dc2b6b0b33d053bb2770ec06cdb2c900cff5af14d6489490b12e in / 
# Sat, 28 Apr 2018 10:39:09 GMT
CMD ["bash"]
# Sat, 05 May 2018 10:52:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 10:52:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 10:52:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 10:56:00 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5a8e1be398ceea51bbc9f18e247db10203d8e023e0be4dcf256a6756222e8879`  
		Last Modified: Sat, 28 Apr 2018 10:43:33 GMT  
		Size: 49.1 MB (49088138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4f44632639b971a099bc322d58e9e60f0860a7bc74ff6787344e73b638fd1b`  
		Last Modified: Sat, 05 May 2018 11:32:25 GMT  
		Size: 8.6 MB (8645911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb83ed85d2db92c0e8f9bcca6981d6b35f28dfc37bf991876fdaa9fa89535578`  
		Last Modified: Sat, 05 May 2018 11:32:25 GMT  
		Size: 9.4 MB (9389177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5888e0218924d0c45a20034adbdf56c6246bf6dbbfc849e467cf6a4fe520660`  
		Last Modified: Sat, 05 May 2018 11:32:58 GMT  
		Size: 55.0 MB (54985138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa0d5a288fb45fac434255c0e2df54ff8be0b762008a48f425fded4ff3cafed`  
		Last Modified: Sat, 05 May 2018 11:34:04 GMT  
		Size: 201.9 MB (201874516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:3d761a1a9e2c06058b3cad0f1546e5183c0b34a44ffdeaef9a9a181d3f3edbd1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **322.1 MB (322112367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3adcb292dbf299638708eb66f56418d2c89cd44771f109743dfb01528c227e21`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 28 Apr 2018 08:17:10 GMT
ADD file:d3657c1f223127301379ac9ded23ac24fa9725bd9f8bc3e66ef79572f768815d in / 
# Sat, 28 Apr 2018 08:17:10 GMT
CMD ["bash"]
# Sat, 05 May 2018 08:38:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 08:39:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 05 May 2018 08:43:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 08:53:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:20d66f98ebb4d14ec30708a8ce75b4004164b1164afd9734a7fa623b2d1b9b77`  
		Last Modified: Sat, 28 Apr 2018 08:23:26 GMT  
		Size: 49.7 MB (49746693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b2153a1377e49b7a8227707cd9cf8d48360b37d0a2f1606eea978bf0c96360e`  
		Last Modified: Sat, 05 May 2018 10:41:13 GMT  
		Size: 8.3 MB (8266268 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:121c636b399604342dcb5656f4bad42debb05fbb19b63c6293c1a9046953be19`  
		Last Modified: Sat, 05 May 2018 10:41:13 GMT  
		Size: 9.3 MB (9349240 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94d09c681c9567a871a4ad72e1ec29936f0ef69209d4d164843cb4210115d3b3`  
		Last Modified: Sat, 05 May 2018 10:44:21 GMT  
		Size: 56.1 MB (56139881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f4a860a6477cc943ce7aef8155954f429a8e8ae21ac22d418bdf909c4b80ec9`  
		Last Modified: Sat, 05 May 2018 10:49:57 GMT  
		Size: 198.6 MB (198610285 bytes)  
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
