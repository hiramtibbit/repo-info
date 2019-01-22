## `buildpack-deps:buster`

```console
$ docker pull buildpack-deps@sha256:eafb2dc3d5719254d862ca9b2cf4f401c7f963619fb4c20aba60fe7539cfeb43
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
$ docker pull buildpack-deps@sha256:ee468c65b762408e9fd4ba128aa2a796ac3e8061437467ec90200bf062751118
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **302.2 MB (302198655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec2ec8a6f62dd4c6578219931a8e2929bb05f1a576328bf2650f55f095d7734e`
-	Default Command: `["bash"]`

```dockerfile
# Tue, 22 Jan 2019 19:21:09 GMT
ADD file:a115ae9594d00c4e30cd53dc533d6ff73497df07db2fc8c2be475a520021fdbe in / 
# Tue, 22 Jan 2019 19:21:10 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 19:54:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 19:54:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 22 Jan 2019 19:54:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 19:56:06 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:28a5848cd0d3a3c70f45dcd97a5eb29c40559b3cc0cf9e7c1ab839cf23f55034`  
		Last Modified: Tue, 22 Jan 2019 19:34:10 GMT  
		Size: 50.1 MB (50087426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:95960608af26d099a4dcc779a2f1a4ae92679c2f05048c17c04bf1404670f8b1`  
		Last Modified: Tue, 22 Jan 2019 20:10:11 GMT  
		Size: 7.8 MB (7802403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7d24a9aad2a63dd099c044fdf94de4254bc2d3d17bca727995aea2008db610`  
		Last Modified: Tue, 22 Jan 2019 20:10:12 GMT  
		Size: 10.0 MB (9966116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30ed341093834585814427030329d1ff8ad99b022887e76ec5cbe1f78e2fd248`  
		Last Modified: Tue, 22 Jan 2019 20:10:28 GMT  
		Size: 51.8 MB (51765939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf0dd898844e06d664786feb8588a136f5aaa8006feb24af8be2b11badbbae26`  
		Last Modified: Tue, 22 Jan 2019 20:11:09 GMT  
		Size: 182.6 MB (182576771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:cb5fb9221b54ed9985b20c9317426e6941560dab6864cd8523bcf61fe9457ee8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.0 MB (281026014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb80368639f1e3a46c3879634584e41a2fb10d9025940e134c26b5cdfbead1ee`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:49:09 GMT
ADD file:527782f81b2cdaa7fe8ca73877015dc24b1f39b81cc058bbe612951c6d4db6b9 in / 
# Sat, 29 Dec 2018 09:49:10 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:20:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:21:07 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 10:21:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 09:51:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:35f77895ee9a6ccd0991d1a079764c1e0777e66a2cedb268252991c107536afd`  
		Last Modified: Sat, 29 Dec 2018 09:59:19 GMT  
		Size: 47.2 MB (47191401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2aa3ab7ab6977e77ddb108c16946c1635234f10fd3608909b58d817be0eaf62`  
		Last Modified: Sat, 29 Dec 2018 10:39:39 GMT  
		Size: 7.3 MB (7291594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4752256e8b15143f87ba231474c7f1d1229dfd1f797ceb91fca1b9645306525`  
		Last Modified: Sat, 29 Dec 2018 10:39:41 GMT  
		Size: 9.7 MB (9662214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86a8b87373a24487f5f288b1dfc7e3471fa9adfc2a71ebc40a375a3ca4a62b1a`  
		Last Modified: Sat, 29 Dec 2018 10:40:04 GMT  
		Size: 48.6 MB (48575757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799e279920fe7584662238b5014a24dcb5c7582a544a5010be9e5d56f6083e9d`  
		Last Modified: Wed, 09 Jan 2019 10:01:41 GMT  
		Size: 168.3 MB (168305048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:6f077a705dccd54c1005370ad96ee510438f27264dc30d4a2daead4ec4138e7a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.1 MB (269052535 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec6af3dacee118a4348268a85330a4adc89a14daee83e4c0aeb735d1eb1b507c`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:58:06 GMT
ADD file:7545bfdc8164196c74f5a9b89bf90bdc289896c35fedebcd70dfa20697523258 in / 
# Sat, 29 Dec 2018 12:58:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:22:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:23:04 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 13:23:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 13:02:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:076ec5e52590bea3da2fc3268ef35580750b2645bee5651aeb6e1dafec22d2e6`  
		Last Modified: Sat, 29 Dec 2018 13:09:01 GMT  
		Size: 45.0 MB (44990109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a1a6c8210ec144d056aa2b662c68b44718bb596836438fc8b577e5359086b97`  
		Last Modified: Sat, 29 Dec 2018 13:58:18 GMT  
		Size: 7.0 MB (7037532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d998ce338a6512143ad82706781ac2c77325baf4c7fe9cd1c2f09630900e8db2`  
		Last Modified: Sat, 29 Dec 2018 13:58:18 GMT  
		Size: 9.3 MB (9319014 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:833b66e79005eaf0bfabf5fef8c3b889a8cc8be75bc874e5731fb1fa268b3d16`  
		Last Modified: Sat, 29 Dec 2018 13:58:41 GMT  
		Size: 46.4 MB (46423341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:667bd9c198d4a56880beb4d1dc71c63d0209b676217377cf434d1ff625e8f103`  
		Last Modified: Wed, 09 Jan 2019 13:21:20 GMT  
		Size: 161.3 MB (161282539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:f61888d78941941ef78688483a2ad28796ad120ee5ee2db96c7788ecafe91aeb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.1 MB (290085273 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b236a5b8315c271b481d1935654313b9b6342cabc2df7db1b9d82fadecef54c5`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 10:04:33 GMT
ADD file:6458136999602806c92db4944fc08c7faf3443c54c332169082f6fdee66da894 in / 
# Sat, 29 Dec 2018 10:04:35 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 11:11:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 11:12:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 11:14:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 10:01:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:fbf13c7901572a3b768b8b17d0b180c68b5cc18cc38b18bc03085795c54306b2`  
		Last Modified: Sat, 29 Dec 2018 10:12:23 GMT  
		Size: 48.1 MB (48142292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8586c0aa3df61b03d3d55e529bd2fa251383ddd7818f84ce81baadb0bf1cce0c`  
		Last Modified: Sat, 29 Dec 2018 13:04:49 GMT  
		Size: 7.6 MB (7605516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5be9dd83a37ec8a95fc616190c20934ba275ed6a83854458d18e25e6292ab261`  
		Last Modified: Sat, 29 Dec 2018 13:04:46 GMT  
		Size: 10.0 MB (9956929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca0af33c27d96f0bffcb3e5a1a7d6002233d6fe4d2abb6078ac50fb8cdcee639`  
		Last Modified: Sat, 29 Dec 2018 13:07:39 GMT  
		Size: 51.1 MB (51131967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8159602a809a04290c0fe91a38c5fb09f10d2781b6c96493987135991e4c2c10`  
		Last Modified: Wed, 09 Jan 2019 10:58:38 GMT  
		Size: 173.2 MB (173248569 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; 386

```console
$ docker pull buildpack-deps@sha256:e1e9567335f1f736df191653e76e41111d2f0be473fe08d491da1ce3914e1de7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **311.3 MB (311322624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17add024b01ceaf4bc6bcd552f1e8db46ef752d2f45bef1976aae32ad98c9460`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 11:40:32 GMT
ADD file:a8a6a48a118b132465dbf485a64c9299f1fe4b027ba2a5217493ad3ff35f04ce in / 
# Sat, 29 Dec 2018 11:40:32 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:33:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:33:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 12:34:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 11:42:52 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:e0906beaed8ec04694fd7fb581653f35c472ccf1d754ee6a2b2d54346f145ff6`  
		Last Modified: Sat, 29 Dec 2018 12:05:22 GMT  
		Size: 50.2 MB (50221713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:360041f955b3bff9bde4900a8b2c1986be70d8264e2fb836bf33a2a604520f5e`  
		Last Modified: Sat, 29 Dec 2018 13:18:49 GMT  
		Size: 7.9 MB (7890256 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:202275563a679edcc99558d9374587d2814e39a6405992dc962bfd4c845f672e`  
		Last Modified: Sat, 29 Dec 2018 13:18:49 GMT  
		Size: 10.3 MB (10311294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e6e72abfe5d96447775b1cf5900fe4fd72d46129966ca81ac594913f3c0882e`  
		Last Modified: Sat, 29 Dec 2018 13:19:20 GMT  
		Size: 52.3 MB (52342590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fee66187e872acd5cffdfe91850e19d84d5a8d03b908e26a00a50157c966dd87`  
		Last Modified: Wed, 09 Jan 2019 12:03:18 GMT  
		Size: 190.6 MB (190556771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:5adf9a42c8cb3019f4a18623d2d683cb5c3456ba6cb13e4dc1d596436032762e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.1 MB (318074953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c10c05a24d87c850abe5790ac1a22b18766dcf40eb051c9cb9c1c16f61dd1835`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 09:19:57 GMT
ADD file:68cd6aa21cf032f213919e34cc194b6f56f4039abd641d1884e1817c86577aa5 in / 
# Sat, 29 Dec 2018 09:19:59 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 09:52:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 09:52:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 09:53:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 09:32:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:6a234d5b011b611a5e107e05783cc2efc888e32736d4aa633c4979482b072057`  
		Last Modified: Sat, 29 Dec 2018 09:25:00 GMT  
		Size: 53.1 MB (53121205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daaa9411429ea78e548f22f5dcffad1364f8bb7487f8608c8f28e368165f6e42`  
		Last Modified: Sat, 29 Dec 2018 11:09:39 GMT  
		Size: 8.2 MB (8175130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:412eaef05026dcf2e7739ba15f745788b42607405b99800f98da68b4bf1245f5`  
		Last Modified: Sat, 29 Dec 2018 11:09:42 GMT  
		Size: 10.7 MB (10706851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e29e8cba5d38983f4eb5548d52ea193db04c30ef87a63b172ee511157ac23dc`  
		Last Modified: Sat, 29 Dec 2018 11:10:15 GMT  
		Size: 56.6 MB (56569597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bdf34a9443c828605bc9d5d5ef50abc330ec1d9a39cfed17bd72504720b78aa`  
		Last Modified: Wed, 09 Jan 2019 10:11:51 GMT  
		Size: 189.5 MB (189502170 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:buster` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:90c810d49dc64b3468a82acdb1d3c4ad1256669645513b00fa1e4b2f19b5b7ae
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.4 MB (284431025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6737e4ce38aa25c3bd4f19c338b86439d265058e5c1e0fdd57e749e9011983c0`
-	Default Command: `["bash"]`

```dockerfile
# Sat, 29 Dec 2018 12:42:12 GMT
ADD file:4dfd7162a3ec550c299eec90235e80fb74afe67d7503bf81d82fb49414ab61b2 in / 
# Sat, 29 Dec 2018 12:42:13 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:06:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:06:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 13:07:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 12:45:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:c1142172c864f81f165113d1cab7bcd7334e0f6697efc430ea6889856b7720c8`  
		Last Modified: Sat, 29 Dec 2018 12:45:30 GMT  
		Size: 48.1 MB (48077897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b5350945a5ea31287ae1e3f4658bf31598cdbde73396e0191fb98aff39f17ad`  
		Last Modified: Sat, 29 Dec 2018 13:21:20 GMT  
		Size: 7.3 MB (7314381 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad6efa2ed42a7cd80fa7e1640e130bb29915be0b326c4a16bcea7559592c0bc4`  
		Last Modified: Sat, 29 Dec 2018 13:21:20 GMT  
		Size: 9.9 MB (9857603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a338d9429ed8a6a8cbdef1eaf331b7460fe4793d1e1d65e3311be7257831fad`  
		Last Modified: Sat, 29 Dec 2018 13:21:37 GMT  
		Size: 50.4 MB (50390616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fab55ae8e252d7a3bfe1e7fc2d1f9313b130ff4518d648e56ab640cff57750aa`  
		Last Modified: Wed, 09 Jan 2019 12:54:08 GMT  
		Size: 168.8 MB (168790528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
