## `buildpack-deps:wheezy`

```console
$ docker pull buildpack-deps@sha256:00f9a474a88b8173d37e382707496794d4487b958ce91f52ca88496e3c09427b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `buildpack-deps:wheezy` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:785032f7aee2306fa0da88893cc40d17db5514cf874d00c8db560f07fe9e1fad
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.4 MB (183365669 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cca46768e94652d0781693b66643dacb94801a281f6f5710c5269089bc9e574`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 04 Mar 2019 23:23:13 GMT
ADD file:bbbee952d330957b2a425a378d451176c784585717c9e47df6c05c10881a7b3c in / 
# Mon, 04 Mar 2019 23:23:13 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 02:38:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:38:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 02:38:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 02:40:06 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2b15b7abe8b39a409a8b29c5ce62b22ce091102ca25fbf49aa877cca40983717`  
		Last Modified: Mon, 04 Mar 2019 23:27:27 GMT  
		Size: 39.3 MB (39339775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da5f5430a48dacf1baf70fd8272d6cd83b9d8986c387d84a1669cfda8d230e75`  
		Last Modified: Tue, 05 Mar 2019 02:44:50 GMT  
		Size: 5.6 MB (5631119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ce4493b3329b00b1bc5d224d74500ee3da6e5002587fc1dc4c8d4cb7934c71`  
		Last Modified: Tue, 05 Mar 2019 02:45:03 GMT  
		Size: 38.0 MB (37960254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:639e89992fd50112aa3d08de41b1e527145a4ae5134113caf32ecd7deef8a22d`  
		Last Modified: Tue, 05 Mar 2019 02:45:27 GMT  
		Size: 100.4 MB (100434521 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:64f04cd60b8949a4fd231e1b13cf96d07a89cd0b383dd52361bcd9ae31c70ff1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.8 MB (169822003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c52fc10fcc85f1a391ef54b6330e22b93a67f777fc074dec289b64631c6d948`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 09:57:20 GMT
ADD file:0826f52e4e56e8a465fd832739b8eae1ccdf00313b775ea84a0fe1394d496009 in / 
# Tue, 05 Mar 2019 09:57:21 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 10:36:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 10:36:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 10:37:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 10:38:46 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ebf8468b45cf43bc121a229a3ba731d234459b2e3f4d35cbf9e2ee954c2a7364`  
		Last Modified: Tue, 05 Mar 2019 10:04:07 GMT  
		Size: 38.0 MB (37992220 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0891945ab1b17c38d24ffb7f1a848cffed83233c1a4598027fafa409eb18e8e`  
		Last Modified: Tue, 05 Mar 2019 10:44:50 GMT  
		Size: 5.5 MB (5475061 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4936cbb22f64e28da26c168a03f3fa5dd8de79f8a0dbc189c619932acb4cf61e`  
		Last Modified: Tue, 05 Mar 2019 10:45:09 GMT  
		Size: 35.9 MB (35894464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1f34f02946ef63cf5812e82d6d3e529fc19bcc976233bddedb6e6267b97c604`  
		Last Modified: Tue, 05 Mar 2019 10:45:44 GMT  
		Size: 90.5 MB (90460258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:94ed4c85f24b35fb4494958288695dc63adf0680a2191805d78aece915955581
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **163.3 MB (163286287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:61b8c80e823659bf6c12aae81cfa8084eaaa53c96fa86454199adfe4456db0c2`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 13:13:21 GMT
ADD file:e4f915f745bb98797369f2b70d5191cc91c3709aa7cce03f9a009b3b79fa05de in / 
# Tue, 05 Mar 2019 13:13:23 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:55:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:55:37 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 13:56:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:58:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4cf24189586df875d4f26389a5b720f76f48806bf83732cea3a108c6a9417008`  
		Last Modified: Tue, 05 Mar 2019 13:19:59 GMT  
		Size: 36.6 MB (36619951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6e997e74caa8f16cff589d68e1ee9f8821593a90e15073f9961ee5888e23f25`  
		Last Modified: Tue, 05 Mar 2019 14:04:43 GMT  
		Size: 5.3 MB (5322096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19d6043b07c933bb75fd602d3ecdc886369a1ac80a712e9b0cee3393ec7b5698`  
		Last Modified: Tue, 05 Mar 2019 14:05:03 GMT  
		Size: 34.9 MB (34872464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5b3fd71592f9177c498d235257c3cb0b78fa63e2cd5515a4026fb1873cd604d`  
		Last Modified: Tue, 05 Mar 2019 14:05:35 GMT  
		Size: 86.5 MB (86471776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:wheezy` - linux; 386

```console
$ docker pull buildpack-deps@sha256:f566361138d4171874ae1e140695fc70b9cad25f0f41aeab65f8651c59581adb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.4 MB (184448535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c699137c0722c2c36545bf43aae86d12bf2083e45aa17e8f1b67c1d2c30bdd00`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:02:25 GMT
ADD file:910d045517957d8359d9bcd1985d7df82d86a3cb0e46982c4cfa6b23d2dce71a in / 
# Wed, 06 Feb 2019 12:02:25 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:53:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:53:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 01:53:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 11:58:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:ba276270fbef4fd9e0a45784fac937998003a61036beee7edac67441ee2c0d66`  
		Last Modified: Wed, 06 Feb 2019 12:09:27 GMT  
		Size: 40.5 MB (40532776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b6c6f9c54ff97785e18abd891b58cba86023f9f602d2b8e38c28ead86494c72`  
		Last Modified: Thu, 07 Feb 2019 02:04:29 GMT  
		Size: 5.6 MB (5617050 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:effeff986bd306527e4361f4810023b2d8149cd5802a7a3f50bdc86461450606`  
		Last Modified: Thu, 07 Feb 2019 02:04:48 GMT  
		Size: 37.1 MB (37050267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24ccbe980df93847c1e0a0be2eaed629889dd7137cc3e49b47537ba154b7aae2`  
		Last Modified: Sat, 02 Mar 2019 12:07:18 GMT  
		Size: 101.2 MB (101248442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
