## `pypy:2-slim-jessie`

```console
$ docker pull pypy@sha256:b8b17a1c24fd5f07308b55a0e1409fbb1efccfb3a29a1ec89fc84ed1036bbe25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-slim-jessie` - linux; amd64

```console
$ docker pull pypy@sha256:16ec3761d819926b549121ff017b8f5f13344cd613935425041f28ad0b3ae93f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.4 MB (63447013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bf886f1c5289874b9ef7767da65b4f212d45a666b51a75dfa401e4ff3604b8b`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 06 Feb 2019 03:27:43 GMT
ADD file:5ac7d2fc09752a0bae6b0b631692b7ae99220c3957a18be70338e3a63a279c11 in / 
# Wed, 06 Feb 2019 03:27:44 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 03:45:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 03:45:50 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 10:00:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:00:09 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 06 Feb 2019 10:00:09 GMT
ENV PYTHON_PIP_VERSION=19.0.1
# Wed, 06 Feb 2019 10:02:48 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 06 Feb 2019 10:02:48 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:9a6b35880e8b6f720a2563dacfd85c994ea017630d1bd1e8ba8c0706cd0bdf9e`  
		Last Modified: Wed, 06 Feb 2019 03:33:38 GMT  
		Size: 30.2 MB (30151859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:627803bf129d89e30e37f83530a144d3a64ad3bf58e667f6e6bcab90832df0c5`  
		Last Modified: Wed, 06 Feb 2019 10:06:47 GMT  
		Size: 2.8 MB (2811598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55b3d3ebd0024c41a37aa07c8ba51f312ecafc3c708e2d6e102179ee2a91500e`  
		Last Modified: Wed, 06 Feb 2019 10:06:55 GMT  
		Size: 30.5 MB (30483556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-slim-jessie` - linux; arm variant v5

```console
$ docker pull pypy@sha256:22ab1d6fad1400dced026a95a71a921d12130410d07d8727f3fe18dae40acbba
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.3 MB (59295520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeba3a1f608b3af794eac161880b9c18f0dceb521df1de80ec23d8587b62a333`
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
# Sat, 26 Jan 2019 09:49:15 GMT
ENV PYTHON_PIP_VERSION=19.0.1
# Sat, 26 Jan 2019 09:51:11 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 26 Jan 2019 09:51:12 GMT
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
	-	`sha256:ffb930ba506920b34e0f4b64309eff42b39d43347960287f6de056f4f01579ad`  
		Last Modified: Sat, 26 Jan 2019 09:55:30 GMT  
		Size: 28.3 MB (28272855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-slim-jessie` - linux; 386

```console
$ docker pull pypy@sha256:285dd978e22179df46c270d19b6d1a20a3af2ace4b67c16872381c598e8f62c1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.8 MB (62782183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1fda83295c82a82bf77376aeb032ee54cd1a8c429a3fd544f6b9af08a9f8d46`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 06 Feb 2019 11:58:59 GMT
ADD file:0f5ce19a631296a55839476a8427a6bb92538d0d63d89f0dfbeb8a1c8b0df1ff in / 
# Wed, 06 Feb 2019 11:59:00 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 22:09:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 22:09:48 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 04:06:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 04:06:54 GMT
ENV PYPY_VERSION=6.0.0
# Thu, 07 Feb 2019 04:06:54 GMT
ENV PYTHON_PIP_VERSION=19.0.1
# Thu, 07 Feb 2019 04:10:50 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Thu, 07 Feb 2019 04:10:50 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:c4ddbb4ee60739923db706a335f6f79e8a70a6a62aa8917fc9cc3b04b936afe5`  
		Last Modified: Wed, 06 Feb 2019 12:04:43 GMT  
		Size: 30.3 MB (30293283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4868eb61a19a1f0f6933a6ba3f7e222e50f3d6eb740cbac951af9b5c556f94a4`  
		Last Modified: Thu, 07 Feb 2019 04:15:56 GMT  
		Size: 4.9 MB (4918289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c44a1875f0222786c7d326f392a48674d75f672f7d2e851190f1e35608f645f`  
		Last Modified: Thu, 07 Feb 2019 04:16:04 GMT  
		Size: 27.6 MB (27570611 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
