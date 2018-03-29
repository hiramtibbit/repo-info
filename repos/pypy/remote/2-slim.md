## `pypy:2-slim`

```console
$ docker pull pypy@sha256:6d0995d4bbdf455e27fbec4bbd14d8dcc7a33dfd8a6ae1f6faa989318fe92072
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-slim` - linux; amd64

```console
$ docker pull pypy@sha256:dfe7fcbd63696cc8d3be60a2a81453d1c7410d9e70184904734e08bc5b61289f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65773054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1481de4147136834f6b54ada77a64393343ee769e1666227837ab10c0bf6b26c`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 13 Mar 2018 21:58:13 GMT
ADD file:080bac9a2cdcc70ad61e50045a26172f0e1acfd3a26360cb86b6e26a3307b2e1 in / 
# Tue, 13 Mar 2018 21:58:13 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 17:08:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 17:08:32 GMT
ENV LANG=C.UTF-8
# Wed, 14 Mar 2018 17:08:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 17:08:55 GMT
ENV PYPY_VERSION=5.10.0
# Wed, 14 Mar 2018 17:08:55 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 14 Mar 2018 17:12:02 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='da85af9240220179493ad66c857934dc7ea91aef8f168cd293a2d99af8346ee2' ;; 		armel) pypyArch='linux-armel'; sha256='6fdd55dd8f674efd06f76edb60a09a03b9b04a5fbc56741f416a94a0b9d2ff91' ;; 		i386) pypyArch='linux32'; sha256='ee1980467ac8cc9fa9d609f7da93c5282503e59a548781248fe1914a7199d540' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Mar 2018 17:12:02 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:b0568b191983bc2844b2fdb48aeefa72452931bfead0a87e0515bfc602ea3b0c`  
		Last Modified: Tue, 13 Mar 2018 22:45:19 GMT  
		Size: 30.1 MB (30122402 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e169b113f0fd195b3b722c17cb4eb4007ee4d27565e349b08152feb4a062c4e4`  
		Last Modified: Wed, 14 Mar 2018 17:15:33 GMT  
		Size: 2.9 MB (2859539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cc49de26099ec45f7002af043ac1b8e36dd28a94bb6a75fd8e2dfaeb310d171`  
		Last Modified: Wed, 14 Mar 2018 17:15:39 GMT  
		Size: 32.8 MB (32791113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:44e8da0c3d00ada35e66cc3d5a2e83718c529a1e3e3fffa3e944c50f95694304
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.8 MB (61806510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95bca3edf6401cf26e2736078f372da8cf7ed056859614dd91d1aa74cd6ec77a`
-	Default Command: `["pypy"]`

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
# Wed, 14 Mar 2018 23:35:19 GMT
ENV PYPY_VERSION=5.10.0
# Wed, 14 Mar 2018 23:35:19 GMT
ENV PYTHON_PIP_VERSION=9.0.1
# Wed, 14 Mar 2018 23:36:24 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='da85af9240220179493ad66c857934dc7ea91aef8f168cd293a2d99af8346ee2' ;; 		armel) pypyArch='linux-armel'; sha256='6fdd55dd8f674efd06f76edb60a09a03b9b04a5fbc56741f416a94a0b9d2ff91' ;; 		i386) pypyArch='linux32'; sha256='ee1980467ac8cc9fa9d609f7da93c5282503e59a548781248fe1914a7199d540' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Wed, 14 Mar 2018 23:36:24 GMT
CMD ["pypy"]
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
	-	`sha256:4dfbe421f3c4923afcaed2933e18eda45f77c7e0bf94dbccdb30f686fd827e54`  
		Last Modified: Wed, 14 Mar 2018 23:38:21 GMT  
		Size: 30.8 MB (30767668 bytes)  
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
