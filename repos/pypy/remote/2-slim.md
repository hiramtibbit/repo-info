## `pypy:2-slim`

```console
$ docker pull pypy@sha256:b01154be7b91dde54791f73d5123a833ac6ea4d26b32e755f65c95cfdae91cd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-slim` - linux; amd64

```console
$ docker pull pypy@sha256:1d29885aa80084a054fce01dd8c1d0bd082838ff2ed46616c767592c09ce7c75
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.4 MB (63380338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5626b7ad2d21e6c99199f33e63d69cb3b9016473689d926f9e5fe19bce630137`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 00:43:52 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 00:43:53 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 04:59:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 04:59:56 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 17 Jul 2018 04:59:56 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 17 Jul 2018 05:00:57 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Tue, 17 Jul 2018 05:00:58 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7a839378738b3063165be5b357b24088c02116fd8a6d823fb05ced667ed73b93`  
		Last Modified: Tue, 17 Jul 2018 05:04:42 GMT  
		Size: 2.8 MB (2811108 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d018b8262b200533e100fd9ff2f3540b8130e8270bd64e8a60f3217181c6d36c`  
		Last Modified: Tue, 17 Jul 2018 05:04:56 GMT  
		Size: 30.4 MB (30449066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:f3488952da1583cbd3e88ead07174356a8073724263669d3da9503c00365ed75
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.3 MB (59281964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09131a42351ef6de408c32256cfc07add3b253f3cd94acf295931350bb1dc860`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 27 Jun 2018 08:50:04 GMT
ADD file:f9c252e838b8db10a094c47436a079487e2fe317ebc0013a271810fe968cf999 in / 
# Wed, 27 Jun 2018 08:50:04 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 09:53:19 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 09:53:19 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 09:53:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 09:53:51 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 27 Jun 2018 09:53:52 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Wed, 27 Jun 2018 09:54:59 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 09:54:59 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:174cee00e71be1a79f61029d2ef1a01e0060cb74e2d18dc5aca18cbea3159528`  
		Last Modified: Wed, 27 Jun 2018 08:58:54 GMT  
		Size: 28.4 MB (28430287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83bd842c8a5f93958d1db75997e62ff2ddadb56723b42be97f1e6352b708942c`  
		Last Modified: Wed, 27 Jun 2018 09:57:51 GMT  
		Size: 2.6 MB (2608114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78a731d76df7e66c6ce16b045085b7646f3444d369e09df0ff44211e14a65d5b`  
		Last Modified: Wed, 27 Jun 2018 09:58:01 GMT  
		Size: 28.2 MB (28243563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-slim` - linux; 386

```console
$ docker pull pypy@sha256:c00d68a5272fe402732bf508b8de8df76327c37284c494eea4420593563af23d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.8 MB (62761310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5eb6979306d71887f1ada48a37d50d90ef9583885a610973a277a319d76b6d90`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 27 Jun 2018 10:40:54 GMT
ADD file:cd5600a909bc1ec399c2dd64e2e0f8383e1029c2169b56e923349fff08a544a6 in / 
# Wed, 27 Jun 2018 10:40:55 GMT
CMD ["bash"]
# Wed, 27 Jun 2018 13:20:45 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Jun 2018 13:20:45 GMT
ENV LANG=C.UTF-8
# Wed, 27 Jun 2018 14:23:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Jun 2018 14:23:38 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 27 Jun 2018 14:23:38 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Wed, 27 Jun 2018 14:25:08 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 27 Jun 2018 14:25:09 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:754ff349eaaa3314a657ce6b24abe2a9d237430ab3b66d7bd2b21113499d68ff`  
		Last Modified: Wed, 27 Jun 2018 10:54:13 GMT  
		Size: 30.3 MB (30269679 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ea232d55f0fe15b5be6d6b795e8018a60ad308b20ca30f89851f20fff7b2de`  
		Last Modified: Wed, 27 Jun 2018 14:28:44 GMT  
		Size: 5.0 MB (4958120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e633572caf1513c51f9291ea8160ea28db9cd81a4c64755f483bcd491f4755fd`  
		Last Modified: Wed, 27 Jun 2018 14:29:01 GMT  
		Size: 27.5 MB (27533511 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
