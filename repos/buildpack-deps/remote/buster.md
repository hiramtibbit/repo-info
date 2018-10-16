## `buildpack-deps:buster`

```console
$ docker pull buildpack-deps@sha256:358ecf34124ff12e67b0cc7b506a3182bbbbda1a6b9b387ab2672b5580c2bbe7
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

### `buildpack-deps:buster` - linux; amd64

```console
$ docker pull buildpack-deps@sha256:546344c485bf30150d429f9f7c5ebb091e73d9c6d24ae16c7e84c4f01f5010ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.4 MB (300362928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89415a1dafac783fa5889f674ea706a61aadc5e85045f61050b48c0753a46d51`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 15 Oct 2018 23:19:46 GMT
ADD file:383d98905fbb0760c147b202cce1e9faf1a79022d01444216df307f52a461c13 in / 
# Mon, 15 Oct 2018 23:19:46 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 00:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 00:51:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 00:52:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 00:53:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2cf2dc2b7cf341d06ddd2b70430cd0009e470a0a9f4b0eb06936df0cfe0992bf`  
		Last Modified: Mon, 15 Oct 2018 23:27:41 GMT  
		Size: 49.1 MB (49111873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa025c1eb1cda467ec34f848a5afdee5159e29a824bcb546fe67fab7a5140453`  
		Last Modified: Tue, 16 Oct 2018 01:06:37 GMT  
		Size: 7.1 MB (7086378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca6a4b5953515431f3e21a5eaef5277dbe946ccf26fd4eccde33227ecaf81ec`  
		Last Modified: Tue, 16 Oct 2018 01:06:37 GMT  
		Size: 10.4 MB (10398104 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9e5c1e01ad499102b092ea724035f4cdf8998d28710ebb0d609e74da61a86a6`  
		Last Modified: Tue, 16 Oct 2018 01:07:26 GMT  
		Size: 53.5 MB (53500420 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a0cb5886a1c22072ae7bc5e406838faf406b119ffedb2e29d4d3825b58a0b86`  
		Last Modified: Tue, 16 Oct 2018 01:08:47 GMT  
		Size: 180.3 MB (180266153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:d3a8d116aa95e3e850dc7a7b39e73db4e05e3175082c42419bcaecd61061cd60
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.8 MB (281809127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62b77731062ed8940f840d36748fec8d6c21c03f62f3f418eb7f78cc7919f7f3`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:49:06 GMT
ADD file:72c1c9f078b771b572197a5f6e049afcafa13e20f76b817ab1ee48ab5b550d5a in / 
# Tue, 16 Oct 2018 08:49:07 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 09:52:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:53:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 09:53:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 09:56:27 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:986270a373f7181ef01d64d59559cc759017994335eb7c28c236d9ed58da5c40`  
		Last Modified: Tue, 16 Oct 2018 08:58:47 GMT  
		Size: 46.9 MB (46861990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8432a10db4b2b13a51151e57fa7be15ab4c23b025e9ab66055750fefe2216b06`  
		Last Modified: Tue, 16 Oct 2018 10:06:13 GMT  
		Size: 6.7 MB (6670491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cd1e2b7c3e2043c004c9057863c5978072ba7eb8b3184aa56dd448f3ca2cd62`  
		Last Modified: Tue, 16 Oct 2018 10:06:14 GMT  
		Size: 10.1 MB (10085422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a35c19abd74adb5da440e6ccd5f2e2105373e96c3dc449198914c17bf879fe71`  
		Last Modified: Tue, 16 Oct 2018 10:06:45 GMT  
		Size: 50.8 MB (50810664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ceac767c40814a7f48fed79953d1bbea5cc5913590c69457c0711a871221383`  
		Last Modified: Tue, 16 Oct 2018 10:07:43 GMT  
		Size: 167.4 MB (167380560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:9c7e983d800cbeaf9ccc2a525303d1742d096c5a3cb019f0cc6867177f8add72
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.9 MB (269931172 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7902b0be0b8224c5d42e43d047685d564557e00ebbc482216e4115a108844d9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 11:58:32 GMT
ADD file:64680e11a2630130256799de575671c227ea84aa67f9977a246f0c5ba66bfd58 in / 
# Tue, 16 Oct 2018 11:58:33 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:51:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:51:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:52:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:54:52 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:84a21cbaec047863415e9c55d951ba1920a36fbf170229c5ad19978251451544`  
		Last Modified: Tue, 16 Oct 2018 12:11:06 GMT  
		Size: 44.7 MB (44693669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94abfa90d33ecb4b1f714bfc8eb986f30be7417a000f219e070bd53ccc5a75a3`  
		Last Modified: Tue, 16 Oct 2018 13:06:20 GMT  
		Size: 6.5 MB (6461811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a4c64601b9d8890881110bb7196d8499c86750a03b09abb0b7de75416d86353`  
		Last Modified: Tue, 16 Oct 2018 13:06:21 GMT  
		Size: 9.7 MB (9726910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c4b61367195c6c6376b39c6f5a983879e192b5ac4fdc8cf43ca225c9660ee1d`  
		Last Modified: Tue, 16 Oct 2018 13:06:49 GMT  
		Size: 48.5 MB (48472066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d537e15e3576950bf14212519cfefef5fe994366765de46bd894a227742c5c8`  
		Last Modified: Tue, 16 Oct 2018 13:07:48 GMT  
		Size: 160.6 MB (160576716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:160077146ab15e36c288d338b568176a66a58f8b7fbe0e20cb68b5009c98a617
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **289.2 MB (289206630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c7716ec1116a9bd8ad08e11d7bb9361b71711750efb935084a8d6590b13af27`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:40:40 GMT
ADD file:4857face4d6b661dcc7389904203bb3aedcdfeb0ceedc8b362dcc3636ac7459b in / 
# Tue, 16 Oct 2018 08:40:41 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 11:37:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 11:38:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 11:39:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 11:48:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1ed8cd8fb3aa00c426f795dd579c1c7f16ed6d507fb199daa1900248272311ed`  
		Last Modified: Tue, 16 Oct 2018 08:46:20 GMT  
		Size: 47.3 MB (47316581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f263d5e42e5eb9d21509fd326000e0575d3b4e46c546450dc9f165412d014a71`  
		Last Modified: Tue, 16 Oct 2018 12:19:04 GMT  
		Size: 6.8 MB (6788429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:077bd122c26d8eff28bf2faf8d28334884c010a76ab8cf7071fd89e4ba8bc2f9`  
		Last Modified: Tue, 16 Oct 2018 12:19:06 GMT  
		Size: 10.4 MB (10381303 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bee7d0b3e80de125fed10d35efc3f29b704275e6667786321e8a69092e3708d`  
		Last Modified: Tue, 16 Oct 2018 12:20:13 GMT  
		Size: 53.3 MB (53314993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb14a509aaca4d7b7c5074384bb8e711acbb8241d837cd4634ed470cfcdbe523`  
		Last Modified: Tue, 16 Oct 2018 12:21:52 GMT  
		Size: 171.4 MB (171405324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; 386

```console
$ docker pull buildpack-deps@sha256:9fb0eb58ca2acafcb2e2675e885bb08eace8db3926fcfac8fdb7ec0e104feb79
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **310.9 MB (310933033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2884f7bc5cf8b192e214c845296c1d9af8fc649d4e91bd09dd28b3f12a1bdeaf`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 10:39:53 GMT
ADD file:6d95f34a7a35e94aa5299a896bdf872f905e92932bc7c4d42a4069fc89eca53b in / 
# Tue, 16 Oct 2018 10:39:53 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 21:18:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:19:03 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 21:19:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:22:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:7f8c752f7c0d3f6a123acc3888d30f9321af66fe6e988ab7a317b045e266371c`  
		Last Modified: Tue, 16 Oct 2018 10:54:12 GMT  
		Size: 49.8 MB (49806685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a75c4ad6479c164b84a502482d0ab6ae27f284a4bd2c08d98cf1b06a47803ce`  
		Last Modified: Tue, 16 Oct 2018 21:36:50 GMT  
		Size: 7.2 MB (7234834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7da2715170fd5ce9d58cd4022b0a01cb6fbb7fb58590bf62d6b4eb7758e3c87d`  
		Last Modified: Tue, 16 Oct 2018 21:36:50 GMT  
		Size: 10.8 MB (10756394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91daacc42bf751202163899bc626e708a027764c155b9beda8d7678cd2f6a861`  
		Last Modified: Tue, 16 Oct 2018 21:37:38 GMT  
		Size: 55.0 MB (54996082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51b4220b8ad043dd3061cfe4a8e976d091ae067b38422c85b26b28df06487cb8`  
		Last Modified: Tue, 16 Oct 2018 21:39:44 GMT  
		Size: 188.1 MB (188139038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:b3b84c0cd49134784ee75736365f9b2373ca1d36833a4c7226e84154c563c07e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **315.4 MB (315395788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4700925bf6248de9e9ed8b24be5336f96e5e9a52f3d5a4964383756f706fc1f9`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 08:18:28 GMT
ADD file:5e3e283f6be46586ee3aa52a0eabb62e6df9b0b9671787c071f2242904778293 in / 
# Tue, 16 Oct 2018 08:18:30 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:23:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:23:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 10:26:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:31:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4235160846e98b63950bdc60bf58b6fe98639d8ce3eccc9fb3db19693e1df9c6`  
		Last Modified: Tue, 16 Oct 2018 08:25:05 GMT  
		Size: 52.0 MB (51955347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d33b4b49c83033b52eebc94bb8e03702ce959a8f1807dd9d7a2e342f1d6f25f`  
		Last Modified: Tue, 16 Oct 2018 10:59:56 GMT  
		Size: 7.1 MB (7076302 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fb6581d99e16e9a8d24dea3573e043d600bf5478f636d686180eeea81ee2d1d`  
		Last Modified: Tue, 16 Oct 2018 10:59:56 GMT  
		Size: 11.2 MB (11194082 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26d29fa910cdc15b9c85e941d19e6e881c0be93889e70211afa4111e7a757611`  
		Last Modified: Tue, 16 Oct 2018 11:00:46 GMT  
		Size: 59.1 MB (59102363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b705a4032f54643a61645f8af9ab9d66bb205bc1df88f97f53ae35cf0c04da8`  
		Last Modified: Tue, 16 Oct 2018 11:03:12 GMT  
		Size: 186.1 MB (186067694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:23eaefdf32de02c6f2a50faf37f7fd10f79ccde211ac5c18b15fe868007a6c59
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 MB (284848077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1937fbeed45f90e3eb20ee83b946d1491ff9ae603b2deae2066768da831e200c`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 16 Oct 2018 11:41:41 GMT
ADD file:9daec189760e25c2544e1084dbf7197aa29a620b4091da7c9c55ef572167d5aa in / 
# Tue, 16 Oct 2018 11:41:41 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:49:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:49:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:50:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:51:51 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:47a977b6dc33ea563dc77c6d42fa21af28ece361f1d2464d4763e172f9a199f3`  
		Last Modified: Tue, 16 Oct 2018 11:44:05 GMT  
		Size: 47.7 MB (47705315 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29733cd7ba0daa54bc97f680f6543af2c1846e0e6fb6fb044aeb80b22da4e5cf`  
		Last Modified: Tue, 16 Oct 2018 12:56:03 GMT  
		Size: 6.8 MB (6769342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e31c151b6eb0d0e80cdd250f93b447678bc61b17623a7e0aae840634633870`  
		Last Modified: Tue, 16 Oct 2018 12:56:03 GMT  
		Size: 10.3 MB (10278673 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed12195d06b72fa4edecc77291d1c702defcd277b69f1d6e54ede07efb2565d1`  
		Last Modified: Tue, 16 Oct 2018 12:56:23 GMT  
		Size: 52.7 MB (52657594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8ae38845e49173e4fd94add67a190e7f043c458db2b02b73789cb226c1f4390`  
		Last Modified: Tue, 16 Oct 2018 12:57:05 GMT  
		Size: 167.4 MB (167437153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
