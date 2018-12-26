<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `hylang`

-	[`hylang:0`](#hylang0)
-	[`hylang:0.13`](#hylang013)
-	[`hylang:0.13.1`](#hylang0131)
-	[`hylang:latest`](#hylanglatest)

## `hylang:0`

```console
$ docker pull hylang@sha256:d5e3e6b4f36936605a8636408ebd6b815618b56f1b2f0aecc51449f4ae714a34
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

### `hylang:0` - linux; amd64

```console
$ docker pull hylang@sha256:4a6f3834de9bd43780c05df329281574b02663c9c17aac6ed80b6b0967008da1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **356.7 MB (356666640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:680567cf21a5bcd61a3c0613e2b0f6e0e89200a581e55742e76498a5bcac6b4a`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:19:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:23:02 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 22:23:03 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 22:23:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:23:18 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 26 Dec 2018 08:42:00 GMT
ENV PYTHON_VERSION=3.7.2
# Wed, 26 Dec 2018 08:44:29 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Wed, 26 Dec 2018 08:44:30 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 26 Dec 2018 08:44:30 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 26 Dec 2018 08:44:36 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 26 Dec 2018 08:44:36 GMT
CMD ["python3"]
# Wed, 26 Dec 2018 10:33:26 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Wed, 26 Dec 2018 10:33:26 GMT
ADD dir:a05a45ee9f2f6abd81608e27a8160f322fc7835a3647d93b6cd365a9e58a0b3a in /opt/hylang/hy 
# Wed, 26 Dec 2018 10:33:31 GMT
RUN pip3 install -e /opt/hylang/hy
# Wed, 26 Dec 2018 10:33:31 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1db95989906f161007d8ef2a6ef6e0ec64bc15bf2c993fd002edbdfc7aa7df`  
		Last Modified: Fri, 16 Nov 2018 11:36:02 GMT  
		Size: 213.2 MB (213213743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb904e99f247ef4b354eab1285ec78bc5bb929dbf134ff69c156b90711216f6`  
		Last Modified: Fri, 16 Nov 2018 23:28:45 GMT  
		Size: 5.8 MB (5830951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3979c1f9d2e6c41f923d92b74e23ff5c7128740ca2be0ba109ed08f1b1dfabab`  
		Last Modified: Wed, 26 Dec 2018 09:25:22 GMT  
		Size: 22.4 MB (22429585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1551281985f783c8e4aa76e2d602be58d0190f00f9e15a73e65a41d2b9fbc09`  
		Last Modified: Wed, 26 Dec 2018 09:25:17 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ab8f51abbe0f77323b7a009c367c88dc000dbb1f73b0dd0fbab50429846443`  
		Last Modified: Wed, 26 Dec 2018 09:25:17 GMT  
		Size: 1.8 MB (1783532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2d8bdadea09b9b0d0006935fe60eb6954bef60f0be6e98f0201f2d4a342b41`  
		Last Modified: Wed, 26 Dec 2018 10:33:39 GMT  
		Size: 385.5 KB (385513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc1e943d6792c22b04324c364f91d4a336a9c6ff2eb498a1f1dbfb6084828f61`  
		Last Modified: Wed, 26 Dec 2018 10:33:40 GMT  
		Size: 2.6 MB (2559318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0` - linux; arm variant v5

```console
$ docker pull hylang@sha256:a3d1d54319d9c390385a67c05bff02ca09b4a26353ef47e1bf77aca6a9d9967c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.5 MB (339535827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09dd79593a884738b1e0fe90072036b9d3a8d90a2b8c6d0a9a1d2f86d076f849`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 16 Nov 2018 09:57:44 GMT
ADD file:f9237d2b6971cee3b5e97a3eee00a9f5ee788a30971f8ed1770d2cb47fbb3111 in / 
# Fri, 16 Nov 2018 09:57:45 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:37:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:37:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 18:38:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:40:55 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 21:20:17 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 21:20:17 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 21:20:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 21:20:38 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Fri, 16 Nov 2018 21:20:39 GMT
ENV PYTHON_VERSION=3.7.1
# Fri, 16 Nov 2018 21:24:23 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Fri, 16 Nov 2018 21:24:24 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Fri, 16 Nov 2018 21:24:25 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 21:24:35 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 21:24:35 GMT
CMD ["python3"]
# Fri, 16 Nov 2018 22:09:57 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Fri, 16 Nov 2018 22:09:58 GMT
ADD dir:2acd4535b26397539b0d8acdba095106228048eab03c48a045cc3123cab3ab02 in /opt/hylang/hy 
# Fri, 16 Nov 2018 22:10:06 GMT
RUN pip3 install -e /opt/hylang/hy
# Fri, 16 Nov 2018 22:10:07 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:15c0977ad57b8c1e459a84e9660baad60a59f519993211bd2bcfafa129c57b26`  
		Last Modified: Fri, 16 Nov 2018 10:12:16 GMT  
		Size: 44.0 MB (44031335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad5842ea5c57b54a3234d4466d9ce27f85b88e78d462439d74bec92845106b1`  
		Last Modified: Fri, 16 Nov 2018 18:51:10 GMT  
		Size: 9.8 MB (9810920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8779ae1b142cf8073085a020a4a857f81411f8267cb771b9888c23164cebfad1`  
		Last Modified: Fri, 16 Nov 2018 18:51:08 GMT  
		Size: 4.2 MB (4158685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36df4c9303ec5ed090e9c746045a71d4285056f215f04828647a3a7c4111bd5`  
		Last Modified: Fri, 16 Nov 2018 18:52:03 GMT  
		Size: 48.3 MB (48272124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81123c70c1b968a6b79410082d5d36f1c674236660dcf04bd8d4fd26c1d0e9b`  
		Last Modified: Fri, 16 Nov 2018 18:53:41 GMT  
		Size: 201.5 MB (201487062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b699c61791d8606153f8790efcf5dc09cb09ecfe2dbae541480cb1b7c6d19c92`  
		Last Modified: Fri, 16 Nov 2018 22:02:56 GMT  
		Size: 5.6 MB (5611880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d27d719efc6465fa7e6e5e701f7d521678ba91a0c10746cc29bcbee8acff1883`  
		Last Modified: Fri, 16 Nov 2018 22:03:03 GMT  
		Size: 21.4 MB (21387820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf2092a5b6df3a4c7c2236923d475bea910ea5957ee94c8b46d2bcc2e98858f`  
		Last Modified: Fri, 16 Nov 2018 22:02:54 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62a6e9e901dde0a839532534d31f29335b49d96783727930efdf0b86164cfc8b`  
		Last Modified: Fri, 16 Nov 2018 22:02:55 GMT  
		Size: 1.8 MB (1784028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9846e965e7faf4cbd88cfb964f7cda40b82d12b5d5526ebc8d1e557db6169791`  
		Last Modified: Fri, 16 Nov 2018 22:10:26 GMT  
		Size: 385.6 KB (385554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc1d27f44cd90e75e467f1530471bbc8ba78ec02797c32336439d58be973663`  
		Last Modified: Fri, 16 Nov 2018 22:10:27 GMT  
		Size: 2.6 MB (2606178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0` - linux; arm variant v7

```console
$ docker pull hylang@sha256:7d518249670ade009720cfc85b2bb3b2d16665800fd1c9c74c00d9138c7dcb54
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.9 MB (326868923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9def1535058fde27441b8ce4bcb593b891020f7da85c054e63c23e85bb5d7ff`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Oct 2018 12:05:35 GMT
ADD file:5a70dc8c5adc5e530a8fc10745a2fba15ee4379cd2e1adba6e1abfc8353c48d9 in / 
# Tue, 16 Oct 2018 12:05:38 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:58:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:58:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:59:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:02:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:18:10 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 13:18:11 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 13:18:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:18:27 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 25 Oct 2018 12:01:43 GMT
ENV PYTHON_VERSION=3.7.1
# Fri, 16 Nov 2018 15:52:24 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Fri, 16 Nov 2018 15:52:26 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Fri, 16 Nov 2018 15:52:27 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 15:52:36 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 15:52:36 GMT
CMD ["python3"]
# Fri, 16 Nov 2018 22:00:25 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Fri, 16 Nov 2018 22:00:26 GMT
ADD dir:2acd4535b26397539b0d8acdba095106228048eab03c48a045cc3123cab3ab02 in /opt/hylang/hy 
# Fri, 16 Nov 2018 22:00:35 GMT
RUN pip3 install -e /opt/hylang/hy
# Fri, 16 Nov 2018 22:00:35 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:773085009f9c7f7b4310a1b0a968c0940440707f9e534ed87f0652baf279811b`  
		Last Modified: Tue, 16 Oct 2018 12:16:00 GMT  
		Size: 42.1 MB (42063035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15973945ecf58d4573926ba8da5c9aa815d1e14bbc2c8414b0e23d51552f6f3d`  
		Last Modified: Tue, 16 Oct 2018 13:09:51 GMT  
		Size: 9.4 MB (9440339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e25b539801e1d4c35f7727ce95a197418bbe4cff37e1784aad0325cdfb1673a`  
		Last Modified: Tue, 16 Oct 2018 13:09:50 GMT  
		Size: 3.9 MB (3913013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84cdb78f6b06db57fe35565127be72547dac84d2cd4e813258c84f1cd421544`  
		Last Modified: Tue, 16 Oct 2018 13:10:22 GMT  
		Size: 46.4 MB (46379384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c9b8944dc776e6461e3973f64cea6d94f44453c5414d39df52e1d3e5918e6b0`  
		Last Modified: Tue, 16 Oct 2018 13:11:30 GMT  
		Size: 194.0 MB (194001802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9f9c218cdb5367bcd4dd501fe632ca70550a825ab9fd4d1719a2c7f9acd6c8`  
		Last Modified: Tue, 16 Oct 2018 13:43:11 GMT  
		Size: 5.3 MB (5277868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6711c50563d963cf1460edbc6106a1bd4c4b3892abbe140d4fe984efed0e9fe`  
		Last Modified: Fri, 16 Nov 2018 17:09:50 GMT  
		Size: 21.0 MB (21017335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7228de0bc004a81fea25f17e7900cfdfe5d9b5e6b6946a45664c9877c70dc159`  
		Last Modified: Fri, 16 Nov 2018 17:09:43 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bdc3bf52fd142c48195aa806189505a24f729c53df92c3c24da7ff7cf8b1a72`  
		Last Modified: Fri, 16 Nov 2018 17:09:44 GMT  
		Size: 1.8 MB (1784037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43c194c5d8780b6e2b285d14cdcb62f2a0ca38376b1e43b17bbc3c82cc31d74`  
		Last Modified: Fri, 16 Nov 2018 22:00:58 GMT  
		Size: 385.5 KB (385545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87147f4c33538cb312a2bd7e5b6f898b113c31a2f4bb4c2c6651239667e0568f`  
		Last Modified: Fri, 16 Nov 2018 22:00:59 GMT  
		Size: 2.6 MB (2606322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:e4cfa4f6add1808276b9b52a7f92926aa4a672be3ffded9410b80f3f7f2a304c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.0 MB (338018141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9374658b68ab1d32f15375baf02c9a0ba6839762a7c8c6975c801109e5783cd`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:30:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:30:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 02:33:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:39:37 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 12:56:21 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Nov 2018 12:56:22 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 12:57:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 12:57:08 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Sat, 17 Nov 2018 12:57:08 GMT
ENV PYTHON_VERSION=3.7.1
# Sat, 17 Nov 2018 13:02:35 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Sat, 17 Nov 2018 13:02:37 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 17 Nov 2018 13:02:38 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 17 Nov 2018 13:02:52 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 17 Nov 2018 13:02:53 GMT
CMD ["python3"]
# Sat, 17 Nov 2018 15:27:16 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Sat, 17 Nov 2018 15:27:17 GMT
ADD dir:2acd4535b26397539b0d8acdba095106228048eab03c48a045cc3123cab3ab02 in /opt/hylang/hy 
# Sat, 17 Nov 2018 15:27:30 GMT
RUN pip3 install -e /opt/hylang/hy
# Sat, 17 Nov 2018 15:27:31 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d136331294ced7de67c8e4bea8c807c347632c0aa25c4ec2ae6a7a3e346d6c1`  
		Last Modified: Sat, 17 Nov 2018 02:50:40 GMT  
		Size: 9.7 MB (9690286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c15aa4d980e5d3689a8a8099f7d79fb667611239aab1dfa5447b52f0a24934`  
		Last Modified: Sat, 17 Nov 2018 02:50:38 GMT  
		Size: 4.1 MB (4093102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccbf6d1a95604486762f28db0d78dc2d0ee4ce93752f9f63500a2a5a1ccccbad`  
		Last Modified: Sat, 17 Nov 2018 02:51:58 GMT  
		Size: 48.0 MB (48005019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f13cead204be2c0f95497f61c1e12585c26689c45b5b85421d1e8f820fe4ed48`  
		Last Modified: Sat, 17 Nov 2018 02:53:57 GMT  
		Size: 200.6 MB (200648471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d203fc95eb069f400fab440c3ce6d67ec5ec7fd564d9ae9d74ad50ad49f796`  
		Last Modified: Sat, 17 Nov 2018 13:23:55 GMT  
		Size: 5.6 MB (5583413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022fec91ab5643aa4439e7501b1d54877101a835aabf3a4e8b2a33c2f6c1f320`  
		Last Modified: Sat, 17 Nov 2018 13:24:02 GMT  
		Size: 22.1 MB (22105455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814c0eb9d76961a3c1715fc4adfad2f6f5e5390bb9732f503dfc0536dab73911`  
		Last Modified: Sat, 17 Nov 2018 13:23:52 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e06f9b9ddd2789e754e0711f71a6183a7c062adc7aaa5f097efd01bbe3c8b13d`  
		Last Modified: Sat, 17 Nov 2018 13:23:53 GMT  
		Size: 1.8 MB (1783827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa69ac0c1ca4f51b22d676f22d207778bbaf4602b1b3ac38571f05c1d74ff535`  
		Last Modified: Sat, 17 Nov 2018 15:27:58 GMT  
		Size: 385.5 KB (385523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5ea21de74ba6905795d554a2421faab6bcd946558ed63294762bff6fee85a4`  
		Last Modified: Sat, 17 Nov 2018 15:27:59 GMT  
		Size: 2.6 MB (2606105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0` - linux; 386

```console
$ docker pull hylang@sha256:1c2c606bb464e91761b1ecf2aee175acd0374d454816baceeaeb0d303af39306
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.2 MB (363173334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90719474febad0ea430350168458164413af908c7fa11c6c4074b4a1a3d36e6c`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 16 Nov 2018 12:35:55 GMT
ADD file:c271ec83947c149630f5083b19b12f1c2abee7cfee16687b496b762e2c03bd2f in / 
# Fri, 16 Nov 2018 12:35:56 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 11:24:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 11:24:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 11:25:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 11:28:52 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 23:24:06 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Nov 2018 23:24:06 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 23:24:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 23:24:15 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Sat, 17 Nov 2018 23:24:15 GMT
ENV PYTHON_VERSION=3.7.1
# Sat, 17 Nov 2018 23:26:38 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Sat, 17 Nov 2018 23:26:39 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 17 Nov 2018 23:26:39 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 17 Nov 2018 23:26:44 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 17 Nov 2018 23:26:45 GMT
CMD ["python3"]
# Sun, 18 Nov 2018 00:01:08 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Sun, 18 Nov 2018 00:01:08 GMT
ADD dir:2acd4535b26397539b0d8acdba095106228048eab03c48a045cc3123cab3ab02 in /opt/hylang/hy 
# Sun, 18 Nov 2018 00:01:13 GMT
RUN pip3 install -e /opt/hylang/hy
# Sun, 18 Nov 2018 00:01:13 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:174e14c2b2eaca3f23e43c1a71df56b345b1e5fd0a6f56dbdc2b7863bf521334`  
		Last Modified: Thu, 15 Nov 2018 01:55:15 GMT  
		Size: 46.1 MB (46055316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2282c1c83958740b6ecb7716fae7f829e59a91879ae6162d89e2792727ca2219`  
		Last Modified: Sat, 17 Nov 2018 11:50:04 GMT  
		Size: 10.8 MB (10752903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfa7429c42215a24876206386666a9e7f5a3df20fcb1970274131f340987dc8`  
		Last Modified: Sat, 17 Nov 2018 11:50:00 GMT  
		Size: 4.6 MB (4560895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b022fb011c070a8b22c597aaf2aad4cfca3be7d2eefd830882555c79eae81d04`  
		Last Modified: Sat, 17 Nov 2018 11:51:42 GMT  
		Size: 51.6 MB (51591370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4edd91e58e9bed72d29fda43787063c039b7ecebe86bce96fd54dea75a06ad6a`  
		Last Modified: Sat, 17 Nov 2018 11:54:36 GMT  
		Size: 218.3 MB (218289737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b120bac8e893aa3b0f23aa94b27644586ad3bf4a3c4ce5c55642e2d8e83160`  
		Last Modified: Sat, 17 Nov 2018 23:53:33 GMT  
		Size: 6.1 MB (6146882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b6db7b76ef6d49b59ec74538bc035e637b30e602f8729ff5917b0748693fe2`  
		Last Modified: Sat, 17 Nov 2018 23:53:38 GMT  
		Size: 21.0 MB (21001124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:106a33bb963a2bd54d64f4a4be8c107ee6bf48886c00b1f6854c180e33ad5178`  
		Last Modified: Sat, 17 Nov 2018 23:53:31 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c543d51209f921a2a1607900c6876645ace2502a8f1d132cc2a31c6c581ff92`  
		Last Modified: Sat, 17 Nov 2018 23:53:32 GMT  
		Size: 1.8 MB (1783703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51617b8b7109ad69483ec5a3dc3413a5c6a307083a582195f58ad45ec18861c`  
		Last Modified: Sun, 18 Nov 2018 00:01:32 GMT  
		Size: 385.5 KB (385520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55a0c717fabf1bfed0d6133f27ac801ab33189352d76d197f724b640c62648a`  
		Last Modified: Sun, 18 Nov 2018 00:01:33 GMT  
		Size: 2.6 MB (2605644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0` - linux; ppc64le

```console
$ docker pull hylang@sha256:abd7d6b5be48c86acb2f8fb55a38afcc30135d1275432e9097b50ec10d817813
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **352.1 MB (352132002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4ebcdb4f4109fa516b158eb3cba3654dec7b7c8acc38c961266c1cec7d55afa`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 16 Nov 2018 09:31:32 GMT
ADD file:c12cb5e58d4704ac59fa85d9bad48fad0890bac017e1d57057e626ccc8338dcb in / 
# Fri, 16 Nov 2018 09:31:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:27:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:27:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:29:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:37:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 23:03:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 23:03:58 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 23:04:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 23:04:32 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Fri, 16 Nov 2018 23:04:33 GMT
ENV PYTHON_VERSION=3.7.1
# Fri, 16 Nov 2018 23:07:27 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Fri, 16 Nov 2018 23:07:30 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Fri, 16 Nov 2018 23:07:31 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 23:07:48 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 23:08:07 GMT
CMD ["python3"]
# Fri, 16 Nov 2018 23:27:00 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Fri, 16 Nov 2018 23:27:01 GMT
ADD dir:2acd4535b26397539b0d8acdba095106228048eab03c48a045cc3123cab3ab02 in /opt/hylang/hy 
# Fri, 16 Nov 2018 23:27:11 GMT
RUN pip3 install -e /opt/hylang/hy
# Fri, 16 Nov 2018 23:27:12 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:95d7042bc85ee59fe52e7447a19e118767f2153f9eda172447d8dd1b2ac9bebc`  
		Last Modified: Fri, 16 Nov 2018 09:41:03 GMT  
		Size: 45.6 MB (45606078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5bebfbb4940b6d3d8df18b51cbbd90a08385846bf9add13616d9ed867f08e7`  
		Last Modified: Fri, 16 Nov 2018 19:47:07 GMT  
		Size: 9.9 MB (9943735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b2a4eda93227739d4c204a11b693cc3494e9e6153e1ae2dd57a0e46a7f5873`  
		Last Modified: Fri, 16 Nov 2018 19:47:05 GMT  
		Size: 4.3 MB (4295770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1016a8823510eb6145ea613b3d780bb9dcd39aa654ebca99ddc07cb139702012`  
		Last Modified: Fri, 16 Nov 2018 19:48:13 GMT  
		Size: 50.1 MB (50070922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f7cf1fa56988b47c7cf02e5d79f4d9dde0c106f6e835b12ad66863dfee0e52`  
		Last Modified: Fri, 16 Nov 2018 19:49:44 GMT  
		Size: 208.9 MB (208871122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8f6bfba3a8341c8994511431538f000d6e24bc414f6e3b0a5798cb4e7f0d50`  
		Last Modified: Fri, 16 Nov 2018 23:22:29 GMT  
		Size: 5.9 MB (5865383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0230c5f71df862f3183f0cfc4bcae19459b68bfe9c6c56e4b222bbf41a13e76c`  
		Last Modified: Fri, 16 Nov 2018 23:22:35 GMT  
		Size: 22.7 MB (22702998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a5aac034a0f9304ab1d0ffc8cc9da0a7e7bfbb6974c7a4b1006129bc473668`  
		Last Modified: Fri, 16 Nov 2018 23:22:28 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37b5463bce842badeac119aec2d097518e9369b96bf760b6114050a139d94a3`  
		Last Modified: Fri, 16 Nov 2018 23:22:28 GMT  
		Size: 1.8 MB (1784043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b95fb2585e856995c5750320f75514c5407f13c3cec431d2fdfed4497a355e3`  
		Last Modified: Fri, 16 Nov 2018 23:27:35 GMT  
		Size: 385.6 KB (385553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80b1f2eea8ac823821b70589e29c64d20daeb14fc9822087d812a9a8af707f92`  
		Last Modified: Fri, 16 Nov 2018 23:27:34 GMT  
		Size: 2.6 MB (2606158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0` - linux; s390x

```console
$ docker pull hylang@sha256:0882c5700cb551c47a863e36a3b7db3f4eda3a17679f2457c528f8cb1bc17c20
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.4 MB (350390014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b024dd2fce5740de9e50b1201a8580955978db8aa8961a7336a10b398e73d2ea`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 16 Nov 2018 12:43:53 GMT
ADD file:2d4f6b3ab8bb9a0b9b22b8c86deeb337db46bef450f6c49a0c6ff1031ea09848 in / 
# Fri, 16 Nov 2018 12:43:54 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:17:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:17:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 20:18:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:20:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 00:05:47 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Nov 2018 00:05:47 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 00:05:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 00:05:56 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Sat, 17 Nov 2018 00:05:56 GMT
ENV PYTHON_VERSION=3.7.1
# Sat, 17 Nov 2018 00:08:00 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Sat, 17 Nov 2018 00:08:01 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 17 Nov 2018 00:08:02 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 17 Nov 2018 00:08:06 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 17 Nov 2018 00:08:07 GMT
CMD ["python3"]
# Sat, 17 Nov 2018 00:22:53 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Sat, 17 Nov 2018 00:22:53 GMT
ADD dir:2acd4535b26397539b0d8acdba095106228048eab03c48a045cc3123cab3ab02 in /opt/hylang/hy 
# Sat, 17 Nov 2018 00:22:58 GMT
RUN pip3 install -e /opt/hylang/hy
# Sat, 17 Nov 2018 00:22:59 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f596702a556198d4d7b269435905a2c6905cc113e004fb9894d6691a56f13f37`  
		Last Modified: Thu, 15 Nov 2018 02:02:49 GMT  
		Size: 45.2 MB (45204819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203080e34787e21c4c72a0bf78364320cb3fbabf324e473daeab90f86995aa97`  
		Last Modified: Fri, 16 Nov 2018 20:23:29 GMT  
		Size: 10.3 MB (10267982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afc14212b1fc39cd1e0f3502f09aa3d06c2e21dbb46e96108bbdf3a4f43625e`  
		Last Modified: Fri, 16 Nov 2018 20:23:28 GMT  
		Size: 4.4 MB (4371951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb1ee8d768a3204c0d5c5b95862c29567826a0cd7348e6de56fe45fa2327274`  
		Last Modified: Fri, 16 Nov 2018 20:23:53 GMT  
		Size: 50.5 MB (50484086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1add0debed844fbe89b515f80347693c5f1ef33baaba16ea92e5221a8218e4c3`  
		Last Modified: Fri, 16 Nov 2018 20:24:42 GMT  
		Size: 205.2 MB (205234042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7ab2161f7d99e9d3c3c7c949a9348eb314ad6b20581f8ed46aaec47b34022f`  
		Last Modified: Sat, 17 Nov 2018 00:20:02 GMT  
		Size: 5.9 MB (5893926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32469dfcf0c07dbd1f5f1731b4042f71203c8e3bee6f0d9f069ff5df3276bea7`  
		Last Modified: Sat, 17 Nov 2018 00:20:07 GMT  
		Size: 24.2 MB (24158214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:055698e7e202b140452dd2c0e91b883f75d8bb22419eed4034f9a2065503377f`  
		Last Modified: Sat, 17 Nov 2018 00:20:00 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eea1e4adab84d2b09b303c0d3211d70d629cf15c7a2fdf2933d03d2df39b473`  
		Last Modified: Sat, 17 Nov 2018 00:20:00 GMT  
		Size: 1.8 MB (1783719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0739e442932ca4e1fbb636bbe27dacb7a28f68aac8275322d3d0bbfbd00d3232`  
		Last Modified: Sat, 17 Nov 2018 00:23:16 GMT  
		Size: 385.5 KB (385517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:359ebf7e4b08b7c22be7b69f325401d8748094bcace1398e21c6e9e2393d1124`  
		Last Modified: Sat, 17 Nov 2018 00:23:17 GMT  
		Size: 2.6 MB (2605515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `hylang:0.13`

```console
$ docker pull hylang@sha256:d5e3e6b4f36936605a8636408ebd6b815618b56f1b2f0aecc51449f4ae714a34
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

### `hylang:0.13` - linux; amd64

```console
$ docker pull hylang@sha256:4a6f3834de9bd43780c05df329281574b02663c9c17aac6ed80b6b0967008da1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **356.7 MB (356666640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:680567cf21a5bcd61a3c0613e2b0f6e0e89200a581e55742e76498a5bcac6b4a`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:19:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:23:02 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 22:23:03 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 22:23:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:23:18 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 26 Dec 2018 08:42:00 GMT
ENV PYTHON_VERSION=3.7.2
# Wed, 26 Dec 2018 08:44:29 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Wed, 26 Dec 2018 08:44:30 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 26 Dec 2018 08:44:30 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 26 Dec 2018 08:44:36 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 26 Dec 2018 08:44:36 GMT
CMD ["python3"]
# Wed, 26 Dec 2018 10:33:26 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Wed, 26 Dec 2018 10:33:26 GMT
ADD dir:a05a45ee9f2f6abd81608e27a8160f322fc7835a3647d93b6cd365a9e58a0b3a in /opt/hylang/hy 
# Wed, 26 Dec 2018 10:33:31 GMT
RUN pip3 install -e /opt/hylang/hy
# Wed, 26 Dec 2018 10:33:31 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1db95989906f161007d8ef2a6ef6e0ec64bc15bf2c993fd002edbdfc7aa7df`  
		Last Modified: Fri, 16 Nov 2018 11:36:02 GMT  
		Size: 213.2 MB (213213743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb904e99f247ef4b354eab1285ec78bc5bb929dbf134ff69c156b90711216f6`  
		Last Modified: Fri, 16 Nov 2018 23:28:45 GMT  
		Size: 5.8 MB (5830951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3979c1f9d2e6c41f923d92b74e23ff5c7128740ca2be0ba109ed08f1b1dfabab`  
		Last Modified: Wed, 26 Dec 2018 09:25:22 GMT  
		Size: 22.4 MB (22429585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1551281985f783c8e4aa76e2d602be58d0190f00f9e15a73e65a41d2b9fbc09`  
		Last Modified: Wed, 26 Dec 2018 09:25:17 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ab8f51abbe0f77323b7a009c367c88dc000dbb1f73b0dd0fbab50429846443`  
		Last Modified: Wed, 26 Dec 2018 09:25:17 GMT  
		Size: 1.8 MB (1783532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2d8bdadea09b9b0d0006935fe60eb6954bef60f0be6e98f0201f2d4a342b41`  
		Last Modified: Wed, 26 Dec 2018 10:33:39 GMT  
		Size: 385.5 KB (385513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc1e943d6792c22b04324c364f91d4a336a9c6ff2eb498a1f1dbfb6084828f61`  
		Last Modified: Wed, 26 Dec 2018 10:33:40 GMT  
		Size: 2.6 MB (2559318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0.13` - linux; arm variant v5

```console
$ docker pull hylang@sha256:a3d1d54319d9c390385a67c05bff02ca09b4a26353ef47e1bf77aca6a9d9967c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.5 MB (339535827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09dd79593a884738b1e0fe90072036b9d3a8d90a2b8c6d0a9a1d2f86d076f849`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 16 Nov 2018 09:57:44 GMT
ADD file:f9237d2b6971cee3b5e97a3eee00a9f5ee788a30971f8ed1770d2cb47fbb3111 in / 
# Fri, 16 Nov 2018 09:57:45 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:37:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:37:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 18:38:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:40:55 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 21:20:17 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 21:20:17 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 21:20:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 21:20:38 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Fri, 16 Nov 2018 21:20:39 GMT
ENV PYTHON_VERSION=3.7.1
# Fri, 16 Nov 2018 21:24:23 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Fri, 16 Nov 2018 21:24:24 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Fri, 16 Nov 2018 21:24:25 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 21:24:35 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 21:24:35 GMT
CMD ["python3"]
# Fri, 16 Nov 2018 22:09:57 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Fri, 16 Nov 2018 22:09:58 GMT
ADD dir:2acd4535b26397539b0d8acdba095106228048eab03c48a045cc3123cab3ab02 in /opt/hylang/hy 
# Fri, 16 Nov 2018 22:10:06 GMT
RUN pip3 install -e /opt/hylang/hy
# Fri, 16 Nov 2018 22:10:07 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:15c0977ad57b8c1e459a84e9660baad60a59f519993211bd2bcfafa129c57b26`  
		Last Modified: Fri, 16 Nov 2018 10:12:16 GMT  
		Size: 44.0 MB (44031335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad5842ea5c57b54a3234d4466d9ce27f85b88e78d462439d74bec92845106b1`  
		Last Modified: Fri, 16 Nov 2018 18:51:10 GMT  
		Size: 9.8 MB (9810920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8779ae1b142cf8073085a020a4a857f81411f8267cb771b9888c23164cebfad1`  
		Last Modified: Fri, 16 Nov 2018 18:51:08 GMT  
		Size: 4.2 MB (4158685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36df4c9303ec5ed090e9c746045a71d4285056f215f04828647a3a7c4111bd5`  
		Last Modified: Fri, 16 Nov 2018 18:52:03 GMT  
		Size: 48.3 MB (48272124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81123c70c1b968a6b79410082d5d36f1c674236660dcf04bd8d4fd26c1d0e9b`  
		Last Modified: Fri, 16 Nov 2018 18:53:41 GMT  
		Size: 201.5 MB (201487062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b699c61791d8606153f8790efcf5dc09cb09ecfe2dbae541480cb1b7c6d19c92`  
		Last Modified: Fri, 16 Nov 2018 22:02:56 GMT  
		Size: 5.6 MB (5611880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d27d719efc6465fa7e6e5e701f7d521678ba91a0c10746cc29bcbee8acff1883`  
		Last Modified: Fri, 16 Nov 2018 22:03:03 GMT  
		Size: 21.4 MB (21387820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf2092a5b6df3a4c7c2236923d475bea910ea5957ee94c8b46d2bcc2e98858f`  
		Last Modified: Fri, 16 Nov 2018 22:02:54 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62a6e9e901dde0a839532534d31f29335b49d96783727930efdf0b86164cfc8b`  
		Last Modified: Fri, 16 Nov 2018 22:02:55 GMT  
		Size: 1.8 MB (1784028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9846e965e7faf4cbd88cfb964f7cda40b82d12b5d5526ebc8d1e557db6169791`  
		Last Modified: Fri, 16 Nov 2018 22:10:26 GMT  
		Size: 385.6 KB (385554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc1d27f44cd90e75e467f1530471bbc8ba78ec02797c32336439d58be973663`  
		Last Modified: Fri, 16 Nov 2018 22:10:27 GMT  
		Size: 2.6 MB (2606178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0.13` - linux; arm variant v7

```console
$ docker pull hylang@sha256:7d518249670ade009720cfc85b2bb3b2d16665800fd1c9c74c00d9138c7dcb54
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.9 MB (326868923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9def1535058fde27441b8ce4bcb593b891020f7da85c054e63c23e85bb5d7ff`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Oct 2018 12:05:35 GMT
ADD file:5a70dc8c5adc5e530a8fc10745a2fba15ee4379cd2e1adba6e1abfc8353c48d9 in / 
# Tue, 16 Oct 2018 12:05:38 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:58:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:58:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:59:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:02:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:18:10 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 13:18:11 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 13:18:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:18:27 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 25 Oct 2018 12:01:43 GMT
ENV PYTHON_VERSION=3.7.1
# Fri, 16 Nov 2018 15:52:24 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Fri, 16 Nov 2018 15:52:26 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Fri, 16 Nov 2018 15:52:27 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 15:52:36 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 15:52:36 GMT
CMD ["python3"]
# Fri, 16 Nov 2018 22:00:25 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Fri, 16 Nov 2018 22:00:26 GMT
ADD dir:2acd4535b26397539b0d8acdba095106228048eab03c48a045cc3123cab3ab02 in /opt/hylang/hy 
# Fri, 16 Nov 2018 22:00:35 GMT
RUN pip3 install -e /opt/hylang/hy
# Fri, 16 Nov 2018 22:00:35 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:773085009f9c7f7b4310a1b0a968c0940440707f9e534ed87f0652baf279811b`  
		Last Modified: Tue, 16 Oct 2018 12:16:00 GMT  
		Size: 42.1 MB (42063035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15973945ecf58d4573926ba8da5c9aa815d1e14bbc2c8414b0e23d51552f6f3d`  
		Last Modified: Tue, 16 Oct 2018 13:09:51 GMT  
		Size: 9.4 MB (9440339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e25b539801e1d4c35f7727ce95a197418bbe4cff37e1784aad0325cdfb1673a`  
		Last Modified: Tue, 16 Oct 2018 13:09:50 GMT  
		Size: 3.9 MB (3913013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84cdb78f6b06db57fe35565127be72547dac84d2cd4e813258c84f1cd421544`  
		Last Modified: Tue, 16 Oct 2018 13:10:22 GMT  
		Size: 46.4 MB (46379384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c9b8944dc776e6461e3973f64cea6d94f44453c5414d39df52e1d3e5918e6b0`  
		Last Modified: Tue, 16 Oct 2018 13:11:30 GMT  
		Size: 194.0 MB (194001802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9f9c218cdb5367bcd4dd501fe632ca70550a825ab9fd4d1719a2c7f9acd6c8`  
		Last Modified: Tue, 16 Oct 2018 13:43:11 GMT  
		Size: 5.3 MB (5277868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6711c50563d963cf1460edbc6106a1bd4c4b3892abbe140d4fe984efed0e9fe`  
		Last Modified: Fri, 16 Nov 2018 17:09:50 GMT  
		Size: 21.0 MB (21017335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7228de0bc004a81fea25f17e7900cfdfe5d9b5e6b6946a45664c9877c70dc159`  
		Last Modified: Fri, 16 Nov 2018 17:09:43 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bdc3bf52fd142c48195aa806189505a24f729c53df92c3c24da7ff7cf8b1a72`  
		Last Modified: Fri, 16 Nov 2018 17:09:44 GMT  
		Size: 1.8 MB (1784037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43c194c5d8780b6e2b285d14cdcb62f2a0ca38376b1e43b17bbc3c82cc31d74`  
		Last Modified: Fri, 16 Nov 2018 22:00:58 GMT  
		Size: 385.5 KB (385545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87147f4c33538cb312a2bd7e5b6f898b113c31a2f4bb4c2c6651239667e0568f`  
		Last Modified: Fri, 16 Nov 2018 22:00:59 GMT  
		Size: 2.6 MB (2606322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0.13` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:e4cfa4f6add1808276b9b52a7f92926aa4a672be3ffded9410b80f3f7f2a304c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.0 MB (338018141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9374658b68ab1d32f15375baf02c9a0ba6839762a7c8c6975c801109e5783cd`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:30:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:30:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 02:33:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:39:37 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 12:56:21 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Nov 2018 12:56:22 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 12:57:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 12:57:08 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Sat, 17 Nov 2018 12:57:08 GMT
ENV PYTHON_VERSION=3.7.1
# Sat, 17 Nov 2018 13:02:35 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Sat, 17 Nov 2018 13:02:37 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 17 Nov 2018 13:02:38 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 17 Nov 2018 13:02:52 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 17 Nov 2018 13:02:53 GMT
CMD ["python3"]
# Sat, 17 Nov 2018 15:27:16 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Sat, 17 Nov 2018 15:27:17 GMT
ADD dir:2acd4535b26397539b0d8acdba095106228048eab03c48a045cc3123cab3ab02 in /opt/hylang/hy 
# Sat, 17 Nov 2018 15:27:30 GMT
RUN pip3 install -e /opt/hylang/hy
# Sat, 17 Nov 2018 15:27:31 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d136331294ced7de67c8e4bea8c807c347632c0aa25c4ec2ae6a7a3e346d6c1`  
		Last Modified: Sat, 17 Nov 2018 02:50:40 GMT  
		Size: 9.7 MB (9690286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c15aa4d980e5d3689a8a8099f7d79fb667611239aab1dfa5447b52f0a24934`  
		Last Modified: Sat, 17 Nov 2018 02:50:38 GMT  
		Size: 4.1 MB (4093102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccbf6d1a95604486762f28db0d78dc2d0ee4ce93752f9f63500a2a5a1ccccbad`  
		Last Modified: Sat, 17 Nov 2018 02:51:58 GMT  
		Size: 48.0 MB (48005019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f13cead204be2c0f95497f61c1e12585c26689c45b5b85421d1e8f820fe4ed48`  
		Last Modified: Sat, 17 Nov 2018 02:53:57 GMT  
		Size: 200.6 MB (200648471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d203fc95eb069f400fab440c3ce6d67ec5ec7fd564d9ae9d74ad50ad49f796`  
		Last Modified: Sat, 17 Nov 2018 13:23:55 GMT  
		Size: 5.6 MB (5583413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022fec91ab5643aa4439e7501b1d54877101a835aabf3a4e8b2a33c2f6c1f320`  
		Last Modified: Sat, 17 Nov 2018 13:24:02 GMT  
		Size: 22.1 MB (22105455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814c0eb9d76961a3c1715fc4adfad2f6f5e5390bb9732f503dfc0536dab73911`  
		Last Modified: Sat, 17 Nov 2018 13:23:52 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e06f9b9ddd2789e754e0711f71a6183a7c062adc7aaa5f097efd01bbe3c8b13d`  
		Last Modified: Sat, 17 Nov 2018 13:23:53 GMT  
		Size: 1.8 MB (1783827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa69ac0c1ca4f51b22d676f22d207778bbaf4602b1b3ac38571f05c1d74ff535`  
		Last Modified: Sat, 17 Nov 2018 15:27:58 GMT  
		Size: 385.5 KB (385523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5ea21de74ba6905795d554a2421faab6bcd946558ed63294762bff6fee85a4`  
		Last Modified: Sat, 17 Nov 2018 15:27:59 GMT  
		Size: 2.6 MB (2606105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0.13` - linux; 386

```console
$ docker pull hylang@sha256:1c2c606bb464e91761b1ecf2aee175acd0374d454816baceeaeb0d303af39306
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.2 MB (363173334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90719474febad0ea430350168458164413af908c7fa11c6c4074b4a1a3d36e6c`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 16 Nov 2018 12:35:55 GMT
ADD file:c271ec83947c149630f5083b19b12f1c2abee7cfee16687b496b762e2c03bd2f in / 
# Fri, 16 Nov 2018 12:35:56 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 11:24:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 11:24:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 11:25:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 11:28:52 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 23:24:06 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Nov 2018 23:24:06 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 23:24:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 23:24:15 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Sat, 17 Nov 2018 23:24:15 GMT
ENV PYTHON_VERSION=3.7.1
# Sat, 17 Nov 2018 23:26:38 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Sat, 17 Nov 2018 23:26:39 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 17 Nov 2018 23:26:39 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 17 Nov 2018 23:26:44 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 17 Nov 2018 23:26:45 GMT
CMD ["python3"]
# Sun, 18 Nov 2018 00:01:08 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Sun, 18 Nov 2018 00:01:08 GMT
ADD dir:2acd4535b26397539b0d8acdba095106228048eab03c48a045cc3123cab3ab02 in /opt/hylang/hy 
# Sun, 18 Nov 2018 00:01:13 GMT
RUN pip3 install -e /opt/hylang/hy
# Sun, 18 Nov 2018 00:01:13 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:174e14c2b2eaca3f23e43c1a71df56b345b1e5fd0a6f56dbdc2b7863bf521334`  
		Last Modified: Thu, 15 Nov 2018 01:55:15 GMT  
		Size: 46.1 MB (46055316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2282c1c83958740b6ecb7716fae7f829e59a91879ae6162d89e2792727ca2219`  
		Last Modified: Sat, 17 Nov 2018 11:50:04 GMT  
		Size: 10.8 MB (10752903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfa7429c42215a24876206386666a9e7f5a3df20fcb1970274131f340987dc8`  
		Last Modified: Sat, 17 Nov 2018 11:50:00 GMT  
		Size: 4.6 MB (4560895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b022fb011c070a8b22c597aaf2aad4cfca3be7d2eefd830882555c79eae81d04`  
		Last Modified: Sat, 17 Nov 2018 11:51:42 GMT  
		Size: 51.6 MB (51591370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4edd91e58e9bed72d29fda43787063c039b7ecebe86bce96fd54dea75a06ad6a`  
		Last Modified: Sat, 17 Nov 2018 11:54:36 GMT  
		Size: 218.3 MB (218289737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b120bac8e893aa3b0f23aa94b27644586ad3bf4a3c4ce5c55642e2d8e83160`  
		Last Modified: Sat, 17 Nov 2018 23:53:33 GMT  
		Size: 6.1 MB (6146882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b6db7b76ef6d49b59ec74538bc035e637b30e602f8729ff5917b0748693fe2`  
		Last Modified: Sat, 17 Nov 2018 23:53:38 GMT  
		Size: 21.0 MB (21001124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:106a33bb963a2bd54d64f4a4be8c107ee6bf48886c00b1f6854c180e33ad5178`  
		Last Modified: Sat, 17 Nov 2018 23:53:31 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c543d51209f921a2a1607900c6876645ace2502a8f1d132cc2a31c6c581ff92`  
		Last Modified: Sat, 17 Nov 2018 23:53:32 GMT  
		Size: 1.8 MB (1783703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51617b8b7109ad69483ec5a3dc3413a5c6a307083a582195f58ad45ec18861c`  
		Last Modified: Sun, 18 Nov 2018 00:01:32 GMT  
		Size: 385.5 KB (385520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55a0c717fabf1bfed0d6133f27ac801ab33189352d76d197f724b640c62648a`  
		Last Modified: Sun, 18 Nov 2018 00:01:33 GMT  
		Size: 2.6 MB (2605644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0.13` - linux; ppc64le

```console
$ docker pull hylang@sha256:abd7d6b5be48c86acb2f8fb55a38afcc30135d1275432e9097b50ec10d817813
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **352.1 MB (352132002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4ebcdb4f4109fa516b158eb3cba3654dec7b7c8acc38c961266c1cec7d55afa`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 16 Nov 2018 09:31:32 GMT
ADD file:c12cb5e58d4704ac59fa85d9bad48fad0890bac017e1d57057e626ccc8338dcb in / 
# Fri, 16 Nov 2018 09:31:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:27:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:27:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:29:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:37:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 23:03:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 23:03:58 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 23:04:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 23:04:32 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Fri, 16 Nov 2018 23:04:33 GMT
ENV PYTHON_VERSION=3.7.1
# Fri, 16 Nov 2018 23:07:27 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Fri, 16 Nov 2018 23:07:30 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Fri, 16 Nov 2018 23:07:31 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 23:07:48 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 23:08:07 GMT
CMD ["python3"]
# Fri, 16 Nov 2018 23:27:00 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Fri, 16 Nov 2018 23:27:01 GMT
ADD dir:2acd4535b26397539b0d8acdba095106228048eab03c48a045cc3123cab3ab02 in /opt/hylang/hy 
# Fri, 16 Nov 2018 23:27:11 GMT
RUN pip3 install -e /opt/hylang/hy
# Fri, 16 Nov 2018 23:27:12 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:95d7042bc85ee59fe52e7447a19e118767f2153f9eda172447d8dd1b2ac9bebc`  
		Last Modified: Fri, 16 Nov 2018 09:41:03 GMT  
		Size: 45.6 MB (45606078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5bebfbb4940b6d3d8df18b51cbbd90a08385846bf9add13616d9ed867f08e7`  
		Last Modified: Fri, 16 Nov 2018 19:47:07 GMT  
		Size: 9.9 MB (9943735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b2a4eda93227739d4c204a11b693cc3494e9e6153e1ae2dd57a0e46a7f5873`  
		Last Modified: Fri, 16 Nov 2018 19:47:05 GMT  
		Size: 4.3 MB (4295770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1016a8823510eb6145ea613b3d780bb9dcd39aa654ebca99ddc07cb139702012`  
		Last Modified: Fri, 16 Nov 2018 19:48:13 GMT  
		Size: 50.1 MB (50070922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f7cf1fa56988b47c7cf02e5d79f4d9dde0c106f6e835b12ad66863dfee0e52`  
		Last Modified: Fri, 16 Nov 2018 19:49:44 GMT  
		Size: 208.9 MB (208871122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8f6bfba3a8341c8994511431538f000d6e24bc414f6e3b0a5798cb4e7f0d50`  
		Last Modified: Fri, 16 Nov 2018 23:22:29 GMT  
		Size: 5.9 MB (5865383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0230c5f71df862f3183f0cfc4bcae19459b68bfe9c6c56e4b222bbf41a13e76c`  
		Last Modified: Fri, 16 Nov 2018 23:22:35 GMT  
		Size: 22.7 MB (22702998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a5aac034a0f9304ab1d0ffc8cc9da0a7e7bfbb6974c7a4b1006129bc473668`  
		Last Modified: Fri, 16 Nov 2018 23:22:28 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37b5463bce842badeac119aec2d097518e9369b96bf760b6114050a139d94a3`  
		Last Modified: Fri, 16 Nov 2018 23:22:28 GMT  
		Size: 1.8 MB (1784043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b95fb2585e856995c5750320f75514c5407f13c3cec431d2fdfed4497a355e3`  
		Last Modified: Fri, 16 Nov 2018 23:27:35 GMT  
		Size: 385.6 KB (385553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80b1f2eea8ac823821b70589e29c64d20daeb14fc9822087d812a9a8af707f92`  
		Last Modified: Fri, 16 Nov 2018 23:27:34 GMT  
		Size: 2.6 MB (2606158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0.13` - linux; s390x

```console
$ docker pull hylang@sha256:0882c5700cb551c47a863e36a3b7db3f4eda3a17679f2457c528f8cb1bc17c20
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.4 MB (350390014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b024dd2fce5740de9e50b1201a8580955978db8aa8961a7336a10b398e73d2ea`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 16 Nov 2018 12:43:53 GMT
ADD file:2d4f6b3ab8bb9a0b9b22b8c86deeb337db46bef450f6c49a0c6ff1031ea09848 in / 
# Fri, 16 Nov 2018 12:43:54 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:17:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:17:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 20:18:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:20:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 00:05:47 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Nov 2018 00:05:47 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 00:05:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 00:05:56 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Sat, 17 Nov 2018 00:05:56 GMT
ENV PYTHON_VERSION=3.7.1
# Sat, 17 Nov 2018 00:08:00 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Sat, 17 Nov 2018 00:08:01 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 17 Nov 2018 00:08:02 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 17 Nov 2018 00:08:06 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 17 Nov 2018 00:08:07 GMT
CMD ["python3"]
# Sat, 17 Nov 2018 00:22:53 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Sat, 17 Nov 2018 00:22:53 GMT
ADD dir:2acd4535b26397539b0d8acdba095106228048eab03c48a045cc3123cab3ab02 in /opt/hylang/hy 
# Sat, 17 Nov 2018 00:22:58 GMT
RUN pip3 install -e /opt/hylang/hy
# Sat, 17 Nov 2018 00:22:59 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f596702a556198d4d7b269435905a2c6905cc113e004fb9894d6691a56f13f37`  
		Last Modified: Thu, 15 Nov 2018 02:02:49 GMT  
		Size: 45.2 MB (45204819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203080e34787e21c4c72a0bf78364320cb3fbabf324e473daeab90f86995aa97`  
		Last Modified: Fri, 16 Nov 2018 20:23:29 GMT  
		Size: 10.3 MB (10267982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afc14212b1fc39cd1e0f3502f09aa3d06c2e21dbb46e96108bbdf3a4f43625e`  
		Last Modified: Fri, 16 Nov 2018 20:23:28 GMT  
		Size: 4.4 MB (4371951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb1ee8d768a3204c0d5c5b95862c29567826a0cd7348e6de56fe45fa2327274`  
		Last Modified: Fri, 16 Nov 2018 20:23:53 GMT  
		Size: 50.5 MB (50484086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1add0debed844fbe89b515f80347693c5f1ef33baaba16ea92e5221a8218e4c3`  
		Last Modified: Fri, 16 Nov 2018 20:24:42 GMT  
		Size: 205.2 MB (205234042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7ab2161f7d99e9d3c3c7c949a9348eb314ad6b20581f8ed46aaec47b34022f`  
		Last Modified: Sat, 17 Nov 2018 00:20:02 GMT  
		Size: 5.9 MB (5893926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32469dfcf0c07dbd1f5f1731b4042f71203c8e3bee6f0d9f069ff5df3276bea7`  
		Last Modified: Sat, 17 Nov 2018 00:20:07 GMT  
		Size: 24.2 MB (24158214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:055698e7e202b140452dd2c0e91b883f75d8bb22419eed4034f9a2065503377f`  
		Last Modified: Sat, 17 Nov 2018 00:20:00 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eea1e4adab84d2b09b303c0d3211d70d629cf15c7a2fdf2933d03d2df39b473`  
		Last Modified: Sat, 17 Nov 2018 00:20:00 GMT  
		Size: 1.8 MB (1783719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0739e442932ca4e1fbb636bbe27dacb7a28f68aac8275322d3d0bbfbd00d3232`  
		Last Modified: Sat, 17 Nov 2018 00:23:16 GMT  
		Size: 385.5 KB (385517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:359ebf7e4b08b7c22be7b69f325401d8748094bcace1398e21c6e9e2393d1124`  
		Last Modified: Sat, 17 Nov 2018 00:23:17 GMT  
		Size: 2.6 MB (2605515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `hylang:0.13.1`

```console
$ docker pull hylang@sha256:d5e3e6b4f36936605a8636408ebd6b815618b56f1b2f0aecc51449f4ae714a34
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

### `hylang:0.13.1` - linux; amd64

```console
$ docker pull hylang@sha256:4a6f3834de9bd43780c05df329281574b02663c9c17aac6ed80b6b0967008da1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **356.7 MB (356666640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:680567cf21a5bcd61a3c0613e2b0f6e0e89200a581e55742e76498a5bcac6b4a`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:19:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:23:02 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 22:23:03 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 22:23:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:23:18 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 26 Dec 2018 08:42:00 GMT
ENV PYTHON_VERSION=3.7.2
# Wed, 26 Dec 2018 08:44:29 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Wed, 26 Dec 2018 08:44:30 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 26 Dec 2018 08:44:30 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 26 Dec 2018 08:44:36 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 26 Dec 2018 08:44:36 GMT
CMD ["python3"]
# Wed, 26 Dec 2018 10:33:26 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Wed, 26 Dec 2018 10:33:26 GMT
ADD dir:a05a45ee9f2f6abd81608e27a8160f322fc7835a3647d93b6cd365a9e58a0b3a in /opt/hylang/hy 
# Wed, 26 Dec 2018 10:33:31 GMT
RUN pip3 install -e /opt/hylang/hy
# Wed, 26 Dec 2018 10:33:31 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1db95989906f161007d8ef2a6ef6e0ec64bc15bf2c993fd002edbdfc7aa7df`  
		Last Modified: Fri, 16 Nov 2018 11:36:02 GMT  
		Size: 213.2 MB (213213743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb904e99f247ef4b354eab1285ec78bc5bb929dbf134ff69c156b90711216f6`  
		Last Modified: Fri, 16 Nov 2018 23:28:45 GMT  
		Size: 5.8 MB (5830951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3979c1f9d2e6c41f923d92b74e23ff5c7128740ca2be0ba109ed08f1b1dfabab`  
		Last Modified: Wed, 26 Dec 2018 09:25:22 GMT  
		Size: 22.4 MB (22429585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1551281985f783c8e4aa76e2d602be58d0190f00f9e15a73e65a41d2b9fbc09`  
		Last Modified: Wed, 26 Dec 2018 09:25:17 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ab8f51abbe0f77323b7a009c367c88dc000dbb1f73b0dd0fbab50429846443`  
		Last Modified: Wed, 26 Dec 2018 09:25:17 GMT  
		Size: 1.8 MB (1783532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2d8bdadea09b9b0d0006935fe60eb6954bef60f0be6e98f0201f2d4a342b41`  
		Last Modified: Wed, 26 Dec 2018 10:33:39 GMT  
		Size: 385.5 KB (385513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc1e943d6792c22b04324c364f91d4a336a9c6ff2eb498a1f1dbfb6084828f61`  
		Last Modified: Wed, 26 Dec 2018 10:33:40 GMT  
		Size: 2.6 MB (2559318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0.13.1` - linux; arm variant v5

```console
$ docker pull hylang@sha256:a3d1d54319d9c390385a67c05bff02ca09b4a26353ef47e1bf77aca6a9d9967c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.5 MB (339535827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09dd79593a884738b1e0fe90072036b9d3a8d90a2b8c6d0a9a1d2f86d076f849`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 16 Nov 2018 09:57:44 GMT
ADD file:f9237d2b6971cee3b5e97a3eee00a9f5ee788a30971f8ed1770d2cb47fbb3111 in / 
# Fri, 16 Nov 2018 09:57:45 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:37:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:37:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 18:38:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:40:55 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 21:20:17 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 21:20:17 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 21:20:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 21:20:38 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Fri, 16 Nov 2018 21:20:39 GMT
ENV PYTHON_VERSION=3.7.1
# Fri, 16 Nov 2018 21:24:23 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Fri, 16 Nov 2018 21:24:24 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Fri, 16 Nov 2018 21:24:25 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 21:24:35 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 21:24:35 GMT
CMD ["python3"]
# Fri, 16 Nov 2018 22:09:57 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Fri, 16 Nov 2018 22:09:58 GMT
ADD dir:2acd4535b26397539b0d8acdba095106228048eab03c48a045cc3123cab3ab02 in /opt/hylang/hy 
# Fri, 16 Nov 2018 22:10:06 GMT
RUN pip3 install -e /opt/hylang/hy
# Fri, 16 Nov 2018 22:10:07 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:15c0977ad57b8c1e459a84e9660baad60a59f519993211bd2bcfafa129c57b26`  
		Last Modified: Fri, 16 Nov 2018 10:12:16 GMT  
		Size: 44.0 MB (44031335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad5842ea5c57b54a3234d4466d9ce27f85b88e78d462439d74bec92845106b1`  
		Last Modified: Fri, 16 Nov 2018 18:51:10 GMT  
		Size: 9.8 MB (9810920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8779ae1b142cf8073085a020a4a857f81411f8267cb771b9888c23164cebfad1`  
		Last Modified: Fri, 16 Nov 2018 18:51:08 GMT  
		Size: 4.2 MB (4158685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36df4c9303ec5ed090e9c746045a71d4285056f215f04828647a3a7c4111bd5`  
		Last Modified: Fri, 16 Nov 2018 18:52:03 GMT  
		Size: 48.3 MB (48272124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81123c70c1b968a6b79410082d5d36f1c674236660dcf04bd8d4fd26c1d0e9b`  
		Last Modified: Fri, 16 Nov 2018 18:53:41 GMT  
		Size: 201.5 MB (201487062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b699c61791d8606153f8790efcf5dc09cb09ecfe2dbae541480cb1b7c6d19c92`  
		Last Modified: Fri, 16 Nov 2018 22:02:56 GMT  
		Size: 5.6 MB (5611880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d27d719efc6465fa7e6e5e701f7d521678ba91a0c10746cc29bcbee8acff1883`  
		Last Modified: Fri, 16 Nov 2018 22:03:03 GMT  
		Size: 21.4 MB (21387820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf2092a5b6df3a4c7c2236923d475bea910ea5957ee94c8b46d2bcc2e98858f`  
		Last Modified: Fri, 16 Nov 2018 22:02:54 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62a6e9e901dde0a839532534d31f29335b49d96783727930efdf0b86164cfc8b`  
		Last Modified: Fri, 16 Nov 2018 22:02:55 GMT  
		Size: 1.8 MB (1784028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9846e965e7faf4cbd88cfb964f7cda40b82d12b5d5526ebc8d1e557db6169791`  
		Last Modified: Fri, 16 Nov 2018 22:10:26 GMT  
		Size: 385.6 KB (385554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc1d27f44cd90e75e467f1530471bbc8ba78ec02797c32336439d58be973663`  
		Last Modified: Fri, 16 Nov 2018 22:10:27 GMT  
		Size: 2.6 MB (2606178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0.13.1` - linux; arm variant v7

```console
$ docker pull hylang@sha256:7d518249670ade009720cfc85b2bb3b2d16665800fd1c9c74c00d9138c7dcb54
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.9 MB (326868923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9def1535058fde27441b8ce4bcb593b891020f7da85c054e63c23e85bb5d7ff`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Oct 2018 12:05:35 GMT
ADD file:5a70dc8c5adc5e530a8fc10745a2fba15ee4379cd2e1adba6e1abfc8353c48d9 in / 
# Tue, 16 Oct 2018 12:05:38 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:58:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:58:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:59:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:02:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:18:10 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 13:18:11 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 13:18:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:18:27 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 25 Oct 2018 12:01:43 GMT
ENV PYTHON_VERSION=3.7.1
# Fri, 16 Nov 2018 15:52:24 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Fri, 16 Nov 2018 15:52:26 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Fri, 16 Nov 2018 15:52:27 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 15:52:36 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 15:52:36 GMT
CMD ["python3"]
# Fri, 16 Nov 2018 22:00:25 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Fri, 16 Nov 2018 22:00:26 GMT
ADD dir:2acd4535b26397539b0d8acdba095106228048eab03c48a045cc3123cab3ab02 in /opt/hylang/hy 
# Fri, 16 Nov 2018 22:00:35 GMT
RUN pip3 install -e /opt/hylang/hy
# Fri, 16 Nov 2018 22:00:35 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:773085009f9c7f7b4310a1b0a968c0940440707f9e534ed87f0652baf279811b`  
		Last Modified: Tue, 16 Oct 2018 12:16:00 GMT  
		Size: 42.1 MB (42063035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15973945ecf58d4573926ba8da5c9aa815d1e14bbc2c8414b0e23d51552f6f3d`  
		Last Modified: Tue, 16 Oct 2018 13:09:51 GMT  
		Size: 9.4 MB (9440339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e25b539801e1d4c35f7727ce95a197418bbe4cff37e1784aad0325cdfb1673a`  
		Last Modified: Tue, 16 Oct 2018 13:09:50 GMT  
		Size: 3.9 MB (3913013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84cdb78f6b06db57fe35565127be72547dac84d2cd4e813258c84f1cd421544`  
		Last Modified: Tue, 16 Oct 2018 13:10:22 GMT  
		Size: 46.4 MB (46379384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c9b8944dc776e6461e3973f64cea6d94f44453c5414d39df52e1d3e5918e6b0`  
		Last Modified: Tue, 16 Oct 2018 13:11:30 GMT  
		Size: 194.0 MB (194001802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9f9c218cdb5367bcd4dd501fe632ca70550a825ab9fd4d1719a2c7f9acd6c8`  
		Last Modified: Tue, 16 Oct 2018 13:43:11 GMT  
		Size: 5.3 MB (5277868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6711c50563d963cf1460edbc6106a1bd4c4b3892abbe140d4fe984efed0e9fe`  
		Last Modified: Fri, 16 Nov 2018 17:09:50 GMT  
		Size: 21.0 MB (21017335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7228de0bc004a81fea25f17e7900cfdfe5d9b5e6b6946a45664c9877c70dc159`  
		Last Modified: Fri, 16 Nov 2018 17:09:43 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bdc3bf52fd142c48195aa806189505a24f729c53df92c3c24da7ff7cf8b1a72`  
		Last Modified: Fri, 16 Nov 2018 17:09:44 GMT  
		Size: 1.8 MB (1784037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43c194c5d8780b6e2b285d14cdcb62f2a0ca38376b1e43b17bbc3c82cc31d74`  
		Last Modified: Fri, 16 Nov 2018 22:00:58 GMT  
		Size: 385.5 KB (385545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87147f4c33538cb312a2bd7e5b6f898b113c31a2f4bb4c2c6651239667e0568f`  
		Last Modified: Fri, 16 Nov 2018 22:00:59 GMT  
		Size: 2.6 MB (2606322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0.13.1` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:e4cfa4f6add1808276b9b52a7f92926aa4a672be3ffded9410b80f3f7f2a304c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.0 MB (338018141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9374658b68ab1d32f15375baf02c9a0ba6839762a7c8c6975c801109e5783cd`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:30:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:30:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 02:33:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:39:37 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 12:56:21 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Nov 2018 12:56:22 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 12:57:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 12:57:08 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Sat, 17 Nov 2018 12:57:08 GMT
ENV PYTHON_VERSION=3.7.1
# Sat, 17 Nov 2018 13:02:35 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Sat, 17 Nov 2018 13:02:37 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 17 Nov 2018 13:02:38 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 17 Nov 2018 13:02:52 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 17 Nov 2018 13:02:53 GMT
CMD ["python3"]
# Sat, 17 Nov 2018 15:27:16 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Sat, 17 Nov 2018 15:27:17 GMT
ADD dir:2acd4535b26397539b0d8acdba095106228048eab03c48a045cc3123cab3ab02 in /opt/hylang/hy 
# Sat, 17 Nov 2018 15:27:30 GMT
RUN pip3 install -e /opt/hylang/hy
# Sat, 17 Nov 2018 15:27:31 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d136331294ced7de67c8e4bea8c807c347632c0aa25c4ec2ae6a7a3e346d6c1`  
		Last Modified: Sat, 17 Nov 2018 02:50:40 GMT  
		Size: 9.7 MB (9690286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c15aa4d980e5d3689a8a8099f7d79fb667611239aab1dfa5447b52f0a24934`  
		Last Modified: Sat, 17 Nov 2018 02:50:38 GMT  
		Size: 4.1 MB (4093102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccbf6d1a95604486762f28db0d78dc2d0ee4ce93752f9f63500a2a5a1ccccbad`  
		Last Modified: Sat, 17 Nov 2018 02:51:58 GMT  
		Size: 48.0 MB (48005019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f13cead204be2c0f95497f61c1e12585c26689c45b5b85421d1e8f820fe4ed48`  
		Last Modified: Sat, 17 Nov 2018 02:53:57 GMT  
		Size: 200.6 MB (200648471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d203fc95eb069f400fab440c3ce6d67ec5ec7fd564d9ae9d74ad50ad49f796`  
		Last Modified: Sat, 17 Nov 2018 13:23:55 GMT  
		Size: 5.6 MB (5583413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022fec91ab5643aa4439e7501b1d54877101a835aabf3a4e8b2a33c2f6c1f320`  
		Last Modified: Sat, 17 Nov 2018 13:24:02 GMT  
		Size: 22.1 MB (22105455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814c0eb9d76961a3c1715fc4adfad2f6f5e5390bb9732f503dfc0536dab73911`  
		Last Modified: Sat, 17 Nov 2018 13:23:52 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e06f9b9ddd2789e754e0711f71a6183a7c062adc7aaa5f097efd01bbe3c8b13d`  
		Last Modified: Sat, 17 Nov 2018 13:23:53 GMT  
		Size: 1.8 MB (1783827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa69ac0c1ca4f51b22d676f22d207778bbaf4602b1b3ac38571f05c1d74ff535`  
		Last Modified: Sat, 17 Nov 2018 15:27:58 GMT  
		Size: 385.5 KB (385523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5ea21de74ba6905795d554a2421faab6bcd946558ed63294762bff6fee85a4`  
		Last Modified: Sat, 17 Nov 2018 15:27:59 GMT  
		Size: 2.6 MB (2606105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0.13.1` - linux; 386

```console
$ docker pull hylang@sha256:1c2c606bb464e91761b1ecf2aee175acd0374d454816baceeaeb0d303af39306
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.2 MB (363173334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90719474febad0ea430350168458164413af908c7fa11c6c4074b4a1a3d36e6c`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 16 Nov 2018 12:35:55 GMT
ADD file:c271ec83947c149630f5083b19b12f1c2abee7cfee16687b496b762e2c03bd2f in / 
# Fri, 16 Nov 2018 12:35:56 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 11:24:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 11:24:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 11:25:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 11:28:52 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 23:24:06 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Nov 2018 23:24:06 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 23:24:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 23:24:15 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Sat, 17 Nov 2018 23:24:15 GMT
ENV PYTHON_VERSION=3.7.1
# Sat, 17 Nov 2018 23:26:38 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Sat, 17 Nov 2018 23:26:39 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 17 Nov 2018 23:26:39 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 17 Nov 2018 23:26:44 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 17 Nov 2018 23:26:45 GMT
CMD ["python3"]
# Sun, 18 Nov 2018 00:01:08 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Sun, 18 Nov 2018 00:01:08 GMT
ADD dir:2acd4535b26397539b0d8acdba095106228048eab03c48a045cc3123cab3ab02 in /opt/hylang/hy 
# Sun, 18 Nov 2018 00:01:13 GMT
RUN pip3 install -e /opt/hylang/hy
# Sun, 18 Nov 2018 00:01:13 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:174e14c2b2eaca3f23e43c1a71df56b345b1e5fd0a6f56dbdc2b7863bf521334`  
		Last Modified: Thu, 15 Nov 2018 01:55:15 GMT  
		Size: 46.1 MB (46055316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2282c1c83958740b6ecb7716fae7f829e59a91879ae6162d89e2792727ca2219`  
		Last Modified: Sat, 17 Nov 2018 11:50:04 GMT  
		Size: 10.8 MB (10752903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfa7429c42215a24876206386666a9e7f5a3df20fcb1970274131f340987dc8`  
		Last Modified: Sat, 17 Nov 2018 11:50:00 GMT  
		Size: 4.6 MB (4560895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b022fb011c070a8b22c597aaf2aad4cfca3be7d2eefd830882555c79eae81d04`  
		Last Modified: Sat, 17 Nov 2018 11:51:42 GMT  
		Size: 51.6 MB (51591370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4edd91e58e9bed72d29fda43787063c039b7ecebe86bce96fd54dea75a06ad6a`  
		Last Modified: Sat, 17 Nov 2018 11:54:36 GMT  
		Size: 218.3 MB (218289737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b120bac8e893aa3b0f23aa94b27644586ad3bf4a3c4ce5c55642e2d8e83160`  
		Last Modified: Sat, 17 Nov 2018 23:53:33 GMT  
		Size: 6.1 MB (6146882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b6db7b76ef6d49b59ec74538bc035e637b30e602f8729ff5917b0748693fe2`  
		Last Modified: Sat, 17 Nov 2018 23:53:38 GMT  
		Size: 21.0 MB (21001124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:106a33bb963a2bd54d64f4a4be8c107ee6bf48886c00b1f6854c180e33ad5178`  
		Last Modified: Sat, 17 Nov 2018 23:53:31 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c543d51209f921a2a1607900c6876645ace2502a8f1d132cc2a31c6c581ff92`  
		Last Modified: Sat, 17 Nov 2018 23:53:32 GMT  
		Size: 1.8 MB (1783703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51617b8b7109ad69483ec5a3dc3413a5c6a307083a582195f58ad45ec18861c`  
		Last Modified: Sun, 18 Nov 2018 00:01:32 GMT  
		Size: 385.5 KB (385520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55a0c717fabf1bfed0d6133f27ac801ab33189352d76d197f724b640c62648a`  
		Last Modified: Sun, 18 Nov 2018 00:01:33 GMT  
		Size: 2.6 MB (2605644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0.13.1` - linux; ppc64le

```console
$ docker pull hylang@sha256:abd7d6b5be48c86acb2f8fb55a38afcc30135d1275432e9097b50ec10d817813
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **352.1 MB (352132002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4ebcdb4f4109fa516b158eb3cba3654dec7b7c8acc38c961266c1cec7d55afa`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 16 Nov 2018 09:31:32 GMT
ADD file:c12cb5e58d4704ac59fa85d9bad48fad0890bac017e1d57057e626ccc8338dcb in / 
# Fri, 16 Nov 2018 09:31:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:27:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:27:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:29:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:37:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 23:03:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 23:03:58 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 23:04:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 23:04:32 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Fri, 16 Nov 2018 23:04:33 GMT
ENV PYTHON_VERSION=3.7.1
# Fri, 16 Nov 2018 23:07:27 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Fri, 16 Nov 2018 23:07:30 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Fri, 16 Nov 2018 23:07:31 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 23:07:48 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 23:08:07 GMT
CMD ["python3"]
# Fri, 16 Nov 2018 23:27:00 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Fri, 16 Nov 2018 23:27:01 GMT
ADD dir:2acd4535b26397539b0d8acdba095106228048eab03c48a045cc3123cab3ab02 in /opt/hylang/hy 
# Fri, 16 Nov 2018 23:27:11 GMT
RUN pip3 install -e /opt/hylang/hy
# Fri, 16 Nov 2018 23:27:12 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:95d7042bc85ee59fe52e7447a19e118767f2153f9eda172447d8dd1b2ac9bebc`  
		Last Modified: Fri, 16 Nov 2018 09:41:03 GMT  
		Size: 45.6 MB (45606078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5bebfbb4940b6d3d8df18b51cbbd90a08385846bf9add13616d9ed867f08e7`  
		Last Modified: Fri, 16 Nov 2018 19:47:07 GMT  
		Size: 9.9 MB (9943735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b2a4eda93227739d4c204a11b693cc3494e9e6153e1ae2dd57a0e46a7f5873`  
		Last Modified: Fri, 16 Nov 2018 19:47:05 GMT  
		Size: 4.3 MB (4295770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1016a8823510eb6145ea613b3d780bb9dcd39aa654ebca99ddc07cb139702012`  
		Last Modified: Fri, 16 Nov 2018 19:48:13 GMT  
		Size: 50.1 MB (50070922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f7cf1fa56988b47c7cf02e5d79f4d9dde0c106f6e835b12ad66863dfee0e52`  
		Last Modified: Fri, 16 Nov 2018 19:49:44 GMT  
		Size: 208.9 MB (208871122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8f6bfba3a8341c8994511431538f000d6e24bc414f6e3b0a5798cb4e7f0d50`  
		Last Modified: Fri, 16 Nov 2018 23:22:29 GMT  
		Size: 5.9 MB (5865383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0230c5f71df862f3183f0cfc4bcae19459b68bfe9c6c56e4b222bbf41a13e76c`  
		Last Modified: Fri, 16 Nov 2018 23:22:35 GMT  
		Size: 22.7 MB (22702998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a5aac034a0f9304ab1d0ffc8cc9da0a7e7bfbb6974c7a4b1006129bc473668`  
		Last Modified: Fri, 16 Nov 2018 23:22:28 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37b5463bce842badeac119aec2d097518e9369b96bf760b6114050a139d94a3`  
		Last Modified: Fri, 16 Nov 2018 23:22:28 GMT  
		Size: 1.8 MB (1784043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b95fb2585e856995c5750320f75514c5407f13c3cec431d2fdfed4497a355e3`  
		Last Modified: Fri, 16 Nov 2018 23:27:35 GMT  
		Size: 385.6 KB (385553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80b1f2eea8ac823821b70589e29c64d20daeb14fc9822087d812a9a8af707f92`  
		Last Modified: Fri, 16 Nov 2018 23:27:34 GMT  
		Size: 2.6 MB (2606158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0.13.1` - linux; s390x

```console
$ docker pull hylang@sha256:0882c5700cb551c47a863e36a3b7db3f4eda3a17679f2457c528f8cb1bc17c20
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.4 MB (350390014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b024dd2fce5740de9e50b1201a8580955978db8aa8961a7336a10b398e73d2ea`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 16 Nov 2018 12:43:53 GMT
ADD file:2d4f6b3ab8bb9a0b9b22b8c86deeb337db46bef450f6c49a0c6ff1031ea09848 in / 
# Fri, 16 Nov 2018 12:43:54 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:17:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:17:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 20:18:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:20:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 00:05:47 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Nov 2018 00:05:47 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 00:05:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 00:05:56 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Sat, 17 Nov 2018 00:05:56 GMT
ENV PYTHON_VERSION=3.7.1
# Sat, 17 Nov 2018 00:08:00 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Sat, 17 Nov 2018 00:08:01 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 17 Nov 2018 00:08:02 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 17 Nov 2018 00:08:06 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 17 Nov 2018 00:08:07 GMT
CMD ["python3"]
# Sat, 17 Nov 2018 00:22:53 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Sat, 17 Nov 2018 00:22:53 GMT
ADD dir:2acd4535b26397539b0d8acdba095106228048eab03c48a045cc3123cab3ab02 in /opt/hylang/hy 
# Sat, 17 Nov 2018 00:22:58 GMT
RUN pip3 install -e /opt/hylang/hy
# Sat, 17 Nov 2018 00:22:59 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f596702a556198d4d7b269435905a2c6905cc113e004fb9894d6691a56f13f37`  
		Last Modified: Thu, 15 Nov 2018 02:02:49 GMT  
		Size: 45.2 MB (45204819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203080e34787e21c4c72a0bf78364320cb3fbabf324e473daeab90f86995aa97`  
		Last Modified: Fri, 16 Nov 2018 20:23:29 GMT  
		Size: 10.3 MB (10267982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afc14212b1fc39cd1e0f3502f09aa3d06c2e21dbb46e96108bbdf3a4f43625e`  
		Last Modified: Fri, 16 Nov 2018 20:23:28 GMT  
		Size: 4.4 MB (4371951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb1ee8d768a3204c0d5c5b95862c29567826a0cd7348e6de56fe45fa2327274`  
		Last Modified: Fri, 16 Nov 2018 20:23:53 GMT  
		Size: 50.5 MB (50484086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1add0debed844fbe89b515f80347693c5f1ef33baaba16ea92e5221a8218e4c3`  
		Last Modified: Fri, 16 Nov 2018 20:24:42 GMT  
		Size: 205.2 MB (205234042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7ab2161f7d99e9d3c3c7c949a9348eb314ad6b20581f8ed46aaec47b34022f`  
		Last Modified: Sat, 17 Nov 2018 00:20:02 GMT  
		Size: 5.9 MB (5893926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32469dfcf0c07dbd1f5f1731b4042f71203c8e3bee6f0d9f069ff5df3276bea7`  
		Last Modified: Sat, 17 Nov 2018 00:20:07 GMT  
		Size: 24.2 MB (24158214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:055698e7e202b140452dd2c0e91b883f75d8bb22419eed4034f9a2065503377f`  
		Last Modified: Sat, 17 Nov 2018 00:20:00 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eea1e4adab84d2b09b303c0d3211d70d629cf15c7a2fdf2933d03d2df39b473`  
		Last Modified: Sat, 17 Nov 2018 00:20:00 GMT  
		Size: 1.8 MB (1783719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0739e442932ca4e1fbb636bbe27dacb7a28f68aac8275322d3d0bbfbd00d3232`  
		Last Modified: Sat, 17 Nov 2018 00:23:16 GMT  
		Size: 385.5 KB (385517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:359ebf7e4b08b7c22be7b69f325401d8748094bcace1398e21c6e9e2393d1124`  
		Last Modified: Sat, 17 Nov 2018 00:23:17 GMT  
		Size: 2.6 MB (2605515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `hylang:latest`

```console
$ docker pull hylang@sha256:d5e3e6b4f36936605a8636408ebd6b815618b56f1b2f0aecc51449f4ae714a34
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

### `hylang:latest` - linux; amd64

```console
$ docker pull hylang@sha256:4a6f3834de9bd43780c05df329281574b02663c9c17aac6ed80b6b0967008da1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **356.7 MB (356666640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:680567cf21a5bcd61a3c0613e2b0f6e0e89200a581e55742e76498a5bcac6b4a`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 15 Nov 2018 22:44:00 GMT
ADD file:a61c14b18252183a4719980da97ac483044bcaa9df8a569a6d7bf0f719384b5e in / 
# Thu, 15 Nov 2018 22:44:09 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:15:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:16:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:17:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:19:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:23:02 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 22:23:03 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 22:23:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:23:18 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 26 Dec 2018 08:42:00 GMT
ENV PYTHON_VERSION=3.7.2
# Wed, 26 Dec 2018 08:44:29 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Wed, 26 Dec 2018 08:44:30 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 26 Dec 2018 08:44:30 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 26 Dec 2018 08:44:36 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 26 Dec 2018 08:44:36 GMT
CMD ["python3"]
# Wed, 26 Dec 2018 10:33:26 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Wed, 26 Dec 2018 10:33:26 GMT
ADD dir:a05a45ee9f2f6abd81608e27a8160f322fc7835a3647d93b6cd365a9e58a0b3a in /opt/hylang/hy 
# Wed, 26 Dec 2018 10:33:31 GMT
RUN pip3 install -e /opt/hylang/hy
# Wed, 26 Dec 2018 10:33:31 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:54f7e8ac135a5f502a6ee9537ef3d64b1cd2fa570dc0a40b4d3b6f7ac81e7486`  
		Last Modified: Thu, 15 Nov 2018 23:08:31 GMT  
		Size: 45.3 MB (45320257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6341e30912f12f56e18564a3b582853f65376766f5f9d641a68a724ed6db88f`  
		Last Modified: Fri, 16 Nov 2018 11:33:18 GMT  
		Size: 10.7 MB (10740278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:087a57faf9491b1b82a83e26bc8cc90c90c30e4a4d858b57ddd5b4c2c90095f6`  
		Last Modified: Fri, 16 Nov 2018 11:33:17 GMT  
		Size: 4.3 MB (4340083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d71636fb824265e30ff34bf20737c9cdc4f5af28b6bce86f08215c55b89bfab`  
		Last Modified: Fri, 16 Nov 2018 11:34:13 GMT  
		Size: 50.1 MB (50063138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c1db95989906f161007d8ef2a6ef6e0ec64bc15bf2c993fd002edbdfc7aa7df`  
		Last Modified: Fri, 16 Nov 2018 11:36:02 GMT  
		Size: 213.2 MB (213213743 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bfb904e99f247ef4b354eab1285ec78bc5bb929dbf134ff69c156b90711216f6`  
		Last Modified: Fri, 16 Nov 2018 23:28:45 GMT  
		Size: 5.8 MB (5830951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3979c1f9d2e6c41f923d92b74e23ff5c7128740ca2be0ba109ed08f1b1dfabab`  
		Last Modified: Wed, 26 Dec 2018 09:25:22 GMT  
		Size: 22.4 MB (22429585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1551281985f783c8e4aa76e2d602be58d0190f00f9e15a73e65a41d2b9fbc09`  
		Last Modified: Wed, 26 Dec 2018 09:25:17 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39ab8f51abbe0f77323b7a009c367c88dc000dbb1f73b0dd0fbab50429846443`  
		Last Modified: Wed, 26 Dec 2018 09:25:17 GMT  
		Size: 1.8 MB (1783532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc2d8bdadea09b9b0d0006935fe60eb6954bef60f0be6e98f0201f2d4a342b41`  
		Last Modified: Wed, 26 Dec 2018 10:33:39 GMT  
		Size: 385.5 KB (385513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc1e943d6792c22b04324c364f91d4a336a9c6ff2eb498a1f1dbfb6084828f61`  
		Last Modified: Wed, 26 Dec 2018 10:33:40 GMT  
		Size: 2.6 MB (2559318 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:latest` - linux; arm variant v5

```console
$ docker pull hylang@sha256:a3d1d54319d9c390385a67c05bff02ca09b4a26353ef47e1bf77aca6a9d9967c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.5 MB (339535827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09dd79593a884738b1e0fe90072036b9d3a8d90a2b8c6d0a9a1d2f86d076f849`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 16 Nov 2018 09:57:44 GMT
ADD file:f9237d2b6971cee3b5e97a3eee00a9f5ee788a30971f8ed1770d2cb47fbb3111 in / 
# Fri, 16 Nov 2018 09:57:45 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:37:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:37:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 18:38:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:40:55 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 21:20:17 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 21:20:17 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 21:20:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 21:20:38 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Fri, 16 Nov 2018 21:20:39 GMT
ENV PYTHON_VERSION=3.7.1
# Fri, 16 Nov 2018 21:24:23 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Fri, 16 Nov 2018 21:24:24 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Fri, 16 Nov 2018 21:24:25 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 21:24:35 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 21:24:35 GMT
CMD ["python3"]
# Fri, 16 Nov 2018 22:09:57 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Fri, 16 Nov 2018 22:09:58 GMT
ADD dir:2acd4535b26397539b0d8acdba095106228048eab03c48a045cc3123cab3ab02 in /opt/hylang/hy 
# Fri, 16 Nov 2018 22:10:06 GMT
RUN pip3 install -e /opt/hylang/hy
# Fri, 16 Nov 2018 22:10:07 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:15c0977ad57b8c1e459a84e9660baad60a59f519993211bd2bcfafa129c57b26`  
		Last Modified: Fri, 16 Nov 2018 10:12:16 GMT  
		Size: 44.0 MB (44031335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ad5842ea5c57b54a3234d4466d9ce27f85b88e78d462439d74bec92845106b1`  
		Last Modified: Fri, 16 Nov 2018 18:51:10 GMT  
		Size: 9.8 MB (9810920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8779ae1b142cf8073085a020a4a857f81411f8267cb771b9888c23164cebfad1`  
		Last Modified: Fri, 16 Nov 2018 18:51:08 GMT  
		Size: 4.2 MB (4158685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f36df4c9303ec5ed090e9c746045a71d4285056f215f04828647a3a7c4111bd5`  
		Last Modified: Fri, 16 Nov 2018 18:52:03 GMT  
		Size: 48.3 MB (48272124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d81123c70c1b968a6b79410082d5d36f1c674236660dcf04bd8d4fd26c1d0e9b`  
		Last Modified: Fri, 16 Nov 2018 18:53:41 GMT  
		Size: 201.5 MB (201487062 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b699c61791d8606153f8790efcf5dc09cb09ecfe2dbae541480cb1b7c6d19c92`  
		Last Modified: Fri, 16 Nov 2018 22:02:56 GMT  
		Size: 5.6 MB (5611880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d27d719efc6465fa7e6e5e701f7d521678ba91a0c10746cc29bcbee8acff1883`  
		Last Modified: Fri, 16 Nov 2018 22:03:03 GMT  
		Size: 21.4 MB (21387820 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cf2092a5b6df3a4c7c2236923d475bea910ea5957ee94c8b46d2bcc2e98858f`  
		Last Modified: Fri, 16 Nov 2018 22:02:54 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62a6e9e901dde0a839532534d31f29335b49d96783727930efdf0b86164cfc8b`  
		Last Modified: Fri, 16 Nov 2018 22:02:55 GMT  
		Size: 1.8 MB (1784028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9846e965e7faf4cbd88cfb964f7cda40b82d12b5d5526ebc8d1e557db6169791`  
		Last Modified: Fri, 16 Nov 2018 22:10:26 GMT  
		Size: 385.6 KB (385554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2dc1d27f44cd90e75e467f1530471bbc8ba78ec02797c32336439d58be973663`  
		Last Modified: Fri, 16 Nov 2018 22:10:27 GMT  
		Size: 2.6 MB (2606178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:latest` - linux; arm variant v7

```console
$ docker pull hylang@sha256:7d518249670ade009720cfc85b2bb3b2d16665800fd1c9c74c00d9138c7dcb54
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.9 MB (326868923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9def1535058fde27441b8ce4bcb593b891020f7da85c054e63c23e85bb5d7ff`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Oct 2018 12:05:35 GMT
ADD file:5a70dc8c5adc5e530a8fc10745a2fba15ee4379cd2e1adba6e1abfc8353c48d9 in / 
# Tue, 16 Oct 2018 12:05:38 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:58:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:58:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:59:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:02:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:18:10 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 13:18:11 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 13:18:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:18:27 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 25 Oct 2018 12:01:43 GMT
ENV PYTHON_VERSION=3.7.1
# Fri, 16 Nov 2018 15:52:24 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Fri, 16 Nov 2018 15:52:26 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Fri, 16 Nov 2018 15:52:27 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 15:52:36 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 15:52:36 GMT
CMD ["python3"]
# Fri, 16 Nov 2018 22:00:25 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Fri, 16 Nov 2018 22:00:26 GMT
ADD dir:2acd4535b26397539b0d8acdba095106228048eab03c48a045cc3123cab3ab02 in /opt/hylang/hy 
# Fri, 16 Nov 2018 22:00:35 GMT
RUN pip3 install -e /opt/hylang/hy
# Fri, 16 Nov 2018 22:00:35 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:773085009f9c7f7b4310a1b0a968c0940440707f9e534ed87f0652baf279811b`  
		Last Modified: Tue, 16 Oct 2018 12:16:00 GMT  
		Size: 42.1 MB (42063035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15973945ecf58d4573926ba8da5c9aa815d1e14bbc2c8414b0e23d51552f6f3d`  
		Last Modified: Tue, 16 Oct 2018 13:09:51 GMT  
		Size: 9.4 MB (9440339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e25b539801e1d4c35f7727ce95a197418bbe4cff37e1784aad0325cdfb1673a`  
		Last Modified: Tue, 16 Oct 2018 13:09:50 GMT  
		Size: 3.9 MB (3913013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84cdb78f6b06db57fe35565127be72547dac84d2cd4e813258c84f1cd421544`  
		Last Modified: Tue, 16 Oct 2018 13:10:22 GMT  
		Size: 46.4 MB (46379384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c9b8944dc776e6461e3973f64cea6d94f44453c5414d39df52e1d3e5918e6b0`  
		Last Modified: Tue, 16 Oct 2018 13:11:30 GMT  
		Size: 194.0 MB (194001802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9f9c218cdb5367bcd4dd501fe632ca70550a825ab9fd4d1719a2c7f9acd6c8`  
		Last Modified: Tue, 16 Oct 2018 13:43:11 GMT  
		Size: 5.3 MB (5277868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6711c50563d963cf1460edbc6106a1bd4c4b3892abbe140d4fe984efed0e9fe`  
		Last Modified: Fri, 16 Nov 2018 17:09:50 GMT  
		Size: 21.0 MB (21017335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7228de0bc004a81fea25f17e7900cfdfe5d9b5e6b6946a45664c9877c70dc159`  
		Last Modified: Fri, 16 Nov 2018 17:09:43 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bdc3bf52fd142c48195aa806189505a24f729c53df92c3c24da7ff7cf8b1a72`  
		Last Modified: Fri, 16 Nov 2018 17:09:44 GMT  
		Size: 1.8 MB (1784037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c43c194c5d8780b6e2b285d14cdcb62f2a0ca38376b1e43b17bbc3c82cc31d74`  
		Last Modified: Fri, 16 Nov 2018 22:00:58 GMT  
		Size: 385.5 KB (385545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87147f4c33538cb312a2bd7e5b6f898b113c31a2f4bb4c2c6651239667e0568f`  
		Last Modified: Fri, 16 Nov 2018 22:00:59 GMT  
		Size: 2.6 MB (2606322 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:latest` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:e4cfa4f6add1808276b9b52a7f92926aa4a672be3ffded9410b80f3f7f2a304c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.0 MB (338018141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9374658b68ab1d32f15375baf02c9a0ba6839762a7c8c6975c801109e5783cd`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 16 Nov 2018 10:13:25 GMT
ADD file:bf8c0ee6d5a7d54f0c1259b5f65569cf7e5e828cfbe98302312933537cd9087e in / 
# Fri, 16 Nov 2018 10:13:26 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 02:30:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:30:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 02:33:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 02:39:37 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 12:56:21 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Nov 2018 12:56:22 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 12:57:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 12:57:08 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Sat, 17 Nov 2018 12:57:08 GMT
ENV PYTHON_VERSION=3.7.1
# Sat, 17 Nov 2018 13:02:35 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Sat, 17 Nov 2018 13:02:37 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 17 Nov 2018 13:02:38 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 17 Nov 2018 13:02:52 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 17 Nov 2018 13:02:53 GMT
CMD ["python3"]
# Sat, 17 Nov 2018 15:27:16 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Sat, 17 Nov 2018 15:27:17 GMT
ADD dir:2acd4535b26397539b0d8acdba095106228048eab03c48a045cc3123cab3ab02 in /opt/hylang/hy 
# Sat, 17 Nov 2018 15:27:30 GMT
RUN pip3 install -e /opt/hylang/hy
# Sat, 17 Nov 2018 15:27:31 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:4f3698b9865b00fa6eb7e0d3d11692c31eb0dc455aa6ab111d965bae67726698`  
		Last Modified: Thu, 15 Nov 2018 01:52:55 GMT  
		Size: 43.1 MB (43116700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d136331294ced7de67c8e4bea8c807c347632c0aa25c4ec2ae6a7a3e346d6c1`  
		Last Modified: Sat, 17 Nov 2018 02:50:40 GMT  
		Size: 9.7 MB (9690286 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44c15aa4d980e5d3689a8a8099f7d79fb667611239aab1dfa5447b52f0a24934`  
		Last Modified: Sat, 17 Nov 2018 02:50:38 GMT  
		Size: 4.1 MB (4093102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccbf6d1a95604486762f28db0d78dc2d0ee4ce93752f9f63500a2a5a1ccccbad`  
		Last Modified: Sat, 17 Nov 2018 02:51:58 GMT  
		Size: 48.0 MB (48005019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f13cead204be2c0f95497f61c1e12585c26689c45b5b85421d1e8f820fe4ed48`  
		Last Modified: Sat, 17 Nov 2018 02:53:57 GMT  
		Size: 200.6 MB (200648471 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6d203fc95eb069f400fab440c3ce6d67ec5ec7fd564d9ae9d74ad50ad49f796`  
		Last Modified: Sat, 17 Nov 2018 13:23:55 GMT  
		Size: 5.6 MB (5583413 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:022fec91ab5643aa4439e7501b1d54877101a835aabf3a4e8b2a33c2f6c1f320`  
		Last Modified: Sat, 17 Nov 2018 13:24:02 GMT  
		Size: 22.1 MB (22105455 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:814c0eb9d76961a3c1715fc4adfad2f6f5e5390bb9732f503dfc0536dab73911`  
		Last Modified: Sat, 17 Nov 2018 13:23:52 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e06f9b9ddd2789e754e0711f71a6183a7c062adc7aaa5f097efd01bbe3c8b13d`  
		Last Modified: Sat, 17 Nov 2018 13:23:53 GMT  
		Size: 1.8 MB (1783827 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa69ac0c1ca4f51b22d676f22d207778bbaf4602b1b3ac38571f05c1d74ff535`  
		Last Modified: Sat, 17 Nov 2018 15:27:58 GMT  
		Size: 385.5 KB (385523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e5ea21de74ba6905795d554a2421faab6bcd946558ed63294762bff6fee85a4`  
		Last Modified: Sat, 17 Nov 2018 15:27:59 GMT  
		Size: 2.6 MB (2606105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:latest` - linux; 386

```console
$ docker pull hylang@sha256:1c2c606bb464e91761b1ecf2aee175acd0374d454816baceeaeb0d303af39306
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.2 MB (363173334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90719474febad0ea430350168458164413af908c7fa11c6c4074b4a1a3d36e6c`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 16 Nov 2018 12:35:55 GMT
ADD file:c271ec83947c149630f5083b19b12f1c2abee7cfee16687b496b762e2c03bd2f in / 
# Fri, 16 Nov 2018 12:35:56 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 11:24:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 11:24:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 11:25:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 11:28:52 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 23:24:06 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Nov 2018 23:24:06 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 23:24:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 23:24:15 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Sat, 17 Nov 2018 23:24:15 GMT
ENV PYTHON_VERSION=3.7.1
# Sat, 17 Nov 2018 23:26:38 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Sat, 17 Nov 2018 23:26:39 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 17 Nov 2018 23:26:39 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 17 Nov 2018 23:26:44 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 17 Nov 2018 23:26:45 GMT
CMD ["python3"]
# Sun, 18 Nov 2018 00:01:08 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Sun, 18 Nov 2018 00:01:08 GMT
ADD dir:2acd4535b26397539b0d8acdba095106228048eab03c48a045cc3123cab3ab02 in /opt/hylang/hy 
# Sun, 18 Nov 2018 00:01:13 GMT
RUN pip3 install -e /opt/hylang/hy
# Sun, 18 Nov 2018 00:01:13 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:174e14c2b2eaca3f23e43c1a71df56b345b1e5fd0a6f56dbdc2b7863bf521334`  
		Last Modified: Thu, 15 Nov 2018 01:55:15 GMT  
		Size: 46.1 MB (46055316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2282c1c83958740b6ecb7716fae7f829e59a91879ae6162d89e2792727ca2219`  
		Last Modified: Sat, 17 Nov 2018 11:50:04 GMT  
		Size: 10.8 MB (10752903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecfa7429c42215a24876206386666a9e7f5a3df20fcb1970274131f340987dc8`  
		Last Modified: Sat, 17 Nov 2018 11:50:00 GMT  
		Size: 4.6 MB (4560895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b022fb011c070a8b22c597aaf2aad4cfca3be7d2eefd830882555c79eae81d04`  
		Last Modified: Sat, 17 Nov 2018 11:51:42 GMT  
		Size: 51.6 MB (51591370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4edd91e58e9bed72d29fda43787063c039b7ecebe86bce96fd54dea75a06ad6a`  
		Last Modified: Sat, 17 Nov 2018 11:54:36 GMT  
		Size: 218.3 MB (218289737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17b120bac8e893aa3b0f23aa94b27644586ad3bf4a3c4ce5c55642e2d8e83160`  
		Last Modified: Sat, 17 Nov 2018 23:53:33 GMT  
		Size: 6.1 MB (6146882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f5b6db7b76ef6d49b59ec74538bc035e637b30e602f8729ff5917b0748693fe2`  
		Last Modified: Sat, 17 Nov 2018 23:53:38 GMT  
		Size: 21.0 MB (21001124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:106a33bb963a2bd54d64f4a4be8c107ee6bf48886c00b1f6854c180e33ad5178`  
		Last Modified: Sat, 17 Nov 2018 23:53:31 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c543d51209f921a2a1607900c6876645ace2502a8f1d132cc2a31c6c581ff92`  
		Last Modified: Sat, 17 Nov 2018 23:53:32 GMT  
		Size: 1.8 MB (1783703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a51617b8b7109ad69483ec5a3dc3413a5c6a307083a582195f58ad45ec18861c`  
		Last Modified: Sun, 18 Nov 2018 00:01:32 GMT  
		Size: 385.5 KB (385520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55a0c717fabf1bfed0d6133f27ac801ab33189352d76d197f724b640c62648a`  
		Last Modified: Sun, 18 Nov 2018 00:01:33 GMT  
		Size: 2.6 MB (2605644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:latest` - linux; ppc64le

```console
$ docker pull hylang@sha256:abd7d6b5be48c86acb2f8fb55a38afcc30135d1275432e9097b50ec10d817813
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **352.1 MB (352132002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4ebcdb4f4109fa516b158eb3cba3654dec7b7c8acc38c961266c1cec7d55afa`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 16 Nov 2018 09:31:32 GMT
ADD file:c12cb5e58d4704ac59fa85d9bad48fad0890bac017e1d57057e626ccc8338dcb in / 
# Fri, 16 Nov 2018 09:31:36 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 19:27:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:27:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 19:29:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 19:37:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 23:03:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 23:03:58 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 23:04:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 23:04:32 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Fri, 16 Nov 2018 23:04:33 GMT
ENV PYTHON_VERSION=3.7.1
# Fri, 16 Nov 2018 23:07:27 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Fri, 16 Nov 2018 23:07:30 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Fri, 16 Nov 2018 23:07:31 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 23:07:48 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 23:08:07 GMT
CMD ["python3"]
# Fri, 16 Nov 2018 23:27:00 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Fri, 16 Nov 2018 23:27:01 GMT
ADD dir:2acd4535b26397539b0d8acdba095106228048eab03c48a045cc3123cab3ab02 in /opt/hylang/hy 
# Fri, 16 Nov 2018 23:27:11 GMT
RUN pip3 install -e /opt/hylang/hy
# Fri, 16 Nov 2018 23:27:12 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:95d7042bc85ee59fe52e7447a19e118767f2153f9eda172447d8dd1b2ac9bebc`  
		Last Modified: Fri, 16 Nov 2018 09:41:03 GMT  
		Size: 45.6 MB (45606078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df5bebfbb4940b6d3d8df18b51cbbd90a08385846bf9add13616d9ed867f08e7`  
		Last Modified: Fri, 16 Nov 2018 19:47:07 GMT  
		Size: 9.9 MB (9943735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47b2a4eda93227739d4c204a11b693cc3494e9e6153e1ae2dd57a0e46a7f5873`  
		Last Modified: Fri, 16 Nov 2018 19:47:05 GMT  
		Size: 4.3 MB (4295770 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1016a8823510eb6145ea613b3d780bb9dcd39aa654ebca99ddc07cb139702012`  
		Last Modified: Fri, 16 Nov 2018 19:48:13 GMT  
		Size: 50.1 MB (50070922 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7f7cf1fa56988b47c7cf02e5d79f4d9dde0c106f6e835b12ad66863dfee0e52`  
		Last Modified: Fri, 16 Nov 2018 19:49:44 GMT  
		Size: 208.9 MB (208871122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b8f6bfba3a8341c8994511431538f000d6e24bc414f6e3b0a5798cb4e7f0d50`  
		Last Modified: Fri, 16 Nov 2018 23:22:29 GMT  
		Size: 5.9 MB (5865383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0230c5f71df862f3183f0cfc4bcae19459b68bfe9c6c56e4b222bbf41a13e76c`  
		Last Modified: Fri, 16 Nov 2018 23:22:35 GMT  
		Size: 22.7 MB (22702998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a5aac034a0f9304ab1d0ffc8cc9da0a7e7bfbb6974c7a4b1006129bc473668`  
		Last Modified: Fri, 16 Nov 2018 23:22:28 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f37b5463bce842badeac119aec2d097518e9369b96bf760b6114050a139d94a3`  
		Last Modified: Fri, 16 Nov 2018 23:22:28 GMT  
		Size: 1.8 MB (1784043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b95fb2585e856995c5750320f75514c5407f13c3cec431d2fdfed4497a355e3`  
		Last Modified: Fri, 16 Nov 2018 23:27:35 GMT  
		Size: 385.6 KB (385553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:80b1f2eea8ac823821b70589e29c64d20daeb14fc9822087d812a9a8af707f92`  
		Last Modified: Fri, 16 Nov 2018 23:27:34 GMT  
		Size: 2.6 MB (2606158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:latest` - linux; s390x

```console
$ docker pull hylang@sha256:0882c5700cb551c47a863e36a3b7db3f4eda3a17679f2457c528f8cb1bc17c20
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.4 MB (350390014 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b024dd2fce5740de9e50b1201a8580955978db8aa8961a7336a10b398e73d2ea`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 16 Nov 2018 12:43:53 GMT
ADD file:2d4f6b3ab8bb9a0b9b22b8c86deeb337db46bef450f6c49a0c6ff1031ea09848 in / 
# Fri, 16 Nov 2018 12:43:54 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 20:17:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:17:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 20:18:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 20:20:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 00:05:47 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Nov 2018 00:05:47 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 00:05:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 00:05:56 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Sat, 17 Nov 2018 00:05:56 GMT
ENV PYTHON_VERSION=3.7.1
# Sat, 17 Nov 2018 00:08:00 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Sat, 17 Nov 2018 00:08:01 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 17 Nov 2018 00:08:02 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 17 Nov 2018 00:08:06 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 17 Nov 2018 00:08:07 GMT
CMD ["python3"]
# Sat, 17 Nov 2018 00:22:53 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Sat, 17 Nov 2018 00:22:53 GMT
ADD dir:2acd4535b26397539b0d8acdba095106228048eab03c48a045cc3123cab3ab02 in /opt/hylang/hy 
# Sat, 17 Nov 2018 00:22:58 GMT
RUN pip3 install -e /opt/hylang/hy
# Sat, 17 Nov 2018 00:22:59 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:f596702a556198d4d7b269435905a2c6905cc113e004fb9894d6691a56f13f37`  
		Last Modified: Thu, 15 Nov 2018 02:02:49 GMT  
		Size: 45.2 MB (45204819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203080e34787e21c4c72a0bf78364320cb3fbabf324e473daeab90f86995aa97`  
		Last Modified: Fri, 16 Nov 2018 20:23:29 GMT  
		Size: 10.3 MB (10267982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0afc14212b1fc39cd1e0f3502f09aa3d06c2e21dbb46e96108bbdf3a4f43625e`  
		Last Modified: Fri, 16 Nov 2018 20:23:28 GMT  
		Size: 4.4 MB (4371951 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aeb1ee8d768a3204c0d5c5b95862c29567826a0cd7348e6de56fe45fa2327274`  
		Last Modified: Fri, 16 Nov 2018 20:23:53 GMT  
		Size: 50.5 MB (50484086 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1add0debed844fbe89b515f80347693c5f1ef33baaba16ea92e5221a8218e4c3`  
		Last Modified: Fri, 16 Nov 2018 20:24:42 GMT  
		Size: 205.2 MB (205234042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d7ab2161f7d99e9d3c3c7c949a9348eb314ad6b20581f8ed46aaec47b34022f`  
		Last Modified: Sat, 17 Nov 2018 00:20:02 GMT  
		Size: 5.9 MB (5893926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32469dfcf0c07dbd1f5f1731b4042f71203c8e3bee6f0d9f069ff5df3276bea7`  
		Last Modified: Sat, 17 Nov 2018 00:20:07 GMT  
		Size: 24.2 MB (24158214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:055698e7e202b140452dd2c0e91b883f75d8bb22419eed4034f9a2065503377f`  
		Last Modified: Sat, 17 Nov 2018 00:20:00 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3eea1e4adab84d2b09b303c0d3211d70d629cf15c7a2fdf2933d03d2df39b473`  
		Last Modified: Sat, 17 Nov 2018 00:20:00 GMT  
		Size: 1.8 MB (1783719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0739e442932ca4e1fbb636bbe27dacb7a28f68aac8275322d3d0bbfbd00d3232`  
		Last Modified: Sat, 17 Nov 2018 00:23:16 GMT  
		Size: 385.5 KB (385517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:359ebf7e4b08b7c22be7b69f325401d8748094bcace1398e21c6e9e2393d1124`  
		Last Modified: Sat, 17 Nov 2018 00:23:17 GMT  
		Size: 2.6 MB (2605515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
