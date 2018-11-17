## `buildpack-deps:buster`

```console
$ docker pull buildpack-deps@sha256:69b29ed8952f2e598baf711d80f00ed4802bec2e23e4911f25c96ec06d16cc78
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
$ docker pull buildpack-deps@sha256:e31b962cb53828f2788b2a0ffaab8bf5cce42931bc0aaa12234d0e8d1699b5c8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.7 MB (297721266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45c247505f373c6730125491bd75d0df0fa4705238690485dc63402ef29465d4`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 15 Nov 2018 22:32:12 GMT
ADD file:0dc58768faa0403918d16823eee1547c7ee299249251e279d3378f8b8522ffac in / 
# Thu, 15 Nov 2018 22:32:13 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:03:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:03:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:04:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:06:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:bac5159b230a9f6ac8aedbb940e99daf2f02c4f92812d766769e555262fbc162`  
		Last Modified: Thu, 15 Nov 2018 00:59:39 GMT  
		Size: 49.2 MB (49205033 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6dcb6f1e458a3233a57c16febe4a40e3ae5780b74b94a52bafc9e262933ad85`  
		Last Modified: Fri, 16 Nov 2018 11:26:19 GMT  
		Size: 7.4 MB (7402874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a38df35355b734c6068bc54bfedc04195e3bb3d4f5236a3bc903343dc72e9fcf`  
		Last Modified: Fri, 16 Nov 2018 11:26:19 GMT  
		Size: 9.8 MB (9780199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa1bfad11c9354aad12ce776ee00dced08456611730c5731532adbc87e3f1683`  
		Last Modified: Fri, 16 Nov 2018 11:27:09 GMT  
		Size: 50.6 MB (50621446 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc590e1ec67b12e3ebfa1d48d23ed0774531db4b1010090a823f2a5c363423e4`  
		Last Modified: Fri, 16 Nov 2018 11:28:14 GMT  
		Size: 180.7 MB (180711714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:517c63c2fee78eda412b870c05f17226db1c030f1fb47d3ef39514e1d5a9b8d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.4 MB (279448200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:144e96d5404b319c840929363fa5c084d71b8475e70fbd31ae952126e8eb4cf4`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 09:49:23 GMT
ADD file:55896315b7ef5586d847e7a4c0d5139b8c9531fe2f8332b78bfb636444f271bc in / 
# Fri, 16 Nov 2018 09:49:24 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:23:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:23:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 18:24:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:27:06 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c4e8885dbda050e61d87d2967be5d4c4210ef4a7a8ff02b3a3dc5cc8a86aa391`  
		Last Modified: Fri, 16 Nov 2018 10:04:31 GMT  
		Size: 46.9 MB (46931179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8f683b85e61bb707af8950a4f7dec4e280cb1d6119ae2bcf46b8fff647e1841`  
		Last Modified: Fri, 16 Nov 2018 18:44:37 GMT  
		Size: 7.0 MB (6965514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a291049214a4981bd0be2125b55ee2901b241a302df6289671b61bac4d5db522`  
		Last Modified: Fri, 16 Nov 2018 18:44:37 GMT  
		Size: 9.5 MB (9482089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54188cc7eb8d456e2f521c65d40cb97f9b671592f0ff6c734dd685433824fe7a`  
		Last Modified: Fri, 16 Nov 2018 18:45:16 GMT  
		Size: 48.4 MB (48377837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1da7fdf3d38abe6a182b1b6b55f72c0afd35c8b07912425cab559ad8f351ab23`  
		Last Modified: Fri, 16 Nov 2018 18:46:25 GMT  
		Size: 167.7 MB (167691581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:415d0dda290e2025f0b316050d07d890af7f3ff971cf10c9c2c5a2e9217a1694
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.7 MB (267715903 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58025bfb33efe42fb9681ff564846dc18ea13f8dc9277c091d8dc817ba9bd5e2`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 13:00:55 GMT
ADD file:2976046990378ced866255a67ab36afc20274c7b7af11d96300f357ae570d877 in / 
# Fri, 16 Nov 2018 13:00:57 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:03:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:03:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 18:04:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:06:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:758d221cc9f1d829545f42705b953283848c2970959d33397947eb388502c740`  
		Last Modified: Fri, 16 Nov 2018 13:14:17 GMT  
		Size: 44.7 MB (44745182 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c655f76e646f5b029bea2d42a53f727c7f489243b79e20960371d652c0d86f8`  
		Last Modified: Fri, 16 Nov 2018 18:25:42 GMT  
		Size: 6.7 MB (6732485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74641850b740f2687bcd75eab71f7fd7fc95961f4bd1395bb30a12e302bd9d46`  
		Last Modified: Fri, 16 Nov 2018 18:25:42 GMT  
		Size: 9.1 MB (9148203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fe4eb9f6bac8422768101d042fd972b6a8f36fa6c5bd394d02b45631e695e39`  
		Last Modified: Fri, 16 Nov 2018 18:26:24 GMT  
		Size: 46.2 MB (46229717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c96a43649e60c941d7264f032cfa751da8b2e8221810799a8d89fc466e38798a`  
		Last Modified: Fri, 16 Nov 2018 18:27:24 GMT  
		Size: 160.9 MB (160860316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:dbd9f88806460fa0d21cbb53b570638119d41d700f5d642a7ee26e28b88ab5f7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **301.3 MB (301315211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed68c1bbcb34f2f4ce9401ef4285c014054b5dbdb7b82da4567e13bc3847389a`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 10:08:19 GMT
ADD file:17a46443af185f1ffdb96f7e603e8b772d04ed05d126175f2093dcc29a74eea0 in / 
# Fri, 16 Nov 2018 10:08:25 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:04:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:04:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 02:06:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:14:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4d28c915b3a7bae9c64d67fc0a5a1a1798b900b64e3f0f25bf675825a70454eb`  
		Last Modified: Thu, 15 Nov 2018 00:59:46 GMT  
		Size: 47.6 MB (47624454 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e578e488fcf1206e2a067804533219b0d4618ce14aede7d768392be9ee33df45`  
		Last Modified: Sat, 17 Nov 2018 02:44:00 GMT  
		Size: 7.3 MB (7285107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d87a6afc06d00de2db6ec766976aed83bd60524698b021f1e54535f05982507`  
		Last Modified: Sat, 17 Nov 2018 02:44:01 GMT  
		Size: 9.8 MB (9760362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59be4f925a2f2909aac8863beea2d0a60736d8df7556d24b669ff9bfe6e34e43`  
		Last Modified: Sat, 17 Nov 2018 02:44:58 GMT  
		Size: 50.9 MB (50905567 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7e16ac45c2d9803096d542433a97d79778eb1ae0c6426a32a2800d66ca94b94`  
		Last Modified: Sat, 17 Nov 2018 02:46:33 GMT  
		Size: 185.7 MB (185739721 bytes)  
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
$ docker pull buildpack-deps@sha256:9a0a0fa372c89031422e4dda54df29506b428ee40aa397a6d6662e67cb898f24
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **314.0 MB (313988554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13d8f18b2d236479786761513fea80630a923864bcee0b1a5e9d2bfec4a1600c`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 09:28:16 GMT
ADD file:4b38735441c9ecfeb498b5f35e2dce32ce6266641582b4aaefaf26838f579582 in / 
# Fri, 16 Nov 2018 09:28:16 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:02:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:03:16 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:05:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:13:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:4aa2b7aee025832a6b13b63dd84f13be21616514ba164fb085cfb78de7ea6b82`  
		Last Modified: Fri, 16 Nov 2018 09:35:43 GMT  
		Size: 52.3 MB (52323593 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43e0b5eec54f4da9dcd938876eb68273f994772ce7ab0564900fbe0192f843cd`  
		Last Modified: Fri, 16 Nov 2018 19:39:57 GMT  
		Size: 7.8 MB (7832689 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd1d81c3f1e0272bd32df2553619029171f52971a00c173fa4fc9d023763c60`  
		Last Modified: Fri, 16 Nov 2018 19:39:57 GMT  
		Size: 10.5 MB (10523421 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7840aa7d1166de9dfb0b80529790e944a1f018c7cde3eef0e5bf5bb7b7904c64`  
		Last Modified: Fri, 16 Nov 2018 19:40:57 GMT  
		Size: 56.4 MB (56362257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7daf8f47aa011801bdc58c86b9e9b7b23cc4dfcd3bc2de9a4d8d82f746b70c06`  
		Last Modified: Fri, 16 Nov 2018 19:42:45 GMT  
		Size: 186.9 MB (186946594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:9f44a4791d21989ffc8385f94cceac50934f350369e4cd4bd709b6e103786be2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **282.4 MB (282368702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a97b54f6cf395bbb5035b4f739056b9a699bbe206cc731c91d754a72a3cdabb1`
-	Default Command: `["bash"]`

```dockerfile
# Fri, 16 Nov 2018 12:41:59 GMT
ADD file:6b181cd03a13119aa2661ac8f21a4233030df509147ee124817130f21194874b in / 
# Fri, 16 Nov 2018 12:41:59 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:11:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:11:37 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 20:12:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:13:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d474fe63c62712215f3763087125da648177c20c3b603f11bf1667b227629715`  
		Last Modified: Thu, 15 Nov 2018 01:02:23 GMT  
		Size: 47.8 MB (47813893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d2ee2695035ffdf7cc2ef4520c2267f5f4f3d758d70ce7dcbfbc2e266b9a7972`  
		Last Modified: Fri, 16 Nov 2018 20:20:55 GMT  
		Size: 7.1 MB (7071601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7434530b0b43f48311e12e2b095c4d593866e98f44ec7f2ae7b6c69086bce18`  
		Last Modified: Fri, 16 Nov 2018 20:20:56 GMT  
		Size: 9.7 MB (9671071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57fd150865cd0a3bc9f70149647e22f9c3819052266e7b4d88fa89485732651e`  
		Last Modified: Fri, 16 Nov 2018 20:21:17 GMT  
		Size: 50.1 MB (50109377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:88adfcf8c565390b102baa06b6ab244fc4a2ab550cba20425c97e8f74b3b3e64`  
		Last Modified: Fri, 16 Nov 2018 20:21:58 GMT  
		Size: 167.7 MB (167702760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
