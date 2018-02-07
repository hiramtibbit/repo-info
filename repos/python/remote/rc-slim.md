## `python:rc-slim`

```console
$ docker pull python@sha256:3149eb42517cb64cf39be48b17e888b12f526aef974bad69969dce30752b45c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le

### `python:rc-slim` - linux; amd64

```console
$ docker pull python@sha256:3cb8e9e5c3ed250fbc2b47ebf0a954cd35f7288816a2b24a9272cb11f294f04d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.5 MB (50479681 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a1b97267afa9376dc198789f2e04a9ca70fea462007c3b5f145c935f4fef6d9`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 12 Dec 2017 01:44:43 GMT
ADD file:f30a8b5b7cdc9ba33a250899308b490baa9f7a9b29d3a85bd16200aa0a28a04a in / 
# Tue, 12 Dec 2017 01:44:43 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 06:31:47 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 06:31:47 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 06:31:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 06:32:01 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 07 Feb 2018 02:03:35 GMT
ENV PYTHON_VERSION=3.7.0b1
# Wed, 07 Feb 2018 02:06:16 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 07 Feb 2018 02:06:24 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 07 Feb 2018 02:06:25 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 07 Feb 2018 02:06:35 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 07 Feb 2018 02:06:38 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:e7bb522d92ff6d4e5b2087409b0fc783c2e3b06acf87bee739ee47d90bf02e96`  
		Last Modified: Tue, 12 Dec 2017 01:54:56 GMT  
		Size: 22.5 MB (22485719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6f81828e8d84038eea557f8161bb2b821fe5947e4667509a16895982fed3d08`  
		Last Modified: Tue, 12 Dec 2017 06:57:35 GMT  
		Size: 3.5 MB (3452132 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b08be728139fcd40b222cc1a3afca670b7ef66531a5b0593103a057d26991aa`  
		Last Modified: Wed, 07 Feb 2018 02:48:43 GMT  
		Size: 22.6 MB (22587301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4fd3647bbc542ff0a6207cc764d17227d5c492b5a085ceec6ab9ee920461f62`  
		Last Modified: Wed, 07 Feb 2018 02:48:35 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:723fb7d1cfa8c8fc71f503a26bbfd4da9aed0a7d155c73be8545327759f555c2`  
		Last Modified: Wed, 07 Feb 2018 02:48:37 GMT  
		Size: 2.0 MB (1954288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:rc-slim` - linux; arm variant v5

```console
$ docker pull python@sha256:b46ab389c5ab4e9887c96bcaaa663aa997a1c763b2507d2cba476dc8d002e791
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47893766 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b545e83055e498656018ef2b0cf513b9c49ffd14d4c7faa2cac784e54c3c0434`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 12 Dec 2017 21:02:20 GMT
ADD file:f69e5781e9ff2a9867d94175d91d31553e07613bf4b50a1064274ed21a5ed353 in / 
# Tue, 12 Dec 2017 21:02:21 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:32:47 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 21:32:47 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 21:33:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:33:05 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 07 Feb 2018 00:03:57 GMT
ENV PYTHON_VERSION=3.7.0b1
# Wed, 07 Feb 2018 00:08:29 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 07 Feb 2018 00:08:30 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 07 Feb 2018 00:08:30 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 07 Feb 2018 00:08:47 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 07 Feb 2018 00:08:47 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:20f319b2549a8d631c2e8034bfc3f9c12042d86a686470a8addd2fb7bc8c688c`  
		Last Modified: Tue, 12 Dec 2017 21:12:53 GMT  
		Size: 21.2 MB (21160630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:437d3348669614df09b987f88fb3c30a248226b868fef41cb4c010d141b75eea`  
		Last Modified: Tue, 12 Dec 2017 22:03:45 GMT  
		Size: 3.1 MB (3104416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b6d2188ec6898d5e5d4c7c323c296369402c62ad4e54d6fe9b93e12725e38c48`  
		Last Modified: Wed, 07 Feb 2018 00:32:13 GMT  
		Size: 21.7 MB (21674684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c7d6f6d7c2ceaa77b9ed1992444716726dae42d0cb760d967861de40f94137a`  
		Last Modified: Wed, 07 Feb 2018 00:32:04 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e8f36d76a05b82f9dd6d7999a76cb4bfb4491c85729321cecd77d2672d19b17`  
		Last Modified: Wed, 07 Feb 2018 00:32:05 GMT  
		Size: 2.0 MB (1953794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:rc-slim` - linux; arm variant v7

```console
$ docker pull python@sha256:47891d21ab2865becb57f6413204160a318e4ccd371df90a4d10eae61317e391
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45463584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a5fa0272da95634ed3faa1f5407b3da2bca5eb4e708c058fb83d5f923b0a43d`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 12 Dec 2017 13:33:42 GMT
ADD file:cfde12259adb7102e76690e986f1b9b07967a8984c85d0cead09969f5de8b8cc in / 
# Tue, 12 Dec 2017 13:33:42 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 15:55:45 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 15:55:46 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 15:55:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 15:56:04 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 07 Feb 2018 08:03:36 GMT
ENV PYTHON_VERSION=3.7.0b1
# Wed, 07 Feb 2018 08:07:15 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 07 Feb 2018 08:07:16 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 07 Feb 2018 08:07:17 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 07 Feb 2018 08:07:30 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 07 Feb 2018 08:07:30 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:cd8b673adb84fd5eae3444d0475addad7e8908a8332704c4407baa97e9b0b284`  
		Last Modified: Tue, 12 Dec 2017 13:45:48 GMT  
		Size: 19.3 MB (19271028 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e934c10d3aa46f4e7936f3c6c5ccd10278fe315447a98d165759048fe748367e`  
		Last Modified: Tue, 12 Dec 2017 16:56:08 GMT  
		Size: 2.9 MB (2932513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efbd8b52b84e0768fd764dfec0d2dd0304d61c9d333708ae19e7812568c60a01`  
		Last Modified: Wed, 07 Feb 2018 08:28:37 GMT  
		Size: 21.3 MB (21305891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cdea04c9ab4530995a2a561b041b6328b24ea386db663f3b756d85ebe770195`  
		Last Modified: Wed, 07 Feb 2018 08:28:31 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bd3f4ca47bb7cee11011e5f21b0f320bedf842fd4fd1a41a366d53477083338`  
		Last Modified: Wed, 07 Feb 2018 08:28:32 GMT  
		Size: 2.0 MB (1953911 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:rc-slim` - linux; arm64 variant v8

```console
$ docker pull python@sha256:2400ae3bf898d82af703630321bdead2d75ce0dc336b922b66d353d70a9a7747
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47759128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b04726199b0f98d90f18ee810dee01364311e567abc1271855390a260dcab13`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 12 Dec 2017 18:34:13 GMT
ADD file:6e068c7cc5397bfb4ec60dab4d410c5d3ba724f20ad0129d2032fb509f0eadcd in / 
# Tue, 12 Dec 2017 18:34:14 GMT
CMD ["bash"]
# Sat, 16 Dec 2017 00:12:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Dec 2017 00:12:34 GMT
ENV LANG=C.UTF-8
# Sat, 16 Dec 2017 00:13:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 00:13:00 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 07 Feb 2018 11:46:25 GMT
ENV PYTHON_VERSION=3.7.0b1
# Wed, 07 Feb 2018 11:56:22 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 07 Feb 2018 11:56:24 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 07 Feb 2018 11:56:24 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 07 Feb 2018 11:57:01 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 07 Feb 2018 11:57:02 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:fcad8cfc11c78a53ccf9aafafcb3ded5044dbd181977e6255aea54fbe164f131`  
		Last Modified: Tue, 12 Dec 2017 18:49:05 GMT  
		Size: 20.3 MB (20331270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcf3dfebdb4a7bcb97f0399de11ce8a957d3aed5c964283475091461c1e9a72f`  
		Last Modified: Sat, 16 Dec 2017 01:39:41 GMT  
		Size: 3.1 MB (3090210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ed6996a1449c08ebc2df198b9b15a5494dba983178618448259e1ec4ea3da7`  
		Last Modified: Wed, 07 Feb 2018 12:30:19 GMT  
		Size: 22.4 MB (22382805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68b371b7ce48763b0919359fac661590a6217135a158ae971605cb78d4f27b00`  
		Last Modified: Wed, 07 Feb 2018 12:30:09 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d90c07f84ade17ea93902d0f8f643eb2daed9f6a1d38aec5722d1910325c3c9e`  
		Last Modified: Wed, 07 Feb 2018 12:30:10 GMT  
		Size: 2.0 MB (1954602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:rc-slim` - linux; 386

```console
$ docker pull python@sha256:45e1ada4e411554ab356e8d0961e64b2891477156eb7cfb5dd67f9aa99aeaec8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49801771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cee7b1064c1c0d89e893f2db9cd40e86da619847b1121d01f80113383cfaf5f`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 12 Dec 2017 14:36:09 GMT
ADD file:ef60a5257bf2b5766f692e39f5922bbd6161e45de184b7b138522d53a477c7af in / 
# Tue, 12 Dec 2017 14:36:09 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 21:44:22 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 21:44:22 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 21:44:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:44:35 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 07 Feb 2018 18:43:22 GMT
ENV PYTHON_VERSION=3.7.0b1
# Wed, 07 Feb 2018 18:46:40 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 07 Feb 2018 18:52:56 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 07 Feb 2018 18:52:56 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 07 Feb 2018 18:53:09 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 07 Feb 2018 18:53:10 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:4dbce982b05e209cf10a433462dc417f7816c47b0c1a151c8c93206b299b9a14`  
		Last Modified: Tue, 12 Dec 2017 15:03:13 GMT  
		Size: 23.1 MB (23122456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2aab2c662780665c83834d8da9f9c9acb841fdd67f28a1fc8cfe3d6211b42cc6`  
		Last Modified: Tue, 12 Dec 2017 23:28:03 GMT  
		Size: 3.5 MB (3505813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b1d46f85fbec4119390879e3fbd4bdd05b5a110f59ff886b6c12a9ea5c2d63e6`  
		Last Modified: Wed, 07 Feb 2018 21:07:37 GMT  
		Size: 21.2 MB (21219142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a4cb80f00c15227399fad5194adbd09bb90232b2fcaa87a120a42ce0100b219`  
		Last Modified: Wed, 07 Feb 2018 21:07:28 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6bfb385beb9dc7cff72a56496fbe5cdaf79bf6ea0165dc73800bed57f31d5a5`  
		Last Modified: Wed, 07 Feb 2018 21:07:30 GMT  
		Size: 2.0 MB (1954118 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:rc-slim` - linux; ppc64le

```console
$ docker pull python@sha256:eafb564f2c641b2f890f974c221fdba9be80e96c01357cc7b267a705cd5541ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50796448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:851d5b6fd21d1def0bd08f89791c9399f7274b5bf82866ccddf7899720a101f8`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 12 Dec 2017 01:35:41 GMT
ADD file:896602a6d015367badb26a7ac0bcafc9aa04cbba205925631d315874b6d289ab in / 
# Tue, 12 Dec 2017 01:35:42 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 05:00:06 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 05:00:09 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 05:00:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 05:00:52 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 07 Feb 2018 08:58:53 GMT
ENV PYTHON_VERSION=3.7.0b1
# Wed, 07 Feb 2018 09:20:27 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 07 Feb 2018 09:20:33 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 07 Feb 2018 09:20:36 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 07 Feb 2018 09:21:44 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 07 Feb 2018 09:21:46 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:b8b738bec437a97371af422179183d09cdb031f677b2dba4deaed774655ee9d8`  
		Last Modified: Tue, 12 Dec 2017 01:42:57 GMT  
		Size: 22.7 MB (22739713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:032a8002496e26243467c3623d423ce03e2964737ce2609544b19477620d31dd`  
		Last Modified: Tue, 12 Dec 2017 07:01:11 GMT  
		Size: 3.1 MB (3114545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e968f5ae62a900c2349ff46c412b488b81f509b3263880e3afd46c3f47687358`  
		Last Modified: Wed, 07 Feb 2018 10:03:51 GMT  
		Size: 23.0 MB (22985714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38e1a282757ab6c6fc663bed2c6899348f81e2c96455cace21729277bc93097f`  
		Last Modified: Wed, 07 Feb 2018 10:03:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c38935a8d538f2fd76cec669d18d04942fe506621e55d2d20cfed17bcba44358`  
		Last Modified: Wed, 07 Feb 2018 10:03:45 GMT  
		Size: 2.0 MB (1956236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
