<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `pypy`

-	[`pypy:2`](#pypy2)
-	[`pypy:2-6`](#pypy2-6)
-	[`pypy:2-6.0`](#pypy2-60)
-	[`pypy:2-6.0.0`](#pypy2-600)
-	[`pypy:2-6.0.0-jessie`](#pypy2-600-jessie)
-	[`pypy:2-6.0.0-slim`](#pypy2-600-slim)
-	[`pypy:2-6.0.0-slim-jessie`](#pypy2-600-slim-jessie)
-	[`pypy:2-6.0-jessie`](#pypy2-60-jessie)
-	[`pypy:2-6.0-slim`](#pypy2-60-slim)
-	[`pypy:2-6.0-slim-jessie`](#pypy2-60-slim-jessie)
-	[`pypy:2-6-jessie`](#pypy2-6-jessie)
-	[`pypy:2-6-slim`](#pypy2-6-slim)
-	[`pypy:2-6-slim-jessie`](#pypy2-6-slim-jessie)
-	[`pypy:2-jessie`](#pypy2-jessie)
-	[`pypy:2-slim`](#pypy2-slim)
-	[`pypy:2-slim-jessie`](#pypy2-slim-jessie)
-	[`pypy:3`](#pypy3)
-	[`pypy:3-6`](#pypy3-6)
-	[`pypy:3-6.0`](#pypy3-60)
-	[`pypy:3-6.0.0`](#pypy3-600)
-	[`pypy:3-6.0.0-jessie`](#pypy3-600-jessie)
-	[`pypy:3-6.0.0-slim`](#pypy3-600-slim)
-	[`pypy:3-6.0.0-slim-jessie`](#pypy3-600-slim-jessie)
-	[`pypy:3-6.0-jessie`](#pypy3-60-jessie)
-	[`pypy:3-6.0-slim`](#pypy3-60-slim)
-	[`pypy:3-6.0-slim-jessie`](#pypy3-60-slim-jessie)
-	[`pypy:3-6-jessie`](#pypy3-6-jessie)
-	[`pypy:3-6-slim`](#pypy3-6-slim)
-	[`pypy:3-6-slim-jessie`](#pypy3-6-slim-jessie)
-	[`pypy:3-jessie`](#pypy3-jessie)
-	[`pypy:3-slim`](#pypy3-slim)
-	[`pypy:3-slim-jessie`](#pypy3-slim-jessie)
-	[`pypy:jessie`](#pypyjessie)
-	[`pypy:latest`](#pypylatest)
-	[`pypy:slim`](#pypyslim)
-	[`pypy:slim-jessie`](#pypyslim-jessie)

## `pypy:2`

```console
$ docker pull pypy@sha256:46029f5dd47137fba57b805cd4b9b747d53af6d08431c90a182fde717c4536c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2` - linux; amd64

```console
$ docker pull pypy@sha256:5a256a9cddbd72ee3be8d4c755c1b33113b76bf1c72091d495a373c15742ea6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.5 MB (279537279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dfa93f21cb8767ef550933183a543bab7da7012dff160891c26573c2d8ad52d`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:27:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:28:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:30:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 03:45:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 03:45:32 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 10:26:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:26:40 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 09 Oct 2018 22:23:30 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:23:38 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Tue, 09 Oct 2018 22:23:46 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 09 Oct 2018 22:23:46 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d06cf2f1b5e36347bb239d7ef7eb098e228d06a0a937e70798eb0dda459c61e`  
		Last Modified: Tue, 04 Sep 2018 22:50:42 GMT  
		Size: 17.5 MB (17538668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687ebdda822cb0f4af055462f887a7f76bc3f36d55161596fe93e45356dd45f0`  
		Last Modified: Tue, 04 Sep 2018 22:50:58 GMT  
		Size: 43.3 MB (43297955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99119ca3f34e74abac472e5c9194bbf69c0215b32fd6f652eec84a3d9d719e25`  
		Last Modified: Tue, 04 Sep 2018 22:51:30 GMT  
		Size: 131.1 MB (131104825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37e9972cb613cfe0098d4df422330b7560dcb82a0408c0eab83680e8611a534`  
		Last Modified: Wed, 05 Sep 2018 10:28:15 GMT  
		Size: 3.2 MB (3167664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010fab3e80fb720d1086588dca588f272f3ee6b896ed78ec7901ed83265bcea9`  
		Last Modified: Tue, 09 Oct 2018 22:26:42 GMT  
		Size: 26.2 MB (26162859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:485730c71f79098517271c627df81132db6cd5b27b5491cb61797747c01aef50`  
		Last Modified: Tue, 09 Oct 2018 22:26:36 GMT  
		Size: 4.0 MB (4013097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2` - linux; arm variant v5

```console
$ docker pull pypy@sha256:71fdc5f1b2dd19accd468adae1fee8e98b925c9f4320c4773a6ba500e85c29f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.4 MB (257384868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:815c25968fefd5014173ad219adf3e9428cd4e60e29ba01af7b7458cd491ee9f`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:01 GMT
ADD file:367230829937e3f959936d2c250983c5c63d8aff2e1987a1512c68d6b05ec2d9 in / 
# Wed, 05 Sep 2018 08:50:03 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:51:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 09:52:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:55:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:31:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:31:05 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:54:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:54:08 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 05 Sep 2018 13:54:08 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 13:54:18 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Wed, 05 Sep 2018 13:54:47 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 05 Sep 2018 13:54:51 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:e01fe8429ccebc46a010376112e864ce611e175d1f38e60e721840613bc3bc2a`  
		Last Modified: Wed, 05 Sep 2018 08:59:16 GMT  
		Size: 52.4 MB (52447943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6945911bf8713186fd7ee2c21f4ef1138adb8b200242ca929e7caab6978ff3a`  
		Last Modified: Wed, 05 Sep 2018 10:08:21 GMT  
		Size: 17.0 MB (17029456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a401183513e38faaa6c251a53174b409b087aeb9a040849500580106285c318`  
		Last Modified: Wed, 05 Sep 2018 10:08:50 GMT  
		Size: 41.1 MB (41141852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d9da9f5ead4f4d40d7d08848735eca137c95f0b280dee32ed78f06af3c478d`  
		Last Modified: Wed, 05 Sep 2018 10:09:35 GMT  
		Size: 115.8 MB (115759199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b9bf4cfea7382b4b46ae8238075a0c9f8b954a868ba755594e0defc944d9a3`  
		Last Modified: Wed, 05 Sep 2018 13:59:41 GMT  
		Size: 3.0 MB (3020284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c900823451ae8991198371b195d86616cc209c459db171cc3fb7e00aaf43ae0f`  
		Last Modified: Wed, 05 Sep 2018 13:59:48 GMT  
		Size: 24.0 MB (23959622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0044ebc679c59b79e98964240189a14a9fcd3be38e87dbd1522820043a7622ed`  
		Last Modified: Wed, 05 Sep 2018 13:59:42 GMT  
		Size: 4.0 MB (4026512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2` - linux; 386

```console
$ docker pull pypy@sha256:5c032e1153698411a30525bd54ee220097968ff1431c74b7e7115603ad998dc7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.0 MB (284000724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76ce8529d2b8dbbfc5798ca342773027b8559b95ae4338e62ea5b13ee6a5e650`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:28:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:28:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:35:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:51:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 21:51:39 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 21:52:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:52:12 GMT
ENV PYPY_VERSION=6.0.0
# Thu, 06 Sep 2018 21:52:12 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 06 Sep 2018 21:52:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Thu, 06 Sep 2018 21:52:29 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 06 Sep 2018 21:52:30 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912168c1f05e29e4f46f4cbc0e1aa3825348c0e9a19508d7658722848ddda877`  
		Last Modified: Wed, 05 Sep 2018 12:03:41 GMT  
		Size: 19.8 MB (19835822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e9187aeb009b949c7ae34ecf63d21f9c811f6f6bc2295738d4682eaba1f20e`  
		Last Modified: Wed, 05 Sep 2018 12:04:20 GMT  
		Size: 43.9 MB (43948373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cb71948e702f9b512dd129506d79a6eb60b556d877346982e3451003ee8629`  
		Last Modified: Wed, 05 Sep 2018 12:05:43 GMT  
		Size: 135.2 MB (135183725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf0403b468e6ad2f474d20adb6259af4aa89ff5160d7e7f98fc9a95c430fcd9`  
		Last Modified: Thu, 06 Sep 2018 21:56:02 GMT  
		Size: 3.3 MB (3271780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f226f073e4b40db1cabaa5d0d2689e57f92ad5b503ca0d5131d6d6d7581e115c`  
		Last Modified: Thu, 06 Sep 2018 21:56:10 GMT  
		Size: 23.3 MB (23250692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e4b251ec0c8aa54039103192f90182ec96af2a71ace71d69a55f7994268bc3`  
		Last Modified: Thu, 06 Sep 2018 21:56:03 GMT  
		Size: 4.0 MB (4026281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-6`

```console
$ docker pull pypy@sha256:46029f5dd47137fba57b805cd4b9b747d53af6d08431c90a182fde717c4536c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-6` - linux; amd64

```console
$ docker pull pypy@sha256:5a256a9cddbd72ee3be8d4c755c1b33113b76bf1c72091d495a373c15742ea6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.5 MB (279537279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dfa93f21cb8767ef550933183a543bab7da7012dff160891c26573c2d8ad52d`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:27:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:28:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:30:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 03:45:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 03:45:32 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 10:26:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:26:40 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 09 Oct 2018 22:23:30 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:23:38 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Tue, 09 Oct 2018 22:23:46 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 09 Oct 2018 22:23:46 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d06cf2f1b5e36347bb239d7ef7eb098e228d06a0a937e70798eb0dda459c61e`  
		Last Modified: Tue, 04 Sep 2018 22:50:42 GMT  
		Size: 17.5 MB (17538668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687ebdda822cb0f4af055462f887a7f76bc3f36d55161596fe93e45356dd45f0`  
		Last Modified: Tue, 04 Sep 2018 22:50:58 GMT  
		Size: 43.3 MB (43297955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99119ca3f34e74abac472e5c9194bbf69c0215b32fd6f652eec84a3d9d719e25`  
		Last Modified: Tue, 04 Sep 2018 22:51:30 GMT  
		Size: 131.1 MB (131104825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37e9972cb613cfe0098d4df422330b7560dcb82a0408c0eab83680e8611a534`  
		Last Modified: Wed, 05 Sep 2018 10:28:15 GMT  
		Size: 3.2 MB (3167664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010fab3e80fb720d1086588dca588f272f3ee6b896ed78ec7901ed83265bcea9`  
		Last Modified: Tue, 09 Oct 2018 22:26:42 GMT  
		Size: 26.2 MB (26162859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:485730c71f79098517271c627df81132db6cd5b27b5491cb61797747c01aef50`  
		Last Modified: Tue, 09 Oct 2018 22:26:36 GMT  
		Size: 4.0 MB (4013097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6` - linux; arm variant v5

```console
$ docker pull pypy@sha256:71fdc5f1b2dd19accd468adae1fee8e98b925c9f4320c4773a6ba500e85c29f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.4 MB (257384868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:815c25968fefd5014173ad219adf3e9428cd4e60e29ba01af7b7458cd491ee9f`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:01 GMT
ADD file:367230829937e3f959936d2c250983c5c63d8aff2e1987a1512c68d6b05ec2d9 in / 
# Wed, 05 Sep 2018 08:50:03 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:51:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 09:52:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:55:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:31:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:31:05 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:54:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:54:08 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 05 Sep 2018 13:54:08 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 13:54:18 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Wed, 05 Sep 2018 13:54:47 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 05 Sep 2018 13:54:51 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:e01fe8429ccebc46a010376112e864ce611e175d1f38e60e721840613bc3bc2a`  
		Last Modified: Wed, 05 Sep 2018 08:59:16 GMT  
		Size: 52.4 MB (52447943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6945911bf8713186fd7ee2c21f4ef1138adb8b200242ca929e7caab6978ff3a`  
		Last Modified: Wed, 05 Sep 2018 10:08:21 GMT  
		Size: 17.0 MB (17029456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a401183513e38faaa6c251a53174b409b087aeb9a040849500580106285c318`  
		Last Modified: Wed, 05 Sep 2018 10:08:50 GMT  
		Size: 41.1 MB (41141852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d9da9f5ead4f4d40d7d08848735eca137c95f0b280dee32ed78f06af3c478d`  
		Last Modified: Wed, 05 Sep 2018 10:09:35 GMT  
		Size: 115.8 MB (115759199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b9bf4cfea7382b4b46ae8238075a0c9f8b954a868ba755594e0defc944d9a3`  
		Last Modified: Wed, 05 Sep 2018 13:59:41 GMT  
		Size: 3.0 MB (3020284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c900823451ae8991198371b195d86616cc209c459db171cc3fb7e00aaf43ae0f`  
		Last Modified: Wed, 05 Sep 2018 13:59:48 GMT  
		Size: 24.0 MB (23959622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0044ebc679c59b79e98964240189a14a9fcd3be38e87dbd1522820043a7622ed`  
		Last Modified: Wed, 05 Sep 2018 13:59:42 GMT  
		Size: 4.0 MB (4026512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6` - linux; 386

```console
$ docker pull pypy@sha256:5c032e1153698411a30525bd54ee220097968ff1431c74b7e7115603ad998dc7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.0 MB (284000724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76ce8529d2b8dbbfc5798ca342773027b8559b95ae4338e62ea5b13ee6a5e650`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:28:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:28:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:35:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:51:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 21:51:39 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 21:52:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:52:12 GMT
ENV PYPY_VERSION=6.0.0
# Thu, 06 Sep 2018 21:52:12 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 06 Sep 2018 21:52:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Thu, 06 Sep 2018 21:52:29 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 06 Sep 2018 21:52:30 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912168c1f05e29e4f46f4cbc0e1aa3825348c0e9a19508d7658722848ddda877`  
		Last Modified: Wed, 05 Sep 2018 12:03:41 GMT  
		Size: 19.8 MB (19835822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e9187aeb009b949c7ae34ecf63d21f9c811f6f6bc2295738d4682eaba1f20e`  
		Last Modified: Wed, 05 Sep 2018 12:04:20 GMT  
		Size: 43.9 MB (43948373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cb71948e702f9b512dd129506d79a6eb60b556d877346982e3451003ee8629`  
		Last Modified: Wed, 05 Sep 2018 12:05:43 GMT  
		Size: 135.2 MB (135183725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf0403b468e6ad2f474d20adb6259af4aa89ff5160d7e7f98fc9a95c430fcd9`  
		Last Modified: Thu, 06 Sep 2018 21:56:02 GMT  
		Size: 3.3 MB (3271780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f226f073e4b40db1cabaa5d0d2689e57f92ad5b503ca0d5131d6d6d7581e115c`  
		Last Modified: Thu, 06 Sep 2018 21:56:10 GMT  
		Size: 23.3 MB (23250692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e4b251ec0c8aa54039103192f90182ec96af2a71ace71d69a55f7994268bc3`  
		Last Modified: Thu, 06 Sep 2018 21:56:03 GMT  
		Size: 4.0 MB (4026281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-6.0`

```console
$ docker pull pypy@sha256:46029f5dd47137fba57b805cd4b9b747d53af6d08431c90a182fde717c4536c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-6.0` - linux; amd64

```console
$ docker pull pypy@sha256:5a256a9cddbd72ee3be8d4c755c1b33113b76bf1c72091d495a373c15742ea6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.5 MB (279537279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dfa93f21cb8767ef550933183a543bab7da7012dff160891c26573c2d8ad52d`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:27:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:28:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:30:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 03:45:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 03:45:32 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 10:26:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:26:40 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 09 Oct 2018 22:23:30 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:23:38 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Tue, 09 Oct 2018 22:23:46 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 09 Oct 2018 22:23:46 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d06cf2f1b5e36347bb239d7ef7eb098e228d06a0a937e70798eb0dda459c61e`  
		Last Modified: Tue, 04 Sep 2018 22:50:42 GMT  
		Size: 17.5 MB (17538668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687ebdda822cb0f4af055462f887a7f76bc3f36d55161596fe93e45356dd45f0`  
		Last Modified: Tue, 04 Sep 2018 22:50:58 GMT  
		Size: 43.3 MB (43297955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99119ca3f34e74abac472e5c9194bbf69c0215b32fd6f652eec84a3d9d719e25`  
		Last Modified: Tue, 04 Sep 2018 22:51:30 GMT  
		Size: 131.1 MB (131104825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37e9972cb613cfe0098d4df422330b7560dcb82a0408c0eab83680e8611a534`  
		Last Modified: Wed, 05 Sep 2018 10:28:15 GMT  
		Size: 3.2 MB (3167664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010fab3e80fb720d1086588dca588f272f3ee6b896ed78ec7901ed83265bcea9`  
		Last Modified: Tue, 09 Oct 2018 22:26:42 GMT  
		Size: 26.2 MB (26162859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:485730c71f79098517271c627df81132db6cd5b27b5491cb61797747c01aef50`  
		Last Modified: Tue, 09 Oct 2018 22:26:36 GMT  
		Size: 4.0 MB (4013097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6.0` - linux; arm variant v5

```console
$ docker pull pypy@sha256:71fdc5f1b2dd19accd468adae1fee8e98b925c9f4320c4773a6ba500e85c29f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.4 MB (257384868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:815c25968fefd5014173ad219adf3e9428cd4e60e29ba01af7b7458cd491ee9f`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:01 GMT
ADD file:367230829937e3f959936d2c250983c5c63d8aff2e1987a1512c68d6b05ec2d9 in / 
# Wed, 05 Sep 2018 08:50:03 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:51:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 09:52:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:55:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:31:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:31:05 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:54:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:54:08 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 05 Sep 2018 13:54:08 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 13:54:18 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Wed, 05 Sep 2018 13:54:47 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 05 Sep 2018 13:54:51 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:e01fe8429ccebc46a010376112e864ce611e175d1f38e60e721840613bc3bc2a`  
		Last Modified: Wed, 05 Sep 2018 08:59:16 GMT  
		Size: 52.4 MB (52447943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6945911bf8713186fd7ee2c21f4ef1138adb8b200242ca929e7caab6978ff3a`  
		Last Modified: Wed, 05 Sep 2018 10:08:21 GMT  
		Size: 17.0 MB (17029456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a401183513e38faaa6c251a53174b409b087aeb9a040849500580106285c318`  
		Last Modified: Wed, 05 Sep 2018 10:08:50 GMT  
		Size: 41.1 MB (41141852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d9da9f5ead4f4d40d7d08848735eca137c95f0b280dee32ed78f06af3c478d`  
		Last Modified: Wed, 05 Sep 2018 10:09:35 GMT  
		Size: 115.8 MB (115759199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b9bf4cfea7382b4b46ae8238075a0c9f8b954a868ba755594e0defc944d9a3`  
		Last Modified: Wed, 05 Sep 2018 13:59:41 GMT  
		Size: 3.0 MB (3020284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c900823451ae8991198371b195d86616cc209c459db171cc3fb7e00aaf43ae0f`  
		Last Modified: Wed, 05 Sep 2018 13:59:48 GMT  
		Size: 24.0 MB (23959622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0044ebc679c59b79e98964240189a14a9fcd3be38e87dbd1522820043a7622ed`  
		Last Modified: Wed, 05 Sep 2018 13:59:42 GMT  
		Size: 4.0 MB (4026512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6.0` - linux; 386

```console
$ docker pull pypy@sha256:5c032e1153698411a30525bd54ee220097968ff1431c74b7e7115603ad998dc7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.0 MB (284000724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76ce8529d2b8dbbfc5798ca342773027b8559b95ae4338e62ea5b13ee6a5e650`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:28:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:28:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:35:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:51:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 21:51:39 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 21:52:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:52:12 GMT
ENV PYPY_VERSION=6.0.0
# Thu, 06 Sep 2018 21:52:12 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 06 Sep 2018 21:52:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Thu, 06 Sep 2018 21:52:29 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 06 Sep 2018 21:52:30 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912168c1f05e29e4f46f4cbc0e1aa3825348c0e9a19508d7658722848ddda877`  
		Last Modified: Wed, 05 Sep 2018 12:03:41 GMT  
		Size: 19.8 MB (19835822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e9187aeb009b949c7ae34ecf63d21f9c811f6f6bc2295738d4682eaba1f20e`  
		Last Modified: Wed, 05 Sep 2018 12:04:20 GMT  
		Size: 43.9 MB (43948373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cb71948e702f9b512dd129506d79a6eb60b556d877346982e3451003ee8629`  
		Last Modified: Wed, 05 Sep 2018 12:05:43 GMT  
		Size: 135.2 MB (135183725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf0403b468e6ad2f474d20adb6259af4aa89ff5160d7e7f98fc9a95c430fcd9`  
		Last Modified: Thu, 06 Sep 2018 21:56:02 GMT  
		Size: 3.3 MB (3271780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f226f073e4b40db1cabaa5d0d2689e57f92ad5b503ca0d5131d6d6d7581e115c`  
		Last Modified: Thu, 06 Sep 2018 21:56:10 GMT  
		Size: 23.3 MB (23250692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e4b251ec0c8aa54039103192f90182ec96af2a71ace71d69a55f7994268bc3`  
		Last Modified: Thu, 06 Sep 2018 21:56:03 GMT  
		Size: 4.0 MB (4026281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-6.0.0`

```console
$ docker pull pypy@sha256:46029f5dd47137fba57b805cd4b9b747d53af6d08431c90a182fde717c4536c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-6.0.0` - linux; amd64

```console
$ docker pull pypy@sha256:5a256a9cddbd72ee3be8d4c755c1b33113b76bf1c72091d495a373c15742ea6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.5 MB (279537279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dfa93f21cb8767ef550933183a543bab7da7012dff160891c26573c2d8ad52d`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:27:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:28:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:30:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 03:45:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 03:45:32 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 10:26:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:26:40 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 09 Oct 2018 22:23:30 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:23:38 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Tue, 09 Oct 2018 22:23:46 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 09 Oct 2018 22:23:46 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d06cf2f1b5e36347bb239d7ef7eb098e228d06a0a937e70798eb0dda459c61e`  
		Last Modified: Tue, 04 Sep 2018 22:50:42 GMT  
		Size: 17.5 MB (17538668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687ebdda822cb0f4af055462f887a7f76bc3f36d55161596fe93e45356dd45f0`  
		Last Modified: Tue, 04 Sep 2018 22:50:58 GMT  
		Size: 43.3 MB (43297955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99119ca3f34e74abac472e5c9194bbf69c0215b32fd6f652eec84a3d9d719e25`  
		Last Modified: Tue, 04 Sep 2018 22:51:30 GMT  
		Size: 131.1 MB (131104825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37e9972cb613cfe0098d4df422330b7560dcb82a0408c0eab83680e8611a534`  
		Last Modified: Wed, 05 Sep 2018 10:28:15 GMT  
		Size: 3.2 MB (3167664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010fab3e80fb720d1086588dca588f272f3ee6b896ed78ec7901ed83265bcea9`  
		Last Modified: Tue, 09 Oct 2018 22:26:42 GMT  
		Size: 26.2 MB (26162859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:485730c71f79098517271c627df81132db6cd5b27b5491cb61797747c01aef50`  
		Last Modified: Tue, 09 Oct 2018 22:26:36 GMT  
		Size: 4.0 MB (4013097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6.0.0` - linux; arm variant v5

```console
$ docker pull pypy@sha256:71fdc5f1b2dd19accd468adae1fee8e98b925c9f4320c4773a6ba500e85c29f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.4 MB (257384868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:815c25968fefd5014173ad219adf3e9428cd4e60e29ba01af7b7458cd491ee9f`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:01 GMT
ADD file:367230829937e3f959936d2c250983c5c63d8aff2e1987a1512c68d6b05ec2d9 in / 
# Wed, 05 Sep 2018 08:50:03 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:51:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 09:52:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:55:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:31:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:31:05 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:54:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:54:08 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 05 Sep 2018 13:54:08 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 13:54:18 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Wed, 05 Sep 2018 13:54:47 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 05 Sep 2018 13:54:51 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:e01fe8429ccebc46a010376112e864ce611e175d1f38e60e721840613bc3bc2a`  
		Last Modified: Wed, 05 Sep 2018 08:59:16 GMT  
		Size: 52.4 MB (52447943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6945911bf8713186fd7ee2c21f4ef1138adb8b200242ca929e7caab6978ff3a`  
		Last Modified: Wed, 05 Sep 2018 10:08:21 GMT  
		Size: 17.0 MB (17029456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a401183513e38faaa6c251a53174b409b087aeb9a040849500580106285c318`  
		Last Modified: Wed, 05 Sep 2018 10:08:50 GMT  
		Size: 41.1 MB (41141852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d9da9f5ead4f4d40d7d08848735eca137c95f0b280dee32ed78f06af3c478d`  
		Last Modified: Wed, 05 Sep 2018 10:09:35 GMT  
		Size: 115.8 MB (115759199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b9bf4cfea7382b4b46ae8238075a0c9f8b954a868ba755594e0defc944d9a3`  
		Last Modified: Wed, 05 Sep 2018 13:59:41 GMT  
		Size: 3.0 MB (3020284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c900823451ae8991198371b195d86616cc209c459db171cc3fb7e00aaf43ae0f`  
		Last Modified: Wed, 05 Sep 2018 13:59:48 GMT  
		Size: 24.0 MB (23959622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0044ebc679c59b79e98964240189a14a9fcd3be38e87dbd1522820043a7622ed`  
		Last Modified: Wed, 05 Sep 2018 13:59:42 GMT  
		Size: 4.0 MB (4026512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6.0.0` - linux; 386

```console
$ docker pull pypy@sha256:5c032e1153698411a30525bd54ee220097968ff1431c74b7e7115603ad998dc7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.0 MB (284000724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76ce8529d2b8dbbfc5798ca342773027b8559b95ae4338e62ea5b13ee6a5e650`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:28:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:28:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:35:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:51:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 21:51:39 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 21:52:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:52:12 GMT
ENV PYPY_VERSION=6.0.0
# Thu, 06 Sep 2018 21:52:12 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 06 Sep 2018 21:52:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Thu, 06 Sep 2018 21:52:29 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 06 Sep 2018 21:52:30 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912168c1f05e29e4f46f4cbc0e1aa3825348c0e9a19508d7658722848ddda877`  
		Last Modified: Wed, 05 Sep 2018 12:03:41 GMT  
		Size: 19.8 MB (19835822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e9187aeb009b949c7ae34ecf63d21f9c811f6f6bc2295738d4682eaba1f20e`  
		Last Modified: Wed, 05 Sep 2018 12:04:20 GMT  
		Size: 43.9 MB (43948373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cb71948e702f9b512dd129506d79a6eb60b556d877346982e3451003ee8629`  
		Last Modified: Wed, 05 Sep 2018 12:05:43 GMT  
		Size: 135.2 MB (135183725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf0403b468e6ad2f474d20adb6259af4aa89ff5160d7e7f98fc9a95c430fcd9`  
		Last Modified: Thu, 06 Sep 2018 21:56:02 GMT  
		Size: 3.3 MB (3271780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f226f073e4b40db1cabaa5d0d2689e57f92ad5b503ca0d5131d6d6d7581e115c`  
		Last Modified: Thu, 06 Sep 2018 21:56:10 GMT  
		Size: 23.3 MB (23250692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e4b251ec0c8aa54039103192f90182ec96af2a71ace71d69a55f7994268bc3`  
		Last Modified: Thu, 06 Sep 2018 21:56:03 GMT  
		Size: 4.0 MB (4026281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-6.0.0-jessie`

```console
$ docker pull pypy@sha256:46029f5dd47137fba57b805cd4b9b747d53af6d08431c90a182fde717c4536c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-6.0.0-jessie` - linux; amd64

```console
$ docker pull pypy@sha256:5a256a9cddbd72ee3be8d4c755c1b33113b76bf1c72091d495a373c15742ea6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.5 MB (279537279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dfa93f21cb8767ef550933183a543bab7da7012dff160891c26573c2d8ad52d`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:27:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:28:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:30:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 03:45:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 03:45:32 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 10:26:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:26:40 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 09 Oct 2018 22:23:30 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:23:38 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Tue, 09 Oct 2018 22:23:46 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 09 Oct 2018 22:23:46 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d06cf2f1b5e36347bb239d7ef7eb098e228d06a0a937e70798eb0dda459c61e`  
		Last Modified: Tue, 04 Sep 2018 22:50:42 GMT  
		Size: 17.5 MB (17538668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687ebdda822cb0f4af055462f887a7f76bc3f36d55161596fe93e45356dd45f0`  
		Last Modified: Tue, 04 Sep 2018 22:50:58 GMT  
		Size: 43.3 MB (43297955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99119ca3f34e74abac472e5c9194bbf69c0215b32fd6f652eec84a3d9d719e25`  
		Last Modified: Tue, 04 Sep 2018 22:51:30 GMT  
		Size: 131.1 MB (131104825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37e9972cb613cfe0098d4df422330b7560dcb82a0408c0eab83680e8611a534`  
		Last Modified: Wed, 05 Sep 2018 10:28:15 GMT  
		Size: 3.2 MB (3167664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010fab3e80fb720d1086588dca588f272f3ee6b896ed78ec7901ed83265bcea9`  
		Last Modified: Tue, 09 Oct 2018 22:26:42 GMT  
		Size: 26.2 MB (26162859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:485730c71f79098517271c627df81132db6cd5b27b5491cb61797747c01aef50`  
		Last Modified: Tue, 09 Oct 2018 22:26:36 GMT  
		Size: 4.0 MB (4013097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6.0.0-jessie` - linux; arm variant v5

```console
$ docker pull pypy@sha256:71fdc5f1b2dd19accd468adae1fee8e98b925c9f4320c4773a6ba500e85c29f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.4 MB (257384868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:815c25968fefd5014173ad219adf3e9428cd4e60e29ba01af7b7458cd491ee9f`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:01 GMT
ADD file:367230829937e3f959936d2c250983c5c63d8aff2e1987a1512c68d6b05ec2d9 in / 
# Wed, 05 Sep 2018 08:50:03 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:51:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 09:52:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:55:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:31:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:31:05 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:54:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:54:08 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 05 Sep 2018 13:54:08 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 13:54:18 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Wed, 05 Sep 2018 13:54:47 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 05 Sep 2018 13:54:51 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:e01fe8429ccebc46a010376112e864ce611e175d1f38e60e721840613bc3bc2a`  
		Last Modified: Wed, 05 Sep 2018 08:59:16 GMT  
		Size: 52.4 MB (52447943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6945911bf8713186fd7ee2c21f4ef1138adb8b200242ca929e7caab6978ff3a`  
		Last Modified: Wed, 05 Sep 2018 10:08:21 GMT  
		Size: 17.0 MB (17029456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a401183513e38faaa6c251a53174b409b087aeb9a040849500580106285c318`  
		Last Modified: Wed, 05 Sep 2018 10:08:50 GMT  
		Size: 41.1 MB (41141852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d9da9f5ead4f4d40d7d08848735eca137c95f0b280dee32ed78f06af3c478d`  
		Last Modified: Wed, 05 Sep 2018 10:09:35 GMT  
		Size: 115.8 MB (115759199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b9bf4cfea7382b4b46ae8238075a0c9f8b954a868ba755594e0defc944d9a3`  
		Last Modified: Wed, 05 Sep 2018 13:59:41 GMT  
		Size: 3.0 MB (3020284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c900823451ae8991198371b195d86616cc209c459db171cc3fb7e00aaf43ae0f`  
		Last Modified: Wed, 05 Sep 2018 13:59:48 GMT  
		Size: 24.0 MB (23959622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0044ebc679c59b79e98964240189a14a9fcd3be38e87dbd1522820043a7622ed`  
		Last Modified: Wed, 05 Sep 2018 13:59:42 GMT  
		Size: 4.0 MB (4026512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6.0.0-jessie` - linux; 386

```console
$ docker pull pypy@sha256:5c032e1153698411a30525bd54ee220097968ff1431c74b7e7115603ad998dc7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.0 MB (284000724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76ce8529d2b8dbbfc5798ca342773027b8559b95ae4338e62ea5b13ee6a5e650`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:28:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:28:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:35:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:51:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 21:51:39 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 21:52:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:52:12 GMT
ENV PYPY_VERSION=6.0.0
# Thu, 06 Sep 2018 21:52:12 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 06 Sep 2018 21:52:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Thu, 06 Sep 2018 21:52:29 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 06 Sep 2018 21:52:30 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912168c1f05e29e4f46f4cbc0e1aa3825348c0e9a19508d7658722848ddda877`  
		Last Modified: Wed, 05 Sep 2018 12:03:41 GMT  
		Size: 19.8 MB (19835822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e9187aeb009b949c7ae34ecf63d21f9c811f6f6bc2295738d4682eaba1f20e`  
		Last Modified: Wed, 05 Sep 2018 12:04:20 GMT  
		Size: 43.9 MB (43948373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cb71948e702f9b512dd129506d79a6eb60b556d877346982e3451003ee8629`  
		Last Modified: Wed, 05 Sep 2018 12:05:43 GMT  
		Size: 135.2 MB (135183725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf0403b468e6ad2f474d20adb6259af4aa89ff5160d7e7f98fc9a95c430fcd9`  
		Last Modified: Thu, 06 Sep 2018 21:56:02 GMT  
		Size: 3.3 MB (3271780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f226f073e4b40db1cabaa5d0d2689e57f92ad5b503ca0d5131d6d6d7581e115c`  
		Last Modified: Thu, 06 Sep 2018 21:56:10 GMT  
		Size: 23.3 MB (23250692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e4b251ec0c8aa54039103192f90182ec96af2a71ace71d69a55f7994268bc3`  
		Last Modified: Thu, 06 Sep 2018 21:56:03 GMT  
		Size: 4.0 MB (4026281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-6.0.0-slim`

```console
$ docker pull pypy@sha256:6d23cf18d5bfb285a4375d474f9cfd975ba944769c235bf0f3911fb113ec0086
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-6.0.0-slim` - linux; amd64

```console
$ docker pull pypy@sha256:9956974d15aacc363f66ef597bff756205bd9c6df415f1f9b99e9bc6d29d49fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.4 MB (63351045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:596810918a0d2a896ce69a90ec86b83e0db62b760e5dca227e7ab1b42da9880a`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 21:43:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Sep 2018 21:43:35 GMT
ENV LANG=C.UTF-8
# Tue, 04 Sep 2018 21:44:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 21:44:09 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 09 Oct 2018 22:23:57 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:24:39 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 09 Oct 2018 22:24:39 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bf8a581274f72974f3869e840059e702b7b3ed488aa520844db08fad5842b2`  
		Last Modified: Tue, 04 Sep 2018 21:47:37 GMT  
		Size: 2.8 MB (2811143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa753546a31406a40ab341db54edda3b1465d4cc550b626e1b2704bfe826f28`  
		Last Modified: Tue, 09 Oct 2018 22:28:19 GMT  
		Size: 30.4 MB (30419338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6.0.0-slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:41e68307e09f31eff2e00c05074c605be09cff03a6595fc18f3ec6d9577ab47c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.2 MB (59220120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b92d0a2ef47a92010dc2ad0eadbd66612419a7a5e7d34142eb293d9ad7907631`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:35 GMT
ADD file:1922873efedf87e0caa2cf6abb867e47d7accfbfefc1bf7531b75e29fe37de07 in / 
# Wed, 05 Sep 2018 08:50:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:33:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:33:57 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:55:48 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 05 Sep 2018 13:55:48 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 13:56:58 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 13:56:58 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:d9dec235236bca9c64333dbfb092d7a058ef623c6ba80d027962a1196ec006d9`  
		Last Modified: Wed, 05 Sep 2018 09:00:01 GMT  
		Size: 28.4 MB (28430740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c832c8e30a41cd6d6a5c2eb5dcb3175b4868db48272c840fde646ba6593941`  
		Last Modified: Wed, 05 Sep 2018 14:00:46 GMT  
		Size: 2.6 MB (2561962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56784c9269f7114a6ab26a3f674a582bae4c39819cc5329391ee793eb983339`  
		Last Modified: Wed, 05 Sep 2018 14:00:56 GMT  
		Size: 28.2 MB (28227418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6.0.0-slim` - linux; 386

```console
$ docker pull pypy@sha256:3e4443109ec26d4cf906917d1d23af3eedd7f4ae7d403a42293c6e211e08ab48
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62700135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7147c2b66b11cbd0014519cf61635c50d5fa06dc0cfab5a0863c25728acdc4af`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Thu, 06 Sep 2018 21:52:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 21:52:42 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 21:53:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:53:18 GMT
ENV PYPY_VERSION=6.0.0
# Thu, 06 Sep 2018 21:53:18 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 06 Sep 2018 21:54:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 06 Sep 2018 21:54:15 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3e5d7633ac249bc6d7cc7a961a6cc7c93adb2e5527c6b5c84480f0f4140ad`  
		Last Modified: Thu, 06 Sep 2018 21:56:27 GMT  
		Size: 4.9 MB (4912378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ffcc8a2ae0c5ac7423a86d12a0a8cb0466f8191ccfcd31fb2b82bcd5a594761`  
		Last Modified: Thu, 06 Sep 2018 21:56:34 GMT  
		Size: 27.5 MB (27517688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-6.0.0-slim-jessie`

```console
$ docker pull pypy@sha256:6d23cf18d5bfb285a4375d474f9cfd975ba944769c235bf0f3911fb113ec0086
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-6.0.0-slim-jessie` - linux; amd64

```console
$ docker pull pypy@sha256:9956974d15aacc363f66ef597bff756205bd9c6df415f1f9b99e9bc6d29d49fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.4 MB (63351045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:596810918a0d2a896ce69a90ec86b83e0db62b760e5dca227e7ab1b42da9880a`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 21:43:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Sep 2018 21:43:35 GMT
ENV LANG=C.UTF-8
# Tue, 04 Sep 2018 21:44:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 21:44:09 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 09 Oct 2018 22:23:57 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:24:39 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 09 Oct 2018 22:24:39 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bf8a581274f72974f3869e840059e702b7b3ed488aa520844db08fad5842b2`  
		Last Modified: Tue, 04 Sep 2018 21:47:37 GMT  
		Size: 2.8 MB (2811143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa753546a31406a40ab341db54edda3b1465d4cc550b626e1b2704bfe826f28`  
		Last Modified: Tue, 09 Oct 2018 22:28:19 GMT  
		Size: 30.4 MB (30419338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6.0.0-slim-jessie` - linux; arm variant v5

```console
$ docker pull pypy@sha256:41e68307e09f31eff2e00c05074c605be09cff03a6595fc18f3ec6d9577ab47c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.2 MB (59220120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b92d0a2ef47a92010dc2ad0eadbd66612419a7a5e7d34142eb293d9ad7907631`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:35 GMT
ADD file:1922873efedf87e0caa2cf6abb867e47d7accfbfefc1bf7531b75e29fe37de07 in / 
# Wed, 05 Sep 2018 08:50:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:33:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:33:57 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:55:48 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 05 Sep 2018 13:55:48 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 13:56:58 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 13:56:58 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:d9dec235236bca9c64333dbfb092d7a058ef623c6ba80d027962a1196ec006d9`  
		Last Modified: Wed, 05 Sep 2018 09:00:01 GMT  
		Size: 28.4 MB (28430740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c832c8e30a41cd6d6a5c2eb5dcb3175b4868db48272c840fde646ba6593941`  
		Last Modified: Wed, 05 Sep 2018 14:00:46 GMT  
		Size: 2.6 MB (2561962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56784c9269f7114a6ab26a3f674a582bae4c39819cc5329391ee793eb983339`  
		Last Modified: Wed, 05 Sep 2018 14:00:56 GMT  
		Size: 28.2 MB (28227418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6.0.0-slim-jessie` - linux; 386

```console
$ docker pull pypy@sha256:3e4443109ec26d4cf906917d1d23af3eedd7f4ae7d403a42293c6e211e08ab48
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62700135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7147c2b66b11cbd0014519cf61635c50d5fa06dc0cfab5a0863c25728acdc4af`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Thu, 06 Sep 2018 21:52:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 21:52:42 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 21:53:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:53:18 GMT
ENV PYPY_VERSION=6.0.0
# Thu, 06 Sep 2018 21:53:18 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 06 Sep 2018 21:54:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 06 Sep 2018 21:54:15 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3e5d7633ac249bc6d7cc7a961a6cc7c93adb2e5527c6b5c84480f0f4140ad`  
		Last Modified: Thu, 06 Sep 2018 21:56:27 GMT  
		Size: 4.9 MB (4912378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ffcc8a2ae0c5ac7423a86d12a0a8cb0466f8191ccfcd31fb2b82bcd5a594761`  
		Last Modified: Thu, 06 Sep 2018 21:56:34 GMT  
		Size: 27.5 MB (27517688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-6.0-jessie`

```console
$ docker pull pypy@sha256:46029f5dd47137fba57b805cd4b9b747d53af6d08431c90a182fde717c4536c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-6.0-jessie` - linux; amd64

```console
$ docker pull pypy@sha256:5a256a9cddbd72ee3be8d4c755c1b33113b76bf1c72091d495a373c15742ea6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.5 MB (279537279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dfa93f21cb8767ef550933183a543bab7da7012dff160891c26573c2d8ad52d`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:27:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:28:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:30:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 03:45:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 03:45:32 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 10:26:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:26:40 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 09 Oct 2018 22:23:30 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:23:38 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Tue, 09 Oct 2018 22:23:46 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 09 Oct 2018 22:23:46 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d06cf2f1b5e36347bb239d7ef7eb098e228d06a0a937e70798eb0dda459c61e`  
		Last Modified: Tue, 04 Sep 2018 22:50:42 GMT  
		Size: 17.5 MB (17538668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687ebdda822cb0f4af055462f887a7f76bc3f36d55161596fe93e45356dd45f0`  
		Last Modified: Tue, 04 Sep 2018 22:50:58 GMT  
		Size: 43.3 MB (43297955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99119ca3f34e74abac472e5c9194bbf69c0215b32fd6f652eec84a3d9d719e25`  
		Last Modified: Tue, 04 Sep 2018 22:51:30 GMT  
		Size: 131.1 MB (131104825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37e9972cb613cfe0098d4df422330b7560dcb82a0408c0eab83680e8611a534`  
		Last Modified: Wed, 05 Sep 2018 10:28:15 GMT  
		Size: 3.2 MB (3167664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010fab3e80fb720d1086588dca588f272f3ee6b896ed78ec7901ed83265bcea9`  
		Last Modified: Tue, 09 Oct 2018 22:26:42 GMT  
		Size: 26.2 MB (26162859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:485730c71f79098517271c627df81132db6cd5b27b5491cb61797747c01aef50`  
		Last Modified: Tue, 09 Oct 2018 22:26:36 GMT  
		Size: 4.0 MB (4013097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6.0-jessie` - linux; arm variant v5

```console
$ docker pull pypy@sha256:71fdc5f1b2dd19accd468adae1fee8e98b925c9f4320c4773a6ba500e85c29f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.4 MB (257384868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:815c25968fefd5014173ad219adf3e9428cd4e60e29ba01af7b7458cd491ee9f`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:01 GMT
ADD file:367230829937e3f959936d2c250983c5c63d8aff2e1987a1512c68d6b05ec2d9 in / 
# Wed, 05 Sep 2018 08:50:03 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:51:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 09:52:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:55:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:31:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:31:05 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:54:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:54:08 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 05 Sep 2018 13:54:08 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 13:54:18 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Wed, 05 Sep 2018 13:54:47 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 05 Sep 2018 13:54:51 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:e01fe8429ccebc46a010376112e864ce611e175d1f38e60e721840613bc3bc2a`  
		Last Modified: Wed, 05 Sep 2018 08:59:16 GMT  
		Size: 52.4 MB (52447943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6945911bf8713186fd7ee2c21f4ef1138adb8b200242ca929e7caab6978ff3a`  
		Last Modified: Wed, 05 Sep 2018 10:08:21 GMT  
		Size: 17.0 MB (17029456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a401183513e38faaa6c251a53174b409b087aeb9a040849500580106285c318`  
		Last Modified: Wed, 05 Sep 2018 10:08:50 GMT  
		Size: 41.1 MB (41141852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d9da9f5ead4f4d40d7d08848735eca137c95f0b280dee32ed78f06af3c478d`  
		Last Modified: Wed, 05 Sep 2018 10:09:35 GMT  
		Size: 115.8 MB (115759199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b9bf4cfea7382b4b46ae8238075a0c9f8b954a868ba755594e0defc944d9a3`  
		Last Modified: Wed, 05 Sep 2018 13:59:41 GMT  
		Size: 3.0 MB (3020284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c900823451ae8991198371b195d86616cc209c459db171cc3fb7e00aaf43ae0f`  
		Last Modified: Wed, 05 Sep 2018 13:59:48 GMT  
		Size: 24.0 MB (23959622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0044ebc679c59b79e98964240189a14a9fcd3be38e87dbd1522820043a7622ed`  
		Last Modified: Wed, 05 Sep 2018 13:59:42 GMT  
		Size: 4.0 MB (4026512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6.0-jessie` - linux; 386

```console
$ docker pull pypy@sha256:5c032e1153698411a30525bd54ee220097968ff1431c74b7e7115603ad998dc7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.0 MB (284000724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76ce8529d2b8dbbfc5798ca342773027b8559b95ae4338e62ea5b13ee6a5e650`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:28:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:28:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:35:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:51:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 21:51:39 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 21:52:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:52:12 GMT
ENV PYPY_VERSION=6.0.0
# Thu, 06 Sep 2018 21:52:12 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 06 Sep 2018 21:52:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Thu, 06 Sep 2018 21:52:29 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 06 Sep 2018 21:52:30 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912168c1f05e29e4f46f4cbc0e1aa3825348c0e9a19508d7658722848ddda877`  
		Last Modified: Wed, 05 Sep 2018 12:03:41 GMT  
		Size: 19.8 MB (19835822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e9187aeb009b949c7ae34ecf63d21f9c811f6f6bc2295738d4682eaba1f20e`  
		Last Modified: Wed, 05 Sep 2018 12:04:20 GMT  
		Size: 43.9 MB (43948373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cb71948e702f9b512dd129506d79a6eb60b556d877346982e3451003ee8629`  
		Last Modified: Wed, 05 Sep 2018 12:05:43 GMT  
		Size: 135.2 MB (135183725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf0403b468e6ad2f474d20adb6259af4aa89ff5160d7e7f98fc9a95c430fcd9`  
		Last Modified: Thu, 06 Sep 2018 21:56:02 GMT  
		Size: 3.3 MB (3271780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f226f073e4b40db1cabaa5d0d2689e57f92ad5b503ca0d5131d6d6d7581e115c`  
		Last Modified: Thu, 06 Sep 2018 21:56:10 GMT  
		Size: 23.3 MB (23250692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e4b251ec0c8aa54039103192f90182ec96af2a71ace71d69a55f7994268bc3`  
		Last Modified: Thu, 06 Sep 2018 21:56:03 GMT  
		Size: 4.0 MB (4026281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-6.0-slim`

```console
$ docker pull pypy@sha256:6d23cf18d5bfb285a4375d474f9cfd975ba944769c235bf0f3911fb113ec0086
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-6.0-slim` - linux; amd64

```console
$ docker pull pypy@sha256:9956974d15aacc363f66ef597bff756205bd9c6df415f1f9b99e9bc6d29d49fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.4 MB (63351045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:596810918a0d2a896ce69a90ec86b83e0db62b760e5dca227e7ab1b42da9880a`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 21:43:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Sep 2018 21:43:35 GMT
ENV LANG=C.UTF-8
# Tue, 04 Sep 2018 21:44:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 21:44:09 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 09 Oct 2018 22:23:57 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:24:39 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 09 Oct 2018 22:24:39 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bf8a581274f72974f3869e840059e702b7b3ed488aa520844db08fad5842b2`  
		Last Modified: Tue, 04 Sep 2018 21:47:37 GMT  
		Size: 2.8 MB (2811143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa753546a31406a40ab341db54edda3b1465d4cc550b626e1b2704bfe826f28`  
		Last Modified: Tue, 09 Oct 2018 22:28:19 GMT  
		Size: 30.4 MB (30419338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6.0-slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:41e68307e09f31eff2e00c05074c605be09cff03a6595fc18f3ec6d9577ab47c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.2 MB (59220120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b92d0a2ef47a92010dc2ad0eadbd66612419a7a5e7d34142eb293d9ad7907631`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:35 GMT
ADD file:1922873efedf87e0caa2cf6abb867e47d7accfbfefc1bf7531b75e29fe37de07 in / 
# Wed, 05 Sep 2018 08:50:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:33:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:33:57 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:55:48 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 05 Sep 2018 13:55:48 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 13:56:58 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 13:56:58 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:d9dec235236bca9c64333dbfb092d7a058ef623c6ba80d027962a1196ec006d9`  
		Last Modified: Wed, 05 Sep 2018 09:00:01 GMT  
		Size: 28.4 MB (28430740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c832c8e30a41cd6d6a5c2eb5dcb3175b4868db48272c840fde646ba6593941`  
		Last Modified: Wed, 05 Sep 2018 14:00:46 GMT  
		Size: 2.6 MB (2561962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56784c9269f7114a6ab26a3f674a582bae4c39819cc5329391ee793eb983339`  
		Last Modified: Wed, 05 Sep 2018 14:00:56 GMT  
		Size: 28.2 MB (28227418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6.0-slim` - linux; 386

```console
$ docker pull pypy@sha256:3e4443109ec26d4cf906917d1d23af3eedd7f4ae7d403a42293c6e211e08ab48
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62700135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7147c2b66b11cbd0014519cf61635c50d5fa06dc0cfab5a0863c25728acdc4af`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Thu, 06 Sep 2018 21:52:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 21:52:42 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 21:53:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:53:18 GMT
ENV PYPY_VERSION=6.0.0
# Thu, 06 Sep 2018 21:53:18 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 06 Sep 2018 21:54:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 06 Sep 2018 21:54:15 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3e5d7633ac249bc6d7cc7a961a6cc7c93adb2e5527c6b5c84480f0f4140ad`  
		Last Modified: Thu, 06 Sep 2018 21:56:27 GMT  
		Size: 4.9 MB (4912378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ffcc8a2ae0c5ac7423a86d12a0a8cb0466f8191ccfcd31fb2b82bcd5a594761`  
		Last Modified: Thu, 06 Sep 2018 21:56:34 GMT  
		Size: 27.5 MB (27517688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-6.0-slim-jessie`

```console
$ docker pull pypy@sha256:6d23cf18d5bfb285a4375d474f9cfd975ba944769c235bf0f3911fb113ec0086
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-6.0-slim-jessie` - linux; amd64

```console
$ docker pull pypy@sha256:9956974d15aacc363f66ef597bff756205bd9c6df415f1f9b99e9bc6d29d49fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.4 MB (63351045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:596810918a0d2a896ce69a90ec86b83e0db62b760e5dca227e7ab1b42da9880a`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 21:43:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Sep 2018 21:43:35 GMT
ENV LANG=C.UTF-8
# Tue, 04 Sep 2018 21:44:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 21:44:09 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 09 Oct 2018 22:23:57 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:24:39 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 09 Oct 2018 22:24:39 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bf8a581274f72974f3869e840059e702b7b3ed488aa520844db08fad5842b2`  
		Last Modified: Tue, 04 Sep 2018 21:47:37 GMT  
		Size: 2.8 MB (2811143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa753546a31406a40ab341db54edda3b1465d4cc550b626e1b2704bfe826f28`  
		Last Modified: Tue, 09 Oct 2018 22:28:19 GMT  
		Size: 30.4 MB (30419338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6.0-slim-jessie` - linux; arm variant v5

```console
$ docker pull pypy@sha256:41e68307e09f31eff2e00c05074c605be09cff03a6595fc18f3ec6d9577ab47c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.2 MB (59220120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b92d0a2ef47a92010dc2ad0eadbd66612419a7a5e7d34142eb293d9ad7907631`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:35 GMT
ADD file:1922873efedf87e0caa2cf6abb867e47d7accfbfefc1bf7531b75e29fe37de07 in / 
# Wed, 05 Sep 2018 08:50:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:33:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:33:57 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:55:48 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 05 Sep 2018 13:55:48 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 13:56:58 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 13:56:58 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:d9dec235236bca9c64333dbfb092d7a058ef623c6ba80d027962a1196ec006d9`  
		Last Modified: Wed, 05 Sep 2018 09:00:01 GMT  
		Size: 28.4 MB (28430740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c832c8e30a41cd6d6a5c2eb5dcb3175b4868db48272c840fde646ba6593941`  
		Last Modified: Wed, 05 Sep 2018 14:00:46 GMT  
		Size: 2.6 MB (2561962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56784c9269f7114a6ab26a3f674a582bae4c39819cc5329391ee793eb983339`  
		Last Modified: Wed, 05 Sep 2018 14:00:56 GMT  
		Size: 28.2 MB (28227418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6.0-slim-jessie` - linux; 386

```console
$ docker pull pypy@sha256:3e4443109ec26d4cf906917d1d23af3eedd7f4ae7d403a42293c6e211e08ab48
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62700135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7147c2b66b11cbd0014519cf61635c50d5fa06dc0cfab5a0863c25728acdc4af`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Thu, 06 Sep 2018 21:52:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 21:52:42 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 21:53:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:53:18 GMT
ENV PYPY_VERSION=6.0.0
# Thu, 06 Sep 2018 21:53:18 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 06 Sep 2018 21:54:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 06 Sep 2018 21:54:15 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3e5d7633ac249bc6d7cc7a961a6cc7c93adb2e5527c6b5c84480f0f4140ad`  
		Last Modified: Thu, 06 Sep 2018 21:56:27 GMT  
		Size: 4.9 MB (4912378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ffcc8a2ae0c5ac7423a86d12a0a8cb0466f8191ccfcd31fb2b82bcd5a594761`  
		Last Modified: Thu, 06 Sep 2018 21:56:34 GMT  
		Size: 27.5 MB (27517688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-6-jessie`

```console
$ docker pull pypy@sha256:46029f5dd47137fba57b805cd4b9b747d53af6d08431c90a182fde717c4536c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-6-jessie` - linux; amd64

```console
$ docker pull pypy@sha256:5a256a9cddbd72ee3be8d4c755c1b33113b76bf1c72091d495a373c15742ea6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.5 MB (279537279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dfa93f21cb8767ef550933183a543bab7da7012dff160891c26573c2d8ad52d`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:27:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:28:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:30:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 03:45:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 03:45:32 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 10:26:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:26:40 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 09 Oct 2018 22:23:30 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:23:38 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Tue, 09 Oct 2018 22:23:46 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 09 Oct 2018 22:23:46 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d06cf2f1b5e36347bb239d7ef7eb098e228d06a0a937e70798eb0dda459c61e`  
		Last Modified: Tue, 04 Sep 2018 22:50:42 GMT  
		Size: 17.5 MB (17538668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687ebdda822cb0f4af055462f887a7f76bc3f36d55161596fe93e45356dd45f0`  
		Last Modified: Tue, 04 Sep 2018 22:50:58 GMT  
		Size: 43.3 MB (43297955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99119ca3f34e74abac472e5c9194bbf69c0215b32fd6f652eec84a3d9d719e25`  
		Last Modified: Tue, 04 Sep 2018 22:51:30 GMT  
		Size: 131.1 MB (131104825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37e9972cb613cfe0098d4df422330b7560dcb82a0408c0eab83680e8611a534`  
		Last Modified: Wed, 05 Sep 2018 10:28:15 GMT  
		Size: 3.2 MB (3167664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010fab3e80fb720d1086588dca588f272f3ee6b896ed78ec7901ed83265bcea9`  
		Last Modified: Tue, 09 Oct 2018 22:26:42 GMT  
		Size: 26.2 MB (26162859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:485730c71f79098517271c627df81132db6cd5b27b5491cb61797747c01aef50`  
		Last Modified: Tue, 09 Oct 2018 22:26:36 GMT  
		Size: 4.0 MB (4013097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6-jessie` - linux; arm variant v5

```console
$ docker pull pypy@sha256:71fdc5f1b2dd19accd468adae1fee8e98b925c9f4320c4773a6ba500e85c29f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.4 MB (257384868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:815c25968fefd5014173ad219adf3e9428cd4e60e29ba01af7b7458cd491ee9f`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:01 GMT
ADD file:367230829937e3f959936d2c250983c5c63d8aff2e1987a1512c68d6b05ec2d9 in / 
# Wed, 05 Sep 2018 08:50:03 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:51:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 09:52:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:55:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:31:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:31:05 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:54:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:54:08 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 05 Sep 2018 13:54:08 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 13:54:18 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Wed, 05 Sep 2018 13:54:47 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 05 Sep 2018 13:54:51 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:e01fe8429ccebc46a010376112e864ce611e175d1f38e60e721840613bc3bc2a`  
		Last Modified: Wed, 05 Sep 2018 08:59:16 GMT  
		Size: 52.4 MB (52447943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6945911bf8713186fd7ee2c21f4ef1138adb8b200242ca929e7caab6978ff3a`  
		Last Modified: Wed, 05 Sep 2018 10:08:21 GMT  
		Size: 17.0 MB (17029456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a401183513e38faaa6c251a53174b409b087aeb9a040849500580106285c318`  
		Last Modified: Wed, 05 Sep 2018 10:08:50 GMT  
		Size: 41.1 MB (41141852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d9da9f5ead4f4d40d7d08848735eca137c95f0b280dee32ed78f06af3c478d`  
		Last Modified: Wed, 05 Sep 2018 10:09:35 GMT  
		Size: 115.8 MB (115759199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b9bf4cfea7382b4b46ae8238075a0c9f8b954a868ba755594e0defc944d9a3`  
		Last Modified: Wed, 05 Sep 2018 13:59:41 GMT  
		Size: 3.0 MB (3020284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c900823451ae8991198371b195d86616cc209c459db171cc3fb7e00aaf43ae0f`  
		Last Modified: Wed, 05 Sep 2018 13:59:48 GMT  
		Size: 24.0 MB (23959622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0044ebc679c59b79e98964240189a14a9fcd3be38e87dbd1522820043a7622ed`  
		Last Modified: Wed, 05 Sep 2018 13:59:42 GMT  
		Size: 4.0 MB (4026512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6-jessie` - linux; 386

```console
$ docker pull pypy@sha256:5c032e1153698411a30525bd54ee220097968ff1431c74b7e7115603ad998dc7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.0 MB (284000724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76ce8529d2b8dbbfc5798ca342773027b8559b95ae4338e62ea5b13ee6a5e650`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:28:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:28:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:35:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:51:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 21:51:39 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 21:52:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:52:12 GMT
ENV PYPY_VERSION=6.0.0
# Thu, 06 Sep 2018 21:52:12 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 06 Sep 2018 21:52:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Thu, 06 Sep 2018 21:52:29 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 06 Sep 2018 21:52:30 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912168c1f05e29e4f46f4cbc0e1aa3825348c0e9a19508d7658722848ddda877`  
		Last Modified: Wed, 05 Sep 2018 12:03:41 GMT  
		Size: 19.8 MB (19835822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e9187aeb009b949c7ae34ecf63d21f9c811f6f6bc2295738d4682eaba1f20e`  
		Last Modified: Wed, 05 Sep 2018 12:04:20 GMT  
		Size: 43.9 MB (43948373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cb71948e702f9b512dd129506d79a6eb60b556d877346982e3451003ee8629`  
		Last Modified: Wed, 05 Sep 2018 12:05:43 GMT  
		Size: 135.2 MB (135183725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf0403b468e6ad2f474d20adb6259af4aa89ff5160d7e7f98fc9a95c430fcd9`  
		Last Modified: Thu, 06 Sep 2018 21:56:02 GMT  
		Size: 3.3 MB (3271780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f226f073e4b40db1cabaa5d0d2689e57f92ad5b503ca0d5131d6d6d7581e115c`  
		Last Modified: Thu, 06 Sep 2018 21:56:10 GMT  
		Size: 23.3 MB (23250692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e4b251ec0c8aa54039103192f90182ec96af2a71ace71d69a55f7994268bc3`  
		Last Modified: Thu, 06 Sep 2018 21:56:03 GMT  
		Size: 4.0 MB (4026281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-6-slim`

```console
$ docker pull pypy@sha256:6d23cf18d5bfb285a4375d474f9cfd975ba944769c235bf0f3911fb113ec0086
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-6-slim` - linux; amd64

```console
$ docker pull pypy@sha256:9956974d15aacc363f66ef597bff756205bd9c6df415f1f9b99e9bc6d29d49fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.4 MB (63351045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:596810918a0d2a896ce69a90ec86b83e0db62b760e5dca227e7ab1b42da9880a`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 21:43:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Sep 2018 21:43:35 GMT
ENV LANG=C.UTF-8
# Tue, 04 Sep 2018 21:44:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 21:44:09 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 09 Oct 2018 22:23:57 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:24:39 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 09 Oct 2018 22:24:39 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bf8a581274f72974f3869e840059e702b7b3ed488aa520844db08fad5842b2`  
		Last Modified: Tue, 04 Sep 2018 21:47:37 GMT  
		Size: 2.8 MB (2811143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa753546a31406a40ab341db54edda3b1465d4cc550b626e1b2704bfe826f28`  
		Last Modified: Tue, 09 Oct 2018 22:28:19 GMT  
		Size: 30.4 MB (30419338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6-slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:41e68307e09f31eff2e00c05074c605be09cff03a6595fc18f3ec6d9577ab47c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.2 MB (59220120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b92d0a2ef47a92010dc2ad0eadbd66612419a7a5e7d34142eb293d9ad7907631`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:35 GMT
ADD file:1922873efedf87e0caa2cf6abb867e47d7accfbfefc1bf7531b75e29fe37de07 in / 
# Wed, 05 Sep 2018 08:50:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:33:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:33:57 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:55:48 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 05 Sep 2018 13:55:48 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 13:56:58 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 13:56:58 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:d9dec235236bca9c64333dbfb092d7a058ef623c6ba80d027962a1196ec006d9`  
		Last Modified: Wed, 05 Sep 2018 09:00:01 GMT  
		Size: 28.4 MB (28430740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c832c8e30a41cd6d6a5c2eb5dcb3175b4868db48272c840fde646ba6593941`  
		Last Modified: Wed, 05 Sep 2018 14:00:46 GMT  
		Size: 2.6 MB (2561962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56784c9269f7114a6ab26a3f674a582bae4c39819cc5329391ee793eb983339`  
		Last Modified: Wed, 05 Sep 2018 14:00:56 GMT  
		Size: 28.2 MB (28227418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6-slim` - linux; 386

```console
$ docker pull pypy@sha256:3e4443109ec26d4cf906917d1d23af3eedd7f4ae7d403a42293c6e211e08ab48
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62700135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7147c2b66b11cbd0014519cf61635c50d5fa06dc0cfab5a0863c25728acdc4af`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Thu, 06 Sep 2018 21:52:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 21:52:42 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 21:53:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:53:18 GMT
ENV PYPY_VERSION=6.0.0
# Thu, 06 Sep 2018 21:53:18 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 06 Sep 2018 21:54:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 06 Sep 2018 21:54:15 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3e5d7633ac249bc6d7cc7a961a6cc7c93adb2e5527c6b5c84480f0f4140ad`  
		Last Modified: Thu, 06 Sep 2018 21:56:27 GMT  
		Size: 4.9 MB (4912378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ffcc8a2ae0c5ac7423a86d12a0a8cb0466f8191ccfcd31fb2b82bcd5a594761`  
		Last Modified: Thu, 06 Sep 2018 21:56:34 GMT  
		Size: 27.5 MB (27517688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-6-slim-jessie`

```console
$ docker pull pypy@sha256:6d23cf18d5bfb285a4375d474f9cfd975ba944769c235bf0f3911fb113ec0086
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-6-slim-jessie` - linux; amd64

```console
$ docker pull pypy@sha256:9956974d15aacc363f66ef597bff756205bd9c6df415f1f9b99e9bc6d29d49fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.4 MB (63351045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:596810918a0d2a896ce69a90ec86b83e0db62b760e5dca227e7ab1b42da9880a`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 21:43:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Sep 2018 21:43:35 GMT
ENV LANG=C.UTF-8
# Tue, 04 Sep 2018 21:44:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 21:44:09 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 09 Oct 2018 22:23:57 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:24:39 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 09 Oct 2018 22:24:39 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bf8a581274f72974f3869e840059e702b7b3ed488aa520844db08fad5842b2`  
		Last Modified: Tue, 04 Sep 2018 21:47:37 GMT  
		Size: 2.8 MB (2811143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa753546a31406a40ab341db54edda3b1465d4cc550b626e1b2704bfe826f28`  
		Last Modified: Tue, 09 Oct 2018 22:28:19 GMT  
		Size: 30.4 MB (30419338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6-slim-jessie` - linux; arm variant v5

```console
$ docker pull pypy@sha256:41e68307e09f31eff2e00c05074c605be09cff03a6595fc18f3ec6d9577ab47c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.2 MB (59220120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b92d0a2ef47a92010dc2ad0eadbd66612419a7a5e7d34142eb293d9ad7907631`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:35 GMT
ADD file:1922873efedf87e0caa2cf6abb867e47d7accfbfefc1bf7531b75e29fe37de07 in / 
# Wed, 05 Sep 2018 08:50:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:33:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:33:57 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:55:48 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 05 Sep 2018 13:55:48 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 13:56:58 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 13:56:58 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:d9dec235236bca9c64333dbfb092d7a058ef623c6ba80d027962a1196ec006d9`  
		Last Modified: Wed, 05 Sep 2018 09:00:01 GMT  
		Size: 28.4 MB (28430740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c832c8e30a41cd6d6a5c2eb5dcb3175b4868db48272c840fde646ba6593941`  
		Last Modified: Wed, 05 Sep 2018 14:00:46 GMT  
		Size: 2.6 MB (2561962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56784c9269f7114a6ab26a3f674a582bae4c39819cc5329391ee793eb983339`  
		Last Modified: Wed, 05 Sep 2018 14:00:56 GMT  
		Size: 28.2 MB (28227418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6-slim-jessie` - linux; 386

```console
$ docker pull pypy@sha256:3e4443109ec26d4cf906917d1d23af3eedd7f4ae7d403a42293c6e211e08ab48
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62700135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7147c2b66b11cbd0014519cf61635c50d5fa06dc0cfab5a0863c25728acdc4af`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Thu, 06 Sep 2018 21:52:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 21:52:42 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 21:53:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:53:18 GMT
ENV PYPY_VERSION=6.0.0
# Thu, 06 Sep 2018 21:53:18 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 06 Sep 2018 21:54:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 06 Sep 2018 21:54:15 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3e5d7633ac249bc6d7cc7a961a6cc7c93adb2e5527c6b5c84480f0f4140ad`  
		Last Modified: Thu, 06 Sep 2018 21:56:27 GMT  
		Size: 4.9 MB (4912378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ffcc8a2ae0c5ac7423a86d12a0a8cb0466f8191ccfcd31fb2b82bcd5a594761`  
		Last Modified: Thu, 06 Sep 2018 21:56:34 GMT  
		Size: 27.5 MB (27517688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-jessie`

```console
$ docker pull pypy@sha256:46029f5dd47137fba57b805cd4b9b747d53af6d08431c90a182fde717c4536c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-jessie` - linux; amd64

```console
$ docker pull pypy@sha256:5a256a9cddbd72ee3be8d4c755c1b33113b76bf1c72091d495a373c15742ea6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.5 MB (279537279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dfa93f21cb8767ef550933183a543bab7da7012dff160891c26573c2d8ad52d`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:27:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:28:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:30:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 03:45:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 03:45:32 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 10:26:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:26:40 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 09 Oct 2018 22:23:30 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:23:38 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Tue, 09 Oct 2018 22:23:46 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 09 Oct 2018 22:23:46 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d06cf2f1b5e36347bb239d7ef7eb098e228d06a0a937e70798eb0dda459c61e`  
		Last Modified: Tue, 04 Sep 2018 22:50:42 GMT  
		Size: 17.5 MB (17538668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687ebdda822cb0f4af055462f887a7f76bc3f36d55161596fe93e45356dd45f0`  
		Last Modified: Tue, 04 Sep 2018 22:50:58 GMT  
		Size: 43.3 MB (43297955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99119ca3f34e74abac472e5c9194bbf69c0215b32fd6f652eec84a3d9d719e25`  
		Last Modified: Tue, 04 Sep 2018 22:51:30 GMT  
		Size: 131.1 MB (131104825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37e9972cb613cfe0098d4df422330b7560dcb82a0408c0eab83680e8611a534`  
		Last Modified: Wed, 05 Sep 2018 10:28:15 GMT  
		Size: 3.2 MB (3167664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010fab3e80fb720d1086588dca588f272f3ee6b896ed78ec7901ed83265bcea9`  
		Last Modified: Tue, 09 Oct 2018 22:26:42 GMT  
		Size: 26.2 MB (26162859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:485730c71f79098517271c627df81132db6cd5b27b5491cb61797747c01aef50`  
		Last Modified: Tue, 09 Oct 2018 22:26:36 GMT  
		Size: 4.0 MB (4013097 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-jessie` - linux; arm variant v5

```console
$ docker pull pypy@sha256:71fdc5f1b2dd19accd468adae1fee8e98b925c9f4320c4773a6ba500e85c29f3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.4 MB (257384868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:815c25968fefd5014173ad219adf3e9428cd4e60e29ba01af7b7458cd491ee9f`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:01 GMT
ADD file:367230829937e3f959936d2c250983c5c63d8aff2e1987a1512c68d6b05ec2d9 in / 
# Wed, 05 Sep 2018 08:50:03 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:51:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 09:52:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:55:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:31:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:31:05 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:54:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:54:08 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 05 Sep 2018 13:54:08 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 13:54:18 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Wed, 05 Sep 2018 13:54:47 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 05 Sep 2018 13:54:51 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:e01fe8429ccebc46a010376112e864ce611e175d1f38e60e721840613bc3bc2a`  
		Last Modified: Wed, 05 Sep 2018 08:59:16 GMT  
		Size: 52.4 MB (52447943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6945911bf8713186fd7ee2c21f4ef1138adb8b200242ca929e7caab6978ff3a`  
		Last Modified: Wed, 05 Sep 2018 10:08:21 GMT  
		Size: 17.0 MB (17029456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a401183513e38faaa6c251a53174b409b087aeb9a040849500580106285c318`  
		Last Modified: Wed, 05 Sep 2018 10:08:50 GMT  
		Size: 41.1 MB (41141852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d9da9f5ead4f4d40d7d08848735eca137c95f0b280dee32ed78f06af3c478d`  
		Last Modified: Wed, 05 Sep 2018 10:09:35 GMT  
		Size: 115.8 MB (115759199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b9bf4cfea7382b4b46ae8238075a0c9f8b954a868ba755594e0defc944d9a3`  
		Last Modified: Wed, 05 Sep 2018 13:59:41 GMT  
		Size: 3.0 MB (3020284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c900823451ae8991198371b195d86616cc209c459db171cc3fb7e00aaf43ae0f`  
		Last Modified: Wed, 05 Sep 2018 13:59:48 GMT  
		Size: 24.0 MB (23959622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0044ebc679c59b79e98964240189a14a9fcd3be38e87dbd1522820043a7622ed`  
		Last Modified: Wed, 05 Sep 2018 13:59:42 GMT  
		Size: 4.0 MB (4026512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-jessie` - linux; 386

```console
$ docker pull pypy@sha256:5c032e1153698411a30525bd54ee220097968ff1431c74b7e7115603ad998dc7
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.0 MB (284000724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76ce8529d2b8dbbfc5798ca342773027b8559b95ae4338e62ea5b13ee6a5e650`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:28:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:28:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:35:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:51:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 21:51:39 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 21:52:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:52:12 GMT
ENV PYPY_VERSION=6.0.0
# Thu, 06 Sep 2018 21:52:12 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 06 Sep 2018 21:52:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Thu, 06 Sep 2018 21:52:29 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 06 Sep 2018 21:52:30 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912168c1f05e29e4f46f4cbc0e1aa3825348c0e9a19508d7658722848ddda877`  
		Last Modified: Wed, 05 Sep 2018 12:03:41 GMT  
		Size: 19.8 MB (19835822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e9187aeb009b949c7ae34ecf63d21f9c811f6f6bc2295738d4682eaba1f20e`  
		Last Modified: Wed, 05 Sep 2018 12:04:20 GMT  
		Size: 43.9 MB (43948373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cb71948e702f9b512dd129506d79a6eb60b556d877346982e3451003ee8629`  
		Last Modified: Wed, 05 Sep 2018 12:05:43 GMT  
		Size: 135.2 MB (135183725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf0403b468e6ad2f474d20adb6259af4aa89ff5160d7e7f98fc9a95c430fcd9`  
		Last Modified: Thu, 06 Sep 2018 21:56:02 GMT  
		Size: 3.3 MB (3271780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f226f073e4b40db1cabaa5d0d2689e57f92ad5b503ca0d5131d6d6d7581e115c`  
		Last Modified: Thu, 06 Sep 2018 21:56:10 GMT  
		Size: 23.3 MB (23250692 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60e4b251ec0c8aa54039103192f90182ec96af2a71ace71d69a55f7994268bc3`  
		Last Modified: Thu, 06 Sep 2018 21:56:03 GMT  
		Size: 4.0 MB (4026281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-slim`

```console
$ docker pull pypy@sha256:6d23cf18d5bfb285a4375d474f9cfd975ba944769c235bf0f3911fb113ec0086
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-slim` - linux; amd64

```console
$ docker pull pypy@sha256:9956974d15aacc363f66ef597bff756205bd9c6df415f1f9b99e9bc6d29d49fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.4 MB (63351045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:596810918a0d2a896ce69a90ec86b83e0db62b760e5dca227e7ab1b42da9880a`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 21:43:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Sep 2018 21:43:35 GMT
ENV LANG=C.UTF-8
# Tue, 04 Sep 2018 21:44:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 21:44:09 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 09 Oct 2018 22:23:57 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:24:39 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 09 Oct 2018 22:24:39 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bf8a581274f72974f3869e840059e702b7b3ed488aa520844db08fad5842b2`  
		Last Modified: Tue, 04 Sep 2018 21:47:37 GMT  
		Size: 2.8 MB (2811143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa753546a31406a40ab341db54edda3b1465d4cc550b626e1b2704bfe826f28`  
		Last Modified: Tue, 09 Oct 2018 22:28:19 GMT  
		Size: 30.4 MB (30419338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:41e68307e09f31eff2e00c05074c605be09cff03a6595fc18f3ec6d9577ab47c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.2 MB (59220120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b92d0a2ef47a92010dc2ad0eadbd66612419a7a5e7d34142eb293d9ad7907631`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:35 GMT
ADD file:1922873efedf87e0caa2cf6abb867e47d7accfbfefc1bf7531b75e29fe37de07 in / 
# Wed, 05 Sep 2018 08:50:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:33:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:33:57 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:55:48 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 05 Sep 2018 13:55:48 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 13:56:58 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 13:56:58 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:d9dec235236bca9c64333dbfb092d7a058ef623c6ba80d027962a1196ec006d9`  
		Last Modified: Wed, 05 Sep 2018 09:00:01 GMT  
		Size: 28.4 MB (28430740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c832c8e30a41cd6d6a5c2eb5dcb3175b4868db48272c840fde646ba6593941`  
		Last Modified: Wed, 05 Sep 2018 14:00:46 GMT  
		Size: 2.6 MB (2561962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56784c9269f7114a6ab26a3f674a582bae4c39819cc5329391ee793eb983339`  
		Last Modified: Wed, 05 Sep 2018 14:00:56 GMT  
		Size: 28.2 MB (28227418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-slim` - linux; 386

```console
$ docker pull pypy@sha256:3e4443109ec26d4cf906917d1d23af3eedd7f4ae7d403a42293c6e211e08ab48
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62700135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7147c2b66b11cbd0014519cf61635c50d5fa06dc0cfab5a0863c25728acdc4af`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Thu, 06 Sep 2018 21:52:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 21:52:42 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 21:53:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:53:18 GMT
ENV PYPY_VERSION=6.0.0
# Thu, 06 Sep 2018 21:53:18 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 06 Sep 2018 21:54:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 06 Sep 2018 21:54:15 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3e5d7633ac249bc6d7cc7a961a6cc7c93adb2e5527c6b5c84480f0f4140ad`  
		Last Modified: Thu, 06 Sep 2018 21:56:27 GMT  
		Size: 4.9 MB (4912378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ffcc8a2ae0c5ac7423a86d12a0a8cb0466f8191ccfcd31fb2b82bcd5a594761`  
		Last Modified: Thu, 06 Sep 2018 21:56:34 GMT  
		Size: 27.5 MB (27517688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-slim-jessie`

```console
$ docker pull pypy@sha256:6d23cf18d5bfb285a4375d474f9cfd975ba944769c235bf0f3911fb113ec0086
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-slim-jessie` - linux; amd64

```console
$ docker pull pypy@sha256:9956974d15aacc363f66ef597bff756205bd9c6df415f1f9b99e9bc6d29d49fa
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.4 MB (63351045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:596810918a0d2a896ce69a90ec86b83e0db62b760e5dca227e7ab1b42da9880a`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 21:43:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Sep 2018 21:43:35 GMT
ENV LANG=C.UTF-8
# Tue, 04 Sep 2018 21:44:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 21:44:09 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 09 Oct 2018 22:23:57 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:24:39 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 09 Oct 2018 22:24:39 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bf8a581274f72974f3869e840059e702b7b3ed488aa520844db08fad5842b2`  
		Last Modified: Tue, 04 Sep 2018 21:47:37 GMT  
		Size: 2.8 MB (2811143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaa753546a31406a40ab341db54edda3b1465d4cc550b626e1b2704bfe826f28`  
		Last Modified: Tue, 09 Oct 2018 22:28:19 GMT  
		Size: 30.4 MB (30419338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-slim-jessie` - linux; arm variant v5

```console
$ docker pull pypy@sha256:41e68307e09f31eff2e00c05074c605be09cff03a6595fc18f3ec6d9577ab47c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.2 MB (59220120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b92d0a2ef47a92010dc2ad0eadbd66612419a7a5e7d34142eb293d9ad7907631`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:35 GMT
ADD file:1922873efedf87e0caa2cf6abb867e47d7accfbfefc1bf7531b75e29fe37de07 in / 
# Wed, 05 Sep 2018 08:50:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:33:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:33:57 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:55:48 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 05 Sep 2018 13:55:48 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 13:56:58 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 13:56:58 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:d9dec235236bca9c64333dbfb092d7a058ef623c6ba80d027962a1196ec006d9`  
		Last Modified: Wed, 05 Sep 2018 09:00:01 GMT  
		Size: 28.4 MB (28430740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c832c8e30a41cd6d6a5c2eb5dcb3175b4868db48272c840fde646ba6593941`  
		Last Modified: Wed, 05 Sep 2018 14:00:46 GMT  
		Size: 2.6 MB (2561962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a56784c9269f7114a6ab26a3f674a582bae4c39819cc5329391ee793eb983339`  
		Last Modified: Wed, 05 Sep 2018 14:00:56 GMT  
		Size: 28.2 MB (28227418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-slim-jessie` - linux; 386

```console
$ docker pull pypy@sha256:3e4443109ec26d4cf906917d1d23af3eedd7f4ae7d403a42293c6e211e08ab48
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62700135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7147c2b66b11cbd0014519cf61635c50d5fa06dc0cfab5a0863c25728acdc4af`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Thu, 06 Sep 2018 21:52:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 21:52:42 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 21:53:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:53:18 GMT
ENV PYPY_VERSION=6.0.0
# Thu, 06 Sep 2018 21:53:18 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 06 Sep 2018 21:54:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 06 Sep 2018 21:54:15 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3e5d7633ac249bc6d7cc7a961a6cc7c93adb2e5527c6b5c84480f0f4140ad`  
		Last Modified: Thu, 06 Sep 2018 21:56:27 GMT  
		Size: 4.9 MB (4912378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ffcc8a2ae0c5ac7423a86d12a0a8cb0466f8191ccfcd31fb2b82bcd5a594761`  
		Last Modified: Thu, 06 Sep 2018 21:56:34 GMT  
		Size: 27.5 MB (27517688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3`

```console
$ docker pull pypy@sha256:3d83b7c198e86cd6760eb7842eead08e8871dfad0f9423ba541a0833d0e0cd98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3` - linux; amd64

```console
$ docker pull pypy@sha256:6f0c34dedf292b1ff25bc59f5c1318c095b79b54001a2024e6053279baa9f10e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.4 MB (279370480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3f0c033c460cfd6a16d7f557f48bd54850ffd7aa6db45dfd978bed1045db722`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:27:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:28:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:30:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 03:45:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 03:45:32 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 10:26:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:26:40 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 09 Oct 2018 22:23:30 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:24:55 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Tue, 09 Oct 2018 22:25:06 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 09 Oct 2018 22:25:12 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d06cf2f1b5e36347bb239d7ef7eb098e228d06a0a937e70798eb0dda459c61e`  
		Last Modified: Tue, 04 Sep 2018 22:50:42 GMT  
		Size: 17.5 MB (17538668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687ebdda822cb0f4af055462f887a7f76bc3f36d55161596fe93e45356dd45f0`  
		Last Modified: Tue, 04 Sep 2018 22:50:58 GMT  
		Size: 43.3 MB (43297955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99119ca3f34e74abac472e5c9194bbf69c0215b32fd6f652eec84a3d9d719e25`  
		Last Modified: Tue, 04 Sep 2018 22:51:30 GMT  
		Size: 131.1 MB (131104825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37e9972cb613cfe0098d4df422330b7560dcb82a0408c0eab83680e8611a534`  
		Last Modified: Wed, 05 Sep 2018 10:28:15 GMT  
		Size: 3.2 MB (3167664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5f34f92d7f43363e524ff1bdae2b7e40e9d6c7839d5449565d8f2d25a653de`  
		Last Modified: Tue, 09 Oct 2018 22:29:47 GMT  
		Size: 25.5 MB (25515701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3c7faa328af2a37e6e65b90e4c756e6d55813b4b99bfa023d858767f1dbb31`  
		Last Modified: Tue, 09 Oct 2018 22:29:43 GMT  
		Size: 4.5 MB (4493456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3` - linux; arm variant v5

```console
$ docker pull pypy@sha256:4f4a12644a91d5abf1deaae5c2eeebc3b2b708a73fc59135f26642e0bad39c5f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257633281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:477551afff688b4c9d41a7664a75b9f5b22c58c02e96c73689cab722674449be`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:01 GMT
ADD file:367230829937e3f959936d2c250983c5c63d8aff2e1987a1512c68d6b05ec2d9 in / 
# Wed, 05 Sep 2018 08:50:03 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:51:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 09:52:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:55:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:31:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:31:05 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:54:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:54:08 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 05 Sep 2018 13:54:08 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 13:57:30 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Wed, 05 Sep 2018 13:57:58 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 05 Sep 2018 13:57:58 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:e01fe8429ccebc46a010376112e864ce611e175d1f38e60e721840613bc3bc2a`  
		Last Modified: Wed, 05 Sep 2018 08:59:16 GMT  
		Size: 52.4 MB (52447943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6945911bf8713186fd7ee2c21f4ef1138adb8b200242ca929e7caab6978ff3a`  
		Last Modified: Wed, 05 Sep 2018 10:08:21 GMT  
		Size: 17.0 MB (17029456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a401183513e38faaa6c251a53174b409b087aeb9a040849500580106285c318`  
		Last Modified: Wed, 05 Sep 2018 10:08:50 GMT  
		Size: 41.1 MB (41141852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d9da9f5ead4f4d40d7d08848735eca137c95f0b280dee32ed78f06af3c478d`  
		Last Modified: Wed, 05 Sep 2018 10:09:35 GMT  
		Size: 115.8 MB (115759199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b9bf4cfea7382b4b46ae8238075a0c9f8b954a868ba755594e0defc944d9a3`  
		Last Modified: Wed, 05 Sep 2018 13:59:41 GMT  
		Size: 3.0 MB (3020284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b7a847ded3dfbd875b980c3c661dc08dae1ab5b10c950b76266005d7517058`  
		Last Modified: Wed, 05 Sep 2018 14:02:13 GMT  
		Size: 23.7 MB (23728929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737b5734e7972cb07d1886a6da7a2f314cac4e44fd8e97c533d970343d9af52a`  
		Last Modified: Wed, 05 Sep 2018 14:02:06 GMT  
		Size: 4.5 MB (4505618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3` - linux; 386

```console
$ docker pull pypy@sha256:94e02b3ae8f7bc8619b4a55ea1abf75ea0cefc7745114d1858d5cd077643a3d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.4 MB (284422641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f2f904b1425be96335e32b0eb946c3d4d6e46ee10986038df61d03df5542d88`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:28:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:28:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:35:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:51:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 21:51:39 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 21:52:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:52:12 GMT
ENV PYPY_VERSION=6.0.0
# Thu, 06 Sep 2018 21:52:12 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 06 Sep 2018 21:54:34 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Thu, 06 Sep 2018 21:54:45 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 06 Sep 2018 21:54:45 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912168c1f05e29e4f46f4cbc0e1aa3825348c0e9a19508d7658722848ddda877`  
		Last Modified: Wed, 05 Sep 2018 12:03:41 GMT  
		Size: 19.8 MB (19835822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e9187aeb009b949c7ae34ecf63d21f9c811f6f6bc2295738d4682eaba1f20e`  
		Last Modified: Wed, 05 Sep 2018 12:04:20 GMT  
		Size: 43.9 MB (43948373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cb71948e702f9b512dd129506d79a6eb60b556d877346982e3451003ee8629`  
		Last Modified: Wed, 05 Sep 2018 12:05:43 GMT  
		Size: 135.2 MB (135183725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf0403b468e6ad2f474d20adb6259af4aa89ff5160d7e7f98fc9a95c430fcd9`  
		Last Modified: Thu, 06 Sep 2018 21:56:02 GMT  
		Size: 3.3 MB (3271780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b813cf764e28d864bfcc6bbf33335b0fffd976f54203403918757629cb3e4e49`  
		Last Modified: Thu, 06 Sep 2018 21:56:58 GMT  
		Size: 23.2 MB (23194293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef85df19ff202f13f8e22d181c5004e37c95a4090c56adaf7afeb412a909d598`  
		Last Modified: Thu, 06 Sep 2018 21:56:50 GMT  
		Size: 4.5 MB (4504597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-6`

```console
$ docker pull pypy@sha256:3d83b7c198e86cd6760eb7842eead08e8871dfad0f9423ba541a0833d0e0cd98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-6` - linux; amd64

```console
$ docker pull pypy@sha256:6f0c34dedf292b1ff25bc59f5c1318c095b79b54001a2024e6053279baa9f10e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.4 MB (279370480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3f0c033c460cfd6a16d7f557f48bd54850ffd7aa6db45dfd978bed1045db722`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:27:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:28:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:30:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 03:45:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 03:45:32 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 10:26:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:26:40 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 09 Oct 2018 22:23:30 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:24:55 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Tue, 09 Oct 2018 22:25:06 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 09 Oct 2018 22:25:12 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d06cf2f1b5e36347bb239d7ef7eb098e228d06a0a937e70798eb0dda459c61e`  
		Last Modified: Tue, 04 Sep 2018 22:50:42 GMT  
		Size: 17.5 MB (17538668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687ebdda822cb0f4af055462f887a7f76bc3f36d55161596fe93e45356dd45f0`  
		Last Modified: Tue, 04 Sep 2018 22:50:58 GMT  
		Size: 43.3 MB (43297955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99119ca3f34e74abac472e5c9194bbf69c0215b32fd6f652eec84a3d9d719e25`  
		Last Modified: Tue, 04 Sep 2018 22:51:30 GMT  
		Size: 131.1 MB (131104825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37e9972cb613cfe0098d4df422330b7560dcb82a0408c0eab83680e8611a534`  
		Last Modified: Wed, 05 Sep 2018 10:28:15 GMT  
		Size: 3.2 MB (3167664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5f34f92d7f43363e524ff1bdae2b7e40e9d6c7839d5449565d8f2d25a653de`  
		Last Modified: Tue, 09 Oct 2018 22:29:47 GMT  
		Size: 25.5 MB (25515701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3c7faa328af2a37e6e65b90e4c756e6d55813b4b99bfa023d858767f1dbb31`  
		Last Modified: Tue, 09 Oct 2018 22:29:43 GMT  
		Size: 4.5 MB (4493456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6` - linux; arm variant v5

```console
$ docker pull pypy@sha256:4f4a12644a91d5abf1deaae5c2eeebc3b2b708a73fc59135f26642e0bad39c5f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257633281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:477551afff688b4c9d41a7664a75b9f5b22c58c02e96c73689cab722674449be`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:01 GMT
ADD file:367230829937e3f959936d2c250983c5c63d8aff2e1987a1512c68d6b05ec2d9 in / 
# Wed, 05 Sep 2018 08:50:03 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:51:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 09:52:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:55:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:31:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:31:05 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:54:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:54:08 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 05 Sep 2018 13:54:08 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 13:57:30 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Wed, 05 Sep 2018 13:57:58 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 05 Sep 2018 13:57:58 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:e01fe8429ccebc46a010376112e864ce611e175d1f38e60e721840613bc3bc2a`  
		Last Modified: Wed, 05 Sep 2018 08:59:16 GMT  
		Size: 52.4 MB (52447943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6945911bf8713186fd7ee2c21f4ef1138adb8b200242ca929e7caab6978ff3a`  
		Last Modified: Wed, 05 Sep 2018 10:08:21 GMT  
		Size: 17.0 MB (17029456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a401183513e38faaa6c251a53174b409b087aeb9a040849500580106285c318`  
		Last Modified: Wed, 05 Sep 2018 10:08:50 GMT  
		Size: 41.1 MB (41141852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d9da9f5ead4f4d40d7d08848735eca137c95f0b280dee32ed78f06af3c478d`  
		Last Modified: Wed, 05 Sep 2018 10:09:35 GMT  
		Size: 115.8 MB (115759199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b9bf4cfea7382b4b46ae8238075a0c9f8b954a868ba755594e0defc944d9a3`  
		Last Modified: Wed, 05 Sep 2018 13:59:41 GMT  
		Size: 3.0 MB (3020284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b7a847ded3dfbd875b980c3c661dc08dae1ab5b10c950b76266005d7517058`  
		Last Modified: Wed, 05 Sep 2018 14:02:13 GMT  
		Size: 23.7 MB (23728929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737b5734e7972cb07d1886a6da7a2f314cac4e44fd8e97c533d970343d9af52a`  
		Last Modified: Wed, 05 Sep 2018 14:02:06 GMT  
		Size: 4.5 MB (4505618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6` - linux; 386

```console
$ docker pull pypy@sha256:94e02b3ae8f7bc8619b4a55ea1abf75ea0cefc7745114d1858d5cd077643a3d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.4 MB (284422641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f2f904b1425be96335e32b0eb946c3d4d6e46ee10986038df61d03df5542d88`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:28:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:28:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:35:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:51:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 21:51:39 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 21:52:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:52:12 GMT
ENV PYPY_VERSION=6.0.0
# Thu, 06 Sep 2018 21:52:12 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 06 Sep 2018 21:54:34 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Thu, 06 Sep 2018 21:54:45 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 06 Sep 2018 21:54:45 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912168c1f05e29e4f46f4cbc0e1aa3825348c0e9a19508d7658722848ddda877`  
		Last Modified: Wed, 05 Sep 2018 12:03:41 GMT  
		Size: 19.8 MB (19835822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e9187aeb009b949c7ae34ecf63d21f9c811f6f6bc2295738d4682eaba1f20e`  
		Last Modified: Wed, 05 Sep 2018 12:04:20 GMT  
		Size: 43.9 MB (43948373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cb71948e702f9b512dd129506d79a6eb60b556d877346982e3451003ee8629`  
		Last Modified: Wed, 05 Sep 2018 12:05:43 GMT  
		Size: 135.2 MB (135183725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf0403b468e6ad2f474d20adb6259af4aa89ff5160d7e7f98fc9a95c430fcd9`  
		Last Modified: Thu, 06 Sep 2018 21:56:02 GMT  
		Size: 3.3 MB (3271780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b813cf764e28d864bfcc6bbf33335b0fffd976f54203403918757629cb3e4e49`  
		Last Modified: Thu, 06 Sep 2018 21:56:58 GMT  
		Size: 23.2 MB (23194293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef85df19ff202f13f8e22d181c5004e37c95a4090c56adaf7afeb412a909d598`  
		Last Modified: Thu, 06 Sep 2018 21:56:50 GMT  
		Size: 4.5 MB (4504597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-6.0`

```console
$ docker pull pypy@sha256:3d83b7c198e86cd6760eb7842eead08e8871dfad0f9423ba541a0833d0e0cd98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-6.0` - linux; amd64

```console
$ docker pull pypy@sha256:6f0c34dedf292b1ff25bc59f5c1318c095b79b54001a2024e6053279baa9f10e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.4 MB (279370480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3f0c033c460cfd6a16d7f557f48bd54850ffd7aa6db45dfd978bed1045db722`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:27:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:28:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:30:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 03:45:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 03:45:32 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 10:26:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:26:40 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 09 Oct 2018 22:23:30 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:24:55 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Tue, 09 Oct 2018 22:25:06 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 09 Oct 2018 22:25:12 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d06cf2f1b5e36347bb239d7ef7eb098e228d06a0a937e70798eb0dda459c61e`  
		Last Modified: Tue, 04 Sep 2018 22:50:42 GMT  
		Size: 17.5 MB (17538668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687ebdda822cb0f4af055462f887a7f76bc3f36d55161596fe93e45356dd45f0`  
		Last Modified: Tue, 04 Sep 2018 22:50:58 GMT  
		Size: 43.3 MB (43297955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99119ca3f34e74abac472e5c9194bbf69c0215b32fd6f652eec84a3d9d719e25`  
		Last Modified: Tue, 04 Sep 2018 22:51:30 GMT  
		Size: 131.1 MB (131104825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37e9972cb613cfe0098d4df422330b7560dcb82a0408c0eab83680e8611a534`  
		Last Modified: Wed, 05 Sep 2018 10:28:15 GMT  
		Size: 3.2 MB (3167664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5f34f92d7f43363e524ff1bdae2b7e40e9d6c7839d5449565d8f2d25a653de`  
		Last Modified: Tue, 09 Oct 2018 22:29:47 GMT  
		Size: 25.5 MB (25515701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3c7faa328af2a37e6e65b90e4c756e6d55813b4b99bfa023d858767f1dbb31`  
		Last Modified: Tue, 09 Oct 2018 22:29:43 GMT  
		Size: 4.5 MB (4493456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6.0` - linux; arm variant v5

```console
$ docker pull pypy@sha256:4f4a12644a91d5abf1deaae5c2eeebc3b2b708a73fc59135f26642e0bad39c5f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257633281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:477551afff688b4c9d41a7664a75b9f5b22c58c02e96c73689cab722674449be`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:01 GMT
ADD file:367230829937e3f959936d2c250983c5c63d8aff2e1987a1512c68d6b05ec2d9 in / 
# Wed, 05 Sep 2018 08:50:03 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:51:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 09:52:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:55:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:31:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:31:05 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:54:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:54:08 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 05 Sep 2018 13:54:08 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 13:57:30 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Wed, 05 Sep 2018 13:57:58 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 05 Sep 2018 13:57:58 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:e01fe8429ccebc46a010376112e864ce611e175d1f38e60e721840613bc3bc2a`  
		Last Modified: Wed, 05 Sep 2018 08:59:16 GMT  
		Size: 52.4 MB (52447943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6945911bf8713186fd7ee2c21f4ef1138adb8b200242ca929e7caab6978ff3a`  
		Last Modified: Wed, 05 Sep 2018 10:08:21 GMT  
		Size: 17.0 MB (17029456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a401183513e38faaa6c251a53174b409b087aeb9a040849500580106285c318`  
		Last Modified: Wed, 05 Sep 2018 10:08:50 GMT  
		Size: 41.1 MB (41141852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d9da9f5ead4f4d40d7d08848735eca137c95f0b280dee32ed78f06af3c478d`  
		Last Modified: Wed, 05 Sep 2018 10:09:35 GMT  
		Size: 115.8 MB (115759199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b9bf4cfea7382b4b46ae8238075a0c9f8b954a868ba755594e0defc944d9a3`  
		Last Modified: Wed, 05 Sep 2018 13:59:41 GMT  
		Size: 3.0 MB (3020284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b7a847ded3dfbd875b980c3c661dc08dae1ab5b10c950b76266005d7517058`  
		Last Modified: Wed, 05 Sep 2018 14:02:13 GMT  
		Size: 23.7 MB (23728929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737b5734e7972cb07d1886a6da7a2f314cac4e44fd8e97c533d970343d9af52a`  
		Last Modified: Wed, 05 Sep 2018 14:02:06 GMT  
		Size: 4.5 MB (4505618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6.0` - linux; 386

```console
$ docker pull pypy@sha256:94e02b3ae8f7bc8619b4a55ea1abf75ea0cefc7745114d1858d5cd077643a3d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.4 MB (284422641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f2f904b1425be96335e32b0eb946c3d4d6e46ee10986038df61d03df5542d88`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:28:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:28:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:35:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:51:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 21:51:39 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 21:52:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:52:12 GMT
ENV PYPY_VERSION=6.0.0
# Thu, 06 Sep 2018 21:52:12 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 06 Sep 2018 21:54:34 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Thu, 06 Sep 2018 21:54:45 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 06 Sep 2018 21:54:45 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912168c1f05e29e4f46f4cbc0e1aa3825348c0e9a19508d7658722848ddda877`  
		Last Modified: Wed, 05 Sep 2018 12:03:41 GMT  
		Size: 19.8 MB (19835822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e9187aeb009b949c7ae34ecf63d21f9c811f6f6bc2295738d4682eaba1f20e`  
		Last Modified: Wed, 05 Sep 2018 12:04:20 GMT  
		Size: 43.9 MB (43948373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cb71948e702f9b512dd129506d79a6eb60b556d877346982e3451003ee8629`  
		Last Modified: Wed, 05 Sep 2018 12:05:43 GMT  
		Size: 135.2 MB (135183725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf0403b468e6ad2f474d20adb6259af4aa89ff5160d7e7f98fc9a95c430fcd9`  
		Last Modified: Thu, 06 Sep 2018 21:56:02 GMT  
		Size: 3.3 MB (3271780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b813cf764e28d864bfcc6bbf33335b0fffd976f54203403918757629cb3e4e49`  
		Last Modified: Thu, 06 Sep 2018 21:56:58 GMT  
		Size: 23.2 MB (23194293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef85df19ff202f13f8e22d181c5004e37c95a4090c56adaf7afeb412a909d598`  
		Last Modified: Thu, 06 Sep 2018 21:56:50 GMT  
		Size: 4.5 MB (4504597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-6.0.0`

```console
$ docker pull pypy@sha256:3d83b7c198e86cd6760eb7842eead08e8871dfad0f9423ba541a0833d0e0cd98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-6.0.0` - linux; amd64

```console
$ docker pull pypy@sha256:6f0c34dedf292b1ff25bc59f5c1318c095b79b54001a2024e6053279baa9f10e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.4 MB (279370480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3f0c033c460cfd6a16d7f557f48bd54850ffd7aa6db45dfd978bed1045db722`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:27:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:28:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:30:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 03:45:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 03:45:32 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 10:26:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:26:40 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 09 Oct 2018 22:23:30 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:24:55 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Tue, 09 Oct 2018 22:25:06 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 09 Oct 2018 22:25:12 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d06cf2f1b5e36347bb239d7ef7eb098e228d06a0a937e70798eb0dda459c61e`  
		Last Modified: Tue, 04 Sep 2018 22:50:42 GMT  
		Size: 17.5 MB (17538668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687ebdda822cb0f4af055462f887a7f76bc3f36d55161596fe93e45356dd45f0`  
		Last Modified: Tue, 04 Sep 2018 22:50:58 GMT  
		Size: 43.3 MB (43297955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99119ca3f34e74abac472e5c9194bbf69c0215b32fd6f652eec84a3d9d719e25`  
		Last Modified: Tue, 04 Sep 2018 22:51:30 GMT  
		Size: 131.1 MB (131104825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37e9972cb613cfe0098d4df422330b7560dcb82a0408c0eab83680e8611a534`  
		Last Modified: Wed, 05 Sep 2018 10:28:15 GMT  
		Size: 3.2 MB (3167664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5f34f92d7f43363e524ff1bdae2b7e40e9d6c7839d5449565d8f2d25a653de`  
		Last Modified: Tue, 09 Oct 2018 22:29:47 GMT  
		Size: 25.5 MB (25515701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3c7faa328af2a37e6e65b90e4c756e6d55813b4b99bfa023d858767f1dbb31`  
		Last Modified: Tue, 09 Oct 2018 22:29:43 GMT  
		Size: 4.5 MB (4493456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6.0.0` - linux; arm variant v5

```console
$ docker pull pypy@sha256:4f4a12644a91d5abf1deaae5c2eeebc3b2b708a73fc59135f26642e0bad39c5f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257633281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:477551afff688b4c9d41a7664a75b9f5b22c58c02e96c73689cab722674449be`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:01 GMT
ADD file:367230829937e3f959936d2c250983c5c63d8aff2e1987a1512c68d6b05ec2d9 in / 
# Wed, 05 Sep 2018 08:50:03 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:51:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 09:52:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:55:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:31:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:31:05 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:54:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:54:08 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 05 Sep 2018 13:54:08 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 13:57:30 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Wed, 05 Sep 2018 13:57:58 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 05 Sep 2018 13:57:58 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:e01fe8429ccebc46a010376112e864ce611e175d1f38e60e721840613bc3bc2a`  
		Last Modified: Wed, 05 Sep 2018 08:59:16 GMT  
		Size: 52.4 MB (52447943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6945911bf8713186fd7ee2c21f4ef1138adb8b200242ca929e7caab6978ff3a`  
		Last Modified: Wed, 05 Sep 2018 10:08:21 GMT  
		Size: 17.0 MB (17029456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a401183513e38faaa6c251a53174b409b087aeb9a040849500580106285c318`  
		Last Modified: Wed, 05 Sep 2018 10:08:50 GMT  
		Size: 41.1 MB (41141852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d9da9f5ead4f4d40d7d08848735eca137c95f0b280dee32ed78f06af3c478d`  
		Last Modified: Wed, 05 Sep 2018 10:09:35 GMT  
		Size: 115.8 MB (115759199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b9bf4cfea7382b4b46ae8238075a0c9f8b954a868ba755594e0defc944d9a3`  
		Last Modified: Wed, 05 Sep 2018 13:59:41 GMT  
		Size: 3.0 MB (3020284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b7a847ded3dfbd875b980c3c661dc08dae1ab5b10c950b76266005d7517058`  
		Last Modified: Wed, 05 Sep 2018 14:02:13 GMT  
		Size: 23.7 MB (23728929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737b5734e7972cb07d1886a6da7a2f314cac4e44fd8e97c533d970343d9af52a`  
		Last Modified: Wed, 05 Sep 2018 14:02:06 GMT  
		Size: 4.5 MB (4505618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6.0.0` - linux; 386

```console
$ docker pull pypy@sha256:94e02b3ae8f7bc8619b4a55ea1abf75ea0cefc7745114d1858d5cd077643a3d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.4 MB (284422641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f2f904b1425be96335e32b0eb946c3d4d6e46ee10986038df61d03df5542d88`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:28:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:28:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:35:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:51:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 21:51:39 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 21:52:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:52:12 GMT
ENV PYPY_VERSION=6.0.0
# Thu, 06 Sep 2018 21:52:12 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 06 Sep 2018 21:54:34 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Thu, 06 Sep 2018 21:54:45 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 06 Sep 2018 21:54:45 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912168c1f05e29e4f46f4cbc0e1aa3825348c0e9a19508d7658722848ddda877`  
		Last Modified: Wed, 05 Sep 2018 12:03:41 GMT  
		Size: 19.8 MB (19835822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e9187aeb009b949c7ae34ecf63d21f9c811f6f6bc2295738d4682eaba1f20e`  
		Last Modified: Wed, 05 Sep 2018 12:04:20 GMT  
		Size: 43.9 MB (43948373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cb71948e702f9b512dd129506d79a6eb60b556d877346982e3451003ee8629`  
		Last Modified: Wed, 05 Sep 2018 12:05:43 GMT  
		Size: 135.2 MB (135183725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf0403b468e6ad2f474d20adb6259af4aa89ff5160d7e7f98fc9a95c430fcd9`  
		Last Modified: Thu, 06 Sep 2018 21:56:02 GMT  
		Size: 3.3 MB (3271780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b813cf764e28d864bfcc6bbf33335b0fffd976f54203403918757629cb3e4e49`  
		Last Modified: Thu, 06 Sep 2018 21:56:58 GMT  
		Size: 23.2 MB (23194293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef85df19ff202f13f8e22d181c5004e37c95a4090c56adaf7afeb412a909d598`  
		Last Modified: Thu, 06 Sep 2018 21:56:50 GMT  
		Size: 4.5 MB (4504597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-6.0.0-jessie`

```console
$ docker pull pypy@sha256:3d83b7c198e86cd6760eb7842eead08e8871dfad0f9423ba541a0833d0e0cd98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-6.0.0-jessie` - linux; amd64

```console
$ docker pull pypy@sha256:6f0c34dedf292b1ff25bc59f5c1318c095b79b54001a2024e6053279baa9f10e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.4 MB (279370480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3f0c033c460cfd6a16d7f557f48bd54850ffd7aa6db45dfd978bed1045db722`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:27:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:28:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:30:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 03:45:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 03:45:32 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 10:26:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:26:40 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 09 Oct 2018 22:23:30 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:24:55 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Tue, 09 Oct 2018 22:25:06 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 09 Oct 2018 22:25:12 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d06cf2f1b5e36347bb239d7ef7eb098e228d06a0a937e70798eb0dda459c61e`  
		Last Modified: Tue, 04 Sep 2018 22:50:42 GMT  
		Size: 17.5 MB (17538668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687ebdda822cb0f4af055462f887a7f76bc3f36d55161596fe93e45356dd45f0`  
		Last Modified: Tue, 04 Sep 2018 22:50:58 GMT  
		Size: 43.3 MB (43297955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99119ca3f34e74abac472e5c9194bbf69c0215b32fd6f652eec84a3d9d719e25`  
		Last Modified: Tue, 04 Sep 2018 22:51:30 GMT  
		Size: 131.1 MB (131104825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37e9972cb613cfe0098d4df422330b7560dcb82a0408c0eab83680e8611a534`  
		Last Modified: Wed, 05 Sep 2018 10:28:15 GMT  
		Size: 3.2 MB (3167664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5f34f92d7f43363e524ff1bdae2b7e40e9d6c7839d5449565d8f2d25a653de`  
		Last Modified: Tue, 09 Oct 2018 22:29:47 GMT  
		Size: 25.5 MB (25515701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3c7faa328af2a37e6e65b90e4c756e6d55813b4b99bfa023d858767f1dbb31`  
		Last Modified: Tue, 09 Oct 2018 22:29:43 GMT  
		Size: 4.5 MB (4493456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6.0.0-jessie` - linux; arm variant v5

```console
$ docker pull pypy@sha256:4f4a12644a91d5abf1deaae5c2eeebc3b2b708a73fc59135f26642e0bad39c5f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257633281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:477551afff688b4c9d41a7664a75b9f5b22c58c02e96c73689cab722674449be`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:01 GMT
ADD file:367230829937e3f959936d2c250983c5c63d8aff2e1987a1512c68d6b05ec2d9 in / 
# Wed, 05 Sep 2018 08:50:03 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:51:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 09:52:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:55:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:31:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:31:05 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:54:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:54:08 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 05 Sep 2018 13:54:08 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 13:57:30 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Wed, 05 Sep 2018 13:57:58 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 05 Sep 2018 13:57:58 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:e01fe8429ccebc46a010376112e864ce611e175d1f38e60e721840613bc3bc2a`  
		Last Modified: Wed, 05 Sep 2018 08:59:16 GMT  
		Size: 52.4 MB (52447943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6945911bf8713186fd7ee2c21f4ef1138adb8b200242ca929e7caab6978ff3a`  
		Last Modified: Wed, 05 Sep 2018 10:08:21 GMT  
		Size: 17.0 MB (17029456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a401183513e38faaa6c251a53174b409b087aeb9a040849500580106285c318`  
		Last Modified: Wed, 05 Sep 2018 10:08:50 GMT  
		Size: 41.1 MB (41141852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d9da9f5ead4f4d40d7d08848735eca137c95f0b280dee32ed78f06af3c478d`  
		Last Modified: Wed, 05 Sep 2018 10:09:35 GMT  
		Size: 115.8 MB (115759199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b9bf4cfea7382b4b46ae8238075a0c9f8b954a868ba755594e0defc944d9a3`  
		Last Modified: Wed, 05 Sep 2018 13:59:41 GMT  
		Size: 3.0 MB (3020284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b7a847ded3dfbd875b980c3c661dc08dae1ab5b10c950b76266005d7517058`  
		Last Modified: Wed, 05 Sep 2018 14:02:13 GMT  
		Size: 23.7 MB (23728929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737b5734e7972cb07d1886a6da7a2f314cac4e44fd8e97c533d970343d9af52a`  
		Last Modified: Wed, 05 Sep 2018 14:02:06 GMT  
		Size: 4.5 MB (4505618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6.0.0-jessie` - linux; 386

```console
$ docker pull pypy@sha256:94e02b3ae8f7bc8619b4a55ea1abf75ea0cefc7745114d1858d5cd077643a3d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.4 MB (284422641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f2f904b1425be96335e32b0eb946c3d4d6e46ee10986038df61d03df5542d88`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:28:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:28:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:35:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:51:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 21:51:39 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 21:52:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:52:12 GMT
ENV PYPY_VERSION=6.0.0
# Thu, 06 Sep 2018 21:52:12 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 06 Sep 2018 21:54:34 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Thu, 06 Sep 2018 21:54:45 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 06 Sep 2018 21:54:45 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912168c1f05e29e4f46f4cbc0e1aa3825348c0e9a19508d7658722848ddda877`  
		Last Modified: Wed, 05 Sep 2018 12:03:41 GMT  
		Size: 19.8 MB (19835822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e9187aeb009b949c7ae34ecf63d21f9c811f6f6bc2295738d4682eaba1f20e`  
		Last Modified: Wed, 05 Sep 2018 12:04:20 GMT  
		Size: 43.9 MB (43948373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cb71948e702f9b512dd129506d79a6eb60b556d877346982e3451003ee8629`  
		Last Modified: Wed, 05 Sep 2018 12:05:43 GMT  
		Size: 135.2 MB (135183725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf0403b468e6ad2f474d20adb6259af4aa89ff5160d7e7f98fc9a95c430fcd9`  
		Last Modified: Thu, 06 Sep 2018 21:56:02 GMT  
		Size: 3.3 MB (3271780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b813cf764e28d864bfcc6bbf33335b0fffd976f54203403918757629cb3e4e49`  
		Last Modified: Thu, 06 Sep 2018 21:56:58 GMT  
		Size: 23.2 MB (23194293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef85df19ff202f13f8e22d181c5004e37c95a4090c56adaf7afeb412a909d598`  
		Last Modified: Thu, 06 Sep 2018 21:56:50 GMT  
		Size: 4.5 MB (4504597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-6.0.0-slim`

```console
$ docker pull pypy@sha256:ffec5dffeb410b1d2cd50ab7696ae30be06ab63b88e460212c202edb92937656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-6.0.0-slim` - linux; amd64

```console
$ docker pull pypy@sha256:b3758765dbfec0fd4a719da43e562b043e6680debd79f78952cf8a80c0aa5a1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63240331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d3c25a7c15ffc44dbd88852e2444b5e1843820b92f049374fa1feb1c29f8a5f`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 21:43:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Sep 2018 21:43:35 GMT
ENV LANG=C.UTF-8
# Tue, 04 Sep 2018 21:44:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 21:44:09 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 09 Oct 2018 22:23:57 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:26:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 09 Oct 2018 22:26:19 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bf8a581274f72974f3869e840059e702b7b3ed488aa520844db08fad5842b2`  
		Last Modified: Tue, 04 Sep 2018 21:47:37 GMT  
		Size: 2.8 MB (2811143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eecdcef246ec7fd8f6f64d3458c6cf07f122e30d1dc257c42c251173465913d`  
		Last Modified: Tue, 09 Oct 2018 22:31:31 GMT  
		Size: 30.3 MB (30308624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6.0.0-slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:8493fc8c1f6cfa76b56b4dc388efa2c40e009b70af5fb9b6bc8b9e016d6bf690
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.5 MB (59521934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8761c43e1b24f0c8db6b152a3ed849e7f1675415062838ec357924e3e76a570`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:35 GMT
ADD file:1922873efedf87e0caa2cf6abb867e47d7accfbfefc1bf7531b75e29fe37de07 in / 
# Wed, 05 Sep 2018 08:50:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:33:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:33:57 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:55:48 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 05 Sep 2018 13:55:48 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 13:59:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 13:59:21 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:d9dec235236bca9c64333dbfb092d7a058ef623c6ba80d027962a1196ec006d9`  
		Last Modified: Wed, 05 Sep 2018 09:00:01 GMT  
		Size: 28.4 MB (28430740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c832c8e30a41cd6d6a5c2eb5dcb3175b4868db48272c840fde646ba6593941`  
		Last Modified: Wed, 05 Sep 2018 14:00:46 GMT  
		Size: 2.6 MB (2561962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c17234e3ac4abbba1fbbea63a1434c3dc89836a43d4d7c51df14cec765012a89`  
		Last Modified: Wed, 05 Sep 2018 14:03:41 GMT  
		Size: 28.5 MB (28529232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6.0.0-slim` - linux; 386

```console
$ docker pull pypy@sha256:f9724c011dc1055bc237853d7e6f0af37ede5a3c4742d69c41b6c42a4a411adb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63176997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e23d1a83c0b27044badd842105170b5ddb1632c3a03956ea977d14ad517ce2e`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Thu, 06 Sep 2018 21:52:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 21:52:42 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 21:53:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:53:18 GMT
ENV PYPY_VERSION=6.0.0
# Thu, 06 Sep 2018 21:53:18 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 06 Sep 2018 21:55:49 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 06 Sep 2018 21:55:49 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3e5d7633ac249bc6d7cc7a961a6cc7c93adb2e5527c6b5c84480f0f4140ad`  
		Last Modified: Thu, 06 Sep 2018 21:56:27 GMT  
		Size: 4.9 MB (4912378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ce0dd8a30193fc031292cde98208164d64ad1e3805ce21531dc2c1da39342e`  
		Last Modified: Thu, 06 Sep 2018 21:57:30 GMT  
		Size: 28.0 MB (27994550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-6.0.0-slim-jessie`

```console
$ docker pull pypy@sha256:ffec5dffeb410b1d2cd50ab7696ae30be06ab63b88e460212c202edb92937656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-6.0.0-slim-jessie` - linux; amd64

```console
$ docker pull pypy@sha256:b3758765dbfec0fd4a719da43e562b043e6680debd79f78952cf8a80c0aa5a1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63240331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d3c25a7c15ffc44dbd88852e2444b5e1843820b92f049374fa1feb1c29f8a5f`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 21:43:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Sep 2018 21:43:35 GMT
ENV LANG=C.UTF-8
# Tue, 04 Sep 2018 21:44:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 21:44:09 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 09 Oct 2018 22:23:57 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:26:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 09 Oct 2018 22:26:19 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bf8a581274f72974f3869e840059e702b7b3ed488aa520844db08fad5842b2`  
		Last Modified: Tue, 04 Sep 2018 21:47:37 GMT  
		Size: 2.8 MB (2811143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eecdcef246ec7fd8f6f64d3458c6cf07f122e30d1dc257c42c251173465913d`  
		Last Modified: Tue, 09 Oct 2018 22:31:31 GMT  
		Size: 30.3 MB (30308624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6.0.0-slim-jessie` - linux; arm variant v5

```console
$ docker pull pypy@sha256:8493fc8c1f6cfa76b56b4dc388efa2c40e009b70af5fb9b6bc8b9e016d6bf690
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.5 MB (59521934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8761c43e1b24f0c8db6b152a3ed849e7f1675415062838ec357924e3e76a570`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:35 GMT
ADD file:1922873efedf87e0caa2cf6abb867e47d7accfbfefc1bf7531b75e29fe37de07 in / 
# Wed, 05 Sep 2018 08:50:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:33:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:33:57 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:55:48 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 05 Sep 2018 13:55:48 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 13:59:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 13:59:21 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:d9dec235236bca9c64333dbfb092d7a058ef623c6ba80d027962a1196ec006d9`  
		Last Modified: Wed, 05 Sep 2018 09:00:01 GMT  
		Size: 28.4 MB (28430740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c832c8e30a41cd6d6a5c2eb5dcb3175b4868db48272c840fde646ba6593941`  
		Last Modified: Wed, 05 Sep 2018 14:00:46 GMT  
		Size: 2.6 MB (2561962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c17234e3ac4abbba1fbbea63a1434c3dc89836a43d4d7c51df14cec765012a89`  
		Last Modified: Wed, 05 Sep 2018 14:03:41 GMT  
		Size: 28.5 MB (28529232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6.0.0-slim-jessie` - linux; 386

```console
$ docker pull pypy@sha256:f9724c011dc1055bc237853d7e6f0af37ede5a3c4742d69c41b6c42a4a411adb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63176997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e23d1a83c0b27044badd842105170b5ddb1632c3a03956ea977d14ad517ce2e`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Thu, 06 Sep 2018 21:52:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 21:52:42 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 21:53:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:53:18 GMT
ENV PYPY_VERSION=6.0.0
# Thu, 06 Sep 2018 21:53:18 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 06 Sep 2018 21:55:49 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 06 Sep 2018 21:55:49 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3e5d7633ac249bc6d7cc7a961a6cc7c93adb2e5527c6b5c84480f0f4140ad`  
		Last Modified: Thu, 06 Sep 2018 21:56:27 GMT  
		Size: 4.9 MB (4912378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ce0dd8a30193fc031292cde98208164d64ad1e3805ce21531dc2c1da39342e`  
		Last Modified: Thu, 06 Sep 2018 21:57:30 GMT  
		Size: 28.0 MB (27994550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-6.0-jessie`

```console
$ docker pull pypy@sha256:3d83b7c198e86cd6760eb7842eead08e8871dfad0f9423ba541a0833d0e0cd98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-6.0-jessie` - linux; amd64

```console
$ docker pull pypy@sha256:6f0c34dedf292b1ff25bc59f5c1318c095b79b54001a2024e6053279baa9f10e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.4 MB (279370480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3f0c033c460cfd6a16d7f557f48bd54850ffd7aa6db45dfd978bed1045db722`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:27:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:28:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:30:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 03:45:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 03:45:32 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 10:26:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:26:40 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 09 Oct 2018 22:23:30 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:24:55 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Tue, 09 Oct 2018 22:25:06 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 09 Oct 2018 22:25:12 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d06cf2f1b5e36347bb239d7ef7eb098e228d06a0a937e70798eb0dda459c61e`  
		Last Modified: Tue, 04 Sep 2018 22:50:42 GMT  
		Size: 17.5 MB (17538668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687ebdda822cb0f4af055462f887a7f76bc3f36d55161596fe93e45356dd45f0`  
		Last Modified: Tue, 04 Sep 2018 22:50:58 GMT  
		Size: 43.3 MB (43297955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99119ca3f34e74abac472e5c9194bbf69c0215b32fd6f652eec84a3d9d719e25`  
		Last Modified: Tue, 04 Sep 2018 22:51:30 GMT  
		Size: 131.1 MB (131104825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37e9972cb613cfe0098d4df422330b7560dcb82a0408c0eab83680e8611a534`  
		Last Modified: Wed, 05 Sep 2018 10:28:15 GMT  
		Size: 3.2 MB (3167664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5f34f92d7f43363e524ff1bdae2b7e40e9d6c7839d5449565d8f2d25a653de`  
		Last Modified: Tue, 09 Oct 2018 22:29:47 GMT  
		Size: 25.5 MB (25515701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3c7faa328af2a37e6e65b90e4c756e6d55813b4b99bfa023d858767f1dbb31`  
		Last Modified: Tue, 09 Oct 2018 22:29:43 GMT  
		Size: 4.5 MB (4493456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6.0-jessie` - linux; arm variant v5

```console
$ docker pull pypy@sha256:4f4a12644a91d5abf1deaae5c2eeebc3b2b708a73fc59135f26642e0bad39c5f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257633281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:477551afff688b4c9d41a7664a75b9f5b22c58c02e96c73689cab722674449be`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:01 GMT
ADD file:367230829937e3f959936d2c250983c5c63d8aff2e1987a1512c68d6b05ec2d9 in / 
# Wed, 05 Sep 2018 08:50:03 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:51:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 09:52:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:55:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:31:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:31:05 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:54:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:54:08 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 05 Sep 2018 13:54:08 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 13:57:30 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Wed, 05 Sep 2018 13:57:58 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 05 Sep 2018 13:57:58 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:e01fe8429ccebc46a010376112e864ce611e175d1f38e60e721840613bc3bc2a`  
		Last Modified: Wed, 05 Sep 2018 08:59:16 GMT  
		Size: 52.4 MB (52447943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6945911bf8713186fd7ee2c21f4ef1138adb8b200242ca929e7caab6978ff3a`  
		Last Modified: Wed, 05 Sep 2018 10:08:21 GMT  
		Size: 17.0 MB (17029456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a401183513e38faaa6c251a53174b409b087aeb9a040849500580106285c318`  
		Last Modified: Wed, 05 Sep 2018 10:08:50 GMT  
		Size: 41.1 MB (41141852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d9da9f5ead4f4d40d7d08848735eca137c95f0b280dee32ed78f06af3c478d`  
		Last Modified: Wed, 05 Sep 2018 10:09:35 GMT  
		Size: 115.8 MB (115759199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b9bf4cfea7382b4b46ae8238075a0c9f8b954a868ba755594e0defc944d9a3`  
		Last Modified: Wed, 05 Sep 2018 13:59:41 GMT  
		Size: 3.0 MB (3020284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b7a847ded3dfbd875b980c3c661dc08dae1ab5b10c950b76266005d7517058`  
		Last Modified: Wed, 05 Sep 2018 14:02:13 GMT  
		Size: 23.7 MB (23728929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737b5734e7972cb07d1886a6da7a2f314cac4e44fd8e97c533d970343d9af52a`  
		Last Modified: Wed, 05 Sep 2018 14:02:06 GMT  
		Size: 4.5 MB (4505618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6.0-jessie` - linux; 386

```console
$ docker pull pypy@sha256:94e02b3ae8f7bc8619b4a55ea1abf75ea0cefc7745114d1858d5cd077643a3d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.4 MB (284422641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f2f904b1425be96335e32b0eb946c3d4d6e46ee10986038df61d03df5542d88`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:28:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:28:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:35:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:51:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 21:51:39 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 21:52:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:52:12 GMT
ENV PYPY_VERSION=6.0.0
# Thu, 06 Sep 2018 21:52:12 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 06 Sep 2018 21:54:34 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Thu, 06 Sep 2018 21:54:45 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 06 Sep 2018 21:54:45 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912168c1f05e29e4f46f4cbc0e1aa3825348c0e9a19508d7658722848ddda877`  
		Last Modified: Wed, 05 Sep 2018 12:03:41 GMT  
		Size: 19.8 MB (19835822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e9187aeb009b949c7ae34ecf63d21f9c811f6f6bc2295738d4682eaba1f20e`  
		Last Modified: Wed, 05 Sep 2018 12:04:20 GMT  
		Size: 43.9 MB (43948373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cb71948e702f9b512dd129506d79a6eb60b556d877346982e3451003ee8629`  
		Last Modified: Wed, 05 Sep 2018 12:05:43 GMT  
		Size: 135.2 MB (135183725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf0403b468e6ad2f474d20adb6259af4aa89ff5160d7e7f98fc9a95c430fcd9`  
		Last Modified: Thu, 06 Sep 2018 21:56:02 GMT  
		Size: 3.3 MB (3271780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b813cf764e28d864bfcc6bbf33335b0fffd976f54203403918757629cb3e4e49`  
		Last Modified: Thu, 06 Sep 2018 21:56:58 GMT  
		Size: 23.2 MB (23194293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef85df19ff202f13f8e22d181c5004e37c95a4090c56adaf7afeb412a909d598`  
		Last Modified: Thu, 06 Sep 2018 21:56:50 GMT  
		Size: 4.5 MB (4504597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-6.0-slim`

```console
$ docker pull pypy@sha256:ffec5dffeb410b1d2cd50ab7696ae30be06ab63b88e460212c202edb92937656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-6.0-slim` - linux; amd64

```console
$ docker pull pypy@sha256:b3758765dbfec0fd4a719da43e562b043e6680debd79f78952cf8a80c0aa5a1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63240331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d3c25a7c15ffc44dbd88852e2444b5e1843820b92f049374fa1feb1c29f8a5f`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 21:43:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Sep 2018 21:43:35 GMT
ENV LANG=C.UTF-8
# Tue, 04 Sep 2018 21:44:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 21:44:09 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 09 Oct 2018 22:23:57 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:26:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 09 Oct 2018 22:26:19 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bf8a581274f72974f3869e840059e702b7b3ed488aa520844db08fad5842b2`  
		Last Modified: Tue, 04 Sep 2018 21:47:37 GMT  
		Size: 2.8 MB (2811143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eecdcef246ec7fd8f6f64d3458c6cf07f122e30d1dc257c42c251173465913d`  
		Last Modified: Tue, 09 Oct 2018 22:31:31 GMT  
		Size: 30.3 MB (30308624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6.0-slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:8493fc8c1f6cfa76b56b4dc388efa2c40e009b70af5fb9b6bc8b9e016d6bf690
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.5 MB (59521934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8761c43e1b24f0c8db6b152a3ed849e7f1675415062838ec357924e3e76a570`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:35 GMT
ADD file:1922873efedf87e0caa2cf6abb867e47d7accfbfefc1bf7531b75e29fe37de07 in / 
# Wed, 05 Sep 2018 08:50:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:33:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:33:57 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:55:48 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 05 Sep 2018 13:55:48 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 13:59:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 13:59:21 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:d9dec235236bca9c64333dbfb092d7a058ef623c6ba80d027962a1196ec006d9`  
		Last Modified: Wed, 05 Sep 2018 09:00:01 GMT  
		Size: 28.4 MB (28430740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c832c8e30a41cd6d6a5c2eb5dcb3175b4868db48272c840fde646ba6593941`  
		Last Modified: Wed, 05 Sep 2018 14:00:46 GMT  
		Size: 2.6 MB (2561962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c17234e3ac4abbba1fbbea63a1434c3dc89836a43d4d7c51df14cec765012a89`  
		Last Modified: Wed, 05 Sep 2018 14:03:41 GMT  
		Size: 28.5 MB (28529232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6.0-slim` - linux; 386

```console
$ docker pull pypy@sha256:f9724c011dc1055bc237853d7e6f0af37ede5a3c4742d69c41b6c42a4a411adb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63176997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e23d1a83c0b27044badd842105170b5ddb1632c3a03956ea977d14ad517ce2e`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Thu, 06 Sep 2018 21:52:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 21:52:42 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 21:53:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:53:18 GMT
ENV PYPY_VERSION=6.0.0
# Thu, 06 Sep 2018 21:53:18 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 06 Sep 2018 21:55:49 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 06 Sep 2018 21:55:49 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3e5d7633ac249bc6d7cc7a961a6cc7c93adb2e5527c6b5c84480f0f4140ad`  
		Last Modified: Thu, 06 Sep 2018 21:56:27 GMT  
		Size: 4.9 MB (4912378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ce0dd8a30193fc031292cde98208164d64ad1e3805ce21531dc2c1da39342e`  
		Last Modified: Thu, 06 Sep 2018 21:57:30 GMT  
		Size: 28.0 MB (27994550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-6.0-slim-jessie`

```console
$ docker pull pypy@sha256:ffec5dffeb410b1d2cd50ab7696ae30be06ab63b88e460212c202edb92937656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-6.0-slim-jessie` - linux; amd64

```console
$ docker pull pypy@sha256:b3758765dbfec0fd4a719da43e562b043e6680debd79f78952cf8a80c0aa5a1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63240331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d3c25a7c15ffc44dbd88852e2444b5e1843820b92f049374fa1feb1c29f8a5f`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 21:43:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Sep 2018 21:43:35 GMT
ENV LANG=C.UTF-8
# Tue, 04 Sep 2018 21:44:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 21:44:09 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 09 Oct 2018 22:23:57 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:26:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 09 Oct 2018 22:26:19 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bf8a581274f72974f3869e840059e702b7b3ed488aa520844db08fad5842b2`  
		Last Modified: Tue, 04 Sep 2018 21:47:37 GMT  
		Size: 2.8 MB (2811143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eecdcef246ec7fd8f6f64d3458c6cf07f122e30d1dc257c42c251173465913d`  
		Last Modified: Tue, 09 Oct 2018 22:31:31 GMT  
		Size: 30.3 MB (30308624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6.0-slim-jessie` - linux; arm variant v5

```console
$ docker pull pypy@sha256:8493fc8c1f6cfa76b56b4dc388efa2c40e009b70af5fb9b6bc8b9e016d6bf690
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.5 MB (59521934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8761c43e1b24f0c8db6b152a3ed849e7f1675415062838ec357924e3e76a570`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:35 GMT
ADD file:1922873efedf87e0caa2cf6abb867e47d7accfbfefc1bf7531b75e29fe37de07 in / 
# Wed, 05 Sep 2018 08:50:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:33:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:33:57 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:55:48 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 05 Sep 2018 13:55:48 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 13:59:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 13:59:21 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:d9dec235236bca9c64333dbfb092d7a058ef623c6ba80d027962a1196ec006d9`  
		Last Modified: Wed, 05 Sep 2018 09:00:01 GMT  
		Size: 28.4 MB (28430740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c832c8e30a41cd6d6a5c2eb5dcb3175b4868db48272c840fde646ba6593941`  
		Last Modified: Wed, 05 Sep 2018 14:00:46 GMT  
		Size: 2.6 MB (2561962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c17234e3ac4abbba1fbbea63a1434c3dc89836a43d4d7c51df14cec765012a89`  
		Last Modified: Wed, 05 Sep 2018 14:03:41 GMT  
		Size: 28.5 MB (28529232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6.0-slim-jessie` - linux; 386

```console
$ docker pull pypy@sha256:f9724c011dc1055bc237853d7e6f0af37ede5a3c4742d69c41b6c42a4a411adb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63176997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e23d1a83c0b27044badd842105170b5ddb1632c3a03956ea977d14ad517ce2e`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Thu, 06 Sep 2018 21:52:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 21:52:42 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 21:53:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:53:18 GMT
ENV PYPY_VERSION=6.0.0
# Thu, 06 Sep 2018 21:53:18 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 06 Sep 2018 21:55:49 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 06 Sep 2018 21:55:49 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3e5d7633ac249bc6d7cc7a961a6cc7c93adb2e5527c6b5c84480f0f4140ad`  
		Last Modified: Thu, 06 Sep 2018 21:56:27 GMT  
		Size: 4.9 MB (4912378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ce0dd8a30193fc031292cde98208164d64ad1e3805ce21531dc2c1da39342e`  
		Last Modified: Thu, 06 Sep 2018 21:57:30 GMT  
		Size: 28.0 MB (27994550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-6-jessie`

```console
$ docker pull pypy@sha256:3d83b7c198e86cd6760eb7842eead08e8871dfad0f9423ba541a0833d0e0cd98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-6-jessie` - linux; amd64

```console
$ docker pull pypy@sha256:6f0c34dedf292b1ff25bc59f5c1318c095b79b54001a2024e6053279baa9f10e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.4 MB (279370480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3f0c033c460cfd6a16d7f557f48bd54850ffd7aa6db45dfd978bed1045db722`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:27:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:28:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:30:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 03:45:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 03:45:32 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 10:26:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:26:40 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 09 Oct 2018 22:23:30 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:24:55 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Tue, 09 Oct 2018 22:25:06 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 09 Oct 2018 22:25:12 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d06cf2f1b5e36347bb239d7ef7eb098e228d06a0a937e70798eb0dda459c61e`  
		Last Modified: Tue, 04 Sep 2018 22:50:42 GMT  
		Size: 17.5 MB (17538668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687ebdda822cb0f4af055462f887a7f76bc3f36d55161596fe93e45356dd45f0`  
		Last Modified: Tue, 04 Sep 2018 22:50:58 GMT  
		Size: 43.3 MB (43297955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99119ca3f34e74abac472e5c9194bbf69c0215b32fd6f652eec84a3d9d719e25`  
		Last Modified: Tue, 04 Sep 2018 22:51:30 GMT  
		Size: 131.1 MB (131104825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37e9972cb613cfe0098d4df422330b7560dcb82a0408c0eab83680e8611a534`  
		Last Modified: Wed, 05 Sep 2018 10:28:15 GMT  
		Size: 3.2 MB (3167664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5f34f92d7f43363e524ff1bdae2b7e40e9d6c7839d5449565d8f2d25a653de`  
		Last Modified: Tue, 09 Oct 2018 22:29:47 GMT  
		Size: 25.5 MB (25515701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3c7faa328af2a37e6e65b90e4c756e6d55813b4b99bfa023d858767f1dbb31`  
		Last Modified: Tue, 09 Oct 2018 22:29:43 GMT  
		Size: 4.5 MB (4493456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6-jessie` - linux; arm variant v5

```console
$ docker pull pypy@sha256:4f4a12644a91d5abf1deaae5c2eeebc3b2b708a73fc59135f26642e0bad39c5f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257633281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:477551afff688b4c9d41a7664a75b9f5b22c58c02e96c73689cab722674449be`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:01 GMT
ADD file:367230829937e3f959936d2c250983c5c63d8aff2e1987a1512c68d6b05ec2d9 in / 
# Wed, 05 Sep 2018 08:50:03 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:51:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 09:52:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:55:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:31:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:31:05 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:54:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:54:08 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 05 Sep 2018 13:54:08 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 13:57:30 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Wed, 05 Sep 2018 13:57:58 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 05 Sep 2018 13:57:58 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:e01fe8429ccebc46a010376112e864ce611e175d1f38e60e721840613bc3bc2a`  
		Last Modified: Wed, 05 Sep 2018 08:59:16 GMT  
		Size: 52.4 MB (52447943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6945911bf8713186fd7ee2c21f4ef1138adb8b200242ca929e7caab6978ff3a`  
		Last Modified: Wed, 05 Sep 2018 10:08:21 GMT  
		Size: 17.0 MB (17029456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a401183513e38faaa6c251a53174b409b087aeb9a040849500580106285c318`  
		Last Modified: Wed, 05 Sep 2018 10:08:50 GMT  
		Size: 41.1 MB (41141852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d9da9f5ead4f4d40d7d08848735eca137c95f0b280dee32ed78f06af3c478d`  
		Last Modified: Wed, 05 Sep 2018 10:09:35 GMT  
		Size: 115.8 MB (115759199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b9bf4cfea7382b4b46ae8238075a0c9f8b954a868ba755594e0defc944d9a3`  
		Last Modified: Wed, 05 Sep 2018 13:59:41 GMT  
		Size: 3.0 MB (3020284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b7a847ded3dfbd875b980c3c661dc08dae1ab5b10c950b76266005d7517058`  
		Last Modified: Wed, 05 Sep 2018 14:02:13 GMT  
		Size: 23.7 MB (23728929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737b5734e7972cb07d1886a6da7a2f314cac4e44fd8e97c533d970343d9af52a`  
		Last Modified: Wed, 05 Sep 2018 14:02:06 GMT  
		Size: 4.5 MB (4505618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6-jessie` - linux; 386

```console
$ docker pull pypy@sha256:94e02b3ae8f7bc8619b4a55ea1abf75ea0cefc7745114d1858d5cd077643a3d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.4 MB (284422641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f2f904b1425be96335e32b0eb946c3d4d6e46ee10986038df61d03df5542d88`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:28:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:28:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:35:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:51:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 21:51:39 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 21:52:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:52:12 GMT
ENV PYPY_VERSION=6.0.0
# Thu, 06 Sep 2018 21:52:12 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 06 Sep 2018 21:54:34 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Thu, 06 Sep 2018 21:54:45 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 06 Sep 2018 21:54:45 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912168c1f05e29e4f46f4cbc0e1aa3825348c0e9a19508d7658722848ddda877`  
		Last Modified: Wed, 05 Sep 2018 12:03:41 GMT  
		Size: 19.8 MB (19835822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e9187aeb009b949c7ae34ecf63d21f9c811f6f6bc2295738d4682eaba1f20e`  
		Last Modified: Wed, 05 Sep 2018 12:04:20 GMT  
		Size: 43.9 MB (43948373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cb71948e702f9b512dd129506d79a6eb60b556d877346982e3451003ee8629`  
		Last Modified: Wed, 05 Sep 2018 12:05:43 GMT  
		Size: 135.2 MB (135183725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf0403b468e6ad2f474d20adb6259af4aa89ff5160d7e7f98fc9a95c430fcd9`  
		Last Modified: Thu, 06 Sep 2018 21:56:02 GMT  
		Size: 3.3 MB (3271780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b813cf764e28d864bfcc6bbf33335b0fffd976f54203403918757629cb3e4e49`  
		Last Modified: Thu, 06 Sep 2018 21:56:58 GMT  
		Size: 23.2 MB (23194293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef85df19ff202f13f8e22d181c5004e37c95a4090c56adaf7afeb412a909d598`  
		Last Modified: Thu, 06 Sep 2018 21:56:50 GMT  
		Size: 4.5 MB (4504597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-6-slim`

```console
$ docker pull pypy@sha256:ffec5dffeb410b1d2cd50ab7696ae30be06ab63b88e460212c202edb92937656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-6-slim` - linux; amd64

```console
$ docker pull pypy@sha256:b3758765dbfec0fd4a719da43e562b043e6680debd79f78952cf8a80c0aa5a1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63240331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d3c25a7c15ffc44dbd88852e2444b5e1843820b92f049374fa1feb1c29f8a5f`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 21:43:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Sep 2018 21:43:35 GMT
ENV LANG=C.UTF-8
# Tue, 04 Sep 2018 21:44:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 21:44:09 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 09 Oct 2018 22:23:57 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:26:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 09 Oct 2018 22:26:19 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bf8a581274f72974f3869e840059e702b7b3ed488aa520844db08fad5842b2`  
		Last Modified: Tue, 04 Sep 2018 21:47:37 GMT  
		Size: 2.8 MB (2811143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eecdcef246ec7fd8f6f64d3458c6cf07f122e30d1dc257c42c251173465913d`  
		Last Modified: Tue, 09 Oct 2018 22:31:31 GMT  
		Size: 30.3 MB (30308624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6-slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:8493fc8c1f6cfa76b56b4dc388efa2c40e009b70af5fb9b6bc8b9e016d6bf690
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.5 MB (59521934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8761c43e1b24f0c8db6b152a3ed849e7f1675415062838ec357924e3e76a570`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:35 GMT
ADD file:1922873efedf87e0caa2cf6abb867e47d7accfbfefc1bf7531b75e29fe37de07 in / 
# Wed, 05 Sep 2018 08:50:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:33:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:33:57 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:55:48 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 05 Sep 2018 13:55:48 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 13:59:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 13:59:21 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:d9dec235236bca9c64333dbfb092d7a058ef623c6ba80d027962a1196ec006d9`  
		Last Modified: Wed, 05 Sep 2018 09:00:01 GMT  
		Size: 28.4 MB (28430740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c832c8e30a41cd6d6a5c2eb5dcb3175b4868db48272c840fde646ba6593941`  
		Last Modified: Wed, 05 Sep 2018 14:00:46 GMT  
		Size: 2.6 MB (2561962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c17234e3ac4abbba1fbbea63a1434c3dc89836a43d4d7c51df14cec765012a89`  
		Last Modified: Wed, 05 Sep 2018 14:03:41 GMT  
		Size: 28.5 MB (28529232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6-slim` - linux; 386

```console
$ docker pull pypy@sha256:f9724c011dc1055bc237853d7e6f0af37ede5a3c4742d69c41b6c42a4a411adb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63176997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e23d1a83c0b27044badd842105170b5ddb1632c3a03956ea977d14ad517ce2e`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Thu, 06 Sep 2018 21:52:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 21:52:42 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 21:53:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:53:18 GMT
ENV PYPY_VERSION=6.0.0
# Thu, 06 Sep 2018 21:53:18 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 06 Sep 2018 21:55:49 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 06 Sep 2018 21:55:49 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3e5d7633ac249bc6d7cc7a961a6cc7c93adb2e5527c6b5c84480f0f4140ad`  
		Last Modified: Thu, 06 Sep 2018 21:56:27 GMT  
		Size: 4.9 MB (4912378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ce0dd8a30193fc031292cde98208164d64ad1e3805ce21531dc2c1da39342e`  
		Last Modified: Thu, 06 Sep 2018 21:57:30 GMT  
		Size: 28.0 MB (27994550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-6-slim-jessie`

```console
$ docker pull pypy@sha256:ffec5dffeb410b1d2cd50ab7696ae30be06ab63b88e460212c202edb92937656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-6-slim-jessie` - linux; amd64

```console
$ docker pull pypy@sha256:b3758765dbfec0fd4a719da43e562b043e6680debd79f78952cf8a80c0aa5a1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63240331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d3c25a7c15ffc44dbd88852e2444b5e1843820b92f049374fa1feb1c29f8a5f`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 21:43:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Sep 2018 21:43:35 GMT
ENV LANG=C.UTF-8
# Tue, 04 Sep 2018 21:44:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 21:44:09 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 09 Oct 2018 22:23:57 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:26:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 09 Oct 2018 22:26:19 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bf8a581274f72974f3869e840059e702b7b3ed488aa520844db08fad5842b2`  
		Last Modified: Tue, 04 Sep 2018 21:47:37 GMT  
		Size: 2.8 MB (2811143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eecdcef246ec7fd8f6f64d3458c6cf07f122e30d1dc257c42c251173465913d`  
		Last Modified: Tue, 09 Oct 2018 22:31:31 GMT  
		Size: 30.3 MB (30308624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6-slim-jessie` - linux; arm variant v5

```console
$ docker pull pypy@sha256:8493fc8c1f6cfa76b56b4dc388efa2c40e009b70af5fb9b6bc8b9e016d6bf690
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.5 MB (59521934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8761c43e1b24f0c8db6b152a3ed849e7f1675415062838ec357924e3e76a570`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:35 GMT
ADD file:1922873efedf87e0caa2cf6abb867e47d7accfbfefc1bf7531b75e29fe37de07 in / 
# Wed, 05 Sep 2018 08:50:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:33:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:33:57 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:55:48 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 05 Sep 2018 13:55:48 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 13:59:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 13:59:21 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:d9dec235236bca9c64333dbfb092d7a058ef623c6ba80d027962a1196ec006d9`  
		Last Modified: Wed, 05 Sep 2018 09:00:01 GMT  
		Size: 28.4 MB (28430740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c832c8e30a41cd6d6a5c2eb5dcb3175b4868db48272c840fde646ba6593941`  
		Last Modified: Wed, 05 Sep 2018 14:00:46 GMT  
		Size: 2.6 MB (2561962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c17234e3ac4abbba1fbbea63a1434c3dc89836a43d4d7c51df14cec765012a89`  
		Last Modified: Wed, 05 Sep 2018 14:03:41 GMT  
		Size: 28.5 MB (28529232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6-slim-jessie` - linux; 386

```console
$ docker pull pypy@sha256:f9724c011dc1055bc237853d7e6f0af37ede5a3c4742d69c41b6c42a4a411adb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63176997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e23d1a83c0b27044badd842105170b5ddb1632c3a03956ea977d14ad517ce2e`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Thu, 06 Sep 2018 21:52:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 21:52:42 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 21:53:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:53:18 GMT
ENV PYPY_VERSION=6.0.0
# Thu, 06 Sep 2018 21:53:18 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 06 Sep 2018 21:55:49 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 06 Sep 2018 21:55:49 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3e5d7633ac249bc6d7cc7a961a6cc7c93adb2e5527c6b5c84480f0f4140ad`  
		Last Modified: Thu, 06 Sep 2018 21:56:27 GMT  
		Size: 4.9 MB (4912378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ce0dd8a30193fc031292cde98208164d64ad1e3805ce21531dc2c1da39342e`  
		Last Modified: Thu, 06 Sep 2018 21:57:30 GMT  
		Size: 28.0 MB (27994550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-jessie`

```console
$ docker pull pypy@sha256:3d83b7c198e86cd6760eb7842eead08e8871dfad0f9423ba541a0833d0e0cd98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-jessie` - linux; amd64

```console
$ docker pull pypy@sha256:6f0c34dedf292b1ff25bc59f5c1318c095b79b54001a2024e6053279baa9f10e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.4 MB (279370480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3f0c033c460cfd6a16d7f557f48bd54850ffd7aa6db45dfd978bed1045db722`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:27:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:28:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:30:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 03:45:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 03:45:32 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 10:26:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:26:40 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 09 Oct 2018 22:23:30 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:24:55 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Tue, 09 Oct 2018 22:25:06 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 09 Oct 2018 22:25:12 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d06cf2f1b5e36347bb239d7ef7eb098e228d06a0a937e70798eb0dda459c61e`  
		Last Modified: Tue, 04 Sep 2018 22:50:42 GMT  
		Size: 17.5 MB (17538668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687ebdda822cb0f4af055462f887a7f76bc3f36d55161596fe93e45356dd45f0`  
		Last Modified: Tue, 04 Sep 2018 22:50:58 GMT  
		Size: 43.3 MB (43297955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99119ca3f34e74abac472e5c9194bbf69c0215b32fd6f652eec84a3d9d719e25`  
		Last Modified: Tue, 04 Sep 2018 22:51:30 GMT  
		Size: 131.1 MB (131104825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37e9972cb613cfe0098d4df422330b7560dcb82a0408c0eab83680e8611a534`  
		Last Modified: Wed, 05 Sep 2018 10:28:15 GMT  
		Size: 3.2 MB (3167664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5f34f92d7f43363e524ff1bdae2b7e40e9d6c7839d5449565d8f2d25a653de`  
		Last Modified: Tue, 09 Oct 2018 22:29:47 GMT  
		Size: 25.5 MB (25515701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3c7faa328af2a37e6e65b90e4c756e6d55813b4b99bfa023d858767f1dbb31`  
		Last Modified: Tue, 09 Oct 2018 22:29:43 GMT  
		Size: 4.5 MB (4493456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-jessie` - linux; arm variant v5

```console
$ docker pull pypy@sha256:4f4a12644a91d5abf1deaae5c2eeebc3b2b708a73fc59135f26642e0bad39c5f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257633281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:477551afff688b4c9d41a7664a75b9f5b22c58c02e96c73689cab722674449be`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:01 GMT
ADD file:367230829937e3f959936d2c250983c5c63d8aff2e1987a1512c68d6b05ec2d9 in / 
# Wed, 05 Sep 2018 08:50:03 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:51:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 09:52:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:55:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:31:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:31:05 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:54:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:54:08 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 05 Sep 2018 13:54:08 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 13:57:30 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Wed, 05 Sep 2018 13:57:58 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 05 Sep 2018 13:57:58 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:e01fe8429ccebc46a010376112e864ce611e175d1f38e60e721840613bc3bc2a`  
		Last Modified: Wed, 05 Sep 2018 08:59:16 GMT  
		Size: 52.4 MB (52447943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6945911bf8713186fd7ee2c21f4ef1138adb8b200242ca929e7caab6978ff3a`  
		Last Modified: Wed, 05 Sep 2018 10:08:21 GMT  
		Size: 17.0 MB (17029456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a401183513e38faaa6c251a53174b409b087aeb9a040849500580106285c318`  
		Last Modified: Wed, 05 Sep 2018 10:08:50 GMT  
		Size: 41.1 MB (41141852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d9da9f5ead4f4d40d7d08848735eca137c95f0b280dee32ed78f06af3c478d`  
		Last Modified: Wed, 05 Sep 2018 10:09:35 GMT  
		Size: 115.8 MB (115759199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b9bf4cfea7382b4b46ae8238075a0c9f8b954a868ba755594e0defc944d9a3`  
		Last Modified: Wed, 05 Sep 2018 13:59:41 GMT  
		Size: 3.0 MB (3020284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b7a847ded3dfbd875b980c3c661dc08dae1ab5b10c950b76266005d7517058`  
		Last Modified: Wed, 05 Sep 2018 14:02:13 GMT  
		Size: 23.7 MB (23728929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737b5734e7972cb07d1886a6da7a2f314cac4e44fd8e97c533d970343d9af52a`  
		Last Modified: Wed, 05 Sep 2018 14:02:06 GMT  
		Size: 4.5 MB (4505618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-jessie` - linux; 386

```console
$ docker pull pypy@sha256:94e02b3ae8f7bc8619b4a55ea1abf75ea0cefc7745114d1858d5cd077643a3d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.4 MB (284422641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f2f904b1425be96335e32b0eb946c3d4d6e46ee10986038df61d03df5542d88`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:28:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:28:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:35:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:51:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 21:51:39 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 21:52:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:52:12 GMT
ENV PYPY_VERSION=6.0.0
# Thu, 06 Sep 2018 21:52:12 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 06 Sep 2018 21:54:34 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Thu, 06 Sep 2018 21:54:45 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 06 Sep 2018 21:54:45 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912168c1f05e29e4f46f4cbc0e1aa3825348c0e9a19508d7658722848ddda877`  
		Last Modified: Wed, 05 Sep 2018 12:03:41 GMT  
		Size: 19.8 MB (19835822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e9187aeb009b949c7ae34ecf63d21f9c811f6f6bc2295738d4682eaba1f20e`  
		Last Modified: Wed, 05 Sep 2018 12:04:20 GMT  
		Size: 43.9 MB (43948373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cb71948e702f9b512dd129506d79a6eb60b556d877346982e3451003ee8629`  
		Last Modified: Wed, 05 Sep 2018 12:05:43 GMT  
		Size: 135.2 MB (135183725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf0403b468e6ad2f474d20adb6259af4aa89ff5160d7e7f98fc9a95c430fcd9`  
		Last Modified: Thu, 06 Sep 2018 21:56:02 GMT  
		Size: 3.3 MB (3271780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b813cf764e28d864bfcc6bbf33335b0fffd976f54203403918757629cb3e4e49`  
		Last Modified: Thu, 06 Sep 2018 21:56:58 GMT  
		Size: 23.2 MB (23194293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef85df19ff202f13f8e22d181c5004e37c95a4090c56adaf7afeb412a909d598`  
		Last Modified: Thu, 06 Sep 2018 21:56:50 GMT  
		Size: 4.5 MB (4504597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-slim`

```console
$ docker pull pypy@sha256:ffec5dffeb410b1d2cd50ab7696ae30be06ab63b88e460212c202edb92937656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-slim` - linux; amd64

```console
$ docker pull pypy@sha256:b3758765dbfec0fd4a719da43e562b043e6680debd79f78952cf8a80c0aa5a1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63240331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d3c25a7c15ffc44dbd88852e2444b5e1843820b92f049374fa1feb1c29f8a5f`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 21:43:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Sep 2018 21:43:35 GMT
ENV LANG=C.UTF-8
# Tue, 04 Sep 2018 21:44:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 21:44:09 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 09 Oct 2018 22:23:57 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:26:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 09 Oct 2018 22:26:19 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bf8a581274f72974f3869e840059e702b7b3ed488aa520844db08fad5842b2`  
		Last Modified: Tue, 04 Sep 2018 21:47:37 GMT  
		Size: 2.8 MB (2811143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eecdcef246ec7fd8f6f64d3458c6cf07f122e30d1dc257c42c251173465913d`  
		Last Modified: Tue, 09 Oct 2018 22:31:31 GMT  
		Size: 30.3 MB (30308624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:8493fc8c1f6cfa76b56b4dc388efa2c40e009b70af5fb9b6bc8b9e016d6bf690
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.5 MB (59521934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8761c43e1b24f0c8db6b152a3ed849e7f1675415062838ec357924e3e76a570`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:35 GMT
ADD file:1922873efedf87e0caa2cf6abb867e47d7accfbfefc1bf7531b75e29fe37de07 in / 
# Wed, 05 Sep 2018 08:50:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:33:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:33:57 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:55:48 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 05 Sep 2018 13:55:48 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 13:59:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 13:59:21 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:d9dec235236bca9c64333dbfb092d7a058ef623c6ba80d027962a1196ec006d9`  
		Last Modified: Wed, 05 Sep 2018 09:00:01 GMT  
		Size: 28.4 MB (28430740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c832c8e30a41cd6d6a5c2eb5dcb3175b4868db48272c840fde646ba6593941`  
		Last Modified: Wed, 05 Sep 2018 14:00:46 GMT  
		Size: 2.6 MB (2561962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c17234e3ac4abbba1fbbea63a1434c3dc89836a43d4d7c51df14cec765012a89`  
		Last Modified: Wed, 05 Sep 2018 14:03:41 GMT  
		Size: 28.5 MB (28529232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-slim` - linux; 386

```console
$ docker pull pypy@sha256:f9724c011dc1055bc237853d7e6f0af37ede5a3c4742d69c41b6c42a4a411adb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63176997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e23d1a83c0b27044badd842105170b5ddb1632c3a03956ea977d14ad517ce2e`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Thu, 06 Sep 2018 21:52:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 21:52:42 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 21:53:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:53:18 GMT
ENV PYPY_VERSION=6.0.0
# Thu, 06 Sep 2018 21:53:18 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 06 Sep 2018 21:55:49 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 06 Sep 2018 21:55:49 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3e5d7633ac249bc6d7cc7a961a6cc7c93adb2e5527c6b5c84480f0f4140ad`  
		Last Modified: Thu, 06 Sep 2018 21:56:27 GMT  
		Size: 4.9 MB (4912378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ce0dd8a30193fc031292cde98208164d64ad1e3805ce21531dc2c1da39342e`  
		Last Modified: Thu, 06 Sep 2018 21:57:30 GMT  
		Size: 28.0 MB (27994550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-slim-jessie`

```console
$ docker pull pypy@sha256:ffec5dffeb410b1d2cd50ab7696ae30be06ab63b88e460212c202edb92937656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-slim-jessie` - linux; amd64

```console
$ docker pull pypy@sha256:b3758765dbfec0fd4a719da43e562b043e6680debd79f78952cf8a80c0aa5a1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63240331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d3c25a7c15ffc44dbd88852e2444b5e1843820b92f049374fa1feb1c29f8a5f`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 21:43:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Sep 2018 21:43:35 GMT
ENV LANG=C.UTF-8
# Tue, 04 Sep 2018 21:44:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 21:44:09 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 09 Oct 2018 22:23:57 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:26:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 09 Oct 2018 22:26:19 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bf8a581274f72974f3869e840059e702b7b3ed488aa520844db08fad5842b2`  
		Last Modified: Tue, 04 Sep 2018 21:47:37 GMT  
		Size: 2.8 MB (2811143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eecdcef246ec7fd8f6f64d3458c6cf07f122e30d1dc257c42c251173465913d`  
		Last Modified: Tue, 09 Oct 2018 22:31:31 GMT  
		Size: 30.3 MB (30308624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-slim-jessie` - linux; arm variant v5

```console
$ docker pull pypy@sha256:8493fc8c1f6cfa76b56b4dc388efa2c40e009b70af5fb9b6bc8b9e016d6bf690
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.5 MB (59521934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8761c43e1b24f0c8db6b152a3ed849e7f1675415062838ec357924e3e76a570`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:35 GMT
ADD file:1922873efedf87e0caa2cf6abb867e47d7accfbfefc1bf7531b75e29fe37de07 in / 
# Wed, 05 Sep 2018 08:50:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:33:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:33:57 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:55:48 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 05 Sep 2018 13:55:48 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 13:59:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 13:59:21 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:d9dec235236bca9c64333dbfb092d7a058ef623c6ba80d027962a1196ec006d9`  
		Last Modified: Wed, 05 Sep 2018 09:00:01 GMT  
		Size: 28.4 MB (28430740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c832c8e30a41cd6d6a5c2eb5dcb3175b4868db48272c840fde646ba6593941`  
		Last Modified: Wed, 05 Sep 2018 14:00:46 GMT  
		Size: 2.6 MB (2561962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c17234e3ac4abbba1fbbea63a1434c3dc89836a43d4d7c51df14cec765012a89`  
		Last Modified: Wed, 05 Sep 2018 14:03:41 GMT  
		Size: 28.5 MB (28529232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-slim-jessie` - linux; 386

```console
$ docker pull pypy@sha256:f9724c011dc1055bc237853d7e6f0af37ede5a3c4742d69c41b6c42a4a411adb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63176997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e23d1a83c0b27044badd842105170b5ddb1632c3a03956ea977d14ad517ce2e`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Thu, 06 Sep 2018 21:52:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 21:52:42 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 21:53:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:53:18 GMT
ENV PYPY_VERSION=6.0.0
# Thu, 06 Sep 2018 21:53:18 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 06 Sep 2018 21:55:49 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 06 Sep 2018 21:55:49 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3e5d7633ac249bc6d7cc7a961a6cc7c93adb2e5527c6b5c84480f0f4140ad`  
		Last Modified: Thu, 06 Sep 2018 21:56:27 GMT  
		Size: 4.9 MB (4912378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ce0dd8a30193fc031292cde98208164d64ad1e3805ce21531dc2c1da39342e`  
		Last Modified: Thu, 06 Sep 2018 21:57:30 GMT  
		Size: 28.0 MB (27994550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:jessie`

```console
$ docker pull pypy@sha256:3d83b7c198e86cd6760eb7842eead08e8871dfad0f9423ba541a0833d0e0cd98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:jessie` - linux; amd64

```console
$ docker pull pypy@sha256:6f0c34dedf292b1ff25bc59f5c1318c095b79b54001a2024e6053279baa9f10e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.4 MB (279370480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3f0c033c460cfd6a16d7f557f48bd54850ffd7aa6db45dfd978bed1045db722`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:27:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:28:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:30:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 03:45:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 03:45:32 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 10:26:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:26:40 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 09 Oct 2018 22:23:30 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:24:55 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Tue, 09 Oct 2018 22:25:06 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 09 Oct 2018 22:25:12 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d06cf2f1b5e36347bb239d7ef7eb098e228d06a0a937e70798eb0dda459c61e`  
		Last Modified: Tue, 04 Sep 2018 22:50:42 GMT  
		Size: 17.5 MB (17538668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687ebdda822cb0f4af055462f887a7f76bc3f36d55161596fe93e45356dd45f0`  
		Last Modified: Tue, 04 Sep 2018 22:50:58 GMT  
		Size: 43.3 MB (43297955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99119ca3f34e74abac472e5c9194bbf69c0215b32fd6f652eec84a3d9d719e25`  
		Last Modified: Tue, 04 Sep 2018 22:51:30 GMT  
		Size: 131.1 MB (131104825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37e9972cb613cfe0098d4df422330b7560dcb82a0408c0eab83680e8611a534`  
		Last Modified: Wed, 05 Sep 2018 10:28:15 GMT  
		Size: 3.2 MB (3167664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5f34f92d7f43363e524ff1bdae2b7e40e9d6c7839d5449565d8f2d25a653de`  
		Last Modified: Tue, 09 Oct 2018 22:29:47 GMT  
		Size: 25.5 MB (25515701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3c7faa328af2a37e6e65b90e4c756e6d55813b4b99bfa023d858767f1dbb31`  
		Last Modified: Tue, 09 Oct 2018 22:29:43 GMT  
		Size: 4.5 MB (4493456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:jessie` - linux; arm variant v5

```console
$ docker pull pypy@sha256:4f4a12644a91d5abf1deaae5c2eeebc3b2b708a73fc59135f26642e0bad39c5f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257633281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:477551afff688b4c9d41a7664a75b9f5b22c58c02e96c73689cab722674449be`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:01 GMT
ADD file:367230829937e3f959936d2c250983c5c63d8aff2e1987a1512c68d6b05ec2d9 in / 
# Wed, 05 Sep 2018 08:50:03 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:51:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 09:52:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:55:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:31:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:31:05 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:54:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:54:08 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 05 Sep 2018 13:54:08 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 13:57:30 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Wed, 05 Sep 2018 13:57:58 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 05 Sep 2018 13:57:58 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:e01fe8429ccebc46a010376112e864ce611e175d1f38e60e721840613bc3bc2a`  
		Last Modified: Wed, 05 Sep 2018 08:59:16 GMT  
		Size: 52.4 MB (52447943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6945911bf8713186fd7ee2c21f4ef1138adb8b200242ca929e7caab6978ff3a`  
		Last Modified: Wed, 05 Sep 2018 10:08:21 GMT  
		Size: 17.0 MB (17029456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a401183513e38faaa6c251a53174b409b087aeb9a040849500580106285c318`  
		Last Modified: Wed, 05 Sep 2018 10:08:50 GMT  
		Size: 41.1 MB (41141852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d9da9f5ead4f4d40d7d08848735eca137c95f0b280dee32ed78f06af3c478d`  
		Last Modified: Wed, 05 Sep 2018 10:09:35 GMT  
		Size: 115.8 MB (115759199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b9bf4cfea7382b4b46ae8238075a0c9f8b954a868ba755594e0defc944d9a3`  
		Last Modified: Wed, 05 Sep 2018 13:59:41 GMT  
		Size: 3.0 MB (3020284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b7a847ded3dfbd875b980c3c661dc08dae1ab5b10c950b76266005d7517058`  
		Last Modified: Wed, 05 Sep 2018 14:02:13 GMT  
		Size: 23.7 MB (23728929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737b5734e7972cb07d1886a6da7a2f314cac4e44fd8e97c533d970343d9af52a`  
		Last Modified: Wed, 05 Sep 2018 14:02:06 GMT  
		Size: 4.5 MB (4505618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:jessie` - linux; 386

```console
$ docker pull pypy@sha256:94e02b3ae8f7bc8619b4a55ea1abf75ea0cefc7745114d1858d5cd077643a3d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.4 MB (284422641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f2f904b1425be96335e32b0eb946c3d4d6e46ee10986038df61d03df5542d88`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:28:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:28:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:35:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:51:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 21:51:39 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 21:52:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:52:12 GMT
ENV PYPY_VERSION=6.0.0
# Thu, 06 Sep 2018 21:52:12 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 06 Sep 2018 21:54:34 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Thu, 06 Sep 2018 21:54:45 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 06 Sep 2018 21:54:45 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912168c1f05e29e4f46f4cbc0e1aa3825348c0e9a19508d7658722848ddda877`  
		Last Modified: Wed, 05 Sep 2018 12:03:41 GMT  
		Size: 19.8 MB (19835822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e9187aeb009b949c7ae34ecf63d21f9c811f6f6bc2295738d4682eaba1f20e`  
		Last Modified: Wed, 05 Sep 2018 12:04:20 GMT  
		Size: 43.9 MB (43948373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cb71948e702f9b512dd129506d79a6eb60b556d877346982e3451003ee8629`  
		Last Modified: Wed, 05 Sep 2018 12:05:43 GMT  
		Size: 135.2 MB (135183725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf0403b468e6ad2f474d20adb6259af4aa89ff5160d7e7f98fc9a95c430fcd9`  
		Last Modified: Thu, 06 Sep 2018 21:56:02 GMT  
		Size: 3.3 MB (3271780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b813cf764e28d864bfcc6bbf33335b0fffd976f54203403918757629cb3e4e49`  
		Last Modified: Thu, 06 Sep 2018 21:56:58 GMT  
		Size: 23.2 MB (23194293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef85df19ff202f13f8e22d181c5004e37c95a4090c56adaf7afeb412a909d598`  
		Last Modified: Thu, 06 Sep 2018 21:56:50 GMT  
		Size: 4.5 MB (4504597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:latest`

```console
$ docker pull pypy@sha256:3d83b7c198e86cd6760eb7842eead08e8871dfad0f9423ba541a0833d0e0cd98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:latest` - linux; amd64

```console
$ docker pull pypy@sha256:6f0c34dedf292b1ff25bc59f5c1318c095b79b54001a2024e6053279baa9f10e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.4 MB (279370480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3f0c033c460cfd6a16d7f557f48bd54850ffd7aa6db45dfd978bed1045db722`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:27:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:28:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:30:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 03:45:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 03:45:32 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 10:26:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:26:40 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 09 Oct 2018 22:23:30 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:24:55 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Tue, 09 Oct 2018 22:25:06 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 09 Oct 2018 22:25:12 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d06cf2f1b5e36347bb239d7ef7eb098e228d06a0a937e70798eb0dda459c61e`  
		Last Modified: Tue, 04 Sep 2018 22:50:42 GMT  
		Size: 17.5 MB (17538668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687ebdda822cb0f4af055462f887a7f76bc3f36d55161596fe93e45356dd45f0`  
		Last Modified: Tue, 04 Sep 2018 22:50:58 GMT  
		Size: 43.3 MB (43297955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99119ca3f34e74abac472e5c9194bbf69c0215b32fd6f652eec84a3d9d719e25`  
		Last Modified: Tue, 04 Sep 2018 22:51:30 GMT  
		Size: 131.1 MB (131104825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a37e9972cb613cfe0098d4df422330b7560dcb82a0408c0eab83680e8611a534`  
		Last Modified: Wed, 05 Sep 2018 10:28:15 GMT  
		Size: 3.2 MB (3167664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc5f34f92d7f43363e524ff1bdae2b7e40e9d6c7839d5449565d8f2d25a653de`  
		Last Modified: Tue, 09 Oct 2018 22:29:47 GMT  
		Size: 25.5 MB (25515701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d3c7faa328af2a37e6e65b90e4c756e6d55813b4b99bfa023d858767f1dbb31`  
		Last Modified: Tue, 09 Oct 2018 22:29:43 GMT  
		Size: 4.5 MB (4493456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:latest` - linux; arm variant v5

```console
$ docker pull pypy@sha256:4f4a12644a91d5abf1deaae5c2eeebc3b2b708a73fc59135f26642e0bad39c5f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.6 MB (257633281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:477551afff688b4c9d41a7664a75b9f5b22c58c02e96c73689cab722674449be`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:01 GMT
ADD file:367230829937e3f959936d2c250983c5c63d8aff2e1987a1512c68d6b05ec2d9 in / 
# Wed, 05 Sep 2018 08:50:03 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:51:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 09:52:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:55:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:31:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:31:05 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:54:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:54:08 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 05 Sep 2018 13:54:08 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 13:57:30 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Wed, 05 Sep 2018 13:57:58 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 05 Sep 2018 13:57:58 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:e01fe8429ccebc46a010376112e864ce611e175d1f38e60e721840613bc3bc2a`  
		Last Modified: Wed, 05 Sep 2018 08:59:16 GMT  
		Size: 52.4 MB (52447943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6945911bf8713186fd7ee2c21f4ef1138adb8b200242ca929e7caab6978ff3a`  
		Last Modified: Wed, 05 Sep 2018 10:08:21 GMT  
		Size: 17.0 MB (17029456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a401183513e38faaa6c251a53174b409b087aeb9a040849500580106285c318`  
		Last Modified: Wed, 05 Sep 2018 10:08:50 GMT  
		Size: 41.1 MB (41141852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d9da9f5ead4f4d40d7d08848735eca137c95f0b280dee32ed78f06af3c478d`  
		Last Modified: Wed, 05 Sep 2018 10:09:35 GMT  
		Size: 115.8 MB (115759199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98b9bf4cfea7382b4b46ae8238075a0c9f8b954a868ba755594e0defc944d9a3`  
		Last Modified: Wed, 05 Sep 2018 13:59:41 GMT  
		Size: 3.0 MB (3020284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:03b7a847ded3dfbd875b980c3c661dc08dae1ab5b10c950b76266005d7517058`  
		Last Modified: Wed, 05 Sep 2018 14:02:13 GMT  
		Size: 23.7 MB (23728929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:737b5734e7972cb07d1886a6da7a2f314cac4e44fd8e97c533d970343d9af52a`  
		Last Modified: Wed, 05 Sep 2018 14:02:06 GMT  
		Size: 4.5 MB (4505618 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:latest` - linux; 386

```console
$ docker pull pypy@sha256:94e02b3ae8f7bc8619b4a55ea1abf75ea0cefc7745114d1858d5cd077643a3d8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.4 MB (284422641 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f2f904b1425be96335e32b0eb946c3d4d6e46ee10986038df61d03df5542d88`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:28:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:28:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:35:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:51:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 21:51:39 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 21:52:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:52:12 GMT
ENV PYPY_VERSION=6.0.0
# Thu, 06 Sep 2018 21:52:12 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 06 Sep 2018 21:54:34 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Thu, 06 Sep 2018 21:54:45 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 06 Sep 2018 21:54:45 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912168c1f05e29e4f46f4cbc0e1aa3825348c0e9a19508d7658722848ddda877`  
		Last Modified: Wed, 05 Sep 2018 12:03:41 GMT  
		Size: 19.8 MB (19835822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e9187aeb009b949c7ae34ecf63d21f9c811f6f6bc2295738d4682eaba1f20e`  
		Last Modified: Wed, 05 Sep 2018 12:04:20 GMT  
		Size: 43.9 MB (43948373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cb71948e702f9b512dd129506d79a6eb60b556d877346982e3451003ee8629`  
		Last Modified: Wed, 05 Sep 2018 12:05:43 GMT  
		Size: 135.2 MB (135183725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edf0403b468e6ad2f474d20adb6259af4aa89ff5160d7e7f98fc9a95c430fcd9`  
		Last Modified: Thu, 06 Sep 2018 21:56:02 GMT  
		Size: 3.3 MB (3271780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b813cf764e28d864bfcc6bbf33335b0fffd976f54203403918757629cb3e4e49`  
		Last Modified: Thu, 06 Sep 2018 21:56:58 GMT  
		Size: 23.2 MB (23194293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef85df19ff202f13f8e22d181c5004e37c95a4090c56adaf7afeb412a909d598`  
		Last Modified: Thu, 06 Sep 2018 21:56:50 GMT  
		Size: 4.5 MB (4504597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:slim`

```console
$ docker pull pypy@sha256:ffec5dffeb410b1d2cd50ab7696ae30be06ab63b88e460212c202edb92937656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:slim` - linux; amd64

```console
$ docker pull pypy@sha256:b3758765dbfec0fd4a719da43e562b043e6680debd79f78952cf8a80c0aa5a1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63240331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d3c25a7c15ffc44dbd88852e2444b5e1843820b92f049374fa1feb1c29f8a5f`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 21:43:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Sep 2018 21:43:35 GMT
ENV LANG=C.UTF-8
# Tue, 04 Sep 2018 21:44:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 21:44:09 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 09 Oct 2018 22:23:57 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:26:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 09 Oct 2018 22:26:19 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bf8a581274f72974f3869e840059e702b7b3ed488aa520844db08fad5842b2`  
		Last Modified: Tue, 04 Sep 2018 21:47:37 GMT  
		Size: 2.8 MB (2811143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eecdcef246ec7fd8f6f64d3458c6cf07f122e30d1dc257c42c251173465913d`  
		Last Modified: Tue, 09 Oct 2018 22:31:31 GMT  
		Size: 30.3 MB (30308624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:8493fc8c1f6cfa76b56b4dc388efa2c40e009b70af5fb9b6bc8b9e016d6bf690
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.5 MB (59521934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8761c43e1b24f0c8db6b152a3ed849e7f1675415062838ec357924e3e76a570`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:35 GMT
ADD file:1922873efedf87e0caa2cf6abb867e47d7accfbfefc1bf7531b75e29fe37de07 in / 
# Wed, 05 Sep 2018 08:50:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:33:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:33:57 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:55:48 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 05 Sep 2018 13:55:48 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 13:59:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 13:59:21 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:d9dec235236bca9c64333dbfb092d7a058ef623c6ba80d027962a1196ec006d9`  
		Last Modified: Wed, 05 Sep 2018 09:00:01 GMT  
		Size: 28.4 MB (28430740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c832c8e30a41cd6d6a5c2eb5dcb3175b4868db48272c840fde646ba6593941`  
		Last Modified: Wed, 05 Sep 2018 14:00:46 GMT  
		Size: 2.6 MB (2561962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c17234e3ac4abbba1fbbea63a1434c3dc89836a43d4d7c51df14cec765012a89`  
		Last Modified: Wed, 05 Sep 2018 14:03:41 GMT  
		Size: 28.5 MB (28529232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:slim` - linux; 386

```console
$ docker pull pypy@sha256:f9724c011dc1055bc237853d7e6f0af37ede5a3c4742d69c41b6c42a4a411adb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63176997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e23d1a83c0b27044badd842105170b5ddb1632c3a03956ea977d14ad517ce2e`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Thu, 06 Sep 2018 21:52:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 21:52:42 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 21:53:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:53:18 GMT
ENV PYPY_VERSION=6.0.0
# Thu, 06 Sep 2018 21:53:18 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 06 Sep 2018 21:55:49 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 06 Sep 2018 21:55:49 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3e5d7633ac249bc6d7cc7a961a6cc7c93adb2e5527c6b5c84480f0f4140ad`  
		Last Modified: Thu, 06 Sep 2018 21:56:27 GMT  
		Size: 4.9 MB (4912378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ce0dd8a30193fc031292cde98208164d64ad1e3805ce21531dc2c1da39342e`  
		Last Modified: Thu, 06 Sep 2018 21:57:30 GMT  
		Size: 28.0 MB (27994550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:slim-jessie`

```console
$ docker pull pypy@sha256:ffec5dffeb410b1d2cd50ab7696ae30be06ab63b88e460212c202edb92937656
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:slim-jessie` - linux; amd64

```console
$ docker pull pypy@sha256:b3758765dbfec0fd4a719da43e562b043e6680debd79f78952cf8a80c0aa5a1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63240331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9d3c25a7c15ffc44dbd88852e2444b5e1843820b92f049374fa1feb1c29f8a5f`
-	Default Command: `["pypy3"]`

```dockerfile
# Tue, 04 Sep 2018 21:20:04 GMT
ADD file:95eda454ef09779bfb9e8ba5744d0630fb6f59eb4c9174efa44804a756d15df3 in / 
# Tue, 04 Sep 2018 21:20:05 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 21:43:35 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Sep 2018 21:43:35 GMT
ENV LANG=C.UTF-8
# Tue, 04 Sep 2018 21:44:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 21:44:09 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 09 Oct 2018 22:23:57 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:26:14 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 09 Oct 2018 22:26:19 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:57936531d1eea907ae6c73ebe8f8b5dc71232f5a642db22e877a4f0fc6ff1516`  
		Last Modified: Tue, 04 Sep 2018 21:23:28 GMT  
		Size: 30.1 MB (30120564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17bf8a581274f72974f3869e840059e702b7b3ed488aa520844db08fad5842b2`  
		Last Modified: Tue, 04 Sep 2018 21:47:37 GMT  
		Size: 2.8 MB (2811143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7eecdcef246ec7fd8f6f64d3458c6cf07f122e30d1dc257c42c251173465913d`  
		Last Modified: Tue, 09 Oct 2018 22:31:31 GMT  
		Size: 30.3 MB (30308624 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:slim-jessie` - linux; arm variant v5

```console
$ docker pull pypy@sha256:8493fc8c1f6cfa76b56b4dc388efa2c40e009b70af5fb9b6bc8b9e016d6bf690
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.5 MB (59521934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8761c43e1b24f0c8db6b152a3ed849e7f1675415062838ec357924e3e76a570`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:35 GMT
ADD file:1922873efedf87e0caa2cf6abb867e47d7accfbfefc1bf7531b75e29fe37de07 in / 
# Wed, 05 Sep 2018 08:50:36 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:33:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:33:57 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 13:55:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 13:55:48 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 05 Sep 2018 13:55:48 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 13:59:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 05 Sep 2018 13:59:21 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:d9dec235236bca9c64333dbfb092d7a058ef623c6ba80d027962a1196ec006d9`  
		Last Modified: Wed, 05 Sep 2018 09:00:01 GMT  
		Size: 28.4 MB (28430740 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76c832c8e30a41cd6d6a5c2eb5dcb3175b4868db48272c840fde646ba6593941`  
		Last Modified: Wed, 05 Sep 2018 14:00:46 GMT  
		Size: 2.6 MB (2561962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c17234e3ac4abbba1fbbea63a1434c3dc89836a43d4d7c51df14cec765012a89`  
		Last Modified: Wed, 05 Sep 2018 14:03:41 GMT  
		Size: 28.5 MB (28529232 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:slim-jessie` - linux; 386

```console
$ docker pull pypy@sha256:f9724c011dc1055bc237853d7e6f0af37ede5a3c4742d69c41b6c42a4a411adb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63176997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e23d1a83c0b27044badd842105170b5ddb1632c3a03956ea977d14ad517ce2e`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 05 Sep 2018 10:40:12 GMT
ADD file:2ca8426f2467f87a86e824a9ddd82e5c18a3154cacd5c74b4de6fa8de206b84c in / 
# Wed, 05 Sep 2018 10:40:12 GMT
CMD ["bash"]
# Thu, 06 Sep 2018 21:52:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 21:52:42 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 21:53:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:53:18 GMT
ENV PYPY_VERSION=6.0.0
# Thu, 06 Sep 2018 21:53:18 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 06 Sep 2018 21:55:49 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 06 Sep 2018 21:55:49 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:3a0612442afb0e48bf3a7464b288a65842036a329ebe2e29d2c5cf2865a7eda1`  
		Last Modified: Wed, 05 Sep 2018 10:48:24 GMT  
		Size: 30.3 MB (30270069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3e5d7633ac249bc6d7cc7a961a6cc7c93adb2e5527c6b5c84480f0f4140ad`  
		Last Modified: Thu, 06 Sep 2018 21:56:27 GMT  
		Size: 4.9 MB (4912378 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3ce0dd8a30193fc031292cde98208164d64ad1e3805ce21531dc2c1da39342e`  
		Last Modified: Thu, 06 Sep 2018 21:57:30 GMT  
		Size: 28.0 MB (27994550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
