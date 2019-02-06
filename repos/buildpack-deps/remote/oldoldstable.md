## `buildpack-deps:oldoldstable`

```console
$ docker pull buildpack-deps@sha256:dd5e6596ed5b79b5c367cfdd20f6207c2b10a683ebd1514cbfe5325b49cf523a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `buildpack-deps:oldoldstable` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:e8182da804b99776c834438b58dafc1a89536e4374e57a7fba3299ff99e35bea
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.7 MB (182720714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c35a0eabea471fc5738df4ac0c07f40a3a8e24a51ed335c422d559b00f87c80`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:31:30 GMT
ADD file:8cf36f5c76ea3119278e91016148dd680311000ba59b5fa986b707f000a40906 in / 
# Wed, 06 Feb 2019 03:31:30 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:54:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:54:23 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 05:54:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:55:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2eaed095b90d08fb6a1870ea73a7bff5cd989c5969dd5ed3be88483796869559`  
		Last Modified: Wed, 06 Feb 2019 03:36:56 GMT  
		Size: 39.3 MB (39339703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f264f3025467da5cd3ec491ece816f7ef4ccf594c76983be21583079ea66d819`  
		Last Modified: Wed, 06 Feb 2019 06:03:11 GMT  
		Size: 5.6 MB (5630918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ab1300d9c9af8afbcc74112dce265fd9bd1ca13b3d6adabcc431d73dca36fd2`  
		Last Modified: Wed, 06 Feb 2019 06:03:27 GMT  
		Size: 38.0 MB (37960300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b7a01e67ce3e2da5cecbec27d4ea6cac6f2f3389b34b333b8f79da5e3e1548c`  
		Last Modified: Wed, 06 Feb 2019 06:03:58 GMT  
		Size: 99.8 MB (99789793 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldoldstable` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:2ea3c3afc76526a34a8484c22278fafcb24b5985288df6f7dfb430fd96e8a005
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.3 MB (169250723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08a2c2a18f081ddb199f06fb22c1ffd357012ebeae1f5530e9f7d741fce7864c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 09:57:04 GMT
ADD file:5db8265128cc6f9de34a940ba6318ea3567aae52b29fe6c0c5941ed6e43adfd1 in / 
# Wed, 23 Jan 2019 09:57:05 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:42:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:42:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 10:43:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:44:51 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:b9282fffe21aff109811dbcca73fb778b30eaac4a389b4cfbfe8c02b1ac5202d`  
		Last Modified: Wed, 23 Jan 2019 10:03:42 GMT  
		Size: 38.0 MB (37992343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ddae2efc3670f393a73004af5cbc8cd2dfbef685e8c7d81728ab9d3592133f`  
		Last Modified: Wed, 23 Jan 2019 10:51:01 GMT  
		Size: 5.5 MB (5474953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827fb68fc0ffd619697e55a33bc7a9f7f816b717afc28c73eada67ca0f09e964`  
		Last Modified: Wed, 23 Jan 2019 10:51:19 GMT  
		Size: 35.9 MB (35894198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ca3ac6518c4113b24a94da9e67dae0d403c0e7099bbf499823037cc170df6f`  
		Last Modified: Wed, 23 Jan 2019 10:51:50 GMT  
		Size: 89.9 MB (89889229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldoldstable` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:962671b3a7a33476d184bb2170c16ab0bf6af24efa34c1a473b593ef2c631f03
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.7 MB (162736628 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a86e90e19da62630655e398000ebce96edae39a451db37badea81518216e26e7`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 13:07:15 GMT
ADD file:7d9aad6f799a97cd501266efa4ab42054317783776b828b81c34db3db1e5e1bb in / 
# Wed, 23 Jan 2019 13:07:16 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:51:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:51:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:53:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c65553b75dbe6d4ce3a95ea4c52c0cfe2e8c6ef00067b6527b4efece00329f55`  
		Last Modified: Wed, 23 Jan 2019 13:13:43 GMT  
		Size: 36.6 MB (36620004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb656d8feea4a9242a115887e1ebcd99dcb6137637ef4b821e0f5efe0e85bb57`  
		Last Modified: Wed, 23 Jan 2019 14:08:19 GMT  
		Size: 5.3 MB (5322069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae4d0e37463cc5b5de0ce13f4237d3410aef8910a1afffff710ab0a43a81e02a`  
		Last Modified: Wed, 23 Jan 2019 14:08:38 GMT  
		Size: 34.9 MB (34873231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57edb292f24830075f7c531e42a2db0da291f60982aa02c4693d4829598b7d49`  
		Last Modified: Wed, 23 Jan 2019 14:09:10 GMT  
		Size: 85.9 MB (85921324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldoldstable` - linux; 386

```console
$ docker pull buildpack-deps@sha256:27bc14c230f750ee505b96fe2869bee5002702eed83849afbde9439e9a51b9ab
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.8 MB (183817471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e987b0eb145c3bad44e262fed354b6401dace40de924c9020c0f4f95401369a1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 23 Jan 2019 11:56:51 GMT
ADD file:6fb64a330e16c04281ff0d182cd3a933035277c01665b4dd09df1edb0e717c6f in / 
# Wed, 23 Jan 2019 11:56:52 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:55:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:55:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:56:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:57:21 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ee259baed8684a3f7be46aeb2b4e464f70718300b1769fd30c56196bc0ce3050`  
		Last Modified: Wed, 23 Jan 2019 12:04:09 GMT  
		Size: 40.5 MB (40533275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af62567d17756a813f0271c47518ca992d3a139ec8557be34a8b4425c6c9c4f5`  
		Last Modified: Wed, 23 Jan 2019 13:13:24 GMT  
		Size: 5.6 MB (5617110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a7e394c1dc8f2a185661d5e433a0a8c328fec5b8705923227d0a640e40fa5c`  
		Last Modified: Wed, 23 Jan 2019 13:13:41 GMT  
		Size: 37.1 MB (37050276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07e4ee24923e93d10b3f11783e83de78be92e2c1dc871b6cd0fe59dc8a0e166`  
		Last Modified: Wed, 23 Jan 2019 13:14:11 GMT  
		Size: 100.6 MB (100616810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
