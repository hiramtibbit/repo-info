## `python:latest`

```console
$ docker pull python@sha256:e3b6a6dc086b7505f06fd77dcdd9808d0fb7d60c7827777a37cc93865de7d232
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
	-	windows version 10.0.14393.2972; amd64
	-	windows version 10.0.17134.766; amd64
	-	windows version 10.0.17763.504; amd64

### `python:latest` - linux; amd64

```console
$ docker pull python@sha256:e3e087ca7fe013554b3a8b8d4088ab33a9f13af85b5c3f37cd4e69a8e53f14e1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **355.8 MB (355752578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34a518642c76e77f0cace72bd993352ac99802c3295931f70a407b735ecb6e27`
-	Default Command: `["python3"]`

```dockerfile
# Mon, 10 Jun 2019 23:24:07 GMT
ADD file:6e8620824300ccf3754fb5d8644a1dc7c69431d4cd1ef9d28d73f39260f96020 in / 
# Mon, 10 Jun 2019 23:24:07 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 00:29:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:30:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 00:30:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:32:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 00:50:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 00:50:49 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 00:51:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:02:27 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Tue, 11 Jun 2019 01:02:28 GMT
ENV PYTHON_VERSION=3.7.3
# Tue, 11 Jun 2019 01:07:27 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Tue, 11 Jun 2019 01:07:29 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 11 Jun 2019 01:07:29 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Tue, 11 Jun 2019 01:07:38 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 11 Jun 2019 01:07:39 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:6f2f362378c5a6fd915d96d11dda1e0223ccf213bf121ace56ae0f6616ea1dc8`  
		Last Modified: Mon, 10 Jun 2019 23:27:55 GMT  
		Size: 45.3 MB (45339350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c27a8a6b820f9167ec7e368b3a9bb47d7029f4dc8c97c67091f3757a5bc4e`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 10.8 MB (10785105 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7596bb83081b6c8410df557d538a0ae45922cbf81e469c6f4cfa835247cb24ab`  
		Last Modified: Tue, 11 Jun 2019 00:37:59 GMT  
		Size: 4.3 MB (4340143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:372744b62d49eba993652ee4a1201801fe278b687d85489101e07e7b9a4900e0`  
		Last Modified: Tue, 11 Jun 2019 00:38:26 GMT  
		Size: 50.1 MB (50065949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:615db220d76c063138a2e6c5849703a7a80d682a682f7e1a841e6e7ed5f43879`  
		Last Modified: Tue, 11 Jun 2019 00:39:20 GMT  
		Size: 215.1 MB (215084021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39aa0c89bda1ee16e94ab7039cb0b9a9fce8a390769c2194aaf5fdf0ae1a2bdd`  
		Last Modified: Tue, 11 Jun 2019 02:23:53 GMT  
		Size: 5.8 MB (5833601 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac275157d894bedd09171a43b2b24ee6e7587a9544a1eae42ef2ea6b60584100`  
		Last Modified: Tue, 11 Jun 2019 02:24:32 GMT  
		Size: 22.5 MB (22483334 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d16dec829a865dcb9bad110c7f1fc04ceecb52cb00f4b37f85b592aa68089d`  
		Last Modified: Tue, 11 Jun 2019 02:24:26 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8514b1c6524ef491c388ca3114b7f7e969e0e7507ea9efac08e663b982ec5d1`  
		Last Modified: Tue, 11 Jun 2019 02:24:27 GMT  
		Size: 1.8 MB (1820836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:latest` - linux; arm variant v5

```console
$ docker pull python@sha256:ca89776ba2ceea8507c4b01b1d50fd525dcc8d5d9e0186827396501ddb4bcd10
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.5 MB (338549062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc971a68c3e4e2eb9d9bd3d9267c2faf9a80b0438d56b40f58c904bbba59ebf1`
-	Default Command: `["python3"]`

```dockerfile
# Wed, 08 May 2019 08:53:17 GMT
ADD file:5dfe3b771bd67a2856913544993e219cb8c7933c33523cc56fe13a3a0e76ce9b in / 
# Wed, 08 May 2019 08:53:18 GMT
CMD ["bash"]
# Wed, 08 May 2019 10:01:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 10:01:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 10:02:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 10:04:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:58:09 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 11:58:09 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 11:58:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:08:44 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 08 May 2019 12:08:45 GMT
ENV PYTHON_VERSION=3.7.3
# Wed, 08 May 2019 12:12:32 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Wed, 08 May 2019 12:12:37 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 08 May 2019 12:12:38 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 08 May 2019 12:12:50 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 08 May 2019 12:12:51 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:ca892ced475bf1c51c1f13b76a64549cfc5d1a0b55d33d8b9418efbb47887bf8`  
		Last Modified: Wed, 08 May 2019 08:59:09 GMT  
		Size: 44.0 MB (44045778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b7b30b379469b50f6ada866964876f5c4ba164c22896bf3a08aabab61869e51`  
		Last Modified: Wed, 08 May 2019 10:09:26 GMT  
		Size: 9.9 MB (9854225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53e257762b4747840fc09dce269e7f68146ac9864b8bf218e57475b4af367a74`  
		Last Modified: Wed, 08 May 2019 10:09:24 GMT  
		Size: 4.2 MB (4159009 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1d4213268efa4d0a6f48cbe22d41880c44ded3c92c84ae62354c147e273c61d`  
		Last Modified: Wed, 08 May 2019 10:09:52 GMT  
		Size: 48.3 MB (48281807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90df5f390e2f010fd8f9b48cf832edb0933d21ff8b0e129e907c92a25a659fe`  
		Last Modified: Wed, 08 May 2019 10:11:05 GMT  
		Size: 203.3 MB (203266259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91c8b8d15582e15958da395f81c46564520fb51e35c057270f131ad6e96227d9`  
		Last Modified: Wed, 08 May 2019 12:33:55 GMT  
		Size: 5.6 MB (5613919 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89981e28fe66588b8358939adc3c29dbb96e961627847019050834d02d6c539d`  
		Last Modified: Wed, 08 May 2019 12:34:38 GMT  
		Size: 21.5 MB (21506780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a6a1acd1ba1961fcbcb641307b1ddfcbd20036ab9bbebd9b7ff2baaf10a41fd`  
		Last Modified: Wed, 08 May 2019 12:34:28 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a40de6d8e93270a1da6029a57ed19ea96d524b83429319e1261b939e254a26c`  
		Last Modified: Wed, 08 May 2019 12:34:29 GMT  
		Size: 1.8 MB (1821043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:latest` - linux; arm variant v7

```console
$ docker pull python@sha256:b22e4d30f509cdaa72689eb00d37a26645ec3b267205020383c9418fe0cd0fa2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **325.9 MB (325865994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e29685ffd839413051c923ada3c2c36bd2024ae2985dc33dd198e8b7cbde107`
-	Default Command: `["python3"]`

```dockerfile
# Wed, 08 May 2019 12:03:26 GMT
ADD file:7e8dcc40e246d53b86266855a2de8080d26e6b4ed9f594c1acc565784405735b in / 
# Wed, 08 May 2019 12:03:27 GMT
CMD ["bash"]
# Wed, 08 May 2019 13:04:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:04:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 13:05:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:07:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:20:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 13:20:06 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 16:47:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 16:51:28 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 08 May 2019 16:51:28 GMT
ENV PYTHON_VERSION=3.7.3
# Wed, 08 May 2019 16:54:52 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Wed, 08 May 2019 16:54:54 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 08 May 2019 16:54:55 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 08 May 2019 16:55:05 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 08 May 2019 16:55:06 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:f2a2fd7c1ab35cd1b5ea6fcc2b801f3877852797e2698ecdb9556e0dee3accb5`  
		Last Modified: Wed, 08 May 2019 12:09:40 GMT  
		Size: 42.1 MB (42082604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:047df9a92c9f7376283a8d6af526f5126d95995ba48dd7de49979ef57da3e15b`  
		Last Modified: Wed, 08 May 2019 13:12:20 GMT  
		Size: 9.5 MB (9485167 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddeed4ac8d1e2c751afd6fd3517f1d154365467039353c377c8206fd5eb81d4b`  
		Last Modified: Wed, 08 May 2019 13:12:18 GMT  
		Size: 3.9 MB (3918605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f87210772c4fe4ad359fb6a7030e2675f75aeb852c8ce68def62b11c2f94e847`  
		Last Modified: Wed, 08 May 2019 13:12:42 GMT  
		Size: 46.4 MB (46387836 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ab44a21280149d8affe2876973efe724b755c8040311750664118ba2cbaa2cc`  
		Last Modified: Wed, 08 May 2019 13:13:53 GMT  
		Size: 195.8 MB (195769902 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e6d15d167713344262584dda2423746df26710dd9cd9f74594d548a1ece863e`  
		Last Modified: Wed, 08 May 2019 17:00:16 GMT  
		Size: 5.3 MB (5279979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b6666e957835eee00242f554d7cb69cd952acafabeb78763f5f365b8e152462`  
		Last Modified: Wed, 08 May 2019 17:00:40 GMT  
		Size: 21.1 MB (21120614 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b441398b68d25c5a8a4bd29d0332667bde3360193ab83f0f82fad7a88457406`  
		Last Modified: Wed, 08 May 2019 17:00:33 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9c584cb5ef851cdaaf07bf2bdd4118ddb6ca9d0e42322827f206763e1835c63`  
		Last Modified: Wed, 08 May 2019 17:00:34 GMT  
		Size: 1.8 MB (1821047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:latest` - linux; arm64 variant v8

```console
$ docker pull python@sha256:691fd15027ebb83bc0beb51daa9eae6fdaf39cb86d3fb3d815f8bf7e0ba35506
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **337.1 MB (337073730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ea3edbf9f53f1e0e102ccf330af7ccc76ba858bf1c1b96db359430bdca3a60c`
-	Default Command: `["python3"]`

```dockerfile
# Wed, 08 May 2019 08:48:25 GMT
ADD file:153045f4fe6532d8c2ff273bb249a7a3a4cba913c26a4103ba5ddce1af02c1e5 in / 
# Wed, 08 May 2019 08:48:26 GMT
CMD ["bash"]
# Wed, 08 May 2019 11:51:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 11:51:50 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 11:54:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:01:51 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:04:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Jun 2019 23:04:25 GMT
ENV LANG=C.UTF-8
# Wed, 05 Jun 2019 23:04:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Jun 2019 23:18:03 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 05 Jun 2019 23:18:05 GMT
ENV PYTHON_VERSION=3.7.3
# Wed, 05 Jun 2019 23:21:26 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Wed, 05 Jun 2019 23:21:28 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 05 Jun 2019 23:21:28 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 05 Jun 2019 23:21:38 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 05 Jun 2019 23:21:39 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:5894e28291972e44f5c3eba2779a85979bae6f95ed4f3e43ea5c98a132f06c48`  
		Last Modified: Wed, 08 May 2019 08:54:43 GMT  
		Size: 43.1 MB (43141955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a8e6888cee6fef7c223eeaf2ca4c51bc0c21b4631971f416eb6a529a05e96cb`  
		Last Modified: Wed, 08 May 2019 12:07:05 GMT  
		Size: 9.7 MB (9733078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bf90e854779f4c5edab378626d847fd0ab7aa9441b63a7db31a7db55d2b255b`  
		Last Modified: Wed, 08 May 2019 12:07:03 GMT  
		Size: 4.1 MB (4094187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4c8eeecda6963793a99084385756365c2667fd778c50971ef0fad4ea8936805`  
		Last Modified: Wed, 08 May 2019 12:07:34 GMT  
		Size: 48.0 MB (48007708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:064d2df11ed1e092641ba6a0288e0fbd3f002fe816b7ce2873852de25b213431`  
		Last Modified: Wed, 08 May 2019 12:08:52 GMT  
		Size: 202.5 MB (202468325 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab69282826fb8ccb23a322d941fd41d4743d34aec481f37b3425c0a98d6b73d1`  
		Last Modified: Thu, 06 Jun 2019 00:11:05 GMT  
		Size: 5.6 MB (5586597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0f6b03b1ff0a2e33921088a7d70ed7610becf313c8a9d4f1c9a8c436bf10cc5`  
		Last Modified: Thu, 06 Jun 2019 00:12:13 GMT  
		Size: 22.2 MB (22220598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb059cd48b0c7e72b6ede25f45eb188d408037ff95bf1616f0e5e93832384fa7`  
		Last Modified: Thu, 06 Jun 2019 00:12:03 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e2f8a4b7385bc72a61de7f1a46e88501747c6b4a7a0c64700f9e4eeef87d008`  
		Last Modified: Thu, 06 Jun 2019 00:12:04 GMT  
		Size: 1.8 MB (1821042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:latest` - linux; 386

```console
$ docker pull python@sha256:a1c56db383e4169ce242f88c527608869afcb813e55b29d46ca3476b3edc4de7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.2 MB (362245963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:962e41e952e275dcc4deed26db75aa15eed23d0ed59b0b30ce562a61858db6b3`
-	Default Command: `["python3"]`

```dockerfile
# Mon, 10 Jun 2019 23:41:21 GMT
ADD file:591ac23170d9cebe3f8e69a1822d7cad09508218bbcc52fe4c6ff78c4e3681fe in / 
# Mon, 10 Jun 2019 23:41:21 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 03:00:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 03:00:22 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 03:01:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 03:02:59 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 03:18:38 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 03:18:38 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 03:18:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 03:29:43 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Tue, 11 Jun 2019 03:29:44 GMT
ENV PYTHON_VERSION=3.7.3
# Tue, 11 Jun 2019 03:33:23 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Tue, 11 Jun 2019 03:33:25 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 11 Jun 2019 03:33:25 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Tue, 11 Jun 2019 03:33:35 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 11 Jun 2019 03:33:35 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:bd6445c9478b5a80482cfa5395d00388a745243f09b45cac165c642434532e10`  
		Last Modified: Mon, 10 Jun 2019 23:45:36 GMT  
		Size: 46.1 MB (46063291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a92692b68247c2ef978121f8c38378ffe2bc385e0c01a2b748da9888a72f401f`  
		Last Modified: Tue, 11 Jun 2019 03:11:25 GMT  
		Size: 10.8 MB (10802210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74b0e0339f403263b4881ba8af8f24967e853ac416305bb1195b14820363669d`  
		Last Modified: Tue, 11 Jun 2019 03:11:22 GMT  
		Size: 4.6 MB (4561401 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c8e5c1baa1ebcb6457985999a279f92b439e3d4b95ba498559c68273a20f10f4`  
		Last Modified: Tue, 11 Jun 2019 03:11:55 GMT  
		Size: 51.6 MB (51587294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb43b313681796954e3087507ee6415597662549766f992963c6b40b09374d96`  
		Last Modified: Tue, 11 Jun 2019 03:13:25 GMT  
		Size: 220.2 MB (220163496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6af9799816fdd2d5a42093682e84318fb365cf75ee6679ea9ecc6dab43c0f709`  
		Last Modified: Tue, 11 Jun 2019 05:15:07 GMT  
		Size: 6.1 MB (6148581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca48b1c946e8255d218b27fa981624364cef05ce7048d99a0777afda9ada3967`  
		Last Modified: Tue, 11 Jun 2019 05:15:52 GMT  
		Size: 21.1 MB (21098628 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f288a4f335ab6a4549f29f22dc553a2bc65c08584669ce166d3d34eebaff77e`  
		Last Modified: Tue, 11 Jun 2019 05:15:43 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bd5d2d47834b6ec731c330bc87205c1e1eba175b1b1724d6c76550729fa4890`  
		Last Modified: Tue, 11 Jun 2019 05:15:44 GMT  
		Size: 1.8 MB (1820823 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:latest` - linux; ppc64le

```console
$ docker pull python@sha256:227996c85601ea7af23d958de3097aa2c1de8b070c37575464c67537b603571a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.2 MB (351200154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8433b16399f6e22a72e1183e5d2b3f4eaee066d055716227a41880ab018b31fe`
-	Default Command: `["python3"]`

```dockerfile
# Mon, 10 Jun 2019 23:18:37 GMT
ADD file:e68c9724b3bb547060bee969d578b43b6d9d54c015f424a85194d83c5d025f06 in / 
# Mon, 10 Jun 2019 23:18:41 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 02:03:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:03:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 02:05:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:11:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 03:04:36 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 03:04:38 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 03:05:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 03:20:49 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Tue, 11 Jun 2019 03:20:52 GMT
ENV PYTHON_VERSION=3.7.3
# Tue, 11 Jun 2019 03:24:07 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Tue, 11 Jun 2019 03:24:16 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 11 Jun 2019 03:24:19 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Tue, 11 Jun 2019 03:24:40 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 11 Jun 2019 03:24:54 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:a3b105ca9ddcf9e9e70676be6fe489ffa6bc0b4da42b1722d11e5adc95d0bda0`  
		Last Modified: Mon, 10 Jun 2019 23:23:43 GMT  
		Size: 45.6 MB (45603172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b751577b61f05bfd21e4bd12546cc82b6dbe59663f4a282f227a6bbd8a5ef95c`  
		Last Modified: Tue, 11 Jun 2019 02:55:42 GMT  
		Size: 10.0 MB (9990977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18cc130533eb82cb8e44f86a482bef7e77fd51203bdc90eb7de21a352a1c90fb`  
		Last Modified: Tue, 11 Jun 2019 02:55:39 GMT  
		Size: 4.3 MB (4296581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:558bbe955058c190541a393190bdcf653d4e36077e29ab1907dfd8398e6c11b6`  
		Last Modified: Tue, 11 Jun 2019 02:56:24 GMT  
		Size: 50.1 MB (50072603 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61be309116bf4ca657146ec391080f0c65a9d127ba3867cd1907c50e2a03fce4`  
		Last Modified: Tue, 11 Jun 2019 02:59:15 GMT  
		Size: 210.7 MB (210734913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2402be7b608c9f2b34adb695680ee81e04183e8ab9f84af86c3110174575abf6`  
		Last Modified: Tue, 11 Jun 2019 04:25:28 GMT  
		Size: 5.9 MB (5866945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e4a7b968de3acd5c39cdce98a9e8ae426338ab671746a69e25efe85f9bef7b77`  
		Last Modified: Tue, 11 Jun 2019 04:26:26 GMT  
		Size: 22.8 MB (22813624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6bd5c5c7872295181817e1048c9331a9a9a8dbeb330fb126f0f26b11d6b1825`  
		Last Modified: Tue, 11 Jun 2019 04:26:18 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0cd26393aa709c962b608951de37a1e3479c707b6dcfcb6577cec6cab4fbd99a`  
		Last Modified: Tue, 11 Jun 2019 04:26:19 GMT  
		Size: 1.8 MB (1821099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:latest` - linux; s390x

```console
$ docker pull python@sha256:413a36a060c218c0e03cd9a8eb9f900a9f151dfe41aaa905e535be027ab27066
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.5 MB (349511165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:152a436556a3240f2f3e05b6378c2885e246026c03a5e8d0c4f76611e53a30af`
-	Default Command: `["python3"]`

```dockerfile
# Mon, 10 Jun 2019 23:43:36 GMT
ADD file:afcc920e9f12a9a8dcd8fc13d10697d5a80737bb1480544b3e85270be9be266a in / 
# Mon, 10 Jun 2019 23:43:38 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:45:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:45:18 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 11 Jun 2019 01:45:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:47:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:28:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 02:28:23 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 03:52:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 03:55:03 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Tue, 11 Jun 2019 03:55:03 GMT
ENV PYTHON_VERSION=3.7.3
# Tue, 11 Jun 2019 03:56:59 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Tue, 11 Jun 2019 03:57:00 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 11 Jun 2019 03:57:00 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Tue, 11 Jun 2019 03:57:05 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 11 Jun 2019 03:57:06 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:34d3ef0e6f1ff3be371d86c57ace6652cfebba770c522ecb77770e635c66e696`  
		Last Modified: Mon, 10 Jun 2019 23:46:25 GMT  
		Size: 45.2 MB (45197640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fc063f1d64e7e2207325ea5d8e8bd20d7eeb5335ec9e2b74895aa6716554940`  
		Last Modified: Tue, 11 Jun 2019 01:50:20 GMT  
		Size: 10.3 MB (10314034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c889930bae60ac0b0b8285fdfa660853def739db23075cd2f465f40bc2cb7254`  
		Last Modified: Tue, 11 Jun 2019 01:50:16 GMT  
		Size: 4.4 MB (4372230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee22fc8117545ae9c114a231a110c430652fe3a26ca235784ec115eedc9f0418`  
		Last Modified: Tue, 11 Jun 2019 01:50:36 GMT  
		Size: 50.5 MB (50489321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:291770e012d4a1b08934d71ed363e66862915f1baab2787d609dddd23422fc6e`  
		Last Modified: Tue, 11 Jun 2019 01:51:13 GMT  
		Size: 207.1 MB (207130967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d598759276cb811125cd02b0eb5668ee94105111bb0326c67483a57c1964d27`  
		Last Modified: Tue, 11 Jun 2019 04:05:09 GMT  
		Size: 5.9 MB (5896010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a8f842e0bf29a9efdf9bb5a6242f0c9de40c1180d376f0cc02f0f02a0fac511`  
		Last Modified: Tue, 11 Jun 2019 04:05:29 GMT  
		Size: 24.3 MB (24289905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd973e17c68ebca4b579e70153467328a054e0a0f1d273ce5bd4f4dc9267d39`  
		Last Modified: Tue, 11 Jun 2019 04:05:23 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df7e83feb12b3bc24a44bec957811d68e9b19b04cf3c501099fd80d75d22175d`  
		Last Modified: Tue, 11 Jun 2019 04:05:24 GMT  
		Size: 1.8 MB (1820817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:latest` - windows version 10.0.14393.2972; amd64

```console
$ docker pull python@sha256:a9cd4121d66af80cc4316e118873804f3d84e42f4f53565f44b05e479d948b9a
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.8 GB (5759593147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2780a2e461bf64f0f1c135443a37dd042d7bf12c664a6426ae0897387aa39eb`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 22 Nov 2016 23:24:34 GMT
RUN Apply image 1607-RTM-amd64
# Sat, 18 May 2019 22:44:29 GMT
RUN Install update ltsc2016-amd64
# Wed, 22 May 2019 12:40:21 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 22 May 2019 14:10:09 GMT
ENV PYTHON_VERSION=3.7.3
# Wed, 22 May 2019 14:10:10 GMT
ENV PYTHON_RELEASE=3.7.3
# Wed, 22 May 2019 14:12:46 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 22 May 2019 14:12:48 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 22 May 2019 14:14:27 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 22 May 2019 14:14:29 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 18 Sep 2018 20:20:50 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:953249f92c3ef08a99d71358fd672da16a7dcc44032ff3356502f31ec8a9c0bb`  
		Last Modified: Sun, 19 May 2019 22:50:45 GMT  
		Size: 1.6 GB (1629802216 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:238abb146382d28000f03a82c40be99cbfac99a1480f9d23f8a6420cafc6b083`  
		Last Modified: Wed, 22 May 2019 13:21:05 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a568c2ae299aa0ae591ce11919294889b7b84535ddbe09f43e0271f5a2cace78`  
		Last Modified: Wed, 22 May 2019 14:49:39 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91cc263c8d673cdc18270397249c1bd88841a1f0d7b17c2a2c61bc38e71da242`  
		Last Modified: Wed, 22 May 2019 14:49:36 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0d1e94d709941609120cf4a8eed6998f133c5efe37a91ebd86bd0ec9cf227ea`  
		Last Modified: Wed, 22 May 2019 14:50:40 GMT  
		Size: 49.8 MB (49828109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af13c57134f4fab8ea4d3a265eb876e98a912c64608db2e13ff79e2c9cf339cf`  
		Last Modified: Wed, 22 May 2019 14:49:36 GMT  
		Size: 1.2 KB (1203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d476079965e5bbf4c45d703dca5f2220b5a53c7aecb88f205005b68907df5373`  
		Last Modified: Wed, 22 May 2019 14:49:49 GMT  
		Size: 10.0 MB (9970888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9bf93c8363acae5ca1a3828f15600da657a94de9c9ca02a250b408601d16afa`  
		Last Modified: Wed, 22 May 2019 14:49:36 GMT  
		Size: 1.2 KB (1208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:latest` - windows version 10.0.17134.766; amd64

```console
$ docker pull python@sha256:58cda36bb6cb1f6d874e8f0ebe61ce656d1c8fbc084e72175787b39da4f96f5e
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.4 GB (2358026052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5130cd328aa279f7bdf4f9d72d79619cca9d41f2c1d7a3363aae256d8ad849df`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 12 Apr 2018 09:20:54 GMT
RUN Apply image 1803-RTM-amd64
# Sat, 18 May 2019 18:41:13 GMT
RUN Install update 1803-amd64
# Wed, 22 May 2019 12:50:01 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 22 May 2019 14:14:38 GMT
ENV PYTHON_VERSION=3.7.3
# Wed, 22 May 2019 14:14:39 GMT
ENV PYTHON_RELEASE=3.7.3
# Wed, 22 May 2019 14:16:59 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 22 May 2019 14:17:01 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 22 May 2019 14:18:02 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 22 May 2019 14:18:04 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:d9e8b01179bfc94a5bdb1810fbd76b999aa52016001ace2d3a4c4bc7065a9601`  
		Last Modified: Tue, 18 Sep 2018 22:43:55 GMT  
		Size: 1.7 GB (1659688273 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:efe507359c3c7c22852c567a5a9b6b88cbc668a5acaa89cc859086851c871ef1`  
		Last Modified: Sun, 19 May 2019 18:54:28 GMT  
		Size: 643.8 MB (643768459 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:437e42e2c79862963e84efa4879b7522ff44416964747070df92412c08b9d147`  
		Last Modified: Wed, 22 May 2019 13:23:01 GMT  
		Size: 1.2 KB (1207 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d0c9c4061c5ee630ddd2789d780cc945d5aad1f16fcf542dc1ecd3b0229905c`  
		Last Modified: Wed, 22 May 2019 14:51:08 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27271a6aa13e5f7a54150386e62d25d5f2c922be4450eb49eb578d181b420c21`  
		Last Modified: Wed, 22 May 2019 14:51:05 GMT  
		Size: 1.2 KB (1215 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:641b6de88c861459f6497d38bdcf7dfc4282ce29cefa79e527ced52eff1fddbd`  
		Last Modified: Wed, 22 May 2019 14:51:28 GMT  
		Size: 49.4 MB (49430798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2ad7775919f520e4f95c17741898518cb88e47f31453c30059c023c7bceca9b`  
		Last Modified: Wed, 22 May 2019 14:51:05 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32e47dbcf62150d2fb03bae51a0099c3b42f50136a48dbc6e5a9475a63a8272d`  
		Last Modified: Wed, 22 May 2019 14:51:16 GMT  
		Size: 5.1 MB (5132494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfbc176fe3041fb27f4f94e8780bde8523779cea73f58ef2333e7628a2f409db`  
		Last Modified: Wed, 22 May 2019 14:51:05 GMT  
		Size: 1.2 KB (1196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:latest` - windows version 10.0.17763.504; amd64

```console
$ docker pull python@sha256:94f2256675cdb7db876a9529d6d3791e9e139a87aa6b2f72635ad9057f633e4f
```

-	Docker Version: 18.03.1-ee-4
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.1 GB (2133255379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:013361db61e242a612f1683af10583f4cad7bce34932c23940733005f7ec7ec1`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sat, 15 Sep 2018 09:10:26 GMT
RUN Apply image 1809-RTM-amd64
# Sat, 18 May 2019 18:40:00 GMT
RUN Install update 1809-amd64
# Wed, 22 May 2019 12:57:16 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 22 May 2019 14:18:22 GMT
ENV PYTHON_VERSION=3.7.3
# Wed, 22 May 2019 14:18:23 GMT
ENV PYTHON_RELEASE=3.7.3
# Wed, 22 May 2019 14:20:35 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 22 May 2019 14:20:36 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 22 May 2019 14:21:40 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 22 May 2019 14:21:42 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:65014b3c312172f10bd6701a063f9b5aaf9a916c2d2cb843d406a6f77ded3f8d`  
		Last Modified: Tue, 13 Nov 2018 18:50:17 GMT  
		Size: 1.5 GB (1534685324 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:b16cfeeaf4b37af9fc146f7043ceb629c1bc50ace967227817e50e47f4a71529`  
		Last Modified: Sun, 19 May 2019 19:09:22 GMT  
		Size: 544.4 MB (544441311 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:51cd7ddd4054cb845626f99a0b0388fcfe1f6e9521bd4a1a8337620d6452ef34`  
		Last Modified: Wed, 22 May 2019 13:24:53 GMT  
		Size: 1.2 KB (1209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ffbaf5590486c3e4642731a25025419984b73ffd09eba4113dea6ef927820d17`  
		Last Modified: Wed, 22 May 2019 14:51:57 GMT  
		Size: 1.2 KB (1205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25b458fed7a408f6e7edbd491c7eaffd6568473ec9b69f6a1e6c5c391a8370af`  
		Last Modified: Wed, 22 May 2019 14:51:53 GMT  
		Size: 1.2 KB (1213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f1fe1955fe1d67ce808616d37f5c1d852a0809c7754293b66e38bb7ea1b4e2e6`  
		Last Modified: Wed, 22 May 2019 14:52:19 GMT  
		Size: 49.0 MB (49005139 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cca38395bdf7922840885404e348a9053fb5b4fb691a3d5cb786c0273d85548e`  
		Last Modified: Wed, 22 May 2019 14:51:54 GMT  
		Size: 1.2 KB (1202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a732ed8d9fea79b36d2c4b3848d6ac6c953a08404c346ec3baf3972c33bf0c59`  
		Last Modified: Wed, 22 May 2019 14:52:05 GMT  
		Size: 5.1 MB (5117564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f55a72e418aa1d0a229cc39db03e67a166027994cb18d4b47b0e5ffa06840b50`  
		Last Modified: Wed, 22 May 2019 14:51:53 GMT  
		Size: 1.2 KB (1212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
