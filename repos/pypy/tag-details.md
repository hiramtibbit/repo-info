<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `pypy`

-	[`pypy:2`](#pypy2)
-	[`pypy:2-5`](#pypy2-5)
-	[`pypy:2-5.10`](#pypy2-510)
-	[`pypy:2-5.10.0`](#pypy2-5100)
-	[`pypy:2-5.10.0-slim`](#pypy2-5100-slim)
-	[`pypy:2-5.10-slim`](#pypy2-510-slim)
-	[`pypy:2-5-slim`](#pypy2-5-slim)
-	[`pypy:2-slim`](#pypy2-slim)
-	[`pypy:3`](#pypy3)
-	[`pypy:3-5`](#pypy3-5)
-	[`pypy:3-5.10`](#pypy3-510)
-	[`pypy:3-5.10.1`](#pypy3-5101)
-	[`pypy:3-5.10.1-slim`](#pypy3-5101-slim)
-	[`pypy:3-5.10-slim`](#pypy3-510-slim)
-	[`pypy:3-5-slim`](#pypy3-5-slim)
-	[`pypy:3-slim`](#pypy3-slim)
-	[`pypy:latest`](#pypylatest)
-	[`pypy:slim`](#pypyslim)

## `pypy:2`

```console
$ docker pull pypy@sha256:f61ba9b33412ac940e2278b3dcbed2d17689fff59faff06b45cb05c79dda4c00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2` - linux; amd64

```console
$ docker pull pypy@sha256:8b1bfb80030d82cb885ffee54ee4fb3118998c588e4c108b08819ca29df0bd36
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.8 MB (285811514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e2b673175507ad10512b74a162e7ad576318d73c41339f2bb459e96cfa2c1a2`
-	Default Command: `["pypy"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 07:01:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 07:01:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Feb 2018 07:02:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 07:04:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 09:31:14 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Feb 2018 09:31:15 GMT
ENV LANG=C.UTF-8
# Sat, 17 Feb 2018 09:31:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 14:34:27 GMT
ENV PYPY_VERSION=5.10.0
# Sat, 17 Feb 2018 14:34:28 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Sat, 17 Feb 2018 14:34:38 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='da85af9240220179493ad66c857934dc7ea91aef8f168cd293a2d99af8346ee2' ;; 		armel) pypyArch='linux-armel'; sha256='6fdd55dd8f674efd06f76edb60a09a03b9b04a5fbc56741f416a94a0b9d2ff91' ;; 		i386) pypyArch='linux32'; sha256='ee1980467ac8cc9fa9d609f7da93c5282503e59a548781248fe1914a7199d540' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Sat, 17 Feb 2018 14:34:46 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Sat, 17 Feb 2018 14:34:46 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851356ecf618f41550b3b8696fb9aad7925f72929c8345453107cce510437608`  
		Last Modified: Sat, 17 Feb 2018 07:15:16 GMT  
		Size: 19.3 MB (19266391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6115379c7b49daf7b059dd310633130d93a983b52ee50146295b3963a6c30f11`  
		Last Modified: Sat, 17 Feb 2018 07:15:56 GMT  
		Size: 43.3 MB (43254368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf7d781d6016dbad458f06bc6caae035c792278a8ccddbf7f0234621f1ef476`  
		Last Modified: Sat, 17 Feb 2018 07:16:34 GMT  
		Size: 135.0 MB (134962018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cf661a3cc4f2977407d1441b0f4b9ff98871c3edfef46db85f595cc5664147`  
		Last Modified: Sat, 17 Feb 2018 09:54:30 GMT  
		Size: 3.2 MB (3167714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4c5361383ef9e15afd940c621564c6ec04470b9d4cc15bec0fd9b4511402914`  
		Last Modified: Sat, 17 Feb 2018 14:36:05 GMT  
		Size: 28.8 MB (28832499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2f62987dc6548ff2efcc1240f346035b415a9d82e4bee13fd1c3c0a28c7235`  
		Last Modified: Sat, 17 Feb 2018 14:35:59 GMT  
		Size: 3.7 MB (3720239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2` - linux; arm variant v5

```console
$ docker pull pypy@sha256:87e6ca2e79d4b9a5d7f36cf3fcc1dd6937b2ee4c1eb8a949e6bc44df40a3ebf8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.9 MB (259942237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34c5df4a3038cb2e1460f8bdaaf1de6d20ab3cfe5f736109a489aade1284f999`
-	Default Command: `["pypy"]`

```dockerfile
# Thu, 15 Feb 2018 20:55:58 GMT
ADD file:1a16d6f6cb75aeb553c6b7777d0056b1a68f89295b25c0225c65c2e7dcac08e3 in / 
# Thu, 15 Feb 2018 20:55:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:36:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:36:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 21:37:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:39:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:24:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 22:24:42 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:25:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:25:12 GMT
ENV PYPY_VERSION=5.10.0
# Thu, 15 Feb 2018 22:25:13 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 15 Feb 2018 22:25:23 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='da85af9240220179493ad66c857934dc7ea91aef8f168cd293a2d99af8346ee2' ;; 		armel) pypyArch='linux-armel'; sha256='6fdd55dd8f674efd06f76edb60a09a03b9b04a5fbc56741f416a94a0b9d2ff91' ;; 		i386) pypyArch='linux32'; sha256='ee1980467ac8cc9fa9d609f7da93c5282503e59a548781248fe1914a7199d540' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Thu, 15 Feb 2018 22:25:46 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 15 Feb 2018 22:25:47 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:75ec46627298b11174762e9bae59bb036d4f3bfaace1da7614a2eb4881ed97d4`  
		Last Modified: Thu, 15 Feb 2018 21:04:30 GMT  
		Size: 50.9 MB (50889623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c8b3b6723ff243d07e7b92517f1477b51d94f85c82714a48e51f6fe07a4c155`  
		Last Modified: Thu, 15 Feb 2018 21:50:38 GMT  
		Size: 18.7 MB (18657025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890e801f2b1fd5e38e9d6c4334424fd5f0b74d1fe41de2e706f20b4ac7c4e4f5`  
		Last Modified: Thu, 15 Feb 2018 21:51:05 GMT  
		Size: 41.1 MB (41102481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b536c6beca50f18e852c25fcc62150d80f257111216bb088f571786ce141bd7c`  
		Last Modified: Thu, 15 Feb 2018 21:52:07 GMT  
		Size: 115.7 MB (115744130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67e3d3efeecb65817a2aadd52dab2cf6fcb7c8c26a45a2fe4e919f412260748`  
		Last Modified: Thu, 15 Feb 2018 22:31:05 GMT  
		Size: 3.0 MB (3020530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2ac615d6d8e80f6fcdfa622921c51bc0e6a8c4ba01c9359e57df72ecd61c2bb`  
		Last Modified: Thu, 15 Feb 2018 22:31:14 GMT  
		Size: 26.8 MB (26807511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fec97e4eca795a594adf2cafdeec1dff946d6f0c9831503254a456d0128288d`  
		Last Modified: Thu, 15 Feb 2018 22:31:06 GMT  
		Size: 3.7 MB (3720937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2` - linux; 386

```console
$ docker pull pypy@sha256:03c1943e1b1a407e58e54d9dc013e1e5f06ae4822a5b1b7e4f3f3d82b51ce1f4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.6 MB (286607482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2893de175952f57a3ebdf11c80a4ff2a12baeaea384749d924fee4b9c96189ca`
-	Default Command: `["pypy"]`

```dockerfile
# Thu, 15 Feb 2018 14:52:22 GMT
ADD file:70b1b536b382f6ba9443ccb8fb1cb7156dd4952a194d4a232be4756ce973c27b in / 
# Thu, 15 Feb 2018 14:52:23 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 03:00:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 03:00:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 21 Feb 2018 03:16:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 03:27:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 14:33:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Feb 2018 14:33:01 GMT
ENV LANG=C.UTF-8
# Wed, 21 Feb 2018 14:33:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 04:53:08 GMT
ENV PYPY_VERSION=5.10.0
# Fri, 23 Feb 2018 04:53:08 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 23 Feb 2018 04:53:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='da85af9240220179493ad66c857934dc7ea91aef8f168cd293a2d99af8346ee2' ;; 		armel) pypyArch='linux-armel'; sha256='6fdd55dd8f674efd06f76edb60a09a03b9b04a5fbc56741f416a94a0b9d2ff91' ;; 		i386) pypyArch='linux32'; sha256='ee1980467ac8cc9fa9d609f7da93c5282503e59a548781248fe1914a7199d540' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Fri, 23 Feb 2018 04:53:29 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 23 Feb 2018 04:53:29 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:d854f909180418fb64a87463d4061a8a8cac25c45b4fb7bc2f1e14f7332ecd7a`  
		Last Modified: Thu, 15 Feb 2018 00:53:24 GMT  
		Size: 52.8 MB (52787712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe088a75e7978249fc7a95a7cf2ca376d731a0d2111f1d3916d26cb1927c6e9`  
		Last Modified: Wed, 21 Feb 2018 03:40:19 GMT  
		Size: 21.6 MB (21596403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd70dd1a7c6239809d32e4f2882d0e41d01b88b5806c3e12165c5739c407b146`  
		Last Modified: Wed, 21 Feb 2018 03:48:18 GMT  
		Size: 43.9 MB (43918382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1518141bb083cd4da04a36a73324ae5d8ee4013c93e2d6381d322d3dfb95d5`  
		Last Modified: Wed, 21 Feb 2018 03:56:56 GMT  
		Size: 135.8 MB (135766235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92caab36e32dfc820eae0fa24669e3de6b706f70d12bd046e1eed0debce94dc3`  
		Last Modified: Wed, 21 Feb 2018 15:54:43 GMT  
		Size: 3.3 MB (3272385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0bbb693ff4403c61551862227ff83105c74462c16d5f16b0c1e4981eb539b2c`  
		Last Modified: Fri, 23 Feb 2018 05:17:28 GMT  
		Size: 25.5 MB (25545979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcab8acae85938f88abe8f2845ddcba792cd5c6280262023ebb82cee5eb3ad30`  
		Last Modified: Fri, 23 Feb 2018 05:17:18 GMT  
		Size: 3.7 MB (3720386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5`

```console
$ docker pull pypy@sha256:f61ba9b33412ac940e2278b3dcbed2d17689fff59faff06b45cb05c79dda4c00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-5` - linux; amd64

```console
$ docker pull pypy@sha256:8b1bfb80030d82cb885ffee54ee4fb3118998c588e4c108b08819ca29df0bd36
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.8 MB (285811514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e2b673175507ad10512b74a162e7ad576318d73c41339f2bb459e96cfa2c1a2`
-	Default Command: `["pypy"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 07:01:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 07:01:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Feb 2018 07:02:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 07:04:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 09:31:14 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Feb 2018 09:31:15 GMT
ENV LANG=C.UTF-8
# Sat, 17 Feb 2018 09:31:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 14:34:27 GMT
ENV PYPY_VERSION=5.10.0
# Sat, 17 Feb 2018 14:34:28 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Sat, 17 Feb 2018 14:34:38 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='da85af9240220179493ad66c857934dc7ea91aef8f168cd293a2d99af8346ee2' ;; 		armel) pypyArch='linux-armel'; sha256='6fdd55dd8f674efd06f76edb60a09a03b9b04a5fbc56741f416a94a0b9d2ff91' ;; 		i386) pypyArch='linux32'; sha256='ee1980467ac8cc9fa9d609f7da93c5282503e59a548781248fe1914a7199d540' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Sat, 17 Feb 2018 14:34:46 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Sat, 17 Feb 2018 14:34:46 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851356ecf618f41550b3b8696fb9aad7925f72929c8345453107cce510437608`  
		Last Modified: Sat, 17 Feb 2018 07:15:16 GMT  
		Size: 19.3 MB (19266391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6115379c7b49daf7b059dd310633130d93a983b52ee50146295b3963a6c30f11`  
		Last Modified: Sat, 17 Feb 2018 07:15:56 GMT  
		Size: 43.3 MB (43254368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf7d781d6016dbad458f06bc6caae035c792278a8ccddbf7f0234621f1ef476`  
		Last Modified: Sat, 17 Feb 2018 07:16:34 GMT  
		Size: 135.0 MB (134962018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cf661a3cc4f2977407d1441b0f4b9ff98871c3edfef46db85f595cc5664147`  
		Last Modified: Sat, 17 Feb 2018 09:54:30 GMT  
		Size: 3.2 MB (3167714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4c5361383ef9e15afd940c621564c6ec04470b9d4cc15bec0fd9b4511402914`  
		Last Modified: Sat, 17 Feb 2018 14:36:05 GMT  
		Size: 28.8 MB (28832499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2f62987dc6548ff2efcc1240f346035b415a9d82e4bee13fd1c3c0a28c7235`  
		Last Modified: Sat, 17 Feb 2018 14:35:59 GMT  
		Size: 3.7 MB (3720239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5` - linux; arm variant v5

```console
$ docker pull pypy@sha256:87e6ca2e79d4b9a5d7f36cf3fcc1dd6937b2ee4c1eb8a949e6bc44df40a3ebf8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.9 MB (259942237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34c5df4a3038cb2e1460f8bdaaf1de6d20ab3cfe5f736109a489aade1284f999`
-	Default Command: `["pypy"]`

```dockerfile
# Thu, 15 Feb 2018 20:55:58 GMT
ADD file:1a16d6f6cb75aeb553c6b7777d0056b1a68f89295b25c0225c65c2e7dcac08e3 in / 
# Thu, 15 Feb 2018 20:55:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:36:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:36:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 21:37:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:39:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:24:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 22:24:42 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:25:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:25:12 GMT
ENV PYPY_VERSION=5.10.0
# Thu, 15 Feb 2018 22:25:13 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 15 Feb 2018 22:25:23 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='da85af9240220179493ad66c857934dc7ea91aef8f168cd293a2d99af8346ee2' ;; 		armel) pypyArch='linux-armel'; sha256='6fdd55dd8f674efd06f76edb60a09a03b9b04a5fbc56741f416a94a0b9d2ff91' ;; 		i386) pypyArch='linux32'; sha256='ee1980467ac8cc9fa9d609f7da93c5282503e59a548781248fe1914a7199d540' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Thu, 15 Feb 2018 22:25:46 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 15 Feb 2018 22:25:47 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:75ec46627298b11174762e9bae59bb036d4f3bfaace1da7614a2eb4881ed97d4`  
		Last Modified: Thu, 15 Feb 2018 21:04:30 GMT  
		Size: 50.9 MB (50889623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c8b3b6723ff243d07e7b92517f1477b51d94f85c82714a48e51f6fe07a4c155`  
		Last Modified: Thu, 15 Feb 2018 21:50:38 GMT  
		Size: 18.7 MB (18657025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890e801f2b1fd5e38e9d6c4334424fd5f0b74d1fe41de2e706f20b4ac7c4e4f5`  
		Last Modified: Thu, 15 Feb 2018 21:51:05 GMT  
		Size: 41.1 MB (41102481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b536c6beca50f18e852c25fcc62150d80f257111216bb088f571786ce141bd7c`  
		Last Modified: Thu, 15 Feb 2018 21:52:07 GMT  
		Size: 115.7 MB (115744130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67e3d3efeecb65817a2aadd52dab2cf6fcb7c8c26a45a2fe4e919f412260748`  
		Last Modified: Thu, 15 Feb 2018 22:31:05 GMT  
		Size: 3.0 MB (3020530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2ac615d6d8e80f6fcdfa622921c51bc0e6a8c4ba01c9359e57df72ecd61c2bb`  
		Last Modified: Thu, 15 Feb 2018 22:31:14 GMT  
		Size: 26.8 MB (26807511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fec97e4eca795a594adf2cafdeec1dff946d6f0c9831503254a456d0128288d`  
		Last Modified: Thu, 15 Feb 2018 22:31:06 GMT  
		Size: 3.7 MB (3720937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5` - linux; 386

```console
$ docker pull pypy@sha256:03c1943e1b1a407e58e54d9dc013e1e5f06ae4822a5b1b7e4f3f3d82b51ce1f4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.6 MB (286607482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2893de175952f57a3ebdf11c80a4ff2a12baeaea384749d924fee4b9c96189ca`
-	Default Command: `["pypy"]`

```dockerfile
# Thu, 15 Feb 2018 14:52:22 GMT
ADD file:70b1b536b382f6ba9443ccb8fb1cb7156dd4952a194d4a232be4756ce973c27b in / 
# Thu, 15 Feb 2018 14:52:23 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 03:00:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 03:00:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 21 Feb 2018 03:16:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 03:27:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 14:33:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Feb 2018 14:33:01 GMT
ENV LANG=C.UTF-8
# Wed, 21 Feb 2018 14:33:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 04:53:08 GMT
ENV PYPY_VERSION=5.10.0
# Fri, 23 Feb 2018 04:53:08 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 23 Feb 2018 04:53:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='da85af9240220179493ad66c857934dc7ea91aef8f168cd293a2d99af8346ee2' ;; 		armel) pypyArch='linux-armel'; sha256='6fdd55dd8f674efd06f76edb60a09a03b9b04a5fbc56741f416a94a0b9d2ff91' ;; 		i386) pypyArch='linux32'; sha256='ee1980467ac8cc9fa9d609f7da93c5282503e59a548781248fe1914a7199d540' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Fri, 23 Feb 2018 04:53:29 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 23 Feb 2018 04:53:29 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:d854f909180418fb64a87463d4061a8a8cac25c45b4fb7bc2f1e14f7332ecd7a`  
		Last Modified: Thu, 15 Feb 2018 00:53:24 GMT  
		Size: 52.8 MB (52787712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe088a75e7978249fc7a95a7cf2ca376d731a0d2111f1d3916d26cb1927c6e9`  
		Last Modified: Wed, 21 Feb 2018 03:40:19 GMT  
		Size: 21.6 MB (21596403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd70dd1a7c6239809d32e4f2882d0e41d01b88b5806c3e12165c5739c407b146`  
		Last Modified: Wed, 21 Feb 2018 03:48:18 GMT  
		Size: 43.9 MB (43918382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1518141bb083cd4da04a36a73324ae5d8ee4013c93e2d6381d322d3dfb95d5`  
		Last Modified: Wed, 21 Feb 2018 03:56:56 GMT  
		Size: 135.8 MB (135766235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92caab36e32dfc820eae0fa24669e3de6b706f70d12bd046e1eed0debce94dc3`  
		Last Modified: Wed, 21 Feb 2018 15:54:43 GMT  
		Size: 3.3 MB (3272385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0bbb693ff4403c61551862227ff83105c74462c16d5f16b0c1e4981eb539b2c`  
		Last Modified: Fri, 23 Feb 2018 05:17:28 GMT  
		Size: 25.5 MB (25545979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcab8acae85938f88abe8f2845ddcba792cd5c6280262023ebb82cee5eb3ad30`  
		Last Modified: Fri, 23 Feb 2018 05:17:18 GMT  
		Size: 3.7 MB (3720386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.10`

```console
$ docker pull pypy@sha256:f61ba9b33412ac940e2278b3dcbed2d17689fff59faff06b45cb05c79dda4c00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-5.10` - linux; amd64

```console
$ docker pull pypy@sha256:8b1bfb80030d82cb885ffee54ee4fb3118998c588e4c108b08819ca29df0bd36
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.8 MB (285811514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e2b673175507ad10512b74a162e7ad576318d73c41339f2bb459e96cfa2c1a2`
-	Default Command: `["pypy"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 07:01:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 07:01:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Feb 2018 07:02:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 07:04:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 09:31:14 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Feb 2018 09:31:15 GMT
ENV LANG=C.UTF-8
# Sat, 17 Feb 2018 09:31:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 14:34:27 GMT
ENV PYPY_VERSION=5.10.0
# Sat, 17 Feb 2018 14:34:28 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Sat, 17 Feb 2018 14:34:38 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='da85af9240220179493ad66c857934dc7ea91aef8f168cd293a2d99af8346ee2' ;; 		armel) pypyArch='linux-armel'; sha256='6fdd55dd8f674efd06f76edb60a09a03b9b04a5fbc56741f416a94a0b9d2ff91' ;; 		i386) pypyArch='linux32'; sha256='ee1980467ac8cc9fa9d609f7da93c5282503e59a548781248fe1914a7199d540' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Sat, 17 Feb 2018 14:34:46 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Sat, 17 Feb 2018 14:34:46 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851356ecf618f41550b3b8696fb9aad7925f72929c8345453107cce510437608`  
		Last Modified: Sat, 17 Feb 2018 07:15:16 GMT  
		Size: 19.3 MB (19266391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6115379c7b49daf7b059dd310633130d93a983b52ee50146295b3963a6c30f11`  
		Last Modified: Sat, 17 Feb 2018 07:15:56 GMT  
		Size: 43.3 MB (43254368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf7d781d6016dbad458f06bc6caae035c792278a8ccddbf7f0234621f1ef476`  
		Last Modified: Sat, 17 Feb 2018 07:16:34 GMT  
		Size: 135.0 MB (134962018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cf661a3cc4f2977407d1441b0f4b9ff98871c3edfef46db85f595cc5664147`  
		Last Modified: Sat, 17 Feb 2018 09:54:30 GMT  
		Size: 3.2 MB (3167714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4c5361383ef9e15afd940c621564c6ec04470b9d4cc15bec0fd9b4511402914`  
		Last Modified: Sat, 17 Feb 2018 14:36:05 GMT  
		Size: 28.8 MB (28832499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2f62987dc6548ff2efcc1240f346035b415a9d82e4bee13fd1c3c0a28c7235`  
		Last Modified: Sat, 17 Feb 2018 14:35:59 GMT  
		Size: 3.7 MB (3720239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5.10` - linux; arm variant v5

```console
$ docker pull pypy@sha256:87e6ca2e79d4b9a5d7f36cf3fcc1dd6937b2ee4c1eb8a949e6bc44df40a3ebf8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.9 MB (259942237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34c5df4a3038cb2e1460f8bdaaf1de6d20ab3cfe5f736109a489aade1284f999`
-	Default Command: `["pypy"]`

```dockerfile
# Thu, 15 Feb 2018 20:55:58 GMT
ADD file:1a16d6f6cb75aeb553c6b7777d0056b1a68f89295b25c0225c65c2e7dcac08e3 in / 
# Thu, 15 Feb 2018 20:55:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:36:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:36:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 21:37:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:39:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:24:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 22:24:42 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:25:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:25:12 GMT
ENV PYPY_VERSION=5.10.0
# Thu, 15 Feb 2018 22:25:13 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 15 Feb 2018 22:25:23 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='da85af9240220179493ad66c857934dc7ea91aef8f168cd293a2d99af8346ee2' ;; 		armel) pypyArch='linux-armel'; sha256='6fdd55dd8f674efd06f76edb60a09a03b9b04a5fbc56741f416a94a0b9d2ff91' ;; 		i386) pypyArch='linux32'; sha256='ee1980467ac8cc9fa9d609f7da93c5282503e59a548781248fe1914a7199d540' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Thu, 15 Feb 2018 22:25:46 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 15 Feb 2018 22:25:47 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:75ec46627298b11174762e9bae59bb036d4f3bfaace1da7614a2eb4881ed97d4`  
		Last Modified: Thu, 15 Feb 2018 21:04:30 GMT  
		Size: 50.9 MB (50889623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c8b3b6723ff243d07e7b92517f1477b51d94f85c82714a48e51f6fe07a4c155`  
		Last Modified: Thu, 15 Feb 2018 21:50:38 GMT  
		Size: 18.7 MB (18657025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890e801f2b1fd5e38e9d6c4334424fd5f0b74d1fe41de2e706f20b4ac7c4e4f5`  
		Last Modified: Thu, 15 Feb 2018 21:51:05 GMT  
		Size: 41.1 MB (41102481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b536c6beca50f18e852c25fcc62150d80f257111216bb088f571786ce141bd7c`  
		Last Modified: Thu, 15 Feb 2018 21:52:07 GMT  
		Size: 115.7 MB (115744130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67e3d3efeecb65817a2aadd52dab2cf6fcb7c8c26a45a2fe4e919f412260748`  
		Last Modified: Thu, 15 Feb 2018 22:31:05 GMT  
		Size: 3.0 MB (3020530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2ac615d6d8e80f6fcdfa622921c51bc0e6a8c4ba01c9359e57df72ecd61c2bb`  
		Last Modified: Thu, 15 Feb 2018 22:31:14 GMT  
		Size: 26.8 MB (26807511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fec97e4eca795a594adf2cafdeec1dff946d6f0c9831503254a456d0128288d`  
		Last Modified: Thu, 15 Feb 2018 22:31:06 GMT  
		Size: 3.7 MB (3720937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5.10` - linux; 386

```console
$ docker pull pypy@sha256:03c1943e1b1a407e58e54d9dc013e1e5f06ae4822a5b1b7e4f3f3d82b51ce1f4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.6 MB (286607482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2893de175952f57a3ebdf11c80a4ff2a12baeaea384749d924fee4b9c96189ca`
-	Default Command: `["pypy"]`

```dockerfile
# Thu, 15 Feb 2018 14:52:22 GMT
ADD file:70b1b536b382f6ba9443ccb8fb1cb7156dd4952a194d4a232be4756ce973c27b in / 
# Thu, 15 Feb 2018 14:52:23 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 03:00:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 03:00:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 21 Feb 2018 03:16:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 03:27:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 14:33:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Feb 2018 14:33:01 GMT
ENV LANG=C.UTF-8
# Wed, 21 Feb 2018 14:33:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 04:53:08 GMT
ENV PYPY_VERSION=5.10.0
# Fri, 23 Feb 2018 04:53:08 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 23 Feb 2018 04:53:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='da85af9240220179493ad66c857934dc7ea91aef8f168cd293a2d99af8346ee2' ;; 		armel) pypyArch='linux-armel'; sha256='6fdd55dd8f674efd06f76edb60a09a03b9b04a5fbc56741f416a94a0b9d2ff91' ;; 		i386) pypyArch='linux32'; sha256='ee1980467ac8cc9fa9d609f7da93c5282503e59a548781248fe1914a7199d540' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Fri, 23 Feb 2018 04:53:29 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 23 Feb 2018 04:53:29 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:d854f909180418fb64a87463d4061a8a8cac25c45b4fb7bc2f1e14f7332ecd7a`  
		Last Modified: Thu, 15 Feb 2018 00:53:24 GMT  
		Size: 52.8 MB (52787712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe088a75e7978249fc7a95a7cf2ca376d731a0d2111f1d3916d26cb1927c6e9`  
		Last Modified: Wed, 21 Feb 2018 03:40:19 GMT  
		Size: 21.6 MB (21596403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd70dd1a7c6239809d32e4f2882d0e41d01b88b5806c3e12165c5739c407b146`  
		Last Modified: Wed, 21 Feb 2018 03:48:18 GMT  
		Size: 43.9 MB (43918382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1518141bb083cd4da04a36a73324ae5d8ee4013c93e2d6381d322d3dfb95d5`  
		Last Modified: Wed, 21 Feb 2018 03:56:56 GMT  
		Size: 135.8 MB (135766235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92caab36e32dfc820eae0fa24669e3de6b706f70d12bd046e1eed0debce94dc3`  
		Last Modified: Wed, 21 Feb 2018 15:54:43 GMT  
		Size: 3.3 MB (3272385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0bbb693ff4403c61551862227ff83105c74462c16d5f16b0c1e4981eb539b2c`  
		Last Modified: Fri, 23 Feb 2018 05:17:28 GMT  
		Size: 25.5 MB (25545979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcab8acae85938f88abe8f2845ddcba792cd5c6280262023ebb82cee5eb3ad30`  
		Last Modified: Fri, 23 Feb 2018 05:17:18 GMT  
		Size: 3.7 MB (3720386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.10.0`

```console
$ docker pull pypy@sha256:f61ba9b33412ac940e2278b3dcbed2d17689fff59faff06b45cb05c79dda4c00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-5.10.0` - linux; amd64

```console
$ docker pull pypy@sha256:8b1bfb80030d82cb885ffee54ee4fb3118998c588e4c108b08819ca29df0bd36
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.8 MB (285811514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e2b673175507ad10512b74a162e7ad576318d73c41339f2bb459e96cfa2c1a2`
-	Default Command: `["pypy"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 07:01:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 07:01:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Feb 2018 07:02:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 07:04:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 09:31:14 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Feb 2018 09:31:15 GMT
ENV LANG=C.UTF-8
# Sat, 17 Feb 2018 09:31:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 14:34:27 GMT
ENV PYPY_VERSION=5.10.0
# Sat, 17 Feb 2018 14:34:28 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Sat, 17 Feb 2018 14:34:38 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='da85af9240220179493ad66c857934dc7ea91aef8f168cd293a2d99af8346ee2' ;; 		armel) pypyArch='linux-armel'; sha256='6fdd55dd8f674efd06f76edb60a09a03b9b04a5fbc56741f416a94a0b9d2ff91' ;; 		i386) pypyArch='linux32'; sha256='ee1980467ac8cc9fa9d609f7da93c5282503e59a548781248fe1914a7199d540' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Sat, 17 Feb 2018 14:34:46 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Sat, 17 Feb 2018 14:34:46 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851356ecf618f41550b3b8696fb9aad7925f72929c8345453107cce510437608`  
		Last Modified: Sat, 17 Feb 2018 07:15:16 GMT  
		Size: 19.3 MB (19266391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6115379c7b49daf7b059dd310633130d93a983b52ee50146295b3963a6c30f11`  
		Last Modified: Sat, 17 Feb 2018 07:15:56 GMT  
		Size: 43.3 MB (43254368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf7d781d6016dbad458f06bc6caae035c792278a8ccddbf7f0234621f1ef476`  
		Last Modified: Sat, 17 Feb 2018 07:16:34 GMT  
		Size: 135.0 MB (134962018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cf661a3cc4f2977407d1441b0f4b9ff98871c3edfef46db85f595cc5664147`  
		Last Modified: Sat, 17 Feb 2018 09:54:30 GMT  
		Size: 3.2 MB (3167714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4c5361383ef9e15afd940c621564c6ec04470b9d4cc15bec0fd9b4511402914`  
		Last Modified: Sat, 17 Feb 2018 14:36:05 GMT  
		Size: 28.8 MB (28832499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd2f62987dc6548ff2efcc1240f346035b415a9d82e4bee13fd1c3c0a28c7235`  
		Last Modified: Sat, 17 Feb 2018 14:35:59 GMT  
		Size: 3.7 MB (3720239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5.10.0` - linux; arm variant v5

```console
$ docker pull pypy@sha256:87e6ca2e79d4b9a5d7f36cf3fcc1dd6937b2ee4c1eb8a949e6bc44df40a3ebf8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **259.9 MB (259942237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34c5df4a3038cb2e1460f8bdaaf1de6d20ab3cfe5f736109a489aade1284f999`
-	Default Command: `["pypy"]`

```dockerfile
# Thu, 15 Feb 2018 20:55:58 GMT
ADD file:1a16d6f6cb75aeb553c6b7777d0056b1a68f89295b25c0225c65c2e7dcac08e3 in / 
# Thu, 15 Feb 2018 20:55:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:36:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:36:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 21:37:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:39:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:24:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 22:24:42 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:25:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:25:12 GMT
ENV PYPY_VERSION=5.10.0
# Thu, 15 Feb 2018 22:25:13 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 15 Feb 2018 22:25:23 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='da85af9240220179493ad66c857934dc7ea91aef8f168cd293a2d99af8346ee2' ;; 		armel) pypyArch='linux-armel'; sha256='6fdd55dd8f674efd06f76edb60a09a03b9b04a5fbc56741f416a94a0b9d2ff91' ;; 		i386) pypyArch='linux32'; sha256='ee1980467ac8cc9fa9d609f7da93c5282503e59a548781248fe1914a7199d540' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Thu, 15 Feb 2018 22:25:46 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 15 Feb 2018 22:25:47 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:75ec46627298b11174762e9bae59bb036d4f3bfaace1da7614a2eb4881ed97d4`  
		Last Modified: Thu, 15 Feb 2018 21:04:30 GMT  
		Size: 50.9 MB (50889623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c8b3b6723ff243d07e7b92517f1477b51d94f85c82714a48e51f6fe07a4c155`  
		Last Modified: Thu, 15 Feb 2018 21:50:38 GMT  
		Size: 18.7 MB (18657025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890e801f2b1fd5e38e9d6c4334424fd5f0b74d1fe41de2e706f20b4ac7c4e4f5`  
		Last Modified: Thu, 15 Feb 2018 21:51:05 GMT  
		Size: 41.1 MB (41102481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b536c6beca50f18e852c25fcc62150d80f257111216bb088f571786ce141bd7c`  
		Last Modified: Thu, 15 Feb 2018 21:52:07 GMT  
		Size: 115.7 MB (115744130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67e3d3efeecb65817a2aadd52dab2cf6fcb7c8c26a45a2fe4e919f412260748`  
		Last Modified: Thu, 15 Feb 2018 22:31:05 GMT  
		Size: 3.0 MB (3020530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2ac615d6d8e80f6fcdfa622921c51bc0e6a8c4ba01c9359e57df72ecd61c2bb`  
		Last Modified: Thu, 15 Feb 2018 22:31:14 GMT  
		Size: 26.8 MB (26807511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6fec97e4eca795a594adf2cafdeec1dff946d6f0c9831503254a456d0128288d`  
		Last Modified: Thu, 15 Feb 2018 22:31:06 GMT  
		Size: 3.7 MB (3720937 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5.10.0` - linux; 386

```console
$ docker pull pypy@sha256:03c1943e1b1a407e58e54d9dc013e1e5f06ae4822a5b1b7e4f3f3d82b51ce1f4
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.6 MB (286607482 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2893de175952f57a3ebdf11c80a4ff2a12baeaea384749d924fee4b9c96189ca`
-	Default Command: `["pypy"]`

```dockerfile
# Thu, 15 Feb 2018 14:52:22 GMT
ADD file:70b1b536b382f6ba9443ccb8fb1cb7156dd4952a194d4a232be4756ce973c27b in / 
# Thu, 15 Feb 2018 14:52:23 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 03:00:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 03:00:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 21 Feb 2018 03:16:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 03:27:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 14:33:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Feb 2018 14:33:01 GMT
ENV LANG=C.UTF-8
# Wed, 21 Feb 2018 14:33:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 04:53:08 GMT
ENV PYPY_VERSION=5.10.0
# Fri, 23 Feb 2018 04:53:08 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 23 Feb 2018 04:53:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='da85af9240220179493ad66c857934dc7ea91aef8f168cd293a2d99af8346ee2' ;; 		armel) pypyArch='linux-armel'; sha256='6fdd55dd8f674efd06f76edb60a09a03b9b04a5fbc56741f416a94a0b9d2ff91' ;; 		i386) pypyArch='linux32'; sha256='ee1980467ac8cc9fa9d609f7da93c5282503e59a548781248fe1914a7199d540' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version
# Fri, 23 Feb 2018 04:53:29 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 23 Feb 2018 04:53:29 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:d854f909180418fb64a87463d4061a8a8cac25c45b4fb7bc2f1e14f7332ecd7a`  
		Last Modified: Thu, 15 Feb 2018 00:53:24 GMT  
		Size: 52.8 MB (52787712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe088a75e7978249fc7a95a7cf2ca376d731a0d2111f1d3916d26cb1927c6e9`  
		Last Modified: Wed, 21 Feb 2018 03:40:19 GMT  
		Size: 21.6 MB (21596403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd70dd1a7c6239809d32e4f2882d0e41d01b88b5806c3e12165c5739c407b146`  
		Last Modified: Wed, 21 Feb 2018 03:48:18 GMT  
		Size: 43.9 MB (43918382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1518141bb083cd4da04a36a73324ae5d8ee4013c93e2d6381d322d3dfb95d5`  
		Last Modified: Wed, 21 Feb 2018 03:56:56 GMT  
		Size: 135.8 MB (135766235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92caab36e32dfc820eae0fa24669e3de6b706f70d12bd046e1eed0debce94dc3`  
		Last Modified: Wed, 21 Feb 2018 15:54:43 GMT  
		Size: 3.3 MB (3272385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0bbb693ff4403c61551862227ff83105c74462c16d5f16b0c1e4981eb539b2c`  
		Last Modified: Fri, 23 Feb 2018 05:17:28 GMT  
		Size: 25.5 MB (25545979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcab8acae85938f88abe8f2845ddcba792cd5c6280262023ebb82cee5eb3ad30`  
		Last Modified: Fri, 23 Feb 2018 05:17:18 GMT  
		Size: 3.7 MB (3720386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.10.0-slim`

```console
$ docker pull pypy@sha256:9ef65c7d3f755ee282188e17fdeecb0b00e0495b9c7f52118bf2a440d67f5089
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-5.10.0-slim` - linux; amd64

```console
$ docker pull pypy@sha256:9f9a63216e678d5e739803670e4e7eaeb7fcaf3a714aee193a1e61cb3a8c13c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65772230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17d53de3cf2cb17a55f3bb48cf1b483ff6540b3117e16ddb3586efe45663483a`
-	Default Command: `["pypy"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:11:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 06:11:31 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 06:11:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:11:52 GMT
ENV PYPY_VERSION=5.10.0
# Thu, 15 Feb 2018 06:11:53 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 15 Feb 2018 06:12:22 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='da85af9240220179493ad66c857934dc7ea91aef8f168cd293a2d99af8346ee2' ;; 		armel) pypyArch='linux-armel'; sha256='6fdd55dd8f674efd06f76edb60a09a03b9b04a5fbc56741f416a94a0b9d2ff91' ;; 		i386) pypyArch='linux32'; sha256='ee1980467ac8cc9fa9d609f7da93c5282503e59a548781248fe1914a7199d540' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 06:12:22 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b61e5722374388c2728810d98e2dc53efdcd51837fb47b62c85007384dc708`  
		Last Modified: Thu, 15 Feb 2018 06:17:37 GMT  
		Size: 2.9 MB (2859641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ecbaaec6f2a329f5291aa1bd0b7955d70921e9890ca00984d9fcec45495fc4e`  
		Last Modified: Thu, 15 Feb 2018 06:17:43 GMT  
		Size: 32.8 MB (32790210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5.10.0-slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:02582c8b77dee9d7769ea403d3202aeb04e622dc183be619b657629dedd00ae0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.8 MB (61805743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:475ab4937783faeb6f3b4c7a4d68710ea61224d811e01648aff53661990a3e97`
-	Default Command: `["pypy"]`

```dockerfile
# Thu, 15 Feb 2018 20:56:30 GMT
ADD file:7590562c1d62ac7d305af7caf8771e09bcbf6d396e4d8d2b66d878327b4d3f52 in / 
# Thu, 15 Feb 2018 20:56:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 22:26:03 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 22:26:03 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:26:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:26:41 GMT
ENV PYPY_VERSION=5.10.0
# Thu, 15 Feb 2018 22:26:41 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 15 Feb 2018 22:27:55 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='da85af9240220179493ad66c857934dc7ea91aef8f168cd293a2d99af8346ee2' ;; 		armel) pypyArch='linux-armel'; sha256='6fdd55dd8f674efd06f76edb60a09a03b9b04a5fbc56741f416a94a0b9d2ff91' ;; 		i386) pypyArch='linux32'; sha256='ee1980467ac8cc9fa9d609f7da93c5282503e59a548781248fe1914a7199d540' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 22:27:55 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:74273dae7ee101471a164eb562356e7b2e60d34be2b15b077b6dae6a9aa063ec`  
		Last Modified: Thu, 15 Feb 2018 21:05:26 GMT  
		Size: 28.4 MB (28430874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf26de43f681a5cf6f3be6e38ca95cb0f9bb0ed6fc82fe8a5596f82741919c1a`  
		Last Modified: Thu, 15 Feb 2018 22:32:01 GMT  
		Size: 2.6 MB (2607990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d199008c3934cfada56a3c064262268ff27dec807a0b3c95afdca3716f0ebc`  
		Last Modified: Thu, 15 Feb 2018 22:32:12 GMT  
		Size: 30.8 MB (30766879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5.10.0-slim` - linux; 386

```console
$ docker pull pypy@sha256:4c308f951878d6dcd871bf617f27b54f6dcd911c3435f3e0e0aaf94f57ac06ee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.7 MB (64742309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6d8346927651b7a18bac4e30b70569ba4f8580144c38a297819c441c1fb60e9`
-	Default Command: `["pypy"]`

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
# Wed, 21 Feb 2018 02:25:25 GMT
ENV PYPY_VERSION=5.10.0
# Wed, 21 Feb 2018 02:25:25 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 21 Feb 2018 02:26:26 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='da85af9240220179493ad66c857934dc7ea91aef8f168cd293a2d99af8346ee2' ;; 		armel) pypyArch='linux-armel'; sha256='6fdd55dd8f674efd06f76edb60a09a03b9b04a5fbc56741f416a94a0b9d2ff91' ;; 		i386) pypyArch='linux32'; sha256='ee1980467ac8cc9fa9d609f7da93c5282503e59a548781248fe1914a7199d540' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 21 Feb 2018 02:26:26 GMT
CMD ["pypy"]
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
	-	`sha256:6a60ab5dcc15a2091b3c8122ca4973bcc3361e0e45fee42cbb19991658c7d1c8`  
		Last Modified: Wed, 21 Feb 2018 02:49:38 GMT  
		Size: 29.5 MB (29511323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5.10-slim`

```console
$ docker pull pypy@sha256:9ef65c7d3f755ee282188e17fdeecb0b00e0495b9c7f52118bf2a440d67f5089
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-5.10-slim` - linux; amd64

```console
$ docker pull pypy@sha256:9f9a63216e678d5e739803670e4e7eaeb7fcaf3a714aee193a1e61cb3a8c13c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65772230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17d53de3cf2cb17a55f3bb48cf1b483ff6540b3117e16ddb3586efe45663483a`
-	Default Command: `["pypy"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:11:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 06:11:31 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 06:11:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:11:52 GMT
ENV PYPY_VERSION=5.10.0
# Thu, 15 Feb 2018 06:11:53 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 15 Feb 2018 06:12:22 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='da85af9240220179493ad66c857934dc7ea91aef8f168cd293a2d99af8346ee2' ;; 		armel) pypyArch='linux-armel'; sha256='6fdd55dd8f674efd06f76edb60a09a03b9b04a5fbc56741f416a94a0b9d2ff91' ;; 		i386) pypyArch='linux32'; sha256='ee1980467ac8cc9fa9d609f7da93c5282503e59a548781248fe1914a7199d540' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 06:12:22 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b61e5722374388c2728810d98e2dc53efdcd51837fb47b62c85007384dc708`  
		Last Modified: Thu, 15 Feb 2018 06:17:37 GMT  
		Size: 2.9 MB (2859641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ecbaaec6f2a329f5291aa1bd0b7955d70921e9890ca00984d9fcec45495fc4e`  
		Last Modified: Thu, 15 Feb 2018 06:17:43 GMT  
		Size: 32.8 MB (32790210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5.10-slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:02582c8b77dee9d7769ea403d3202aeb04e622dc183be619b657629dedd00ae0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.8 MB (61805743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:475ab4937783faeb6f3b4c7a4d68710ea61224d811e01648aff53661990a3e97`
-	Default Command: `["pypy"]`

```dockerfile
# Thu, 15 Feb 2018 20:56:30 GMT
ADD file:7590562c1d62ac7d305af7caf8771e09bcbf6d396e4d8d2b66d878327b4d3f52 in / 
# Thu, 15 Feb 2018 20:56:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 22:26:03 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 22:26:03 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:26:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:26:41 GMT
ENV PYPY_VERSION=5.10.0
# Thu, 15 Feb 2018 22:26:41 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 15 Feb 2018 22:27:55 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='da85af9240220179493ad66c857934dc7ea91aef8f168cd293a2d99af8346ee2' ;; 		armel) pypyArch='linux-armel'; sha256='6fdd55dd8f674efd06f76edb60a09a03b9b04a5fbc56741f416a94a0b9d2ff91' ;; 		i386) pypyArch='linux32'; sha256='ee1980467ac8cc9fa9d609f7da93c5282503e59a548781248fe1914a7199d540' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 22:27:55 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:74273dae7ee101471a164eb562356e7b2e60d34be2b15b077b6dae6a9aa063ec`  
		Last Modified: Thu, 15 Feb 2018 21:05:26 GMT  
		Size: 28.4 MB (28430874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf26de43f681a5cf6f3be6e38ca95cb0f9bb0ed6fc82fe8a5596f82741919c1a`  
		Last Modified: Thu, 15 Feb 2018 22:32:01 GMT  
		Size: 2.6 MB (2607990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d199008c3934cfada56a3c064262268ff27dec807a0b3c95afdca3716f0ebc`  
		Last Modified: Thu, 15 Feb 2018 22:32:12 GMT  
		Size: 30.8 MB (30766879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5.10-slim` - linux; 386

```console
$ docker pull pypy@sha256:4c308f951878d6dcd871bf617f27b54f6dcd911c3435f3e0e0aaf94f57ac06ee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.7 MB (64742309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6d8346927651b7a18bac4e30b70569ba4f8580144c38a297819c441c1fb60e9`
-	Default Command: `["pypy"]`

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
# Wed, 21 Feb 2018 02:25:25 GMT
ENV PYPY_VERSION=5.10.0
# Wed, 21 Feb 2018 02:25:25 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 21 Feb 2018 02:26:26 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='da85af9240220179493ad66c857934dc7ea91aef8f168cd293a2d99af8346ee2' ;; 		armel) pypyArch='linux-armel'; sha256='6fdd55dd8f674efd06f76edb60a09a03b9b04a5fbc56741f416a94a0b9d2ff91' ;; 		i386) pypyArch='linux32'; sha256='ee1980467ac8cc9fa9d609f7da93c5282503e59a548781248fe1914a7199d540' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 21 Feb 2018 02:26:26 GMT
CMD ["pypy"]
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
	-	`sha256:6a60ab5dcc15a2091b3c8122ca4973bcc3361e0e45fee42cbb19991658c7d1c8`  
		Last Modified: Wed, 21 Feb 2018 02:49:38 GMT  
		Size: 29.5 MB (29511323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-5-slim`

```console
$ docker pull pypy@sha256:9ef65c7d3f755ee282188e17fdeecb0b00e0495b9c7f52118bf2a440d67f5089
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-5-slim` - linux; amd64

```console
$ docker pull pypy@sha256:9f9a63216e678d5e739803670e4e7eaeb7fcaf3a714aee193a1e61cb3a8c13c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65772230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17d53de3cf2cb17a55f3bb48cf1b483ff6540b3117e16ddb3586efe45663483a`
-	Default Command: `["pypy"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:11:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 06:11:31 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 06:11:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:11:52 GMT
ENV PYPY_VERSION=5.10.0
# Thu, 15 Feb 2018 06:11:53 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 15 Feb 2018 06:12:22 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='da85af9240220179493ad66c857934dc7ea91aef8f168cd293a2d99af8346ee2' ;; 		armel) pypyArch='linux-armel'; sha256='6fdd55dd8f674efd06f76edb60a09a03b9b04a5fbc56741f416a94a0b9d2ff91' ;; 		i386) pypyArch='linux32'; sha256='ee1980467ac8cc9fa9d609f7da93c5282503e59a548781248fe1914a7199d540' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 06:12:22 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b61e5722374388c2728810d98e2dc53efdcd51837fb47b62c85007384dc708`  
		Last Modified: Thu, 15 Feb 2018 06:17:37 GMT  
		Size: 2.9 MB (2859641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ecbaaec6f2a329f5291aa1bd0b7955d70921e9890ca00984d9fcec45495fc4e`  
		Last Modified: Thu, 15 Feb 2018 06:17:43 GMT  
		Size: 32.8 MB (32790210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5-slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:02582c8b77dee9d7769ea403d3202aeb04e622dc183be619b657629dedd00ae0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.8 MB (61805743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:475ab4937783faeb6f3b4c7a4d68710ea61224d811e01648aff53661990a3e97`
-	Default Command: `["pypy"]`

```dockerfile
# Thu, 15 Feb 2018 20:56:30 GMT
ADD file:7590562c1d62ac7d305af7caf8771e09bcbf6d396e4d8d2b66d878327b4d3f52 in / 
# Thu, 15 Feb 2018 20:56:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 22:26:03 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 22:26:03 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:26:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:26:41 GMT
ENV PYPY_VERSION=5.10.0
# Thu, 15 Feb 2018 22:26:41 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 15 Feb 2018 22:27:55 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='da85af9240220179493ad66c857934dc7ea91aef8f168cd293a2d99af8346ee2' ;; 		armel) pypyArch='linux-armel'; sha256='6fdd55dd8f674efd06f76edb60a09a03b9b04a5fbc56741f416a94a0b9d2ff91' ;; 		i386) pypyArch='linux32'; sha256='ee1980467ac8cc9fa9d609f7da93c5282503e59a548781248fe1914a7199d540' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 22:27:55 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:74273dae7ee101471a164eb562356e7b2e60d34be2b15b077b6dae6a9aa063ec`  
		Last Modified: Thu, 15 Feb 2018 21:05:26 GMT  
		Size: 28.4 MB (28430874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf26de43f681a5cf6f3be6e38ca95cb0f9bb0ed6fc82fe8a5596f82741919c1a`  
		Last Modified: Thu, 15 Feb 2018 22:32:01 GMT  
		Size: 2.6 MB (2607990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d199008c3934cfada56a3c064262268ff27dec807a0b3c95afdca3716f0ebc`  
		Last Modified: Thu, 15 Feb 2018 22:32:12 GMT  
		Size: 30.8 MB (30766879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-5-slim` - linux; 386

```console
$ docker pull pypy@sha256:4c308f951878d6dcd871bf617f27b54f6dcd911c3435f3e0e0aaf94f57ac06ee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.7 MB (64742309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6d8346927651b7a18bac4e30b70569ba4f8580144c38a297819c441c1fb60e9`
-	Default Command: `["pypy"]`

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
# Wed, 21 Feb 2018 02:25:25 GMT
ENV PYPY_VERSION=5.10.0
# Wed, 21 Feb 2018 02:25:25 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 21 Feb 2018 02:26:26 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='da85af9240220179493ad66c857934dc7ea91aef8f168cd293a2d99af8346ee2' ;; 		armel) pypyArch='linux-armel'; sha256='6fdd55dd8f674efd06f76edb60a09a03b9b04a5fbc56741f416a94a0b9d2ff91' ;; 		i386) pypyArch='linux32'; sha256='ee1980467ac8cc9fa9d609f7da93c5282503e59a548781248fe1914a7199d540' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 21 Feb 2018 02:26:26 GMT
CMD ["pypy"]
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
	-	`sha256:6a60ab5dcc15a2091b3c8122ca4973bcc3361e0e45fee42cbb19991658c7d1c8`  
		Last Modified: Wed, 21 Feb 2018 02:49:38 GMT  
		Size: 29.5 MB (29511323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:2-slim`

```console
$ docker pull pypy@sha256:9ef65c7d3f755ee282188e17fdeecb0b00e0495b9c7f52118bf2a440d67f5089
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-slim` - linux; amd64

```console
$ docker pull pypy@sha256:9f9a63216e678d5e739803670e4e7eaeb7fcaf3a714aee193a1e61cb3a8c13c5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65772230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17d53de3cf2cb17a55f3bb48cf1b483ff6540b3117e16ddb3586efe45663483a`
-	Default Command: `["pypy"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:11:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 06:11:31 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 06:11:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:11:52 GMT
ENV PYPY_VERSION=5.10.0
# Thu, 15 Feb 2018 06:11:53 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 15 Feb 2018 06:12:22 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='da85af9240220179493ad66c857934dc7ea91aef8f168cd293a2d99af8346ee2' ;; 		armel) pypyArch='linux-armel'; sha256='6fdd55dd8f674efd06f76edb60a09a03b9b04a5fbc56741f416a94a0b9d2ff91' ;; 		i386) pypyArch='linux32'; sha256='ee1980467ac8cc9fa9d609f7da93c5282503e59a548781248fe1914a7199d540' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 06:12:22 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b61e5722374388c2728810d98e2dc53efdcd51837fb47b62c85007384dc708`  
		Last Modified: Thu, 15 Feb 2018 06:17:37 GMT  
		Size: 2.9 MB (2859641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ecbaaec6f2a329f5291aa1bd0b7955d70921e9890ca00984d9fcec45495fc4e`  
		Last Modified: Thu, 15 Feb 2018 06:17:43 GMT  
		Size: 32.8 MB (32790210 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:02582c8b77dee9d7769ea403d3202aeb04e622dc183be619b657629dedd00ae0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.8 MB (61805743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:475ab4937783faeb6f3b4c7a4d68710ea61224d811e01648aff53661990a3e97`
-	Default Command: `["pypy"]`

```dockerfile
# Thu, 15 Feb 2018 20:56:30 GMT
ADD file:7590562c1d62ac7d305af7caf8771e09bcbf6d396e4d8d2b66d878327b4d3f52 in / 
# Thu, 15 Feb 2018 20:56:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 22:26:03 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 22:26:03 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:26:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:26:41 GMT
ENV PYPY_VERSION=5.10.0
# Thu, 15 Feb 2018 22:26:41 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 15 Feb 2018 22:27:55 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='da85af9240220179493ad66c857934dc7ea91aef8f168cd293a2d99af8346ee2' ;; 		armel) pypyArch='linux-armel'; sha256='6fdd55dd8f674efd06f76edb60a09a03b9b04a5fbc56741f416a94a0b9d2ff91' ;; 		i386) pypyArch='linux32'; sha256='ee1980467ac8cc9fa9d609f7da93c5282503e59a548781248fe1914a7199d540' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 22:27:55 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:74273dae7ee101471a164eb562356e7b2e60d34be2b15b077b6dae6a9aa063ec`  
		Last Modified: Thu, 15 Feb 2018 21:05:26 GMT  
		Size: 28.4 MB (28430874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf26de43f681a5cf6f3be6e38ca95cb0f9bb0ed6fc82fe8a5596f82741919c1a`  
		Last Modified: Thu, 15 Feb 2018 22:32:01 GMT  
		Size: 2.6 MB (2607990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1d199008c3934cfada56a3c064262268ff27dec807a0b3c95afdca3716f0ebc`  
		Last Modified: Thu, 15 Feb 2018 22:32:12 GMT  
		Size: 30.8 MB (30766879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-slim` - linux; 386

```console
$ docker pull pypy@sha256:4c308f951878d6dcd871bf617f27b54f6dcd911c3435f3e0e0aaf94f57ac06ee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.7 MB (64742309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6d8346927651b7a18bac4e30b70569ba4f8580144c38a297819c441c1fb60e9`
-	Default Command: `["pypy"]`

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
# Wed, 21 Feb 2018 02:25:25 GMT
ENV PYPY_VERSION=5.10.0
# Wed, 21 Feb 2018 02:25:25 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 21 Feb 2018 02:26:26 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='da85af9240220179493ad66c857934dc7ea91aef8f168cd293a2d99af8346ee2' ;; 		armel) pypyArch='linux-armel'; sha256='6fdd55dd8f674efd06f76edb60a09a03b9b04a5fbc56741f416a94a0b9d2ff91' ;; 		i386) pypyArch='linux32'; sha256='ee1980467ac8cc9fa9d609f7da93c5282503e59a548781248fe1914a7199d540' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 21 Feb 2018 02:26:26 GMT
CMD ["pypy"]
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
	-	`sha256:6a60ab5dcc15a2091b3c8122ca4973bcc3361e0e45fee42cbb19991658c7d1c8`  
		Last Modified: Wed, 21 Feb 2018 02:49:38 GMT  
		Size: 29.5 MB (29511323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3`

```console
$ docker pull pypy@sha256:5a55f6f8e9675e0ddc79d01e10426b5fa3dca97f796fc91eb61761482fefa311
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3` - linux; amd64

```console
$ docker pull pypy@sha256:5b70356994d8a8b616593e231eca6d051308e874f684b80c1ea4a37276a6ee6f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.4 MB (286433116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20d58c6a89c0aaf8f809be3b7c7f21047295e5bf21484e39524df4f23b45c07a`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 07:01:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 07:01:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Feb 2018 07:02:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 07:04:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 09:31:14 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Feb 2018 09:31:15 GMT
ENV LANG=C.UTF-8
# Sat, 17 Feb 2018 09:31:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 14:35:04 GMT
ENV PYPY_VERSION=5.10.1
# Sat, 17 Feb 2018 14:35:04 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Sat, 17 Feb 2018 14:35:13 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='75a276e1ee1863967bbacb70c5bff636de200768c0ec90e72f7ec17aace0aefe' ;; 		armel) pypyArch='linux-armel'; sha256='5065e9ad958d06b9612ba974f43997d20168d4245c054dd43270e4b458782282' ;; 		i386) pypyArch='linux32'; sha256='a6ceca9ee5dc511de7902164464b88311fec9366c5673d0c00528eda862bbe54' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Sat, 17 Feb 2018 14:35:24 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Sat, 17 Feb 2018 14:35:24 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851356ecf618f41550b3b8696fb9aad7925f72929c8345453107cce510437608`  
		Last Modified: Sat, 17 Feb 2018 07:15:16 GMT  
		Size: 19.3 MB (19266391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6115379c7b49daf7b059dd310633130d93a983b52ee50146295b3963a6c30f11`  
		Last Modified: Sat, 17 Feb 2018 07:15:56 GMT  
		Size: 43.3 MB (43254368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf7d781d6016dbad458f06bc6caae035c792278a8ccddbf7f0234621f1ef476`  
		Last Modified: Sat, 17 Feb 2018 07:16:34 GMT  
		Size: 135.0 MB (134962018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cf661a3cc4f2977407d1441b0f4b9ff98871c3edfef46db85f595cc5664147`  
		Last Modified: Sat, 17 Feb 2018 09:54:30 GMT  
		Size: 3.2 MB (3167714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d96f0e7dd9c782f1c895e15aab73cd2d167749f4e58959a8baf9380fffc0e4`  
		Last Modified: Sat, 17 Feb 2018 14:53:23 GMT  
		Size: 29.0 MB (28998662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a6b9f18c94084da0c05149ac0aee4de771ed2479ab876eeab85ea7b12cfdd7`  
		Last Modified: Sat, 17 Feb 2018 14:53:15 GMT  
		Size: 4.2 MB (4175678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3` - linux; arm variant v5

```console
$ docker pull pypy@sha256:acc3737dcc5324e62196c2541f648f6697828b79f9249422dc986dbb4e99fb9f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.8 MB (260824530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6565e4ba7963baf7d64813e28f07428d2fdcc6228e09291f2d44bfa18a8f0db4`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 15 Feb 2018 20:55:58 GMT
ADD file:1a16d6f6cb75aeb553c6b7777d0056b1a68f89295b25c0225c65c2e7dcac08e3 in / 
# Thu, 15 Feb 2018 20:55:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:36:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:36:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 21:37:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:39:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:24:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 22:24:42 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:25:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:28:10 GMT
ENV PYPY_VERSION=5.10.1
# Thu, 15 Feb 2018 22:28:11 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 15 Feb 2018 22:28:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='75a276e1ee1863967bbacb70c5bff636de200768c0ec90e72f7ec17aace0aefe' ;; 		armel) pypyArch='linux-armel'; sha256='5065e9ad958d06b9612ba974f43997d20168d4245c054dd43270e4b458782282' ;; 		i386) pypyArch='linux32'; sha256='a6ceca9ee5dc511de7902164464b88311fec9366c5673d0c00528eda862bbe54' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Thu, 15 Feb 2018 22:28:48 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 15 Feb 2018 22:28:49 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:75ec46627298b11174762e9bae59bb036d4f3bfaace1da7614a2eb4881ed97d4`  
		Last Modified: Thu, 15 Feb 2018 21:04:30 GMT  
		Size: 50.9 MB (50889623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c8b3b6723ff243d07e7b92517f1477b51d94f85c82714a48e51f6fe07a4c155`  
		Last Modified: Thu, 15 Feb 2018 21:50:38 GMT  
		Size: 18.7 MB (18657025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890e801f2b1fd5e38e9d6c4334424fd5f0b74d1fe41de2e706f20b4ac7c4e4f5`  
		Last Modified: Thu, 15 Feb 2018 21:51:05 GMT  
		Size: 41.1 MB (41102481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b536c6beca50f18e852c25fcc62150d80f257111216bb088f571786ce141bd7c`  
		Last Modified: Thu, 15 Feb 2018 21:52:07 GMT  
		Size: 115.7 MB (115744130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67e3d3efeecb65817a2aadd52dab2cf6fcb7c8c26a45a2fe4e919f412260748`  
		Last Modified: Thu, 15 Feb 2018 22:31:05 GMT  
		Size: 3.0 MB (3020530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92db80e132fe2306787fd9db3ff4d2d8fa04f1f8b5473017b75de23996c938f6`  
		Last Modified: Thu, 15 Feb 2018 22:32:58 GMT  
		Size: 27.2 MB (27233794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5c048155adc52670c35def9ddc0031137683caaa2b744748da20823d03eaf3`  
		Last Modified: Thu, 15 Feb 2018 22:32:50 GMT  
		Size: 4.2 MB (4176947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3` - linux; 386

```console
$ docker pull pypy@sha256:7eeb81e57a7e1be05b0a6764dc981baf48af6ffc54cbdf0cf0659f20733ed401
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.7 MB (287747866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0ead85eaa33707326c3b0efc136d1a5f40090a35544812843d98e3b93e5082a`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 15 Feb 2018 14:52:22 GMT
ADD file:70b1b536b382f6ba9443ccb8fb1cb7156dd4952a194d4a232be4756ce973c27b in / 
# Thu, 15 Feb 2018 14:52:23 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 03:00:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 03:00:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 21 Feb 2018 03:16:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 03:27:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 14:33:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Feb 2018 14:33:01 GMT
ENV LANG=C.UTF-8
# Wed, 21 Feb 2018 14:33:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 05:05:14 GMT
ENV PYPY_VERSION=5.10.1
# Fri, 23 Feb 2018 05:05:14 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 23 Feb 2018 05:05:28 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='75a276e1ee1863967bbacb70c5bff636de200768c0ec90e72f7ec17aace0aefe' ;; 		armel) pypyArch='linux-armel'; sha256='5065e9ad958d06b9612ba974f43997d20168d4245c054dd43270e4b458782282' ;; 		i386) pypyArch='linux32'; sha256='a6ceca9ee5dc511de7902164464b88311fec9366c5673d0c00528eda862bbe54' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Fri, 23 Feb 2018 05:05:39 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 23 Feb 2018 05:05:40 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:d854f909180418fb64a87463d4061a8a8cac25c45b4fb7bc2f1e14f7332ecd7a`  
		Last Modified: Thu, 15 Feb 2018 00:53:24 GMT  
		Size: 52.8 MB (52787712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe088a75e7978249fc7a95a7cf2ca376d731a0d2111f1d3916d26cb1927c6e9`  
		Last Modified: Wed, 21 Feb 2018 03:40:19 GMT  
		Size: 21.6 MB (21596403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd70dd1a7c6239809d32e4f2882d0e41d01b88b5806c3e12165c5739c407b146`  
		Last Modified: Wed, 21 Feb 2018 03:48:18 GMT  
		Size: 43.9 MB (43918382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1518141bb083cd4da04a36a73324ae5d8ee4013c93e2d6381d322d3dfb95d5`  
		Last Modified: Wed, 21 Feb 2018 03:56:56 GMT  
		Size: 135.8 MB (135766235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92caab36e32dfc820eae0fa24669e3de6b706f70d12bd046e1eed0debce94dc3`  
		Last Modified: Wed, 21 Feb 2018 15:54:43 GMT  
		Size: 3.3 MB (3272385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de14036ca5789a2996176dbc57b67c58704608619dcd11713b481a4fecf3daaf`  
		Last Modified: Fri, 23 Feb 2018 05:31:58 GMT  
		Size: 26.2 MB (26230675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de458051e2b1859b05398a8a9732c86187d18fa7ff5f49fdf9f946421d44bcf`  
		Last Modified: Fri, 23 Feb 2018 05:31:50 GMT  
		Size: 4.2 MB (4176074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5`

```console
$ docker pull pypy@sha256:5a55f6f8e9675e0ddc79d01e10426b5fa3dca97f796fc91eb61761482fefa311
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-5` - linux; amd64

```console
$ docker pull pypy@sha256:5b70356994d8a8b616593e231eca6d051308e874f684b80c1ea4a37276a6ee6f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.4 MB (286433116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20d58c6a89c0aaf8f809be3b7c7f21047295e5bf21484e39524df4f23b45c07a`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 07:01:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 07:01:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Feb 2018 07:02:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 07:04:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 09:31:14 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Feb 2018 09:31:15 GMT
ENV LANG=C.UTF-8
# Sat, 17 Feb 2018 09:31:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 14:35:04 GMT
ENV PYPY_VERSION=5.10.1
# Sat, 17 Feb 2018 14:35:04 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Sat, 17 Feb 2018 14:35:13 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='75a276e1ee1863967bbacb70c5bff636de200768c0ec90e72f7ec17aace0aefe' ;; 		armel) pypyArch='linux-armel'; sha256='5065e9ad958d06b9612ba974f43997d20168d4245c054dd43270e4b458782282' ;; 		i386) pypyArch='linux32'; sha256='a6ceca9ee5dc511de7902164464b88311fec9366c5673d0c00528eda862bbe54' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Sat, 17 Feb 2018 14:35:24 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Sat, 17 Feb 2018 14:35:24 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851356ecf618f41550b3b8696fb9aad7925f72929c8345453107cce510437608`  
		Last Modified: Sat, 17 Feb 2018 07:15:16 GMT  
		Size: 19.3 MB (19266391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6115379c7b49daf7b059dd310633130d93a983b52ee50146295b3963a6c30f11`  
		Last Modified: Sat, 17 Feb 2018 07:15:56 GMT  
		Size: 43.3 MB (43254368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf7d781d6016dbad458f06bc6caae035c792278a8ccddbf7f0234621f1ef476`  
		Last Modified: Sat, 17 Feb 2018 07:16:34 GMT  
		Size: 135.0 MB (134962018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cf661a3cc4f2977407d1441b0f4b9ff98871c3edfef46db85f595cc5664147`  
		Last Modified: Sat, 17 Feb 2018 09:54:30 GMT  
		Size: 3.2 MB (3167714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d96f0e7dd9c782f1c895e15aab73cd2d167749f4e58959a8baf9380fffc0e4`  
		Last Modified: Sat, 17 Feb 2018 14:53:23 GMT  
		Size: 29.0 MB (28998662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a6b9f18c94084da0c05149ac0aee4de771ed2479ab876eeab85ea7b12cfdd7`  
		Last Modified: Sat, 17 Feb 2018 14:53:15 GMT  
		Size: 4.2 MB (4175678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-5` - linux; arm variant v5

```console
$ docker pull pypy@sha256:acc3737dcc5324e62196c2541f648f6697828b79f9249422dc986dbb4e99fb9f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.8 MB (260824530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6565e4ba7963baf7d64813e28f07428d2fdcc6228e09291f2d44bfa18a8f0db4`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 15 Feb 2018 20:55:58 GMT
ADD file:1a16d6f6cb75aeb553c6b7777d0056b1a68f89295b25c0225c65c2e7dcac08e3 in / 
# Thu, 15 Feb 2018 20:55:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:36:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:36:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 21:37:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:39:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:24:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 22:24:42 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:25:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:28:10 GMT
ENV PYPY_VERSION=5.10.1
# Thu, 15 Feb 2018 22:28:11 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 15 Feb 2018 22:28:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='75a276e1ee1863967bbacb70c5bff636de200768c0ec90e72f7ec17aace0aefe' ;; 		armel) pypyArch='linux-armel'; sha256='5065e9ad958d06b9612ba974f43997d20168d4245c054dd43270e4b458782282' ;; 		i386) pypyArch='linux32'; sha256='a6ceca9ee5dc511de7902164464b88311fec9366c5673d0c00528eda862bbe54' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Thu, 15 Feb 2018 22:28:48 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 15 Feb 2018 22:28:49 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:75ec46627298b11174762e9bae59bb036d4f3bfaace1da7614a2eb4881ed97d4`  
		Last Modified: Thu, 15 Feb 2018 21:04:30 GMT  
		Size: 50.9 MB (50889623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c8b3b6723ff243d07e7b92517f1477b51d94f85c82714a48e51f6fe07a4c155`  
		Last Modified: Thu, 15 Feb 2018 21:50:38 GMT  
		Size: 18.7 MB (18657025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890e801f2b1fd5e38e9d6c4334424fd5f0b74d1fe41de2e706f20b4ac7c4e4f5`  
		Last Modified: Thu, 15 Feb 2018 21:51:05 GMT  
		Size: 41.1 MB (41102481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b536c6beca50f18e852c25fcc62150d80f257111216bb088f571786ce141bd7c`  
		Last Modified: Thu, 15 Feb 2018 21:52:07 GMT  
		Size: 115.7 MB (115744130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67e3d3efeecb65817a2aadd52dab2cf6fcb7c8c26a45a2fe4e919f412260748`  
		Last Modified: Thu, 15 Feb 2018 22:31:05 GMT  
		Size: 3.0 MB (3020530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92db80e132fe2306787fd9db3ff4d2d8fa04f1f8b5473017b75de23996c938f6`  
		Last Modified: Thu, 15 Feb 2018 22:32:58 GMT  
		Size: 27.2 MB (27233794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5c048155adc52670c35def9ddc0031137683caaa2b744748da20823d03eaf3`  
		Last Modified: Thu, 15 Feb 2018 22:32:50 GMT  
		Size: 4.2 MB (4176947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-5` - linux; 386

```console
$ docker pull pypy@sha256:7eeb81e57a7e1be05b0a6764dc981baf48af6ffc54cbdf0cf0659f20733ed401
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.7 MB (287747866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0ead85eaa33707326c3b0efc136d1a5f40090a35544812843d98e3b93e5082a`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 15 Feb 2018 14:52:22 GMT
ADD file:70b1b536b382f6ba9443ccb8fb1cb7156dd4952a194d4a232be4756ce973c27b in / 
# Thu, 15 Feb 2018 14:52:23 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 03:00:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 03:00:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 21 Feb 2018 03:16:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 03:27:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 14:33:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Feb 2018 14:33:01 GMT
ENV LANG=C.UTF-8
# Wed, 21 Feb 2018 14:33:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 05:05:14 GMT
ENV PYPY_VERSION=5.10.1
# Fri, 23 Feb 2018 05:05:14 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 23 Feb 2018 05:05:28 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='75a276e1ee1863967bbacb70c5bff636de200768c0ec90e72f7ec17aace0aefe' ;; 		armel) pypyArch='linux-armel'; sha256='5065e9ad958d06b9612ba974f43997d20168d4245c054dd43270e4b458782282' ;; 		i386) pypyArch='linux32'; sha256='a6ceca9ee5dc511de7902164464b88311fec9366c5673d0c00528eda862bbe54' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Fri, 23 Feb 2018 05:05:39 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 23 Feb 2018 05:05:40 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:d854f909180418fb64a87463d4061a8a8cac25c45b4fb7bc2f1e14f7332ecd7a`  
		Last Modified: Thu, 15 Feb 2018 00:53:24 GMT  
		Size: 52.8 MB (52787712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe088a75e7978249fc7a95a7cf2ca376d731a0d2111f1d3916d26cb1927c6e9`  
		Last Modified: Wed, 21 Feb 2018 03:40:19 GMT  
		Size: 21.6 MB (21596403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd70dd1a7c6239809d32e4f2882d0e41d01b88b5806c3e12165c5739c407b146`  
		Last Modified: Wed, 21 Feb 2018 03:48:18 GMT  
		Size: 43.9 MB (43918382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1518141bb083cd4da04a36a73324ae5d8ee4013c93e2d6381d322d3dfb95d5`  
		Last Modified: Wed, 21 Feb 2018 03:56:56 GMT  
		Size: 135.8 MB (135766235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92caab36e32dfc820eae0fa24669e3de6b706f70d12bd046e1eed0debce94dc3`  
		Last Modified: Wed, 21 Feb 2018 15:54:43 GMT  
		Size: 3.3 MB (3272385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de14036ca5789a2996176dbc57b67c58704608619dcd11713b481a4fecf3daaf`  
		Last Modified: Fri, 23 Feb 2018 05:31:58 GMT  
		Size: 26.2 MB (26230675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de458051e2b1859b05398a8a9732c86187d18fa7ff5f49fdf9f946421d44bcf`  
		Last Modified: Fri, 23 Feb 2018 05:31:50 GMT  
		Size: 4.2 MB (4176074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.10`

```console
$ docker pull pypy@sha256:5a55f6f8e9675e0ddc79d01e10426b5fa3dca97f796fc91eb61761482fefa311
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-5.10` - linux; amd64

```console
$ docker pull pypy@sha256:5b70356994d8a8b616593e231eca6d051308e874f684b80c1ea4a37276a6ee6f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.4 MB (286433116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20d58c6a89c0aaf8f809be3b7c7f21047295e5bf21484e39524df4f23b45c07a`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 07:01:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 07:01:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Feb 2018 07:02:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 07:04:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 09:31:14 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Feb 2018 09:31:15 GMT
ENV LANG=C.UTF-8
# Sat, 17 Feb 2018 09:31:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 14:35:04 GMT
ENV PYPY_VERSION=5.10.1
# Sat, 17 Feb 2018 14:35:04 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Sat, 17 Feb 2018 14:35:13 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='75a276e1ee1863967bbacb70c5bff636de200768c0ec90e72f7ec17aace0aefe' ;; 		armel) pypyArch='linux-armel'; sha256='5065e9ad958d06b9612ba974f43997d20168d4245c054dd43270e4b458782282' ;; 		i386) pypyArch='linux32'; sha256='a6ceca9ee5dc511de7902164464b88311fec9366c5673d0c00528eda862bbe54' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Sat, 17 Feb 2018 14:35:24 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Sat, 17 Feb 2018 14:35:24 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851356ecf618f41550b3b8696fb9aad7925f72929c8345453107cce510437608`  
		Last Modified: Sat, 17 Feb 2018 07:15:16 GMT  
		Size: 19.3 MB (19266391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6115379c7b49daf7b059dd310633130d93a983b52ee50146295b3963a6c30f11`  
		Last Modified: Sat, 17 Feb 2018 07:15:56 GMT  
		Size: 43.3 MB (43254368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf7d781d6016dbad458f06bc6caae035c792278a8ccddbf7f0234621f1ef476`  
		Last Modified: Sat, 17 Feb 2018 07:16:34 GMT  
		Size: 135.0 MB (134962018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cf661a3cc4f2977407d1441b0f4b9ff98871c3edfef46db85f595cc5664147`  
		Last Modified: Sat, 17 Feb 2018 09:54:30 GMT  
		Size: 3.2 MB (3167714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d96f0e7dd9c782f1c895e15aab73cd2d167749f4e58959a8baf9380fffc0e4`  
		Last Modified: Sat, 17 Feb 2018 14:53:23 GMT  
		Size: 29.0 MB (28998662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a6b9f18c94084da0c05149ac0aee4de771ed2479ab876eeab85ea7b12cfdd7`  
		Last Modified: Sat, 17 Feb 2018 14:53:15 GMT  
		Size: 4.2 MB (4175678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-5.10` - linux; arm variant v5

```console
$ docker pull pypy@sha256:acc3737dcc5324e62196c2541f648f6697828b79f9249422dc986dbb4e99fb9f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.8 MB (260824530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6565e4ba7963baf7d64813e28f07428d2fdcc6228e09291f2d44bfa18a8f0db4`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 15 Feb 2018 20:55:58 GMT
ADD file:1a16d6f6cb75aeb553c6b7777d0056b1a68f89295b25c0225c65c2e7dcac08e3 in / 
# Thu, 15 Feb 2018 20:55:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:36:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:36:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 21:37:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:39:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:24:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 22:24:42 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:25:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:28:10 GMT
ENV PYPY_VERSION=5.10.1
# Thu, 15 Feb 2018 22:28:11 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 15 Feb 2018 22:28:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='75a276e1ee1863967bbacb70c5bff636de200768c0ec90e72f7ec17aace0aefe' ;; 		armel) pypyArch='linux-armel'; sha256='5065e9ad958d06b9612ba974f43997d20168d4245c054dd43270e4b458782282' ;; 		i386) pypyArch='linux32'; sha256='a6ceca9ee5dc511de7902164464b88311fec9366c5673d0c00528eda862bbe54' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Thu, 15 Feb 2018 22:28:48 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 15 Feb 2018 22:28:49 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:75ec46627298b11174762e9bae59bb036d4f3bfaace1da7614a2eb4881ed97d4`  
		Last Modified: Thu, 15 Feb 2018 21:04:30 GMT  
		Size: 50.9 MB (50889623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c8b3b6723ff243d07e7b92517f1477b51d94f85c82714a48e51f6fe07a4c155`  
		Last Modified: Thu, 15 Feb 2018 21:50:38 GMT  
		Size: 18.7 MB (18657025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890e801f2b1fd5e38e9d6c4334424fd5f0b74d1fe41de2e706f20b4ac7c4e4f5`  
		Last Modified: Thu, 15 Feb 2018 21:51:05 GMT  
		Size: 41.1 MB (41102481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b536c6beca50f18e852c25fcc62150d80f257111216bb088f571786ce141bd7c`  
		Last Modified: Thu, 15 Feb 2018 21:52:07 GMT  
		Size: 115.7 MB (115744130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67e3d3efeecb65817a2aadd52dab2cf6fcb7c8c26a45a2fe4e919f412260748`  
		Last Modified: Thu, 15 Feb 2018 22:31:05 GMT  
		Size: 3.0 MB (3020530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92db80e132fe2306787fd9db3ff4d2d8fa04f1f8b5473017b75de23996c938f6`  
		Last Modified: Thu, 15 Feb 2018 22:32:58 GMT  
		Size: 27.2 MB (27233794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5c048155adc52670c35def9ddc0031137683caaa2b744748da20823d03eaf3`  
		Last Modified: Thu, 15 Feb 2018 22:32:50 GMT  
		Size: 4.2 MB (4176947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-5.10` - linux; 386

```console
$ docker pull pypy@sha256:7eeb81e57a7e1be05b0a6764dc981baf48af6ffc54cbdf0cf0659f20733ed401
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.7 MB (287747866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0ead85eaa33707326c3b0efc136d1a5f40090a35544812843d98e3b93e5082a`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 15 Feb 2018 14:52:22 GMT
ADD file:70b1b536b382f6ba9443ccb8fb1cb7156dd4952a194d4a232be4756ce973c27b in / 
# Thu, 15 Feb 2018 14:52:23 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 03:00:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 03:00:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 21 Feb 2018 03:16:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 03:27:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 14:33:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Feb 2018 14:33:01 GMT
ENV LANG=C.UTF-8
# Wed, 21 Feb 2018 14:33:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 05:05:14 GMT
ENV PYPY_VERSION=5.10.1
# Fri, 23 Feb 2018 05:05:14 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 23 Feb 2018 05:05:28 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='75a276e1ee1863967bbacb70c5bff636de200768c0ec90e72f7ec17aace0aefe' ;; 		armel) pypyArch='linux-armel'; sha256='5065e9ad958d06b9612ba974f43997d20168d4245c054dd43270e4b458782282' ;; 		i386) pypyArch='linux32'; sha256='a6ceca9ee5dc511de7902164464b88311fec9366c5673d0c00528eda862bbe54' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Fri, 23 Feb 2018 05:05:39 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 23 Feb 2018 05:05:40 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:d854f909180418fb64a87463d4061a8a8cac25c45b4fb7bc2f1e14f7332ecd7a`  
		Last Modified: Thu, 15 Feb 2018 00:53:24 GMT  
		Size: 52.8 MB (52787712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe088a75e7978249fc7a95a7cf2ca376d731a0d2111f1d3916d26cb1927c6e9`  
		Last Modified: Wed, 21 Feb 2018 03:40:19 GMT  
		Size: 21.6 MB (21596403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd70dd1a7c6239809d32e4f2882d0e41d01b88b5806c3e12165c5739c407b146`  
		Last Modified: Wed, 21 Feb 2018 03:48:18 GMT  
		Size: 43.9 MB (43918382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1518141bb083cd4da04a36a73324ae5d8ee4013c93e2d6381d322d3dfb95d5`  
		Last Modified: Wed, 21 Feb 2018 03:56:56 GMT  
		Size: 135.8 MB (135766235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92caab36e32dfc820eae0fa24669e3de6b706f70d12bd046e1eed0debce94dc3`  
		Last Modified: Wed, 21 Feb 2018 15:54:43 GMT  
		Size: 3.3 MB (3272385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de14036ca5789a2996176dbc57b67c58704608619dcd11713b481a4fecf3daaf`  
		Last Modified: Fri, 23 Feb 2018 05:31:58 GMT  
		Size: 26.2 MB (26230675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de458051e2b1859b05398a8a9732c86187d18fa7ff5f49fdf9f946421d44bcf`  
		Last Modified: Fri, 23 Feb 2018 05:31:50 GMT  
		Size: 4.2 MB (4176074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.10.1`

```console
$ docker pull pypy@sha256:5a55f6f8e9675e0ddc79d01e10426b5fa3dca97f796fc91eb61761482fefa311
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-5.10.1` - linux; amd64

```console
$ docker pull pypy@sha256:5b70356994d8a8b616593e231eca6d051308e874f684b80c1ea4a37276a6ee6f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.4 MB (286433116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20d58c6a89c0aaf8f809be3b7c7f21047295e5bf21484e39524df4f23b45c07a`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 07:01:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 07:01:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Feb 2018 07:02:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 07:04:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 09:31:14 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Feb 2018 09:31:15 GMT
ENV LANG=C.UTF-8
# Sat, 17 Feb 2018 09:31:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 14:35:04 GMT
ENV PYPY_VERSION=5.10.1
# Sat, 17 Feb 2018 14:35:04 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Sat, 17 Feb 2018 14:35:13 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='75a276e1ee1863967bbacb70c5bff636de200768c0ec90e72f7ec17aace0aefe' ;; 		armel) pypyArch='linux-armel'; sha256='5065e9ad958d06b9612ba974f43997d20168d4245c054dd43270e4b458782282' ;; 		i386) pypyArch='linux32'; sha256='a6ceca9ee5dc511de7902164464b88311fec9366c5673d0c00528eda862bbe54' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Sat, 17 Feb 2018 14:35:24 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Sat, 17 Feb 2018 14:35:24 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851356ecf618f41550b3b8696fb9aad7925f72929c8345453107cce510437608`  
		Last Modified: Sat, 17 Feb 2018 07:15:16 GMT  
		Size: 19.3 MB (19266391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6115379c7b49daf7b059dd310633130d93a983b52ee50146295b3963a6c30f11`  
		Last Modified: Sat, 17 Feb 2018 07:15:56 GMT  
		Size: 43.3 MB (43254368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf7d781d6016dbad458f06bc6caae035c792278a8ccddbf7f0234621f1ef476`  
		Last Modified: Sat, 17 Feb 2018 07:16:34 GMT  
		Size: 135.0 MB (134962018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cf661a3cc4f2977407d1441b0f4b9ff98871c3edfef46db85f595cc5664147`  
		Last Modified: Sat, 17 Feb 2018 09:54:30 GMT  
		Size: 3.2 MB (3167714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d96f0e7dd9c782f1c895e15aab73cd2d167749f4e58959a8baf9380fffc0e4`  
		Last Modified: Sat, 17 Feb 2018 14:53:23 GMT  
		Size: 29.0 MB (28998662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a6b9f18c94084da0c05149ac0aee4de771ed2479ab876eeab85ea7b12cfdd7`  
		Last Modified: Sat, 17 Feb 2018 14:53:15 GMT  
		Size: 4.2 MB (4175678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-5.10.1` - linux; arm variant v5

```console
$ docker pull pypy@sha256:acc3737dcc5324e62196c2541f648f6697828b79f9249422dc986dbb4e99fb9f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.8 MB (260824530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6565e4ba7963baf7d64813e28f07428d2fdcc6228e09291f2d44bfa18a8f0db4`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 15 Feb 2018 20:55:58 GMT
ADD file:1a16d6f6cb75aeb553c6b7777d0056b1a68f89295b25c0225c65c2e7dcac08e3 in / 
# Thu, 15 Feb 2018 20:55:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:36:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:36:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 21:37:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:39:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:24:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 22:24:42 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:25:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:28:10 GMT
ENV PYPY_VERSION=5.10.1
# Thu, 15 Feb 2018 22:28:11 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 15 Feb 2018 22:28:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='75a276e1ee1863967bbacb70c5bff636de200768c0ec90e72f7ec17aace0aefe' ;; 		armel) pypyArch='linux-armel'; sha256='5065e9ad958d06b9612ba974f43997d20168d4245c054dd43270e4b458782282' ;; 		i386) pypyArch='linux32'; sha256='a6ceca9ee5dc511de7902164464b88311fec9366c5673d0c00528eda862bbe54' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Thu, 15 Feb 2018 22:28:48 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 15 Feb 2018 22:28:49 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:75ec46627298b11174762e9bae59bb036d4f3bfaace1da7614a2eb4881ed97d4`  
		Last Modified: Thu, 15 Feb 2018 21:04:30 GMT  
		Size: 50.9 MB (50889623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c8b3b6723ff243d07e7b92517f1477b51d94f85c82714a48e51f6fe07a4c155`  
		Last Modified: Thu, 15 Feb 2018 21:50:38 GMT  
		Size: 18.7 MB (18657025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890e801f2b1fd5e38e9d6c4334424fd5f0b74d1fe41de2e706f20b4ac7c4e4f5`  
		Last Modified: Thu, 15 Feb 2018 21:51:05 GMT  
		Size: 41.1 MB (41102481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b536c6beca50f18e852c25fcc62150d80f257111216bb088f571786ce141bd7c`  
		Last Modified: Thu, 15 Feb 2018 21:52:07 GMT  
		Size: 115.7 MB (115744130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67e3d3efeecb65817a2aadd52dab2cf6fcb7c8c26a45a2fe4e919f412260748`  
		Last Modified: Thu, 15 Feb 2018 22:31:05 GMT  
		Size: 3.0 MB (3020530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92db80e132fe2306787fd9db3ff4d2d8fa04f1f8b5473017b75de23996c938f6`  
		Last Modified: Thu, 15 Feb 2018 22:32:58 GMT  
		Size: 27.2 MB (27233794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5c048155adc52670c35def9ddc0031137683caaa2b744748da20823d03eaf3`  
		Last Modified: Thu, 15 Feb 2018 22:32:50 GMT  
		Size: 4.2 MB (4176947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-5.10.1` - linux; 386

```console
$ docker pull pypy@sha256:7eeb81e57a7e1be05b0a6764dc981baf48af6ffc54cbdf0cf0659f20733ed401
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.7 MB (287747866 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0ead85eaa33707326c3b0efc136d1a5f40090a35544812843d98e3b93e5082a`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 15 Feb 2018 14:52:22 GMT
ADD file:70b1b536b382f6ba9443ccb8fb1cb7156dd4952a194d4a232be4756ce973c27b in / 
# Thu, 15 Feb 2018 14:52:23 GMT
CMD ["bash"]
# Wed, 21 Feb 2018 03:00:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 03:00:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 21 Feb 2018 03:16:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 03:27:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 21 Feb 2018 14:33:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Feb 2018 14:33:01 GMT
ENV LANG=C.UTF-8
# Wed, 21 Feb 2018 14:33:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 23 Feb 2018 05:05:14 GMT
ENV PYPY_VERSION=5.10.1
# Fri, 23 Feb 2018 05:05:14 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Fri, 23 Feb 2018 05:05:28 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='75a276e1ee1863967bbacb70c5bff636de200768c0ec90e72f7ec17aace0aefe' ;; 		armel) pypyArch='linux-armel'; sha256='5065e9ad958d06b9612ba974f43997d20168d4245c054dd43270e4b458782282' ;; 		i386) pypyArch='linux32'; sha256='a6ceca9ee5dc511de7902164464b88311fec9366c5673d0c00528eda862bbe54' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Fri, 23 Feb 2018 05:05:39 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Fri, 23 Feb 2018 05:05:40 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:d854f909180418fb64a87463d4061a8a8cac25c45b4fb7bc2f1e14f7332ecd7a`  
		Last Modified: Thu, 15 Feb 2018 00:53:24 GMT  
		Size: 52.8 MB (52787712 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfe088a75e7978249fc7a95a7cf2ca376d731a0d2111f1d3916d26cb1927c6e9`  
		Last Modified: Wed, 21 Feb 2018 03:40:19 GMT  
		Size: 21.6 MB (21596403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd70dd1a7c6239809d32e4f2882d0e41d01b88b5806c3e12165c5739c407b146`  
		Last Modified: Wed, 21 Feb 2018 03:48:18 GMT  
		Size: 43.9 MB (43918382 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c1518141bb083cd4da04a36a73324ae5d8ee4013c93e2d6381d322d3dfb95d5`  
		Last Modified: Wed, 21 Feb 2018 03:56:56 GMT  
		Size: 135.8 MB (135766235 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92caab36e32dfc820eae0fa24669e3de6b706f70d12bd046e1eed0debce94dc3`  
		Last Modified: Wed, 21 Feb 2018 15:54:43 GMT  
		Size: 3.3 MB (3272385 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de14036ca5789a2996176dbc57b67c58704608619dcd11713b481a4fecf3daaf`  
		Last Modified: Fri, 23 Feb 2018 05:31:58 GMT  
		Size: 26.2 MB (26230675 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4de458051e2b1859b05398a8a9732c86187d18fa7ff5f49fdf9f946421d44bcf`  
		Last Modified: Fri, 23 Feb 2018 05:31:50 GMT  
		Size: 4.2 MB (4176074 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:3-5.10.1-slim`

```console
$ docker pull pypy@sha256:b87f73cbc54f99ee650d82472f8e178f917e930b86e5af6c0a55ee9404ce3c37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-5.10.1-slim` - linux; amd64

```console
$ docker pull pypy@sha256:403664b59ba336444e51d0136ff7ac757d6d366c45faa0d520e5af49ac440b63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.5 MB (66455572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb21ed4e07a9b63b2428b2838b6e548a3f32e1cf817ee54b0fa9f0cbb9d712d8`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:11:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 06:11:31 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 06:11:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:16:45 GMT
ENV PYPY_VERSION=5.10.1
# Thu, 15 Feb 2018 06:16:45 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 15 Feb 2018 06:17:16 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='75a276e1ee1863967bbacb70c5bff636de200768c0ec90e72f7ec17aace0aefe' ;; 		armel) pypyArch='linux-armel'; sha256='5065e9ad958d06b9612ba974f43997d20168d4245c054dd43270e4b458782282' ;; 		i386) pypyArch='linux32'; sha256='a6ceca9ee5dc511de7902164464b88311fec9366c5673d0c00528eda862bbe54' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 06:17:16 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b61e5722374388c2728810d98e2dc53efdcd51837fb47b62c85007384dc708`  
		Last Modified: Thu, 15 Feb 2018 06:17:37 GMT  
		Size: 2.9 MB (2859641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19680953dc48d84a0299a42ee0bf4eb551cd30ea1f87b55a13d0617abe83a64`  
		Last Modified: Thu, 15 Feb 2018 06:26:32 GMT  
		Size: 33.5 MB (33473552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-5.10.1-slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:ec9beddcc1cd463b2ec60a55cbae7cd58d2371a8f197b9acb9edada7746ece51
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62747593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b1c60ae7c8abee786243aebc15cf5e204a308fd080363538969ae164437d0bb`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 15 Feb 2018 20:56:30 GMT
ADD file:7590562c1d62ac7d305af7caf8771e09bcbf6d396e4d8d2b66d878327b4d3f52 in / 
# Thu, 15 Feb 2018 20:56:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 22:26:03 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 22:26:03 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:26:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:29:02 GMT
ENV PYPY_VERSION=5.10.1
# Thu, 15 Feb 2018 22:29:02 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 15 Feb 2018 22:30:12 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='75a276e1ee1863967bbacb70c5bff636de200768c0ec90e72f7ec17aace0aefe' ;; 		armel) pypyArch='linux-armel'; sha256='5065e9ad958d06b9612ba974f43997d20168d4245c054dd43270e4b458782282' ;; 		i386) pypyArch='linux32'; sha256='a6ceca9ee5dc511de7902164464b88311fec9366c5673d0c00528eda862bbe54' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 22:30:12 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:74273dae7ee101471a164eb562356e7b2e60d34be2b15b077b6dae6a9aa063ec`  
		Last Modified: Thu, 15 Feb 2018 21:05:26 GMT  
		Size: 28.4 MB (28430874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf26de43f681a5cf6f3be6e38ca95cb0f9bb0ed6fc82fe8a5596f82741919c1a`  
		Last Modified: Thu, 15 Feb 2018 22:32:01 GMT  
		Size: 2.6 MB (2607990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0667fcb389db612e1381f8bd910ef2069bcc63efe4754e841ebeb82c7f251f0d`  
		Last Modified: Thu, 15 Feb 2018 22:33:57 GMT  
		Size: 31.7 MB (31708729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-5.10.1-slim` - linux; 386

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

## `pypy:3-5.10-slim`

```console
$ docker pull pypy@sha256:b87f73cbc54f99ee650d82472f8e178f917e930b86e5af6c0a55ee9404ce3c37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-5.10-slim` - linux; amd64

```console
$ docker pull pypy@sha256:403664b59ba336444e51d0136ff7ac757d6d366c45faa0d520e5af49ac440b63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.5 MB (66455572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb21ed4e07a9b63b2428b2838b6e548a3f32e1cf817ee54b0fa9f0cbb9d712d8`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:11:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 06:11:31 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 06:11:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:16:45 GMT
ENV PYPY_VERSION=5.10.1
# Thu, 15 Feb 2018 06:16:45 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 15 Feb 2018 06:17:16 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='75a276e1ee1863967bbacb70c5bff636de200768c0ec90e72f7ec17aace0aefe' ;; 		armel) pypyArch='linux-armel'; sha256='5065e9ad958d06b9612ba974f43997d20168d4245c054dd43270e4b458782282' ;; 		i386) pypyArch='linux32'; sha256='a6ceca9ee5dc511de7902164464b88311fec9366c5673d0c00528eda862bbe54' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 06:17:16 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b61e5722374388c2728810d98e2dc53efdcd51837fb47b62c85007384dc708`  
		Last Modified: Thu, 15 Feb 2018 06:17:37 GMT  
		Size: 2.9 MB (2859641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19680953dc48d84a0299a42ee0bf4eb551cd30ea1f87b55a13d0617abe83a64`  
		Last Modified: Thu, 15 Feb 2018 06:26:32 GMT  
		Size: 33.5 MB (33473552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-5.10-slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:ec9beddcc1cd463b2ec60a55cbae7cd58d2371a8f197b9acb9edada7746ece51
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62747593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b1c60ae7c8abee786243aebc15cf5e204a308fd080363538969ae164437d0bb`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 15 Feb 2018 20:56:30 GMT
ADD file:7590562c1d62ac7d305af7caf8771e09bcbf6d396e4d8d2b66d878327b4d3f52 in / 
# Thu, 15 Feb 2018 20:56:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 22:26:03 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 22:26:03 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:26:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:29:02 GMT
ENV PYPY_VERSION=5.10.1
# Thu, 15 Feb 2018 22:29:02 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 15 Feb 2018 22:30:12 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='75a276e1ee1863967bbacb70c5bff636de200768c0ec90e72f7ec17aace0aefe' ;; 		armel) pypyArch='linux-armel'; sha256='5065e9ad958d06b9612ba974f43997d20168d4245c054dd43270e4b458782282' ;; 		i386) pypyArch='linux32'; sha256='a6ceca9ee5dc511de7902164464b88311fec9366c5673d0c00528eda862bbe54' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 22:30:12 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:74273dae7ee101471a164eb562356e7b2e60d34be2b15b077b6dae6a9aa063ec`  
		Last Modified: Thu, 15 Feb 2018 21:05:26 GMT  
		Size: 28.4 MB (28430874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf26de43f681a5cf6f3be6e38ca95cb0f9bb0ed6fc82fe8a5596f82741919c1a`  
		Last Modified: Thu, 15 Feb 2018 22:32:01 GMT  
		Size: 2.6 MB (2607990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0667fcb389db612e1381f8bd910ef2069bcc63efe4754e841ebeb82c7f251f0d`  
		Last Modified: Thu, 15 Feb 2018 22:33:57 GMT  
		Size: 31.7 MB (31708729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-5.10-slim` - linux; 386

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

## `pypy:3-5-slim`

```console
$ docker pull pypy@sha256:b87f73cbc54f99ee650d82472f8e178f917e930b86e5af6c0a55ee9404ce3c37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-5-slim` - linux; amd64

```console
$ docker pull pypy@sha256:403664b59ba336444e51d0136ff7ac757d6d366c45faa0d520e5af49ac440b63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.5 MB (66455572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb21ed4e07a9b63b2428b2838b6e548a3f32e1cf817ee54b0fa9f0cbb9d712d8`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:11:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 06:11:31 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 06:11:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:16:45 GMT
ENV PYPY_VERSION=5.10.1
# Thu, 15 Feb 2018 06:16:45 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 15 Feb 2018 06:17:16 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='75a276e1ee1863967bbacb70c5bff636de200768c0ec90e72f7ec17aace0aefe' ;; 		armel) pypyArch='linux-armel'; sha256='5065e9ad958d06b9612ba974f43997d20168d4245c054dd43270e4b458782282' ;; 		i386) pypyArch='linux32'; sha256='a6ceca9ee5dc511de7902164464b88311fec9366c5673d0c00528eda862bbe54' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 06:17:16 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b61e5722374388c2728810d98e2dc53efdcd51837fb47b62c85007384dc708`  
		Last Modified: Thu, 15 Feb 2018 06:17:37 GMT  
		Size: 2.9 MB (2859641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19680953dc48d84a0299a42ee0bf4eb551cd30ea1f87b55a13d0617abe83a64`  
		Last Modified: Thu, 15 Feb 2018 06:26:32 GMT  
		Size: 33.5 MB (33473552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-5-slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:ec9beddcc1cd463b2ec60a55cbae7cd58d2371a8f197b9acb9edada7746ece51
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62747593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b1c60ae7c8abee786243aebc15cf5e204a308fd080363538969ae164437d0bb`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 15 Feb 2018 20:56:30 GMT
ADD file:7590562c1d62ac7d305af7caf8771e09bcbf6d396e4d8d2b66d878327b4d3f52 in / 
# Thu, 15 Feb 2018 20:56:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 22:26:03 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 22:26:03 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:26:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:29:02 GMT
ENV PYPY_VERSION=5.10.1
# Thu, 15 Feb 2018 22:29:02 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 15 Feb 2018 22:30:12 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='75a276e1ee1863967bbacb70c5bff636de200768c0ec90e72f7ec17aace0aefe' ;; 		armel) pypyArch='linux-armel'; sha256='5065e9ad958d06b9612ba974f43997d20168d4245c054dd43270e4b458782282' ;; 		i386) pypyArch='linux32'; sha256='a6ceca9ee5dc511de7902164464b88311fec9366c5673d0c00528eda862bbe54' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 22:30:12 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:74273dae7ee101471a164eb562356e7b2e60d34be2b15b077b6dae6a9aa063ec`  
		Last Modified: Thu, 15 Feb 2018 21:05:26 GMT  
		Size: 28.4 MB (28430874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf26de43f681a5cf6f3be6e38ca95cb0f9bb0ed6fc82fe8a5596f82741919c1a`  
		Last Modified: Thu, 15 Feb 2018 22:32:01 GMT  
		Size: 2.6 MB (2607990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0667fcb389db612e1381f8bd910ef2069bcc63efe4754e841ebeb82c7f251f0d`  
		Last Modified: Thu, 15 Feb 2018 22:33:57 GMT  
		Size: 31.7 MB (31708729 bytes)  
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

## `pypy:3-slim`

```console
$ docker pull pypy@sha256:b87f73cbc54f99ee650d82472f8e178f917e930b86e5af6c0a55ee9404ce3c37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-slim` - linux; amd64

```console
$ docker pull pypy@sha256:403664b59ba336444e51d0136ff7ac757d6d366c45faa0d520e5af49ac440b63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.5 MB (66455572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb21ed4e07a9b63b2428b2838b6e548a3f32e1cf817ee54b0fa9f0cbb9d712d8`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:11:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 06:11:31 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 06:11:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:16:45 GMT
ENV PYPY_VERSION=5.10.1
# Thu, 15 Feb 2018 06:16:45 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 15 Feb 2018 06:17:16 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='75a276e1ee1863967bbacb70c5bff636de200768c0ec90e72f7ec17aace0aefe' ;; 		armel) pypyArch='linux-armel'; sha256='5065e9ad958d06b9612ba974f43997d20168d4245c054dd43270e4b458782282' ;; 		i386) pypyArch='linux32'; sha256='a6ceca9ee5dc511de7902164464b88311fec9366c5673d0c00528eda862bbe54' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 06:17:16 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b61e5722374388c2728810d98e2dc53efdcd51837fb47b62c85007384dc708`  
		Last Modified: Thu, 15 Feb 2018 06:17:37 GMT  
		Size: 2.9 MB (2859641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19680953dc48d84a0299a42ee0bf4eb551cd30ea1f87b55a13d0617abe83a64`  
		Last Modified: Thu, 15 Feb 2018 06:26:32 GMT  
		Size: 33.5 MB (33473552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:ec9beddcc1cd463b2ec60a55cbae7cd58d2371a8f197b9acb9edada7746ece51
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62747593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b1c60ae7c8abee786243aebc15cf5e204a308fd080363538969ae164437d0bb`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 15 Feb 2018 20:56:30 GMT
ADD file:7590562c1d62ac7d305af7caf8771e09bcbf6d396e4d8d2b66d878327b4d3f52 in / 
# Thu, 15 Feb 2018 20:56:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 22:26:03 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 22:26:03 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:26:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:29:02 GMT
ENV PYPY_VERSION=5.10.1
# Thu, 15 Feb 2018 22:29:02 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 15 Feb 2018 22:30:12 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='75a276e1ee1863967bbacb70c5bff636de200768c0ec90e72f7ec17aace0aefe' ;; 		armel) pypyArch='linux-armel'; sha256='5065e9ad958d06b9612ba974f43997d20168d4245c054dd43270e4b458782282' ;; 		i386) pypyArch='linux32'; sha256='a6ceca9ee5dc511de7902164464b88311fec9366c5673d0c00528eda862bbe54' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 22:30:12 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:74273dae7ee101471a164eb562356e7b2e60d34be2b15b077b6dae6a9aa063ec`  
		Last Modified: Thu, 15 Feb 2018 21:05:26 GMT  
		Size: 28.4 MB (28430874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf26de43f681a5cf6f3be6e38ca95cb0f9bb0ed6fc82fe8a5596f82741919c1a`  
		Last Modified: Thu, 15 Feb 2018 22:32:01 GMT  
		Size: 2.6 MB (2607990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0667fcb389db612e1381f8bd910ef2069bcc63efe4754e841ebeb82c7f251f0d`  
		Last Modified: Thu, 15 Feb 2018 22:33:57 GMT  
		Size: 31.7 MB (31708729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-slim` - linux; 386

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

## `pypy:latest`

```console
$ docker pull pypy@sha256:c2f36a41c972735ac904ac45d9032934e3ce378637f80b44ecb1db50019bbb0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:latest` - linux; amd64

```console
$ docker pull pypy@sha256:5b70356994d8a8b616593e231eca6d051308e874f684b80c1ea4a37276a6ee6f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.4 MB (286433116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20d58c6a89c0aaf8f809be3b7c7f21047295e5bf21484e39524df4f23b45c07a`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 15 Feb 2018 01:42:14 GMT
ADD file:f1509ab9c2cd3810736e26739fa0f78ee1ba942e14498ba5f266d8a78e664acc in / 
# Thu, 15 Feb 2018 01:42:14 GMT
CMD ["bash"]
# Sat, 17 Feb 2018 07:01:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 07:01:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Feb 2018 07:02:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 07:04:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 09:31:14 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Feb 2018 09:31:15 GMT
ENV LANG=C.UTF-8
# Sat, 17 Feb 2018 09:31:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Feb 2018 14:35:04 GMT
ENV PYPY_VERSION=5.10.1
# Sat, 17 Feb 2018 14:35:04 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Sat, 17 Feb 2018 14:35:13 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='75a276e1ee1863967bbacb70c5bff636de200768c0ec90e72f7ec17aace0aefe' ;; 		armel) pypyArch='linux-armel'; sha256='5065e9ad958d06b9612ba974f43997d20168d4245c054dd43270e4b458782282' ;; 		i386) pypyArch='linux32'; sha256='a6ceca9ee5dc511de7902164464b88311fec9366c5673d0c00528eda862bbe54' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Sat, 17 Feb 2018 14:35:24 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Sat, 17 Feb 2018 14:35:24 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:4176fe04cefee66d80f83003fd4166373f83cb552d1d01bb3b29a0ac45a48c50`  
		Last Modified: Thu, 15 Feb 2018 02:17:07 GMT  
		Size: 52.6 MB (52608285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:851356ecf618f41550b3b8696fb9aad7925f72929c8345453107cce510437608`  
		Last Modified: Sat, 17 Feb 2018 07:15:16 GMT  
		Size: 19.3 MB (19266391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6115379c7b49daf7b059dd310633130d93a983b52ee50146295b3963a6c30f11`  
		Last Modified: Sat, 17 Feb 2018 07:15:56 GMT  
		Size: 43.3 MB (43254368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaf7d781d6016dbad458f06bc6caae035c792278a8ccddbf7f0234621f1ef476`  
		Last Modified: Sat, 17 Feb 2018 07:16:34 GMT  
		Size: 135.0 MB (134962018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:40cf661a3cc4f2977407d1441b0f4b9ff98871c3edfef46db85f595cc5664147`  
		Last Modified: Sat, 17 Feb 2018 09:54:30 GMT  
		Size: 3.2 MB (3167714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14d96f0e7dd9c782f1c895e15aab73cd2d167749f4e58959a8baf9380fffc0e4`  
		Last Modified: Sat, 17 Feb 2018 14:53:23 GMT  
		Size: 29.0 MB (28998662 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3a6b9f18c94084da0c05149ac0aee4de771ed2479ab876eeab85ea7b12cfdd7`  
		Last Modified: Sat, 17 Feb 2018 14:53:15 GMT  
		Size: 4.2 MB (4175678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:latest` - linux; arm variant v5

```console
$ docker pull pypy@sha256:acc3737dcc5324e62196c2541f648f6697828b79f9249422dc986dbb4e99fb9f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **260.8 MB (260824530 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6565e4ba7963baf7d64813e28f07428d2fdcc6228e09291f2d44bfa18a8f0db4`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 15 Feb 2018 20:55:58 GMT
ADD file:1a16d6f6cb75aeb553c6b7777d0056b1a68f89295b25c0225c65c2e7dcac08e3 in / 
# Thu, 15 Feb 2018 20:55:59 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 21:36:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:36:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 15 Feb 2018 21:37:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 21:39:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:24:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 22:24:42 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:25:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:28:10 GMT
ENV PYPY_VERSION=5.10.1
# Thu, 15 Feb 2018 22:28:11 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 15 Feb 2018 22:28:20 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='75a276e1ee1863967bbacb70c5bff636de200768c0ec90e72f7ec17aace0aefe' ;; 		armel) pypyArch='linux-armel'; sha256='5065e9ad958d06b9612ba974f43997d20168d4245c054dd43270e4b458782282' ;; 		i386) pypyArch='linux32'; sha256='a6ceca9ee5dc511de7902164464b88311fec9366c5673d0c00528eda862bbe54' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Thu, 15 Feb 2018 22:28:48 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 15 Feb 2018 22:28:49 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:75ec46627298b11174762e9bae59bb036d4f3bfaace1da7614a2eb4881ed97d4`  
		Last Modified: Thu, 15 Feb 2018 21:04:30 GMT  
		Size: 50.9 MB (50889623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c8b3b6723ff243d07e7b92517f1477b51d94f85c82714a48e51f6fe07a4c155`  
		Last Modified: Thu, 15 Feb 2018 21:50:38 GMT  
		Size: 18.7 MB (18657025 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:890e801f2b1fd5e38e9d6c4334424fd5f0b74d1fe41de2e706f20b4ac7c4e4f5`  
		Last Modified: Thu, 15 Feb 2018 21:51:05 GMT  
		Size: 41.1 MB (41102481 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b536c6beca50f18e852c25fcc62150d80f257111216bb088f571786ce141bd7c`  
		Last Modified: Thu, 15 Feb 2018 21:52:07 GMT  
		Size: 115.7 MB (115744130 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d67e3d3efeecb65817a2aadd52dab2cf6fcb7c8c26a45a2fe4e919f412260748`  
		Last Modified: Thu, 15 Feb 2018 22:31:05 GMT  
		Size: 3.0 MB (3020530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92db80e132fe2306787fd9db3ff4d2d8fa04f1f8b5473017b75de23996c938f6`  
		Last Modified: Thu, 15 Feb 2018 22:32:58 GMT  
		Size: 27.2 MB (27233794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea5c048155adc52670c35def9ddc0031137683caaa2b744748da20823d03eaf3`  
		Last Modified: Thu, 15 Feb 2018 22:32:50 GMT  
		Size: 4.2 MB (4176947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:latest` - linux; 386

```console
$ docker pull pypy@sha256:08d77ba84b9d319d93fc134364f23118ac96949e0ebb16ea104462718ccd7c52
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.1 MB (287115422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ffc4dd5b532eaac28cd1777a64f0f2d25c4dc4ecf0c528f9d833ef51ecf2bfb`
-	Default Command: `["pypy3"]`

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
# Tue, 16 Jan 2018 15:38:14 GMT
ENV PYPY_VERSION=5.10.1
# Tue, 16 Jan 2018 15:38:14 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Tue, 16 Jan 2018 15:38:27 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='75a276e1ee1863967bbacb70c5bff636de200768c0ec90e72f7ec17aace0aefe' ;; 		armel) pypyArch='linux-armel'; sha256='5065e9ad958d06b9612ba974f43997d20168d4245c054dd43270e4b458782282' ;; 		i386) pypyArch='linux32'; sha256='a6ceca9ee5dc511de7902164464b88311fec9366c5673d0c00528eda862bbe54' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version
# Tue, 16 Jan 2018 15:50:01 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 16 Jan 2018 15:57:21 GMT
CMD ["pypy3"]
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
	-	`sha256:8b0ecb3a2da9ba302750aae5297ee091d3af5173a54199f96b8d1b229edf60cf`  
		Last Modified: Tue, 16 Jan 2018 16:40:57 GMT  
		Size: 26.2 MB (26230695 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e249311e9b82fe56585632975b1f3de0a2d0f01524a645f8e77eedb7e1d5a078`  
		Last Modified: Tue, 16 Jan 2018 16:40:46 GMT  
		Size: 4.2 MB (4176018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `pypy:slim`

```console
$ docker pull pypy@sha256:b87f73cbc54f99ee650d82472f8e178f917e930b86e5af6c0a55ee9404ce3c37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:slim` - linux; amd64

```console
$ docker pull pypy@sha256:403664b59ba336444e51d0136ff7ac757d6d366c45faa0d520e5af49ac440b63
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.5 MB (66455572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb21ed4e07a9b63b2428b2838b6e548a3f32e1cf817ee54b0fa9f0cbb9d712d8`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 15 Feb 2018 01:46:20 GMT
ADD file:a0f72eb6710fe45aff98d40665ed5c106a992b2b0d1d57a1fb6ca98c4aa0f0a6 in / 
# Thu, 15 Feb 2018 01:46:21 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 06:11:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 06:11:31 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 06:11:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 06:16:45 GMT
ENV PYPY_VERSION=5.10.1
# Thu, 15 Feb 2018 06:16:45 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 15 Feb 2018 06:17:16 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='75a276e1ee1863967bbacb70c5bff636de200768c0ec90e72f7ec17aace0aefe' ;; 		armel) pypyArch='linux-armel'; sha256='5065e9ad958d06b9612ba974f43997d20168d4245c054dd43270e4b458782282' ;; 		i386) pypyArch='linux32'; sha256='a6ceca9ee5dc511de7902164464b88311fec9366c5673d0c00528eda862bbe54' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 06:17:16 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:d2ca7eff5948133e4316d463c56948af87b4d4d09848ee0f8b698d3549a7a7dd`  
		Last Modified: Thu, 15 Feb 2018 02:18:31 GMT  
		Size: 30.1 MB (30122379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93b61e5722374388c2728810d98e2dc53efdcd51837fb47b62c85007384dc708`  
		Last Modified: Thu, 15 Feb 2018 06:17:37 GMT  
		Size: 2.9 MB (2859641 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b19680953dc48d84a0299a42ee0bf4eb551cd30ea1f87b55a13d0617abe83a64`  
		Last Modified: Thu, 15 Feb 2018 06:26:32 GMT  
		Size: 33.5 MB (33473552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:ec9beddcc1cd463b2ec60a55cbae7cd58d2371a8f197b9acb9edada7746ece51
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.7 MB (62747593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b1c60ae7c8abee786243aebc15cf5e204a308fd080363538969ae164437d0bb`
-	Default Command: `["pypy3"]`

```dockerfile
# Thu, 15 Feb 2018 20:56:30 GMT
ADD file:7590562c1d62ac7d305af7caf8771e09bcbf6d396e4d8d2b66d878327b4d3f52 in / 
# Thu, 15 Feb 2018 20:56:30 GMT
CMD ["bash"]
# Thu, 15 Feb 2018 22:26:03 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 15 Feb 2018 22:26:03 GMT
ENV LANG=C.UTF-8
# Thu, 15 Feb 2018 22:26:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 15 Feb 2018 22:29:02 GMT
ENV PYPY_VERSION=5.10.1
# Thu, 15 Feb 2018 22:29:02 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Thu, 15 Feb 2018 22:30:12 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='75a276e1ee1863967bbacb70c5bff636de200768c0ec90e72f7ec17aace0aefe' ;; 		armel) pypyArch='linux-armel'; sha256='5065e9ad958d06b9612ba974f43997d20168d4245c054dd43270e4b458782282' ;; 		i386) pypyArch='linux32'; sha256='a6ceca9ee5dc511de7902164464b88311fec9366c5673d0c00528eda862bbe54' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 15 Feb 2018 22:30:12 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:74273dae7ee101471a164eb562356e7b2e60d34be2b15b077b6dae6a9aa063ec`  
		Last Modified: Thu, 15 Feb 2018 21:05:26 GMT  
		Size: 28.4 MB (28430874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf26de43f681a5cf6f3be6e38ca95cb0f9bb0ed6fc82fe8a5596f82741919c1a`  
		Last Modified: Thu, 15 Feb 2018 22:32:01 GMT  
		Size: 2.6 MB (2607990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0667fcb389db612e1381f8bd910ef2069bcc63efe4754e841ebeb82c7f251f0d`  
		Last Modified: Thu, 15 Feb 2018 22:33:57 GMT  
		Size: 31.7 MB (31708729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:slim` - linux; 386

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
