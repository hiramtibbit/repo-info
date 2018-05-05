## `pypy:3-6-slim`

```console
$ docker pull pypy@sha256:5ee9a48afeca933a0dd5142de0fdce423685b8800a7528fe6ea9b55d7e9d8dd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:3-6-slim` - linux; amd64

```console
$ docker pull pypy@sha256:f892e306f9f53dcd0b3a380cfd2e59a8f1375ccbd35f1da898d7bb6307db1d6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.3 MB (63310578 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8df5e89dfbf7869c0c125875890d9140f93cf272cf601c496551101a827e5177`
-	Default Command: `["pypy3"]`

```dockerfile
# Sat, 28 Apr 2018 06:45:24 GMT
ADD file:50be6ceb11c382ed9674106471df123e9a76f549fe729b4751bc95662258f9e0 in / 
# Sat, 28 Apr 2018 06:45:24 GMT
CMD ["bash"]
# Tue, 01 May 2018 22:09:51 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 May 2018 22:09:51 GMT
ENV LANG=C.UTF-8
# Wed, 02 May 2018 08:47:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 08:47:12 GMT
ENV PYPY_VERSION=6.0.0
# Wed, 02 May 2018 08:47:12 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 05 May 2018 02:53:58 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 05 May 2018 02:53:59 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:4d0d76e05f3c6caf923a71ca3b3d2cc8c834ca61779ae6b6d83547f3dd814980`  
		Last Modified: Sat, 28 Apr 2018 08:30:42 GMT  
		Size: 30.1 MB (30127297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd3c8d3e2e97f6ca65ce1cb5bd3c9ee8647a2356660fb6ea071ea9ed2ad1b1f7`  
		Last Modified: Wed, 02 May 2018 09:40:33 GMT  
		Size: 2.9 MB (2859787 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c42c9eba66734306b66999abc39b26af4077ccc3843d759cf4d9dd287e22d1fc`  
		Last Modified: Sat, 05 May 2018 02:55:48 GMT  
		Size: 30.3 MB (30323494 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6-slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:234d4799cbbc8b8f046a65bbbf6d4683b3b4e189b7a55b3fff2efb91ee96d697
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.6 MB (59579805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbe11153d462c6120381deaae8893a354edf59dbd6e0e0f019380f4dbef1c752`
-	Default Command: `["pypy3"]`

```dockerfile
# Sat, 28 Apr 2018 08:49:49 GMT
ADD file:e9274d48b6cf2508214a554b4dbe651b4dfa95bb52dba47a96fe8842bf606a87 in / 
# Sat, 28 Apr 2018 08:49:49 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 11:14:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 11:14:07 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:09:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:09:32 GMT
ENV PYPY_VERSION=6.0.0
# Sat, 28 Apr 2018 12:09:32 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 05 May 2018 11:30:13 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 05 May 2018 11:30:15 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:94b675ca74d2386dbd57e10d92f282f24ca3519fd21339c04af3f8f7e523617c`  
		Last Modified: Sat, 28 Apr 2018 08:57:53 GMT  
		Size: 28.4 MB (28435716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33759359261b474dbc8c3098a617541a8ab1c17f9c0bdca58b9a277212a2de81`  
		Last Modified: Sat, 28 Apr 2018 12:13:39 GMT  
		Size: 2.6 MB (2608137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e974a2a3d4b53bfcd93e2ad2efe1d8f023c87a308cf828dc8c406d3e59061a25`  
		Last Modified: Sat, 05 May 2018 11:32:56 GMT  
		Size: 28.5 MB (28535952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:3-6-slim` - linux; 386

```console
$ docker pull pypy@sha256:17b1dfc90654670fb92712789160be400b5845bb65720b80add77a7916770870
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.8 MB (66828278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d32461c849b8ad7aab58d164ed2553df83a5da4a17f9cbff08bd0069a251033b`
-	Default Command: `["pypy3"]`

```dockerfile
# Sat, 28 Apr 2018 10:39:45 GMT
ADD file:335ca08e6c562d8b16f2a4e788c5e977ba9815526d92d6d48cc3b8093824da2d in / 
# Sat, 28 Apr 2018 10:39:45 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 15:30:03 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 15:30:03 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 15:30:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:30:35 GMT
ENV PYPY_VERSION=6.0.0
# Sat, 28 Apr 2018 15:30:35 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 28 Apr 2018 15:32:58 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='4cfffa292b9ef34bb6ba39cdbaa196c5c5cbbc5aa3faaa157cf45d7e34027048' ;; 		armel) pypyArch='linux-armel'; sha256='6a6888a55192f58594838b8b3d2e7daaad43d3bf4293afab3dd8987d0bbd1124' ;; 		i386) pypyArch='linux32'; sha256='b04eeee5160e6cb5f8962de80f077ea1dc7be34e77d74bf075519c23603f5ff9' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy3-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy3 --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy3 get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 28 Apr 2018 15:32:58 GMT
CMD ["pypy3"]
```

-	Layers:
	-	`sha256:175c17a0040b2274213f9504ec9e834814804aa24e25f9537af71fccc81a017f`  
		Last Modified: Sat, 28 Apr 2018 10:45:06 GMT  
		Size: 30.3 MB (30278658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e9453f192fc2857c5af022e89750b78cd896681ee227472a4d63c4c4bf7b84d`  
		Last Modified: Sat, 28 Apr 2018 15:33:49 GMT  
		Size: 5.0 MB (4958093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b8ce5bf0d91501618bc11744ee0b2dd30758f4a1fce2f91f1a544e63e5df0c27`  
		Last Modified: Sat, 28 Apr 2018 15:35:01 GMT  
		Size: 31.6 MB (31591527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
