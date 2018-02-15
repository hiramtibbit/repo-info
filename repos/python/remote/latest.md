## `python:latest`

```console
$ docker pull python@sha256:4db43fb9a8361734e0e913ec624a12987e0fdb96578ed949157afb6aa32dbf2e
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
	-	windows version 10.0.14393.2068; amd64
	-	windows version 10.0.16299.248; amd64

### `python:latest` - linux; amd64

```console
$ docker pull python@sha256:a0cfbb00e64b5700a69d5fe91669a842cc50443b317dab53c930a1b296586cdb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.6 MB (274601627 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1e459c00dc3205dd530a3a688d562dc6d8153beb219c74168823ccb1709b3a7`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 12 Dec 2017 01:41:12 GMT
ADD file:1dd78a123212328bdc72ef7888024ea27fe141a72e24e0ea7c3c92b63b73d8d1 in / 
# Tue, 12 Dec 2017 01:41:12 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 07:49:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:49:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 07:49:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 07:50:30 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 16:26:10 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 16:26:11 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 16:26:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 16:39:21 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 21 Dec 2017 01:34:08 GMT
ENV PYTHON_VERSION=3.6.4
# Thu, 21 Dec 2017 01:35:57 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 21 Dec 2017 01:35:58 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 21 Dec 2017 01:35:58 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 21 Dec 2017 01:36:03 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 21 Dec 2017 01:36:08 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:f49cf87b52c10aa83b4f4405800527a74400fb19ea1821d209293bc4d53966aa`  
		Last Modified: Tue, 12 Dec 2017 01:47:59 GMT  
		Size: 52.6 MB (52599697 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b491c575b06601bb07a2d88bfc3ace6c6005edc1b4d8da3ba6e37e04e9592d6`  
		Last Modified: Tue, 12 Dec 2017 08:00:34 GMT  
		Size: 19.3 MB (19266203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b313b08bab3b8bbcf0de4171a2a80a01e67fab094f272819b76a58705d21ab28`  
		Last Modified: Tue, 12 Dec 2017 08:01:02 GMT  
		Size: 43.3 MB (43253338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d6678c3f0e0c6e2b58b51ad100912b7c0e4dfedf98a1808417216fd5d948e5`  
		Last Modified: Tue, 12 Dec 2017 08:01:40 GMT  
		Size: 135.0 MB (134968174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09f35bd58db288964a8bb8698b5f41bfb05df1758e54c2aad2f3fda3c38b240a`  
		Last Modified: Tue, 12 Dec 2017 16:28:20 GMT  
		Size: 3.2 MB (3167686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0f9de702e22255ec7a88c3e41c0a4e51ed00ba2fb91f5e106bcda1358e4a7743`  
		Last Modified: Thu, 21 Dec 2017 01:53:49 GMT  
		Size: 19.7 MB (19675884 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:73911d37fcde0a506cee3ee29d522eb2805d016902f42a699df136820fec04f9`  
		Last Modified: Thu, 21 Dec 2017 01:53:44 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99a87e214c92dac634f282d7d27b7d846ae9b8947b98144a29fe528c4098a61d`  
		Last Modified: Thu, 21 Dec 2017 01:53:45 GMT  
		Size: 1.7 MB (1670405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:latest` - linux; arm variant v5

```console
$ docker pull python@sha256:0b885fef898d10badf8195cfa29e2473c1883b9410a94ef4d8ce7315eeb93e0e
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.3 MB (250329463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86752468acc1cba718397e3052b9345240adb5153b7feff8413d73f842bf50cf`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 12 Dec 2017 20:57:00 GMT
ADD file:2c2c6b8bfbbc9860c0ddd8a2ba3d769171576fc13d5d99fb50a852f6b03618d1 in / 
# Tue, 12 Dec 2017 20:57:00 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 22:52:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 22:52:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 22:54:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 22:56:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 00:52:55 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 13 Dec 2017 00:52:55 GMT
ENV LANG=C.UTF-8
# Wed, 13 Dec 2017 00:53:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 13 Dec 2017 01:02:13 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Fri, 22 Dec 2017 00:05:04 GMT
ENV PYTHON_VERSION=3.6.4
# Fri, 22 Dec 2017 00:07:34 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Fri, 22 Dec 2017 00:07:35 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Fri, 22 Dec 2017 00:07:36 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 22 Dec 2017 00:07:44 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 22 Dec 2017 00:07:45 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:fbe67b6ec6f136174afee77eff07fd99e5764d9db2b13d0dc1189bf8203d289b`  
		Last Modified: Tue, 12 Dec 2017 21:06:47 GMT  
		Size: 50.9 MB (50882486 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a20452f83e704c3737bc38610443b6ca94edbe5388fb654b5c4c3c4308150785`  
		Last Modified: Tue, 12 Dec 2017 23:07:02 GMT  
		Size: 18.7 MB (18656894 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85b1e0d12986adcbf53895fa51052184e9f935a6424e8665bfad080be921ffec`  
		Last Modified: Tue, 12 Dec 2017 23:07:28 GMT  
		Size: 41.1 MB (41102373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3294d0e239416dcce73960614fcb72ab7e3034c5c0473cfc88120b49aaf8cf3`  
		Last Modified: Tue, 12 Dec 2017 23:08:09 GMT  
		Size: 115.7 MB (115740327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb10d9e21822b5858804af1906f60f0a667e581d0927089d9432869f10e7a5d9`  
		Last Modified: Wed, 13 Dec 2017 00:54:47 GMT  
		Size: 3.0 MB (3020433 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c6aaae62c18448b94b8333a7d229df42a2510b8ffcdd25f159bdf856585b17c`  
		Last Modified: Fri, 22 Dec 2017 00:13:33 GMT  
		Size: 19.3 MB (19255812 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1a7652b564a45cb79a32b43789f960f80fdb6d5c24810d67fae4bb150be0820a`  
		Last Modified: Fri, 22 Dec 2017 00:13:26 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fdd6269975da8eb57d06adca50d2f52e3dc2a297de7531457db5c6796a9f9b9`  
		Last Modified: Fri, 22 Dec 2017 00:13:27 GMT  
		Size: 1.7 MB (1670898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:latest` - linux; arm variant v7

```console
$ docker pull python@sha256:14795337e623cf904e05b33fdb8a565b810f73a5d61bf55f9e7dbada19171d6c
```

-	Docker Version: 17.06.0-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.1 MB (244106967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3695e777a2c3730bc991835b294a09fdc1a7fa6846188e05c61850dd711ca7ee`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 12 Dec 2017 13:27:05 GMT
ADD file:aeb57f3a84dc1b93e1d38a80409a407df553344149d5070ed79b656865c90c54 in / 
# Tue, 12 Dec 2017 13:27:06 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 14:14:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:14:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 14:15:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 14:17:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 15:44:25 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 15:44:25 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 15:44:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 16:04:16 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 21 Dec 2017 08:05:01 GMT
ENV PYTHON_VERSION=3.6.4
# Thu, 21 Dec 2017 08:07:18 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 21 Dec 2017 08:07:19 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 21 Dec 2017 08:07:19 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 21 Dec 2017 08:07:27 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 21 Dec 2017 08:07:27 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:95e140a16c792899abc97cadee0138064dd21346fe51aa332ca4cbbd5563383c`  
		Last Modified: Tue, 12 Dec 2017 13:38:47 GMT  
		Size: 48.7 MB (48691755 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:237499cbbf2c5155fadc128c997700f0c5ec6355ba9704d0ec3f81c29640c9c4`  
		Last Modified: Tue, 12 Dec 2017 14:30:53 GMT  
		Size: 18.3 MB (18265038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72f718f16c2f9a8213b99fcb49e72dad0036d1426f09c089f1e389b684f26520`  
		Last Modified: Tue, 12 Dec 2017 14:31:23 GMT  
		Size: 39.7 MB (39727713 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:affc0d5be2fb6b1dbb9d86ff0f533d88026215828cb4b1893257572ebf86f8d2`  
		Last Modified: Tue, 12 Dec 2017 14:32:10 GMT  
		Size: 114.1 MB (114057010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8da492c2b2a6e64125a549432bf2b25c5d8fdb672fa3d27e1c9e5b6b493c28d4`  
		Last Modified: Tue, 12 Dec 2017 15:48:41 GMT  
		Size: 2.9 MB (2896866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47a577c1a89c2e585b671c4dffc62735ba97932c973c079e164ec88081c45a79`  
		Last Modified: Thu, 21 Dec 2017 08:13:03 GMT  
		Size: 18.8 MB (18797453 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97ecc7fd3cf3433540dbacdf2815f54bbd1734be2e24390a62a356818e7e1097`  
		Last Modified: Thu, 21 Dec 2017 08:12:56 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7081836da5e90e4816b05d19598f62ae6bc09277013524eae10b920a325be8f`  
		Last Modified: Thu, 21 Dec 2017 08:12:56 GMT  
		Size: 1.7 MB (1670891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:latest` - linux; arm64 variant v8

```console
$ docker pull python@sha256:99e4673f78dcc582e3feeee79d6283c4dafc4fc7c2a078795d44c6dcdefee235
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.2 MB (250153701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d172896465b6a75d14aa5f28247e98fe8d2e57387b88931b67ff998110bec5a9`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 12 Dec 2017 18:24:58 GMT
ADD file:f0da52be154f821919dcbfb92afd89714053ae507038126715c96ac77a6768e1 in / 
# Tue, 12 Dec 2017 18:24:59 GMT
CMD ["bash"]
# Fri, 15 Dec 2017 15:52:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 15:52:45 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 15 Dec 2017 15:54:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 15 Dec 2017 16:01:51 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 00:31:24 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 16 Dec 2017 00:31:24 GMT
ENV LANG=C.UTF-8
# Sat, 16 Dec 2017 00:31:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Sat, 16 Dec 2017 00:31:56 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 21 Dec 2017 11:52:50 GMT
ENV PYTHON_VERSION=3.6.4
# Thu, 21 Dec 2017 11:56:25 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 21 Dec 2017 11:56:27 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 21 Dec 2017 11:56:28 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 21 Dec 2017 11:56:42 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 21 Dec 2017 11:56:43 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:7e6d91e96b32c4999458c6c0cda42f920e41aab0cfbf3153f6e013b222bf084d`  
		Last Modified: Tue, 12 Dec 2017 18:39:54 GMT  
		Size: 49.9 MB (49926676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19f2d61ff35851bad52cd6e85a1aa2c7b986069f0e062b7199ea07bc705f60cc`  
		Last Modified: Fri, 15 Dec 2017 17:15:45 GMT  
		Size: 18.7 MB (18739771 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0113d3a736bdb3c71bbdebc354892ca5b3e58753ed7a23231f8335c9ef0dc4a2`  
		Last Modified: Fri, 15 Dec 2017 17:16:09 GMT  
		Size: 41.0 MB (41021189 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08cf756b1b5f041ca4a78dc397a47f650ce6012584924a41c96fdf5da2edd2dc`  
		Last Modified: Fri, 15 Dec 2017 17:16:55 GMT  
		Size: 115.9 MB (115925986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:343115da8c1e1ccb7b2e41870201f8dd1c38dd02bed1b1fbbf85941546f9996a`  
		Last Modified: Sat, 16 Dec 2017 01:41:34 GMT  
		Size: 3.0 MB (3005888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61e3c27ec119222345e2bbdc831aaf92a6ce881ba8005b4372fb378020b46062`  
		Last Modified: Thu, 21 Dec 2017 12:11:37 GMT  
		Size: 19.9 MB (19863232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06f530e1479a091e989b640a919900664e893b4af464a3f8d30032d0b9b28955`  
		Last Modified: Thu, 21 Dec 2017 12:11:29 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:115221912b2447ce46a84e77003d21927b5e31efedc9b75d1faf2aad9927066d`  
		Last Modified: Thu, 21 Dec 2017 12:11:30 GMT  
		Size: 1.7 MB (1670719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:latest` - linux; 386

```console
$ docker pull python@sha256:4b247a6167f7404c4bbdbd86852766a59c2f732db926186b9a43659658877dad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.5 MB (276519396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f59efcdf6ca6134ea214c5b0db42b9db80e565f8a7ab46be0742e7888365905f`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 12 Dec 2017 14:19:55 GMT
ADD file:235a40e05b677eb2ae7e7a3cc5cbb0cda242ff15dddb87cb8dc9bb0cd2d6aed8 in / 
# Tue, 12 Dec 2017 14:19:55 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 16:53:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 16:53:53 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 16:54:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 16:56:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:56:55 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 21:56:55 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 21:57:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 21:57:27 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 21 Dec 2017 18:16:12 GMT
ENV PYTHON_VERSION=3.6.4
# Thu, 21 Dec 2017 18:18:36 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 21 Dec 2017 18:23:44 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 21 Dec 2017 18:23:44 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 21 Dec 2017 18:23:50 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 21 Dec 2017 18:23:50 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:d99577c7ee3d4d82987bedaeb10f3244ff7e19e41c5259bb8cac00568d1c4271`  
		Last Modified: Tue, 12 Dec 2017 14:46:26 GMT  
		Size: 52.8 MB (52777369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94aafa6d6f35f82e1fdc93cd4f7f6ab829f6297c8defaaa911dfb2de063bf3d`  
		Last Modified: Tue, 12 Dec 2017 17:27:39 GMT  
		Size: 21.6 MB (21596374 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ddd19391b0ebd36e15e21cb3a6728c5950937634b9c81ecc7e3d1422b1dc25eb`  
		Last Modified: Tue, 12 Dec 2017 17:28:18 GMT  
		Size: 43.9 MB (43918299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8333879ca1894c745f67c724a7e4ad35542f5966a47bb050928910a944130ea0`  
		Last Modified: Tue, 12 Dec 2017 17:29:10 GMT  
		Size: 135.1 MB (135144789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5718f0e07ebd0ba7b1a182304b0f07394be9021b2ebad934f2a0b913390619cc`  
		Last Modified: Tue, 12 Dec 2017 22:10:00 GMT  
		Size: 3.3 MB (3271878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c17ebf8476c3ad00a5942ee2182cf488a57eab26881c3fb34c5c67fd42bf6ee3`  
		Last Modified: Thu, 21 Dec 2017 19:01:38 GMT  
		Size: 18.1 MB (18139850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b34a45fdbf1c49d070ef4aa83c7a2669a2cc5b3bc69b6bcaa044e313fbcf7d0`  
		Last Modified: Thu, 21 Dec 2017 19:01:29 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f813842678f3d3e8036886104d7098a81d746fb7f06119326af684362b75ec9`  
		Last Modified: Thu, 21 Dec 2017 19:01:31 GMT  
		Size: 1.7 MB (1670597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:latest` - linux; ppc64le

```console
$ docker pull python@sha256:1e98278dc4ce4d6453dfe8ee7428d7221e268a70f4cfd2e79881d5fc587f3763
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **262.0 MB (262001069 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16db198e3c3e90363c90d6a5c25e4c5d1d8043b92b077ee11c048c9d5ebed13f`
-	Default Command: `["python3"]`

```dockerfile
# Tue, 12 Dec 2017 01:32:54 GMT
ADD file:a66da0d75afce2da6174648a861b98f8e9999028d4f04a59288ca92a090256e2 in / 
# Tue, 12 Dec 2017 01:32:56 GMT
CMD ["bash"]
# Tue, 12 Dec 2017 02:52:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 02:52:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 12 Dec 2017 02:55:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 03:10:46 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 05:29:18 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 12 Dec 2017 05:29:19 GMT
ENV LANG=C.UTF-8
# Tue, 12 Dec 2017 05:30:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 12 Dec 2017 05:30:03 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 21 Dec 2017 09:09:42 GMT
ENV PYTHON_VERSION=3.6.4
# Thu, 21 Dec 2017 09:12:23 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 21 Dec 2017 09:12:27 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 21 Dec 2017 09:12:28 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 21 Dec 2017 09:12:37 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 21 Dec 2017 09:12:39 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:75c28926027fc0404a0d21450475473243a59e8fc55443a62d1d744693ec19e9`  
		Last Modified: Tue, 12 Dec 2017 01:38:17 GMT  
		Size: 51.8 MB (51808999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6994e7d2dd732e57cd3bac94b995dab8a2711f30cf738f70bd4730a512f403ca`  
		Last Modified: Tue, 12 Dec 2017 03:53:30 GMT  
		Size: 19.2 MB (19202627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb98bd09f482269961d36e59c72c340d0f8f4ba6d9efc5f96665114b216aa443`  
		Last Modified: Tue, 12 Dec 2017 03:53:39 GMT  
		Size: 42.8 MB (42758719 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:879fd9e2cb18eaee62b54f7f8fa405c9116ef1db11a13227ca591f126baa3c43`  
		Last Modified: Tue, 12 Dec 2017 03:54:02 GMT  
		Size: 123.0 MB (123023814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30af5c87b0bf0e072addfcb9cc55b24aa7a0f5b601248aace2216a87ef831029`  
		Last Modified: Tue, 12 Dec 2017 07:03:24 GMT  
		Size: 3.2 MB (3151110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c755e7a13661382aaba31220e1a87464ec500eb0b794059050a251a5c2b03d5`  
		Last Modified: Thu, 21 Dec 2017 09:32:22 GMT  
		Size: 20.4 MB (20384694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8b02f6c4d70dfbf7f5c13752805bc9ee6dec657e3dfdfca3e0bd5235120b890`  
		Last Modified: Thu, 21 Dec 2017 09:32:16 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bd5c1d5183e4048c939cc6fdce03ed5ba3a05b31a693baa3cf73ec6866751c46`  
		Last Modified: Thu, 21 Dec 2017 09:32:17 GMT  
		Size: 1.7 MB (1670866 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:latest` - linux; s390x

```console
$ docker pull python@sha256:a28c9b44763fd7c7cf065fd20b28dc85beba25d140ec3e3aed2f2b782ef0532c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.5 MB (257490105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb8ae07ca7c74dc5194c76adc5787bb0176b3abbaa4370ba8d3ea651bf2b009d`
-	Default Command: `["python3"]`

```dockerfile
# Thu, 15 Feb 2018 06:22:37 GMT
ADD file:aa3302b8380a38a7e51533d16a139a3cc5604bde2e860a555777b2f2d1fc1fec in / 
# Thu, 15 Feb 2018 06:22:37 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:50:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:50:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 06:50:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:52:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:12:12 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 08:12:12 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 08:12:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 08:12:25 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 15 Feb 2018 08:12:25 GMT
ENV PYTHON_VERSION=3.6.4
# Thu, 15 Feb 2018 08:13:49 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Thu, 15 Feb 2018 08:13:50 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 15 Feb 2018 08:13:50 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 15 Feb 2018 08:13:55 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 15 Feb 2018 08:13:55 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:9c41e82a505c62c52ff8e8d0b157b438dad9642bc97d4389c8156b3dd4ae3b9e`  
		Last Modified: Thu, 15 Feb 2018 00:56:06 GMT  
		Size: 52.8 MB (52794833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efefd31a422fb0b403b87e38d05eaff8c9155ca71c8861f706f26301e8a74ce8`  
		Last Modified: Thu, 15 Feb 2018 06:58:44 GMT  
		Size: 19.5 MB (19472074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43bf0613109facadcc1735f903e20f3c3bd8ad103c303f8bce9269d74ac019c0`  
		Last Modified: Thu, 15 Feb 2018 06:59:05 GMT  
		Size: 43.4 MB (43389715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b0cd4bdd9cb6cee8733a1a3cb34885cb90942f126590817e6cb055e50d87a80`  
		Last Modified: Thu, 15 Feb 2018 06:59:31 GMT  
		Size: 116.2 MB (116207018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f71e3db204e2bdbd7e8b209ea14bdd781c3b611de405e6b0a51b92352aa35286`  
		Last Modified: Thu, 15 Feb 2018 08:28:18 GMT  
		Size: 3.2 MB (3195054 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:706e820431cc340ce7da95605af59cfbe801d36620ced04107f83556ad25c3be`  
		Last Modified: Thu, 15 Feb 2018 08:28:21 GMT  
		Size: 20.8 MB (20760463 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3450317bc7409912a97e17079634e4619b545074f0022ff4cd1d1d7a2ae5b087`  
		Last Modified: Thu, 15 Feb 2018 08:28:17 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05dcf9790cb5b9280e7b36bae609f8f5dd1e9901a431fdd16b83705b86dc0450`  
		Last Modified: Thu, 15 Feb 2018 08:28:17 GMT  
		Size: 1.7 MB (1670708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:latest` - windows version 10.0.14393.2068; amd64

```console
$ docker pull python@sha256:443d89ead05636e9050abc717896c391059737671d38643283178c4efe597e05
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 GB (5439494016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84139beb9f0aa8e10cb08a55a36bbe41bc5224bd3c09717eaa67bc8313477f54`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Tue, 13 Dec 2016 10:53:31 GMT
RUN Apply image 10.0.14393.0
# Tue, 13 Feb 2018 19:44:02 GMT
RUN Install update 10.0.14393.2068
# Wed, 14 Feb 2018 03:21:40 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Feb 2018 17:35:23 GMT
ENV PYTHON_VERSION=3.6.4
# Wed, 14 Feb 2018 17:35:24 GMT
ENV PYTHON_RELEASE=3.6.4
# Wed, 14 Feb 2018 17:38:02 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 17:38:04 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 14 Feb 2018 17:39:41 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 17:39:42 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:3889bb8d808bbae6fa5a33e07093e65c31371bcf9e4c38c21be6b9af52ad1548`  
		Last Modified: Tue, 13 Dec 2016 10:53:31 GMT  
		Size: 4.1 GB (4069985900 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:cfb27c9ba25f60372361ea8779c927f066c385b6339e29fda5c739feb3163686`  
		Last Modified: Tue, 13 Feb 2018 19:44:02 GMT  
		Size: 1.3 GB (1308156033 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:8611b5f5c0763027c0888bf4535b5f42b6c1a8f72d264baea9e7362a4907c2c3`  
		Last Modified: Wed, 14 Feb 2018 04:43:58 GMT  
		Size: 1.2 KB (1193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1203aa2a18f00a91fa56afedfc4eecc2d7482728d600ae81f9517acb1ee8836`  
		Last Modified: Wed, 14 Feb 2018 17:55:19 GMT  
		Size: 1.2 KB (1194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8656734711892c38300eb858a50ed9a1dd90ebc9cc7ff82baa553b991ac984a0`  
		Last Modified: Wed, 14 Feb 2018 17:55:15 GMT  
		Size: 1.2 KB (1201 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79cc9f2374452a6a295c39b171598bf36e98973ffbeb3f79cd77bcb09755d04d`  
		Last Modified: Wed, 14 Feb 2018 17:55:42 GMT  
		Size: 52.0 MB (51979245 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa566deac2370e022a06e4c067679c54b68062169543acbafd7d87984004cec9`  
		Last Modified: Wed, 14 Feb 2018 17:55:15 GMT  
		Size: 1.2 KB (1200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d01ccb7cae406f9450d36815b807aecc5cb9cfec343acc425d83646a59367b1`  
		Last Modified: Wed, 14 Feb 2018 17:55:26 GMT  
		Size: 9.4 MB (9366873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9323b7730b97406e78865eb4e336049104c1cd72311b4138071d07c46aaee399`  
		Last Modified: Wed, 14 Feb 2018 17:55:17 GMT  
		Size: 1.2 KB (1177 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:latest` - windows version 10.0.16299.248; amd64

```console
$ docker pull python@sha256:87589b761a4c0ca41b0b58641b3c2876732511e087f2d4e5705219c735367e52
```

-	Docker Version: 17.06.1-ee-2
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 GB (3071814971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e3b027b6935ee44a04db86ee0060d245f847551b4e51fd2c943014aa2bc3fad`
-	Default Command: `["python"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Fri, 29 Sep 2017 14:43:28 GMT
RUN Apply image 10.0.16299.15
# Mon, 12 Feb 2018 05:08:44 GMT
RUN Install update 10.0.16299.248
# Wed, 14 Feb 2018 03:31:57 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Wed, 14 Feb 2018 17:39:51 GMT
ENV PYTHON_VERSION=3.6.4
# Wed, 14 Feb 2018 17:39:52 GMT
ENV PYTHON_RELEASE=3.6.4
# Wed, 14 Feb 2018 17:42:11 GMT
RUN $url = ('https://www.python.org/ftp/python/{0}/python-{1}-amd64.exe' -f $env:PYTHON_RELEASE, $env:PYTHON_VERSION); 	Write-Host ('Downloading {0} ...' -f $url); 	Invoke-WebRequest -Uri $url -OutFile 'python.exe'; 		Write-Host 'Installing ...'; 	Start-Process python.exe -Wait 		-ArgumentList @( 			'/quiet', 			'InstallAllUsers=1', 			'TargetDir=C:\Python', 			'PrependPath=1', 			'Shortcuts=0', 			'Include_doc=0', 			'Include_pip=0', 			'Include_test=0' 		); 		$env:PATH = [Environment]::GetEnvironmentVariable('PATH', [EnvironmentVariableTarget]::Machine); 		Write-Host 'Verifying install ...'; 	Write-Host '  python --version'; python --version; 		Write-Host 'Removing ...'; 	Remove-Item python.exe -Force; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 17:42:12 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 14 Feb 2018 17:43:36 GMT
RUN Write-Host ('Installing pip=={0} ...' -f $env:PYTHON_PIP_VERSION); 	[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; 	Invoke-WebRequest -Uri 'https://bootstrap.pypa.io/get-pip.py' -OutFile 'get-pip.py'; 	python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		('pip=={0}' -f $env:PYTHON_PIP_VERSION) 	; 	Remove-Item get-pip.py -Force; 		Write-Host 'Verifying pip install ...'; 	pip --version; 		Write-Host 'Complete.';
# Wed, 14 Feb 2018 17:43:37 GMT
CMD ["python"]
```

-	Layers:
	-	`sha256:5847a47b8593f7c39aa5e3db09e50b76d42aa8898c0440c70cc9c69747d4c479`  
		Last Modified: Tue, 17 Oct 2017 15:51:05 GMT  
		Size: 2.3 GB (2274300585 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:bb504a9304958e903c60656a737272249571ee918bcdc7a9024d802898a187a2`  
		Last Modified: Tue, 13 Feb 2018 21:04:02 GMT  
		Size: 741.2 MB (741177838 bytes)  
		MIME: application/vnd.docker.image.rootfs.foreign.diff.tar.gzip
	-	`sha256:0d60bc5daa3667e432684b61a1df89fd1f6e92e6a95029d9abf1a5aad8cf0864`  
		Last Modified: Wed, 14 Feb 2018 04:45:53 GMT  
		Size: 1.2 KB (1206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6e145bacf174c0fdf788d2f7b287b7376baecc5993ddc3226fc183a4048df5e`  
		Last Modified: Wed, 14 Feb 2018 17:56:05 GMT  
		Size: 1.2 KB (1188 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d555c31e451d40b6805874d0ea700ff215824a4cf5c2fed1db59ef259f6742c`  
		Last Modified: Wed, 14 Feb 2018 17:56:02 GMT  
		Size: 1.2 KB (1176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eae938f6259fdb020f82661dbe7cc1459da46e281bcae7935f8b9e6a6e4bcb31`  
		Last Modified: Wed, 14 Feb 2018 17:56:27 GMT  
		Size: 47.3 MB (47273358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:08909e2d616debf856ab935839ba6b530e0cfeb99abfe04ef666b550b7c365de`  
		Last Modified: Wed, 14 Feb 2018 17:56:00 GMT  
		Size: 1.2 KB (1192 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51fa3cc2053a86c686b0e62ce34f616fa5f4d1ef9a02bb8b561f029d507f3d75`  
		Last Modified: Wed, 14 Feb 2018 17:56:13 GMT  
		Size: 9.1 MB (9057230 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:13353cbec327df386ac8a42b2e2f75ceb336d22dfb0624698495dadffd2db259`  
		Last Modified: Wed, 14 Feb 2018 17:56:00 GMT  
		Size: 1.2 KB (1198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
