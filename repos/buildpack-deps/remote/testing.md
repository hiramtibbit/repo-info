## `buildpack-deps:testing`

```console
$ docker pull buildpack-deps@sha256:bacb78f8364a41c83540a8fbbfd83acf92eb5df432a75d8df037aaaea5ca03fb
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
$ docker pull buildpack-deps@sha256:89602e327c9a9299c89d249a467558b135d2b1762eb5940ed082075d0f003b69
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.5 MB (310491866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:298f855ec466f7908bfebdbb3f1aeb314d4759d0ffb36a5df428dca1e9762bd7`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 13 Mar 2018 21:56:10 GMT
ADD file:2219cecc89ed69975239dfc7c181d32ca55b272939b08410f4213d61a0281f82 in / 
# Tue, 13 Mar 2018 21:56:10 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:23:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:23:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:23:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:25:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:18969b622956cb8bc2c2e169be10942a74c07098134954db39e745d704631ec0`  
		Last Modified: Tue, 13 Mar 2018 22:35:27 GMT  
		Size: 48.2 MB (48158970 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902ef9bb40cf26af0ca5b4e59394ef05874342e7b0fdab3709f6d81db2e1dd74`  
		Last Modified: Wed, 14 Mar 2018 00:18:52 GMT  
		Size: 8.6 MB (8633494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e66d443de451643ebfc61b107549a8ec674a3ccacea1df51ae8db332f882913`  
		Last Modified: Wed, 14 Mar 2018 00:18:53 GMT  
		Size: 9.1 MB (9103454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:826091e0ca204a323086ba62278e007a1b7b30ea250ab85b458b9c21818e3ee2`  
		Last Modified: Wed, 14 Mar 2018 00:19:28 GMT  
		Size: 49.1 MB (49084024 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b33e0009877c4884df824db19b7eb43425348c0a7d19264b3cc1c2b2bf1c536`  
		Last Modified: Wed, 14 Mar 2018 00:20:54 GMT  
		Size: 195.5 MB (195511924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:370c7d96dab1026a59352f4ad243a3ad283516f4fb2381efdf22a3f5695ea136
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.1 MB (292056733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e9cf37abcf5975dfc778455befef8fef871d806be423814eec2bcd19e37dcd0`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 19:54:44 GMT
ADD file:d2d295ccc43cef52084ca0ba28f30b5bdcf84c56606e9584a277238f11689cbe in / 
# Wed, 14 Mar 2018 19:54:44 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 20:34:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:34:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 20:35:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 20:38:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:944025c4ab4f6da4a6f4cd84c23ced4cc2c71f0e649c6dc4983806bf127c1717`  
		Last Modified: Wed, 14 Mar 2018 20:05:42 GMT  
		Size: 46.2 MB (46152089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea07882965a49e43efe695a54d988276ac6c1cb348a0f05e9694633f27649349`  
		Last Modified: Wed, 14 Mar 2018 20:52:11 GMT  
		Size: 7.8 MB (7806768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:969fa20fe5cb6d353fe6212536953e33b47635d6f818f9bd6201cbadb68a3d5e`  
		Last Modified: Wed, 14 Mar 2018 20:52:11 GMT  
		Size: 8.8 MB (8849414 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69ce846a429363d8ce3f87a5ad001c82c0710c9a3eaf3439ea9afaea599999e0`  
		Last Modified: Wed, 14 Mar 2018 20:52:38 GMT  
		Size: 46.9 MB (46913869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad560feab7b9383e2879573136b06a776f808ade71ff77191100602477ff3ca1`  
		Last Modified: Wed, 14 Mar 2018 20:53:36 GMT  
		Size: 182.3 MB (182334593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:3f967e78ca39c90993e864a9be327a1d28939ef48be8e9f9f3399d477a2053e0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.8 MB (280782716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b7e1372c67d2bd6c696ec1688429b3c3393c2df2d9ff74b7d1ee4aee618cca9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 12:25:46 GMT
ADD file:6208a77a3fff4a68790f06b1b3a3e0fcb563724a9d1485d8e10592e2cf32b190 in / 
# Wed, 14 Mar 2018 12:25:46 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:08:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:08:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 13:08:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:11:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8c1aa76b118f0b6f588a119501660e6c6984f1c8af222f2b04be33b64cada0c2`  
		Last Modified: Wed, 14 Mar 2018 12:37:22 GMT  
		Size: 44.1 MB (44078135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e9ef25c18e0f09d74347d03f695e4b2ca6892d40380d17d5e72a7990176d9ca`  
		Last Modified: Wed, 14 Mar 2018 13:25:25 GMT  
		Size: 7.5 MB (7530275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b0a23b0574822c6b7f8d5086f3f20914e914e7cc95644c971f578832516698c`  
		Last Modified: Wed, 14 Mar 2018 13:25:25 GMT  
		Size: 8.6 MB (8563686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:853a3468c62eca1edd4effaf01781cd232796e079d4e4bff526b65d38ba47a87`  
		Last Modified: Wed, 14 Mar 2018 13:25:56 GMT  
		Size: 44.9 MB (44904653 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ac3ef8387c8c6f3d84026e4d6830ee696adf8ba7ee4018c8bc184fca14c37c`  
		Last Modified: Wed, 14 Mar 2018 13:26:53 GMT  
		Size: 175.7 MB (175705967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:8890df1e359249401282ea8e32799559992490865eb8702a4fd48da4ea314664
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.3 MB (295348143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:201e97077293ff8513949eb626bb0fcaf84ee35cd967ce0aa22b79edd217ebf1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 17:23:02 GMT
ADD file:4d06cc781e9fabadda4327717b9e858e087a533b952ce4c62c6903392b4e76ce in / 
# Wed, 14 Mar 2018 17:23:03 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:10:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:11:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 18:12:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:21:55 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5f4421c3a5683a5815aa38bb9e5b6d9900c1fdead4046af0aa2e60a21ca2db9e`  
		Last Modified: Wed, 14 Mar 2018 17:36:30 GMT  
		Size: 45.5 MB (45463739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4adc8930e784e1fdda85378c52f6f208653e7fb05f762bb8e7f429be32ead022`  
		Last Modified: Wed, 14 Mar 2018 18:57:39 GMT  
		Size: 7.9 MB (7852846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:870315f2036e8576f26842c96366fa568ab0156a2a2e17b8eb5e0e5b44f6b9b6`  
		Last Modified: Wed, 14 Mar 2018 18:57:39 GMT  
		Size: 8.8 MB (8837935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5209cc31bbe17adc0667b8aa70b72a1613bcf1c931a898fa5b05f1f5aeb5bda5`  
		Last Modified: Wed, 14 Mar 2018 18:58:41 GMT  
		Size: 47.4 MB (47391731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d30a52d87f3109b5658a80a37f92ae20c069ccc5f615fbd4f00d1aeb5819a60`  
		Last Modified: Wed, 14 Mar 2018 19:01:07 GMT  
		Size: 185.8 MB (185801892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; 386

```console
$ docker pull buildpack-deps@sha256:6bb7543a00ac85189f1b8c1d80261937b04af623f754bfe4a9cd60240ab222f0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.4 MB (325358809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d5f609366b55dae4d6da2d7baffdf33c7a0ab61b0b9052926cc21686c1d91dc`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 27 Mar 2018 13:37:25 GMT
ADD file:bfb9ad908672d1fb0f454b1773bd0d56a2ef024f07179e570a361b6b2e77e90e in / 
# Tue, 27 Mar 2018 13:37:26 GMT
CMD ["bash"]
# Wed, 28 Mar 2018 07:49:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 07:49:41 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 28 Mar 2018 07:56:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 08:09:13 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b1c4e2135548f37bc829a715cb260e01768bdfb16003a8aaa3bbf67c1ab41306`  
		Last Modified: Thu, 15 Mar 2018 00:45:40 GMT  
		Size: 48.9 MB (48927049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2fe953acb38af2dcde728e6638c44002b1fe0ec5e861ad9e9989b280b8a1e5`  
		Last Modified: Wed, 28 Mar 2018 10:20:28 GMT  
		Size: 8.6 MB (8608118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b45732696cd532a3c77c8ce7b02466d70bf49d1a5abdf342ee3ae0b7142c5bf8`  
		Last Modified: Wed, 28 Mar 2018 10:20:28 GMT  
		Size: 9.4 MB (9378761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a840651eee1f1e3781b690c920fd65ced64d33118f3e534cd577894a2eae3a5`  
		Last Modified: Wed, 28 Mar 2018 10:29:03 GMT  
		Size: 50.9 MB (50932775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e700807759a3d726bcbb0fd40f2178b9346039f6fb3c7fcb56abc95f7ddb0213`  
		Last Modified: Wed, 28 Mar 2018 10:37:43 GMT  
		Size: 207.5 MB (207512106 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:5f925e5714dba170891f097447a169d80e52b5f4c5b3d917ffcfa10acee59179
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **316.8 MB (316806579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d517afeaf9f0b967d4e6ed0a9b18116988d1cba9e81cbc33936b27f60e749f77`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 00:31:43 GMT
ADD file:04ae5de245ffb9dbfd27912d890db10dc909b586e3d500130e2885d1f3c095c2 in / 
# Wed, 14 Mar 2018 00:31:45 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 01:13:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 01:15:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Mar 2018 01:18:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 01:33:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2b2963dd0429a4b00d9fabcbfa40f0cd89eb0d08a0d517051d81782f0a6248ba`  
		Last Modified: Wed, 14 Mar 2018 00:37:44 GMT  
		Size: 49.6 MB (49560566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f82e6418b7f0e6a05245fae45fc4a2519fcc5938208be5b3627df385f120dd4`  
		Last Modified: Thu, 15 Mar 2018 02:27:48 GMT  
		Size: 8.2 MB (8210891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:568277d30e9372795dc30b603c291ae586bedea422f47885369dfea9c1779be0`  
		Last Modified: Thu, 15 Mar 2018 02:27:48 GMT  
		Size: 9.3 MB (9339651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3a2c08fa85337855097ab022ae680e9e1266baf7a0cd10ca6729f04bfbcfb34`  
		Last Modified: Thu, 15 Mar 2018 02:28:13 GMT  
		Size: 52.0 MB (51996389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d384137ea1b25958d458ec01cfa89622344ee9c22f395c7d3aeacbfeb47372a`  
		Last Modified: Thu, 15 Mar 2018 02:29:09 GMT  
		Size: 197.7 MB (197699082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:093fe72be43b2bdd78a45de7471e6fae5cb60cde713fa5feefe21440560b197d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.5 MB (297521498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:439752e5f77507c9f4859f303c4ec80555cfe9870684192ddd355211e6e248c9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 14 Mar 2018 05:21:31 GMT
ADD file:8d3dda58905073b30d5dc7024667b795f7d4a69c2343682083583478415ef303 in / 
# Wed, 14 Mar 2018 05:21:31 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 05:46:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:46:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 05:47:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 05:49:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:f93a691cf870e13a2c95b73a495fd6e7444fb8fc891b02bf8bdab7a1e76016f2`  
		Last Modified: Wed, 14 Mar 2018 05:25:38 GMT  
		Size: 47.3 MB (47341756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a03124b87d86a7936f701b2593a938660b1cde782c41c2bb93e48c1b93d0b1f`  
		Last Modified: Wed, 14 Mar 2018 05:57:54 GMT  
		Size: 8.2 MB (8166947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d65c633f97f1be69a472eefe993e1dcc889444a3acafe05b6857a9e1d2c9eb`  
		Last Modified: Wed, 14 Mar 2018 05:57:53 GMT  
		Size: 9.1 MB (9075317 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea87d0643e8fa7d2f3054701e87459690f6e0b2c88e861996fc10324d40848b6`  
		Last Modified: Wed, 14 Mar 2018 05:58:09 GMT  
		Size: 49.1 MB (49073416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e684b598d78825a04aceea96ca4be2cce5e2b82cbe6d94993d99c6c7602a2e65`  
		Last Modified: Wed, 14 Mar 2018 05:58:46 GMT  
		Size: 183.9 MB (183864062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
