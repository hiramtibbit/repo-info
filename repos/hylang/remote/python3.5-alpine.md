## `hylang:python3.5-alpine`

```console
$ docker pull hylang@sha256:910501456a182192e7f24106261e8d8e0678f3e9046f8c607c2605c3b90f5835
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

### `hylang:python3.5-alpine` - linux; amd64

```console
$ docker pull hylang@sha256:565f07ce55a1833ad9eb7a0b34ae865dbc9b16db9c141af6aa006fce453dd942
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30178442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2c3e8c7c4a6d41a0a60994ccb4b82dfa39a16496813cd0f8b39d903db650cf1`
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
# Sat, 11 May 2019 01:52:59 GMT
RUN apk add --no-cache ca-certificates
# Sat, 11 May 2019 02:08:40 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Sat, 11 May 2019 02:08:40 GMT
ENV PYTHON_VERSION=3.5.7
# Sat, 11 May 2019 02:12:32 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		xz-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Sat, 11 May 2019 02:12:33 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 11 May 2019 02:12:34 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Sat, 11 May 2019 02:12:43 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 11 May 2019 02:12:43 GMT
CMD ["python3"]
# Wed, 22 May 2019 22:24:23 GMT
ENV HY_VERSION=0.17.0
# Wed, 22 May 2019 22:24:29 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Wed, 22 May 2019 22:24:29 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:e7c96db7181be991f19a9fb6975cdbbd73c65f4a2681348e63a141a2192a5f10`  
		Last Modified: Sat, 11 May 2019 00:07:31 GMT  
		Size: 2.8 MB (2757034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:799a5534f213d4fa33305a25e1987f38be3dc015267400efab141fb1ee9071e0`  
		Last Modified: Sat, 11 May 2019 02:19:02 GMT  
		Size: 301.9 KB (301879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1e686979c4c68a6969dcebb6732affd654c716b98136c52be3a2c7406841c84`  
		Last Modified: Sat, 11 May 2019 02:20:15 GMT  
		Size: 22.5 MB (22487514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41974cdea74bbd33e2a7c61e39937088c64589ff1fe88cb4e70582059fe5a4e1`  
		Last Modified: Sat, 11 May 2019 02:20:08 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54cc43da9aff3f1b3b5cb52741d20eadb779c8acf1cccde1bd48da65226e94a8`  
		Last Modified: Sat, 11 May 2019 02:20:09 GMT  
		Size: 1.8 MB (1820612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:631ef52525c7acfe10d058d1a8f6fa7cc806c20cf4cd339bd735ad1b294706c1`  
		Last Modified: Wed, 22 May 2019 22:27:50 GMT  
		Size: 2.8 MB (2811172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:python3.5-alpine` - linux; arm variant v6

```console
$ docker pull hylang@sha256:8015f46ecdf06911c69e696924cee676183b16d4a4ea9a5ea7fea2404d6ec30d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.9 MB (28905375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:147e2a34799ce56c3b98c5a7197e8fe937b6f8cdb733b635eac8ad8a56a7d125`
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
# Sat, 11 May 2019 09:01:05 GMT
RUN apk add --no-cache ca-certificates
# Sat, 11 May 2019 09:12:15 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Sat, 11 May 2019 09:12:15 GMT
ENV PYTHON_VERSION=3.5.7
# Sat, 11 May 2019 09:14:09 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		xz-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Sat, 11 May 2019 09:14:10 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 11 May 2019 09:14:11 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Sat, 11 May 2019 09:14:21 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 11 May 2019 09:14:21 GMT
CMD ["python3"]
# Thu, 23 May 2019 00:51:22 GMT
ENV HY_VERSION=0.17.0
# Thu, 23 May 2019 00:51:36 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Thu, 23 May 2019 00:51:37 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:6e39823df636e42cc4ea056843af98c9bec31b5ae0a75cdc5628cd19b589189c`  
		Last Modified: Sat, 11 May 2019 07:50:08 GMT  
		Size: 2.5 MB (2543427 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f593254ec1acab01283cf863eb1a8fbec507cbd4be30350af5e10f9cc7d20d0b`  
		Last Modified: Sat, 11 May 2019 09:18:15 GMT  
		Size: 302.1 KB (302109 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d0f1548a6263b932c824ca1462d436120e4aeb9557f49431a6fa16dfaeb17f4`  
		Last Modified: Sat, 11 May 2019 09:19:28 GMT  
		Size: 21.4 MB (21426917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b639c786b145430b10d50b30614888f509af3861a7ce8f67fb12c96b141865`  
		Last Modified: Sat, 11 May 2019 09:19:17 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb9c314afb0bed043399ec47fb8bc760a2363c0ee13053eb3224981971bb43eb`  
		Last Modified: Sat, 11 May 2019 09:19:18 GMT  
		Size: 1.8 MB (1820805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8cbd38561e529197c60f5348d200558ddc4a2ddeb6ca1bb127a419a380cec149`  
		Last Modified: Thu, 23 May 2019 00:55:06 GMT  
		Size: 2.8 MB (2811887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:python3.5-alpine` - linux; arm variant v7

```console
$ docker pull hylang@sha256:a0c54391a0a94b85edfb3d59026d0a55dd111e7f71ea14783a45bd609a353dd7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **28.4 MB (28442236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4463c767033f956519a7d61129feeaa65a3f8c719e266d1a01643be5b9232c89`
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
# Sat, 11 May 2019 12:35:18 GMT
RUN apk add --no-cache ca-certificates
# Sat, 11 May 2019 12:47:17 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Sat, 11 May 2019 12:47:18 GMT
ENV PYTHON_VERSION=3.5.7
# Sat, 11 May 2019 12:49:14 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		xz-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Sat, 11 May 2019 12:49:16 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 11 May 2019 12:49:17 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Sat, 11 May 2019 12:49:27 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 11 May 2019 12:49:28 GMT
CMD ["python3"]
# Wed, 22 May 2019 22:59:34 GMT
ENV HY_VERSION=0.17.0
# Wed, 22 May 2019 22:59:45 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Wed, 22 May 2019 22:59:45 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:856f4240f8dba160c5323506c1e9a4dbaaca840bf1b0c244af3b8d1b42b0f43b`  
		Last Modified: Sat, 11 May 2019 11:57:49 GMT  
		Size: 2.4 MB (2350666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd44f171dea9d0d9d60e99f876258731e53fb44d78125b4b1fa9e292d2ff8d26`  
		Last Modified: Sat, 11 May 2019 12:53:54 GMT  
		Size: 301.0 KB (301012 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c6fcfb10b20ef67dded017614318d0ce36b6ad8c9302ff73fd251aa5ba6e5f3`  
		Last Modified: Sat, 11 May 2019 12:55:09 GMT  
		Size: 21.2 MB (21157602 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:999658e5e989282589909f441807d92fd08a216e5ac28e1880b2ff8fc20dbe39`  
		Last Modified: Sat, 11 May 2019 12:55:01 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d13c52082cb90fa9bcfc1d20efe84b990006f9f98b9c06c042d4d072f3b94c07`  
		Last Modified: Sat, 11 May 2019 12:55:02 GMT  
		Size: 1.8 MB (1820808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:602cf60270945f6ad996aaba4fd86464f6ad0ca0c0550576f70f4578d3654c49`  
		Last Modified: Wed, 22 May 2019 23:03:00 GMT  
		Size: 2.8 MB (2811916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:python3.5-alpine` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:29e01ceed711a678c23ada33d92a57d41e40fcb11b9481a84de575d329704271
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.2 MB (30170911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:757ce70a5f238617aef0cb5fd59bc32fffc4b7919b8e9b6796cd7d66168cd41a`
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
# Wed, 19 Jun 2019 22:39:48 GMT
RUN apk add --no-cache ca-certificates
# Wed, 19 Jun 2019 22:58:15 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Wed, 19 Jun 2019 22:58:16 GMT
ENV PYTHON_VERSION=3.5.7
# Wed, 19 Jun 2019 23:00:29 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		xz-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Wed, 19 Jun 2019 23:00:31 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 19 Jun 2019 23:00:32 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 19 Jun 2019 23:00:42 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 19 Jun 2019 23:00:43 GMT
CMD ["python3"]
# Wed, 19 Jun 2019 23:57:00 GMT
ENV HY_VERSION=0.17.0
# Wed, 19 Jun 2019 23:57:11 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Wed, 19 Jun 2019 23:57:12 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:0362ad1dd800a9d92f8982fa28f173f9120266153830f990f7486f44b068968a`  
		Last Modified: Sat, 11 May 2019 08:44:25 GMT  
		Size: 2.7 MB (2688779 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b941924aae35df430f75efc2ed78c9f1b173dd2c19d45482f07bc101688269a`  
		Last Modified: Wed, 19 Jun 2019 23:10:52 GMT  
		Size: 302.4 KB (302418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:947161f68f5e42a18b59f45aab44feaf431f645b50dc442cc80da7297fea5901`  
		Last Modified: Wed, 19 Jun 2019 23:12:41 GMT  
		Size: 22.5 MB (22547248 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6f6825d87faa954c4f325028548bf22d49ab9d63fd97d5068d9e58eb2bb7da5`  
		Last Modified: Wed, 19 Jun 2019 23:12:32 GMT  
		Size: 231.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a523130a9b13405932057399ac728b9386078f3501e348f7092e96890827609`  
		Last Modified: Wed, 19 Jun 2019 23:12:33 GMT  
		Size: 1.8 MB (1820778 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:920b2158b0f5d905b7621c2d0d4edb910e39096456d879e014c18e6870f512dd`  
		Last Modified: Thu, 20 Jun 2019 00:00:23 GMT  
		Size: 2.8 MB (2811457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:python3.5-alpine` - linux; 386

```console
$ docker pull hylang@sha256:17229e3af79df60b886eac25c525c9f6300b8e7121d5d438fff37b21b3d5674f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.1 MB (29147432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81f2435021f173343518bbbddb8ebb0903d8f4db9edc1ce346e09653202750dd`
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
# Sat, 11 May 2019 13:50:44 GMT
RUN apk add --no-cache ca-certificates
# Sat, 11 May 2019 14:00:10 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Sat, 11 May 2019 14:00:11 GMT
ENV PYTHON_VERSION=3.5.7
# Sat, 11 May 2019 14:02:13 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		xz-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Sat, 11 May 2019 14:02:14 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 11 May 2019 14:02:14 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Sat, 11 May 2019 14:02:20 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 11 May 2019 14:02:20 GMT
CMD ["python3"]
# Wed, 22 May 2019 22:40:27 GMT
ENV HY_VERSION=0.17.0
# Wed, 22 May 2019 22:40:34 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Wed, 22 May 2019 22:40:34 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:d0c434c0359e2da36b788ae4f5a3a70015d83ee20070aa412e714c7feecca465`  
		Last Modified: Sat, 11 May 2019 10:39:46 GMT  
		Size: 2.8 MB (2752091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98910a222924512787541774bbe1045336ddbd09c73aab892f7161fa20d7e794`  
		Last Modified: Sat, 11 May 2019 14:05:25 GMT  
		Size: 302.4 KB (302441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:256b925cbcd7cee6e516df03d82ca714422b22e83d9b4655e1562bdb6f07c6f7`  
		Last Modified: Sat, 11 May 2019 14:06:09 GMT  
		Size: 21.5 MB (21461045 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ae36e630e23ee3d4c6b3a226895c4ee0cbb2911643e0b928ec2bd2832db31fd`  
		Last Modified: Sat, 11 May 2019 14:06:04 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:54df90a0e2022fa18ee8d0ebb978a0458d188663a5cfebb1fc2bc18a80a6a238`  
		Last Modified: Sat, 11 May 2019 14:06:05 GMT  
		Size: 1.8 MB (1820550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc07d5cf39a2f22444bd9e9fa837081b859016718e0bdd8771c6f998eb47394b`  
		Last Modified: Wed, 22 May 2019 22:43:48 GMT  
		Size: 2.8 MB (2811073 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:python3.5-alpine` - linux; ppc64le

```console
$ docker pull hylang@sha256:1eee139e33fc8a33a782ddbeb41d3b43f1c0f092b38ebe22609d3cbcd536ab2d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **31.2 MB (31227806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ca6da0447e0707e168139668d1ea6993e8673f77e4d94d55927fb91dae9d15b`
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
# Thu, 20 Jun 2019 02:06:59 GMT
RUN apk add --no-cache ca-certificates
# Thu, 20 Jun 2019 02:26:46 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Thu, 20 Jun 2019 02:26:48 GMT
ENV PYTHON_VERSION=3.5.7
# Thu, 20 Jun 2019 02:28:59 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		xz-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Thu, 20 Jun 2019 02:29:05 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 20 Jun 2019 02:29:07 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Thu, 20 Jun 2019 02:29:23 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 20 Jun 2019 02:29:27 GMT
CMD ["python3"]
# Thu, 20 Jun 2019 05:18:00 GMT
ENV HY_VERSION=0.17.0
# Thu, 20 Jun 2019 05:18:35 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Thu, 20 Jun 2019 05:18:38 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:221c32b360a801e69a8aac598d495aaac3512642f967704a9d9bc5d6b4b4709e`  
		Last Modified: Sat, 11 May 2019 08:30:16 GMT  
		Size: 2.8 MB (2781019 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:760e98d3992cb26b2f3b3b107d09a022bc9a0a02303dd4f52a0d118e40a9ce30`  
		Last Modified: Thu, 20 Jun 2019 02:40:56 GMT  
		Size: 304.5 KB (304538 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:68054080f4b5922a17a7e02320f4d654769bcbb1e3662b329b99fe8befff8a25`  
		Last Modified: Thu, 20 Jun 2019 02:43:29 GMT  
		Size: 23.5 MB (23509229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d62a5b540f1efcdb26d9ead3cada5646943179ee23595204b4d6981698308ac`  
		Last Modified: Thu, 20 Jun 2019 02:43:20 GMT  
		Size: 232.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6311c33d201297eb860a4eb1372cba123a39ef58deb9cfc3c35e297ce3d7af14`  
		Last Modified: Thu, 20 Jun 2019 02:43:21 GMT  
		Size: 1.8 MB (1820780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3f1f037b969cbbad6d84622b4429a288f9975c73dd2950ec82b670688245d2d`  
		Last Modified: Thu, 20 Jun 2019 05:24:47 GMT  
		Size: 2.8 MB (2812008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:python3.5-alpine` - linux; s390x

```console
$ docker pull hylang@sha256:e1e8a1198e39cfc65e8b713a8668d56abe75c4519aaedf7ac08deeb2b0eda593
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.4 MB (30446862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35b208026dd53da05e157a661642aed986d7d8e0ddc538e8ef656a90bafab0c1`
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
# Sat, 11 May 2019 12:48:45 GMT
RUN apk add --no-cache ca-certificates
# Sat, 11 May 2019 13:00:34 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Sat, 11 May 2019 13:00:35 GMT
ENV PYTHON_VERSION=3.5.7
# Sat, 11 May 2019 13:03:50 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		linux-headers 		make 		ncurses-dev 		openssl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		xz-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Sat, 11 May 2019 13:03:52 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 11 May 2019 13:03:52 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Sat, 11 May 2019 13:04:01 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 11 May 2019 13:04:02 GMT
CMD ["python3"]
# Wed, 22 May 2019 22:42:46 GMT
ENV HY_VERSION=0.17.0
# Wed, 22 May 2019 22:42:51 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Wed, 22 May 2019 22:42:51 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:bea4f04d8b33c5bd68ccb34849e615333c5ef00958b400841a03970dd2d5e9ae`  
		Last Modified: Sat, 11 May 2019 11:42:13 GMT  
		Size: 2.5 MB (2543331 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd05b6145e33685dc84ccc38169beafd28c074a663c682938be9c3eaea685c9e`  
		Last Modified: Sat, 11 May 2019 13:09:33 GMT  
		Size: 302.4 KB (302387 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7464df5deeeec8348055617b6f00802a77b017a6e966c7c6e237457f3bfb316a`  
		Last Modified: Sat, 11 May 2019 13:10:38 GMT  
		Size: 23.0 MB (22969072 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d54f1aa364b0eaa705cd4fb158e64b6750dc573bdfe29d45d24ea7c4545073b`  
		Last Modified: Sat, 11 May 2019 13:10:31 GMT  
		Size: 230.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf4eafa20e3d25d9b2c7ea6b31b514326a3ce0982e1986c82ab8272bac50bc1d`  
		Last Modified: Sat, 11 May 2019 13:10:31 GMT  
		Size: 1.8 MB (1820626 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c73eaabd1dc26cded8d7a2e1fa9c20ed6879e105a18e0c4078f05ef6e709b6e0`  
		Last Modified: Wed, 22 May 2019 22:45:56 GMT  
		Size: 2.8 MB (2811216 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
