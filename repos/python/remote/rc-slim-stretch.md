## `python:rc-slim-stretch`

```console
$ docker pull python@sha256:3614a0b7e9a75f4ff8f7bbf3c33fcf9f1a90e2d176a69f8b5e9bf8a73f78ea83
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

### `python:rc-slim-stretch` - linux; amd64

```console
$ docker pull python@sha256:4d4183af7a83ab15a59db667375e3f96e47e1b7379b0f84d6a3f764e826903d7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.6 MB (50570829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0c6e9d62e2b3eb3106fb185dd05d5d1113cb4fed76218a7a9fcd28b425a4ef7`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 13 Mar 2018 22:27:37 GMT
ADD file:e3250bb9848f956bdb43b205f1237df0d81a25088c95dbdeb20a1e2baf1d884f in / 
# Tue, 13 Mar 2018 22:27:37 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 17:28:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 17:28:48 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 17:28:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 17:28:58 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 14 Mar 2018 17:28:59 GMT
ENV PYTHON_VERSION=3.7.0b2
# Wed, 14 Mar 2018 17:31:18 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 14 Mar 2018 17:31:19 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 14 Mar 2018 17:31:19 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 14 Mar 2018 17:31:27 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 14 Mar 2018 17:31:28 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:2a72cbf407d67c7a7a76dd48e432091678e297140dce050ad5eccad918a9f8d6`  
		Last Modified: Tue, 13 Mar 2018 22:54:21 GMT  
		Size: 22.5 MB (22488979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b70ed818254312135bc69dcfc9dc3c2493cba95e30e0a6cd113c3f26a8b592d`  
		Last Modified: Wed, 14 Mar 2018 18:31:02 GMT  
		Size: 3.5 MB (3452299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912d202cf3e35cf8ad77a76356c0475435faaa6a75fad2a395928853087f11bb`  
		Last Modified: Wed, 14 Mar 2018 18:31:08 GMT  
		Size: 22.7 MB (22674725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc14a1c74f836c59d332905d68b4e6367451fb2ee54f9d9b5053a1ace6b583cd`  
		Last Modified: Wed, 14 Mar 2018 18:31:01 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b3c78448075af4cc7afd4eb0a94ae53ec01d0e55d5c96448fd7ef46f1681aee`  
		Last Modified: Wed, 14 Mar 2018 18:31:01 GMT  
		Size: 2.0 MB (1954586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:rc-slim-stretch` - linux; arm variant v5

```console
$ docker pull python@sha256:e006729f29ca95bc17750a160533d44c8e74279bdd559c047c0d3a87118946ee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.2 MB (48197449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5080e33d5a25b61984f44624789d7acdc6a538927e07a6119279debd75c292e0`
-	Default Command: `["python3"]`

```dockerfile
# Wed, 14 Mar 2018 20:01:39 GMT
ADD file:c472062baa8d8c35c7642162b18516ecdc2e143d0e5c147b472312cfc532efe9 in / 
# Wed, 14 Mar 2018 20:01:40 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 23:13:40 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 23:13:41 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 23:13:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 23:13:59 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 14 Mar 2018 23:14:00 GMT
ENV PYTHON_VERSION=3.7.0b2
# Wed, 14 Mar 2018 23:18:53 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 14 Mar 2018 23:18:54 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Mon, 19 Mar 2018 23:00:42 GMT
ENV PYTHON_PIP_VERSION=9.0.2
# Mon, 19 Mar 2018 23:01:04 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Mon, 19 Mar 2018 23:01:04 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:8efba53ec4136476603e9856d8bb17541faa0f33abada48ac4d2d7efe61ff43f`  
		Last Modified: Wed, 14 Mar 2018 20:13:21 GMT  
		Size: 21.2 MB (21164955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874f3af16049f3aa0b8312ad621b7ea2e6b53c8cf452b4efad2c9e637134d3b2`  
		Last Modified: Wed, 14 Mar 2018 23:59:24 GMT  
		Size: 3.1 MB (3104473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c5003b9505dcfa1e9a7a1d46a9b9bae9771dd044d1da5f987b8a84ef9f3328`  
		Last Modified: Wed, 14 Mar 2018 23:59:30 GMT  
		Size: 21.8 MB (21756383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbfb3f8aa612fa557feb73175359dcccf85676746f20e10128fdf6b2507bab9c`  
		Last Modified: Wed, 14 Mar 2018 23:59:24 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19028dedc0593f8b889c533ed716bac6f7f04bd8ea9d0aeadeb21aaca56f1c31`  
		Last Modified: Mon, 19 Mar 2018 23:11:32 GMT  
		Size: 2.2 MB (2171398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:rc-slim-stretch` - linux; arm variant v7

```console
$ docker pull python@sha256:45fb26c2b779518dfa18bf298108dff2abb44ca1ee3729de6e4afefb6ad0ef51
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45539934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d00cc5cbcd2f5c4f843d6f8f9645581791ffb69489def08f050bc350fb142326`
-	Default Command: `["python3"]`

```dockerfile
# Wed, 14 Mar 2018 12:33:12 GMT
ADD file:f766c04443a9148691357e97aad9ecafe1a8b4995a429d01337e669edeb93da2 in / 
# Wed, 14 Mar 2018 12:33:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 14:53:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 14:53:05 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 14:53:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 14:53:22 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 14 Mar 2018 14:53:22 GMT
ENV PYTHON_VERSION=3.7.0b2
# Wed, 14 Mar 2018 14:57:27 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 14 Mar 2018 14:57:28 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 14 Mar 2018 14:57:28 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 14 Mar 2018 14:57:41 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 14 Mar 2018 14:57:42 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:752dd0920056531abfaa5b01106ccd62d69cd92b84449b98f46b15b5b8495ac8`  
		Last Modified: Wed, 14 Mar 2018 12:45:14 GMT  
		Size: 19.3 MB (19277610 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f3d8202f13044e73eb167591f3e03e9d1cbb3fd331fd2ed7f105e09a8afaf18`  
		Last Modified: Wed, 14 Mar 2018 15:56:01 GMT  
		Size: 2.9 MB (2932670 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f7d61b9f228755eacf4701735bb8de276ea7cbc467662d17529fa0ad827764a`  
		Last Modified: Wed, 14 Mar 2018 15:56:08 GMT  
		Size: 21.4 MB (21375376 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2560c1a01b2341ebdd12ff499b4301c30edb7ad782c793bc21840a527747cb1`  
		Last Modified: Wed, 14 Mar 2018 15:56:00 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76abd8424341d12d6b110d070dd7a60ac88abafc323a7334be8eaa66bb5b9a79`  
		Last Modified: Wed, 14 Mar 2018 15:56:01 GMT  
		Size: 2.0 MB (1954039 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:rc-slim-stretch` - linux; arm64 variant v8

```console
$ docker pull python@sha256:ea88a81cf18d401ff8075d66f62631f4396fd2d8e62687c9d5bfb3451bcac680
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.9 MB (47853760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e330a05f38e4537c2f10819147d752630f5827c8bcd2edc8b9757e4756456ca`
-	Default Command: `["python3"]`

```dockerfile
# Wed, 14 Mar 2018 17:31:57 GMT
ADD file:c8a9419b2fbc1297f28b404507a39054e101a6f21f15c352b351cab19067cb4f in / 
# Wed, 14 Mar 2018 17:31:57 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 22:36:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 22:36:32 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 22:36:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 22:37:09 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 14 Mar 2018 22:37:10 GMT
ENV PYTHON_VERSION=3.7.0b2
# Wed, 14 Mar 2018 22:47:39 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 14 Mar 2018 22:47:41 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 14 Mar 2018 22:47:42 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 14 Mar 2018 22:48:19 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 14 Mar 2018 22:48:19 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:fe48c4e9ee8492678b1070a971759d407b15524c49c40762b590ba4b52766dde`  
		Last Modified: Wed, 14 Mar 2018 17:47:11 GMT  
		Size: 20.3 MB (20337203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e1444305bad2746c0c149c4d0a3685adacf2a4e097dc7cac6bc83933e87a46`  
		Last Modified: Thu, 15 Mar 2018 00:12:33 GMT  
		Size: 3.1 MB (3090247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc7d092728197a0d70c5c2714d8ea186f53471245746b02deeedfb9c04e9b33c`  
		Last Modified: Thu, 15 Mar 2018 00:12:44 GMT  
		Size: 22.5 MB (22471206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf3687857f15ce94a05416bc371d3bceca16fc1ac0ef5382dcf0cc91e0c5a3a`  
		Last Modified: Thu, 15 Mar 2018 00:12:33 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03aa9238278dbbdbe640a2e7488087dfde4d96d04fb3b447e7b1af0f1d19e63e`  
		Last Modified: Thu, 15 Mar 2018 00:12:33 GMT  
		Size: 2.0 MB (1954864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:rc-slim-stretch` - linux; 386

```console
$ docker pull python@sha256:a621486dbc572a2c99a88745234dda188fcc4a9ad86a7fc8fde6b770d8921711
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.5 MB (50539672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c159cab705ebf2538fb0256c9ba9f398a66d3537ccefa82508a991c63b05baa`
-	Default Command: `["python3"]`

```dockerfile
# Thu, 15 Feb 2018 18:56:40 GMT
ADD file:46f3ea038ddbb2713695c8891a22675f7355211fecac25807c95590f5a5d4bfa in / 
# Thu, 15 Feb 2018 19:04:20 GMT
CMD ["bash"]
# Mon, 19 Feb 2018 18:23:08 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Feb 2018 18:23:09 GMT
ENV LANG=C.UTF-8
# Mon, 19 Feb 2018 18:23:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Mon, 19 Feb 2018 18:23:21 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Sat, 03 Mar 2018 18:48:47 GMT
ENV PYTHON_VERSION=3.7.0b2
# Sat, 03 Mar 2018 18:51:38 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 03 Mar 2018 18:51:39 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 03 Mar 2018 18:51:39 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Sat, 03 Mar 2018 18:51:50 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 03 Mar 2018 18:51:51 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:5a3bef8a5a8dcf8e6b5914993862777a98536514aedf43f0a604d87764970d8a`  
		Last Modified: Thu, 15 Feb 2018 01:16:16 GMT  
		Size: 23.1 MB (23135027 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a858ab35fdda47c87ce00b602d6084203300379afd059ad782999d7ca778278`  
		Last Modified: Mon, 19 Feb 2018 21:56:24 GMT  
		Size: 3.5 MB (3505781 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9de94913e0699765a117cb21ae43a6626d7d48d218bb3440fccf4b25a25380dc`  
		Last Modified: Sat, 03 Mar 2018 19:35:26 GMT  
		Size: 21.9 MB (21944213 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45c5522c548d667af9cfa1a358cdfa9c9c6e4ff6e54b8741be915e23884b445`  
		Last Modified: Sat, 03 Mar 2018 19:35:19 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4212938f952cb939221c4797de7b1a71501ded7cd871481075bdcafc642d82`  
		Last Modified: Sat, 03 Mar 2018 19:35:20 GMT  
		Size: 2.0 MB (1954409 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:rc-slim-stretch` - linux; ppc64le

```console
$ docker pull python@sha256:3030850da039e706bbe3f3054c8376e18829295a4d4b637148eb51263ebbc31d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.9 MB (50869099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08a101a0c473998b0f1984e3789fa67b1b51555facd23e29b889246274e53ece`
-	Default Command: `["python3"]`

```dockerfile
# Wed, 14 Mar 2018 00:35:22 GMT
ADD file:eb08f3c15b97624b92d23e06e82a8de439723fe3fd0f2d75b242fd2a9b9abc51 in / 
# Wed, 14 Mar 2018 00:35:24 GMT
CMD ["bash"]
# Thu, 15 Mar 2018 01:06:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Mar 2018 01:06:05 GMT
ENV LANG=C.UTF-8
# Thu, 15 Mar 2018 01:06:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Mar 2018 01:07:01 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 15 Mar 2018 01:07:04 GMT
ENV PYTHON_VERSION=3.7.0b2
# Thu, 15 Mar 2018 09:55:59 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 15 Mar 2018 09:56:04 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 15 Mar 2018 09:56:07 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 15 Mar 2018 09:57:17 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 15 Mar 2018 09:57:20 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:f3543c3a35ef83bbd42a728d1995f79f0163e330a44b0abe41042ac8b94787ca`  
		Last Modified: Thu, 15 Mar 2018 00:33:06 GMT  
		Size: 22.7 MB (22746142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d438ac0561fbdab7a9ffc931083ef7b96688a75389bf91d61db80ad252683683`  
		Last Modified: Thu, 15 Mar 2018 03:23:51 GMT  
		Size: 3.1 MB (3114605 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:476ba97f7914ab3bb7f22ecd967d279070c710a3a1f6ed2f95b9142f8d4d871d`  
		Last Modified: Thu, 15 Mar 2018 10:07:52 GMT  
		Size: 23.1 MB (23051869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d70da320508f5a4aa6572f17b65c21539231ea1ed8ca2dc793f4965b02b01836`  
		Last Modified: Thu, 15 Mar 2018 10:07:45 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a9d7318765f1a7081f60ec3d8e90193d3885009f56fe32a40016f338687f3ec`  
		Last Modified: Thu, 15 Mar 2018 10:07:45 GMT  
		Size: 2.0 MB (1956243 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:rc-slim-stretch` - linux; s390x

```console
$ docker pull python@sha256:a3ef37b5e794f665bbc605d4d7bb2519382ca8362df9a660d0c84b8afcea4b74
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.0 MB (52016918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a580d88a231140068abbda7743c30d1808a98d0cbded3eb30f33e055f24ea2d`
-	Default Command: `["python3"]`

```dockerfile
# Wed, 14 Mar 2018 05:24:07 GMT
ADD file:61d2621323852492d52f23ac03a18fa0af2bcc5597691b40f508eae65f4a9242 in / 
# Wed, 14 Mar 2018 05:24:07 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 07:08:56 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 07:08:57 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 07:09:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 07:09:03 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 14 Mar 2018 07:09:03 GMT
ENV PYTHON_VERSION=3.7.0b2
# Wed, 14 Mar 2018 07:11:09 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 14 Mar 2018 07:11:10 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 14 Mar 2018 07:11:10 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 14 Mar 2018 07:11:19 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 14 Mar 2018 07:11:19 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:b1c81357f99190a5db0d8057d246a1f1ef9b85b2af5569523da5f1dc979989d3`  
		Last Modified: Wed, 14 Mar 2018 05:29:05 GMT  
		Size: 22.3 MB (22340478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df4b4b85f9f32c0e67bbc4092ad286c882a5e728619a3dbe59365a74ed7a25f3`  
		Last Modified: Wed, 14 Mar 2018 07:29:18 GMT  
		Size: 3.2 MB (3207903 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19701b801fcbc226999e8ec989454a67fc46ec2a1c2c5492d63cd88d16ac13b`  
		Last Modified: Wed, 14 Mar 2018 07:29:23 GMT  
		Size: 24.5 MB (24514746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0f7aa35fef2e49ae627743134caeed2dbf5334566470ec3422a2ee3b0f257a3`  
		Last Modified: Wed, 14 Mar 2018 07:29:17 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:723c76be0efb6419df02f160b211ac1aa02890e6f1820e2d06105b864e4e1273`  
		Last Modified: Wed, 14 Mar 2018 07:29:17 GMT  
		Size: 2.0 MB (1953550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
