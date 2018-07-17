## `python:stretch`

```console
$ docker pull python@sha256:9964643629bf941d350c2f2c9d0c6d46fcbde38ffefc1f2fd737cad1ea147459
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

### `python:stretch` - linux; amd64

```console
$ docker pull python@sha256:c433593cf627e4a48d37b990f719a71f69caa8ba29d6583ff601c55ede671a5a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.5 MB (353514670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:746a826ed9d75f00d9632d83b072def5641bbfa04d0608276af412dec0a314f4`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 17 Jul 2018 00:27:24 GMT
ADD file:370028dca6e8ca9ed228549d52231cf8139515cc3a14c00aaed75a60b679775f in / 
# Tue, 17 Jul 2018 00:27:24 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 03:12:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:13:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 03:13:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 03:16:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:03:09 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 11:03:10 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 11:03:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:03:26 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Tue, 17 Jul 2018 11:03:26 GMT
ENV PYTHON_VERSION=3.7.0
# Tue, 17 Jul 2018 11:06:25 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Tue, 17 Jul 2018 11:06:27 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 17 Jul 2018 11:06:27 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 11:06:35 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 17 Jul 2018 11:06:35 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:55cbf04beb7001d222c71bfdeae780bda19d5cb37b8dbd65ff0d3e6a0b9b74e6`  
		Last Modified: Tue, 17 Jul 2018 00:42:31 GMT  
		Size: 45.3 MB (45310044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1607093a898cc241de8712e4361dcd907898fff35b945adca42db3963f3827b3`  
		Last Modified: Tue, 17 Jul 2018 03:53:34 GMT  
		Size: 10.7 MB (10740168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a8ea045c9261c180a34df19cfc9bb3c3f28f29b279bf964ee801536e8244f2f`  
		Last Modified: Tue, 17 Jul 2018 03:53:32 GMT  
		Size: 4.3 MB (4336107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4eee24d4dacb41c21411e0477a741655303cdc48b18a948632c31f0f3a70bb8`  
		Last Modified: Tue, 17 Jul 2018 03:54:59 GMT  
		Size: 50.1 MB (50064642 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b59856e9f0abefedc34fcefc3f57c4955cc384785663745532ddc31a89641c83`  
		Last Modified: Tue, 17 Jul 2018 03:57:05 GMT  
		Size: 213.2 MB (213190110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b023afffd10b07f646968c0f1405ac7b611feca6da6fbc2bb8c55f2492bdde07`  
		Last Modified: Tue, 17 Jul 2018 11:58:23 GMT  
		Size: 5.7 MB (5744700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13e2e806d7c88f357958d798c097b4fc0cd6e3aea888ad7e584fba5a0e7d3ec9`  
		Last Modified: Tue, 17 Jul 2018 11:58:30 GMT  
		Size: 22.3 MB (22341177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e90bc178f0458c231d8e355756f9f0f51e22a4e6c5ff8c9c6cb8e48d2c158000`  
		Last Modified: Tue, 17 Jul 2018 11:58:20 GMT  
		Size: 245.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b381a7ef2d268da7e0fee1c43a469c13e93c948e550bf9e1dc68102f39138b15`  
		Last Modified: Tue, 17 Jul 2018 11:58:22 GMT  
		Size: 1.8 MB (1787477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:stretch` - linux; arm variant v5

```console
$ docker pull python@sha256:50debc41444fbfcac1db7c5f7ae9aa75066a70ace3e8b5673ae59d0cf62e4521
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **336.4 MB (336391868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:acf7747864e5c4443f8128448d0ae9d1f543721002e416c1eb077ac2e9a08ecc`
-	Default Command: `["python3"]`

```dockerfile
# Wed, 27 Jun 2018 08:53:37 GMT
ADD file:d4d15d0259f3c83403f3d0565cbcd5c1d54e80367c46d9a05af1454c0d0e13ac in / 
# Wed, 27 Jun 2018 08:53:37 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 09:38:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:38:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 09:38:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:40:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:59:51 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 09:59:51 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 10:06:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 10:06:59 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Tue, 17 Jul 2018 10:06:59 GMT
ENV PYTHON_VERSION=3.7.0
# Tue, 17 Jul 2018 10:10:29 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Tue, 17 Jul 2018 10:10:30 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 17 Jul 2018 10:10:30 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 10:10:39 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 17 Jul 2018 10:10:39 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:d8a10c27f1911457fcf0131342ab203c0d98290ccb8731364e7f57f489cadcd4`  
		Last Modified: Wed, 27 Jun 2018 09:02:36 GMT  
		Size: 44.0 MB (44040132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac190b263215d7b1af43574c289285d9adca5216b1188d00cd5d71104d352db2`  
		Last Modified: Wed, 27 Jun 2018 09:48:30 GMT  
		Size: 9.8 MB (9842587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2324a9fd4ad44784b0c5e6d4b25dd11d1cdb7ed900fbcf69c5aa74391a37a10`  
		Last Modified: Wed, 27 Jun 2018 09:48:29 GMT  
		Size: 4.2 MB (4153804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f66256cabdbc7741d09f42298fe50050b54a4c15b5961aba608f067ab0ef1de7`  
		Last Modified: Wed, 27 Jun 2018 09:49:04 GMT  
		Size: 48.3 MB (48262675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c925d031c160388663e82b7d2d4df8da819e2bf66e355daae5223c89fc134002`  
		Last Modified: Wed, 27 Jun 2018 09:50:14 GMT  
		Size: 201.4 MB (201418127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7dc8bba2ec5d7fa31a68c4c75fc00621afeaf4c47a8a0f9eeeebe7fd69f288c4`  
		Last Modified: Tue, 17 Jul 2018 11:21:48 GMT  
		Size: 5.5 MB (5528297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f27e98f1f79499386a6f7291e9b5dc85b1333735fae70d324f0cd5b25a22f46e`  
		Last Modified: Tue, 17 Jul 2018 11:21:54 GMT  
		Size: 21.4 MB (21358297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1721799180755fc41052dd5002b39997f80a3dbd819d55aa162df928b7dfe07d`  
		Last Modified: Tue, 17 Jul 2018 11:21:46 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd3de66ca5f94ecaa9235b45c1640027ed7a2647bb87cdffe5ac4b43990f17e2`  
		Last Modified: Tue, 17 Jul 2018 11:21:47 GMT  
		Size: 1.8 MB (1787708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:stretch` - linux; arm variant v7

```console
$ docker pull python@sha256:5b3bda06a6b329fc2f7e542a18098c4d89400a2d51cab0b55365f01a7e020c37
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **323.7 MB (323743700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d2499a8c3f3fb5f654344e885d48b7c9080b3a02e5c148d3f160d8a86b5e2e4`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 17 Jul 2018 12:05:25 GMT
ADD file:77cbe27c4436cc4c9d81bee6c5ae0fee0c6d1708813d34abd2af2d3ebd7d96a5 in / 
# Tue, 17 Jul 2018 12:05:26 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:46:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:46:56 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 13:47:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:49:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:58:55 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 13:58:55 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 18:40:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 18:40:48 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Tue, 17 Jul 2018 18:40:49 GMT
ENV PYTHON_VERSION=3.7.0
# Tue, 17 Jul 2018 18:43:58 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Tue, 17 Jul 2018 18:43:59 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 17 Jul 2018 18:43:59 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 18:44:08 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 17 Jul 2018 18:44:08 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:a92bc499a4699bc1d9bd6631daec00b7b440346221ce91af635e3460f7d4d70b`  
		Last Modified: Tue, 17 Jul 2018 12:17:32 GMT  
		Size: 42.1 MB (42060835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d56e34dc5db45e25c590c9a353c3562d66546b06312f418f9aae4661c28ee94f`  
		Last Modified: Tue, 17 Jul 2018 14:10:12 GMT  
		Size: 9.4 MB (9440199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:948d2574fcb06c4081812a267179437a8d624eba8741a8fb5a6e3ef655c3dcff`  
		Last Modified: Tue, 17 Jul 2018 14:10:10 GMT  
		Size: 3.9 MB (3912954 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94ced04c5b3fc619ca9252df05a702d37000cbcc3fbac10e5e485428deba85ae`  
		Last Modified: Tue, 17 Jul 2018 14:10:55 GMT  
		Size: 46.4 MB (46380475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cb38878a7d651556b67958bf17f303eaa9d80fd58ef30ddad40818a750db4c2`  
		Last Modified: Tue, 17 Jul 2018 14:12:09 GMT  
		Size: 194.0 MB (193983246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18607ae08cc5849509581e2e9ae4a945be5f4f96768c9272da607a43aed30b0b`  
		Last Modified: Tue, 17 Jul 2018 18:58:34 GMT  
		Size: 5.2 MB (5193854 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:116ab7a2098194af64311df9ba1d1abe6613589017e010c10b01784082407c2d`  
		Last Modified: Tue, 17 Jul 2018 18:58:40 GMT  
		Size: 21.0 MB (20984169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ebb855eababa635ddd59087a07e32236d5d2d2e6524e43f2b21d756f4535b428`  
		Last Modified: Tue, 17 Jul 2018 18:58:33 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c75971a6c84bdfae35811cc3f9403c90d1036c94d2f870fcb6a246e3aff9a4`  
		Last Modified: Tue, 17 Jul 2018 18:58:33 GMT  
		Size: 1.8 MB (1787729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:stretch` - linux; arm64 variant v8

```console
$ docker pull python@sha256:c9a4dc38e1c8415a1b2e679cc4ea4315db326b41c251c2aca42da060ce6c02d3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.9 MB (334885318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:23a4582d0de38fa82236ff86eef3a5fb54e22bbae4ed02ac6c9405ba0f132b07`
-	Default Command: `["python3"]`

```dockerfile
# Wed, 27 Jun 2018 08:47:01 GMT
ADD file:0f69db95e9a06ee21c38014c8bc6c142be97ec4d5127ba83f1d0ef48806f7415 in / 
# Wed, 27 Jun 2018 08:47:02 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:46:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:47:23 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 10:48:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:59:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:08:10 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 11:08:11 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 11:32:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:32:29 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Tue, 17 Jul 2018 11:32:30 GMT
ENV PYTHON_VERSION=3.7.0
# Tue, 17 Jul 2018 11:37:57 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Tue, 17 Jul 2018 11:38:04 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 17 Jul 2018 11:38:06 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 11:38:27 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 17 Jul 2018 11:38:30 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:6054c6775a4e4515d2365ad9337e322dd5c6ad0e0bc8e5bb6b0252461e71afc4`  
		Last Modified: Wed, 27 Jun 2018 08:57:38 GMT  
		Size: 43.1 MB (43115791 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d57f1ab872b53f8ac8eff946226a3ff9d5fb929656964b75dae06303e9c8ef4`  
		Last Modified: Wed, 27 Jun 2018 11:06:29 GMT  
		Size: 9.7 MB (9722190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:662e63f6b578575fadc2ae00bf10794a2a45166c03105d940c919da9f78c1c43`  
		Last Modified: Wed, 27 Jun 2018 11:06:28 GMT  
		Size: 4.1 MB (4088526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:242c1552cb593c1f860dd482a21f1607a2965ef9ac5b5a29aad2a768ce9d699a`  
		Last Modified: Wed, 27 Jun 2018 11:07:20 GMT  
		Size: 48.0 MB (48002203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b998f5fde2603980e88247b2183aa042f85bef2b36f90e0a7b32472aebdbeb43`  
		Last Modified: Wed, 27 Jun 2018 11:08:58 GMT  
		Size: 200.6 MB (200586169 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5d359b8d72452782b726702fa4bd8cbafaa78d08e4200fec9047b63609c0967`  
		Last Modified: Tue, 17 Jul 2018 13:55:05 GMT  
		Size: 5.5 MB (5499916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:780947a0bff4c1961a1730121ac55509ddceb450efc125ef8e939e2ffb27167a`  
		Last Modified: Tue, 17 Jul 2018 13:55:13 GMT  
		Size: 22.1 MB (22082838 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b4880fae8dcc2c742d90f9ab1153f7f82bc63f55a533bdf613eca3f7e29acff`  
		Last Modified: Tue, 17 Jul 2018 13:55:03 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8401a6312c627498029d008b1833adf0f6b3fd5dd2b2ec6a2337d4b86b6c274f`  
		Last Modified: Tue, 17 Jul 2018 13:55:04 GMT  
		Size: 1.8 MB (1787444 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:stretch` - linux; 386

```console
$ docker pull python@sha256:3d1ef3a334616ea88885926d0bfa780f677087fbdb24af8cc83e93e5c62043f9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **360.0 MB (360018094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ae4521adff8b84375445d0423db7300a4fc7443394002224d424601a0d05361`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 17 Jul 2018 10:49:17 GMT
ADD file:be09029a70a8ca76c88918bd3070fb0cbd97606c95450ec1d27efa9f78536d6f in / 
# Tue, 17 Jul 2018 10:49:20 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:34:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:34:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:35:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:38:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 20:51:47 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 20:51:47 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 20:52:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 20:52:10 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Tue, 17 Jul 2018 20:52:11 GMT
ENV PYTHON_VERSION=3.7.0
# Tue, 17 Jul 2018 20:55:18 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Tue, 17 Jul 2018 20:55:19 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 17 Jul 2018 20:55:20 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 20:55:32 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 17 Jul 2018 20:55:35 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:79324aeae468dc95e9d1ad7d17eccb16f424671f297c1c8231f48ad8b2a5a949`  
		Last Modified: Tue, 17 Jul 2018 11:07:28 GMT  
		Size: 46.0 MB (46037522 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d55059f59399b1edb44f6fccf01b4b41c46365022205a35f92fa4aee831f1bac`  
		Last Modified: Tue, 17 Jul 2018 15:15:31 GMT  
		Size: 10.8 MB (10752710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b748c8a9e197a5c36217dc0236e60923d398eef3c44073cffeed563cb61421c3`  
		Last Modified: Tue, 17 Jul 2018 15:15:28 GMT  
		Size: 4.6 MB (4555355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d33fbb92cee00a6946f3439c773b2a26dfb2db55c4c789ca3e7b53c3c7840823`  
		Last Modified: Tue, 17 Jul 2018 15:16:38 GMT  
		Size: 51.6 MB (51592718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a0578b14037a0f8bdb93132eb6a4fe86133b55a4aa25ac5f97a9872020c7777`  
		Last Modified: Tue, 17 Jul 2018 15:18:57 GMT  
		Size: 218.3 MB (218257626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f65dcb3ab2b02823f38393451a2f9d295e106e32a37f57acae86eaa50e00ed7`  
		Last Modified: Tue, 17 Jul 2018 21:32:01 GMT  
		Size: 6.1 MB (6060453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3212679d11a060859c7e1420bea4972da4c781e6194388c2e3dc7f80d984d388`  
		Last Modified: Tue, 17 Jul 2018 21:32:08 GMT  
		Size: 21.0 MB (20974008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:466a5c67ec78f3b2a4879951fd5c79639738163576d3b4daa4e71daef32ff636`  
		Last Modified: Tue, 17 Jul 2018 21:31:58 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:139bbbef73e608d5b3e261e1aff63bbe95c29877ca77b5f43f3049298f17c15a`  
		Last Modified: Tue, 17 Jul 2018 21:32:00 GMT  
		Size: 1.8 MB (1787462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:stretch` - linux; ppc64le

```console
$ docker pull python@sha256:740e1ac9f4c49b703204751ce40feccc2583a97e713389a99d6a751c92b630ef
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **349.0 MB (348961035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9945c9295ef8e052d73a00a1d612c9062f31dd02ae4f61ed5f1cb62822d3dda`
-	Default Command: `["python3"]`

```dockerfile
# Wed, 27 Jun 2018 08:21:02 GMT
ADD file:d33614b8c4f66955a915157517ae82c889e6367cfc17a0d89ff64b91c984d7ef in / 
# Wed, 27 Jun 2018 08:21:04 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 10:15:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:15:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Jun 2018 10:16:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 10:22:16 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 11:05:27 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 11:05:29 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 10:57:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 10:57:54 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Tue, 17 Jul 2018 10:57:56 GMT
ENV PYTHON_VERSION=3.7.0
# Tue, 17 Jul 2018 11:01:53 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Tue, 17 Jul 2018 11:01:56 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 17 Jul 2018 11:01:58 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 11:02:13 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 17 Jul 2018 11:02:14 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:80b856b58d8f74e5617ff0b59e5192bd26540b867890becb80ac3b1766e68d1d`  
		Last Modified: Wed, 27 Jun 2018 08:30:43 GMT  
		Size: 45.6 MB (45587028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31a98fa77416c63ffab99d98aea7befc5a0d53ec23ebff6abaa40b528d9ca971`  
		Last Modified: Wed, 27 Jun 2018 10:28:49 GMT  
		Size: 10.0 MB (9976097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd479833a536a5f1d2afb81f4d98a720d841227f1a3e2345238f8f966ace8c59`  
		Last Modified: Wed, 27 Jun 2018 10:28:48 GMT  
		Size: 4.3 MB (4289938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af4645fc917f498a9483cc812c5015aa0bcb956be63b25957067bc030e84289c`  
		Last Modified: Wed, 27 Jun 2018 10:29:34 GMT  
		Size: 50.1 MB (50059206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc9905d349ea37d70bac8f4d7d7090c535f3cc480c216cce1de8ecce07d1ba2a`  
		Last Modified: Wed, 27 Jun 2018 10:30:49 GMT  
		Size: 208.8 MB (208812186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aee02ccbf40c6c9008a81ae66cb115050c311a276142a7008c5ac82087bcad68`  
		Last Modified: Tue, 17 Jul 2018 13:31:47 GMT  
		Size: 5.8 MB (5779453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6b1de81016e6d338f768c7b01d6a1942b6ffa033d49bfc07ce61b68eb99b4842`  
		Last Modified: Tue, 17 Jul 2018 13:31:56 GMT  
		Size: 22.7 MB (22669206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38c073a58c579f5f5145b58b9e83920f43ab11d687351823becf9266dda9aea`  
		Last Modified: Tue, 17 Jul 2018 13:31:41 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71df6a13c3d224e5d680676dccd58a54002ddc35721c29cc9519bc7de79746d4`  
		Last Modified: Tue, 17 Jul 2018 13:31:43 GMT  
		Size: 1.8 MB (1787682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:stretch` - linux; s390x

```console
$ docker pull python@sha256:27eb448f86211e1517a58eb5cb94ec1bece5dea59d74f09c49e408405f8e881e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **347.3 MB (347258819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73ad6fd8668f53580d24f7934a2fb697939fdae505fa9a624b71ad5722d47ece`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 17 Jul 2018 11:43:17 GMT
ADD file:8359a87f8de229cd148a6a7f227042a80cb73366ce79cb1a866426a6a91103e7 in / 
# Tue, 17 Jul 2018 11:43:18 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:21:02 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:21:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 13:21:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:22:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:29:36 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 15:29:36 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 15:29:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 15:29:45 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Tue, 17 Jul 2018 15:29:45 GMT
ENV PYTHON_VERSION=3.7.0
# Tue, 17 Jul 2018 15:31:30 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Tue, 17 Jul 2018 15:31:31 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 17 Jul 2018 15:31:31 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 15:31:36 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 17 Jul 2018 15:31:36 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:9351e2bf09f4d9a6beab73bfd3f913106d30008c3ebde119c4b5820670de53e1`  
		Last Modified: Tue, 17 Jul 2018 11:46:37 GMT  
		Size: 45.2 MB (45198375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10c6d95a7f071ed59620c691d7cb2ba7909eebd13ad42f2edea64fa6345b1194`  
		Last Modified: Tue, 17 Jul 2018 13:30:29 GMT  
		Size: 10.3 MB (10267412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4fda1014bc69bc1831d085530e0e2092c9eaa1f92f6e0861aa060dc4580c9b9`  
		Last Modified: Tue, 17 Jul 2018 13:30:27 GMT  
		Size: 4.4 MB (4366785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9ee6f36da521265c10265dc58eb783f0fcec8fdfef13b9b8520618833e2208a0`  
		Last Modified: Tue, 17 Jul 2018 13:30:51 GMT  
		Size: 50.5 MB (50482326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:983c41f1f7f1fce78c6b44c4e62370183500df30489ef8a1813f18ac5c7cb5fa`  
		Last Modified: Tue, 17 Jul 2018 13:31:36 GMT  
		Size: 205.2 MB (205214662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59dfcc4311a6df01b12e97570d663e13d5e7e95f46216bb59f02c9db16ff372b`  
		Last Modified: Tue, 17 Jul 2018 15:44:06 GMT  
		Size: 5.8 MB (5808847 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:724319d4b294ae1c854be50f1d9f4bb77cc8e38499afeb860242a30c58776fcb`  
		Last Modified: Tue, 17 Jul 2018 15:44:10 GMT  
		Size: 24.1 MB (24132916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e3338c98de58744778c21fc769f96fd8f9a4fe273a90819764dfd1b5139e2fe`  
		Last Modified: Tue, 17 Jul 2018 15:44:05 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:023b16ed4e91881ca38e400160f92ddab0ea82492be5ffa0bcdc64c0ad32252c`  
		Last Modified: Tue, 17 Jul 2018 15:44:05 GMT  
		Size: 1.8 MB (1787257 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
