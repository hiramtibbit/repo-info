## `buildpack-deps:oldoldstable`

```console
$ docker pull buildpack-deps@sha256:6780c8a9b9e1a46ed84d7d4990b4fae37f8d767bcd04990d882175f8fc4181de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `buildpack-deps:oldoldstable` - linux; amd64

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

### `buildpack-deps:oldoldstable` - linux; arm variant v5

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

### `buildpack-deps:oldoldstable` - linux; arm variant v7

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

### `buildpack-deps:oldoldstable` - linux; 386

```console
$ docker pull buildpack-deps@sha256:8e6e26920f4ea0bc3d7949b3b5ff613bf7fa4b72982440739aab00092f20dfd2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.4 MB (184448677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef9984c8fb1d4a156bf0b805a6233cc305b77bacb130d1b3e865db28334d9648`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 05 Mar 2019 11:47:59 GMT
ADD file:4fc0df88c99e9f004b54840d6cf825b24858e081c1d856547b13706c9433a626 in / 
# Tue, 05 Mar 2019 11:47:59 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 21:12:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 21:12:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 21:12:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 21:13:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:79bd0df238b04ae4a688a5691a4b088c6a4613287f0b59e96a612e1546c9ecee`  
		Last Modified: Tue, 05 Mar 2019 11:56:55 GMT  
		Size: 40.5 MB (40532914 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22a58f2af5ba14ad387ea7d8997765ce33ca48a5b0611806224a6d5ac6c343a5`  
		Last Modified: Tue, 05 Mar 2019 21:19:06 GMT  
		Size: 5.6 MB (5617037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:beeca6ceec0ae73d12d1d46cdfba10631806cff32a2f96c71041dba2ca558609`  
		Last Modified: Tue, 05 Mar 2019 21:19:19 GMT  
		Size: 37.1 MB (37050246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f66e853e284d000df2d7d8b7439e777770e0052b3564af3db1c58024534aec8c`  
		Last Modified: Tue, 05 Mar 2019 21:19:44 GMT  
		Size: 101.2 MB (101248480 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
