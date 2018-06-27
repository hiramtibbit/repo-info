## `buildpack-deps:oldoldstable`

```console
$ docker pull buildpack-deps@sha256:f0fe696596621ccacb2f2d806f9780fa32bb8a18bfbe49349bbacfe44a6efde0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `buildpack-deps:oldoldstable` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:e46296d951912989d09f4555944fef7eb85bc78ef8bd8b53d6f093c0d42fa3c0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.6 MB (182564976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c26b4870857d65531bb7ff2aff676a2db32bdf11d0dabcfebce54f6154c4153a`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Jun 2018 21:27:10 GMT
ADD file:0fb413f349ae38e7b6ee45b91e11c24415dc0dc745ddbf28738c0726abe4ff0e in / 
# Tue, 26 Jun 2018 21:27:11 GMT
CMD ["bash"]
# Tue, 26 Jun 2018 22:19:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:19:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Jun 2018 22:20:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Jun 2018 22:21:51 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:5d29656a35610f89548ba9ce86485e3223cec0aae2d94325f204a453a3251bdd`  
		Last Modified: Tue, 26 Jun 2018 21:40:36 GMT  
		Size: 39.3 MB (39339692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62ef65cb1043a7d8f6ed7a0c8bda240a0d99d774430cc26c48f29c6ba00e6d03`  
		Last Modified: Tue, 26 Jun 2018 22:33:11 GMT  
		Size: 5.7 MB (5653839 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bca2343476828d0b5480815c18503b5c4a0fb5de6c3429ce7867c49cd985af09`  
		Last Modified: Tue, 26 Jun 2018 22:33:47 GMT  
		Size: 38.0 MB (37960639 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3a4f2209e98997e160f633a7aa5eb5162ebe00bdd5249e4e93a2ac7a8c51bbf`  
		Last Modified: Tue, 26 Jun 2018 22:34:41 GMT  
		Size: 99.6 MB (99610806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldoldstable` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:375aa8fe5c2c8247d071fdcb9e80e95939dad1cf86fa626782fd0ef18864b353
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.1 MB (169067119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7589783472a044fdcbd744170375c5d49684d7686131862795234c622437e9f`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 08:55:52 GMT
ADD file:ed02e823bde1bd9dcf3c03d14f842878217130572ff188cbb2d6db34b70a979e in / 
# Wed, 27 Jun 2018 08:55:55 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 09:41:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:41:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 09:41:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:43:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3e2e9eb80c7a243dca0bd760ee64e7490f7c809d350755e29c809283610a49fd`  
		Last Modified: Wed, 27 Jun 2018 09:05:27 GMT  
		Size: 38.0 MB (37993559 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ae8917d5a6ff5ae550d84604307c90680735d174a789df8248ccf7f46626309`  
		Last Modified: Wed, 27 Jun 2018 09:50:34 GMT  
		Size: 5.5 MB (5495174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e5eaf3b760fb4517899ede99da0f677e3e20c8df14619830f4c8eb8505b67e2`  
		Last Modified: Wed, 27 Jun 2018 09:50:59 GMT  
		Size: 35.9 MB (35894509 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c79e2b464e11fd1aa2dca470538141f6a32308b7ba615b775df3564cb93a7a87`  
		Last Modified: Wed, 27 Jun 2018 09:51:36 GMT  
		Size: 89.7 MB (89683877 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldoldstable` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:a640bc6ecee0953734ebfe66f65621364fa505c44109416d85413eb67cda5d97
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **162.6 MB (162579073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b4f436fae2102f798233b6bb7d195615cfa9b6392fed097242c5f109ffeabe3`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 12:05:32 GMT
ADD file:145cda1c15a6a0ae66272051773cc09811f4ac3c4c4feea888d966d244bafcae in / 
# Wed, 27 Jun 2018 12:05:33 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 12:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:51:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 12:51:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 12:52:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:da52c543045989735e85b13ad74f53f9e93ba8697a71306d397ce81402b287c8`  
		Last Modified: Wed, 27 Jun 2018 12:15:25 GMT  
		Size: 36.6 MB (36620254 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5ee0ea18ec7bde0eb83ac505ddbcbf84e4709915eb05424fd9bee063dbfa3026`  
		Last Modified: Wed, 27 Jun 2018 13:01:05 GMT  
		Size: 5.3 MB (5343302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80f6ba6b386f810ea2629f253ca8c9c760628d325e9532c9dd136357b31ba3c2`  
		Last Modified: Wed, 27 Jun 2018 13:01:31 GMT  
		Size: 34.9 MB (34873221 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df1691ce2697a047635308557381264f5b7207ba234b689e70f23f73d350651f`  
		Last Modified: Wed, 27 Jun 2018 13:02:12 GMT  
		Size: 85.7 MB (85742296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:oldoldstable` - linux; 386

```console
$ docker pull buildpack-deps@sha256:66e3307c27b1f283a8ecb6d4a6f4d91d1c8be30f48acf986365cb1c1c83a6eec
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.7 MB (183658889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ea2192a555e7971baada2889ab57cfdf52b8b4fbe12c52d388ab30fc924523c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Jun 2018 10:49:16 GMT
ADD file:d40801b865e65cc6b87379ebf0411c4eab5e5b94c02de103dd8e75ef16aedb97 in / 
# Wed, 27 Jun 2018 10:49:21 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 11:43:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:43:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 11:44:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:45:58 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4bf8262684df8a752a20a3e6b45f60585658f70a4dc9110885e7456952812957`  
		Last Modified: Wed, 27 Jun 2018 11:14:00 GMT  
		Size: 40.5 MB (40532864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ae33357922f1eb795a8f57f33a3fcc44ea16d1dd566b0ea598524cd9b3f3661`  
		Last Modified: Wed, 27 Jun 2018 11:52:49 GMT  
		Size: 5.6 MB (5640619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:299d492463021ab07688ff783f53e2a6dbeef5388a7178843a29a309e43d7362`  
		Last Modified: Wed, 27 Jun 2018 11:53:20 GMT  
		Size: 37.1 MB (37050471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81ad858df32cefa0c8a333ef3d039c42aeee66e8194dd8e8c24044885d4d374d`  
		Last Modified: Wed, 27 Jun 2018 11:54:19 GMT  
		Size: 100.4 MB (100434935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
