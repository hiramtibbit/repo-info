## `hylang:0-python2.7-alpine3.9`

```console
$ docker pull hylang@sha256:92ad050436eda8f84969f13b2b24aeffd6e705bf2a346313730fe0250419ef8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `hylang:0-python2.7-alpine3.9` - linux; amd64

```console
$ docker pull hylang@sha256:b96fcbc0dd84638a2b2e3dcb3e0d4b4cbdc1f2f7c6a24e79a3043bf03979091b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25588197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdb47609cf920c228e223600cca4f1c222aea7075350fb00b851ec30ca14f4e4`
-	Default Command: `["hy"]`

```dockerfile
# Sat, 11 May 2019 00:07:03 GMT
ADD file:a86aea1f3a7d68f6ae03397b99ea77f2e9ee901c5c59e59f76f93adbb4035913 in / 
# Sat, 11 May 2019 00:07:03 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 01:52:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 01:52:58 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 02:13:18 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 11 May 2019 02:13:19 GMT
RUN apk add --no-cache ca-certificates
# Sat, 11 May 2019 02:13:20 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 11 May 2019 02:13:20 GMT
ENV PYTHON_VERSION=2.7.16
# Sat, 11 May 2019 02:16:53 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 11 May 2019 02:16:53 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Sat, 11 May 2019 02:17:01 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 11 May 2019 02:17:02 GMT
CMD ["python2"]
# Wed, 22 May 2019 22:25:11 GMT
ENV HY_VERSION=0.17.0
# Wed, 22 May 2019 22:25:15 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Wed, 22 May 2019 22:25:16 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1819f4b92bc2a2b9dd749cb984ddb43e05ba64ede9b08c50b4a89c06bad91df7`  
		Last Modified: Sat, 11 May 2019 02:20:27 GMT  
		Size: 301.9 KB (301901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da13060a08455c7d1e90eda9b07b35a2fa221f55d011db71b015393a32b07174`  
		Last Modified: Sat, 11 May 2019 02:20:32 GMT  
		Size: 18.3 MB (18277190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b929b7be2600273723c30c9cd88abc756cbf588f279fcc4373e58daacd20c4a`  
		Last Modified: Sat, 11 May 2019 02:20:28 GMT  
		Size: 1.8 MB (1817724 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6fbbdfa3baf090faf072079047ea8d14adcff78d68332ddf256587ecbde8609`  
		Last Modified: Wed, 22 May 2019 22:28:16 GMT  
		Size: 2.4 MB (2434348 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0-python2.7-alpine3.9` - linux; arm variant v6

```console
$ docker pull hylang@sha256:6059aeaa1fce9ab2c6c6aef1b4403aceb1e429aa05576c8a9d54ac3bf1999a65
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.6 MB (24588078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdc5f31184e05de4971fa38cc288291ae63a0186d68e6cdc6f3110a759342b7c`
-	Default Command: `["hy"]`

```dockerfile
# Sat, 11 May 2019 07:49:31 GMT
ADD file:202469fe868f49927884e8dd109fb8bb596ab6e435dc1bfc9f75f03e50e82325 in / 
# Sat, 11 May 2019 07:49:31 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 09:01:03 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 09:01:03 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 09:14:33 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 11 May 2019 09:14:35 GMT
RUN apk add --no-cache ca-certificates
# Sat, 11 May 2019 09:14:35 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 11 May 2019 09:14:36 GMT
ENV PYTHON_VERSION=2.7.16
# Sat, 11 May 2019 09:17:20 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 11 May 2019 09:17:21 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Sat, 11 May 2019 09:17:31 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 11 May 2019 09:17:32 GMT
CMD ["python2"]
# Thu, 23 May 2019 00:52:06 GMT
ENV HY_VERSION=0.17.0
# Thu, 23 May 2019 00:52:15 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Thu, 23 May 2019 00:52:16 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc338e604097ab2499cea24101f8e20a31130f1e01eb6510f818b092e2b257f1`  
		Last Modified: Sat, 11 May 2019 09:19:36 GMT  
		Size: 302.1 KB (302107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c9765a9e545234eefefa20a752c36ea2ff6e4ffce83ca47936e9b7b6237b8d11`  
		Last Modified: Sat, 11 May 2019 09:19:42 GMT  
		Size: 17.5 MB (17489534 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71fc2f65f68962580e6998cb64dac696344cfb095d71926b6b62ca113abb0c84`  
		Last Modified: Sat, 11 May 2019 09:19:37 GMT  
		Size: 1.8 MB (1817946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bca4ab089b560f5cba693c6333f52b5be291cb131a3eb46d0adffa9e6583d64`  
		Last Modified: Thu, 23 May 2019 00:55:40 GMT  
		Size: 2.4 MB (2435064 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0-python2.7-alpine3.9` - linux; arm variant v7

```console
$ docker pull hylang@sha256:16950b6a04b472c495f58ce843c1a92f4ef345df1df39f7d00f4859c800671aa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.1 MB (24085572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7f2e975be20feb1f8e94f4971a95fe282f50fd188cce0a11fcdc58a7e65b9f5`
-	Default Command: `["hy"]`

```dockerfile
# Sat, 11 May 2019 11:57:33 GMT
ADD file:6a887e546cc71145f8be9285950befcf2a4095b97ba44c66550b31165f7a02b5 in / 
# Sat, 11 May 2019 11:57:34 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:35:16 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 12:35:16 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 12:49:49 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 11 May 2019 12:49:51 GMT
RUN apk add --no-cache ca-certificates
# Sat, 11 May 2019 12:49:52 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 11 May 2019 12:49:52 GMT
ENV PYTHON_VERSION=2.7.16
# Sat, 11 May 2019 12:52:42 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 11 May 2019 12:52:43 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Sat, 11 May 2019 12:52:52 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 11 May 2019 12:52:53 GMT
CMD ["python2"]
# Wed, 22 May 2019 23:00:15 GMT
ENV HY_VERSION=0.17.0
# Wed, 22 May 2019 23:00:22 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Wed, 22 May 2019 23:00:23 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4379a03ad123be1dcc0026cdf7b6f9e2a4da62c25e60b2dd53d4be80a97f68bc`  
		Last Modified: Sat, 11 May 2019 12:55:23 GMT  
		Size: 301.0 KB (301007 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:94bc9e4d4bc3c74fab6f7c922d73ff38e5dcbfd7fa692521243f8e81ebabc82c`  
		Last Modified: Sat, 11 May 2019 12:55:30 GMT  
		Size: 17.2 MB (17180932 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93bceb861198c523a9299fecb4add13da8622002c86581fcbab0ccd2dda8504e`  
		Last Modified: Sat, 11 May 2019 12:55:24 GMT  
		Size: 1.8 MB (1817957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d388e0f6ad6e32fadf3e99ba8e5ef56fcd8f6145e8b339cee67f64091a2973c9`  
		Last Modified: Wed, 22 May 2019 23:03:35 GMT  
		Size: 2.4 MB (2435010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0-python2.7-alpine3.9` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:3e931654642de60cfd99d1fe0382a0c2bf96fc1c92b9b14b11d3a992084f96b2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.6 MB (25587330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:deb18b6d988050b50c2feb45e76c8dc32b015c58343d83074e852dd03ff32a42`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 19 Jun 2019 20:39:47 GMT
ADD file:66f49017dd7ba295602526dbf210046e47fd097298c17a3f268a47487b5b6379 in / 
# Wed, 19 Jun 2019 20:39:47 GMT
CMD ["/bin/sh"]
# Wed, 19 Jun 2019 21:35:02 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Jun 2019 22:39:46 GMT
ENV LANG=C.UTF-8
# Wed, 19 Jun 2019 23:03:41 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 19 Jun 2019 23:03:43 GMT
RUN apk add --no-cache ca-certificates
# Wed, 19 Jun 2019 23:03:43 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 19 Jun 2019 23:03:44 GMT
ENV PYTHON_VERSION=2.7.16
# Wed, 19 Jun 2019 23:06:34 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 19 Jun 2019 23:06:36 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 19 Jun 2019 23:06:46 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 19 Jun 2019 23:06:46 GMT
CMD ["python2"]
# Wed, 19 Jun 2019 23:57:37 GMT
ENV HY_VERSION=0.17.0
# Wed, 19 Jun 2019 23:57:44 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Wed, 19 Jun 2019 23:57:45 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4128abd9693a63ccc5f8a557ed164575d4d5e53fd8babc7ff0c952ac7c3596`  
		Last Modified: Wed, 19 Jun 2019 23:13:04 GMT  
		Size: 302.4 KB (302417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49c7bc7e2cb6cde20e5f1ff4a136c7f5863062b55c76ef5ade8a663c3ea404d0`  
		Last Modified: Wed, 19 Jun 2019 23:13:10 GMT  
		Size: 18.3 MB (18343491 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c3367936b361bbdceb84c48377bb592922543e578f827123e3ed517fc24ef88`  
		Last Modified: Wed, 19 Jun 2019 23:13:04 GMT  
		Size: 1.8 MB (1817792 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d64ab5c60b54840e17877e0aaca3b51836a1c41f9aa45c3ec5ea08388d55e6c`  
		Last Modified: Thu, 20 Jun 2019 00:00:55 GMT  
		Size: 2.4 MB (2434851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0-python2.7-alpine3.9` - linux; 386

```console
$ docker pull hylang@sha256:0790d77a0226bb6173e8fa9fe8af6d64b7829704fb12607875fcac50322a513d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.0 MB (25029023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68e40a1a73dbd633fa61621482dc179d7364802fd0b21f32ea0d912f3e74aa7d`
-	Default Command: `["hy"]`

```dockerfile
# Sat, 11 May 2019 10:39:25 GMT
ADD file:6bcacb93c2814cb9c833dfb82a5ef000ef21e6864d9f0b20a7a68b6e16801700 in / 
# Sat, 11 May 2019 10:39:25 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 13:50:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 13:50:43 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 14:02:36 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 11 May 2019 14:02:37 GMT
RUN apk add --no-cache ca-certificates
# Sat, 11 May 2019 14:02:37 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 11 May 2019 14:02:37 GMT
ENV PYTHON_VERSION=2.7.16
# Sat, 11 May 2019 14:04:40 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 11 May 2019 14:04:40 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Sat, 11 May 2019 14:04:45 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 11 May 2019 14:04:45 GMT
CMD ["python2"]
# Wed, 22 May 2019 22:41:04 GMT
ENV HY_VERSION=0.17.0
# Wed, 22 May 2019 22:41:09 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Wed, 22 May 2019 22:41:09 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bddafc57dbf5c3704b0c0d34b0b0bf9aa5524ea4c6d4c6479e9be1c3e0a305b1`  
		Last Modified: Sat, 11 May 2019 14:06:19 GMT  
		Size: 302.4 KB (302442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5874ebe295277d63e80987d6048946c04e0290af2123d85a5633233720ccef9`  
		Last Modified: Sat, 11 May 2019 14:06:23 GMT  
		Size: 17.7 MB (17722225 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:577686ed0715d3ac296acfb7e356f92e8ec59ec9ec60223744165d8e59c07a64`  
		Last Modified: Sat, 11 May 2019 14:06:20 GMT  
		Size: 1.8 MB (1817769 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e2b089d9cbdc5494f282250ea62bf3f4d6626a67edc9ac18e48cc3bb2fe0a2`  
		Last Modified: Wed, 22 May 2019 22:44:16 GMT  
		Size: 2.4 MB (2434496 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0-python2.7-alpine3.9` - linux; ppc64le

```console
$ docker pull hylang@sha256:3d94928dc6b34d14fc26495cc43150ed2b7441f7f74c0992af7baac1b3c0c531
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **26.4 MB (26447752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2f7f2872eed50b04e7654f69de6cfe535e34167f9a0a7d413b4f853127b63b2`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 19 Jun 2019 21:20:35 GMT
ADD file:109b3a992e029fdd5c3d6b378474c32a2c36cc5e549c83c3df3330dbc4eb7dd7 in / 
# Wed, 19 Jun 2019 21:20:36 GMT
CMD ["/bin/sh"]
# Thu, 20 Jun 2019 02:06:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Jun 2019 02:06:52 GMT
ENV LANG=C.UTF-8
# Thu, 20 Jun 2019 02:32:49 GMT
ENV PYTHONIOENCODING=UTF-8
# Thu, 20 Jun 2019 02:32:55 GMT
RUN apk add --no-cache ca-certificates
# Thu, 20 Jun 2019 02:32:57 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 20 Jun 2019 02:33:00 GMT
ENV PYTHON_VERSION=2.7.16
# Thu, 20 Jun 2019 02:35:36 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Thu, 20 Jun 2019 02:35:40 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Thu, 20 Jun 2019 02:35:56 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 20 Jun 2019 02:36:01 GMT
CMD ["python2"]
# Thu, 20 Jun 2019 05:19:26 GMT
ENV HY_VERSION=0.17.0
# Thu, 20 Jun 2019 05:19:42 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Thu, 20 Jun 2019 05:19:45 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f811e8cdb0a8f3cf2b502396e88c8b8a8ad007257c9ec88bd9353343ba96d5`  
		Last Modified: Thu, 20 Jun 2019 02:44:06 GMT  
		Size: 304.5 KB (304539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:669f5b0c759853aa1e53e28cbbf09a31ac9333b4c46703f9dc9f607c665b5794`  
		Last Modified: Thu, 20 Jun 2019 02:44:12 GMT  
		Size: 19.1 MB (19109320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8491fd29c35aab2cf5b3b04a0e83e3c6b0668a9106e87927ef1ad7f3f0760b72`  
		Last Modified: Thu, 20 Jun 2019 02:44:07 GMT  
		Size: 1.8 MB (1817876 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f873acd9505440c00ce1be46ea2a0b4ccb326b56401f0afe985ce9adb88dd03f`  
		Last Modified: Thu, 20 Jun 2019 05:25:36 GMT  
		Size: 2.4 MB (2434998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0-python2.7-alpine3.9` - linux; s390x

```console
$ docker pull hylang@sha256:8d41432c361100d7d3cf0d30230b5f29cce801258093ec9b0905c982125dddac
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **25.7 MB (25717190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:016b1c4414cdcde7ddb67c66b4ede96028f92e028d9e46716cb40dfa75298fa0`
-	Default Command: `["hy"]`

```dockerfile
# Sat, 11 May 2019 11:41:43 GMT
ADD file:6b519ed40566a3088c7bf57b3f1624dadc83f9e56839d5cde42489b54a0a1e90 in / 
# Sat, 11 May 2019 11:41:43 GMT
CMD ["/bin/sh"]
# Sat, 11 May 2019 12:48:44 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 11 May 2019 12:48:44 GMT
ENV LANG=C.UTF-8
# Sat, 11 May 2019 13:04:29 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 11 May 2019 13:04:31 GMT
RUN apk add --no-cache ca-certificates
# Sat, 11 May 2019 13:04:31 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 11 May 2019 13:04:32 GMT
ENV PYTHON_VERSION=2.7.16
# Sat, 11 May 2019 13:07:40 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 11 May 2019 13:07:40 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Sat, 11 May 2019 13:07:48 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 11 May 2019 13:07:49 GMT
CMD ["python2"]
# Wed, 22 May 2019 22:43:13 GMT
ENV HY_VERSION=0.17.0
# Wed, 22 May 2019 22:43:16 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Wed, 22 May 2019 22:43:17 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26c2960057e453cbc8ac687bb9d2cb6101754804d43b495c0c8c95a777c40ea3`  
		Last Modified: Sat, 11 May 2019 13:10:47 GMT  
		Size: 302.4 KB (302390 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df734cdea7bd3918b09560257337270a4495a2502b621c63feda21242a6ba09e`  
		Last Modified: Sat, 11 May 2019 13:10:52 GMT  
		Size: 18.6 MB (18619323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09e40da2af2e473a76f71a2e5bdc9bb319ec1a35a34e15ae10e7c507e0a1cd14`  
		Last Modified: Sat, 11 May 2019 13:10:48 GMT  
		Size: 1.8 MB (1817749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44611d54f0029962bffbc2476f2795addaaf1470ea170dfeca0d402c452c8fbb`  
		Last Modified: Wed, 22 May 2019 22:46:23 GMT  
		Size: 2.4 MB (2434397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
