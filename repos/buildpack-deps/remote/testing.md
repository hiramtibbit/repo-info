## `buildpack-deps:testing`

```console
$ docker pull buildpack-deps@sha256:320b6b6134019779e0f176d7d97a9ee445a04dcf67bd936ae1b316665ecd046d
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
$ docker pull buildpack-deps@sha256:c1241d91a9c104608339e37cef06c5b8da6034fa63b8f825f02346f91a702b29
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.8 MB (311789785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef95e6b46eeb5863bba36c9c0c672865ac7ab684e909ee822cd373b8457404ac`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 26 Mar 2019 22:39:10 GMT
ADD file:76176cc6a94815c82ed8b377f8be206dafafdd7656196edce1f3acbf8762b522 in / 
# Tue, 26 Mar 2019 22:39:11 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:13:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:13:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:13:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:15:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:8ee468effd219ecb1753308b8b7435b236ea041486108ab102e6f1f7443b892f`  
		Last Modified: Tue, 26 Mar 2019 22:42:44 GMT  
		Size: 50.2 MB (50229764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba055e9cefd1529a52a28e24a0e75e071c7568d5c609fdf0394ad6afc26471b9`  
		Last Modified: Tue, 26 Mar 2019 23:29:11 GMT  
		Size: 7.8 MB (7785603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99cfb1e76ef4c0f2b08b124f240a27ac45d72d215e73f378075ded1e2e8fff4e`  
		Last Modified: Tue, 26 Mar 2019 23:29:11 GMT  
		Size: 10.0 MB (9972847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79bc2a39457078373d63f7cc7f96f9b08e24deabc1ea40e3f6d27670fb4688fb`  
		Last Modified: Tue, 26 Mar 2019 23:29:28 GMT  
		Size: 51.8 MB (51761069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d469f05e8dc81cb1b3471a32f3c3846eea7c1fba80ac36648d0a7ee8f246197`  
		Last Modified: Tue, 26 Mar 2019 23:30:07 GMT  
		Size: 192.0 MB (192040502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:7ef3ab026ad6ec3687140f3f0ad02483e9aecdae6c59e16c079ed03925e6282c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.7 MB (287684223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ccc7a414e1b221c414f6e7b9741e976608169b5d2184477ab813ac7f9fbfe09`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:49:29 GMT
ADD file:ddb75e8b8e9c5b8098708ceb9869c9ea25f7394921fc8f569eeb754a777da554 in / 
# Wed, 27 Mar 2019 08:49:30 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:18:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:23:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:35:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a3a3fca888d0dad8f4d55cdd346e99c4ba5d7cba92d5c48d66d4f9b00391c738`  
		Last Modified: Wed, 27 Mar 2019 08:56:19 GMT  
		Size: 47.9 MB (47935308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c8984ac3b681c03150d9945d2253c3f42a3b4586c43b3c390b5c7e9166f743`  
		Last Modified: Wed, 27 Mar 2019 10:05:45 GMT  
		Size: 7.3 MB (7336821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60b328cd142d9d00a9fc90f0ad794cbf2c4f196f0542149781c22710ea731162`  
		Last Modified: Wed, 27 Mar 2019 10:05:45 GMT  
		Size: 9.7 MB (9668352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b11f27dc400fadef68469da5c311dcee27b33e1cd70c20606ebbe2c6bbf52ba`  
		Last Modified: Wed, 27 Mar 2019 10:06:08 GMT  
		Size: 51.7 MB (51674621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6c0248396e0aa8df026b00b0d03c893f613c59aa9c9c6a8b0c8284fa43a6ab`  
		Last Modified: Wed, 27 Mar 2019 10:07:02 GMT  
		Size: 171.1 MB (171069121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:18fc66c02512535615141417ee4365153b78b0292613b7e5c60ee726c886de51
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.8 MB (279772148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cbae2331f508af0b40152784a7559a5bb294746a4ebdc03e48337518015f834`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 12:03:01 GMT
ADD file:9ea8b1eaf7df65831f45d26aeac613288e975bb3de0402f2fb67620fa4073ade in / 
# Wed, 27 Mar 2019 12:03:03 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:58:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:58:38 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 12:59:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:02:21 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:029cf51a83d447de52cef0ffab80221ba6a4f49c0a5dd803f9a80b58ab2d2b72`  
		Last Modified: Wed, 27 Mar 2019 12:10:17 GMT  
		Size: 45.7 MB (45709457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:468280e41ec0f2b8a9cfda166f27dc50bbc402a26d099d9910c3ab7cf75d761a`  
		Last Modified: Wed, 27 Mar 2019 13:17:45 GMT  
		Size: 7.1 MB (7083063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58e2b2ba3f981d88992647688be409dbbaf46bf46f3960d2f67c48c32d086001`  
		Last Modified: Wed, 27 Mar 2019 13:17:37 GMT  
		Size: 9.3 MB (9324320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4126e5e1857f84500b1a5716ca66a61192e6cd92d30d96dd494bea19b4151092`  
		Last Modified: Wed, 27 Mar 2019 13:18:06 GMT  
		Size: 49.3 MB (49309197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:037779cd272e5e4742bbbdb5500c75ea274bfa35569d558f61a5e5507b755a4b`  
		Last Modified: Wed, 27 Mar 2019 13:18:59 GMT  
		Size: 168.3 MB (168346111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:81f5c2d05cfe5704b7847d9a147ce208d3f701ebea9e1c793fb45ad286eb5ab9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **304.4 MB (304380387 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1528f47172d93523e2b5f6fa126e6cd96dddc88d7799b1457e936e1c56c0150`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:44:48 GMT
ADD file:efdad40bd88daf011b7ec9e7c3bf62f934bcb8f2e84321dcf5b519af553c8be2 in / 
# Wed, 27 Mar 2019 08:44:49 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:38:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:38:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:43:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:04:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:83128e932c2f242170e54dd01950ab9384a9fb68c814a77c1632b9fb6a007661`  
		Last Modified: Wed, 27 Mar 2019 08:50:27 GMT  
		Size: 49.0 MB (49022969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea80f3ad9712797dccb9be63a9f07b097495de62f956980d0d2369dfa244cc13`  
		Last Modified: Wed, 27 Mar 2019 10:31:54 GMT  
		Size: 7.6 MB (7649554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:223575240873e37aa2265ea9e7b80eb3b7b52bf4e3ee6a95e4fc614db50faa96`  
		Last Modified: Wed, 27 Mar 2019 10:31:55 GMT  
		Size: 10.0 MB (9959515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f001e394762edf0d9410b5d39b7602b0a4578e5a711c04b7719b36c6a2b34b98`  
		Last Modified: Wed, 27 Mar 2019 10:32:30 GMT  
		Size: 54.2 MB (54244244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eec3a65a54da77a67bdbf970e61974cf70c1d1d8d5e3c91bb073f111f8ef3d38`  
		Last Modified: Wed, 27 Mar 2019 10:33:47 GMT  
		Size: 183.5 MB (183504105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; 386

```console
$ docker pull buildpack-deps@sha256:586af975f71944607fe6e71f915028c133783d6c22a9b356d94278a83c72fb2c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.6 MB (323556716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9025cbf475973189d0ac40230e7ab701ab76f8141e5ffa54b794aeea886ad446`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 10:39:29 GMT
ADD file:e559a18019b869d561ce9206554ab0f0d70d2f0b5524ea6b6e98e94bf1ac2c09 in / 
# Wed, 27 Mar 2019 10:39:30 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 13:36:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:39:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 13:40:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 13:42:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:a19caaf6f7524a9023673e7fe943eb4aeb990ad49b202bb21ebd76af7b2d6013`  
		Last Modified: Wed, 27 Mar 2019 10:46:01 GMT  
		Size: 51.0 MB (50992741 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25c29554f6331ff982085dae0958e8d8b9f765f1a1d8321674db501de13de268`  
		Last Modified: Wed, 27 Mar 2019 14:06:43 GMT  
		Size: 7.9 MB (7948658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab48bc7a278fad7787facadc0eb1a55fe885b9cfe370f688312cf9c8421afef6`  
		Last Modified: Wed, 27 Mar 2019 14:06:43 GMT  
		Size: 10.3 MB (10317991 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d47f2794fe4db08a46d5a6c5e4840ff62d6e1aeeeee7c181bde47c53f614513b`  
		Last Modified: Wed, 27 Mar 2019 14:07:01 GMT  
		Size: 55.7 MB (55661322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e75c822651c98f752c5c123198dd1d126057fb20ae2e5dfd76740c02d6d99a0`  
		Last Modified: Wed, 27 Mar 2019 14:07:45 GMT  
		Size: 198.6 MB (198636004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:cf90b69120d651426c0cd7063019f8999b57028b1302b53fa7e6dcc5584c2526
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **335.6 MB (335595011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cfa1d186c25704270b30811b10a393f9fa1da31855d5a41a142878b19b8832e9`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 08:22:41 GMT
ADD file:aa7dc9cdae0cf7507369fae7d6118dcd3d999e00e3ef21068695fe6648ac20ca in / 
# Wed, 27 Mar 2019 08:22:45 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 08:52:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 08:53:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 08:56:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:16:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:1bb6234125526f51a6b0bfb06f13173fcd77203e03fd3ea331c9bf5b8b9fd9a8`  
		Last Modified: Wed, 27 Mar 2019 08:28:51 GMT  
		Size: 54.0 MB (53972187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f57cdc447a7a0169ef80f47a0c1720252005fef375ead499d25d52a1cf711ce`  
		Last Modified: Wed, 27 Mar 2019 09:46:17 GMT  
		Size: 8.2 MB (8220179 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24a73c130df883fca60855727b95f93bac30bf0d5df50fee10997cff4dffe61b`  
		Last Modified: Wed, 27 Mar 2019 09:46:18 GMT  
		Size: 10.7 MB (10710648 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd69301347f7a7ffda64b0c611893395c013f32af8193a7a4076862d385ee2bf`  
		Last Modified: Wed, 27 Mar 2019 09:46:56 GMT  
		Size: 59.7 MB (59698998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6a112a592721d205177b8affb38ae34b3ecd53e540e553371d4f7d541ae667d`  
		Last Modified: Wed, 27 Mar 2019 09:48:33 GMT  
		Size: 203.0 MB (202992999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:3ddf018bd95cd6aa9d6dc00fe5a91332d7ab61e23b60794a9b9a8e0860992534
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.2 MB (296220307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc9487605d22eb3fbb6649d56672c49fa08c186b6bb8a7ee2f91a0af3d77b785`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 27 Mar 2019 11:42:12 GMT
ADD file:b91f4c9de51b195c8d4d540393591ec9025b5fafaab3be78636d24216fe7b04e in / 
# Wed, 27 Mar 2019 11:42:13 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 12:33:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:34:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 12:34:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 12:36:35 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c26d5718bd8ed95e77d7925c874534f3358d019637f944f35a70fdc0aeed7217`  
		Last Modified: Wed, 27 Mar 2019 11:45:22 GMT  
		Size: 48.8 MB (48798574 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:48fb7c4fa0951f9c55f07e80dd1012a24f7d9ad9816ef34f42c8afa5119da878`  
		Last Modified: Wed, 27 Mar 2019 12:51:44 GMT  
		Size: 7.4 MB (7360192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42e9703f04fe30fb4e0aff17d80fab29ebedc97a22be2a976cf13ae585c5c185`  
		Last Modified: Wed, 27 Mar 2019 12:51:42 GMT  
		Size: 9.9 MB (9860660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5516d720011e1bd08a080478dc0c00169a82740ed00a1c922dadf4e118bb5aa`  
		Last Modified: Wed, 27 Mar 2019 12:52:02 GMT  
		Size: 53.5 MB (53477267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ec2e7f26a45dafeee42c088a9f4a3fb9c3c8d937cdb0c848f6d0c37a3d4b58`  
		Last Modified: Wed, 27 Mar 2019 12:52:39 GMT  
		Size: 176.7 MB (176723614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
