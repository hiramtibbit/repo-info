## `python:3-slim-stretch`

```console
$ docker pull python@sha256:5ab28ea2c4fa02362a29a37d560637c6b12fd5135f1e68ac9ba359eeb1c8c274
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

### `python:3-slim-stretch` - linux; amd64

```console
$ docker pull python@sha256:1865395fcf3303fa38a6b57ceef98e567558ea33567c70b52139711e2c4ccad5
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.6 MB (49557406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29ea9c0b39c6edf86d32c123893b817f2208b566fd2f511c77508756156002a6`
-	Default Command: `["python3"]`

```dockerfile
# Sat, 28 Apr 2018 07:09:59 GMT
ADD file:ec5be7eec56a749752ca284359ece04f5eb0b981eac08b8855454c6b16e3893c in / 
# Sat, 28 Apr 2018 07:09:59 GMT
CMD ["bash"]
# Tue, 01 May 2018 21:48:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 May 2018 21:48:42 GMT
ENV LANG=C.UTF-8
# Sat, 05 May 2018 02:59:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Sat, 05 May 2018 02:59:15 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Sat, 05 May 2018 03:06:20 GMT
ENV PYTHON_VERSION=3.6.5
# Sat, 05 May 2018 03:08:04 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 05 May 2018 03:08:04 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 05 May 2018 03:08:05 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 05 May 2018 03:08:13 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 05 May 2018 03:08:13 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:f2aa67a397c49232112953088506d02074a1fe577f65dc2052f158a3e5da52e8`  
		Last Modified: Sat, 28 Apr 2018 09:31:20 GMT  
		Size: 22.5 MB (22496029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:19cc085bc22b483671d51129bf5304047e20b6ce4dc7bda12950bd33279eacd3`  
		Last Modified: Sat, 05 May 2018 03:46:38 GMT  
		Size: 3.5 MB (3465703 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83bd7790bc68819ea41a6cdc62220e400a7fe74d5b4094c22048ab97c9940d74`  
		Last Modified: Sat, 05 May 2018 03:48:32 GMT  
		Size: 21.5 MB (21526174 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b3329adba1bd3fcca6862e4aa377088ca0f835eeade186646bafd106756476c`  
		Last Modified: Sat, 05 May 2018 03:48:29 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d0a8fd6eb5d02a4d476f41f4051a0430a6f97d166a5697280f46d063927a466f`  
		Last Modified: Sat, 05 May 2018 03:48:29 GMT  
		Size: 2.1 MB (2069260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:3-slim-stretch` - linux; arm variant v5

```console
$ docker pull python@sha256:f8da676b6270bae9cccc3e5bc7e3eba1e0f1bc847afd5fec4591f170ab0713ee
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.9 MB (46922430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95f92abed892d5c310eec50dfeef5c1722fe835c3cad80da7567bd698f621ba3`
-	Default Command: `["python3"]`

```dockerfile
# Sat, 28 Apr 2018 08:53:29 GMT
ADD file:ca564f3cd7bd0fee7f6e56d1a55f5f92da6d4bf55ce3bf20ca398e9e95cdf8df in / 
# Sat, 28 Apr 2018 08:53:30 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 10:59:31 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 10:59:31 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 10:59:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 10:59:46 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Sat, 28 Apr 2018 11:07:57 GMT
ENV PYTHON_VERSION=3.6.5
# Sat, 28 Apr 2018 11:10:13 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 28 Apr 2018 11:10:14 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 28 Apr 2018 11:10:14 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 28 Apr 2018 11:10:32 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 28 Apr 2018 11:10:32 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:b2a4458ef3b9777a47503028af324e4890546ca8e24a86697b3219a6e3069450`  
		Last Modified: Sat, 28 Apr 2018 09:02:15 GMT  
		Size: 21.2 MB (21175666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:676209a71d461635ebc3754526376484b357e19c05263a41db162b6b638b6301`  
		Last Modified: Sat, 28 Apr 2018 11:58:29 GMT  
		Size: 3.1 MB (3104680 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:000e6d4a9cedc6ebdfdea5e2ae0d7202dd6ed0126b4e06fc9976910414a00004`  
		Last Modified: Sat, 28 Apr 2018 11:59:57 GMT  
		Size: 20.6 MB (20572366 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e4e51ca9c1227163a8c831c6e373e8cf996453cec9e2d5bdd15a23961f26ab`  
		Last Modified: Sat, 28 Apr 2018 11:59:51 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e10930e4cf0dad76c8c22308cf8adeeb9aad6401ad059c52e078bf9b4fa081e8`  
		Last Modified: Sat, 28 Apr 2018 11:59:52 GMT  
		Size: 2.1 MB (2069478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:3-slim-stretch` - linux; arm variant v7

```console
$ docker pull python@sha256:90f87b52cd0eac855790d240e78e786fe3316a7559cfe2259cf7a6e26d8ae231
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.5 MB (44502117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19665910e489e0ec542aece7369d2ea956eca0d707985fce1d3df19eb81b5f41`
-	Default Command: `["python3"]`

```dockerfile
# Sat, 28 Apr 2018 12:04:59 GMT
ADD file:f8bb9e9954bfe2f550e8a786c4be1dd5fca4a373b82b372b80c163e5640bd5a4 in / 
# Sat, 28 Apr 2018 12:05:00 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 14:22:08 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 14:22:08 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 14:22:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:22:21 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Sat, 28 Apr 2018 14:28:52 GMT
ENV PYTHON_VERSION=3.6.5
# Sat, 28 Apr 2018 14:30:53 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 28 Apr 2018 14:30:54 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 28 Apr 2018 14:30:54 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 28 Apr 2018 14:31:09 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 28 Apr 2018 14:31:09 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:6c8a025e90b325dd5af06b0297cc1608120a47d4ab0e1cedb26c8cda811091d6`  
		Last Modified: Sat, 28 Apr 2018 12:16:08 GMT  
		Size: 19.3 MB (19286790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b48b512ea54df8a181c2faf55494bd3a79928e37a4978c6790b4d5dff713ff6`  
		Last Modified: Sat, 28 Apr 2018 15:18:55 GMT  
		Size: 2.9 MB (2932736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83f4a05c6d4ec9a1420831a7ba2b3b94817d195f87b3eaadf8e5e4c28f6bf7c4`  
		Last Modified: Sat, 28 Apr 2018 15:20:46 GMT  
		Size: 20.2 MB (20213944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d541143a9dff6c5e494fdcbe6065f312ff0f9d6ee7a4c3a9a3d5a9b0482e9aa`  
		Last Modified: Sat, 28 Apr 2018 15:20:40 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:07b23aa0eb2f8dad42de6453f93a73de430eb0c2ec044c1daba8412b7e924b4d`  
		Last Modified: Sat, 28 Apr 2018 15:20:41 GMT  
		Size: 2.1 MB (2068406 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:3-slim-stretch` - linux; arm64 variant v8

```console
$ docker pull python@sha256:3f12da5d7fef64b1a11291ebaa7c811f571c88f7236bfd8b3b1229f7dd2ca9ac
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.7 MB (46743823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:040316fd934e7a69747d7d98bc004e37a994ee57bc6ba6b5046dee4b96bddd30`
-	Default Command: `["python3"]`

```dockerfile
# Mon, 30 Apr 2018 23:33:18 GMT
ADD file:d423aa6d423df239af0602fe8134c14cb277778de23c8553d629d3b4b510f38b in / 
# Mon, 30 Apr 2018 23:33:20 GMT
CMD ["bash"]
# Tue, 01 May 2018 04:50:08 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 May 2018 04:50:09 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 04:50:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 04:50:56 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Tue, 01 May 2018 05:02:51 GMT
ENV PYTHON_VERSION=3.6.5
# Tue, 01 May 2018 05:10:20 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Tue, 01 May 2018 05:10:23 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 01 May 2018 05:10:24 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Tue, 01 May 2018 05:11:24 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 01 May 2018 05:11:25 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:18d6337cc9064ce5276eac2eb6da6c5fe3f204bc7f1392f5ad1ba468817c609e`  
		Last Modified: Mon, 30 Apr 2018 23:54:34 GMT  
		Size: 20.3 MB (20347907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:143036e23286164c3e08f59417c709d62ca2dbe4fb25f609503670b9a6760dfa`  
		Last Modified: Tue, 01 May 2018 06:30:15 GMT  
		Size: 3.1 MB (3090436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6afd4cf4e51481673b3cb754ee1ce4fb46121dd4c1f97bb3ba0af783b409fa7c`  
		Last Modified: Tue, 01 May 2018 06:31:22 GMT  
		Size: 21.2 MB (21235803 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cedb77e1baf3c4327a7f7c791cfa30a37a86e7a96f9571c2a5a44dbd076e34d`  
		Last Modified: Tue, 01 May 2018 06:31:13 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1db18829d2939b1bd799d9ca8d17ed120f60946077364db1c9eeb04ff81e02fd`  
		Last Modified: Tue, 01 May 2018 06:31:14 GMT  
		Size: 2.1 MB (2069434 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:3-slim-stretch` - linux; 386

```console
$ docker pull python@sha256:1eba116b464e5c73c7c8f7a8a70902c11a39cdf024990fd2ab10c4004b5399cb
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48906928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88365bba2a2972878b62a70aae94b55198a7b07937da8568a94f0d1461cc76b3`
-	Default Command: `["python3"]`

```dockerfile
# Sat, 28 Apr 2018 10:41:49 GMT
ADD file:9e45c98885c63b1f77e50324055758088ca38203260e2305cca24b13fbeb23cf in / 
# Sat, 28 Apr 2018 10:41:49 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 18:37:34 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 18:37:34 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 18:37:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 18:37:45 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Sat, 28 Apr 2018 18:42:54 GMT
ENV PYTHON_VERSION=3.6.5
# Sat, 28 Apr 2018 18:44:48 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 28 Apr 2018 18:44:48 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 28 Apr 2018 18:44:48 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 28 Apr 2018 18:44:58 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 28 Apr 2018 18:44:58 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:23510c5166fc980d20c6b002b2a7bbdde547dfc6195bbfcb7e0f2a39c590a210`  
		Last Modified: Sat, 28 Apr 2018 10:49:34 GMT  
		Size: 23.1 MB (23138515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a48a6f00e8e679ea73b9c2832626838c3240ddb8b3ff1a15a65064dfb7c65f97`  
		Last Modified: Sat, 28 Apr 2018 19:20:55 GMT  
		Size: 3.5 MB (3505797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b3226e0041247c7ba6a9269351a57b9e4bcff3c6d7a9ab296baac0aba8961b4`  
		Last Modified: Sat, 28 Apr 2018 19:22:11 GMT  
		Size: 20.2 MB (20193658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2173f46fa9de34adc28ab288b428dabbd195b54442fda50874bd989ff8ecc04d`  
		Last Modified: Sat, 28 Apr 2018 19:22:06 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b0656a1c077eab3f27fb2ade77586d6e749347e9608c7d53b7a203980ea592`  
		Last Modified: Sat, 28 Apr 2018 19:22:07 GMT  
		Size: 2.1 MB (2068717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:3-slim-stretch` - linux; ppc64le

```console
$ docker pull python@sha256:71a592c2e8fe708ac9d8ca8140e766e14e0a0b0d91322be441147c0672fba27f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.7 MB (49747470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f842badb945e3c26dcffa783b08c708db45e0ad92f2e73dd324e5bde84694f97`
-	Default Command: `["python3"]`

```dockerfile
# Sat, 28 Apr 2018 08:20:54 GMT
ADD file:c561a92d41ab01d60c88efa7b21fd9b48e6c0c96fb8d2552f4cebbed3df42bca in / 
# Sat, 28 Apr 2018 08:20:55 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:26:14 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 12:26:15 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 12:26:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:26:34 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Sat, 28 Apr 2018 12:35:32 GMT
ENV PYTHON_VERSION=3.6.5
# Sat, 28 Apr 2018 12:43:41 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 28 Apr 2018 12:43:59 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 28 Apr 2018 12:44:03 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 28 Apr 2018 12:44:46 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 28 Apr 2018 12:44:47 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:39214b2a7dd7dd2d1069dd155ce8ab2206bb1fda22be8136b88451c8be20e82f`  
		Last Modified: Sat, 28 Apr 2018 08:30:28 GMT  
		Size: 22.8 MB (22753096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee2b50ce70febfd875aa3baada8948ea3791c7263a52f353d15b5bbb903e36b2`  
		Last Modified: Sat, 28 Apr 2018 13:47:15 GMT  
		Size: 3.1 MB (3114715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9d4b93699bf8e4d68d90b277548bbc88013005d360833d1f67cebb16e8ba26`  
		Last Modified: Sat, 28 Apr 2018 13:49:10 GMT  
		Size: 21.8 MB (21809718 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee663d07b315301f0d87136dcc89af71efac1c1dd621b9109c8c068775aa1d24`  
		Last Modified: Sat, 28 Apr 2018 13:49:03 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8c02aebdfe1cf2769a89da6b282501d4fbda20cc1ed086276a0313ccbc31a23`  
		Last Modified: Sat, 28 Apr 2018 13:49:04 GMT  
		Size: 2.1 MB (2069701 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:3-slim-stretch` - linux; s390x

```console
$ docker pull python@sha256:e557b073ff576886943459cdd03409383896a6919b6a285293971bd205aaf9fd
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.7 MB (50652316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19aa2020307d3b69a7fc4bac8ead1dcc0967246d251712eea2504367685e0c8d`
-	Default Command: `["python3"]`

```dockerfile
# Sat, 28 Apr 2018 11:45:29 GMT
ADD file:89223bc6886b09479a52e6d05479980ad8e46c8c707ac40cd81b664fe9827428 in / 
# Sat, 28 Apr 2018 11:45:29 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 13:37:04 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 13:37:04 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 13:37:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		libexpat1 		libffi6 		libgdbm3 		libreadline7 		libsqlite3-0 		libssl1.1 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 13:37:11 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Sat, 28 Apr 2018 13:41:49 GMT
ENV PYTHON_VERSION=3.6.5
# Sat, 28 Apr 2018 13:43:40 GMT
RUN set -ex 	&& buildDeps=" 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tcl-dev 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 	" 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 28 Apr 2018 13:43:41 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 28 Apr 2018 13:43:41 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 28 Apr 2018 13:43:49 GMT
RUN set -ex; 		apt-get update; 	apt-get install -y --no-install-recommends wget; 	rm -rf /var/lib/apt/lists/*; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-get purge -y --auto-remove wget; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 28 Apr 2018 13:43:49 GMT
CMD ["python3"]
```

-	Layers:
	-	`sha256:39cbaa616b05fb96ca4be9aac8b4d99ba8bf573e07a754a8c43dbec7ff518bbb`  
		Last Modified: Sat, 28 Apr 2018 11:51:43 GMT  
		Size: 22.3 MB (22349898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f3c7deb418526066313f69b62c88fa9d4ca6005844542eadd204a79914b74e4`  
		Last Modified: Sat, 28 Apr 2018 14:10:02 GMT  
		Size: 3.2 MB (3208066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a654e895951c182a5189536009c06375f27db905ed7045ccb186db9ba7769121`  
		Last Modified: Sat, 28 Apr 2018 14:11:20 GMT  
		Size: 23.0 MB (23026038 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b4e16c51ac06d4ed0175aa8f4e606bbafdf568612a5bd7c7a02284cf0009ff1`  
		Last Modified: Sat, 28 Apr 2018 14:11:15 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f0bcafd6d4524b60e90b0f15856ecbc456a661b53867abcac4324e5d961bc91`  
		Last Modified: Sat, 28 Apr 2018 14:11:16 GMT  
		Size: 2.1 MB (2068075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
