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
$ docker pull pypy@sha256:6b8192221890e2da9422abcac20cdc2eb7298a7e1b833a6d89a4941956c55301
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2` - linux; amd64

```console
$ docker pull pypy@sha256:b45ad3fc0df4ea58c996e26a5256ed0de61757f11718f4ff411b1c3eaeb0ccbb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.0 MB (280019169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3840a0b44adc277e115ae377e3a40b7b4ec681aee2ba82881f0aab67315f7a87`
-	Default Command: `["pypy"]`

```dockerfile
# Fri, 28 Dec 2018 23:23:43 GMT
ADD file:7f32b46e26b56ebbde417db4d539757b8e852c62bab15978db092ce24d2420d1 in / 
# Fri, 28 Dec 2018 23:23:43 GMT
CMD ["bash"]
# Fri, 28 Dec 2018 23:56:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:56:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 28 Dec 2018 23:58:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:31:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:47:16 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Jan 2019 23:47:16 GMT
ENV LANG=C.UTF-8
# Tue, 08 Jan 2019 23:48:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:48:57 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 08 Jan 2019 23:48:57 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 08 Jan 2019 23:49:04 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Tue, 08 Jan 2019 23:49:13 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 08 Jan 2019 23:49:13 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:ff144d3c0ab1033159cf082f681c9f51b09cd701d907e3bad65b1411fa1585a9`  
		Last Modified: Fri, 28 Dec 2018 23:33:45 GMT  
		Size: 54.4 MB (54387117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8988f929403e60a98b37002c9210cf3bf3ecf8782130b011dac8f2b28608ed31`  
		Last Modified: Sat, 29 Dec 2018 00:19:39 GMT  
		Size: 17.5 MB (17539015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155407d8635b1e92ef1550c047a938a8fcf39331261d1eb742ea962d7a1a0630`  
		Last Modified: Sat, 29 Dec 2018 00:19:53 GMT  
		Size: 43.3 MB (43306794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34f5459055e712ef296b171c24cfd7cffbdc0f7cd4c76f7a3fc82ebae23b6e6`  
		Last Modified: Tue, 08 Jan 2019 23:43:59 GMT  
		Size: 131.4 MB (131434783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f170979890f107ba8e58ec44f0c280aac71beda77eb30d65097780fed98aa7ef`  
		Last Modified: Tue, 08 Jan 2019 23:50:14 GMT  
		Size: 3.2 MB (3168228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18309a52c6263dad6fd7d97ef18ee98cde4c7c750d0f9fc7436fc268e5b1a8aa`  
		Last Modified: Tue, 08 Jan 2019 23:50:21 GMT  
		Size: 26.2 MB (26162880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6594c4133f4e23cc4ba13299ef22c400f395a52236ee549899b67531dc270190`  
		Last Modified: Tue, 08 Jan 2019 23:50:15 GMT  
		Size: 4.0 MB (4020352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2` - linux; arm variant v5

```console
$ docker pull pypy@sha256:c58e5753434db6c06aafb1db98e97c24e6b7e2fd804ca2aa09edbec1e90ec12d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.7 MB (257722211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2e423454f657c4c9c791c5895cdf4fa51d5671f874cb8ef5e63688a02f0bf43`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:10 GMT
ADD file:d54ba2764c6a60a1d23652305cbda61eafbf6d9f3a808ca58fe9c2400a1d51e9 in / 
# Wed, 23 Jan 2019 09:50:11 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:30:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:30:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 10:32:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:35:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:48:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:48:49 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 10:49:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:49:49 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 10:49:49 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 10:49:59 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Wed, 23 Jan 2019 14:23:27 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 23 Jan 2019 14:23:28 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:50fd141dcc41a9d8165a0900c6d253849085d5fefc20c8802d9ab7990cbc0f88`  
		Last Modified: Wed, 23 Jan 2019 09:59:04 GMT  
		Size: 52.6 MB (52574556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c97e5089c7dbd37156a16aa333e82a8047c39870627ad13f9d513f514eba1f9`  
		Last Modified: Wed, 23 Jan 2019 10:46:53 GMT  
		Size: 17.0 MB (17030345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1e3e333e6420f3b76bbee5414c4d1c57e7b42b8a42899bcb8e54e780b280ec`  
		Last Modified: Wed, 23 Jan 2019 10:47:13 GMT  
		Size: 41.1 MB (41147190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b25ed3de9d90618a35e1452e88796e1d13223bdc809c1eb9c57add0346086a9`  
		Last Modified: Wed, 23 Jan 2019 10:47:53 GMT  
		Size: 116.0 MB (115968878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f452ceb421b0b1eab6f50069e59a434a29aff11e57c1177b4440a032470a1fdb`  
		Last Modified: Wed, 23 Jan 2019 14:29:25 GMT  
		Size: 3.0 MB (3021176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554a00889c58197dfeec560728073f0dd87345d38a770f95ecb4e1561db77dbf`  
		Last Modified: Wed, 23 Jan 2019 14:29:35 GMT  
		Size: 24.0 MB (23959632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa2d701322ed053a0ba2b5ae39085943cd85b79d52e03ba49a2bc207788f560`  
		Last Modified: Wed, 23 Jan 2019 14:29:26 GMT  
		Size: 4.0 MB (4020434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2` - linux; 386

```console
$ docker pull pypy@sha256:d88f1a56a74536627b18fbfa62b71a5d4884851e2a49728fe49d7563100c4176
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.3 MB (284344844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97915db503f7a09c37b5717c859fd21d74182038bb5e423c082059031dccdb70`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 23 Jan 2019 11:42:56 GMT
ADD file:34c4d7be20c87ed251d0f5a99c46920d29f51e7050390664fe342895d416cf26 in / 
# Wed, 23 Jan 2019 11:42:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:38:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:38:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:41:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:46:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:24:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:24:30 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 17:27:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:27:12 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 17:27:12 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 17:27:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Wed, 23 Jan 2019 17:27:30 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 23 Jan 2019 17:27:30 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:c9e90e967f2e8ff1c9bcd2f542cedbcf4ef3dd2e4601b2f3c66fdbef5125fe84`  
		Last Modified: Wed, 23 Jan 2019 11:59:12 GMT  
		Size: 54.6 MB (54598497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f41350de1b8c9a9aaef88261e4271f1d2cdbfcd19c25b6ff74b91d18449ccf3`  
		Last Modified: Wed, 23 Jan 2019 13:08:22 GMT  
		Size: 19.8 MB (19846606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfebb7c82792eca5cf28743e4209f51a647eee4e572199538027c9f37e263f0`  
		Last Modified: Wed, 23 Jan 2019 13:08:44 GMT  
		Size: 44.0 MB (43951885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45bd9d6476253bffc4debb9e10f1b43cce50575497c94544c0fb0d35c1370f6`  
		Last Modified: Wed, 23 Jan 2019 13:09:27 GMT  
		Size: 135.4 MB (135404772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43900df224bdee95758fc30311b661ee31f6ad9a33444848635aca53a32e2bc6`  
		Last Modified: Wed, 23 Jan 2019 17:39:25 GMT  
		Size: 3.3 MB (3272265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abeb611f3722bb5ab976ab853121a88eeeeb70048ecf2344ff9093f10e863aef`  
		Last Modified: Wed, 23 Jan 2019 17:39:32 GMT  
		Size: 23.3 MB (23250706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7dbbd46b3980d540858b32460866c0e8d5ca6e6a742ceadd54bbdfe51db6d6`  
		Last Modified: Wed, 23 Jan 2019 17:39:25 GMT  
		Size: 4.0 MB (4020113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-6`

```console
$ docker pull pypy@sha256:6b8192221890e2da9422abcac20cdc2eb7298a7e1b833a6d89a4941956c55301
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-6` - linux; amd64

```console
$ docker pull pypy@sha256:b45ad3fc0df4ea58c996e26a5256ed0de61757f11718f4ff411b1c3eaeb0ccbb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.0 MB (280019169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3840a0b44adc277e115ae377e3a40b7b4ec681aee2ba82881f0aab67315f7a87`
-	Default Command: `["pypy"]`

```dockerfile
# Fri, 28 Dec 2018 23:23:43 GMT
ADD file:7f32b46e26b56ebbde417db4d539757b8e852c62bab15978db092ce24d2420d1 in / 
# Fri, 28 Dec 2018 23:23:43 GMT
CMD ["bash"]
# Fri, 28 Dec 2018 23:56:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:56:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 28 Dec 2018 23:58:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:31:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:47:16 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Jan 2019 23:47:16 GMT
ENV LANG=C.UTF-8
# Tue, 08 Jan 2019 23:48:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:48:57 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 08 Jan 2019 23:48:57 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 08 Jan 2019 23:49:04 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Tue, 08 Jan 2019 23:49:13 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 08 Jan 2019 23:49:13 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:ff144d3c0ab1033159cf082f681c9f51b09cd701d907e3bad65b1411fa1585a9`  
		Last Modified: Fri, 28 Dec 2018 23:33:45 GMT  
		Size: 54.4 MB (54387117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8988f929403e60a98b37002c9210cf3bf3ecf8782130b011dac8f2b28608ed31`  
		Last Modified: Sat, 29 Dec 2018 00:19:39 GMT  
		Size: 17.5 MB (17539015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155407d8635b1e92ef1550c047a938a8fcf39331261d1eb742ea962d7a1a0630`  
		Last Modified: Sat, 29 Dec 2018 00:19:53 GMT  
		Size: 43.3 MB (43306794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34f5459055e712ef296b171c24cfd7cffbdc0f7cd4c76f7a3fc82ebae23b6e6`  
		Last Modified: Tue, 08 Jan 2019 23:43:59 GMT  
		Size: 131.4 MB (131434783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f170979890f107ba8e58ec44f0c280aac71beda77eb30d65097780fed98aa7ef`  
		Last Modified: Tue, 08 Jan 2019 23:50:14 GMT  
		Size: 3.2 MB (3168228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18309a52c6263dad6fd7d97ef18ee98cde4c7c750d0f9fc7436fc268e5b1a8aa`  
		Last Modified: Tue, 08 Jan 2019 23:50:21 GMT  
		Size: 26.2 MB (26162880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6594c4133f4e23cc4ba13299ef22c400f395a52236ee549899b67531dc270190`  
		Last Modified: Tue, 08 Jan 2019 23:50:15 GMT  
		Size: 4.0 MB (4020352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6` - linux; arm variant v5

```console
$ docker pull pypy@sha256:c58e5753434db6c06aafb1db98e97c24e6b7e2fd804ca2aa09edbec1e90ec12d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.7 MB (257722211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2e423454f657c4c9c791c5895cdf4fa51d5671f874cb8ef5e63688a02f0bf43`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:10 GMT
ADD file:d54ba2764c6a60a1d23652305cbda61eafbf6d9f3a808ca58fe9c2400a1d51e9 in / 
# Wed, 23 Jan 2019 09:50:11 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:30:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:30:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 10:32:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:35:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:48:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:48:49 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 10:49:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:49:49 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 10:49:49 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 10:49:59 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Wed, 23 Jan 2019 14:23:27 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 23 Jan 2019 14:23:28 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:50fd141dcc41a9d8165a0900c6d253849085d5fefc20c8802d9ab7990cbc0f88`  
		Last Modified: Wed, 23 Jan 2019 09:59:04 GMT  
		Size: 52.6 MB (52574556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c97e5089c7dbd37156a16aa333e82a8047c39870627ad13f9d513f514eba1f9`  
		Last Modified: Wed, 23 Jan 2019 10:46:53 GMT  
		Size: 17.0 MB (17030345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1e3e333e6420f3b76bbee5414c4d1c57e7b42b8a42899bcb8e54e780b280ec`  
		Last Modified: Wed, 23 Jan 2019 10:47:13 GMT  
		Size: 41.1 MB (41147190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b25ed3de9d90618a35e1452e88796e1d13223bdc809c1eb9c57add0346086a9`  
		Last Modified: Wed, 23 Jan 2019 10:47:53 GMT  
		Size: 116.0 MB (115968878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f452ceb421b0b1eab6f50069e59a434a29aff11e57c1177b4440a032470a1fdb`  
		Last Modified: Wed, 23 Jan 2019 14:29:25 GMT  
		Size: 3.0 MB (3021176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554a00889c58197dfeec560728073f0dd87345d38a770f95ecb4e1561db77dbf`  
		Last Modified: Wed, 23 Jan 2019 14:29:35 GMT  
		Size: 24.0 MB (23959632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa2d701322ed053a0ba2b5ae39085943cd85b79d52e03ba49a2bc207788f560`  
		Last Modified: Wed, 23 Jan 2019 14:29:26 GMT  
		Size: 4.0 MB (4020434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6` - linux; 386

```console
$ docker pull pypy@sha256:d88f1a56a74536627b18fbfa62b71a5d4884851e2a49728fe49d7563100c4176
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.3 MB (284344844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97915db503f7a09c37b5717c859fd21d74182038bb5e423c082059031dccdb70`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 23 Jan 2019 11:42:56 GMT
ADD file:34c4d7be20c87ed251d0f5a99c46920d29f51e7050390664fe342895d416cf26 in / 
# Wed, 23 Jan 2019 11:42:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:38:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:38:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:41:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:46:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:24:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:24:30 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 17:27:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:27:12 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 17:27:12 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 17:27:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Wed, 23 Jan 2019 17:27:30 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 23 Jan 2019 17:27:30 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:c9e90e967f2e8ff1c9bcd2f542cedbcf4ef3dd2e4601b2f3c66fdbef5125fe84`  
		Last Modified: Wed, 23 Jan 2019 11:59:12 GMT  
		Size: 54.6 MB (54598497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f41350de1b8c9a9aaef88261e4271f1d2cdbfcd19c25b6ff74b91d18449ccf3`  
		Last Modified: Wed, 23 Jan 2019 13:08:22 GMT  
		Size: 19.8 MB (19846606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfebb7c82792eca5cf28743e4209f51a647eee4e572199538027c9f37e263f0`  
		Last Modified: Wed, 23 Jan 2019 13:08:44 GMT  
		Size: 44.0 MB (43951885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45bd9d6476253bffc4debb9e10f1b43cce50575497c94544c0fb0d35c1370f6`  
		Last Modified: Wed, 23 Jan 2019 13:09:27 GMT  
		Size: 135.4 MB (135404772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43900df224bdee95758fc30311b661ee31f6ad9a33444848635aca53a32e2bc6`  
		Last Modified: Wed, 23 Jan 2019 17:39:25 GMT  
		Size: 3.3 MB (3272265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abeb611f3722bb5ab976ab853121a88eeeeb70048ecf2344ff9093f10e863aef`  
		Last Modified: Wed, 23 Jan 2019 17:39:32 GMT  
		Size: 23.3 MB (23250706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7dbbd46b3980d540858b32460866c0e8d5ca6e6a742ceadd54bbdfe51db6d6`  
		Last Modified: Wed, 23 Jan 2019 17:39:25 GMT  
		Size: 4.0 MB (4020113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-6.0`

```console
$ docker pull pypy@sha256:6b8192221890e2da9422abcac20cdc2eb7298a7e1b833a6d89a4941956c55301
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-6.0` - linux; amd64

```console
$ docker pull pypy@sha256:b45ad3fc0df4ea58c996e26a5256ed0de61757f11718f4ff411b1c3eaeb0ccbb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.0 MB (280019169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3840a0b44adc277e115ae377e3a40b7b4ec681aee2ba82881f0aab67315f7a87`
-	Default Command: `["pypy"]`

```dockerfile
# Fri, 28 Dec 2018 23:23:43 GMT
ADD file:7f32b46e26b56ebbde417db4d539757b8e852c62bab15978db092ce24d2420d1 in / 
# Fri, 28 Dec 2018 23:23:43 GMT
CMD ["bash"]
# Fri, 28 Dec 2018 23:56:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:56:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 28 Dec 2018 23:58:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:31:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:47:16 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Jan 2019 23:47:16 GMT
ENV LANG=C.UTF-8
# Tue, 08 Jan 2019 23:48:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:48:57 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 08 Jan 2019 23:48:57 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 08 Jan 2019 23:49:04 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Tue, 08 Jan 2019 23:49:13 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 08 Jan 2019 23:49:13 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:ff144d3c0ab1033159cf082f681c9f51b09cd701d907e3bad65b1411fa1585a9`  
		Last Modified: Fri, 28 Dec 2018 23:33:45 GMT  
		Size: 54.4 MB (54387117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8988f929403e60a98b37002c9210cf3bf3ecf8782130b011dac8f2b28608ed31`  
		Last Modified: Sat, 29 Dec 2018 00:19:39 GMT  
		Size: 17.5 MB (17539015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155407d8635b1e92ef1550c047a938a8fcf39331261d1eb742ea962d7a1a0630`  
		Last Modified: Sat, 29 Dec 2018 00:19:53 GMT  
		Size: 43.3 MB (43306794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34f5459055e712ef296b171c24cfd7cffbdc0f7cd4c76f7a3fc82ebae23b6e6`  
		Last Modified: Tue, 08 Jan 2019 23:43:59 GMT  
		Size: 131.4 MB (131434783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f170979890f107ba8e58ec44f0c280aac71beda77eb30d65097780fed98aa7ef`  
		Last Modified: Tue, 08 Jan 2019 23:50:14 GMT  
		Size: 3.2 MB (3168228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18309a52c6263dad6fd7d97ef18ee98cde4c7c750d0f9fc7436fc268e5b1a8aa`  
		Last Modified: Tue, 08 Jan 2019 23:50:21 GMT  
		Size: 26.2 MB (26162880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6594c4133f4e23cc4ba13299ef22c400f395a52236ee549899b67531dc270190`  
		Last Modified: Tue, 08 Jan 2019 23:50:15 GMT  
		Size: 4.0 MB (4020352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6.0` - linux; arm variant v5

```console
$ docker pull pypy@sha256:c58e5753434db6c06aafb1db98e97c24e6b7e2fd804ca2aa09edbec1e90ec12d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.7 MB (257722211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2e423454f657c4c9c791c5895cdf4fa51d5671f874cb8ef5e63688a02f0bf43`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:10 GMT
ADD file:d54ba2764c6a60a1d23652305cbda61eafbf6d9f3a808ca58fe9c2400a1d51e9 in / 
# Wed, 23 Jan 2019 09:50:11 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:30:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:30:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 10:32:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:35:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:48:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:48:49 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 10:49:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:49:49 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 10:49:49 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 10:49:59 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Wed, 23 Jan 2019 14:23:27 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 23 Jan 2019 14:23:28 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:50fd141dcc41a9d8165a0900c6d253849085d5fefc20c8802d9ab7990cbc0f88`  
		Last Modified: Wed, 23 Jan 2019 09:59:04 GMT  
		Size: 52.6 MB (52574556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c97e5089c7dbd37156a16aa333e82a8047c39870627ad13f9d513f514eba1f9`  
		Last Modified: Wed, 23 Jan 2019 10:46:53 GMT  
		Size: 17.0 MB (17030345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1e3e333e6420f3b76bbee5414c4d1c57e7b42b8a42899bcb8e54e780b280ec`  
		Last Modified: Wed, 23 Jan 2019 10:47:13 GMT  
		Size: 41.1 MB (41147190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b25ed3de9d90618a35e1452e88796e1d13223bdc809c1eb9c57add0346086a9`  
		Last Modified: Wed, 23 Jan 2019 10:47:53 GMT  
		Size: 116.0 MB (115968878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f452ceb421b0b1eab6f50069e59a434a29aff11e57c1177b4440a032470a1fdb`  
		Last Modified: Wed, 23 Jan 2019 14:29:25 GMT  
		Size: 3.0 MB (3021176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554a00889c58197dfeec560728073f0dd87345d38a770f95ecb4e1561db77dbf`  
		Last Modified: Wed, 23 Jan 2019 14:29:35 GMT  
		Size: 24.0 MB (23959632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa2d701322ed053a0ba2b5ae39085943cd85b79d52e03ba49a2bc207788f560`  
		Last Modified: Wed, 23 Jan 2019 14:29:26 GMT  
		Size: 4.0 MB (4020434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6.0` - linux; 386

```console
$ docker pull pypy@sha256:d88f1a56a74536627b18fbfa62b71a5d4884851e2a49728fe49d7563100c4176
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.3 MB (284344844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97915db503f7a09c37b5717c859fd21d74182038bb5e423c082059031dccdb70`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 23 Jan 2019 11:42:56 GMT
ADD file:34c4d7be20c87ed251d0f5a99c46920d29f51e7050390664fe342895d416cf26 in / 
# Wed, 23 Jan 2019 11:42:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:38:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:38:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:41:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:46:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:24:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:24:30 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 17:27:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:27:12 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 17:27:12 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 17:27:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Wed, 23 Jan 2019 17:27:30 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 23 Jan 2019 17:27:30 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:c9e90e967f2e8ff1c9bcd2f542cedbcf4ef3dd2e4601b2f3c66fdbef5125fe84`  
		Last Modified: Wed, 23 Jan 2019 11:59:12 GMT  
		Size: 54.6 MB (54598497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f41350de1b8c9a9aaef88261e4271f1d2cdbfcd19c25b6ff74b91d18449ccf3`  
		Last Modified: Wed, 23 Jan 2019 13:08:22 GMT  
		Size: 19.8 MB (19846606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfebb7c82792eca5cf28743e4209f51a647eee4e572199538027c9f37e263f0`  
		Last Modified: Wed, 23 Jan 2019 13:08:44 GMT  
		Size: 44.0 MB (43951885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45bd9d6476253bffc4debb9e10f1b43cce50575497c94544c0fb0d35c1370f6`  
		Last Modified: Wed, 23 Jan 2019 13:09:27 GMT  
		Size: 135.4 MB (135404772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43900df224bdee95758fc30311b661ee31f6ad9a33444848635aca53a32e2bc6`  
		Last Modified: Wed, 23 Jan 2019 17:39:25 GMT  
		Size: 3.3 MB (3272265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abeb611f3722bb5ab976ab853121a88eeeeb70048ecf2344ff9093f10e863aef`  
		Last Modified: Wed, 23 Jan 2019 17:39:32 GMT  
		Size: 23.3 MB (23250706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7dbbd46b3980d540858b32460866c0e8d5ca6e6a742ceadd54bbdfe51db6d6`  
		Last Modified: Wed, 23 Jan 2019 17:39:25 GMT  
		Size: 4.0 MB (4020113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-6.0.0`

```console
$ docker pull pypy@sha256:6b8192221890e2da9422abcac20cdc2eb7298a7e1b833a6d89a4941956c55301
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-6.0.0` - linux; amd64

```console
$ docker pull pypy@sha256:b45ad3fc0df4ea58c996e26a5256ed0de61757f11718f4ff411b1c3eaeb0ccbb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.0 MB (280019169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3840a0b44adc277e115ae377e3a40b7b4ec681aee2ba82881f0aab67315f7a87`
-	Default Command: `["pypy"]`

```dockerfile
# Fri, 28 Dec 2018 23:23:43 GMT
ADD file:7f32b46e26b56ebbde417db4d539757b8e852c62bab15978db092ce24d2420d1 in / 
# Fri, 28 Dec 2018 23:23:43 GMT
CMD ["bash"]
# Fri, 28 Dec 2018 23:56:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:56:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 28 Dec 2018 23:58:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:31:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:47:16 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Jan 2019 23:47:16 GMT
ENV LANG=C.UTF-8
# Tue, 08 Jan 2019 23:48:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:48:57 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 08 Jan 2019 23:48:57 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 08 Jan 2019 23:49:04 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Tue, 08 Jan 2019 23:49:13 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 08 Jan 2019 23:49:13 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:ff144d3c0ab1033159cf082f681c9f51b09cd701d907e3bad65b1411fa1585a9`  
		Last Modified: Fri, 28 Dec 2018 23:33:45 GMT  
		Size: 54.4 MB (54387117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8988f929403e60a98b37002c9210cf3bf3ecf8782130b011dac8f2b28608ed31`  
		Last Modified: Sat, 29 Dec 2018 00:19:39 GMT  
		Size: 17.5 MB (17539015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155407d8635b1e92ef1550c047a938a8fcf39331261d1eb742ea962d7a1a0630`  
		Last Modified: Sat, 29 Dec 2018 00:19:53 GMT  
		Size: 43.3 MB (43306794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34f5459055e712ef296b171c24cfd7cffbdc0f7cd4c76f7a3fc82ebae23b6e6`  
		Last Modified: Tue, 08 Jan 2019 23:43:59 GMT  
		Size: 131.4 MB (131434783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f170979890f107ba8e58ec44f0c280aac71beda77eb30d65097780fed98aa7ef`  
		Last Modified: Tue, 08 Jan 2019 23:50:14 GMT  
		Size: 3.2 MB (3168228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18309a52c6263dad6fd7d97ef18ee98cde4c7c750d0f9fc7436fc268e5b1a8aa`  
		Last Modified: Tue, 08 Jan 2019 23:50:21 GMT  
		Size: 26.2 MB (26162880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6594c4133f4e23cc4ba13299ef22c400f395a52236ee549899b67531dc270190`  
		Last Modified: Tue, 08 Jan 2019 23:50:15 GMT  
		Size: 4.0 MB (4020352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6.0.0` - linux; arm variant v5

```console
$ docker pull pypy@sha256:c58e5753434db6c06aafb1db98e97c24e6b7e2fd804ca2aa09edbec1e90ec12d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.7 MB (257722211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2e423454f657c4c9c791c5895cdf4fa51d5671f874cb8ef5e63688a02f0bf43`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:10 GMT
ADD file:d54ba2764c6a60a1d23652305cbda61eafbf6d9f3a808ca58fe9c2400a1d51e9 in / 
# Wed, 23 Jan 2019 09:50:11 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:30:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:30:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 10:32:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:35:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:48:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:48:49 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 10:49:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:49:49 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 10:49:49 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 10:49:59 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Wed, 23 Jan 2019 14:23:27 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 23 Jan 2019 14:23:28 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:50fd141dcc41a9d8165a0900c6d253849085d5fefc20c8802d9ab7990cbc0f88`  
		Last Modified: Wed, 23 Jan 2019 09:59:04 GMT  
		Size: 52.6 MB (52574556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c97e5089c7dbd37156a16aa333e82a8047c39870627ad13f9d513f514eba1f9`  
		Last Modified: Wed, 23 Jan 2019 10:46:53 GMT  
		Size: 17.0 MB (17030345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1e3e333e6420f3b76bbee5414c4d1c57e7b42b8a42899bcb8e54e780b280ec`  
		Last Modified: Wed, 23 Jan 2019 10:47:13 GMT  
		Size: 41.1 MB (41147190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b25ed3de9d90618a35e1452e88796e1d13223bdc809c1eb9c57add0346086a9`  
		Last Modified: Wed, 23 Jan 2019 10:47:53 GMT  
		Size: 116.0 MB (115968878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f452ceb421b0b1eab6f50069e59a434a29aff11e57c1177b4440a032470a1fdb`  
		Last Modified: Wed, 23 Jan 2019 14:29:25 GMT  
		Size: 3.0 MB (3021176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554a00889c58197dfeec560728073f0dd87345d38a770f95ecb4e1561db77dbf`  
		Last Modified: Wed, 23 Jan 2019 14:29:35 GMT  
		Size: 24.0 MB (23959632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa2d701322ed053a0ba2b5ae39085943cd85b79d52e03ba49a2bc207788f560`  
		Last Modified: Wed, 23 Jan 2019 14:29:26 GMT  
		Size: 4.0 MB (4020434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6.0.0` - linux; 386

```console
$ docker pull pypy@sha256:d88f1a56a74536627b18fbfa62b71a5d4884851e2a49728fe49d7563100c4176
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.3 MB (284344844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97915db503f7a09c37b5717c859fd21d74182038bb5e423c082059031dccdb70`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 23 Jan 2019 11:42:56 GMT
ADD file:34c4d7be20c87ed251d0f5a99c46920d29f51e7050390664fe342895d416cf26 in / 
# Wed, 23 Jan 2019 11:42:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:38:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:38:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:41:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:46:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:24:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:24:30 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 17:27:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:27:12 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 17:27:12 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 17:27:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Wed, 23 Jan 2019 17:27:30 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 23 Jan 2019 17:27:30 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:c9e90e967f2e8ff1c9bcd2f542cedbcf4ef3dd2e4601b2f3c66fdbef5125fe84`  
		Last Modified: Wed, 23 Jan 2019 11:59:12 GMT  
		Size: 54.6 MB (54598497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f41350de1b8c9a9aaef88261e4271f1d2cdbfcd19c25b6ff74b91d18449ccf3`  
		Last Modified: Wed, 23 Jan 2019 13:08:22 GMT  
		Size: 19.8 MB (19846606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfebb7c82792eca5cf28743e4209f51a647eee4e572199538027c9f37e263f0`  
		Last Modified: Wed, 23 Jan 2019 13:08:44 GMT  
		Size: 44.0 MB (43951885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45bd9d6476253bffc4debb9e10f1b43cce50575497c94544c0fb0d35c1370f6`  
		Last Modified: Wed, 23 Jan 2019 13:09:27 GMT  
		Size: 135.4 MB (135404772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43900df224bdee95758fc30311b661ee31f6ad9a33444848635aca53a32e2bc6`  
		Last Modified: Wed, 23 Jan 2019 17:39:25 GMT  
		Size: 3.3 MB (3272265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abeb611f3722bb5ab976ab853121a88eeeeb70048ecf2344ff9093f10e863aef`  
		Last Modified: Wed, 23 Jan 2019 17:39:32 GMT  
		Size: 23.3 MB (23250706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7dbbd46b3980d540858b32460866c0e8d5ca6e6a742ceadd54bbdfe51db6d6`  
		Last Modified: Wed, 23 Jan 2019 17:39:25 GMT  
		Size: 4.0 MB (4020113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-6.0.0-jessie`

```console
$ docker pull pypy@sha256:6b8192221890e2da9422abcac20cdc2eb7298a7e1b833a6d89a4941956c55301
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-6.0.0-jessie` - linux; amd64

```console
$ docker pull pypy@sha256:b45ad3fc0df4ea58c996e26a5256ed0de61757f11718f4ff411b1c3eaeb0ccbb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.0 MB (280019169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3840a0b44adc277e115ae377e3a40b7b4ec681aee2ba82881f0aab67315f7a87`
-	Default Command: `["pypy"]`

```dockerfile
# Fri, 28 Dec 2018 23:23:43 GMT
ADD file:7f32b46e26b56ebbde417db4d539757b8e852c62bab15978db092ce24d2420d1 in / 
# Fri, 28 Dec 2018 23:23:43 GMT
CMD ["bash"]
# Fri, 28 Dec 2018 23:56:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:56:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 28 Dec 2018 23:58:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:31:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:47:16 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Jan 2019 23:47:16 GMT
ENV LANG=C.UTF-8
# Tue, 08 Jan 2019 23:48:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:48:57 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 08 Jan 2019 23:48:57 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 08 Jan 2019 23:49:04 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Tue, 08 Jan 2019 23:49:13 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 08 Jan 2019 23:49:13 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:ff144d3c0ab1033159cf082f681c9f51b09cd701d907e3bad65b1411fa1585a9`  
		Last Modified: Fri, 28 Dec 2018 23:33:45 GMT  
		Size: 54.4 MB (54387117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8988f929403e60a98b37002c9210cf3bf3ecf8782130b011dac8f2b28608ed31`  
		Last Modified: Sat, 29 Dec 2018 00:19:39 GMT  
		Size: 17.5 MB (17539015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155407d8635b1e92ef1550c047a938a8fcf39331261d1eb742ea962d7a1a0630`  
		Last Modified: Sat, 29 Dec 2018 00:19:53 GMT  
		Size: 43.3 MB (43306794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34f5459055e712ef296b171c24cfd7cffbdc0f7cd4c76f7a3fc82ebae23b6e6`  
		Last Modified: Tue, 08 Jan 2019 23:43:59 GMT  
		Size: 131.4 MB (131434783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f170979890f107ba8e58ec44f0c280aac71beda77eb30d65097780fed98aa7ef`  
		Last Modified: Tue, 08 Jan 2019 23:50:14 GMT  
		Size: 3.2 MB (3168228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18309a52c6263dad6fd7d97ef18ee98cde4c7c750d0f9fc7436fc268e5b1a8aa`  
		Last Modified: Tue, 08 Jan 2019 23:50:21 GMT  
		Size: 26.2 MB (26162880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6594c4133f4e23cc4ba13299ef22c400f395a52236ee549899b67531dc270190`  
		Last Modified: Tue, 08 Jan 2019 23:50:15 GMT  
		Size: 4.0 MB (4020352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6.0.0-jessie` - linux; arm variant v5

```console
$ docker pull pypy@sha256:c58e5753434db6c06aafb1db98e97c24e6b7e2fd804ca2aa09edbec1e90ec12d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.7 MB (257722211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2e423454f657c4c9c791c5895cdf4fa51d5671f874cb8ef5e63688a02f0bf43`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:10 GMT
ADD file:d54ba2764c6a60a1d23652305cbda61eafbf6d9f3a808ca58fe9c2400a1d51e9 in / 
# Wed, 23 Jan 2019 09:50:11 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:30:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:30:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 10:32:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:35:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:48:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:48:49 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 10:49:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:49:49 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 10:49:49 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 10:49:59 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Wed, 23 Jan 2019 14:23:27 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 23 Jan 2019 14:23:28 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:50fd141dcc41a9d8165a0900c6d253849085d5fefc20c8802d9ab7990cbc0f88`  
		Last Modified: Wed, 23 Jan 2019 09:59:04 GMT  
		Size: 52.6 MB (52574556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c97e5089c7dbd37156a16aa333e82a8047c39870627ad13f9d513f514eba1f9`  
		Last Modified: Wed, 23 Jan 2019 10:46:53 GMT  
		Size: 17.0 MB (17030345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1e3e333e6420f3b76bbee5414c4d1c57e7b42b8a42899bcb8e54e780b280ec`  
		Last Modified: Wed, 23 Jan 2019 10:47:13 GMT  
		Size: 41.1 MB (41147190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b25ed3de9d90618a35e1452e88796e1d13223bdc809c1eb9c57add0346086a9`  
		Last Modified: Wed, 23 Jan 2019 10:47:53 GMT  
		Size: 116.0 MB (115968878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f452ceb421b0b1eab6f50069e59a434a29aff11e57c1177b4440a032470a1fdb`  
		Last Modified: Wed, 23 Jan 2019 14:29:25 GMT  
		Size: 3.0 MB (3021176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554a00889c58197dfeec560728073f0dd87345d38a770f95ecb4e1561db77dbf`  
		Last Modified: Wed, 23 Jan 2019 14:29:35 GMT  
		Size: 24.0 MB (23959632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa2d701322ed053a0ba2b5ae39085943cd85b79d52e03ba49a2bc207788f560`  
		Last Modified: Wed, 23 Jan 2019 14:29:26 GMT  
		Size: 4.0 MB (4020434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6.0.0-jessie` - linux; 386

```console
$ docker pull pypy@sha256:d88f1a56a74536627b18fbfa62b71a5d4884851e2a49728fe49d7563100c4176
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.3 MB (284344844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97915db503f7a09c37b5717c859fd21d74182038bb5e423c082059031dccdb70`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 23 Jan 2019 11:42:56 GMT
ADD file:34c4d7be20c87ed251d0f5a99c46920d29f51e7050390664fe342895d416cf26 in / 
# Wed, 23 Jan 2019 11:42:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:38:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:38:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:41:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:46:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:24:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:24:30 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 17:27:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:27:12 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 17:27:12 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 17:27:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Wed, 23 Jan 2019 17:27:30 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 23 Jan 2019 17:27:30 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:c9e90e967f2e8ff1c9bcd2f542cedbcf4ef3dd2e4601b2f3c66fdbef5125fe84`  
		Last Modified: Wed, 23 Jan 2019 11:59:12 GMT  
		Size: 54.6 MB (54598497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f41350de1b8c9a9aaef88261e4271f1d2cdbfcd19c25b6ff74b91d18449ccf3`  
		Last Modified: Wed, 23 Jan 2019 13:08:22 GMT  
		Size: 19.8 MB (19846606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfebb7c82792eca5cf28743e4209f51a647eee4e572199538027c9f37e263f0`  
		Last Modified: Wed, 23 Jan 2019 13:08:44 GMT  
		Size: 44.0 MB (43951885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45bd9d6476253bffc4debb9e10f1b43cce50575497c94544c0fb0d35c1370f6`  
		Last Modified: Wed, 23 Jan 2019 13:09:27 GMT  
		Size: 135.4 MB (135404772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43900df224bdee95758fc30311b661ee31f6ad9a33444848635aca53a32e2bc6`  
		Last Modified: Wed, 23 Jan 2019 17:39:25 GMT  
		Size: 3.3 MB (3272265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abeb611f3722bb5ab976ab853121a88eeeeb70048ecf2344ff9093f10e863aef`  
		Last Modified: Wed, 23 Jan 2019 17:39:32 GMT  
		Size: 23.3 MB (23250706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7dbbd46b3980d540858b32460866c0e8d5ca6e6a742ceadd54bbdfe51db6d6`  
		Last Modified: Wed, 23 Jan 2019 17:39:25 GMT  
		Size: 4.0 MB (4020113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-6.0.0-slim`

```console
$ docker pull pypy@sha256:01218b19f9e63cfe61c42ce6c3de2c6fc294564de667839fabeadf6d5969d06a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-6.0.0-slim` - linux; amd64

```console
$ docker pull pypy@sha256:9fb00515f1e3af21eb4f0fe70bcc04e6bc1a5c613eb104315c9d4f0ffc0f93d4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.4 MB (63390027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3404848ca97f7ca5e1b4c6b8dc5a1dbe390726953d13acb40af5ba40ad2de2bd`
-	Default Command: `["pypy"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:10 GMT
ADD file:74e9771816fa7d109fa79427ea1b8615f036838a9c02d4fe124035b440692cfd in / 
# Fri, 28 Dec 2018 23:24:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 03:59:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 03:59:57 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 04:01:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 04:01:53 GMT
ENV PYPY_VERSION=6.0.0
# Sat, 29 Dec 2018 04:01:54 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 29 Dec 2018 04:04:40 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 04:04:41 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:436214a91f468dfbb145ef1658128dc3f3c35f5af545a90c9a60a6c42968ac87`  
		Last Modified: Fri, 28 Dec 2018 23:33:59 GMT  
		Size: 30.2 MB (30153953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca598cb320fb755ae0443d3781a99d509098dab1b1831ba5961e23291e5f750`  
		Last Modified: Sat, 29 Dec 2018 04:09:16 GMT  
		Size: 2.8 MB (2811478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f82a0369e4a096d5d58e772bf4652b71f0122ad79613ed7879cd5e40a29bdbc`  
		Last Modified: Sat, 29 Dec 2018 04:09:24 GMT  
		Size: 30.4 MB (30424596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6.0.0-slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:0279c34e8d2c59037c26124c208f681e2958525094a90160d8760e3b680c2201
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.2 MB (59242037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fb3d6c2dc6f0537d3adc2e4e61f479b28212c95f1a98173fc12da7324428479`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:34 GMT
ADD file:d56fba3965a9434864a05fce7731cbec09ec6c3ea34b8a3e72a65a597ee52931 in / 
# Wed, 23 Jan 2019 09:50:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:51:19 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:51:20 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 10:52:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:52:25 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 10:52:25 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 14:25:37 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 14:25:38 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:e3950d1cc969b5b5674e279562ac17636104e44548e2dea0efcd3c7cc5867616`  
		Last Modified: Wed, 23 Jan 2019 09:59:24 GMT  
		Size: 28.5 MB (28459288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73f1086e4b1a4a6f6675743b3b0931471247d8aed4e05fcb5ee62cca3a9b5ce`  
		Last Modified: Wed, 23 Jan 2019 14:29:51 GMT  
		Size: 2.6 MB (2563377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e016e5b5597e65e7c2884e61af35b36fb007b077ad491201ca1a7906ee2e5d7`  
		Last Modified: Wed, 23 Jan 2019 14:30:02 GMT  
		Size: 28.2 MB (28219372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6.0.0-slim` - linux; 386

```console
$ docker pull pypy@sha256:80f3452db3a333bfd1574bdb52230d19f4ce40b9c84ce8d6aa90650c2b48b856
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62723578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8744c219ec0b10c954275f65db8b40917fa80a6cc53582572da6bc07124b3245`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 23 Jan 2019 11:43:42 GMT
ADD file:7181677d169fdf847eb4ca0b8071ad7345e882aff132aaabc7ea32c40cd21dab in / 
# Wed, 23 Jan 2019 11:43:42 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:27:44 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:27:44 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 17:30:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:30:40 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 17:30:40 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 17:34:32 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 17:34:33 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:6e31980640f69275069979bf989f5da4fbbffb988b3d52b08d39b451740752f4`  
		Last Modified: Wed, 23 Jan 2019 11:59:32 GMT  
		Size: 30.3 MB (30293609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4beab62285670d4f11fe161612872e8b2cb371a54309f8859c6011d71c5cec5f`  
		Last Modified: Wed, 23 Jan 2019 17:39:43 GMT  
		Size: 4.9 MB (4918269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd64fdea5307e03089e1b684563c3bdf97997091e07962da142ec0091524755`  
		Last Modified: Wed, 23 Jan 2019 17:39:50 GMT  
		Size: 27.5 MB (27511700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-6.0.0-slim-jessie`

```console
$ docker pull pypy@sha256:01218b19f9e63cfe61c42ce6c3de2c6fc294564de667839fabeadf6d5969d06a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-6.0.0-slim-jessie` - linux; amd64

```console
$ docker pull pypy@sha256:9fb00515f1e3af21eb4f0fe70bcc04e6bc1a5c613eb104315c9d4f0ffc0f93d4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.4 MB (63390027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3404848ca97f7ca5e1b4c6b8dc5a1dbe390726953d13acb40af5ba40ad2de2bd`
-	Default Command: `["pypy"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:10 GMT
ADD file:74e9771816fa7d109fa79427ea1b8615f036838a9c02d4fe124035b440692cfd in / 
# Fri, 28 Dec 2018 23:24:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 03:59:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 03:59:57 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 04:01:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 04:01:53 GMT
ENV PYPY_VERSION=6.0.0
# Sat, 29 Dec 2018 04:01:54 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 29 Dec 2018 04:04:40 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 04:04:41 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:436214a91f468dfbb145ef1658128dc3f3c35f5af545a90c9a60a6c42968ac87`  
		Last Modified: Fri, 28 Dec 2018 23:33:59 GMT  
		Size: 30.2 MB (30153953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca598cb320fb755ae0443d3781a99d509098dab1b1831ba5961e23291e5f750`  
		Last Modified: Sat, 29 Dec 2018 04:09:16 GMT  
		Size: 2.8 MB (2811478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f82a0369e4a096d5d58e772bf4652b71f0122ad79613ed7879cd5e40a29bdbc`  
		Last Modified: Sat, 29 Dec 2018 04:09:24 GMT  
		Size: 30.4 MB (30424596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6.0.0-slim-jessie` - linux; arm variant v5

```console
$ docker pull pypy@sha256:0279c34e8d2c59037c26124c208f681e2958525094a90160d8760e3b680c2201
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.2 MB (59242037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fb3d6c2dc6f0537d3adc2e4e61f479b28212c95f1a98173fc12da7324428479`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:34 GMT
ADD file:d56fba3965a9434864a05fce7731cbec09ec6c3ea34b8a3e72a65a597ee52931 in / 
# Wed, 23 Jan 2019 09:50:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:51:19 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:51:20 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 10:52:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:52:25 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 10:52:25 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 14:25:37 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 14:25:38 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:e3950d1cc969b5b5674e279562ac17636104e44548e2dea0efcd3c7cc5867616`  
		Last Modified: Wed, 23 Jan 2019 09:59:24 GMT  
		Size: 28.5 MB (28459288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73f1086e4b1a4a6f6675743b3b0931471247d8aed4e05fcb5ee62cca3a9b5ce`  
		Last Modified: Wed, 23 Jan 2019 14:29:51 GMT  
		Size: 2.6 MB (2563377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e016e5b5597e65e7c2884e61af35b36fb007b077ad491201ca1a7906ee2e5d7`  
		Last Modified: Wed, 23 Jan 2019 14:30:02 GMT  
		Size: 28.2 MB (28219372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6.0.0-slim-jessie` - linux; 386

```console
$ docker pull pypy@sha256:80f3452db3a333bfd1574bdb52230d19f4ce40b9c84ce8d6aa90650c2b48b856
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62723578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8744c219ec0b10c954275f65db8b40917fa80a6cc53582572da6bc07124b3245`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 23 Jan 2019 11:43:42 GMT
ADD file:7181677d169fdf847eb4ca0b8071ad7345e882aff132aaabc7ea32c40cd21dab in / 
# Wed, 23 Jan 2019 11:43:42 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:27:44 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:27:44 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 17:30:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:30:40 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 17:30:40 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 17:34:32 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 17:34:33 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:6e31980640f69275069979bf989f5da4fbbffb988b3d52b08d39b451740752f4`  
		Last Modified: Wed, 23 Jan 2019 11:59:32 GMT  
		Size: 30.3 MB (30293609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4beab62285670d4f11fe161612872e8b2cb371a54309f8859c6011d71c5cec5f`  
		Last Modified: Wed, 23 Jan 2019 17:39:43 GMT  
		Size: 4.9 MB (4918269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd64fdea5307e03089e1b684563c3bdf97997091e07962da142ec0091524755`  
		Last Modified: Wed, 23 Jan 2019 17:39:50 GMT  
		Size: 27.5 MB (27511700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-6.0-jessie`

```console
$ docker pull pypy@sha256:6b8192221890e2da9422abcac20cdc2eb7298a7e1b833a6d89a4941956c55301
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-6.0-jessie` - linux; amd64

```console
$ docker pull pypy@sha256:b45ad3fc0df4ea58c996e26a5256ed0de61757f11718f4ff411b1c3eaeb0ccbb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.0 MB (280019169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3840a0b44adc277e115ae377e3a40b7b4ec681aee2ba82881f0aab67315f7a87`
-	Default Command: `["pypy"]`

```dockerfile
# Fri, 28 Dec 2018 23:23:43 GMT
ADD file:7f32b46e26b56ebbde417db4d539757b8e852c62bab15978db092ce24d2420d1 in / 
# Fri, 28 Dec 2018 23:23:43 GMT
CMD ["bash"]
# Fri, 28 Dec 2018 23:56:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:56:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 28 Dec 2018 23:58:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:31:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:47:16 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Jan 2019 23:47:16 GMT
ENV LANG=C.UTF-8
# Tue, 08 Jan 2019 23:48:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:48:57 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 08 Jan 2019 23:48:57 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 08 Jan 2019 23:49:04 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Tue, 08 Jan 2019 23:49:13 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 08 Jan 2019 23:49:13 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:ff144d3c0ab1033159cf082f681c9f51b09cd701d907e3bad65b1411fa1585a9`  
		Last Modified: Fri, 28 Dec 2018 23:33:45 GMT  
		Size: 54.4 MB (54387117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8988f929403e60a98b37002c9210cf3bf3ecf8782130b011dac8f2b28608ed31`  
		Last Modified: Sat, 29 Dec 2018 00:19:39 GMT  
		Size: 17.5 MB (17539015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155407d8635b1e92ef1550c047a938a8fcf39331261d1eb742ea962d7a1a0630`  
		Last Modified: Sat, 29 Dec 2018 00:19:53 GMT  
		Size: 43.3 MB (43306794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34f5459055e712ef296b171c24cfd7cffbdc0f7cd4c76f7a3fc82ebae23b6e6`  
		Last Modified: Tue, 08 Jan 2019 23:43:59 GMT  
		Size: 131.4 MB (131434783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f170979890f107ba8e58ec44f0c280aac71beda77eb30d65097780fed98aa7ef`  
		Last Modified: Tue, 08 Jan 2019 23:50:14 GMT  
		Size: 3.2 MB (3168228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18309a52c6263dad6fd7d97ef18ee98cde4c7c750d0f9fc7436fc268e5b1a8aa`  
		Last Modified: Tue, 08 Jan 2019 23:50:21 GMT  
		Size: 26.2 MB (26162880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6594c4133f4e23cc4ba13299ef22c400f395a52236ee549899b67531dc270190`  
		Last Modified: Tue, 08 Jan 2019 23:50:15 GMT  
		Size: 4.0 MB (4020352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6.0-jessie` - linux; arm variant v5

```console
$ docker pull pypy@sha256:c58e5753434db6c06aafb1db98e97c24e6b7e2fd804ca2aa09edbec1e90ec12d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.7 MB (257722211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2e423454f657c4c9c791c5895cdf4fa51d5671f874cb8ef5e63688a02f0bf43`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:10 GMT
ADD file:d54ba2764c6a60a1d23652305cbda61eafbf6d9f3a808ca58fe9c2400a1d51e9 in / 
# Wed, 23 Jan 2019 09:50:11 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:30:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:30:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 10:32:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:35:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:48:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:48:49 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 10:49:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:49:49 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 10:49:49 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 10:49:59 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Wed, 23 Jan 2019 14:23:27 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 23 Jan 2019 14:23:28 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:50fd141dcc41a9d8165a0900c6d253849085d5fefc20c8802d9ab7990cbc0f88`  
		Last Modified: Wed, 23 Jan 2019 09:59:04 GMT  
		Size: 52.6 MB (52574556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c97e5089c7dbd37156a16aa333e82a8047c39870627ad13f9d513f514eba1f9`  
		Last Modified: Wed, 23 Jan 2019 10:46:53 GMT  
		Size: 17.0 MB (17030345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1e3e333e6420f3b76bbee5414c4d1c57e7b42b8a42899bcb8e54e780b280ec`  
		Last Modified: Wed, 23 Jan 2019 10:47:13 GMT  
		Size: 41.1 MB (41147190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b25ed3de9d90618a35e1452e88796e1d13223bdc809c1eb9c57add0346086a9`  
		Last Modified: Wed, 23 Jan 2019 10:47:53 GMT  
		Size: 116.0 MB (115968878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f452ceb421b0b1eab6f50069e59a434a29aff11e57c1177b4440a032470a1fdb`  
		Last Modified: Wed, 23 Jan 2019 14:29:25 GMT  
		Size: 3.0 MB (3021176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554a00889c58197dfeec560728073f0dd87345d38a770f95ecb4e1561db77dbf`  
		Last Modified: Wed, 23 Jan 2019 14:29:35 GMT  
		Size: 24.0 MB (23959632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa2d701322ed053a0ba2b5ae39085943cd85b79d52e03ba49a2bc207788f560`  
		Last Modified: Wed, 23 Jan 2019 14:29:26 GMT  
		Size: 4.0 MB (4020434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6.0-jessie` - linux; 386

```console
$ docker pull pypy@sha256:d88f1a56a74536627b18fbfa62b71a5d4884851e2a49728fe49d7563100c4176
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.3 MB (284344844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97915db503f7a09c37b5717c859fd21d74182038bb5e423c082059031dccdb70`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 23 Jan 2019 11:42:56 GMT
ADD file:34c4d7be20c87ed251d0f5a99c46920d29f51e7050390664fe342895d416cf26 in / 
# Wed, 23 Jan 2019 11:42:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:38:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:38:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:41:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:46:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:24:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:24:30 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 17:27:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:27:12 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 17:27:12 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 17:27:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Wed, 23 Jan 2019 17:27:30 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 23 Jan 2019 17:27:30 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:c9e90e967f2e8ff1c9bcd2f542cedbcf4ef3dd2e4601b2f3c66fdbef5125fe84`  
		Last Modified: Wed, 23 Jan 2019 11:59:12 GMT  
		Size: 54.6 MB (54598497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f41350de1b8c9a9aaef88261e4271f1d2cdbfcd19c25b6ff74b91d18449ccf3`  
		Last Modified: Wed, 23 Jan 2019 13:08:22 GMT  
		Size: 19.8 MB (19846606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfebb7c82792eca5cf28743e4209f51a647eee4e572199538027c9f37e263f0`  
		Last Modified: Wed, 23 Jan 2019 13:08:44 GMT  
		Size: 44.0 MB (43951885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45bd9d6476253bffc4debb9e10f1b43cce50575497c94544c0fb0d35c1370f6`  
		Last Modified: Wed, 23 Jan 2019 13:09:27 GMT  
		Size: 135.4 MB (135404772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43900df224bdee95758fc30311b661ee31f6ad9a33444848635aca53a32e2bc6`  
		Last Modified: Wed, 23 Jan 2019 17:39:25 GMT  
		Size: 3.3 MB (3272265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abeb611f3722bb5ab976ab853121a88eeeeb70048ecf2344ff9093f10e863aef`  
		Last Modified: Wed, 23 Jan 2019 17:39:32 GMT  
		Size: 23.3 MB (23250706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7dbbd46b3980d540858b32460866c0e8d5ca6e6a742ceadd54bbdfe51db6d6`  
		Last Modified: Wed, 23 Jan 2019 17:39:25 GMT  
		Size: 4.0 MB (4020113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-6.0-slim`

```console
$ docker pull pypy@sha256:01218b19f9e63cfe61c42ce6c3de2c6fc294564de667839fabeadf6d5969d06a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-6.0-slim` - linux; amd64

```console
$ docker pull pypy@sha256:9fb00515f1e3af21eb4f0fe70bcc04e6bc1a5c613eb104315c9d4f0ffc0f93d4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.4 MB (63390027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3404848ca97f7ca5e1b4c6b8dc5a1dbe390726953d13acb40af5ba40ad2de2bd`
-	Default Command: `["pypy"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:10 GMT
ADD file:74e9771816fa7d109fa79427ea1b8615f036838a9c02d4fe124035b440692cfd in / 
# Fri, 28 Dec 2018 23:24:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 03:59:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 03:59:57 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 04:01:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 04:01:53 GMT
ENV PYPY_VERSION=6.0.0
# Sat, 29 Dec 2018 04:01:54 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 29 Dec 2018 04:04:40 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 04:04:41 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:436214a91f468dfbb145ef1658128dc3f3c35f5af545a90c9a60a6c42968ac87`  
		Last Modified: Fri, 28 Dec 2018 23:33:59 GMT  
		Size: 30.2 MB (30153953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca598cb320fb755ae0443d3781a99d509098dab1b1831ba5961e23291e5f750`  
		Last Modified: Sat, 29 Dec 2018 04:09:16 GMT  
		Size: 2.8 MB (2811478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f82a0369e4a096d5d58e772bf4652b71f0122ad79613ed7879cd5e40a29bdbc`  
		Last Modified: Sat, 29 Dec 2018 04:09:24 GMT  
		Size: 30.4 MB (30424596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6.0-slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:0279c34e8d2c59037c26124c208f681e2958525094a90160d8760e3b680c2201
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.2 MB (59242037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fb3d6c2dc6f0537d3adc2e4e61f479b28212c95f1a98173fc12da7324428479`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:34 GMT
ADD file:d56fba3965a9434864a05fce7731cbec09ec6c3ea34b8a3e72a65a597ee52931 in / 
# Wed, 23 Jan 2019 09:50:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:51:19 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:51:20 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 10:52:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:52:25 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 10:52:25 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 14:25:37 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 14:25:38 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:e3950d1cc969b5b5674e279562ac17636104e44548e2dea0efcd3c7cc5867616`  
		Last Modified: Wed, 23 Jan 2019 09:59:24 GMT  
		Size: 28.5 MB (28459288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73f1086e4b1a4a6f6675743b3b0931471247d8aed4e05fcb5ee62cca3a9b5ce`  
		Last Modified: Wed, 23 Jan 2019 14:29:51 GMT  
		Size: 2.6 MB (2563377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e016e5b5597e65e7c2884e61af35b36fb007b077ad491201ca1a7906ee2e5d7`  
		Last Modified: Wed, 23 Jan 2019 14:30:02 GMT  
		Size: 28.2 MB (28219372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6.0-slim` - linux; 386

```console
$ docker pull pypy@sha256:80f3452db3a333bfd1574bdb52230d19f4ce40b9c84ce8d6aa90650c2b48b856
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62723578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8744c219ec0b10c954275f65db8b40917fa80a6cc53582572da6bc07124b3245`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 23 Jan 2019 11:43:42 GMT
ADD file:7181677d169fdf847eb4ca0b8071ad7345e882aff132aaabc7ea32c40cd21dab in / 
# Wed, 23 Jan 2019 11:43:42 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:27:44 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:27:44 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 17:30:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:30:40 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 17:30:40 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 17:34:32 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 17:34:33 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:6e31980640f69275069979bf989f5da4fbbffb988b3d52b08d39b451740752f4`  
		Last Modified: Wed, 23 Jan 2019 11:59:32 GMT  
		Size: 30.3 MB (30293609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4beab62285670d4f11fe161612872e8b2cb371a54309f8859c6011d71c5cec5f`  
		Last Modified: Wed, 23 Jan 2019 17:39:43 GMT  
		Size: 4.9 MB (4918269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd64fdea5307e03089e1b684563c3bdf97997091e07962da142ec0091524755`  
		Last Modified: Wed, 23 Jan 2019 17:39:50 GMT  
		Size: 27.5 MB (27511700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-6.0-slim-jessie`

```console
$ docker pull pypy@sha256:01218b19f9e63cfe61c42ce6c3de2c6fc294564de667839fabeadf6d5969d06a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-6.0-slim-jessie` - linux; amd64

```console
$ docker pull pypy@sha256:9fb00515f1e3af21eb4f0fe70bcc04e6bc1a5c613eb104315c9d4f0ffc0f93d4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.4 MB (63390027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3404848ca97f7ca5e1b4c6b8dc5a1dbe390726953d13acb40af5ba40ad2de2bd`
-	Default Command: `["pypy"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:10 GMT
ADD file:74e9771816fa7d109fa79427ea1b8615f036838a9c02d4fe124035b440692cfd in / 
# Fri, 28 Dec 2018 23:24:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 03:59:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 03:59:57 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 04:01:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 04:01:53 GMT
ENV PYPY_VERSION=6.0.0
# Sat, 29 Dec 2018 04:01:54 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 29 Dec 2018 04:04:40 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 04:04:41 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:436214a91f468dfbb145ef1658128dc3f3c35f5af545a90c9a60a6c42968ac87`  
		Last Modified: Fri, 28 Dec 2018 23:33:59 GMT  
		Size: 30.2 MB (30153953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca598cb320fb755ae0443d3781a99d509098dab1b1831ba5961e23291e5f750`  
		Last Modified: Sat, 29 Dec 2018 04:09:16 GMT  
		Size: 2.8 MB (2811478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f82a0369e4a096d5d58e772bf4652b71f0122ad79613ed7879cd5e40a29bdbc`  
		Last Modified: Sat, 29 Dec 2018 04:09:24 GMT  
		Size: 30.4 MB (30424596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6.0-slim-jessie` - linux; arm variant v5

```console
$ docker pull pypy@sha256:0279c34e8d2c59037c26124c208f681e2958525094a90160d8760e3b680c2201
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.2 MB (59242037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fb3d6c2dc6f0537d3adc2e4e61f479b28212c95f1a98173fc12da7324428479`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:34 GMT
ADD file:d56fba3965a9434864a05fce7731cbec09ec6c3ea34b8a3e72a65a597ee52931 in / 
# Wed, 23 Jan 2019 09:50:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:51:19 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:51:20 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 10:52:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:52:25 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 10:52:25 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 14:25:37 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 14:25:38 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:e3950d1cc969b5b5674e279562ac17636104e44548e2dea0efcd3c7cc5867616`  
		Last Modified: Wed, 23 Jan 2019 09:59:24 GMT  
		Size: 28.5 MB (28459288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73f1086e4b1a4a6f6675743b3b0931471247d8aed4e05fcb5ee62cca3a9b5ce`  
		Last Modified: Wed, 23 Jan 2019 14:29:51 GMT  
		Size: 2.6 MB (2563377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e016e5b5597e65e7c2884e61af35b36fb007b077ad491201ca1a7906ee2e5d7`  
		Last Modified: Wed, 23 Jan 2019 14:30:02 GMT  
		Size: 28.2 MB (28219372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6.0-slim-jessie` - linux; 386

```console
$ docker pull pypy@sha256:80f3452db3a333bfd1574bdb52230d19f4ce40b9c84ce8d6aa90650c2b48b856
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62723578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8744c219ec0b10c954275f65db8b40917fa80a6cc53582572da6bc07124b3245`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 23 Jan 2019 11:43:42 GMT
ADD file:7181677d169fdf847eb4ca0b8071ad7345e882aff132aaabc7ea32c40cd21dab in / 
# Wed, 23 Jan 2019 11:43:42 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:27:44 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:27:44 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 17:30:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:30:40 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 17:30:40 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 17:34:32 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 17:34:33 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:6e31980640f69275069979bf989f5da4fbbffb988b3d52b08d39b451740752f4`  
		Last Modified: Wed, 23 Jan 2019 11:59:32 GMT  
		Size: 30.3 MB (30293609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4beab62285670d4f11fe161612872e8b2cb371a54309f8859c6011d71c5cec5f`  
		Last Modified: Wed, 23 Jan 2019 17:39:43 GMT  
		Size: 4.9 MB (4918269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd64fdea5307e03089e1b684563c3bdf97997091e07962da142ec0091524755`  
		Last Modified: Wed, 23 Jan 2019 17:39:50 GMT  
		Size: 27.5 MB (27511700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-6-jessie`

```console
$ docker pull pypy@sha256:6b8192221890e2da9422abcac20cdc2eb7298a7e1b833a6d89a4941956c55301
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-6-jessie` - linux; amd64

```console
$ docker pull pypy@sha256:b45ad3fc0df4ea58c996e26a5256ed0de61757f11718f4ff411b1c3eaeb0ccbb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.0 MB (280019169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3840a0b44adc277e115ae377e3a40b7b4ec681aee2ba82881f0aab67315f7a87`
-	Default Command: `["pypy"]`

```dockerfile
# Fri, 28 Dec 2018 23:23:43 GMT
ADD file:7f32b46e26b56ebbde417db4d539757b8e852c62bab15978db092ce24d2420d1 in / 
# Fri, 28 Dec 2018 23:23:43 GMT
CMD ["bash"]
# Fri, 28 Dec 2018 23:56:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:56:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 28 Dec 2018 23:58:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:31:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:47:16 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Jan 2019 23:47:16 GMT
ENV LANG=C.UTF-8
# Tue, 08 Jan 2019 23:48:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:48:57 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 08 Jan 2019 23:48:57 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 08 Jan 2019 23:49:04 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Tue, 08 Jan 2019 23:49:13 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 08 Jan 2019 23:49:13 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:ff144d3c0ab1033159cf082f681c9f51b09cd701d907e3bad65b1411fa1585a9`  
		Last Modified: Fri, 28 Dec 2018 23:33:45 GMT  
		Size: 54.4 MB (54387117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8988f929403e60a98b37002c9210cf3bf3ecf8782130b011dac8f2b28608ed31`  
		Last Modified: Sat, 29 Dec 2018 00:19:39 GMT  
		Size: 17.5 MB (17539015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155407d8635b1e92ef1550c047a938a8fcf39331261d1eb742ea962d7a1a0630`  
		Last Modified: Sat, 29 Dec 2018 00:19:53 GMT  
		Size: 43.3 MB (43306794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34f5459055e712ef296b171c24cfd7cffbdc0f7cd4c76f7a3fc82ebae23b6e6`  
		Last Modified: Tue, 08 Jan 2019 23:43:59 GMT  
		Size: 131.4 MB (131434783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f170979890f107ba8e58ec44f0c280aac71beda77eb30d65097780fed98aa7ef`  
		Last Modified: Tue, 08 Jan 2019 23:50:14 GMT  
		Size: 3.2 MB (3168228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18309a52c6263dad6fd7d97ef18ee98cde4c7c750d0f9fc7436fc268e5b1a8aa`  
		Last Modified: Tue, 08 Jan 2019 23:50:21 GMT  
		Size: 26.2 MB (26162880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6594c4133f4e23cc4ba13299ef22c400f395a52236ee549899b67531dc270190`  
		Last Modified: Tue, 08 Jan 2019 23:50:15 GMT  
		Size: 4.0 MB (4020352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6-jessie` - linux; arm variant v5

```console
$ docker pull pypy@sha256:c58e5753434db6c06aafb1db98e97c24e6b7e2fd804ca2aa09edbec1e90ec12d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.7 MB (257722211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2e423454f657c4c9c791c5895cdf4fa51d5671f874cb8ef5e63688a02f0bf43`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:10 GMT
ADD file:d54ba2764c6a60a1d23652305cbda61eafbf6d9f3a808ca58fe9c2400a1d51e9 in / 
# Wed, 23 Jan 2019 09:50:11 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:30:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:30:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 10:32:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:35:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:48:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:48:49 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 10:49:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:49:49 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 10:49:49 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 10:49:59 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Wed, 23 Jan 2019 14:23:27 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 23 Jan 2019 14:23:28 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:50fd141dcc41a9d8165a0900c6d253849085d5fefc20c8802d9ab7990cbc0f88`  
		Last Modified: Wed, 23 Jan 2019 09:59:04 GMT  
		Size: 52.6 MB (52574556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c97e5089c7dbd37156a16aa333e82a8047c39870627ad13f9d513f514eba1f9`  
		Last Modified: Wed, 23 Jan 2019 10:46:53 GMT  
		Size: 17.0 MB (17030345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1e3e333e6420f3b76bbee5414c4d1c57e7b42b8a42899bcb8e54e780b280ec`  
		Last Modified: Wed, 23 Jan 2019 10:47:13 GMT  
		Size: 41.1 MB (41147190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b25ed3de9d90618a35e1452e88796e1d13223bdc809c1eb9c57add0346086a9`  
		Last Modified: Wed, 23 Jan 2019 10:47:53 GMT  
		Size: 116.0 MB (115968878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f452ceb421b0b1eab6f50069e59a434a29aff11e57c1177b4440a032470a1fdb`  
		Last Modified: Wed, 23 Jan 2019 14:29:25 GMT  
		Size: 3.0 MB (3021176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554a00889c58197dfeec560728073f0dd87345d38a770f95ecb4e1561db77dbf`  
		Last Modified: Wed, 23 Jan 2019 14:29:35 GMT  
		Size: 24.0 MB (23959632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa2d701322ed053a0ba2b5ae39085943cd85b79d52e03ba49a2bc207788f560`  
		Last Modified: Wed, 23 Jan 2019 14:29:26 GMT  
		Size: 4.0 MB (4020434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6-jessie` - linux; 386

```console
$ docker pull pypy@sha256:d88f1a56a74536627b18fbfa62b71a5d4884851e2a49728fe49d7563100c4176
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.3 MB (284344844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97915db503f7a09c37b5717c859fd21d74182038bb5e423c082059031dccdb70`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 23 Jan 2019 11:42:56 GMT
ADD file:34c4d7be20c87ed251d0f5a99c46920d29f51e7050390664fe342895d416cf26 in / 
# Wed, 23 Jan 2019 11:42:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:38:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:38:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:41:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:46:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:24:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:24:30 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 17:27:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:27:12 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 17:27:12 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 17:27:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Wed, 23 Jan 2019 17:27:30 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 23 Jan 2019 17:27:30 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:c9e90e967f2e8ff1c9bcd2f542cedbcf4ef3dd2e4601b2f3c66fdbef5125fe84`  
		Last Modified: Wed, 23 Jan 2019 11:59:12 GMT  
		Size: 54.6 MB (54598497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f41350de1b8c9a9aaef88261e4271f1d2cdbfcd19c25b6ff74b91d18449ccf3`  
		Last Modified: Wed, 23 Jan 2019 13:08:22 GMT  
		Size: 19.8 MB (19846606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfebb7c82792eca5cf28743e4209f51a647eee4e572199538027c9f37e263f0`  
		Last Modified: Wed, 23 Jan 2019 13:08:44 GMT  
		Size: 44.0 MB (43951885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45bd9d6476253bffc4debb9e10f1b43cce50575497c94544c0fb0d35c1370f6`  
		Last Modified: Wed, 23 Jan 2019 13:09:27 GMT  
		Size: 135.4 MB (135404772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43900df224bdee95758fc30311b661ee31f6ad9a33444848635aca53a32e2bc6`  
		Last Modified: Wed, 23 Jan 2019 17:39:25 GMT  
		Size: 3.3 MB (3272265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abeb611f3722bb5ab976ab853121a88eeeeb70048ecf2344ff9093f10e863aef`  
		Last Modified: Wed, 23 Jan 2019 17:39:32 GMT  
		Size: 23.3 MB (23250706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7dbbd46b3980d540858b32460866c0e8d5ca6e6a742ceadd54bbdfe51db6d6`  
		Last Modified: Wed, 23 Jan 2019 17:39:25 GMT  
		Size: 4.0 MB (4020113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-6-slim`

```console
$ docker pull pypy@sha256:01218b19f9e63cfe61c42ce6c3de2c6fc294564de667839fabeadf6d5969d06a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-6-slim` - linux; amd64

```console
$ docker pull pypy@sha256:9fb00515f1e3af21eb4f0fe70bcc04e6bc1a5c613eb104315c9d4f0ffc0f93d4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.4 MB (63390027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3404848ca97f7ca5e1b4c6b8dc5a1dbe390726953d13acb40af5ba40ad2de2bd`
-	Default Command: `["pypy"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:10 GMT
ADD file:74e9771816fa7d109fa79427ea1b8615f036838a9c02d4fe124035b440692cfd in / 
# Fri, 28 Dec 2018 23:24:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 03:59:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 03:59:57 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 04:01:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 04:01:53 GMT
ENV PYPY_VERSION=6.0.0
# Sat, 29 Dec 2018 04:01:54 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 29 Dec 2018 04:04:40 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 04:04:41 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:436214a91f468dfbb145ef1658128dc3f3c35f5af545a90c9a60a6c42968ac87`  
		Last Modified: Fri, 28 Dec 2018 23:33:59 GMT  
		Size: 30.2 MB (30153953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca598cb320fb755ae0443d3781a99d509098dab1b1831ba5961e23291e5f750`  
		Last Modified: Sat, 29 Dec 2018 04:09:16 GMT  
		Size: 2.8 MB (2811478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f82a0369e4a096d5d58e772bf4652b71f0122ad79613ed7879cd5e40a29bdbc`  
		Last Modified: Sat, 29 Dec 2018 04:09:24 GMT  
		Size: 30.4 MB (30424596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6-slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:0279c34e8d2c59037c26124c208f681e2958525094a90160d8760e3b680c2201
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.2 MB (59242037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fb3d6c2dc6f0537d3adc2e4e61f479b28212c95f1a98173fc12da7324428479`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:34 GMT
ADD file:d56fba3965a9434864a05fce7731cbec09ec6c3ea34b8a3e72a65a597ee52931 in / 
# Wed, 23 Jan 2019 09:50:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:51:19 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:51:20 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 10:52:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:52:25 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 10:52:25 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 14:25:37 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 14:25:38 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:e3950d1cc969b5b5674e279562ac17636104e44548e2dea0efcd3c7cc5867616`  
		Last Modified: Wed, 23 Jan 2019 09:59:24 GMT  
		Size: 28.5 MB (28459288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73f1086e4b1a4a6f6675743b3b0931471247d8aed4e05fcb5ee62cca3a9b5ce`  
		Last Modified: Wed, 23 Jan 2019 14:29:51 GMT  
		Size: 2.6 MB (2563377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e016e5b5597e65e7c2884e61af35b36fb007b077ad491201ca1a7906ee2e5d7`  
		Last Modified: Wed, 23 Jan 2019 14:30:02 GMT  
		Size: 28.2 MB (28219372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6-slim` - linux; 386

```console
$ docker pull pypy@sha256:80f3452db3a333bfd1574bdb52230d19f4ce40b9c84ce8d6aa90650c2b48b856
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62723578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8744c219ec0b10c954275f65db8b40917fa80a6cc53582572da6bc07124b3245`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 23 Jan 2019 11:43:42 GMT
ADD file:7181677d169fdf847eb4ca0b8071ad7345e882aff132aaabc7ea32c40cd21dab in / 
# Wed, 23 Jan 2019 11:43:42 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:27:44 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:27:44 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 17:30:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:30:40 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 17:30:40 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 17:34:32 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 17:34:33 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:6e31980640f69275069979bf989f5da4fbbffb988b3d52b08d39b451740752f4`  
		Last Modified: Wed, 23 Jan 2019 11:59:32 GMT  
		Size: 30.3 MB (30293609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4beab62285670d4f11fe161612872e8b2cb371a54309f8859c6011d71c5cec5f`  
		Last Modified: Wed, 23 Jan 2019 17:39:43 GMT  
		Size: 4.9 MB (4918269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd64fdea5307e03089e1b684563c3bdf97997091e07962da142ec0091524755`  
		Last Modified: Wed, 23 Jan 2019 17:39:50 GMT  
		Size: 27.5 MB (27511700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-6-slim-jessie`

```console
$ docker pull pypy@sha256:01218b19f9e63cfe61c42ce6c3de2c6fc294564de667839fabeadf6d5969d06a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-6-slim-jessie` - linux; amd64

```console
$ docker pull pypy@sha256:9fb00515f1e3af21eb4f0fe70bcc04e6bc1a5c613eb104315c9d4f0ffc0f93d4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.4 MB (63390027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3404848ca97f7ca5e1b4c6b8dc5a1dbe390726953d13acb40af5ba40ad2de2bd`
-	Default Command: `["pypy"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:10 GMT
ADD file:74e9771816fa7d109fa79427ea1b8615f036838a9c02d4fe124035b440692cfd in / 
# Fri, 28 Dec 2018 23:24:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 03:59:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 03:59:57 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 04:01:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 04:01:53 GMT
ENV PYPY_VERSION=6.0.0
# Sat, 29 Dec 2018 04:01:54 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 29 Dec 2018 04:04:40 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 04:04:41 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:436214a91f468dfbb145ef1658128dc3f3c35f5af545a90c9a60a6c42968ac87`  
		Last Modified: Fri, 28 Dec 2018 23:33:59 GMT  
		Size: 30.2 MB (30153953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca598cb320fb755ae0443d3781a99d509098dab1b1831ba5961e23291e5f750`  
		Last Modified: Sat, 29 Dec 2018 04:09:16 GMT  
		Size: 2.8 MB (2811478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f82a0369e4a096d5d58e772bf4652b71f0122ad79613ed7879cd5e40a29bdbc`  
		Last Modified: Sat, 29 Dec 2018 04:09:24 GMT  
		Size: 30.4 MB (30424596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6-slim-jessie` - linux; arm variant v5

```console
$ docker pull pypy@sha256:0279c34e8d2c59037c26124c208f681e2958525094a90160d8760e3b680c2201
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.2 MB (59242037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fb3d6c2dc6f0537d3adc2e4e61f479b28212c95f1a98173fc12da7324428479`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:34 GMT
ADD file:d56fba3965a9434864a05fce7731cbec09ec6c3ea34b8a3e72a65a597ee52931 in / 
# Wed, 23 Jan 2019 09:50:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:51:19 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:51:20 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 10:52:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:52:25 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 10:52:25 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 14:25:37 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 14:25:38 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:e3950d1cc969b5b5674e279562ac17636104e44548e2dea0efcd3c7cc5867616`  
		Last Modified: Wed, 23 Jan 2019 09:59:24 GMT  
		Size: 28.5 MB (28459288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73f1086e4b1a4a6f6675743b3b0931471247d8aed4e05fcb5ee62cca3a9b5ce`  
		Last Modified: Wed, 23 Jan 2019 14:29:51 GMT  
		Size: 2.6 MB (2563377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e016e5b5597e65e7c2884e61af35b36fb007b077ad491201ca1a7906ee2e5d7`  
		Last Modified: Wed, 23 Jan 2019 14:30:02 GMT  
		Size: 28.2 MB (28219372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-6-slim-jessie` - linux; 386

```console
$ docker pull pypy@sha256:80f3452db3a333bfd1574bdb52230d19f4ce40b9c84ce8d6aa90650c2b48b856
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62723578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8744c219ec0b10c954275f65db8b40917fa80a6cc53582572da6bc07124b3245`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 23 Jan 2019 11:43:42 GMT
ADD file:7181677d169fdf847eb4ca0b8071ad7345e882aff132aaabc7ea32c40cd21dab in / 
# Wed, 23 Jan 2019 11:43:42 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:27:44 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:27:44 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 17:30:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:30:40 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 17:30:40 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 17:34:32 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 17:34:33 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:6e31980640f69275069979bf989f5da4fbbffb988b3d52b08d39b451740752f4`  
		Last Modified: Wed, 23 Jan 2019 11:59:32 GMT  
		Size: 30.3 MB (30293609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4beab62285670d4f11fe161612872e8b2cb371a54309f8859c6011d71c5cec5f`  
		Last Modified: Wed, 23 Jan 2019 17:39:43 GMT  
		Size: 4.9 MB (4918269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd64fdea5307e03089e1b684563c3bdf97997091e07962da142ec0091524755`  
		Last Modified: Wed, 23 Jan 2019 17:39:50 GMT  
		Size: 27.5 MB (27511700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-jessie`

```console
$ docker pull pypy@sha256:6b8192221890e2da9422abcac20cdc2eb7298a7e1b833a6d89a4941956c55301
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-jessie` - linux; amd64

```console
$ docker pull pypy@sha256:b45ad3fc0df4ea58c996e26a5256ed0de61757f11718f4ff411b1c3eaeb0ccbb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.0 MB (280019169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3840a0b44adc277e115ae377e3a40b7b4ec681aee2ba82881f0aab67315f7a87`
-	Default Command: `["pypy"]`

```dockerfile
# Fri, 28 Dec 2018 23:23:43 GMT
ADD file:7f32b46e26b56ebbde417db4d539757b8e852c62bab15978db092ce24d2420d1 in / 
# Fri, 28 Dec 2018 23:23:43 GMT
CMD ["bash"]
# Fri, 28 Dec 2018 23:56:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:56:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 28 Dec 2018 23:58:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:31:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:47:16 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Jan 2019 23:47:16 GMT
ENV LANG=C.UTF-8
# Tue, 08 Jan 2019 23:48:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:48:57 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 08 Jan 2019 23:48:57 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 08 Jan 2019 23:49:04 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Tue, 08 Jan 2019 23:49:13 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 08 Jan 2019 23:49:13 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:ff144d3c0ab1033159cf082f681c9f51b09cd701d907e3bad65b1411fa1585a9`  
		Last Modified: Fri, 28 Dec 2018 23:33:45 GMT  
		Size: 54.4 MB (54387117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8988f929403e60a98b37002c9210cf3bf3ecf8782130b011dac8f2b28608ed31`  
		Last Modified: Sat, 29 Dec 2018 00:19:39 GMT  
		Size: 17.5 MB (17539015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155407d8635b1e92ef1550c047a938a8fcf39331261d1eb742ea962d7a1a0630`  
		Last Modified: Sat, 29 Dec 2018 00:19:53 GMT  
		Size: 43.3 MB (43306794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34f5459055e712ef296b171c24cfd7cffbdc0f7cd4c76f7a3fc82ebae23b6e6`  
		Last Modified: Tue, 08 Jan 2019 23:43:59 GMT  
		Size: 131.4 MB (131434783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f170979890f107ba8e58ec44f0c280aac71beda77eb30d65097780fed98aa7ef`  
		Last Modified: Tue, 08 Jan 2019 23:50:14 GMT  
		Size: 3.2 MB (3168228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18309a52c6263dad6fd7d97ef18ee98cde4c7c750d0f9fc7436fc268e5b1a8aa`  
		Last Modified: Tue, 08 Jan 2019 23:50:21 GMT  
		Size: 26.2 MB (26162880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6594c4133f4e23cc4ba13299ef22c400f395a52236ee549899b67531dc270190`  
		Last Modified: Tue, 08 Jan 2019 23:50:15 GMT  
		Size: 4.0 MB (4020352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-jessie` - linux; arm variant v5

```console
$ docker pull pypy@sha256:c58e5753434db6c06aafb1db98e97c24e6b7e2fd804ca2aa09edbec1e90ec12d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.7 MB (257722211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2e423454f657c4c9c791c5895cdf4fa51d5671f874cb8ef5e63688a02f0bf43`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:10 GMT
ADD file:d54ba2764c6a60a1d23652305cbda61eafbf6d9f3a808ca58fe9c2400a1d51e9 in / 
# Wed, 23 Jan 2019 09:50:11 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:30:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:30:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 10:32:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:35:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:48:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:48:49 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 10:49:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:49:49 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 10:49:49 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 10:49:59 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Wed, 23 Jan 2019 14:23:27 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 23 Jan 2019 14:23:28 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:50fd141dcc41a9d8165a0900c6d253849085d5fefc20c8802d9ab7990cbc0f88`  
		Last Modified: Wed, 23 Jan 2019 09:59:04 GMT  
		Size: 52.6 MB (52574556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c97e5089c7dbd37156a16aa333e82a8047c39870627ad13f9d513f514eba1f9`  
		Last Modified: Wed, 23 Jan 2019 10:46:53 GMT  
		Size: 17.0 MB (17030345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1e3e333e6420f3b76bbee5414c4d1c57e7b42b8a42899bcb8e54e780b280ec`  
		Last Modified: Wed, 23 Jan 2019 10:47:13 GMT  
		Size: 41.1 MB (41147190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b25ed3de9d90618a35e1452e88796e1d13223bdc809c1eb9c57add0346086a9`  
		Last Modified: Wed, 23 Jan 2019 10:47:53 GMT  
		Size: 116.0 MB (115968878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f452ceb421b0b1eab6f50069e59a434a29aff11e57c1177b4440a032470a1fdb`  
		Last Modified: Wed, 23 Jan 2019 14:29:25 GMT  
		Size: 3.0 MB (3021176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:554a00889c58197dfeec560728073f0dd87345d38a770f95ecb4e1561db77dbf`  
		Last Modified: Wed, 23 Jan 2019 14:29:35 GMT  
		Size: 24.0 MB (23959632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8fa2d701322ed053a0ba2b5ae39085943cd85b79d52e03ba49a2bc207788f560`  
		Last Modified: Wed, 23 Jan 2019 14:29:26 GMT  
		Size: 4.0 MB (4020434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-jessie` - linux; 386

```console
$ docker pull pypy@sha256:d88f1a56a74536627b18fbfa62b71a5d4884851e2a49728fe49d7563100c4176
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.3 MB (284344844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97915db503f7a09c37b5717c859fd21d74182038bb5e423c082059031dccdb70`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 23 Jan 2019 11:42:56 GMT
ADD file:34c4d7be20c87ed251d0f5a99c46920d29f51e7050390664fe342895d416cf26 in / 
# Wed, 23 Jan 2019 11:42:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:38:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:38:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:41:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:46:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:24:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:24:30 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 17:27:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:27:12 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 17:27:12 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 17:27:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Wed, 23 Jan 2019 17:27:30 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 23 Jan 2019 17:27:30 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:c9e90e967f2e8ff1c9bcd2f542cedbcf4ef3dd2e4601b2f3c66fdbef5125fe84`  
		Last Modified: Wed, 23 Jan 2019 11:59:12 GMT  
		Size: 54.6 MB (54598497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f41350de1b8c9a9aaef88261e4271f1d2cdbfcd19c25b6ff74b91d18449ccf3`  
		Last Modified: Wed, 23 Jan 2019 13:08:22 GMT  
		Size: 19.8 MB (19846606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfebb7c82792eca5cf28743e4209f51a647eee4e572199538027c9f37e263f0`  
		Last Modified: Wed, 23 Jan 2019 13:08:44 GMT  
		Size: 44.0 MB (43951885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45bd9d6476253bffc4debb9e10f1b43cce50575497c94544c0fb0d35c1370f6`  
		Last Modified: Wed, 23 Jan 2019 13:09:27 GMT  
		Size: 135.4 MB (135404772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43900df224bdee95758fc30311b661ee31f6ad9a33444848635aca53a32e2bc6`  
		Last Modified: Wed, 23 Jan 2019 17:39:25 GMT  
		Size: 3.3 MB (3272265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abeb611f3722bb5ab976ab853121a88eeeeb70048ecf2344ff9093f10e863aef`  
		Last Modified: Wed, 23 Jan 2019 17:39:32 GMT  
		Size: 23.3 MB (23250706 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b7dbbd46b3980d540858b32460866c0e8d5ca6e6a742ceadd54bbdfe51db6d6`  
		Last Modified: Wed, 23 Jan 2019 17:39:25 GMT  
		Size: 4.0 MB (4020113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-slim`

```console
$ docker pull pypy@sha256:01218b19f9e63cfe61c42ce6c3de2c6fc294564de667839fabeadf6d5969d06a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-slim` - linux; amd64

```console
$ docker pull pypy@sha256:9fb00515f1e3af21eb4f0fe70bcc04e6bc1a5c613eb104315c9d4f0ffc0f93d4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.4 MB (63390027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3404848ca97f7ca5e1b4c6b8dc5a1dbe390726953d13acb40af5ba40ad2de2bd`
-	Default Command: `["pypy"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:10 GMT
ADD file:74e9771816fa7d109fa79427ea1b8615f036838a9c02d4fe124035b440692cfd in / 
# Fri, 28 Dec 2018 23:24:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 03:59:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 03:59:57 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 04:01:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 04:01:53 GMT
ENV PYPY_VERSION=6.0.0
# Sat, 29 Dec 2018 04:01:54 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 29 Dec 2018 04:04:40 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 04:04:41 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:436214a91f468dfbb145ef1658128dc3f3c35f5af545a90c9a60a6c42968ac87`  
		Last Modified: Fri, 28 Dec 2018 23:33:59 GMT  
		Size: 30.2 MB (30153953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca598cb320fb755ae0443d3781a99d509098dab1b1831ba5961e23291e5f750`  
		Last Modified: Sat, 29 Dec 2018 04:09:16 GMT  
		Size: 2.8 MB (2811478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f82a0369e4a096d5d58e772bf4652b71f0122ad79613ed7879cd5e40a29bdbc`  
		Last Modified: Sat, 29 Dec 2018 04:09:24 GMT  
		Size: 30.4 MB (30424596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:0279c34e8d2c59037c26124c208f681e2958525094a90160d8760e3b680c2201
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.2 MB (59242037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fb3d6c2dc6f0537d3adc2e4e61f479b28212c95f1a98173fc12da7324428479`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:34 GMT
ADD file:d56fba3965a9434864a05fce7731cbec09ec6c3ea34b8a3e72a65a597ee52931 in / 
# Wed, 23 Jan 2019 09:50:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:51:19 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:51:20 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 10:52:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:52:25 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 10:52:25 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 14:25:37 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 14:25:38 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:e3950d1cc969b5b5674e279562ac17636104e44548e2dea0efcd3c7cc5867616`  
		Last Modified: Wed, 23 Jan 2019 09:59:24 GMT  
		Size: 28.5 MB (28459288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73f1086e4b1a4a6f6675743b3b0931471247d8aed4e05fcb5ee62cca3a9b5ce`  
		Last Modified: Wed, 23 Jan 2019 14:29:51 GMT  
		Size: 2.6 MB (2563377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e016e5b5597e65e7c2884e61af35b36fb007b077ad491201ca1a7906ee2e5d7`  
		Last Modified: Wed, 23 Jan 2019 14:30:02 GMT  
		Size: 28.2 MB (28219372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-slim` - linux; 386

```console
$ docker pull pypy@sha256:80f3452db3a333bfd1574bdb52230d19f4ce40b9c84ce8d6aa90650c2b48b856
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62723578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8744c219ec0b10c954275f65db8b40917fa80a6cc53582572da6bc07124b3245`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 23 Jan 2019 11:43:42 GMT
ADD file:7181677d169fdf847eb4ca0b8071ad7345e882aff132aaabc7ea32c40cd21dab in / 
# Wed, 23 Jan 2019 11:43:42 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:27:44 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:27:44 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 17:30:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:30:40 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 17:30:40 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 17:34:32 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 17:34:33 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:6e31980640f69275069979bf989f5da4fbbffb988b3d52b08d39b451740752f4`  
		Last Modified: Wed, 23 Jan 2019 11:59:32 GMT  
		Size: 30.3 MB (30293609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4beab62285670d4f11fe161612872e8b2cb371a54309f8859c6011d71c5cec5f`  
		Last Modified: Wed, 23 Jan 2019 17:39:43 GMT  
		Size: 4.9 MB (4918269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd64fdea5307e03089e1b684563c3bdf97997091e07962da142ec0091524755`  
		Last Modified: Wed, 23 Jan 2019 17:39:50 GMT  
		Size: 27.5 MB (27511700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-slim-jessie`

```console
$ docker pull pypy@sha256:01218b19f9e63cfe61c42ce6c3de2c6fc294564de667839fabeadf6d5969d06a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-slim-jessie` - linux; amd64

```console
$ docker pull pypy@sha256:9fb00515f1e3af21eb4f0fe70bcc04e6bc1a5c613eb104315c9d4f0ffc0f93d4
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.4 MB (63390027 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3404848ca97f7ca5e1b4c6b8dc5a1dbe390726953d13acb40af5ba40ad2de2bd`
-	Default Command: `["pypy"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:10 GMT
ADD file:74e9771816fa7d109fa79427ea1b8615f036838a9c02d4fe124035b440692cfd in / 
# Fri, 28 Dec 2018 23:24:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 03:59:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 03:59:57 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 04:01:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 04:01:53 GMT
ENV PYPY_VERSION=6.0.0
# Sat, 29 Dec 2018 04:01:54 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 29 Dec 2018 04:04:40 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 04:04:41 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:436214a91f468dfbb145ef1658128dc3f3c35f5af545a90c9a60a6c42968ac87`  
		Last Modified: Fri, 28 Dec 2018 23:33:59 GMT  
		Size: 30.2 MB (30153953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca598cb320fb755ae0443d3781a99d509098dab1b1831ba5961e23291e5f750`  
		Last Modified: Sat, 29 Dec 2018 04:09:16 GMT  
		Size: 2.8 MB (2811478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f82a0369e4a096d5d58e772bf4652b71f0122ad79613ed7879cd5e40a29bdbc`  
		Last Modified: Sat, 29 Dec 2018 04:09:24 GMT  
		Size: 30.4 MB (30424596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-slim-jessie` - linux; arm variant v5

```console
$ docker pull pypy@sha256:0279c34e8d2c59037c26124c208f681e2958525094a90160d8760e3b680c2201
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.2 MB (59242037 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fb3d6c2dc6f0537d3adc2e4e61f479b28212c95f1a98173fc12da7324428479`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:34 GMT
ADD file:d56fba3965a9434864a05fce7731cbec09ec6c3ea34b8a3e72a65a597ee52931 in / 
# Wed, 23 Jan 2019 09:50:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:51:19 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:51:20 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 10:52:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:52:25 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 10:52:25 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 14:25:37 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 14:25:38 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:e3950d1cc969b5b5674e279562ac17636104e44548e2dea0efcd3c7cc5867616`  
		Last Modified: Wed, 23 Jan 2019 09:59:24 GMT  
		Size: 28.5 MB (28459288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73f1086e4b1a4a6f6675743b3b0931471247d8aed4e05fcb5ee62cca3a9b5ce`  
		Last Modified: Wed, 23 Jan 2019 14:29:51 GMT  
		Size: 2.6 MB (2563377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e016e5b5597e65e7c2884e61af35b36fb007b077ad491201ca1a7906ee2e5d7`  
		Last Modified: Wed, 23 Jan 2019 14:30:02 GMT  
		Size: 28.2 MB (28219372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-slim-jessie` - linux; 386

```console
$ docker pull pypy@sha256:80f3452db3a333bfd1574bdb52230d19f4ce40b9c84ce8d6aa90650c2b48b856
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62723578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8744c219ec0b10c954275f65db8b40917fa80a6cc53582572da6bc07124b3245`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 23 Jan 2019 11:43:42 GMT
ADD file:7181677d169fdf847eb4ca0b8071ad7345e882aff132aaabc7ea32c40cd21dab in / 
# Wed, 23 Jan 2019 11:43:42 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:27:44 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:27:44 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 17:30:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:30:40 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 17:30:40 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 17:34:32 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 17:34:33 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:6e31980640f69275069979bf989f5da4fbbffb988b3d52b08d39b451740752f4`  
		Last Modified: Wed, 23 Jan 2019 11:59:32 GMT  
		Size: 30.3 MB (30293609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4beab62285670d4f11fe161612872e8b2cb371a54309f8859c6011d71c5cec5f`  
		Last Modified: Wed, 23 Jan 2019 17:39:43 GMT  
		Size: 4.9 MB (4918269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afd64fdea5307e03089e1b684563c3bdf97997091e07962da142ec0091524755`  
		Last Modified: Wed, 23 Jan 2019 17:39:50 GMT  
		Size: 27.5 MB (27511700 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3`

```console
$ docker pull pypy@sha256:18c42ab583879f0e1a9a39c3772891415ccb1c9c225edcf314331211eabe92b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3` - linux; amd64

```console
$ docker pull pypy@sha256:f464eee6297463e5d62fbe93d343c89f8a9c7df1018053150b923612841d2ab2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.9 MB (279851517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f784d3bfe6209256773581dca5aa78fe41b41443206ba13df305ddac8a67bba0`
-	Default Command: `["pypy3"]`

```dockerfile
# Fri, 28 Dec 2018 23:23:43 GMT
ADD file:7f32b46e26b56ebbde417db4d539757b8e852c62bab15978db092ce24d2420d1 in / 
# Fri, 28 Dec 2018 23:23:43 GMT
CMD ["bash"]
# Fri, 28 Dec 2018 23:56:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:56:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 28 Dec 2018 23:58:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:31:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:47:16 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Jan 2019 23:47:16 GMT
ENV LANG=C.UTF-8
# Tue, 08 Jan 2019 23:48:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:48:57 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 08 Jan 2019 23:48:57 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 08 Jan 2019 23:49:39 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Tue, 08 Jan 2019 23:49:50 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 08 Jan 2019 23:49:50 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:ff144d3c0ab1033159cf082f681c9f51b09cd701d907e3bad65b1411fa1585a9`  
		Last Modified: Fri, 28 Dec 2018 23:33:45 GMT  
		Size: 54.4 MB (54387117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8988f929403e60a98b37002c9210cf3bf3ecf8782130b011dac8f2b28608ed31`  
		Last Modified: Sat, 29 Dec 2018 00:19:39 GMT  
		Size: 17.5 MB (17539015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155407d8635b1e92ef1550c047a938a8fcf39331261d1eb742ea962d7a1a0630`  
		Last Modified: Sat, 29 Dec 2018 00:19:53 GMT  
		Size: 43.3 MB (43306794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34f5459055e712ef296b171c24cfd7cffbdc0f7cd4c76f7a3fc82ebae23b6e6`  
		Last Modified: Tue, 08 Jan 2019 23:43:59 GMT  
		Size: 131.4 MB (131434783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f170979890f107ba8e58ec44f0c280aac71beda77eb30d65097780fed98aa7ef`  
		Last Modified: Tue, 08 Jan 2019 23:50:14 GMT  
		Size: 3.2 MB (3168228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767c0e86352e9a0ef729588bf8aa5666df83aff7d4b220299aee4d24f2b918d4`  
		Last Modified: Tue, 08 Jan 2019 23:50:41 GMT  
		Size: 25.5 MB (25515701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0ea1bd7b7944d48fe5c24d80b765f2546d198bf3dd920cc297dd1499c8f15f`  
		Last Modified: Tue, 08 Jan 2019 23:50:35 GMT  
		Size: 4.5 MB (4499879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3` - linux; arm variant v5

```console
$ docker pull pypy@sha256:2989f42013baa3462d6f2f64584766bbf18514cf081bc1820c0f7a83ad08d745
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.0 MB (257971885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:544ca98ac251e9ecd2f8265634eb5385d77ba32e92482a5e2e31732ab59cc820`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:10 GMT
ADD file:d54ba2764c6a60a1d23652305cbda61eafbf6d9f3a808ca58fe9c2400a1d51e9 in / 
# Wed, 23 Jan 2019 09:50:11 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:30:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:30:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 10:32:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:35:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:48:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:48:49 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 10:49:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:49:49 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 10:49:49 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 10:57:23 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Wed, 23 Jan 2019 14:26:32 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 23 Jan 2019 14:26:33 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:50fd141dcc41a9d8165a0900c6d253849085d5fefc20c8802d9ab7990cbc0f88`  
		Last Modified: Wed, 23 Jan 2019 09:59:04 GMT  
		Size: 52.6 MB (52574556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c97e5089c7dbd37156a16aa333e82a8047c39870627ad13f9d513f514eba1f9`  
		Last Modified: Wed, 23 Jan 2019 10:46:53 GMT  
		Size: 17.0 MB (17030345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1e3e333e6420f3b76bbee5414c4d1c57e7b42b8a42899bcb8e54e780b280ec`  
		Last Modified: Wed, 23 Jan 2019 10:47:13 GMT  
		Size: 41.1 MB (41147190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b25ed3de9d90618a35e1452e88796e1d13223bdc809c1eb9c57add0346086a9`  
		Last Modified: Wed, 23 Jan 2019 10:47:53 GMT  
		Size: 116.0 MB (115968878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f452ceb421b0b1eab6f50069e59a434a29aff11e57c1177b4440a032470a1fdb`  
		Last Modified: Wed, 23 Jan 2019 14:29:25 GMT  
		Size: 3.0 MB (3021176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cb6072685e33b8a54c2ebe34066be596ff65f4464d94034946373ae89938e5c`  
		Last Modified: Wed, 23 Jan 2019 14:30:25 GMT  
		Size: 23.7 MB (23728916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53dce7a6fea6c3dcb06f73cf3a094612a0b53c4db49edd297924699f296039fd`  
		Last Modified: Wed, 23 Jan 2019 14:30:18 GMT  
		Size: 4.5 MB (4500824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3` - linux; 386

```console
$ docker pull pypy@sha256:5c2781081defab44011b92d8720c7370a696d29b919a2403bdc36f0d121c7fbc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 MB (284767982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48639bb45285f6228d5888ad39cfe157d469c2660efbaa570a75c32e242152e3`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 23 Jan 2019 11:42:56 GMT
ADD file:34c4d7be20c87ed251d0f5a99c46920d29f51e7050390664fe342895d416cf26 in / 
# Wed, 23 Jan 2019 11:42:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:38:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:38:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:41:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:46:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:24:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:24:30 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 17:27:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:27:12 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 17:27:12 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 17:34:53 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Wed, 23 Jan 2019 17:35:05 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 23 Jan 2019 17:35:05 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:c9e90e967f2e8ff1c9bcd2f542cedbcf4ef3dd2e4601b2f3c66fdbef5125fe84`  
		Last Modified: Wed, 23 Jan 2019 11:59:12 GMT  
		Size: 54.6 MB (54598497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f41350de1b8c9a9aaef88261e4271f1d2cdbfcd19c25b6ff74b91d18449ccf3`  
		Last Modified: Wed, 23 Jan 2019 13:08:22 GMT  
		Size: 19.8 MB (19846606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfebb7c82792eca5cf28743e4209f51a647eee4e572199538027c9f37e263f0`  
		Last Modified: Wed, 23 Jan 2019 13:08:44 GMT  
		Size: 44.0 MB (43951885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45bd9d6476253bffc4debb9e10f1b43cce50575497c94544c0fb0d35c1370f6`  
		Last Modified: Wed, 23 Jan 2019 13:09:27 GMT  
		Size: 135.4 MB (135404772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43900df224bdee95758fc30311b661ee31f6ad9a33444848635aca53a32e2bc6`  
		Last Modified: Wed, 23 Jan 2019 17:39:25 GMT  
		Size: 3.3 MB (3272265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378118253113e960bc621981f47dac952000bec24d27a99f6a53ddb4b77be31d`  
		Last Modified: Wed, 23 Jan 2019 17:40:05 GMT  
		Size: 23.2 MB (23194313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a0e23b7665808bd9a9ae753bbb042d990537c01fb038c1869fb52db31a18c8`  
		Last Modified: Wed, 23 Jan 2019 17:39:59 GMT  
		Size: 4.5 MB (4499644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-6`

```console
$ docker pull pypy@sha256:18c42ab583879f0e1a9a39c3772891415ccb1c9c225edcf314331211eabe92b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-6` - linux; amd64

```console
$ docker pull pypy@sha256:f464eee6297463e5d62fbe93d343c89f8a9c7df1018053150b923612841d2ab2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.9 MB (279851517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f784d3bfe6209256773581dca5aa78fe41b41443206ba13df305ddac8a67bba0`
-	Default Command: `["pypy3"]`

```dockerfile
# Fri, 28 Dec 2018 23:23:43 GMT
ADD file:7f32b46e26b56ebbde417db4d539757b8e852c62bab15978db092ce24d2420d1 in / 
# Fri, 28 Dec 2018 23:23:43 GMT
CMD ["bash"]
# Fri, 28 Dec 2018 23:56:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:56:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 28 Dec 2018 23:58:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:31:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:47:16 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Jan 2019 23:47:16 GMT
ENV LANG=C.UTF-8
# Tue, 08 Jan 2019 23:48:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:48:57 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 08 Jan 2019 23:48:57 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 08 Jan 2019 23:49:39 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Tue, 08 Jan 2019 23:49:50 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 08 Jan 2019 23:49:50 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:ff144d3c0ab1033159cf082f681c9f51b09cd701d907e3bad65b1411fa1585a9`  
		Last Modified: Fri, 28 Dec 2018 23:33:45 GMT  
		Size: 54.4 MB (54387117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8988f929403e60a98b37002c9210cf3bf3ecf8782130b011dac8f2b28608ed31`  
		Last Modified: Sat, 29 Dec 2018 00:19:39 GMT  
		Size: 17.5 MB (17539015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155407d8635b1e92ef1550c047a938a8fcf39331261d1eb742ea962d7a1a0630`  
		Last Modified: Sat, 29 Dec 2018 00:19:53 GMT  
		Size: 43.3 MB (43306794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34f5459055e712ef296b171c24cfd7cffbdc0f7cd4c76f7a3fc82ebae23b6e6`  
		Last Modified: Tue, 08 Jan 2019 23:43:59 GMT  
		Size: 131.4 MB (131434783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f170979890f107ba8e58ec44f0c280aac71beda77eb30d65097780fed98aa7ef`  
		Last Modified: Tue, 08 Jan 2019 23:50:14 GMT  
		Size: 3.2 MB (3168228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767c0e86352e9a0ef729588bf8aa5666df83aff7d4b220299aee4d24f2b918d4`  
		Last Modified: Tue, 08 Jan 2019 23:50:41 GMT  
		Size: 25.5 MB (25515701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0ea1bd7b7944d48fe5c24d80b765f2546d198bf3dd920cc297dd1499c8f15f`  
		Last Modified: Tue, 08 Jan 2019 23:50:35 GMT  
		Size: 4.5 MB (4499879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6` - linux; arm variant v5

```console
$ docker pull pypy@sha256:2989f42013baa3462d6f2f64584766bbf18514cf081bc1820c0f7a83ad08d745
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.0 MB (257971885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:544ca98ac251e9ecd2f8265634eb5385d77ba32e92482a5e2e31732ab59cc820`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:10 GMT
ADD file:d54ba2764c6a60a1d23652305cbda61eafbf6d9f3a808ca58fe9c2400a1d51e9 in / 
# Wed, 23 Jan 2019 09:50:11 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:30:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:30:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 10:32:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:35:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:48:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:48:49 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 10:49:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:49:49 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 10:49:49 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 10:57:23 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Wed, 23 Jan 2019 14:26:32 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 23 Jan 2019 14:26:33 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:50fd141dcc41a9d8165a0900c6d253849085d5fefc20c8802d9ab7990cbc0f88`  
		Last Modified: Wed, 23 Jan 2019 09:59:04 GMT  
		Size: 52.6 MB (52574556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c97e5089c7dbd37156a16aa333e82a8047c39870627ad13f9d513f514eba1f9`  
		Last Modified: Wed, 23 Jan 2019 10:46:53 GMT  
		Size: 17.0 MB (17030345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1e3e333e6420f3b76bbee5414c4d1c57e7b42b8a42899bcb8e54e780b280ec`  
		Last Modified: Wed, 23 Jan 2019 10:47:13 GMT  
		Size: 41.1 MB (41147190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b25ed3de9d90618a35e1452e88796e1d13223bdc809c1eb9c57add0346086a9`  
		Last Modified: Wed, 23 Jan 2019 10:47:53 GMT  
		Size: 116.0 MB (115968878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f452ceb421b0b1eab6f50069e59a434a29aff11e57c1177b4440a032470a1fdb`  
		Last Modified: Wed, 23 Jan 2019 14:29:25 GMT  
		Size: 3.0 MB (3021176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cb6072685e33b8a54c2ebe34066be596ff65f4464d94034946373ae89938e5c`  
		Last Modified: Wed, 23 Jan 2019 14:30:25 GMT  
		Size: 23.7 MB (23728916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53dce7a6fea6c3dcb06f73cf3a094612a0b53c4db49edd297924699f296039fd`  
		Last Modified: Wed, 23 Jan 2019 14:30:18 GMT  
		Size: 4.5 MB (4500824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6` - linux; 386

```console
$ docker pull pypy@sha256:5c2781081defab44011b92d8720c7370a696d29b919a2403bdc36f0d121c7fbc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 MB (284767982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48639bb45285f6228d5888ad39cfe157d469c2660efbaa570a75c32e242152e3`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 23 Jan 2019 11:42:56 GMT
ADD file:34c4d7be20c87ed251d0f5a99c46920d29f51e7050390664fe342895d416cf26 in / 
# Wed, 23 Jan 2019 11:42:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:38:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:38:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:41:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:46:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:24:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:24:30 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 17:27:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:27:12 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 17:27:12 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 17:34:53 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Wed, 23 Jan 2019 17:35:05 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 23 Jan 2019 17:35:05 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:c9e90e967f2e8ff1c9bcd2f542cedbcf4ef3dd2e4601b2f3c66fdbef5125fe84`  
		Last Modified: Wed, 23 Jan 2019 11:59:12 GMT  
		Size: 54.6 MB (54598497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f41350de1b8c9a9aaef88261e4271f1d2cdbfcd19c25b6ff74b91d18449ccf3`  
		Last Modified: Wed, 23 Jan 2019 13:08:22 GMT  
		Size: 19.8 MB (19846606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfebb7c82792eca5cf28743e4209f51a647eee4e572199538027c9f37e263f0`  
		Last Modified: Wed, 23 Jan 2019 13:08:44 GMT  
		Size: 44.0 MB (43951885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45bd9d6476253bffc4debb9e10f1b43cce50575497c94544c0fb0d35c1370f6`  
		Last Modified: Wed, 23 Jan 2019 13:09:27 GMT  
		Size: 135.4 MB (135404772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43900df224bdee95758fc30311b661ee31f6ad9a33444848635aca53a32e2bc6`  
		Last Modified: Wed, 23 Jan 2019 17:39:25 GMT  
		Size: 3.3 MB (3272265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378118253113e960bc621981f47dac952000bec24d27a99f6a53ddb4b77be31d`  
		Last Modified: Wed, 23 Jan 2019 17:40:05 GMT  
		Size: 23.2 MB (23194313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a0e23b7665808bd9a9ae753bbb042d990537c01fb038c1869fb52db31a18c8`  
		Last Modified: Wed, 23 Jan 2019 17:39:59 GMT  
		Size: 4.5 MB (4499644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-6.0`

```console
$ docker pull pypy@sha256:18c42ab583879f0e1a9a39c3772891415ccb1c9c225edcf314331211eabe92b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-6.0` - linux; amd64

```console
$ docker pull pypy@sha256:f464eee6297463e5d62fbe93d343c89f8a9c7df1018053150b923612841d2ab2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.9 MB (279851517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f784d3bfe6209256773581dca5aa78fe41b41443206ba13df305ddac8a67bba0`
-	Default Command: `["pypy3"]`

```dockerfile
# Fri, 28 Dec 2018 23:23:43 GMT
ADD file:7f32b46e26b56ebbde417db4d539757b8e852c62bab15978db092ce24d2420d1 in / 
# Fri, 28 Dec 2018 23:23:43 GMT
CMD ["bash"]
# Fri, 28 Dec 2018 23:56:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:56:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 28 Dec 2018 23:58:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:31:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:47:16 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Jan 2019 23:47:16 GMT
ENV LANG=C.UTF-8
# Tue, 08 Jan 2019 23:48:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:48:57 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 08 Jan 2019 23:48:57 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 08 Jan 2019 23:49:39 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Tue, 08 Jan 2019 23:49:50 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 08 Jan 2019 23:49:50 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:ff144d3c0ab1033159cf082f681c9f51b09cd701d907e3bad65b1411fa1585a9`  
		Last Modified: Fri, 28 Dec 2018 23:33:45 GMT  
		Size: 54.4 MB (54387117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8988f929403e60a98b37002c9210cf3bf3ecf8782130b011dac8f2b28608ed31`  
		Last Modified: Sat, 29 Dec 2018 00:19:39 GMT  
		Size: 17.5 MB (17539015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155407d8635b1e92ef1550c047a938a8fcf39331261d1eb742ea962d7a1a0630`  
		Last Modified: Sat, 29 Dec 2018 00:19:53 GMT  
		Size: 43.3 MB (43306794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34f5459055e712ef296b171c24cfd7cffbdc0f7cd4c76f7a3fc82ebae23b6e6`  
		Last Modified: Tue, 08 Jan 2019 23:43:59 GMT  
		Size: 131.4 MB (131434783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f170979890f107ba8e58ec44f0c280aac71beda77eb30d65097780fed98aa7ef`  
		Last Modified: Tue, 08 Jan 2019 23:50:14 GMT  
		Size: 3.2 MB (3168228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767c0e86352e9a0ef729588bf8aa5666df83aff7d4b220299aee4d24f2b918d4`  
		Last Modified: Tue, 08 Jan 2019 23:50:41 GMT  
		Size: 25.5 MB (25515701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0ea1bd7b7944d48fe5c24d80b765f2546d198bf3dd920cc297dd1499c8f15f`  
		Last Modified: Tue, 08 Jan 2019 23:50:35 GMT  
		Size: 4.5 MB (4499879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6.0` - linux; arm variant v5

```console
$ docker pull pypy@sha256:2989f42013baa3462d6f2f64584766bbf18514cf081bc1820c0f7a83ad08d745
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.0 MB (257971885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:544ca98ac251e9ecd2f8265634eb5385d77ba32e92482a5e2e31732ab59cc820`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:10 GMT
ADD file:d54ba2764c6a60a1d23652305cbda61eafbf6d9f3a808ca58fe9c2400a1d51e9 in / 
# Wed, 23 Jan 2019 09:50:11 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:30:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:30:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 10:32:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:35:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:48:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:48:49 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 10:49:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:49:49 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 10:49:49 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 10:57:23 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Wed, 23 Jan 2019 14:26:32 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 23 Jan 2019 14:26:33 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:50fd141dcc41a9d8165a0900c6d253849085d5fefc20c8802d9ab7990cbc0f88`  
		Last Modified: Wed, 23 Jan 2019 09:59:04 GMT  
		Size: 52.6 MB (52574556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c97e5089c7dbd37156a16aa333e82a8047c39870627ad13f9d513f514eba1f9`  
		Last Modified: Wed, 23 Jan 2019 10:46:53 GMT  
		Size: 17.0 MB (17030345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1e3e333e6420f3b76bbee5414c4d1c57e7b42b8a42899bcb8e54e780b280ec`  
		Last Modified: Wed, 23 Jan 2019 10:47:13 GMT  
		Size: 41.1 MB (41147190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b25ed3de9d90618a35e1452e88796e1d13223bdc809c1eb9c57add0346086a9`  
		Last Modified: Wed, 23 Jan 2019 10:47:53 GMT  
		Size: 116.0 MB (115968878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f452ceb421b0b1eab6f50069e59a434a29aff11e57c1177b4440a032470a1fdb`  
		Last Modified: Wed, 23 Jan 2019 14:29:25 GMT  
		Size: 3.0 MB (3021176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cb6072685e33b8a54c2ebe34066be596ff65f4464d94034946373ae89938e5c`  
		Last Modified: Wed, 23 Jan 2019 14:30:25 GMT  
		Size: 23.7 MB (23728916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53dce7a6fea6c3dcb06f73cf3a094612a0b53c4db49edd297924699f296039fd`  
		Last Modified: Wed, 23 Jan 2019 14:30:18 GMT  
		Size: 4.5 MB (4500824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6.0` - linux; 386

```console
$ docker pull pypy@sha256:5c2781081defab44011b92d8720c7370a696d29b919a2403bdc36f0d121c7fbc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 MB (284767982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48639bb45285f6228d5888ad39cfe157d469c2660efbaa570a75c32e242152e3`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 23 Jan 2019 11:42:56 GMT
ADD file:34c4d7be20c87ed251d0f5a99c46920d29f51e7050390664fe342895d416cf26 in / 
# Wed, 23 Jan 2019 11:42:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:38:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:38:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:41:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:46:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:24:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:24:30 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 17:27:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:27:12 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 17:27:12 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 17:34:53 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Wed, 23 Jan 2019 17:35:05 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 23 Jan 2019 17:35:05 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:c9e90e967f2e8ff1c9bcd2f542cedbcf4ef3dd2e4601b2f3c66fdbef5125fe84`  
		Last Modified: Wed, 23 Jan 2019 11:59:12 GMT  
		Size: 54.6 MB (54598497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f41350de1b8c9a9aaef88261e4271f1d2cdbfcd19c25b6ff74b91d18449ccf3`  
		Last Modified: Wed, 23 Jan 2019 13:08:22 GMT  
		Size: 19.8 MB (19846606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfebb7c82792eca5cf28743e4209f51a647eee4e572199538027c9f37e263f0`  
		Last Modified: Wed, 23 Jan 2019 13:08:44 GMT  
		Size: 44.0 MB (43951885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45bd9d6476253bffc4debb9e10f1b43cce50575497c94544c0fb0d35c1370f6`  
		Last Modified: Wed, 23 Jan 2019 13:09:27 GMT  
		Size: 135.4 MB (135404772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43900df224bdee95758fc30311b661ee31f6ad9a33444848635aca53a32e2bc6`  
		Last Modified: Wed, 23 Jan 2019 17:39:25 GMT  
		Size: 3.3 MB (3272265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378118253113e960bc621981f47dac952000bec24d27a99f6a53ddb4b77be31d`  
		Last Modified: Wed, 23 Jan 2019 17:40:05 GMT  
		Size: 23.2 MB (23194313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a0e23b7665808bd9a9ae753bbb042d990537c01fb038c1869fb52db31a18c8`  
		Last Modified: Wed, 23 Jan 2019 17:39:59 GMT  
		Size: 4.5 MB (4499644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-6.0.0`

```console
$ docker pull pypy@sha256:18c42ab583879f0e1a9a39c3772891415ccb1c9c225edcf314331211eabe92b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-6.0.0` - linux; amd64

```console
$ docker pull pypy@sha256:f464eee6297463e5d62fbe93d343c89f8a9c7df1018053150b923612841d2ab2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.9 MB (279851517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f784d3bfe6209256773581dca5aa78fe41b41443206ba13df305ddac8a67bba0`
-	Default Command: `["pypy3"]`

```dockerfile
# Fri, 28 Dec 2018 23:23:43 GMT
ADD file:7f32b46e26b56ebbde417db4d539757b8e852c62bab15978db092ce24d2420d1 in / 
# Fri, 28 Dec 2018 23:23:43 GMT
CMD ["bash"]
# Fri, 28 Dec 2018 23:56:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:56:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 28 Dec 2018 23:58:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:31:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:47:16 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Jan 2019 23:47:16 GMT
ENV LANG=C.UTF-8
# Tue, 08 Jan 2019 23:48:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:48:57 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 08 Jan 2019 23:48:57 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 08 Jan 2019 23:49:39 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Tue, 08 Jan 2019 23:49:50 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 08 Jan 2019 23:49:50 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:ff144d3c0ab1033159cf082f681c9f51b09cd701d907e3bad65b1411fa1585a9`  
		Last Modified: Fri, 28 Dec 2018 23:33:45 GMT  
		Size: 54.4 MB (54387117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8988f929403e60a98b37002c9210cf3bf3ecf8782130b011dac8f2b28608ed31`  
		Last Modified: Sat, 29 Dec 2018 00:19:39 GMT  
		Size: 17.5 MB (17539015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155407d8635b1e92ef1550c047a938a8fcf39331261d1eb742ea962d7a1a0630`  
		Last Modified: Sat, 29 Dec 2018 00:19:53 GMT  
		Size: 43.3 MB (43306794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34f5459055e712ef296b171c24cfd7cffbdc0f7cd4c76f7a3fc82ebae23b6e6`  
		Last Modified: Tue, 08 Jan 2019 23:43:59 GMT  
		Size: 131.4 MB (131434783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f170979890f107ba8e58ec44f0c280aac71beda77eb30d65097780fed98aa7ef`  
		Last Modified: Tue, 08 Jan 2019 23:50:14 GMT  
		Size: 3.2 MB (3168228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767c0e86352e9a0ef729588bf8aa5666df83aff7d4b220299aee4d24f2b918d4`  
		Last Modified: Tue, 08 Jan 2019 23:50:41 GMT  
		Size: 25.5 MB (25515701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0ea1bd7b7944d48fe5c24d80b765f2546d198bf3dd920cc297dd1499c8f15f`  
		Last Modified: Tue, 08 Jan 2019 23:50:35 GMT  
		Size: 4.5 MB (4499879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6.0.0` - linux; arm variant v5

```console
$ docker pull pypy@sha256:2989f42013baa3462d6f2f64584766bbf18514cf081bc1820c0f7a83ad08d745
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.0 MB (257971885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:544ca98ac251e9ecd2f8265634eb5385d77ba32e92482a5e2e31732ab59cc820`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:10 GMT
ADD file:d54ba2764c6a60a1d23652305cbda61eafbf6d9f3a808ca58fe9c2400a1d51e9 in / 
# Wed, 23 Jan 2019 09:50:11 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:30:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:30:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 10:32:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:35:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:48:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:48:49 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 10:49:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:49:49 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 10:49:49 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 10:57:23 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Wed, 23 Jan 2019 14:26:32 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 23 Jan 2019 14:26:33 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:50fd141dcc41a9d8165a0900c6d253849085d5fefc20c8802d9ab7990cbc0f88`  
		Last Modified: Wed, 23 Jan 2019 09:59:04 GMT  
		Size: 52.6 MB (52574556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c97e5089c7dbd37156a16aa333e82a8047c39870627ad13f9d513f514eba1f9`  
		Last Modified: Wed, 23 Jan 2019 10:46:53 GMT  
		Size: 17.0 MB (17030345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1e3e333e6420f3b76bbee5414c4d1c57e7b42b8a42899bcb8e54e780b280ec`  
		Last Modified: Wed, 23 Jan 2019 10:47:13 GMT  
		Size: 41.1 MB (41147190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b25ed3de9d90618a35e1452e88796e1d13223bdc809c1eb9c57add0346086a9`  
		Last Modified: Wed, 23 Jan 2019 10:47:53 GMT  
		Size: 116.0 MB (115968878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f452ceb421b0b1eab6f50069e59a434a29aff11e57c1177b4440a032470a1fdb`  
		Last Modified: Wed, 23 Jan 2019 14:29:25 GMT  
		Size: 3.0 MB (3021176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cb6072685e33b8a54c2ebe34066be596ff65f4464d94034946373ae89938e5c`  
		Last Modified: Wed, 23 Jan 2019 14:30:25 GMT  
		Size: 23.7 MB (23728916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53dce7a6fea6c3dcb06f73cf3a094612a0b53c4db49edd297924699f296039fd`  
		Last Modified: Wed, 23 Jan 2019 14:30:18 GMT  
		Size: 4.5 MB (4500824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6.0.0` - linux; 386

```console
$ docker pull pypy@sha256:5c2781081defab44011b92d8720c7370a696d29b919a2403bdc36f0d121c7fbc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 MB (284767982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48639bb45285f6228d5888ad39cfe157d469c2660efbaa570a75c32e242152e3`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 23 Jan 2019 11:42:56 GMT
ADD file:34c4d7be20c87ed251d0f5a99c46920d29f51e7050390664fe342895d416cf26 in / 
# Wed, 23 Jan 2019 11:42:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:38:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:38:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:41:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:46:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:24:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:24:30 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 17:27:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:27:12 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 17:27:12 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 17:34:53 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Wed, 23 Jan 2019 17:35:05 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 23 Jan 2019 17:35:05 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:c9e90e967f2e8ff1c9bcd2f542cedbcf4ef3dd2e4601b2f3c66fdbef5125fe84`  
		Last Modified: Wed, 23 Jan 2019 11:59:12 GMT  
		Size: 54.6 MB (54598497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f41350de1b8c9a9aaef88261e4271f1d2cdbfcd19c25b6ff74b91d18449ccf3`  
		Last Modified: Wed, 23 Jan 2019 13:08:22 GMT  
		Size: 19.8 MB (19846606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfebb7c82792eca5cf28743e4209f51a647eee4e572199538027c9f37e263f0`  
		Last Modified: Wed, 23 Jan 2019 13:08:44 GMT  
		Size: 44.0 MB (43951885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45bd9d6476253bffc4debb9e10f1b43cce50575497c94544c0fb0d35c1370f6`  
		Last Modified: Wed, 23 Jan 2019 13:09:27 GMT  
		Size: 135.4 MB (135404772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43900df224bdee95758fc30311b661ee31f6ad9a33444848635aca53a32e2bc6`  
		Last Modified: Wed, 23 Jan 2019 17:39:25 GMT  
		Size: 3.3 MB (3272265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378118253113e960bc621981f47dac952000bec24d27a99f6a53ddb4b77be31d`  
		Last Modified: Wed, 23 Jan 2019 17:40:05 GMT  
		Size: 23.2 MB (23194313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a0e23b7665808bd9a9ae753bbb042d990537c01fb038c1869fb52db31a18c8`  
		Last Modified: Wed, 23 Jan 2019 17:39:59 GMT  
		Size: 4.5 MB (4499644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-6.0.0-jessie`

```console
$ docker pull pypy@sha256:18c42ab583879f0e1a9a39c3772891415ccb1c9c225edcf314331211eabe92b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-6.0.0-jessie` - linux; amd64

```console
$ docker pull pypy@sha256:f464eee6297463e5d62fbe93d343c89f8a9c7df1018053150b923612841d2ab2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.9 MB (279851517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f784d3bfe6209256773581dca5aa78fe41b41443206ba13df305ddac8a67bba0`
-	Default Command: `["pypy3"]`

```dockerfile
# Fri, 28 Dec 2018 23:23:43 GMT
ADD file:7f32b46e26b56ebbde417db4d539757b8e852c62bab15978db092ce24d2420d1 in / 
# Fri, 28 Dec 2018 23:23:43 GMT
CMD ["bash"]
# Fri, 28 Dec 2018 23:56:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:56:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 28 Dec 2018 23:58:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:31:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:47:16 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Jan 2019 23:47:16 GMT
ENV LANG=C.UTF-8
# Tue, 08 Jan 2019 23:48:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:48:57 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 08 Jan 2019 23:48:57 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 08 Jan 2019 23:49:39 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Tue, 08 Jan 2019 23:49:50 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 08 Jan 2019 23:49:50 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:ff144d3c0ab1033159cf082f681c9f51b09cd701d907e3bad65b1411fa1585a9`  
		Last Modified: Fri, 28 Dec 2018 23:33:45 GMT  
		Size: 54.4 MB (54387117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8988f929403e60a98b37002c9210cf3bf3ecf8782130b011dac8f2b28608ed31`  
		Last Modified: Sat, 29 Dec 2018 00:19:39 GMT  
		Size: 17.5 MB (17539015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155407d8635b1e92ef1550c047a938a8fcf39331261d1eb742ea962d7a1a0630`  
		Last Modified: Sat, 29 Dec 2018 00:19:53 GMT  
		Size: 43.3 MB (43306794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34f5459055e712ef296b171c24cfd7cffbdc0f7cd4c76f7a3fc82ebae23b6e6`  
		Last Modified: Tue, 08 Jan 2019 23:43:59 GMT  
		Size: 131.4 MB (131434783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f170979890f107ba8e58ec44f0c280aac71beda77eb30d65097780fed98aa7ef`  
		Last Modified: Tue, 08 Jan 2019 23:50:14 GMT  
		Size: 3.2 MB (3168228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767c0e86352e9a0ef729588bf8aa5666df83aff7d4b220299aee4d24f2b918d4`  
		Last Modified: Tue, 08 Jan 2019 23:50:41 GMT  
		Size: 25.5 MB (25515701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0ea1bd7b7944d48fe5c24d80b765f2546d198bf3dd920cc297dd1499c8f15f`  
		Last Modified: Tue, 08 Jan 2019 23:50:35 GMT  
		Size: 4.5 MB (4499879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6.0.0-jessie` - linux; arm variant v5

```console
$ docker pull pypy@sha256:2989f42013baa3462d6f2f64584766bbf18514cf081bc1820c0f7a83ad08d745
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.0 MB (257971885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:544ca98ac251e9ecd2f8265634eb5385d77ba32e92482a5e2e31732ab59cc820`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:10 GMT
ADD file:d54ba2764c6a60a1d23652305cbda61eafbf6d9f3a808ca58fe9c2400a1d51e9 in / 
# Wed, 23 Jan 2019 09:50:11 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:30:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:30:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 10:32:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:35:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:48:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:48:49 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 10:49:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:49:49 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 10:49:49 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 10:57:23 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Wed, 23 Jan 2019 14:26:32 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 23 Jan 2019 14:26:33 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:50fd141dcc41a9d8165a0900c6d253849085d5fefc20c8802d9ab7990cbc0f88`  
		Last Modified: Wed, 23 Jan 2019 09:59:04 GMT  
		Size: 52.6 MB (52574556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c97e5089c7dbd37156a16aa333e82a8047c39870627ad13f9d513f514eba1f9`  
		Last Modified: Wed, 23 Jan 2019 10:46:53 GMT  
		Size: 17.0 MB (17030345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1e3e333e6420f3b76bbee5414c4d1c57e7b42b8a42899bcb8e54e780b280ec`  
		Last Modified: Wed, 23 Jan 2019 10:47:13 GMT  
		Size: 41.1 MB (41147190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b25ed3de9d90618a35e1452e88796e1d13223bdc809c1eb9c57add0346086a9`  
		Last Modified: Wed, 23 Jan 2019 10:47:53 GMT  
		Size: 116.0 MB (115968878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f452ceb421b0b1eab6f50069e59a434a29aff11e57c1177b4440a032470a1fdb`  
		Last Modified: Wed, 23 Jan 2019 14:29:25 GMT  
		Size: 3.0 MB (3021176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cb6072685e33b8a54c2ebe34066be596ff65f4464d94034946373ae89938e5c`  
		Last Modified: Wed, 23 Jan 2019 14:30:25 GMT  
		Size: 23.7 MB (23728916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53dce7a6fea6c3dcb06f73cf3a094612a0b53c4db49edd297924699f296039fd`  
		Last Modified: Wed, 23 Jan 2019 14:30:18 GMT  
		Size: 4.5 MB (4500824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6.0.0-jessie` - linux; 386

```console
$ docker pull pypy@sha256:5c2781081defab44011b92d8720c7370a696d29b919a2403bdc36f0d121c7fbc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 MB (284767982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48639bb45285f6228d5888ad39cfe157d469c2660efbaa570a75c32e242152e3`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 23 Jan 2019 11:42:56 GMT
ADD file:34c4d7be20c87ed251d0f5a99c46920d29f51e7050390664fe342895d416cf26 in / 
# Wed, 23 Jan 2019 11:42:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:38:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:38:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:41:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:46:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:24:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:24:30 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 17:27:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:27:12 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 17:27:12 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 17:34:53 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Wed, 23 Jan 2019 17:35:05 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 23 Jan 2019 17:35:05 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:c9e90e967f2e8ff1c9bcd2f542cedbcf4ef3dd2e4601b2f3c66fdbef5125fe84`  
		Last Modified: Wed, 23 Jan 2019 11:59:12 GMT  
		Size: 54.6 MB (54598497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f41350de1b8c9a9aaef88261e4271f1d2cdbfcd19c25b6ff74b91d18449ccf3`  
		Last Modified: Wed, 23 Jan 2019 13:08:22 GMT  
		Size: 19.8 MB (19846606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfebb7c82792eca5cf28743e4209f51a647eee4e572199538027c9f37e263f0`  
		Last Modified: Wed, 23 Jan 2019 13:08:44 GMT  
		Size: 44.0 MB (43951885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45bd9d6476253bffc4debb9e10f1b43cce50575497c94544c0fb0d35c1370f6`  
		Last Modified: Wed, 23 Jan 2019 13:09:27 GMT  
		Size: 135.4 MB (135404772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43900df224bdee95758fc30311b661ee31f6ad9a33444848635aca53a32e2bc6`  
		Last Modified: Wed, 23 Jan 2019 17:39:25 GMT  
		Size: 3.3 MB (3272265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378118253113e960bc621981f47dac952000bec24d27a99f6a53ddb4b77be31d`  
		Last Modified: Wed, 23 Jan 2019 17:40:05 GMT  
		Size: 23.2 MB (23194313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a0e23b7665808bd9a9ae753bbb042d990537c01fb038c1869fb52db31a18c8`  
		Last Modified: Wed, 23 Jan 2019 17:39:59 GMT  
		Size: 4.5 MB (4499644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-6.0.0-slim`

```console
$ docker pull pypy@sha256:2741c876a736bd2f497e9e447941fef59392b531cd162f49f9713e315803130c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-6.0.0-slim` - linux; amd64

```console
$ docker pull pypy@sha256:fe0b4af51d52dbcceae6615b485d3ea00e6b344baca9eb5ffafde3b15d0b510f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.3 MB (63280300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a51612b54fb246de5045b8ebfb97be77dccc3d01b8b7722bf8d451e39963ee4`
-	Default Command: `["pypy3"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:10 GMT
ADD file:74e9771816fa7d109fa79427ea1b8615f036838a9c02d4fe124035b440692cfd in / 
# Fri, 28 Dec 2018 23:24:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 03:59:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 03:59:57 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 04:01:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 04:01:53 GMT
ENV PYPY_VERSION=6.0.0
# Sat, 29 Dec 2018 04:01:54 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 29 Dec 2018 04:08:18 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 04:08:18 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:436214a91f468dfbb145ef1658128dc3f3c35f5af545a90c9a60a6c42968ac87`  
		Last Modified: Fri, 28 Dec 2018 23:33:59 GMT  
		Size: 30.2 MB (30153953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca598cb320fb755ae0443d3781a99d509098dab1b1831ba5961e23291e5f750`  
		Last Modified: Sat, 29 Dec 2018 04:09:16 GMT  
		Size: 2.8 MB (2811478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9ae72cb2b71730129d7c3a16de437e690c683f8ebe217b7f9aa06b7c99c98d`  
		Last Modified: Sat, 29 Dec 2018 04:09:57 GMT  
		Size: 30.3 MB (30314869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6.0.0-slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:9a03f5c5186e2218a8857d43b3d8aee00226cefcfa2139d96a8ea1135e972603
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.5 MB (59547991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e7a046fe0d162cd8c49e907614cd4807af506a9aace1fdd1372dd1bcc612d03`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:34 GMT
ADD file:d56fba3965a9434864a05fce7731cbec09ec6c3ea34b8a3e72a65a597ee52931 in / 
# Wed, 23 Jan 2019 09:50:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:51:19 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:51:20 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 10:52:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:52:25 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 10:52:25 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 14:28:48 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 14:28:50 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:e3950d1cc969b5b5674e279562ac17636104e44548e2dea0efcd3c7cc5867616`  
		Last Modified: Wed, 23 Jan 2019 09:59:24 GMT  
		Size: 28.5 MB (28459288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73f1086e4b1a4a6f6675743b3b0931471247d8aed4e05fcb5ee62cca3a9b5ce`  
		Last Modified: Wed, 23 Jan 2019 14:29:51 GMT  
		Size: 2.6 MB (2563377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b17a27a3e4a2d037477a83f491d58ea4f93dc667685fbdcc80c2d227f6da488`  
		Last Modified: Wed, 23 Jan 2019 14:30:54 GMT  
		Size: 28.5 MB (28525326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6.0.0-slim` - linux; 386

```console
$ docker pull pypy@sha256:d975a019ee6d6aa44f59d55ba4fcf5b8340cc110853ada6447da0350a5e60a61
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63201966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74779069e3039862700cd492ac1503e524732f5eda22545a2b4e584465277581`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 23 Jan 2019 11:43:42 GMT
ADD file:7181677d169fdf847eb4ca0b8071ad7345e882aff132aaabc7ea32c40cd21dab in / 
# Wed, 23 Jan 2019 11:43:42 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:27:44 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:27:44 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 17:30:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:30:40 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 17:30:40 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 17:39:03 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 17:39:03 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:6e31980640f69275069979bf989f5da4fbbffb988b3d52b08d39b451740752f4`  
		Last Modified: Wed, 23 Jan 2019 11:59:32 GMT  
		Size: 30.3 MB (30293609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4beab62285670d4f11fe161612872e8b2cb371a54309f8859c6011d71c5cec5f`  
		Last Modified: Wed, 23 Jan 2019 17:39:43 GMT  
		Size: 4.9 MB (4918269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7c4fc32096b51d19f2d53df33abacab66352a20679a153ab30903a30a3d19a`  
		Last Modified: Wed, 23 Jan 2019 17:40:26 GMT  
		Size: 28.0 MB (27990088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-6.0.0-slim-jessie`

```console
$ docker pull pypy@sha256:2741c876a736bd2f497e9e447941fef59392b531cd162f49f9713e315803130c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-6.0.0-slim-jessie` - linux; amd64

```console
$ docker pull pypy@sha256:fe0b4af51d52dbcceae6615b485d3ea00e6b344baca9eb5ffafde3b15d0b510f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.3 MB (63280300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a51612b54fb246de5045b8ebfb97be77dccc3d01b8b7722bf8d451e39963ee4`
-	Default Command: `["pypy3"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:10 GMT
ADD file:74e9771816fa7d109fa79427ea1b8615f036838a9c02d4fe124035b440692cfd in / 
# Fri, 28 Dec 2018 23:24:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 03:59:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 03:59:57 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 04:01:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 04:01:53 GMT
ENV PYPY_VERSION=6.0.0
# Sat, 29 Dec 2018 04:01:54 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 29 Dec 2018 04:08:18 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 04:08:18 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:436214a91f468dfbb145ef1658128dc3f3c35f5af545a90c9a60a6c42968ac87`  
		Last Modified: Fri, 28 Dec 2018 23:33:59 GMT  
		Size: 30.2 MB (30153953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca598cb320fb755ae0443d3781a99d509098dab1b1831ba5961e23291e5f750`  
		Last Modified: Sat, 29 Dec 2018 04:09:16 GMT  
		Size: 2.8 MB (2811478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9ae72cb2b71730129d7c3a16de437e690c683f8ebe217b7f9aa06b7c99c98d`  
		Last Modified: Sat, 29 Dec 2018 04:09:57 GMT  
		Size: 30.3 MB (30314869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6.0.0-slim-jessie` - linux; arm variant v5

```console
$ docker pull pypy@sha256:9a03f5c5186e2218a8857d43b3d8aee00226cefcfa2139d96a8ea1135e972603
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.5 MB (59547991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e7a046fe0d162cd8c49e907614cd4807af506a9aace1fdd1372dd1bcc612d03`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:34 GMT
ADD file:d56fba3965a9434864a05fce7731cbec09ec6c3ea34b8a3e72a65a597ee52931 in / 
# Wed, 23 Jan 2019 09:50:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:51:19 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:51:20 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 10:52:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:52:25 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 10:52:25 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 14:28:48 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 14:28:50 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:e3950d1cc969b5b5674e279562ac17636104e44548e2dea0efcd3c7cc5867616`  
		Last Modified: Wed, 23 Jan 2019 09:59:24 GMT  
		Size: 28.5 MB (28459288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73f1086e4b1a4a6f6675743b3b0931471247d8aed4e05fcb5ee62cca3a9b5ce`  
		Last Modified: Wed, 23 Jan 2019 14:29:51 GMT  
		Size: 2.6 MB (2563377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b17a27a3e4a2d037477a83f491d58ea4f93dc667685fbdcc80c2d227f6da488`  
		Last Modified: Wed, 23 Jan 2019 14:30:54 GMT  
		Size: 28.5 MB (28525326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6.0.0-slim-jessie` - linux; 386

```console
$ docker pull pypy@sha256:d975a019ee6d6aa44f59d55ba4fcf5b8340cc110853ada6447da0350a5e60a61
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63201966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74779069e3039862700cd492ac1503e524732f5eda22545a2b4e584465277581`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 23 Jan 2019 11:43:42 GMT
ADD file:7181677d169fdf847eb4ca0b8071ad7345e882aff132aaabc7ea32c40cd21dab in / 
# Wed, 23 Jan 2019 11:43:42 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:27:44 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:27:44 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 17:30:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:30:40 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 17:30:40 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 17:39:03 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 17:39:03 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:6e31980640f69275069979bf989f5da4fbbffb988b3d52b08d39b451740752f4`  
		Last Modified: Wed, 23 Jan 2019 11:59:32 GMT  
		Size: 30.3 MB (30293609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4beab62285670d4f11fe161612872e8b2cb371a54309f8859c6011d71c5cec5f`  
		Last Modified: Wed, 23 Jan 2019 17:39:43 GMT  
		Size: 4.9 MB (4918269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7c4fc32096b51d19f2d53df33abacab66352a20679a153ab30903a30a3d19a`  
		Last Modified: Wed, 23 Jan 2019 17:40:26 GMT  
		Size: 28.0 MB (27990088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-6.0-jessie`

```console
$ docker pull pypy@sha256:18c42ab583879f0e1a9a39c3772891415ccb1c9c225edcf314331211eabe92b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-6.0-jessie` - linux; amd64

```console
$ docker pull pypy@sha256:f464eee6297463e5d62fbe93d343c89f8a9c7df1018053150b923612841d2ab2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.9 MB (279851517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f784d3bfe6209256773581dca5aa78fe41b41443206ba13df305ddac8a67bba0`
-	Default Command: `["pypy3"]`

```dockerfile
# Fri, 28 Dec 2018 23:23:43 GMT
ADD file:7f32b46e26b56ebbde417db4d539757b8e852c62bab15978db092ce24d2420d1 in / 
# Fri, 28 Dec 2018 23:23:43 GMT
CMD ["bash"]
# Fri, 28 Dec 2018 23:56:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:56:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 28 Dec 2018 23:58:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:31:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:47:16 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Jan 2019 23:47:16 GMT
ENV LANG=C.UTF-8
# Tue, 08 Jan 2019 23:48:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:48:57 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 08 Jan 2019 23:48:57 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 08 Jan 2019 23:49:39 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Tue, 08 Jan 2019 23:49:50 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 08 Jan 2019 23:49:50 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:ff144d3c0ab1033159cf082f681c9f51b09cd701d907e3bad65b1411fa1585a9`  
		Last Modified: Fri, 28 Dec 2018 23:33:45 GMT  
		Size: 54.4 MB (54387117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8988f929403e60a98b37002c9210cf3bf3ecf8782130b011dac8f2b28608ed31`  
		Last Modified: Sat, 29 Dec 2018 00:19:39 GMT  
		Size: 17.5 MB (17539015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155407d8635b1e92ef1550c047a938a8fcf39331261d1eb742ea962d7a1a0630`  
		Last Modified: Sat, 29 Dec 2018 00:19:53 GMT  
		Size: 43.3 MB (43306794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34f5459055e712ef296b171c24cfd7cffbdc0f7cd4c76f7a3fc82ebae23b6e6`  
		Last Modified: Tue, 08 Jan 2019 23:43:59 GMT  
		Size: 131.4 MB (131434783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f170979890f107ba8e58ec44f0c280aac71beda77eb30d65097780fed98aa7ef`  
		Last Modified: Tue, 08 Jan 2019 23:50:14 GMT  
		Size: 3.2 MB (3168228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767c0e86352e9a0ef729588bf8aa5666df83aff7d4b220299aee4d24f2b918d4`  
		Last Modified: Tue, 08 Jan 2019 23:50:41 GMT  
		Size: 25.5 MB (25515701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0ea1bd7b7944d48fe5c24d80b765f2546d198bf3dd920cc297dd1499c8f15f`  
		Last Modified: Tue, 08 Jan 2019 23:50:35 GMT  
		Size: 4.5 MB (4499879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6.0-jessie` - linux; arm variant v5

```console
$ docker pull pypy@sha256:2989f42013baa3462d6f2f64584766bbf18514cf081bc1820c0f7a83ad08d745
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.0 MB (257971885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:544ca98ac251e9ecd2f8265634eb5385d77ba32e92482a5e2e31732ab59cc820`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:10 GMT
ADD file:d54ba2764c6a60a1d23652305cbda61eafbf6d9f3a808ca58fe9c2400a1d51e9 in / 
# Wed, 23 Jan 2019 09:50:11 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:30:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:30:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 10:32:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:35:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:48:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:48:49 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 10:49:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:49:49 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 10:49:49 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 10:57:23 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Wed, 23 Jan 2019 14:26:32 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 23 Jan 2019 14:26:33 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:50fd141dcc41a9d8165a0900c6d253849085d5fefc20c8802d9ab7990cbc0f88`  
		Last Modified: Wed, 23 Jan 2019 09:59:04 GMT  
		Size: 52.6 MB (52574556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c97e5089c7dbd37156a16aa333e82a8047c39870627ad13f9d513f514eba1f9`  
		Last Modified: Wed, 23 Jan 2019 10:46:53 GMT  
		Size: 17.0 MB (17030345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1e3e333e6420f3b76bbee5414c4d1c57e7b42b8a42899bcb8e54e780b280ec`  
		Last Modified: Wed, 23 Jan 2019 10:47:13 GMT  
		Size: 41.1 MB (41147190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b25ed3de9d90618a35e1452e88796e1d13223bdc809c1eb9c57add0346086a9`  
		Last Modified: Wed, 23 Jan 2019 10:47:53 GMT  
		Size: 116.0 MB (115968878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f452ceb421b0b1eab6f50069e59a434a29aff11e57c1177b4440a032470a1fdb`  
		Last Modified: Wed, 23 Jan 2019 14:29:25 GMT  
		Size: 3.0 MB (3021176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cb6072685e33b8a54c2ebe34066be596ff65f4464d94034946373ae89938e5c`  
		Last Modified: Wed, 23 Jan 2019 14:30:25 GMT  
		Size: 23.7 MB (23728916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53dce7a6fea6c3dcb06f73cf3a094612a0b53c4db49edd297924699f296039fd`  
		Last Modified: Wed, 23 Jan 2019 14:30:18 GMT  
		Size: 4.5 MB (4500824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6.0-jessie` - linux; 386

```console
$ docker pull pypy@sha256:5c2781081defab44011b92d8720c7370a696d29b919a2403bdc36f0d121c7fbc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 MB (284767982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48639bb45285f6228d5888ad39cfe157d469c2660efbaa570a75c32e242152e3`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 23 Jan 2019 11:42:56 GMT
ADD file:34c4d7be20c87ed251d0f5a99c46920d29f51e7050390664fe342895d416cf26 in / 
# Wed, 23 Jan 2019 11:42:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:38:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:38:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:41:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:46:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:24:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:24:30 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 17:27:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:27:12 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 17:27:12 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 17:34:53 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Wed, 23 Jan 2019 17:35:05 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 23 Jan 2019 17:35:05 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:c9e90e967f2e8ff1c9bcd2f542cedbcf4ef3dd2e4601b2f3c66fdbef5125fe84`  
		Last Modified: Wed, 23 Jan 2019 11:59:12 GMT  
		Size: 54.6 MB (54598497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f41350de1b8c9a9aaef88261e4271f1d2cdbfcd19c25b6ff74b91d18449ccf3`  
		Last Modified: Wed, 23 Jan 2019 13:08:22 GMT  
		Size: 19.8 MB (19846606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfebb7c82792eca5cf28743e4209f51a647eee4e572199538027c9f37e263f0`  
		Last Modified: Wed, 23 Jan 2019 13:08:44 GMT  
		Size: 44.0 MB (43951885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45bd9d6476253bffc4debb9e10f1b43cce50575497c94544c0fb0d35c1370f6`  
		Last Modified: Wed, 23 Jan 2019 13:09:27 GMT  
		Size: 135.4 MB (135404772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43900df224bdee95758fc30311b661ee31f6ad9a33444848635aca53a32e2bc6`  
		Last Modified: Wed, 23 Jan 2019 17:39:25 GMT  
		Size: 3.3 MB (3272265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378118253113e960bc621981f47dac952000bec24d27a99f6a53ddb4b77be31d`  
		Last Modified: Wed, 23 Jan 2019 17:40:05 GMT  
		Size: 23.2 MB (23194313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a0e23b7665808bd9a9ae753bbb042d990537c01fb038c1869fb52db31a18c8`  
		Last Modified: Wed, 23 Jan 2019 17:39:59 GMT  
		Size: 4.5 MB (4499644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-6.0-slim`

```console
$ docker pull pypy@sha256:2741c876a736bd2f497e9e447941fef59392b531cd162f49f9713e315803130c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-6.0-slim` - linux; amd64

```console
$ docker pull pypy@sha256:fe0b4af51d52dbcceae6615b485d3ea00e6b344baca9eb5ffafde3b15d0b510f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.3 MB (63280300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a51612b54fb246de5045b8ebfb97be77dccc3d01b8b7722bf8d451e39963ee4`
-	Default Command: `["pypy3"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:10 GMT
ADD file:74e9771816fa7d109fa79427ea1b8615f036838a9c02d4fe124035b440692cfd in / 
# Fri, 28 Dec 2018 23:24:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 03:59:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 03:59:57 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 04:01:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 04:01:53 GMT
ENV PYPY_VERSION=6.0.0
# Sat, 29 Dec 2018 04:01:54 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 29 Dec 2018 04:08:18 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 04:08:18 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:436214a91f468dfbb145ef1658128dc3f3c35f5af545a90c9a60a6c42968ac87`  
		Last Modified: Fri, 28 Dec 2018 23:33:59 GMT  
		Size: 30.2 MB (30153953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca598cb320fb755ae0443d3781a99d509098dab1b1831ba5961e23291e5f750`  
		Last Modified: Sat, 29 Dec 2018 04:09:16 GMT  
		Size: 2.8 MB (2811478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9ae72cb2b71730129d7c3a16de437e690c683f8ebe217b7f9aa06b7c99c98d`  
		Last Modified: Sat, 29 Dec 2018 04:09:57 GMT  
		Size: 30.3 MB (30314869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6.0-slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:9a03f5c5186e2218a8857d43b3d8aee00226cefcfa2139d96a8ea1135e972603
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.5 MB (59547991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e7a046fe0d162cd8c49e907614cd4807af506a9aace1fdd1372dd1bcc612d03`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:34 GMT
ADD file:d56fba3965a9434864a05fce7731cbec09ec6c3ea34b8a3e72a65a597ee52931 in / 
# Wed, 23 Jan 2019 09:50:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:51:19 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:51:20 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 10:52:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:52:25 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 10:52:25 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 14:28:48 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 14:28:50 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:e3950d1cc969b5b5674e279562ac17636104e44548e2dea0efcd3c7cc5867616`  
		Last Modified: Wed, 23 Jan 2019 09:59:24 GMT  
		Size: 28.5 MB (28459288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73f1086e4b1a4a6f6675743b3b0931471247d8aed4e05fcb5ee62cca3a9b5ce`  
		Last Modified: Wed, 23 Jan 2019 14:29:51 GMT  
		Size: 2.6 MB (2563377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b17a27a3e4a2d037477a83f491d58ea4f93dc667685fbdcc80c2d227f6da488`  
		Last Modified: Wed, 23 Jan 2019 14:30:54 GMT  
		Size: 28.5 MB (28525326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6.0-slim` - linux; 386

```console
$ docker pull pypy@sha256:d975a019ee6d6aa44f59d55ba4fcf5b8340cc110853ada6447da0350a5e60a61
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63201966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74779069e3039862700cd492ac1503e524732f5eda22545a2b4e584465277581`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 23 Jan 2019 11:43:42 GMT
ADD file:7181677d169fdf847eb4ca0b8071ad7345e882aff132aaabc7ea32c40cd21dab in / 
# Wed, 23 Jan 2019 11:43:42 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:27:44 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:27:44 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 17:30:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:30:40 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 17:30:40 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 17:39:03 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 17:39:03 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:6e31980640f69275069979bf989f5da4fbbffb988b3d52b08d39b451740752f4`  
		Last Modified: Wed, 23 Jan 2019 11:59:32 GMT  
		Size: 30.3 MB (30293609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4beab62285670d4f11fe161612872e8b2cb371a54309f8859c6011d71c5cec5f`  
		Last Modified: Wed, 23 Jan 2019 17:39:43 GMT  
		Size: 4.9 MB (4918269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7c4fc32096b51d19f2d53df33abacab66352a20679a153ab30903a30a3d19a`  
		Last Modified: Wed, 23 Jan 2019 17:40:26 GMT  
		Size: 28.0 MB (27990088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-6.0-slim-jessie`

```console
$ docker pull pypy@sha256:2741c876a736bd2f497e9e447941fef59392b531cd162f49f9713e315803130c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-6.0-slim-jessie` - linux; amd64

```console
$ docker pull pypy@sha256:fe0b4af51d52dbcceae6615b485d3ea00e6b344baca9eb5ffafde3b15d0b510f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.3 MB (63280300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a51612b54fb246de5045b8ebfb97be77dccc3d01b8b7722bf8d451e39963ee4`
-	Default Command: `["pypy3"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:10 GMT
ADD file:74e9771816fa7d109fa79427ea1b8615f036838a9c02d4fe124035b440692cfd in / 
# Fri, 28 Dec 2018 23:24:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 03:59:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 03:59:57 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 04:01:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 04:01:53 GMT
ENV PYPY_VERSION=6.0.0
# Sat, 29 Dec 2018 04:01:54 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 29 Dec 2018 04:08:18 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 04:08:18 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:436214a91f468dfbb145ef1658128dc3f3c35f5af545a90c9a60a6c42968ac87`  
		Last Modified: Fri, 28 Dec 2018 23:33:59 GMT  
		Size: 30.2 MB (30153953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca598cb320fb755ae0443d3781a99d509098dab1b1831ba5961e23291e5f750`  
		Last Modified: Sat, 29 Dec 2018 04:09:16 GMT  
		Size: 2.8 MB (2811478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9ae72cb2b71730129d7c3a16de437e690c683f8ebe217b7f9aa06b7c99c98d`  
		Last Modified: Sat, 29 Dec 2018 04:09:57 GMT  
		Size: 30.3 MB (30314869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6.0-slim-jessie` - linux; arm variant v5

```console
$ docker pull pypy@sha256:9a03f5c5186e2218a8857d43b3d8aee00226cefcfa2139d96a8ea1135e972603
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.5 MB (59547991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e7a046fe0d162cd8c49e907614cd4807af506a9aace1fdd1372dd1bcc612d03`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:34 GMT
ADD file:d56fba3965a9434864a05fce7731cbec09ec6c3ea34b8a3e72a65a597ee52931 in / 
# Wed, 23 Jan 2019 09:50:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:51:19 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:51:20 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 10:52:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:52:25 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 10:52:25 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 14:28:48 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 14:28:50 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:e3950d1cc969b5b5674e279562ac17636104e44548e2dea0efcd3c7cc5867616`  
		Last Modified: Wed, 23 Jan 2019 09:59:24 GMT  
		Size: 28.5 MB (28459288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73f1086e4b1a4a6f6675743b3b0931471247d8aed4e05fcb5ee62cca3a9b5ce`  
		Last Modified: Wed, 23 Jan 2019 14:29:51 GMT  
		Size: 2.6 MB (2563377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b17a27a3e4a2d037477a83f491d58ea4f93dc667685fbdcc80c2d227f6da488`  
		Last Modified: Wed, 23 Jan 2019 14:30:54 GMT  
		Size: 28.5 MB (28525326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6.0-slim-jessie` - linux; 386

```console
$ docker pull pypy@sha256:d975a019ee6d6aa44f59d55ba4fcf5b8340cc110853ada6447da0350a5e60a61
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63201966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74779069e3039862700cd492ac1503e524732f5eda22545a2b4e584465277581`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 23 Jan 2019 11:43:42 GMT
ADD file:7181677d169fdf847eb4ca0b8071ad7345e882aff132aaabc7ea32c40cd21dab in / 
# Wed, 23 Jan 2019 11:43:42 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:27:44 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:27:44 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 17:30:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:30:40 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 17:30:40 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 17:39:03 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 17:39:03 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:6e31980640f69275069979bf989f5da4fbbffb988b3d52b08d39b451740752f4`  
		Last Modified: Wed, 23 Jan 2019 11:59:32 GMT  
		Size: 30.3 MB (30293609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4beab62285670d4f11fe161612872e8b2cb371a54309f8859c6011d71c5cec5f`  
		Last Modified: Wed, 23 Jan 2019 17:39:43 GMT  
		Size: 4.9 MB (4918269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7c4fc32096b51d19f2d53df33abacab66352a20679a153ab30903a30a3d19a`  
		Last Modified: Wed, 23 Jan 2019 17:40:26 GMT  
		Size: 28.0 MB (27990088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-6-jessie`

```console
$ docker pull pypy@sha256:18c42ab583879f0e1a9a39c3772891415ccb1c9c225edcf314331211eabe92b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-6-jessie` - linux; amd64

```console
$ docker pull pypy@sha256:f464eee6297463e5d62fbe93d343c89f8a9c7df1018053150b923612841d2ab2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.9 MB (279851517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f784d3bfe6209256773581dca5aa78fe41b41443206ba13df305ddac8a67bba0`
-	Default Command: `["pypy3"]`

```dockerfile
# Fri, 28 Dec 2018 23:23:43 GMT
ADD file:7f32b46e26b56ebbde417db4d539757b8e852c62bab15978db092ce24d2420d1 in / 
# Fri, 28 Dec 2018 23:23:43 GMT
CMD ["bash"]
# Fri, 28 Dec 2018 23:56:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:56:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 28 Dec 2018 23:58:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:31:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:47:16 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Jan 2019 23:47:16 GMT
ENV LANG=C.UTF-8
# Tue, 08 Jan 2019 23:48:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:48:57 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 08 Jan 2019 23:48:57 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 08 Jan 2019 23:49:39 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Tue, 08 Jan 2019 23:49:50 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 08 Jan 2019 23:49:50 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:ff144d3c0ab1033159cf082f681c9f51b09cd701d907e3bad65b1411fa1585a9`  
		Last Modified: Fri, 28 Dec 2018 23:33:45 GMT  
		Size: 54.4 MB (54387117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8988f929403e60a98b37002c9210cf3bf3ecf8782130b011dac8f2b28608ed31`  
		Last Modified: Sat, 29 Dec 2018 00:19:39 GMT  
		Size: 17.5 MB (17539015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155407d8635b1e92ef1550c047a938a8fcf39331261d1eb742ea962d7a1a0630`  
		Last Modified: Sat, 29 Dec 2018 00:19:53 GMT  
		Size: 43.3 MB (43306794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34f5459055e712ef296b171c24cfd7cffbdc0f7cd4c76f7a3fc82ebae23b6e6`  
		Last Modified: Tue, 08 Jan 2019 23:43:59 GMT  
		Size: 131.4 MB (131434783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f170979890f107ba8e58ec44f0c280aac71beda77eb30d65097780fed98aa7ef`  
		Last Modified: Tue, 08 Jan 2019 23:50:14 GMT  
		Size: 3.2 MB (3168228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767c0e86352e9a0ef729588bf8aa5666df83aff7d4b220299aee4d24f2b918d4`  
		Last Modified: Tue, 08 Jan 2019 23:50:41 GMT  
		Size: 25.5 MB (25515701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0ea1bd7b7944d48fe5c24d80b765f2546d198bf3dd920cc297dd1499c8f15f`  
		Last Modified: Tue, 08 Jan 2019 23:50:35 GMT  
		Size: 4.5 MB (4499879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6-jessie` - linux; arm variant v5

```console
$ docker pull pypy@sha256:2989f42013baa3462d6f2f64584766bbf18514cf081bc1820c0f7a83ad08d745
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.0 MB (257971885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:544ca98ac251e9ecd2f8265634eb5385d77ba32e92482a5e2e31732ab59cc820`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:10 GMT
ADD file:d54ba2764c6a60a1d23652305cbda61eafbf6d9f3a808ca58fe9c2400a1d51e9 in / 
# Wed, 23 Jan 2019 09:50:11 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:30:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:30:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 10:32:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:35:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:48:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:48:49 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 10:49:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:49:49 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 10:49:49 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 10:57:23 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Wed, 23 Jan 2019 14:26:32 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 23 Jan 2019 14:26:33 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:50fd141dcc41a9d8165a0900c6d253849085d5fefc20c8802d9ab7990cbc0f88`  
		Last Modified: Wed, 23 Jan 2019 09:59:04 GMT  
		Size: 52.6 MB (52574556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c97e5089c7dbd37156a16aa333e82a8047c39870627ad13f9d513f514eba1f9`  
		Last Modified: Wed, 23 Jan 2019 10:46:53 GMT  
		Size: 17.0 MB (17030345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1e3e333e6420f3b76bbee5414c4d1c57e7b42b8a42899bcb8e54e780b280ec`  
		Last Modified: Wed, 23 Jan 2019 10:47:13 GMT  
		Size: 41.1 MB (41147190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b25ed3de9d90618a35e1452e88796e1d13223bdc809c1eb9c57add0346086a9`  
		Last Modified: Wed, 23 Jan 2019 10:47:53 GMT  
		Size: 116.0 MB (115968878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f452ceb421b0b1eab6f50069e59a434a29aff11e57c1177b4440a032470a1fdb`  
		Last Modified: Wed, 23 Jan 2019 14:29:25 GMT  
		Size: 3.0 MB (3021176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cb6072685e33b8a54c2ebe34066be596ff65f4464d94034946373ae89938e5c`  
		Last Modified: Wed, 23 Jan 2019 14:30:25 GMT  
		Size: 23.7 MB (23728916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53dce7a6fea6c3dcb06f73cf3a094612a0b53c4db49edd297924699f296039fd`  
		Last Modified: Wed, 23 Jan 2019 14:30:18 GMT  
		Size: 4.5 MB (4500824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6-jessie` - linux; 386

```console
$ docker pull pypy@sha256:5c2781081defab44011b92d8720c7370a696d29b919a2403bdc36f0d121c7fbc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 MB (284767982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48639bb45285f6228d5888ad39cfe157d469c2660efbaa570a75c32e242152e3`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 23 Jan 2019 11:42:56 GMT
ADD file:34c4d7be20c87ed251d0f5a99c46920d29f51e7050390664fe342895d416cf26 in / 
# Wed, 23 Jan 2019 11:42:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:38:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:38:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:41:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:46:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:24:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:24:30 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 17:27:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:27:12 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 17:27:12 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 17:34:53 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Wed, 23 Jan 2019 17:35:05 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 23 Jan 2019 17:35:05 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:c9e90e967f2e8ff1c9bcd2f542cedbcf4ef3dd2e4601b2f3c66fdbef5125fe84`  
		Last Modified: Wed, 23 Jan 2019 11:59:12 GMT  
		Size: 54.6 MB (54598497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f41350de1b8c9a9aaef88261e4271f1d2cdbfcd19c25b6ff74b91d18449ccf3`  
		Last Modified: Wed, 23 Jan 2019 13:08:22 GMT  
		Size: 19.8 MB (19846606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfebb7c82792eca5cf28743e4209f51a647eee4e572199538027c9f37e263f0`  
		Last Modified: Wed, 23 Jan 2019 13:08:44 GMT  
		Size: 44.0 MB (43951885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45bd9d6476253bffc4debb9e10f1b43cce50575497c94544c0fb0d35c1370f6`  
		Last Modified: Wed, 23 Jan 2019 13:09:27 GMT  
		Size: 135.4 MB (135404772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43900df224bdee95758fc30311b661ee31f6ad9a33444848635aca53a32e2bc6`  
		Last Modified: Wed, 23 Jan 2019 17:39:25 GMT  
		Size: 3.3 MB (3272265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378118253113e960bc621981f47dac952000bec24d27a99f6a53ddb4b77be31d`  
		Last Modified: Wed, 23 Jan 2019 17:40:05 GMT  
		Size: 23.2 MB (23194313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a0e23b7665808bd9a9ae753bbb042d990537c01fb038c1869fb52db31a18c8`  
		Last Modified: Wed, 23 Jan 2019 17:39:59 GMT  
		Size: 4.5 MB (4499644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-6-slim`

```console
$ docker pull pypy@sha256:2741c876a736bd2f497e9e447941fef59392b531cd162f49f9713e315803130c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-6-slim` - linux; amd64

```console
$ docker pull pypy@sha256:fe0b4af51d52dbcceae6615b485d3ea00e6b344baca9eb5ffafde3b15d0b510f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.3 MB (63280300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a51612b54fb246de5045b8ebfb97be77dccc3d01b8b7722bf8d451e39963ee4`
-	Default Command: `["pypy3"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:10 GMT
ADD file:74e9771816fa7d109fa79427ea1b8615f036838a9c02d4fe124035b440692cfd in / 
# Fri, 28 Dec 2018 23:24:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 03:59:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 03:59:57 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 04:01:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 04:01:53 GMT
ENV PYPY_VERSION=6.0.0
# Sat, 29 Dec 2018 04:01:54 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 29 Dec 2018 04:08:18 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 04:08:18 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:436214a91f468dfbb145ef1658128dc3f3c35f5af545a90c9a60a6c42968ac87`  
		Last Modified: Fri, 28 Dec 2018 23:33:59 GMT  
		Size: 30.2 MB (30153953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca598cb320fb755ae0443d3781a99d509098dab1b1831ba5961e23291e5f750`  
		Last Modified: Sat, 29 Dec 2018 04:09:16 GMT  
		Size: 2.8 MB (2811478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9ae72cb2b71730129d7c3a16de437e690c683f8ebe217b7f9aa06b7c99c98d`  
		Last Modified: Sat, 29 Dec 2018 04:09:57 GMT  
		Size: 30.3 MB (30314869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6-slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:9a03f5c5186e2218a8857d43b3d8aee00226cefcfa2139d96a8ea1135e972603
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.5 MB (59547991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e7a046fe0d162cd8c49e907614cd4807af506a9aace1fdd1372dd1bcc612d03`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:34 GMT
ADD file:d56fba3965a9434864a05fce7731cbec09ec6c3ea34b8a3e72a65a597ee52931 in / 
# Wed, 23 Jan 2019 09:50:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:51:19 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:51:20 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 10:52:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:52:25 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 10:52:25 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 14:28:48 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 14:28:50 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:e3950d1cc969b5b5674e279562ac17636104e44548e2dea0efcd3c7cc5867616`  
		Last Modified: Wed, 23 Jan 2019 09:59:24 GMT  
		Size: 28.5 MB (28459288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73f1086e4b1a4a6f6675743b3b0931471247d8aed4e05fcb5ee62cca3a9b5ce`  
		Last Modified: Wed, 23 Jan 2019 14:29:51 GMT  
		Size: 2.6 MB (2563377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b17a27a3e4a2d037477a83f491d58ea4f93dc667685fbdcc80c2d227f6da488`  
		Last Modified: Wed, 23 Jan 2019 14:30:54 GMT  
		Size: 28.5 MB (28525326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6-slim` - linux; 386

```console
$ docker pull pypy@sha256:d975a019ee6d6aa44f59d55ba4fcf5b8340cc110853ada6447da0350a5e60a61
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63201966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74779069e3039862700cd492ac1503e524732f5eda22545a2b4e584465277581`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 23 Jan 2019 11:43:42 GMT
ADD file:7181677d169fdf847eb4ca0b8071ad7345e882aff132aaabc7ea32c40cd21dab in / 
# Wed, 23 Jan 2019 11:43:42 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:27:44 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:27:44 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 17:30:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:30:40 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 17:30:40 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 17:39:03 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 17:39:03 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:6e31980640f69275069979bf989f5da4fbbffb988b3d52b08d39b451740752f4`  
		Last Modified: Wed, 23 Jan 2019 11:59:32 GMT  
		Size: 30.3 MB (30293609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4beab62285670d4f11fe161612872e8b2cb371a54309f8859c6011d71c5cec5f`  
		Last Modified: Wed, 23 Jan 2019 17:39:43 GMT  
		Size: 4.9 MB (4918269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7c4fc32096b51d19f2d53df33abacab66352a20679a153ab30903a30a3d19a`  
		Last Modified: Wed, 23 Jan 2019 17:40:26 GMT  
		Size: 28.0 MB (27990088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-6-slim-jessie`

```console
$ docker pull pypy@sha256:2741c876a736bd2f497e9e447941fef59392b531cd162f49f9713e315803130c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-6-slim-jessie` - linux; amd64

```console
$ docker pull pypy@sha256:fe0b4af51d52dbcceae6615b485d3ea00e6b344baca9eb5ffafde3b15d0b510f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.3 MB (63280300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a51612b54fb246de5045b8ebfb97be77dccc3d01b8b7722bf8d451e39963ee4`
-	Default Command: `["pypy3"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:10 GMT
ADD file:74e9771816fa7d109fa79427ea1b8615f036838a9c02d4fe124035b440692cfd in / 
# Fri, 28 Dec 2018 23:24:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 03:59:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 03:59:57 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 04:01:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 04:01:53 GMT
ENV PYPY_VERSION=6.0.0
# Sat, 29 Dec 2018 04:01:54 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 29 Dec 2018 04:08:18 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 04:08:18 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:436214a91f468dfbb145ef1658128dc3f3c35f5af545a90c9a60a6c42968ac87`  
		Last Modified: Fri, 28 Dec 2018 23:33:59 GMT  
		Size: 30.2 MB (30153953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca598cb320fb755ae0443d3781a99d509098dab1b1831ba5961e23291e5f750`  
		Last Modified: Sat, 29 Dec 2018 04:09:16 GMT  
		Size: 2.8 MB (2811478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9ae72cb2b71730129d7c3a16de437e690c683f8ebe217b7f9aa06b7c99c98d`  
		Last Modified: Sat, 29 Dec 2018 04:09:57 GMT  
		Size: 30.3 MB (30314869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6-slim-jessie` - linux; arm variant v5

```console
$ docker pull pypy@sha256:9a03f5c5186e2218a8857d43b3d8aee00226cefcfa2139d96a8ea1135e972603
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.5 MB (59547991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e7a046fe0d162cd8c49e907614cd4807af506a9aace1fdd1372dd1bcc612d03`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:34 GMT
ADD file:d56fba3965a9434864a05fce7731cbec09ec6c3ea34b8a3e72a65a597ee52931 in / 
# Wed, 23 Jan 2019 09:50:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:51:19 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:51:20 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 10:52:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:52:25 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 10:52:25 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 14:28:48 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 14:28:50 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:e3950d1cc969b5b5674e279562ac17636104e44548e2dea0efcd3c7cc5867616`  
		Last Modified: Wed, 23 Jan 2019 09:59:24 GMT  
		Size: 28.5 MB (28459288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73f1086e4b1a4a6f6675743b3b0931471247d8aed4e05fcb5ee62cca3a9b5ce`  
		Last Modified: Wed, 23 Jan 2019 14:29:51 GMT  
		Size: 2.6 MB (2563377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b17a27a3e4a2d037477a83f491d58ea4f93dc667685fbdcc80c2d227f6da488`  
		Last Modified: Wed, 23 Jan 2019 14:30:54 GMT  
		Size: 28.5 MB (28525326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6-slim-jessie` - linux; 386

```console
$ docker pull pypy@sha256:d975a019ee6d6aa44f59d55ba4fcf5b8340cc110853ada6447da0350a5e60a61
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63201966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74779069e3039862700cd492ac1503e524732f5eda22545a2b4e584465277581`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 23 Jan 2019 11:43:42 GMT
ADD file:7181677d169fdf847eb4ca0b8071ad7345e882aff132aaabc7ea32c40cd21dab in / 
# Wed, 23 Jan 2019 11:43:42 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:27:44 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:27:44 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 17:30:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:30:40 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 17:30:40 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 17:39:03 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 17:39:03 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:6e31980640f69275069979bf989f5da4fbbffb988b3d52b08d39b451740752f4`  
		Last Modified: Wed, 23 Jan 2019 11:59:32 GMT  
		Size: 30.3 MB (30293609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4beab62285670d4f11fe161612872e8b2cb371a54309f8859c6011d71c5cec5f`  
		Last Modified: Wed, 23 Jan 2019 17:39:43 GMT  
		Size: 4.9 MB (4918269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7c4fc32096b51d19f2d53df33abacab66352a20679a153ab30903a30a3d19a`  
		Last Modified: Wed, 23 Jan 2019 17:40:26 GMT  
		Size: 28.0 MB (27990088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-jessie`

```console
$ docker pull pypy@sha256:18c42ab583879f0e1a9a39c3772891415ccb1c9c225edcf314331211eabe92b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-jessie` - linux; amd64

```console
$ docker pull pypy@sha256:f464eee6297463e5d62fbe93d343c89f8a9c7df1018053150b923612841d2ab2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.9 MB (279851517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f784d3bfe6209256773581dca5aa78fe41b41443206ba13df305ddac8a67bba0`
-	Default Command: `["pypy3"]`

```dockerfile
# Fri, 28 Dec 2018 23:23:43 GMT
ADD file:7f32b46e26b56ebbde417db4d539757b8e852c62bab15978db092ce24d2420d1 in / 
# Fri, 28 Dec 2018 23:23:43 GMT
CMD ["bash"]
# Fri, 28 Dec 2018 23:56:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:56:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 28 Dec 2018 23:58:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:31:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:47:16 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Jan 2019 23:47:16 GMT
ENV LANG=C.UTF-8
# Tue, 08 Jan 2019 23:48:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:48:57 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 08 Jan 2019 23:48:57 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 08 Jan 2019 23:49:39 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Tue, 08 Jan 2019 23:49:50 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 08 Jan 2019 23:49:50 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:ff144d3c0ab1033159cf082f681c9f51b09cd701d907e3bad65b1411fa1585a9`  
		Last Modified: Fri, 28 Dec 2018 23:33:45 GMT  
		Size: 54.4 MB (54387117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8988f929403e60a98b37002c9210cf3bf3ecf8782130b011dac8f2b28608ed31`  
		Last Modified: Sat, 29 Dec 2018 00:19:39 GMT  
		Size: 17.5 MB (17539015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155407d8635b1e92ef1550c047a938a8fcf39331261d1eb742ea962d7a1a0630`  
		Last Modified: Sat, 29 Dec 2018 00:19:53 GMT  
		Size: 43.3 MB (43306794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34f5459055e712ef296b171c24cfd7cffbdc0f7cd4c76f7a3fc82ebae23b6e6`  
		Last Modified: Tue, 08 Jan 2019 23:43:59 GMT  
		Size: 131.4 MB (131434783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f170979890f107ba8e58ec44f0c280aac71beda77eb30d65097780fed98aa7ef`  
		Last Modified: Tue, 08 Jan 2019 23:50:14 GMT  
		Size: 3.2 MB (3168228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767c0e86352e9a0ef729588bf8aa5666df83aff7d4b220299aee4d24f2b918d4`  
		Last Modified: Tue, 08 Jan 2019 23:50:41 GMT  
		Size: 25.5 MB (25515701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0ea1bd7b7944d48fe5c24d80b765f2546d198bf3dd920cc297dd1499c8f15f`  
		Last Modified: Tue, 08 Jan 2019 23:50:35 GMT  
		Size: 4.5 MB (4499879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-jessie` - linux; arm variant v5

```console
$ docker pull pypy@sha256:2989f42013baa3462d6f2f64584766bbf18514cf081bc1820c0f7a83ad08d745
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.0 MB (257971885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:544ca98ac251e9ecd2f8265634eb5385d77ba32e92482a5e2e31732ab59cc820`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:10 GMT
ADD file:d54ba2764c6a60a1d23652305cbda61eafbf6d9f3a808ca58fe9c2400a1d51e9 in / 
# Wed, 23 Jan 2019 09:50:11 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:30:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:30:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 10:32:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:35:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:48:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:48:49 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 10:49:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:49:49 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 10:49:49 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 10:57:23 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Wed, 23 Jan 2019 14:26:32 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 23 Jan 2019 14:26:33 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:50fd141dcc41a9d8165a0900c6d253849085d5fefc20c8802d9ab7990cbc0f88`  
		Last Modified: Wed, 23 Jan 2019 09:59:04 GMT  
		Size: 52.6 MB (52574556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c97e5089c7dbd37156a16aa333e82a8047c39870627ad13f9d513f514eba1f9`  
		Last Modified: Wed, 23 Jan 2019 10:46:53 GMT  
		Size: 17.0 MB (17030345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1e3e333e6420f3b76bbee5414c4d1c57e7b42b8a42899bcb8e54e780b280ec`  
		Last Modified: Wed, 23 Jan 2019 10:47:13 GMT  
		Size: 41.1 MB (41147190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b25ed3de9d90618a35e1452e88796e1d13223bdc809c1eb9c57add0346086a9`  
		Last Modified: Wed, 23 Jan 2019 10:47:53 GMT  
		Size: 116.0 MB (115968878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f452ceb421b0b1eab6f50069e59a434a29aff11e57c1177b4440a032470a1fdb`  
		Last Modified: Wed, 23 Jan 2019 14:29:25 GMT  
		Size: 3.0 MB (3021176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cb6072685e33b8a54c2ebe34066be596ff65f4464d94034946373ae89938e5c`  
		Last Modified: Wed, 23 Jan 2019 14:30:25 GMT  
		Size: 23.7 MB (23728916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53dce7a6fea6c3dcb06f73cf3a094612a0b53c4db49edd297924699f296039fd`  
		Last Modified: Wed, 23 Jan 2019 14:30:18 GMT  
		Size: 4.5 MB (4500824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-jessie` - linux; 386

```console
$ docker pull pypy@sha256:5c2781081defab44011b92d8720c7370a696d29b919a2403bdc36f0d121c7fbc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 MB (284767982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48639bb45285f6228d5888ad39cfe157d469c2660efbaa570a75c32e242152e3`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 23 Jan 2019 11:42:56 GMT
ADD file:34c4d7be20c87ed251d0f5a99c46920d29f51e7050390664fe342895d416cf26 in / 
# Wed, 23 Jan 2019 11:42:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:38:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:38:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:41:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:46:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:24:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:24:30 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 17:27:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:27:12 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 17:27:12 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 17:34:53 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Wed, 23 Jan 2019 17:35:05 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 23 Jan 2019 17:35:05 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:c9e90e967f2e8ff1c9bcd2f542cedbcf4ef3dd2e4601b2f3c66fdbef5125fe84`  
		Last Modified: Wed, 23 Jan 2019 11:59:12 GMT  
		Size: 54.6 MB (54598497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f41350de1b8c9a9aaef88261e4271f1d2cdbfcd19c25b6ff74b91d18449ccf3`  
		Last Modified: Wed, 23 Jan 2019 13:08:22 GMT  
		Size: 19.8 MB (19846606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfebb7c82792eca5cf28743e4209f51a647eee4e572199538027c9f37e263f0`  
		Last Modified: Wed, 23 Jan 2019 13:08:44 GMT  
		Size: 44.0 MB (43951885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45bd9d6476253bffc4debb9e10f1b43cce50575497c94544c0fb0d35c1370f6`  
		Last Modified: Wed, 23 Jan 2019 13:09:27 GMT  
		Size: 135.4 MB (135404772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43900df224bdee95758fc30311b661ee31f6ad9a33444848635aca53a32e2bc6`  
		Last Modified: Wed, 23 Jan 2019 17:39:25 GMT  
		Size: 3.3 MB (3272265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378118253113e960bc621981f47dac952000bec24d27a99f6a53ddb4b77be31d`  
		Last Modified: Wed, 23 Jan 2019 17:40:05 GMT  
		Size: 23.2 MB (23194313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a0e23b7665808bd9a9ae753bbb042d990537c01fb038c1869fb52db31a18c8`  
		Last Modified: Wed, 23 Jan 2019 17:39:59 GMT  
		Size: 4.5 MB (4499644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-slim`

```console
$ docker pull pypy@sha256:2741c876a736bd2f497e9e447941fef59392b531cd162f49f9713e315803130c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-slim` - linux; amd64

```console
$ docker pull pypy@sha256:fe0b4af51d52dbcceae6615b485d3ea00e6b344baca9eb5ffafde3b15d0b510f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.3 MB (63280300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a51612b54fb246de5045b8ebfb97be77dccc3d01b8b7722bf8d451e39963ee4`
-	Default Command: `["pypy3"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:10 GMT
ADD file:74e9771816fa7d109fa79427ea1b8615f036838a9c02d4fe124035b440692cfd in / 
# Fri, 28 Dec 2018 23:24:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 03:59:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 03:59:57 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 04:01:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 04:01:53 GMT
ENV PYPY_VERSION=6.0.0
# Sat, 29 Dec 2018 04:01:54 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 29 Dec 2018 04:08:18 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 04:08:18 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:436214a91f468dfbb145ef1658128dc3f3c35f5af545a90c9a60a6c42968ac87`  
		Last Modified: Fri, 28 Dec 2018 23:33:59 GMT  
		Size: 30.2 MB (30153953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca598cb320fb755ae0443d3781a99d509098dab1b1831ba5961e23291e5f750`  
		Last Modified: Sat, 29 Dec 2018 04:09:16 GMT  
		Size: 2.8 MB (2811478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9ae72cb2b71730129d7c3a16de437e690c683f8ebe217b7f9aa06b7c99c98d`  
		Last Modified: Sat, 29 Dec 2018 04:09:57 GMT  
		Size: 30.3 MB (30314869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:9a03f5c5186e2218a8857d43b3d8aee00226cefcfa2139d96a8ea1135e972603
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.5 MB (59547991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e7a046fe0d162cd8c49e907614cd4807af506a9aace1fdd1372dd1bcc612d03`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:34 GMT
ADD file:d56fba3965a9434864a05fce7731cbec09ec6c3ea34b8a3e72a65a597ee52931 in / 
# Wed, 23 Jan 2019 09:50:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:51:19 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:51:20 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 10:52:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:52:25 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 10:52:25 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 14:28:48 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 14:28:50 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:e3950d1cc969b5b5674e279562ac17636104e44548e2dea0efcd3c7cc5867616`  
		Last Modified: Wed, 23 Jan 2019 09:59:24 GMT  
		Size: 28.5 MB (28459288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73f1086e4b1a4a6f6675743b3b0931471247d8aed4e05fcb5ee62cca3a9b5ce`  
		Last Modified: Wed, 23 Jan 2019 14:29:51 GMT  
		Size: 2.6 MB (2563377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b17a27a3e4a2d037477a83f491d58ea4f93dc667685fbdcc80c2d227f6da488`  
		Last Modified: Wed, 23 Jan 2019 14:30:54 GMT  
		Size: 28.5 MB (28525326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-slim` - linux; 386

```console
$ docker pull pypy@sha256:d975a019ee6d6aa44f59d55ba4fcf5b8340cc110853ada6447da0350a5e60a61
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63201966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74779069e3039862700cd492ac1503e524732f5eda22545a2b4e584465277581`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 23 Jan 2019 11:43:42 GMT
ADD file:7181677d169fdf847eb4ca0b8071ad7345e882aff132aaabc7ea32c40cd21dab in / 
# Wed, 23 Jan 2019 11:43:42 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:27:44 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:27:44 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 17:30:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:30:40 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 17:30:40 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 17:39:03 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 17:39:03 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:6e31980640f69275069979bf989f5da4fbbffb988b3d52b08d39b451740752f4`  
		Last Modified: Wed, 23 Jan 2019 11:59:32 GMT  
		Size: 30.3 MB (30293609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4beab62285670d4f11fe161612872e8b2cb371a54309f8859c6011d71c5cec5f`  
		Last Modified: Wed, 23 Jan 2019 17:39:43 GMT  
		Size: 4.9 MB (4918269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7c4fc32096b51d19f2d53df33abacab66352a20679a153ab30903a30a3d19a`  
		Last Modified: Wed, 23 Jan 2019 17:40:26 GMT  
		Size: 28.0 MB (27990088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-slim-jessie`

```console
$ docker pull pypy@sha256:2741c876a736bd2f497e9e447941fef59392b531cd162f49f9713e315803130c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-slim-jessie` - linux; amd64

```console
$ docker pull pypy@sha256:fe0b4af51d52dbcceae6615b485d3ea00e6b344baca9eb5ffafde3b15d0b510f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.3 MB (63280300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a51612b54fb246de5045b8ebfb97be77dccc3d01b8b7722bf8d451e39963ee4`
-	Default Command: `["pypy3"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:10 GMT
ADD file:74e9771816fa7d109fa79427ea1b8615f036838a9c02d4fe124035b440692cfd in / 
# Fri, 28 Dec 2018 23:24:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 03:59:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 03:59:57 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 04:01:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 04:01:53 GMT
ENV PYPY_VERSION=6.0.0
# Sat, 29 Dec 2018 04:01:54 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 29 Dec 2018 04:08:18 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 04:08:18 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:436214a91f468dfbb145ef1658128dc3f3c35f5af545a90c9a60a6c42968ac87`  
		Last Modified: Fri, 28 Dec 2018 23:33:59 GMT  
		Size: 30.2 MB (30153953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca598cb320fb755ae0443d3781a99d509098dab1b1831ba5961e23291e5f750`  
		Last Modified: Sat, 29 Dec 2018 04:09:16 GMT  
		Size: 2.8 MB (2811478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9ae72cb2b71730129d7c3a16de437e690c683f8ebe217b7f9aa06b7c99c98d`  
		Last Modified: Sat, 29 Dec 2018 04:09:57 GMT  
		Size: 30.3 MB (30314869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-slim-jessie` - linux; arm variant v5

```console
$ docker pull pypy@sha256:9a03f5c5186e2218a8857d43b3d8aee00226cefcfa2139d96a8ea1135e972603
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.5 MB (59547991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e7a046fe0d162cd8c49e907614cd4807af506a9aace1fdd1372dd1bcc612d03`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:34 GMT
ADD file:d56fba3965a9434864a05fce7731cbec09ec6c3ea34b8a3e72a65a597ee52931 in / 
# Wed, 23 Jan 2019 09:50:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:51:19 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:51:20 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 10:52:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:52:25 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 10:52:25 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 14:28:48 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 14:28:50 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:e3950d1cc969b5b5674e279562ac17636104e44548e2dea0efcd3c7cc5867616`  
		Last Modified: Wed, 23 Jan 2019 09:59:24 GMT  
		Size: 28.5 MB (28459288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73f1086e4b1a4a6f6675743b3b0931471247d8aed4e05fcb5ee62cca3a9b5ce`  
		Last Modified: Wed, 23 Jan 2019 14:29:51 GMT  
		Size: 2.6 MB (2563377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b17a27a3e4a2d037477a83f491d58ea4f93dc667685fbdcc80c2d227f6da488`  
		Last Modified: Wed, 23 Jan 2019 14:30:54 GMT  
		Size: 28.5 MB (28525326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-slim-jessie` - linux; 386

```console
$ docker pull pypy@sha256:d975a019ee6d6aa44f59d55ba4fcf5b8340cc110853ada6447da0350a5e60a61
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63201966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74779069e3039862700cd492ac1503e524732f5eda22545a2b4e584465277581`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 23 Jan 2019 11:43:42 GMT
ADD file:7181677d169fdf847eb4ca0b8071ad7345e882aff132aaabc7ea32c40cd21dab in / 
# Wed, 23 Jan 2019 11:43:42 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:27:44 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:27:44 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 17:30:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:30:40 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 17:30:40 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 17:39:03 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 17:39:03 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:6e31980640f69275069979bf989f5da4fbbffb988b3d52b08d39b451740752f4`  
		Last Modified: Wed, 23 Jan 2019 11:59:32 GMT  
		Size: 30.3 MB (30293609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4beab62285670d4f11fe161612872e8b2cb371a54309f8859c6011d71c5cec5f`  
		Last Modified: Wed, 23 Jan 2019 17:39:43 GMT  
		Size: 4.9 MB (4918269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7c4fc32096b51d19f2d53df33abacab66352a20679a153ab30903a30a3d19a`  
		Last Modified: Wed, 23 Jan 2019 17:40:26 GMT  
		Size: 28.0 MB (27990088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:jessie`

```console
$ docker pull pypy@sha256:18c42ab583879f0e1a9a39c3772891415ccb1c9c225edcf314331211eabe92b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:jessie` - linux; amd64

```console
$ docker pull pypy@sha256:f464eee6297463e5d62fbe93d343c89f8a9c7df1018053150b923612841d2ab2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.9 MB (279851517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f784d3bfe6209256773581dca5aa78fe41b41443206ba13df305ddac8a67bba0`
-	Default Command: `["pypy3"]`

```dockerfile
# Fri, 28 Dec 2018 23:23:43 GMT
ADD file:7f32b46e26b56ebbde417db4d539757b8e852c62bab15978db092ce24d2420d1 in / 
# Fri, 28 Dec 2018 23:23:43 GMT
CMD ["bash"]
# Fri, 28 Dec 2018 23:56:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:56:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 28 Dec 2018 23:58:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:31:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:47:16 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Jan 2019 23:47:16 GMT
ENV LANG=C.UTF-8
# Tue, 08 Jan 2019 23:48:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:48:57 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 08 Jan 2019 23:48:57 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 08 Jan 2019 23:49:39 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Tue, 08 Jan 2019 23:49:50 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 08 Jan 2019 23:49:50 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:ff144d3c0ab1033159cf082f681c9f51b09cd701d907e3bad65b1411fa1585a9`  
		Last Modified: Fri, 28 Dec 2018 23:33:45 GMT  
		Size: 54.4 MB (54387117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8988f929403e60a98b37002c9210cf3bf3ecf8782130b011dac8f2b28608ed31`  
		Last Modified: Sat, 29 Dec 2018 00:19:39 GMT  
		Size: 17.5 MB (17539015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155407d8635b1e92ef1550c047a938a8fcf39331261d1eb742ea962d7a1a0630`  
		Last Modified: Sat, 29 Dec 2018 00:19:53 GMT  
		Size: 43.3 MB (43306794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34f5459055e712ef296b171c24cfd7cffbdc0f7cd4c76f7a3fc82ebae23b6e6`  
		Last Modified: Tue, 08 Jan 2019 23:43:59 GMT  
		Size: 131.4 MB (131434783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f170979890f107ba8e58ec44f0c280aac71beda77eb30d65097780fed98aa7ef`  
		Last Modified: Tue, 08 Jan 2019 23:50:14 GMT  
		Size: 3.2 MB (3168228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767c0e86352e9a0ef729588bf8aa5666df83aff7d4b220299aee4d24f2b918d4`  
		Last Modified: Tue, 08 Jan 2019 23:50:41 GMT  
		Size: 25.5 MB (25515701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0ea1bd7b7944d48fe5c24d80b765f2546d198bf3dd920cc297dd1499c8f15f`  
		Last Modified: Tue, 08 Jan 2019 23:50:35 GMT  
		Size: 4.5 MB (4499879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:jessie` - linux; arm variant v5

```console
$ docker pull pypy@sha256:2989f42013baa3462d6f2f64584766bbf18514cf081bc1820c0f7a83ad08d745
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.0 MB (257971885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:544ca98ac251e9ecd2f8265634eb5385d77ba32e92482a5e2e31732ab59cc820`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:10 GMT
ADD file:d54ba2764c6a60a1d23652305cbda61eafbf6d9f3a808ca58fe9c2400a1d51e9 in / 
# Wed, 23 Jan 2019 09:50:11 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:30:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:30:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 10:32:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:35:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:48:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:48:49 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 10:49:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:49:49 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 10:49:49 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 10:57:23 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Wed, 23 Jan 2019 14:26:32 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 23 Jan 2019 14:26:33 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:50fd141dcc41a9d8165a0900c6d253849085d5fefc20c8802d9ab7990cbc0f88`  
		Last Modified: Wed, 23 Jan 2019 09:59:04 GMT  
		Size: 52.6 MB (52574556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c97e5089c7dbd37156a16aa333e82a8047c39870627ad13f9d513f514eba1f9`  
		Last Modified: Wed, 23 Jan 2019 10:46:53 GMT  
		Size: 17.0 MB (17030345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1e3e333e6420f3b76bbee5414c4d1c57e7b42b8a42899bcb8e54e780b280ec`  
		Last Modified: Wed, 23 Jan 2019 10:47:13 GMT  
		Size: 41.1 MB (41147190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b25ed3de9d90618a35e1452e88796e1d13223bdc809c1eb9c57add0346086a9`  
		Last Modified: Wed, 23 Jan 2019 10:47:53 GMT  
		Size: 116.0 MB (115968878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f452ceb421b0b1eab6f50069e59a434a29aff11e57c1177b4440a032470a1fdb`  
		Last Modified: Wed, 23 Jan 2019 14:29:25 GMT  
		Size: 3.0 MB (3021176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cb6072685e33b8a54c2ebe34066be596ff65f4464d94034946373ae89938e5c`  
		Last Modified: Wed, 23 Jan 2019 14:30:25 GMT  
		Size: 23.7 MB (23728916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53dce7a6fea6c3dcb06f73cf3a094612a0b53c4db49edd297924699f296039fd`  
		Last Modified: Wed, 23 Jan 2019 14:30:18 GMT  
		Size: 4.5 MB (4500824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:jessie` - linux; 386

```console
$ docker pull pypy@sha256:5c2781081defab44011b92d8720c7370a696d29b919a2403bdc36f0d121c7fbc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 MB (284767982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48639bb45285f6228d5888ad39cfe157d469c2660efbaa570a75c32e242152e3`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 23 Jan 2019 11:42:56 GMT
ADD file:34c4d7be20c87ed251d0f5a99c46920d29f51e7050390664fe342895d416cf26 in / 
# Wed, 23 Jan 2019 11:42:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:38:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:38:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:41:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:46:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:24:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:24:30 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 17:27:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:27:12 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 17:27:12 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 17:34:53 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Wed, 23 Jan 2019 17:35:05 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 23 Jan 2019 17:35:05 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:c9e90e967f2e8ff1c9bcd2f542cedbcf4ef3dd2e4601b2f3c66fdbef5125fe84`  
		Last Modified: Wed, 23 Jan 2019 11:59:12 GMT  
		Size: 54.6 MB (54598497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f41350de1b8c9a9aaef88261e4271f1d2cdbfcd19c25b6ff74b91d18449ccf3`  
		Last Modified: Wed, 23 Jan 2019 13:08:22 GMT  
		Size: 19.8 MB (19846606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfebb7c82792eca5cf28743e4209f51a647eee4e572199538027c9f37e263f0`  
		Last Modified: Wed, 23 Jan 2019 13:08:44 GMT  
		Size: 44.0 MB (43951885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45bd9d6476253bffc4debb9e10f1b43cce50575497c94544c0fb0d35c1370f6`  
		Last Modified: Wed, 23 Jan 2019 13:09:27 GMT  
		Size: 135.4 MB (135404772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43900df224bdee95758fc30311b661ee31f6ad9a33444848635aca53a32e2bc6`  
		Last Modified: Wed, 23 Jan 2019 17:39:25 GMT  
		Size: 3.3 MB (3272265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378118253113e960bc621981f47dac952000bec24d27a99f6a53ddb4b77be31d`  
		Last Modified: Wed, 23 Jan 2019 17:40:05 GMT  
		Size: 23.2 MB (23194313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a0e23b7665808bd9a9ae753bbb042d990537c01fb038c1869fb52db31a18c8`  
		Last Modified: Wed, 23 Jan 2019 17:39:59 GMT  
		Size: 4.5 MB (4499644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:latest`

```console
$ docker pull pypy@sha256:18c42ab583879f0e1a9a39c3772891415ccb1c9c225edcf314331211eabe92b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:latest` - linux; amd64

```console
$ docker pull pypy@sha256:f464eee6297463e5d62fbe93d343c89f8a9c7df1018053150b923612841d2ab2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.9 MB (279851517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f784d3bfe6209256773581dca5aa78fe41b41443206ba13df305ddac8a67bba0`
-	Default Command: `["pypy3"]`

```dockerfile
# Fri, 28 Dec 2018 23:23:43 GMT
ADD file:7f32b46e26b56ebbde417db4d539757b8e852c62bab15978db092ce24d2420d1 in / 
# Fri, 28 Dec 2018 23:23:43 GMT
CMD ["bash"]
# Fri, 28 Dec 2018 23:56:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:56:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 28 Dec 2018 23:58:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:31:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:47:16 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 08 Jan 2019 23:47:16 GMT
ENV LANG=C.UTF-8
# Tue, 08 Jan 2019 23:48:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:48:57 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 08 Jan 2019 23:48:57 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 08 Jan 2019 23:49:39 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Tue, 08 Jan 2019 23:49:50 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 08 Jan 2019 23:49:50 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:ff144d3c0ab1033159cf082f681c9f51b09cd701d907e3bad65b1411fa1585a9`  
		Last Modified: Fri, 28 Dec 2018 23:33:45 GMT  
		Size: 54.4 MB (54387117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8988f929403e60a98b37002c9210cf3bf3ecf8782130b011dac8f2b28608ed31`  
		Last Modified: Sat, 29 Dec 2018 00:19:39 GMT  
		Size: 17.5 MB (17539015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155407d8635b1e92ef1550c047a938a8fcf39331261d1eb742ea962d7a1a0630`  
		Last Modified: Sat, 29 Dec 2018 00:19:53 GMT  
		Size: 43.3 MB (43306794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d34f5459055e712ef296b171c24cfd7cffbdc0f7cd4c76f7a3fc82ebae23b6e6`  
		Last Modified: Tue, 08 Jan 2019 23:43:59 GMT  
		Size: 131.4 MB (131434783 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f170979890f107ba8e58ec44f0c280aac71beda77eb30d65097780fed98aa7ef`  
		Last Modified: Tue, 08 Jan 2019 23:50:14 GMT  
		Size: 3.2 MB (3168228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:767c0e86352e9a0ef729588bf8aa5666df83aff7d4b220299aee4d24f2b918d4`  
		Last Modified: Tue, 08 Jan 2019 23:50:41 GMT  
		Size: 25.5 MB (25515701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c0ea1bd7b7944d48fe5c24d80b765f2546d198bf3dd920cc297dd1499c8f15f`  
		Last Modified: Tue, 08 Jan 2019 23:50:35 GMT  
		Size: 4.5 MB (4499879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:latest` - linux; arm variant v5

```console
$ docker pull pypy@sha256:2989f42013baa3462d6f2f64584766bbf18514cf081bc1820c0f7a83ad08d745
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.0 MB (257971885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:544ca98ac251e9ecd2f8265634eb5385d77ba32e92482a5e2e31732ab59cc820`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:10 GMT
ADD file:d54ba2764c6a60a1d23652305cbda61eafbf6d9f3a808ca58fe9c2400a1d51e9 in / 
# Wed, 23 Jan 2019 09:50:11 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:30:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:30:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 10:32:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:35:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:48:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:48:49 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 10:49:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:49:49 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 10:49:49 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 10:57:23 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Wed, 23 Jan 2019 14:26:32 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 23 Jan 2019 14:26:33 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:50fd141dcc41a9d8165a0900c6d253849085d5fefc20c8802d9ab7990cbc0f88`  
		Last Modified: Wed, 23 Jan 2019 09:59:04 GMT  
		Size: 52.6 MB (52574556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c97e5089c7dbd37156a16aa333e82a8047c39870627ad13f9d513f514eba1f9`  
		Last Modified: Wed, 23 Jan 2019 10:46:53 GMT  
		Size: 17.0 MB (17030345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1e3e333e6420f3b76bbee5414c4d1c57e7b42b8a42899bcb8e54e780b280ec`  
		Last Modified: Wed, 23 Jan 2019 10:47:13 GMT  
		Size: 41.1 MB (41147190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b25ed3de9d90618a35e1452e88796e1d13223bdc809c1eb9c57add0346086a9`  
		Last Modified: Wed, 23 Jan 2019 10:47:53 GMT  
		Size: 116.0 MB (115968878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f452ceb421b0b1eab6f50069e59a434a29aff11e57c1177b4440a032470a1fdb`  
		Last Modified: Wed, 23 Jan 2019 14:29:25 GMT  
		Size: 3.0 MB (3021176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cb6072685e33b8a54c2ebe34066be596ff65f4464d94034946373ae89938e5c`  
		Last Modified: Wed, 23 Jan 2019 14:30:25 GMT  
		Size: 23.7 MB (23728916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53dce7a6fea6c3dcb06f73cf3a094612a0b53c4db49edd297924699f296039fd`  
		Last Modified: Wed, 23 Jan 2019 14:30:18 GMT  
		Size: 4.5 MB (4500824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:latest` - linux; 386

```console
$ docker pull pypy@sha256:5c2781081defab44011b92d8720c7370a696d29b919a2403bdc36f0d121c7fbc
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.8 MB (284767982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48639bb45285f6228d5888ad39cfe157d469c2660efbaa570a75c32e242152e3`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 23 Jan 2019 11:42:56 GMT
ADD file:34c4d7be20c87ed251d0f5a99c46920d29f51e7050390664fe342895d416cf26 in / 
# Wed, 23 Jan 2019 11:42:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:38:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:38:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:41:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:46:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:24:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:24:30 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 17:27:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:27:12 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 17:27:12 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 17:34:53 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version
# Wed, 23 Jan 2019 17:35:05 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Wed, 23 Jan 2019 17:35:05 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:c9e90e967f2e8ff1c9bcd2f542cedbcf4ef3dd2e4601b2f3c66fdbef5125fe84`  
		Last Modified: Wed, 23 Jan 2019 11:59:12 GMT  
		Size: 54.6 MB (54598497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f41350de1b8c9a9aaef88261e4271f1d2cdbfcd19c25b6ff74b91d18449ccf3`  
		Last Modified: Wed, 23 Jan 2019 13:08:22 GMT  
		Size: 19.8 MB (19846606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfebb7c82792eca5cf28743e4209f51a647eee4e572199538027c9f37e263f0`  
		Last Modified: Wed, 23 Jan 2019 13:08:44 GMT  
		Size: 44.0 MB (43951885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45bd9d6476253bffc4debb9e10f1b43cce50575497c94544c0fb0d35c1370f6`  
		Last Modified: Wed, 23 Jan 2019 13:09:27 GMT  
		Size: 135.4 MB (135404772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43900df224bdee95758fc30311b661ee31f6ad9a33444848635aca53a32e2bc6`  
		Last Modified: Wed, 23 Jan 2019 17:39:25 GMT  
		Size: 3.3 MB (3272265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:378118253113e960bc621981f47dac952000bec24d27a99f6a53ddb4b77be31d`  
		Last Modified: Wed, 23 Jan 2019 17:40:05 GMT  
		Size: 23.2 MB (23194313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:39a0e23b7665808bd9a9ae753bbb042d990537c01fb038c1869fb52db31a18c8`  
		Last Modified: Wed, 23 Jan 2019 17:39:59 GMT  
		Size: 4.5 MB (4499644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:slim`

```console
$ docker pull pypy@sha256:2741c876a736bd2f497e9e447941fef59392b531cd162f49f9713e315803130c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:slim` - linux; amd64

```console
$ docker pull pypy@sha256:fe0b4af51d52dbcceae6615b485d3ea00e6b344baca9eb5ffafde3b15d0b510f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.3 MB (63280300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a51612b54fb246de5045b8ebfb97be77dccc3d01b8b7722bf8d451e39963ee4`
-	Default Command: `["pypy3"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:10 GMT
ADD file:74e9771816fa7d109fa79427ea1b8615f036838a9c02d4fe124035b440692cfd in / 
# Fri, 28 Dec 2018 23:24:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 03:59:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 03:59:57 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 04:01:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 04:01:53 GMT
ENV PYPY_VERSION=6.0.0
# Sat, 29 Dec 2018 04:01:54 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 29 Dec 2018 04:08:18 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 04:08:18 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:436214a91f468dfbb145ef1658128dc3f3c35f5af545a90c9a60a6c42968ac87`  
		Last Modified: Fri, 28 Dec 2018 23:33:59 GMT  
		Size: 30.2 MB (30153953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca598cb320fb755ae0443d3781a99d509098dab1b1831ba5961e23291e5f750`  
		Last Modified: Sat, 29 Dec 2018 04:09:16 GMT  
		Size: 2.8 MB (2811478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9ae72cb2b71730129d7c3a16de437e690c683f8ebe217b7f9aa06b7c99c98d`  
		Last Modified: Sat, 29 Dec 2018 04:09:57 GMT  
		Size: 30.3 MB (30314869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:9a03f5c5186e2218a8857d43b3d8aee00226cefcfa2139d96a8ea1135e972603
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.5 MB (59547991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e7a046fe0d162cd8c49e907614cd4807af506a9aace1fdd1372dd1bcc612d03`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:34 GMT
ADD file:d56fba3965a9434864a05fce7731cbec09ec6c3ea34b8a3e72a65a597ee52931 in / 
# Wed, 23 Jan 2019 09:50:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:51:19 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:51:20 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 10:52:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:52:25 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 10:52:25 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 14:28:48 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 14:28:50 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:e3950d1cc969b5b5674e279562ac17636104e44548e2dea0efcd3c7cc5867616`  
		Last Modified: Wed, 23 Jan 2019 09:59:24 GMT  
		Size: 28.5 MB (28459288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73f1086e4b1a4a6f6675743b3b0931471247d8aed4e05fcb5ee62cca3a9b5ce`  
		Last Modified: Wed, 23 Jan 2019 14:29:51 GMT  
		Size: 2.6 MB (2563377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b17a27a3e4a2d037477a83f491d58ea4f93dc667685fbdcc80c2d227f6da488`  
		Last Modified: Wed, 23 Jan 2019 14:30:54 GMT  
		Size: 28.5 MB (28525326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:slim` - linux; 386

```console
$ docker pull pypy@sha256:d975a019ee6d6aa44f59d55ba4fcf5b8340cc110853ada6447da0350a5e60a61
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63201966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74779069e3039862700cd492ac1503e524732f5eda22545a2b4e584465277581`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 23 Jan 2019 11:43:42 GMT
ADD file:7181677d169fdf847eb4ca0b8071ad7345e882aff132aaabc7ea32c40cd21dab in / 
# Wed, 23 Jan 2019 11:43:42 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:27:44 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:27:44 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 17:30:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:30:40 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 17:30:40 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 17:39:03 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 17:39:03 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:6e31980640f69275069979bf989f5da4fbbffb988b3d52b08d39b451740752f4`  
		Last Modified: Wed, 23 Jan 2019 11:59:32 GMT  
		Size: 30.3 MB (30293609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4beab62285670d4f11fe161612872e8b2cb371a54309f8859c6011d71c5cec5f`  
		Last Modified: Wed, 23 Jan 2019 17:39:43 GMT  
		Size: 4.9 MB (4918269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7c4fc32096b51d19f2d53df33abacab66352a20679a153ab30903a30a3d19a`  
		Last Modified: Wed, 23 Jan 2019 17:40:26 GMT  
		Size: 28.0 MB (27990088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:slim-jessie`

```console
$ docker pull pypy@sha256:2741c876a736bd2f497e9e447941fef59392b531cd162f49f9713e315803130c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:slim-jessie` - linux; amd64

```console
$ docker pull pypy@sha256:fe0b4af51d52dbcceae6615b485d3ea00e6b344baca9eb5ffafde3b15d0b510f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.3 MB (63280300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a51612b54fb246de5045b8ebfb97be77dccc3d01b8b7722bf8d451e39963ee4`
-	Default Command: `["pypy3"]`

```dockerfile
# Fri, 28 Dec 2018 23:24:10 GMT
ADD file:74e9771816fa7d109fa79427ea1b8615f036838a9c02d4fe124035b440692cfd in / 
# Fri, 28 Dec 2018 23:24:12 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 03:59:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 03:59:57 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 04:01:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 04:01:53 GMT
ENV PYPY_VERSION=6.0.0
# Sat, 29 Dec 2018 04:01:54 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 29 Dec 2018 04:08:18 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 29 Dec 2018 04:08:18 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:436214a91f468dfbb145ef1658128dc3f3c35f5af545a90c9a60a6c42968ac87`  
		Last Modified: Fri, 28 Dec 2018 23:33:59 GMT  
		Size: 30.2 MB (30153953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca598cb320fb755ae0443d3781a99d509098dab1b1831ba5961e23291e5f750`  
		Last Modified: Sat, 29 Dec 2018 04:09:16 GMT  
		Size: 2.8 MB (2811478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de9ae72cb2b71730129d7c3a16de437e690c683f8ebe217b7f9aa06b7c99c98d`  
		Last Modified: Sat, 29 Dec 2018 04:09:57 GMT  
		Size: 30.3 MB (30314869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:slim-jessie` - linux; arm variant v5

```console
$ docker pull pypy@sha256:9a03f5c5186e2218a8857d43b3d8aee00226cefcfa2139d96a8ea1135e972603
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.5 MB (59547991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e7a046fe0d162cd8c49e907614cd4807af506a9aace1fdd1372dd1bcc612d03`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:34 GMT
ADD file:d56fba3965a9434864a05fce7731cbec09ec6c3ea34b8a3e72a65a597ee52931 in / 
# Wed, 23 Jan 2019 09:50:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:51:19 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:51:20 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 10:52:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:52:25 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 10:52:25 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 14:28:48 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 14:28:50 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:e3950d1cc969b5b5674e279562ac17636104e44548e2dea0efcd3c7cc5867616`  
		Last Modified: Wed, 23 Jan 2019 09:59:24 GMT  
		Size: 28.5 MB (28459288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d73f1086e4b1a4a6f6675743b3b0931471247d8aed4e05fcb5ee62cca3a9b5ce`  
		Last Modified: Wed, 23 Jan 2019 14:29:51 GMT  
		Size: 2.6 MB (2563377 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b17a27a3e4a2d037477a83f491d58ea4f93dc667685fbdcc80c2d227f6da488`  
		Last Modified: Wed, 23 Jan 2019 14:30:54 GMT  
		Size: 28.5 MB (28525326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:slim-jessie` - linux; 386

```console
$ docker pull pypy@sha256:d975a019ee6d6aa44f59d55ba4fcf5b8340cc110853ada6447da0350a5e60a61
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.2 MB (63201966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74779069e3039862700cd492ac1503e524732f5eda22545a2b4e584465277581`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 23 Jan 2019 11:43:42 GMT
ADD file:7181677d169fdf847eb4ca0b8071ad7345e882aff132aaabc7ea32c40cd21dab in / 
# Wed, 23 Jan 2019 11:43:42 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:27:44 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:27:44 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 17:30:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:30:40 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 23 Jan 2019 17:30:40 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 17:39:03 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 23 Jan 2019 17:39:03 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:6e31980640f69275069979bf989f5da4fbbffb988b3d52b08d39b451740752f4`  
		Last Modified: Wed, 23 Jan 2019 11:59:32 GMT  
		Size: 30.3 MB (30293609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4beab62285670d4f11fe161612872e8b2cb371a54309f8859c6011d71c5cec5f`  
		Last Modified: Wed, 23 Jan 2019 17:39:43 GMT  
		Size: 4.9 MB (4918269 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae7c4fc32096b51d19f2d53df33abacab66352a20679a153ab30903a30a3d19a`  
		Last Modified: Wed, 23 Jan 2019 17:40:26 GMT  
		Size: 28.0 MB (27990088 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
