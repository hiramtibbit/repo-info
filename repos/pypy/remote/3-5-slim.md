## `pypy:3-5-slim`

```console
$ docker pull pypy@sha256:6e0cde89598aac0eed3ad974507f6d911ceb552e94af34854d963755c65d2411
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-5-slim` - linux; amd64

```console
$ docker pull pypy@sha256:6b53eb2f516ca438a887b8293e2ba4e2e5ce87c7354a1b63b1024787d1f4e020
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.1 MB (280063600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a139d98e563425ace2a335572f1f1cd20ef647a8854e1200ad9aa8ea251d226c`
-	Default Command: `["pypy3"]`

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
# Tue, 27 Mar 2018 03:38:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 27 Mar 2018 03:39:47 GMT
ENV PYPY_VERSION=5.10.1
# Tue, 27 Mar 2018 03:39:47 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 27 Mar 2018 03:40:23 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='75a276e1ee1863967bbacb70c5bff636de200768c0ec90e72f7ec17aace0aefe' ;; 		armel) pypyArch='linux-armel'; sha256='5065e9ad958d06b9612ba974f43997d20168d4245c054dd43270e4b458782282' ;; 		i386) pypyArch='linux32'; sha256='a6ceca9ee5dc511de7902164464b88311fec9366c5673d0c00528eda862bbe54' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 27 Mar 2018 03:40:24 GMT
CMD ["pypy3"]
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
	-	`sha256:0e80c47037732b90842bc64781ed8eea63d046c69954bae575214987fdcae276`  
		Last Modified: Tue, 27 Mar 2018 03:50:31 GMT  
		Size: 2.4 KB (2412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2213a9fb7bded59c5e65f3902cb4a5392ac7064a4a847e14391a370f71f2ffa`  
		Last Modified: Tue, 27 Mar 2018 04:01:02 GMT  
		Size: 33.9 MB (33854958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-5-slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:0c2332a57c5309aca597ab3bd359f18386a7ec5f5882075da62e625914bb3cae
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62748478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4685daf8e2210f45743ba263fa09cc9fc84c085d1440576f30ea674fe792d55c`
-	Default Command: `["pypy3"]`

```dockerfile
# Wed, 14 Mar 2018 19:56:16 GMT
ADD file:ad47a4b810086b191c8c574897e3b299d645a336566cb3c716b17f3e35fbf87d in / 
# Wed, 14 Mar 2018 19:56:16 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 23:25:24 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 23:25:24 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 23:35:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 23:36:41 GMT
ENV PYPY_VERSION=5.10.1
# Wed, 14 Mar 2018 23:36:42 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 14 Mar 2018 23:37:50 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='75a276e1ee1863967bbacb70c5bff636de200768c0ec90e72f7ec17aace0aefe' ;; 		armel) pypyArch='linux-armel'; sha256='5065e9ad958d06b9612ba974f43997d20168d4245c054dd43270e4b458782282' ;; 		i386) pypyArch='linux32'; sha256='a6ceca9ee5dc511de7902164464b88311fec9366c5673d0c00528eda862bbe54' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Mar 2018 23:37:50 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:16d1ef8f2728e0194f717016e924d03797379be56a8cd4bbdea8d983641afa9a`  
		Last Modified: Wed, 14 Mar 2018 20:07:34 GMT  
		Size: 28.4 MB (28430822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4544ac1d25ccdd64da88d6fc48e43bf7dacd1a73c96ab89309daff9e107ad7c7`  
		Last Modified: Wed, 14 Mar 2018 23:38:10 GMT  
		Size: 2.6 MB (2608020 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2515107011641b689ef2d37015db3d1243b56eb47f8ab73bfdc1eeb238af95d2`  
		Last Modified: Wed, 14 Mar 2018 23:39:20 GMT  
		Size: 31.7 MB (31709636 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-5-slim` - linux; 386

```console
$ docker pull pypy@sha256:7cd5e173a063b330b815f944f058f3d17a342cc48784a9b4c52266176124c823
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.9 MB (65933853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c179daab6edd87704a435d77cc9f93306513291b012650de86d224653d94fc6e`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 15 Feb 2018 15:10:21 GMT
ADD file:d01127592c252b8d04a3bc643ddd1053a3e9cd036c81aa31b53bf3f51b542f6a in / 
# Thu, 15 Feb 2018 15:10:21 GMT
CMD ["bash"]
# Mon, 19 Feb 2018 18:58:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 19 Feb 2018 18:58:50 GMT
ENV LANG=C.UTF-8
# Wed, 21 Feb 2018 02:25:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 02:42:55 GMT
ENV PYPY_VERSION=5.10.1
# Wed, 21 Feb 2018 02:42:55 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 21 Feb 2018 02:43:55 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='75a276e1ee1863967bbacb70c5bff636de200768c0ec90e72f7ec17aace0aefe' ;; 		armel) pypyArch='linux-armel'; sha256='5065e9ad958d06b9612ba974f43997d20168d4245c054dd43270e4b458782282' ;; 		i386) pypyArch='linux32'; sha256='a6ceca9ee5dc511de7902164464b88311fec9366c5673d0c00528eda862bbe54' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 21 Feb 2018 02:43:55 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:2c3a67c6c38b2cc7ef92c7d27dfe86398e5a7297b5b0e03d825a82312b60bf9a`  
		Last Modified: Thu, 15 Feb 2018 00:53:43 GMT  
		Size: 30.3 MB (30273198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10dfbfa132919f23984f266d5a8e6b83b62f425e2de7f21a98ea6911261eea51`  
		Last Modified: Wed, 21 Feb 2018 02:49:23 GMT  
		Size: 5.0 MB (4957788 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:697879d83c1cdcf19d293d06c1cddc1deb95ee285d380a8eb05158784d99e1bb`  
		Last Modified: Wed, 21 Feb 2018 02:55:43 GMT  
		Size: 30.7 MB (30702867 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
