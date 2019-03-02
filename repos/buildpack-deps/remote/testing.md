## `buildpack-deps:testing`

```console
$ docker pull buildpack-deps@sha256:e42b05eaf70d3aa67ffcd2cbfbd20cd6c5d0e616b9a07392250d13b067c3a87c
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
$ docker pull buildpack-deps@sha256:6868ccd92d71ebd76bc4518af7061fa9c1436b20a18e249b6406f283994dfc4e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **318.2 MB (318168254 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:344a4b6379ac07a58147c36e74d777402d27995170212e04c36fac7f48a8e3dd`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 03:27:09 GMT
ADD file:22a69a330913adf5521ab0515a373a657cf7ba89e853b6d6ec43a808e489e481 in / 
# Wed, 06 Feb 2019 03:27:09 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:29:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:30:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 05:30:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 01:26:26 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:53d9d89325e47abb437613a43f7bd8bcb841e8bd580d9482cc9ade612504e52c`  
		Last Modified: Wed, 06 Feb 2019 03:32:56 GMT  
		Size: 50.1 MB (50149457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67ee418c4e3f4112a069e2c42269aec17fc9eaeec5106c428dddef60c835a505`  
		Last Modified: Wed, 06 Feb 2019 05:57:08 GMT  
		Size: 7.8 MB (7765814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a3c3f5bcc57e9c96a6346e63335ff34ad6bd17adfb0a8a875477b462be60a32`  
		Last Modified: Wed, 06 Feb 2019 05:57:08 GMT  
		Size: 10.0 MB (9966028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28c262b37bd6197cf2180ae8123fe9335d71e4039b5927fe85390eb7274fc2e6`  
		Last Modified: Wed, 06 Feb 2019 05:57:28 GMT  
		Size: 54.0 MB (53961584 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9f1b55187cb47870fb52da333e17a197fee8247c15d8c82222854eb42b6def5`  
		Last Modified: Sat, 02 Mar 2019 01:49:29 GMT  
		Size: 196.3 MB (196325371 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; arm variant v5

```console
$ docker pull buildpack-deps@sha256:40210e4b32491e44cd8023f22b215421906076a7d180426a949090e9c63581aa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.6 MB (290627610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6d4da420ef891fbe29b0d8107ef0ca3734149cf679aa001a5983a65798b9287`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:49:17 GMT
ADD file:1768b3abf0763e218f968fba9be15246796c7b853d0736f6482b2b0ac1b9a61a in / 
# Wed, 06 Feb 2019 09:49:18 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:39:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:39:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 10:40:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 09:50:51 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:3468ac313ee1f62b7f5c9878dfdd6145895b5206baf04ebac908170061f1e782`  
		Last Modified: Wed, 06 Feb 2019 09:59:42 GMT  
		Size: 47.9 MB (47875389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc51499be2f6ca4736e2751761a4d7953c3bb17cf80b7c220a4300eb6d11e24d`  
		Last Modified: Sat, 02 Mar 2019 10:04:38 GMT  
		Size: 7.3 MB (7323965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73ba5569655f0f51604ed81c71a0b67a22057c6e248b4abe5209e2e1c3c59dbe`  
		Last Modified: Sat, 02 Mar 2019 10:04:38 GMT  
		Size: 9.7 MB (9658966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767a7dd6cc93f2902c271d640bbd426bded47c515cdf7d721544190d6536c786`  
		Last Modified: Sat, 02 Mar 2019 10:05:03 GMT  
		Size: 51.7 MB (51665635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:427ac452771c82e5a97e2612ffb90ec1d50409769f563db35f9c349e2a540b6e`  
		Last Modified: Sat, 02 Mar 2019 10:05:56 GMT  
		Size: 174.1 MB (174103655 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; arm variant v7

```console
$ docker pull buildpack-deps@sha256:28e8432773d377c6c95d19f34fe8d5d2505e1d65bd6f9afc84ed5a5721082f92
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.3 MB (276313941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e7379df7270241c71b3039ced6f22a9009a4f600a9c009b5eadffa0ab802189`
-	Default Command: `["bash"]`

```dockerfile
# Thu, 07 Feb 2019 12:58:25 GMT
ADD file:65d59ecfea4b8d57715e5859d63ba3cc9fee5929aa7767f83a4aa9d162ab6dc2 in / 
# Thu, 07 Feb 2019 12:58:28 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:17:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:17:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 15:18:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:21:00 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:d91b8c8018cf8d6d07c5879ee569d02c4f41253ad5e91059a81037474ffc3aeb`  
		Last Modified: Thu, 07 Feb 2019 01:09:01 GMT  
		Size: 45.7 MB (45652173 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa2bf9464350b08e6f4012bdfe10e887091758e45ae8908d9f112e7bdece0314`  
		Last Modified: Thu, 07 Feb 2019 15:45:20 GMT  
		Size: 7.1 MB (7066690 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b419603c750ccd73490a71502612c209dacb3a6d195aac914060e8073ef91f1`  
		Last Modified: Thu, 07 Feb 2019 15:45:24 GMT  
		Size: 9.3 MB (9315778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a44a65972da21e6ddd87b8f62855907f3352d4e39ebcaf2ea7173ba7f5635385`  
		Last Modified: Thu, 07 Feb 2019 15:45:46 GMT  
		Size: 49.3 MB (49320186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4f8119cd95170626086857ee2039abade4fa9b3ca27b488e1651f8bdad41b9c`  
		Last Modified: Thu, 07 Feb 2019 15:46:41 GMT  
		Size: 165.0 MB (164959114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; arm64 variant v8

```console
$ docker pull buildpack-deps@sha256:004e79458f6eef10fac093f7a9344e3dbc8a9cd40ff2ce6ee97a5bceddefd3bb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **307.5 MB (307465278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a5eda8f73b7dc0153dcc31670fd72b2bf82e4ed8cfcd673d40530b43ef8bc9c`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 10:06:35 GMT
ADD file:7f32b3fe595eec6cba45248ed6b83b4463a3fc169e4965f28418f3230d3f815f in / 
# Wed, 06 Feb 2019 10:06:37 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 03:18:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 03:19:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 03:22:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 10:09:37 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:978bca48cb174649e2e7e534686070a107899afce4e4c4ec872cf3e71a92b89c`  
		Last Modified: Wed, 06 Feb 2019 10:12:15 GMT  
		Size: 48.9 MB (48894795 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b691ddabaa5e283e9ad02ed30f51c1bcd01d4990bc0d53cdb51ec40637e94eed`  
		Last Modified: Thu, 07 Feb 2019 03:55:40 GMT  
		Size: 7.6 MB (7629953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5297d46e2e7d9579569e7c30d2633eae4ab7bc09adad624a49df94115d1444f`  
		Last Modified: Thu, 07 Feb 2019 03:55:40 GMT  
		Size: 10.0 MB (9953752 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:35c7b606ab107fbdabfff6c7bdcc81e0e12edb4df5ea09580ba1412132229bb6`  
		Last Modified: Thu, 07 Feb 2019 03:56:13 GMT  
		Size: 54.2 MB (54242871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:349cc25f9f5e7f3916e0a348694a1ba950dbf177c4c9dfc4c60049290bea6a4c`  
		Last Modified: Sat, 02 Mar 2019 11:13:46 GMT  
		Size: 186.7 MB (186743907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; 386

```console
$ docker pull buildpack-deps@sha256:d1f9ea668b1c34745cf471c555b3e9bfafa54f606ae0171747b46948ce94a1b5
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **319.9 MB (319866504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecbec78e54601482d534918ef48b9bdfcb23d075002655d9ab0222a347c3f686`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 11:58:07 GMT
ADD file:032ae36fc70b5e896838c38d33968573979a147ac7aeb7bad89a2a03a1e2ce6d in / 
# Wed, 06 Feb 2019 11:58:07 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:21:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:22:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 01:22:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:25:00 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:31428505a106aac9ed272a273932a2e2470eddd3ab51e27001cd15df87d8785c`  
		Last Modified: Wed, 06 Feb 2019 12:03:46 GMT  
		Size: 50.9 MB (50914560 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e8e546259cf7294fafe876629da13ebfd2a9e00da5753c2e2433fa1b9cf410b3`  
		Last Modified: Thu, 07 Feb 2019 01:56:38 GMT  
		Size: 7.9 MB (7924159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65700808c80368a80cea344ecdb5c0807bf86820adcc744d8f0f7d46311cbd7a`  
		Last Modified: Thu, 07 Feb 2019 01:56:40 GMT  
		Size: 10.3 MB (10307785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f965c67877c936a90d7cbcfaf33dbed0d77ccb055b4e075ef6f63cef2b7b49da`  
		Last Modified: Thu, 07 Feb 2019 01:57:03 GMT  
		Size: 55.7 MB (55673533 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d88167218c9dbea4bb1bbd638ed8bf1802e285e1f6e1a9b47a64dd47771b4058`  
		Last Modified: Thu, 07 Feb 2019 01:58:05 GMT  
		Size: 195.0 MB (195046467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; ppc64le

```console
$ docker pull buildpack-deps@sha256:f2b02b96e7a1fe4bb0afe44d211335e2896433dc72185c9a602bc99f57d0c193
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.2 MB (340245915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03ff2620e57d7e0155dc4f6628303f42577832e0c9e7a33cf019746724630670`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 09:24:48 GMT
ADD file:7be4c855690678b0cfbd827b9e93ed43f69a5b569cf1193ed7d2ba2caad35a77 in / 
# Wed, 06 Feb 2019 09:24:53 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 18:28:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 18:29:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 18:30:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 09:37:49 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:dd2a5d8f0124ac97988443d7139fdc4d9d7c4bd1a52d143af4cce9b66ec4620d`  
		Last Modified: Wed, 06 Feb 2019 09:28:55 GMT  
		Size: 53.8 MB (53834796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12184f77440f8f6e54dbde8caa7010f2a297e0ba23e8c1bb3e2be824c461fb33`  
		Last Modified: Wed, 06 Feb 2019 19:20:35 GMT  
		Size: 8.2 MB (8206910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38db29c791048259a3a4728d47dfaf8841b82b88e3ff8fb9c4f1605bffce1bc8`  
		Last Modified: Wed, 06 Feb 2019 19:20:35 GMT  
		Size: 10.7 MB (10703219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:642cd9d9c66f41630a046a16ffc841fd6b52cfd65496bfa776c881609dcef314`  
		Last Modified: Wed, 06 Feb 2019 19:21:09 GMT  
		Size: 59.7 MB (59702664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cb1677cbb6eed680b23f9851ec74a876f4a45bac99010e9ba1bf15767ec2199`  
		Last Modified: Sat, 02 Mar 2019 10:37:28 GMT  
		Size: 207.8 MB (207798326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `buildpack-deps:testing` - linux; s390x

```console
$ docker pull buildpack-deps@sha256:a7147406e6140be1766ba428e7c9f25545310931a1b156dfa91db26932b552c3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.7 MB (292720907 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d83ade0d72ededda8e80c32dd3966e7cea59fe1588f7e1738681d2942be615d1`
-	Default Command: `["bash"]`

```dockerfile
# Wed, 06 Feb 2019 12:41:58 GMT
ADD file:e2a3cb384d018539bcbc5c806ff9335dfd5f0350d306c3ebc34b3b80372e0e90 in / 
# Wed, 06 Feb 2019 12:41:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 15:21:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:21:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 15:21:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:23:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
```

-	Layers:
	-	`sha256:2c08b1e350860cec8128ec4b0b314d72bfdc79c79a17e6f55aa0c9cc1ec4abb6`  
		Last Modified: Wed, 06 Feb 2019 12:45:15 GMT  
		Size: 48.7 MB (48722687 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e42845847bfc11dbcc1afc9b8532e40621f4ecd46e80ccedd68d4c5d990ed8c`  
		Last Modified: Wed, 06 Feb 2019 15:30:49 GMT  
		Size: 7.3 MB (7342466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fea60ade3a6734a2fdb20b80850c0c96661cb38d25c56c23ad746a426f795b29`  
		Last Modified: Wed, 06 Feb 2019 15:30:49 GMT  
		Size: 9.9 MB (9854550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f23add4d7f5e52883020cc6b30cfd18850b2e2f823fdb9b7b33f20cad00513cb`  
		Last Modified: Wed, 06 Feb 2019 15:31:09 GMT  
		Size: 53.5 MB (53469476 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:11cc4767e696cbcc9a4a66d06cbfca1b67424c4d91ea71923650ee4bb8d68127`  
		Last Modified: Wed, 06 Feb 2019 15:31:39 GMT  
		Size: 173.3 MB (173331728 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
