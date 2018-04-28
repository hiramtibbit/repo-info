## `python:3-onbuild`

```console
$ docker pull python@sha256:a39afb2938ec4e9ca9266e61aac61dab225a71fd81891ac1177ce744ea5fef69
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

### `python:3-onbuild` - linux; amd64

```console
$ docker pull python@sha256:f5f77292895a54f494a7da43c6677ea159a5082b92c874ae891f0d03e3b48804
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **271.3 MB (271265835 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c4c6d3e39e028857393ae4866935c59630c95135dfc9725c01890c1b1f570e5`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 13 Mar 2018 21:57:21 GMT
ADD file:bc844c4763367b5f0ac7b9aebf7d43900d98f2aca101b886f185347b24973dbe in / 
# Tue, 13 Mar 2018 21:57:22 GMT
CMD ["bash"]
# Tue, 13 Mar 2018 23:39:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:39:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 13 Mar 2018 23:40:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 13 Mar 2018 23:41:53 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 17:07:14 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 17:07:14 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 17:07:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 17:47:59 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Sat, 31 Mar 2018 01:14:49 GMT
ENV PYTHON_VERSION=3.6.5
# Sat, 31 Mar 2018 01:16:41 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 31 Mar 2018 01:16:42 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 21 Apr 2018 02:55:46 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 21 Apr 2018 02:55:55 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 21 Apr 2018 02:55:55 GMT
CMD ["python3"]
# Sat, 21 Apr 2018 02:57:14 GMT
RUN mkdir -p /usr/src/app
# Sat, 21 Apr 2018 02:57:14 GMT
WORKDIR /usr/src/app
# Sat, 21 Apr 2018 02:57:15 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Sat, 21 Apr 2018 02:57:15 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Sat, 21 Apr 2018 02:57:15 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:f2b6b4884fc8b2f1fcef843f92f7c82c9c149df85ac77e5f0de7a342ae442412`  
		Last Modified: Tue, 13 Mar 2018 22:43:41 GMT  
		Size: 52.6 MB (52608519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fb899b4df216ab398fb05547f86dc371db944cf53dea7913d2f4261ed09e2be`  
		Last Modified: Wed, 14 Mar 2018 00:34:40 GMT  
		Size: 19.3 MB (19266189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:74eaa8be7221e87fae8804464be5f691955f582b6b4efe703095a2c9b041696a`  
		Last Modified: Wed, 14 Mar 2018 00:37:48 GMT  
		Size: 43.3 MB (43254408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6e98fe4040daf34ac9d37d57abf4bb71644014dd4c27ca80c89198849cb242`  
		Last Modified: Wed, 14 Mar 2018 00:38:33 GMT  
		Size: 131.1 MB (131077114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:414666f7554d2dfc8dcaa8ce2c11bd2ad51341c492582e20158cc182e824f2d6`  
		Last Modified: Wed, 14 Mar 2018 17:14:13 GMT  
		Size: 3.2 MB (3167749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e765f6e07f89d33d38e8e2e564278e79d9cdb5274d164007f0936f685c647dd`  
		Last Modified: Sat, 31 Mar 2018 03:17:10 GMT  
		Size: 20.1 MB (20103773 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f02823cd02e37bf0d8ae1048ea5c94d4b0c834a3955bf72504d19ed3fb23558`  
		Last Modified: Sat, 31 Mar 2018 03:17:02 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dcc4ba372fa2256d8dd36c81772bc18c24ab5d7c4ffad271665d194913ef358`  
		Last Modified: Sat, 21 Apr 2018 03:41:18 GMT  
		Size: 1.8 MB (1787710 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e0e6eb71aaa2db0977901cca2ff498b9e9aa77a8649c5a7967519468c0f1ec3`  
		Last Modified: Sat, 21 Apr 2018 03:45:32 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:3-onbuild` - linux; arm variant v5

```console
$ docker pull python@sha256:cdc36899532ca732ce1810a9a0659dc0685b0604e6c69a766630f02aff3b7a83
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.6 MB (250566641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db5f06e89660e37b99137767158233db90394f8659116685d30416597f8f2462`
-	Default Command: `["python3"]`

```dockerfile
# Sat, 28 Apr 2018 08:49:23 GMT
ADD file:2d2cd360e66aeff5557c7e7117985a00d109278c3f456ee970afcc9a46483264 in / 
# Sat, 28 Apr 2018 08:49:23 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:24:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:24:49 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 09:25:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:27:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:10:47 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 11:10:47 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 11:11:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:11:15 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Sat, 28 Apr 2018 11:11:15 GMT
ENV PYTHON_VERSION=3.6.5
# Sat, 28 Apr 2018 11:13:35 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 28 Apr 2018 11:13:36 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 28 Apr 2018 11:13:36 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 28 Apr 2018 11:13:45 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 28 Apr 2018 11:13:46 GMT
CMD ["python3"]
# Sat, 28 Apr 2018 11:18:28 GMT
RUN mkdir -p /usr/src/app
# Sat, 28 Apr 2018 11:18:29 GMT
WORKDIR /usr/src/app
# Sat, 28 Apr 2018 11:18:29 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Sat, 28 Apr 2018 11:18:29 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Sat, 28 Apr 2018 11:18:29 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:81fc0826192f72abe617753d378af4047dbce89faf17cdab9166877006a25d8e`  
		Last Modified: Sat, 28 Apr 2018 08:57:10 GMT  
		Size: 52.5 MB (52456037 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:229392eca0ea6fd4f2cc8f7d0d7ae06b4ee3b653f27de84082dfa6c08f937eb3`  
		Last Modified: Sat, 28 Apr 2018 09:38:39 GMT  
		Size: 17.1 MB (17054111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c50069643e7ba8c967fb7fe1d1d9a2f42e28ededf3d5c2744f7751f7371905e`  
		Last Modified: Sat, 28 Apr 2018 09:39:06 GMT  
		Size: 41.1 MB (41103326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a09eba31c9e2fe85db5ec92d4256b045c65699d2092f1521355469f83c57218`  
		Last Modified: Sat, 28 Apr 2018 09:39:49 GMT  
		Size: 115.7 MB (115723724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b5d87bf6b2cbceb0c1ccbb760902b31fa7ea6728a0d9f09524947ac8679b8e8a`  
		Last Modified: Sat, 28 Apr 2018 12:00:27 GMT  
		Size: 3.0 MB (3019939 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a42cdbda2897b85bac94c09d9a71f2bcbb81adb2719074c37ca96fcc02d7a26a`  
		Last Modified: Sat, 28 Apr 2018 12:00:32 GMT  
		Size: 19.4 MB (19421096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:733ab9e9ee81d290e6817cd37bf1715e5e6fd6ce7d1d4069dd4ff51439148df1`  
		Last Modified: Sat, 28 Apr 2018 12:00:26 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd39220d23c06a466299f557b3cfaa1eae1f1b36f1bae67210e71821a98ef86c`  
		Last Modified: Sat, 28 Apr 2018 12:00:27 GMT  
		Size: 1.8 MB (1788003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:207c45d9ebeb32f90bdfb5a16448837ba2e561dd9d71f9719b5fc2688cd970a2`  
		Last Modified: Sat, 28 Apr 2018 12:02:01 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:3-onbuild` - linux; arm variant v7

```console
$ docker pull python@sha256:289543e9603a5766dede28f52f5ea5db6c450d925fdde29229d6fe09936b7c62
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.6 MB (244630190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b79a743582e7aec190c9e2c1706732f5eacb5c207511606dbb71f5ba63822af1`
-	Default Command: `["python3"]`

```dockerfile
# Wed, 14 Mar 2018 12:26:45 GMT
ADD file:61187374d52790eaf655b56fcca85d392ef4a9d0844161f18ea519a8f6acb1bb in / 
# Wed, 14 Mar 2018 12:26:46 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:12:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:12:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 13:13:33 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:15:21 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 15:03:00 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 15:03:01 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 15:03:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 28 Mar 2018 21:37:05 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Mon, 02 Apr 2018 16:36:41 GMT
ENV PYTHON_VERSION=3.6.5
# Mon, 02 Apr 2018 16:38:59 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Mon, 02 Apr 2018 16:39:00 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 21 Apr 2018 12:12:24 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 21 Apr 2018 12:12:33 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 21 Apr 2018 12:12:33 GMT
CMD ["python3"]
# Sat, 21 Apr 2018 12:13:41 GMT
RUN mkdir -p /usr/src/app
# Sat, 21 Apr 2018 12:13:42 GMT
WORKDIR /usr/src/app
# Sat, 21 Apr 2018 12:13:42 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Sat, 21 Apr 2018 12:13:42 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Sat, 21 Apr 2018 12:13:42 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:01f50fb86130a0959fcc95157f9f911daf27a42f88c23a55ad8ad827eb4d7124`  
		Last Modified: Wed, 14 Mar 2018 12:38:17 GMT  
		Size: 48.7 MB (48702073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f443c42bb7889303382d6ffcef26b8a270f42924190090e04cfb62fd0703a08e`  
		Last Modified: Wed, 14 Mar 2018 13:27:11 GMT  
		Size: 18.3 MB (18264883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0679f3dfeabb2acc76154f3d3f423d04c7239f9ebcd2a11ccff7fe4341fee540`  
		Last Modified: Wed, 14 Mar 2018 13:27:40 GMT  
		Size: 39.7 MB (39728135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2660f682daa65d45688566f441bdd5de9d725c1298155cc264789bf1a0d5463`  
		Last Modified: Wed, 14 Mar 2018 13:28:19 GMT  
		Size: 114.1 MB (114071311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df30a9a21d344d08cf2f78d0cd3556a4ac2a6927605d14d51c2fa3bb75ff31ee`  
		Last Modified: Wed, 14 Mar 2018 16:00:14 GMT  
		Size: 2.9 MB (2896910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89ecd53384f10abb324ebf0a72b68083f5147ae6421075561079371fff710076`  
		Last Modified: Mon, 02 Apr 2018 16:45:35 GMT  
		Size: 19.2 MB (19178449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28e1021b9ecd838c94c97c0a0bb65d12b0799ae94bba01b8d197d5111531e8b6`  
		Last Modified: Mon, 02 Apr 2018 16:45:26 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f76c7cdebd9f9fa871d032c6111f8093344a1430b456168bedd900e43801c79c`  
		Last Modified: Sat, 21 Apr 2018 12:22:06 GMT  
		Size: 1.8 MB (1788020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f94c023ce6d7ac97f0f1e2354e3fb731a9922b0433c0ae3ee2a509a4cb532342`  
		Last Modified: Sat, 21 Apr 2018 12:23:20 GMT  
		Size: 167.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:3-onbuild` - linux; arm64 variant v8

```console
$ docker pull python@sha256:35b856d743de427f1cf8f3a6f893b05de10aedc1ea55f3028eeede8915b99b84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.5 MB (250508291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eee12ad9f6b1fdebde45553c36b7e769eaed51b81d26ed881ad1c2cb1ced9e63`
-	Default Command: `["python3"]`

```dockerfile
# Wed, 14 Mar 2018 17:24:26 GMT
ADD file:bcd41493879aaeeecb9c960b91c9954b1e0229e91b7a070cb6b2dfdadc8c52b8 in / 
# Wed, 14 Mar 2018 17:24:27 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 18:23:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:23:47 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 18:25:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:35:54 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 11:10:14 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Mar 2018 11:10:15 GMT
ENV LANG=C.UTF-8
# Fri, 16 Mar 2018 11:10:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Mar 2018 11:10:42 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Mon, 02 Apr 2018 17:19:17 GMT
ENV PYTHON_VERSION=3.6.5
# Mon, 02 Apr 2018 17:24:20 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Mon, 02 Apr 2018 17:24:23 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 21 Apr 2018 09:50:49 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 21 Apr 2018 09:51:05 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 21 Apr 2018 09:51:07 GMT
CMD ["python3"]
# Sat, 21 Apr 2018 09:53:21 GMT
RUN mkdir -p /usr/src/app
# Sat, 21 Apr 2018 09:53:21 GMT
WORKDIR /usr/src/app
# Sat, 21 Apr 2018 09:53:22 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Sat, 21 Apr 2018 09:53:23 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Sat, 21 Apr 2018 09:53:44 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:21ccda36f02cc1214a990aa0c90bf9e705d50f6bf9844bffa71a8fbff898df30`  
		Last Modified: Wed, 14 Mar 2018 17:37:55 GMT  
		Size: 49.9 MB (49933463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42c0a429742ffe0333a0070020d4aa3cfeaa1d0f87e652544b8b823ab168f1bd`  
		Last Modified: Wed, 14 Mar 2018 19:01:35 GMT  
		Size: 18.7 MB (18739890 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0143ab4c445a576c0bf58f4eee3c9dac1bbf68c311dc22f8a0ad7397a257c25e`  
		Last Modified: Wed, 14 Mar 2018 19:02:34 GMT  
		Size: 41.0 MB (41022023 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b8bca71e1cff640c27c0a50f07fc661849fb44652d0b77316b43dd92ac39640`  
		Last Modified: Fri, 16 Mar 2018 09:34:07 GMT  
		Size: 115.9 MB (115892924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d300d3c9afebc81e8f6904e82a3270650095b97d4d50f7e03ae8f6a408cabda9`  
		Last Modified: Fri, 16 Mar 2018 11:54:03 GMT  
		Size: 3.0 MB (3006017 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc6db59456bffc14dd9719f6551b23c3a7702fe2ff1e885b35eda82d8e6e178c`  
		Last Modified: Mon, 02 Apr 2018 17:48:36 GMT  
		Size: 20.1 MB (20125845 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e8e2d925c70ab7954cc6d2d933021e6f97d52dc565051acab6f28e5799dd806`  
		Last Modified: Mon, 02 Apr 2018 17:48:27 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89df63d33764c2da69ce6c75d08414a0d276dd5573d5df4689e2aeb516a4a145`  
		Last Modified: Sat, 21 Apr 2018 10:24:02 GMT  
		Size: 1.8 MB (1787756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:733a043ccee405da64924e7ca5439c0c36ccd547ef46c6b2a66b4aa9f7bce705`  
		Last Modified: Sat, 21 Apr 2018 10:29:06 GMT  
		Size: 132.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:3-onbuild` - linux; 386

```console
$ docker pull python@sha256:ed09f91851801f551998455d874bae081a1455760ec860946686ac690166c4ba
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.9 MB (276938428 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:435ce48903c3d2b3be65d21f1d0836cb839f2bc9b23cf18b7d093c3adebb9949`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 27 Mar 2018 14:05:26 GMT
ADD file:8683f1cd44868aa69e4e8fce74caa88badfe317f49380ffa594640a48e4a5f1a in / 
# Tue, 27 Mar 2018 14:05:27 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 22:08:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:08:10 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 13 Apr 2018 22:09:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:11:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 00:22:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 00:22:48 GMT
ENV LANG=C.UTF-8
# Sat, 14 Apr 2018 00:23:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 00:42:15 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Sat, 14 Apr 2018 00:42:15 GMT
ENV PYTHON_VERSION=3.6.5
# Sat, 14 Apr 2018 00:44:31 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 14 Apr 2018 00:44:32 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 21 Apr 2018 11:23:44 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 21 Apr 2018 11:23:54 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 21 Apr 2018 11:23:54 GMT
CMD ["python3"]
# Sat, 21 Apr 2018 11:24:45 GMT
RUN mkdir -p /usr/src/app
# Sat, 21 Apr 2018 11:24:45 GMT
WORKDIR /usr/src/app
# Sat, 21 Apr 2018 11:24:45 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Sat, 21 Apr 2018 11:24:45 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Sat, 21 Apr 2018 11:24:45 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:9f151777f4a2473f74fd28d3d07fb57e7ce14f486a67f2f364a27bee629048c9`  
		Last Modified: Thu, 15 Mar 2018 01:00:02 GMT  
		Size: 52.8 MB (52787625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999887f7abea7a24e20fa216412c9f2b4a39d253e61385df57c922ba2a6550d5`  
		Last Modified: Fri, 13 Apr 2018 22:28:37 GMT  
		Size: 21.6 MB (21597462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d5616688b0911eb981e4ba09cf2c6fad5129d8bf23f46055a8453f839706245d`  
		Last Modified: Fri, 13 Apr 2018 22:29:01 GMT  
		Size: 43.9 MB (43918705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72558a79a69877499d6d7f2d9a2e484c811e0fb3a8f4a1c9ea23b7a1dfac8650`  
		Last Modified: Fri, 13 Apr 2018 22:29:43 GMT  
		Size: 135.2 MB (135156265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9caa1aeea17db7bcf70be05bd23a742170f7cb74a370291ae74960355ff3ea3`  
		Last Modified: Sat, 14 Apr 2018 00:27:10 GMT  
		Size: 3.3 MB (3271925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53d19ce2f9c5aad575c488d8b94a5f579d765f6d6ee7d06edfd22c1e36cecc93`  
		Last Modified: Sat, 14 Apr 2018 01:29:47 GMT  
		Size: 18.4 MB (18418369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc7444894d4b1968f2ff080c4fe74c45222f9c194ac6d48300f9c45afa08f8a2`  
		Last Modified: Sat, 14 Apr 2018 01:29:40 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6c107c901ab9ae32c89833e36425fb5121cea63a1079b4bafa30c3d2370dac8`  
		Last Modified: Sat, 21 Apr 2018 11:33:19 GMT  
		Size: 1.8 MB (1787703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9a3a4a9c75c56e3daa3f9afbc45c8a7bc3afe6ae9aa55ab0b39600ae5484b7c`  
		Last Modified: Sat, 21 Apr 2018 11:34:04 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:3-onbuild` - linux; ppc64le

```console
$ docker pull python@sha256:61251deaa1f269ca713db7831945d157d69ef4644199a8127284a4c242c6f166
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.3 MB (262319575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ab5cca1f91f9a14b58d7bf1f3f7e8e0d87d2e1c972cb0848a6d461d296e720c`
-	Default Command: `["python3"]`

```dockerfile
# Sat, 28 Apr 2018 08:17:46 GMT
ADD file:6a4bd4ea54f669286e984ecf8178e1fa7c12c8b6fc0f96e4203ae7a6f99a2279 in / 
# Sat, 28 Apr 2018 08:17:47 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:53:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:53:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 09:55:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:58:54 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:45:02 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 12:45:02 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:46:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:46:45 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Sat, 28 Apr 2018 12:46:45 GMT
ENV PYTHON_VERSION=3.6.5
# Sat, 28 Apr 2018 12:49:57 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 28 Apr 2018 12:49:59 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 28 Apr 2018 12:50:00 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 28 Apr 2018 12:50:13 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 28 Apr 2018 12:50:14 GMT
CMD ["python3"]
# Sat, 28 Apr 2018 12:58:40 GMT
RUN mkdir -p /usr/src/app
# Sat, 28 Apr 2018 12:58:41 GMT
WORKDIR /usr/src/app
# Sat, 28 Apr 2018 12:58:42 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Sat, 28 Apr 2018 12:58:43 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Sat, 28 Apr 2018 12:58:45 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:2668401c9f940b1d6b03e5f0086fa248cb957610ef9a7c79983d2fb0707ec76c`  
		Last Modified: Sat, 28 Apr 2018 08:24:36 GMT  
		Size: 53.4 MB (53392811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73feb4c62e83f77f05ed3c1a72c453fce29bc8adee3ff31855937f28f0b9ad00`  
		Last Modified: Sat, 28 Apr 2018 10:38:43 GMT  
		Size: 17.6 MB (17571133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9a9e426fcbdcb0192ea4862cc89ecfe1a4ca0be8efaf99ffb329e50214efbd39`  
		Last Modified: Sat, 28 Apr 2018 10:39:15 GMT  
		Size: 42.8 MB (42758993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17d8fbb2f05708fe70164cd6e8a92baac6ee3b432a7506f532fb94d5c94c19db`  
		Last Modified: Sat, 28 Apr 2018 10:40:09 GMT  
		Size: 123.0 MB (122994692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ab77c119ce513a56d3e8e18175cb61f632c969995548152596cce8cf574528`  
		Last Modified: Sat, 28 Apr 2018 13:49:44 GMT  
		Size: 3.1 MB (3148860 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:432f14083b272dc799f8053ad02cde332241c2fdf9a0254a12c04ebd6f6da849`  
		Last Modified: Sat, 28 Apr 2018 13:49:48 GMT  
		Size: 20.7 MB (20665983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a9efcf8d36884134518661032023389829cb00d93cc7bfb0bc4c85366ab782`  
		Last Modified: Sat, 28 Apr 2018 13:49:42 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8ddd33dfee75b9cec0dfc781192f9bdb5f926c1860ef6b946f719bb08437b4bf`  
		Last Modified: Sat, 28 Apr 2018 13:49:44 GMT  
		Size: 1.8 MB (1786698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0bcbf8c876bd6df276d64831bca9bc29f7a96885f95c02282f2534ffbb2c296`  
		Last Modified: Sat, 28 Apr 2018 13:51:21 GMT  
		Size: 165.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:3-onbuild` - linux; s390x

```console
$ docker pull python@sha256:85b6269980c3758bb35993b07439e13a2fc844d8655f3e7c2c3077ae729acc4d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.8 MB (257836444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63ae865dbd6612769d6042a4c9713680bce553674922758cdf803ed0bf13edba`
-	Default Command: `["python3"]`

```dockerfile
# Sat, 28 Apr 2018 11:42:31 GMT
ADD file:ac1cfec75c7e1898f2c9b7d17653da3684fdda7d14440ce16f1939bb66105cdc in / 
# Sat, 28 Apr 2018 11:42:31 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:13:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:13:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 13:14:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:15:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:44:09 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 13:44:10 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 13:44:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:44:21 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Sat, 28 Apr 2018 13:44:21 GMT
ENV PYTHON_VERSION=3.6.5
# Sat, 28 Apr 2018 13:46:13 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 28 Apr 2018 13:46:14 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 28 Apr 2018 13:46:14 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 28 Apr 2018 13:46:19 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 28 Apr 2018 13:46:19 GMT
CMD ["python3"]
# Sat, 28 Apr 2018 13:49:07 GMT
RUN mkdir -p /usr/src/app
# Sat, 28 Apr 2018 13:49:08 GMT
WORKDIR /usr/src/app
# Sat, 28 Apr 2018 13:49:08 GMT
ONBUILD COPY requirements.txt /usr/src/app/
# Sat, 28 Apr 2018 13:49:08 GMT
ONBUILD RUN pip install --no-cache-dir -r requirements.txt
# Sat, 28 Apr 2018 13:49:08 GMT
ONBUILD COPY . /usr/src/app
```

-	Layers:
	-	`sha256:e0524893a6d25f3e36c190fea678ecf1845e7c0d2ba833b077a429d64b943e0a`  
		Last Modified: Sat, 28 Apr 2018 11:47:52 GMT  
		Size: 54.5 MB (54465857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2331cf8e884c1052e19f6b80b3efb54a7163ab49bf54c631bd861332c232029f`  
		Last Modified: Sat, 28 Apr 2018 13:29:06 GMT  
		Size: 17.8 MB (17767296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c860ff3f5f8fa212ce1ae15a427adb816d72db912daaa8697a136499f7b0cc9`  
		Last Modified: Sat, 28 Apr 2018 13:29:44 GMT  
		Size: 43.4 MB (43390531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a7fdbc5bacccb4bce08796fc1aa69186d4c77318f1c3e315aef84ba7617442a`  
		Last Modified: Sat, 28 Apr 2018 13:30:16 GMT  
		Size: 116.2 MB (116192695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ff251166a46b2799a8144c91c279054c99af8175b2ea464bc16136dc0f5a6eb`  
		Last Modified: Sat, 28 Apr 2018 14:11:48 GMT  
		Size: 3.2 MB (3194676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bcecb3069cf6c02d14f0c487ea04f98a3771e4a4970269f709e572fe2b44a22`  
		Last Modified: Sat, 28 Apr 2018 14:11:52 GMT  
		Size: 21.0 MB (21038571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42284e911dc33354dfac1537aa8c41dedc4c37308a5555d831ec17bd2ff30bb8`  
		Last Modified: Sat, 28 Apr 2018 14:11:47 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68e7055a487b6b0befd63e1e1edbd6b12629415b9747ed75d8af0cd7b3aae778`  
		Last Modified: Sat, 28 Apr 2018 14:11:49 GMT  
		Size: 1.8 MB (1786447 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e864941f09bb5549792acb0f1bb184951ac5d3edb5ee33cee764bf8682d3be92`  
		Last Modified: Sat, 28 Apr 2018 14:13:08 GMT  
		Size: 131.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
