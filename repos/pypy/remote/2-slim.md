## `pypy:2-slim`

```console
$ docker pull pypy@sha256:4c8b065febda292295d6e933e61a6483f3dd482a40ce102a981291b88b2bb019
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-slim` - linux; amd64

```console
$ docker pull pypy@sha256:e5d16be5a2c89b684d066f84bc3b547b2a81695acec750c46516a3f96e0e34d9
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.4 MB (66429585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f37ce4fcf8cecad3574aed781b13739e3bb48218a40ded1e945393a1d8581288`
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
# Fri, 27 Apr 2018 08:01:12 GMT
ENV PYPY_VERSION=6.0.0
# Fri, 27 Apr 2018 08:01:12 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Fri, 27 Apr 2018 08:01:53 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 27 Apr 2018 08:01:54 GMT
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
	-	`sha256:74b969776cf5d2f6211099bfc1ad778c941798f2e5777bafd70cc9a751b7457e`  
		Last Modified: Fri, 27 Apr 2018 08:58:08 GMT  
		Size: 33.4 MB (33447644 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-slim` - linux; arm variant v5

```console
$ docker pull pypy@sha256:a2eb61aaa439ed4060d478322a418aae9425581db192be6c14b9ecff3769d6ab
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.3 MB (62283688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3042ea34d96649b06ca403023aef05d1260fd97462fe12fcb89c340dd83b9781`
-	Default Command: `["pypy"]`

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
# Sat, 28 Apr 2018 12:10:40 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Sat, 28 Apr 2018 12:10:40 GMT
CMD ["pypy"]
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
	-	`sha256:a3ac68bbee54649ed0748a6dd165b2b970d6ba4919d63221e6cba93a464e5434`  
		Last Modified: Sat, 28 Apr 2018 12:13:49 GMT  
		Size: 31.2 MB (31239835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-slim` - linux; 386

```console
$ docker pull pypy@sha256:f052072746db3666bb75004441f2a3feac11363892e8896d32bda5c63ee70d47
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.8 MB (65761007 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57faaf1d4d2ceeee969db983150485b9d71ff004bb4daace8154a43c6eee02c2`
-	Default Command: `["pypy"]`

```dockerfile
# Tue, 27 Mar 2018 14:24:52 GMT
ADD file:4e79b8dd98596d0354ef30e136278a257e021a36d6d6271ec4c1dafaf07889ae in / 
# Tue, 27 Mar 2018 14:24:53 GMT
CMD ["bash"]
# Sat, 14 Apr 2018 00:23:45 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 00:23:45 GMT
ENV LANG=C.UTF-8
# Sat, 14 Apr 2018 00:24:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libsqlite3-0 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 13:38:09 GMT
ENV PYPY_VERSION=6.0.0
# Fri, 27 Apr 2018 13:38:09 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Fri, 27 Apr 2018 13:39:08 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		fetchDeps=' 		bzip2 		wget 	'; 	apt-get update && apt-get install -y $fetchDeps --no-install-recommends && rm -rf /var/lib/apt/lists/*; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	rm pypy.tar.bz2; 		pypy --version; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py; 		apt-get purge -y --auto-remove $fetchDeps
# Fri, 27 Apr 2018 13:39:09 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:ec7b1998b022b3eb218010907097139cebc6fb8b1aaab342d847d1f283ef3967`  
		Last Modified: Thu, 15 Mar 2018 01:00:27 GMT  
		Size: 30.3 MB (30273196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24b6c1bd180919638ccb1e470236aefd3b0dc46e268e0c3917f346f022bcaf2`  
		Last Modified: Sat, 14 Apr 2018 00:27:35 GMT  
		Size: 5.0 MB (4958194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25684c8107b9c3d4f094f063c5ba49fe078f844fe8c871b1439662d3f35baf02`  
		Last Modified: Fri, 27 Apr 2018 13:41:30 GMT  
		Size: 30.5 MB (30529617 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
