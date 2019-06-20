## `hylang:python2.7-alpine3.8`

```console
$ docker pull hylang@sha256:9b7a3a1cb2c64899657f7f28a654508b72baead3378d1f812093cf9386aa46d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `hylang:python2.7-alpine3.8` - linux; amd64

```console
$ docker pull hylang@sha256:55fc32f0d30aba33c477371ebc76582e6ab7fc231c0ce9094e71c455549b26bd
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.3 MB (24289401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4129cb09d1f9729c0a03dc405724261cba49a101bd583b784d949a55e60c125`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 07 Mar 2019 22:19:46 GMT
ADD file:38bc6b51693b13d84a63e281403e2f6d0218c44b1d7ff12157c4523f9f0ebb1e in / 
# Thu, 07 Mar 2019 22:19:46 GMT
CMD ["/bin/sh"]
# Thu, 07 Mar 2019 22:43:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Mar 2019 22:43:33 GMT
ENV LANG=C.UTF-8
# Thu, 07 Mar 2019 23:07:13 GMT
ENV PYTHONIOENCODING=UTF-8
# Thu, 07 Mar 2019 23:07:14 GMT
RUN apk add --no-cache ca-certificates
# Thu, 07 Mar 2019 23:07:14 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 07 Mar 2019 23:07:14 GMT
ENV PYTHON_VERSION=2.7.16
# Thu, 07 Mar 2019 23:09:14 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		libressl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 08 May 2019 00:25:03 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 08 May 2019 00:25:08 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 08 May 2019 00:25:08 GMT
CMD ["python2"]
# Wed, 22 May 2019 22:25:19 GMT
ENV HY_VERSION=0.17.0
# Wed, 22 May 2019 22:25:23 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Wed, 22 May 2019 22:25:23 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:c87736221ed0bcaa60b8e92a19bec2284899ef89226f2a07968677cf59e637a4`  
		Last Modified: Thu, 07 Mar 2019 22:20:20 GMT  
		Size: 2.2 MB (2207176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:33e8d8ba56dbe15d571601bad0c71b65a5fd767e8eeb0bae6cda31dfbf8e1ae3`  
		Last Modified: Thu, 07 Mar 2019 23:11:48 GMT  
		Size: 309.1 KB (309126 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2584953a55d96ca290830d345218fc124954ab5c043daa3456385d687a6e9d6b`  
		Last Modified: Thu, 07 Mar 2019 23:11:52 GMT  
		Size: 17.5 MB (17521200 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ddd59c4b2b56c1316bedbbd93c391df00f17033ccb1b3f75a5821cd873c3685`  
		Last Modified: Wed, 08 May 2019 00:28:27 GMT  
		Size: 1.8 MB (1817666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f7d697606363995b219e6903e4b55246ea74dfdde88b17abc431866d9a559fd3`  
		Last Modified: Wed, 22 May 2019 22:28:23 GMT  
		Size: 2.4 MB (2434233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:python2.7-alpine3.8` - linux; arm variant v6

```console
$ docker pull hylang@sha256:506400b2648adfa75862c563ccba739863b6380d9a003fc18165ab3369ce2754
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.4 MB (23441928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3ef6d4cd0908090a1e813ec7698511f50f54b15a8e809ec9cf8f70bd109ffab`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 08 Mar 2019 03:36:12 GMT
ADD file:12f605067cb5bbeacec221bac51e31824953cb25bb6660ef15bb4bb4141906ba in / 
# Fri, 08 Mar 2019 03:36:13 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 04:40:26 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Mar 2019 04:40:26 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 05:04:24 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 08 Mar 2019 05:04:26 GMT
RUN apk add --no-cache ca-certificates
# Fri, 08 Mar 2019 05:04:26 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 08 Mar 2019 05:04:26 GMT
ENV PYTHON_VERSION=2.7.16
# Fri, 08 Mar 2019 05:07:06 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		libressl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 08 May 2019 08:02:09 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 08 May 2019 08:02:18 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 08 May 2019 08:02:19 GMT
CMD ["python2"]
# Thu, 23 May 2019 00:52:21 GMT
ENV HY_VERSION=0.17.0
# Thu, 23 May 2019 00:52:31 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Thu, 23 May 2019 00:52:31 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:6a2a63c54ac7e7a10b22eff084af50b3a725b0cff9ba6c6405290906d0eecdec`  
		Last Modified: Fri, 08 Mar 2019 03:36:50 GMT  
		Size: 2.1 MB (2146122 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca7be70c58c9901be8db69460f6554f9a45d116693577440aaf40ef5722bfc52`  
		Last Modified: Fri, 08 Mar 2019 05:10:42 GMT  
		Size: 309.2 KB (309233 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3358335d8e7423ccde6285d597426e660ffb433305dad0323f28b3c86844debb`  
		Last Modified: Fri, 08 Mar 2019 05:10:47 GMT  
		Size: 16.7 MB (16733816 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:65ae3698574f121827f9cf732a69c10a7242b65abb91c724d3d47eb488a9d6e0`  
		Last Modified: Wed, 08 May 2019 08:04:11 GMT  
		Size: 1.8 MB (1817851 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8fdbb81871bddc6571a37c5ec3a6fe5cea073ba536dcbbb03706a28744a7eac`  
		Last Modified: Thu, 23 May 2019 00:56:04 GMT  
		Size: 2.4 MB (2434906 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:python2.7-alpine3.8` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:32958837b653ff34c1dc4c368fabc1e1e32a6073d24ced2755548c53e3c7d505
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23818362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ec364d31046ac5a27a2a80cdb26a5a692a9b9122780f4f3cfe297944f3ed45d`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 19 Jun 2019 20:39:56 GMT
ADD file:bcdcef68213641766a211b02ac762b03c21a178b3ed03c4480cc736abd97b50c in / 
# Wed, 19 Jun 2019 20:39:56 GMT
CMD ["/bin/sh"]
# Wed, 19 Jun 2019 21:37:17 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Jun 2019 22:49:14 GMT
ENV LANG=C.UTF-8
# Wed, 19 Jun 2019 23:06:56 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 19 Jun 2019 23:06:58 GMT
RUN apk add --no-cache ca-certificates
# Wed, 19 Jun 2019 23:06:59 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 19 Jun 2019 23:06:59 GMT
ENV PYTHON_VERSION=2.7.16
# Wed, 19 Jun 2019 23:09:32 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		libressl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 19 Jun 2019 23:09:32 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 19 Jun 2019 23:09:41 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 19 Jun 2019 23:09:43 GMT
CMD ["python2"]
# Wed, 19 Jun 2019 23:57:50 GMT
ENV HY_VERSION=0.17.0
# Wed, 19 Jun 2019 23:57:58 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Wed, 19 Jun 2019 23:57:59 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:5011838a0b2d66c2c804ad057403a19bac7e263f0748579857f3ce4c0cbfc08c`  
		Last Modified: Fri, 08 Mar 2019 03:38:05 GMT  
		Size: 2.1 MB (2099962 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51d0ce80ee8feef75da5c2a8f3f203832d4b8236aa7332275de503d9444beede`  
		Last Modified: Wed, 19 Jun 2019 23:13:22 GMT  
		Size: 301.4 KB (301352 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f87f9bec2f258c4f29ed83b8bf5a5e309afb5533f384f5a2d7f44df54c1078c`  
		Last Modified: Wed, 19 Jun 2019 23:13:29 GMT  
		Size: 17.2 MB (17164278 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3f0d919cc303d5d01b03ecee506c3ebab9559a6fdb716120a6cc0e99eeb1ae1`  
		Last Modified: Wed, 19 Jun 2019 23:13:23 GMT  
		Size: 1.8 MB (1817849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca9de13c5bfec0c4e3688c632859d1a26a1c08ee528f33753fd3777104c05c7`  
		Last Modified: Thu, 20 Jun 2019 00:01:10 GMT  
		Size: 2.4 MB (2434921 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:python2.7-alpine3.8` - linux; 386

```console
$ docker pull hylang@sha256:a34a330975e07743288a125aad02b69a65a71446c5b0f56ef8c13a0985849837
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **23.8 MB (23798356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e85983baa1571639f7a7c68ce381bc293d018b17e0b1192eceb698406101b84d`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:57 GMT
ADD file:7de7a3a712d1367c4976c56379673692330b31dcae349cb4df3a46f389d9de1a in / 
# Fri, 08 Mar 2019 03:35:58 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 10:39:16 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Mar 2019 10:39:16 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 10:59:49 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 08 Mar 2019 10:59:51 GMT
RUN apk add --no-cache ca-certificates
# Fri, 08 Mar 2019 10:59:51 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 08 Mar 2019 10:59:51 GMT
ENV PYTHON_VERSION=2.7.16
# Fri, 08 Mar 2019 11:01:54 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		libressl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 08 May 2019 16:24:13 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 08 May 2019 16:24:18 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 08 May 2019 16:24:19 GMT
CMD ["python2"]
# Wed, 22 May 2019 22:41:12 GMT
ENV HY_VERSION=0.17.0
# Wed, 22 May 2019 22:41:17 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Wed, 22 May 2019 22:41:17 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:bb688fb2ed64cf52097deee74b161bb2df71ee9b4300bedb832ad48f1c5a5b86`  
		Last Modified: Fri, 08 Mar 2019 03:36:39 GMT  
		Size: 2.3 MB (2272029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:56b0781be2d7f71d69110bf83c44a29db0416e2a937ec1ffb71c009ee18cb73c`  
		Last Modified: Tue, 12 Mar 2019 11:33:44 GMT  
		Size: 309.2 KB (309209 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a318a6fb99346e922882c90beb5822f8ef1a87772e4bc9cc1093a656b88f9a9e`  
		Last Modified: Tue, 12 Mar 2019 11:33:49 GMT  
		Size: 17.0 MB (16965194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2d6f716434dda44887abd6cb857ecfaedfb4e1681304b05e43ba9e80b305d834`  
		Last Modified: Wed, 08 May 2019 16:28:08 GMT  
		Size: 1.8 MB (1817635 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:37b79a13e1904cba326dd71d694b260fb7fb2573428d9e5249fc73d96c898fe6`  
		Last Modified: Wed, 22 May 2019 22:44:25 GMT  
		Size: 2.4 MB (2434289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:python2.7-alpine3.8` - linux; ppc64le

```console
$ docker pull hylang@sha256:5016596fe12c1750ae06b5357ffdbfe0b3e45e4f1e70cc1ad9a4cd4776a6b74e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.4 MB (24369526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbf5b2cbce3f846f52221a661edcff04c041f9ff17b412aa8f0287bcbc188a27`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 08 Mar 2019 03:37:43 GMT
ADD file:a0b688c2ad4ec9d0535b05f0f63ecc15d1af3e496ad8fcf29809af582add17f0 in / 
# Fri, 08 Mar 2019 03:37:45 GMT
CMD ["/bin/sh"]
# Thu, 06 Jun 2019 00:09:16 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Jun 2019 00:09:18 GMT
ENV LANG=C.UTF-8
# Thu, 06 Jun 2019 01:01:27 GMT
ENV PYTHONIOENCODING=UTF-8
# Thu, 06 Jun 2019 01:01:33 GMT
RUN apk add --no-cache ca-certificates
# Thu, 06 Jun 2019 01:01:36 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 06 Jun 2019 01:01:40 GMT
ENV PYTHON_VERSION=2.7.16
# Thu, 06 Jun 2019 01:04:11 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		libressl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Thu, 06 Jun 2019 01:04:16 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Thu, 06 Jun 2019 01:04:31 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 06 Jun 2019 01:04:33 GMT
CMD ["python2"]
# Thu, 06 Jun 2019 01:35:04 GMT
ENV HY_VERSION=0.17.0
# Thu, 06 Jun 2019 01:35:16 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Thu, 06 Jun 2019 01:35:18 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:0c6396bb25a488a80e061dc7e486b5fee792a25d36fbafa08c0b0f31ef402eac`  
		Last Modified: Fri, 08 Mar 2019 03:38:44 GMT  
		Size: 2.2 MB (2194926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:867b2e88b32d5b91a3d3620c8d61b6c21b24bc062545462dfe23b3f14537449b`  
		Last Modified: Thu, 06 Jun 2019 01:13:50 GMT  
		Size: 303.8 KB (303840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6e76f1e47974323028b3818617962b5f2099fee3babb43d9afca6a35048d54cc`  
		Last Modified: Thu, 06 Jun 2019 01:13:56 GMT  
		Size: 17.6 MB (17618041 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10165d1c1368ffb4074c0a7bf5deb1276adcae60a7520f14d97e4d012c09829a`  
		Last Modified: Thu, 06 Jun 2019 01:13:50 GMT  
		Size: 1.8 MB (1817879 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0a3e85504e966b4d4a0e2b5c6126bfb93cb9730a18db461e21be2e3882a9c8e`  
		Last Modified: Thu, 06 Jun 2019 01:41:42 GMT  
		Size: 2.4 MB (2434840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:python2.7-alpine3.8` - linux; s390x

```console
$ docker pull hylang@sha256:5a4676089d6f0115ca348c9cc22ae06f675b5156f19924b5741a940804837942
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **24.8 MB (24833662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7f838d9aad6e1ba0b52b3aeb927fdfd78f017fec3e7d45d3fefdc84f449ed61`
-	Default Command: `["hy"]`

```dockerfile
# Fri, 08 Mar 2019 03:35:50 GMT
ADD file:b9321d1e8cf25ce80f0bd36bfb6169057897654d8014c3bd74545c2348e8018d in / 
# Fri, 08 Mar 2019 03:35:50 GMT
CMD ["/bin/sh"]
# Fri, 08 Mar 2019 05:37:11 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 08 Mar 2019 05:37:11 GMT
ENV LANG=C.UTF-8
# Fri, 08 Mar 2019 05:54:52 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 08 Mar 2019 05:54:53 GMT
RUN apk add --no-cache ca-certificates
# Fri, 08 Mar 2019 05:54:54 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 08 Mar 2019 05:54:54 GMT
ENV PYTHON_VERSION=2.7.16
# Fri, 08 Mar 2019 05:56:26 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		expat-dev 		findutils 		gcc 		gdbm-dev 		libc-dev 		libffi-dev 		libnsl-dev 		libtirpc-dev 		linux-headers 		make 		ncurses-dev 		libressl-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 		--with-system-expat 		--with-system-ffi 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 08 May 2019 13:32:06 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 08 May 2019 13:32:15 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 08 May 2019 13:32:15 GMT
CMD ["python2"]
# Wed, 22 May 2019 22:43:20 GMT
ENV HY_VERSION=0.17.0
# Wed, 22 May 2019 22:43:24 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Wed, 22 May 2019 22:43:24 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:2dae612ccf35f9ba25dee8f8762f1b8d330eaaad0cccef7cdac1c8292a37a081`  
		Last Modified: Fri, 08 Mar 2019 03:36:25 GMT  
		Size: 2.3 MB (2307669 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:341eedb23e4b2fd84e199c3b7ed2532da1b49b8e9f5c0680150b73b5d81a746b`  
		Last Modified: Fri, 08 Mar 2019 05:59:38 GMT  
		Size: 309.6 KB (309589 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a94d547c54b8485e4f1f5c92bbb6722b7a6cf0cb8a42478ccb45c888775d6aca`  
		Last Modified: Fri, 08 Mar 2019 05:59:41 GMT  
		Size: 18.0 MB (17964619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed2cfb87611f91877f339cabb3d8b12092705282bc51f4272d798b7d4b562430`  
		Last Modified: Wed, 08 May 2019 13:37:31 GMT  
		Size: 1.8 MB (1817666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:81eb59a9c50e7e3e532aaeefcd8ebde31d916c06be659d222fb3fe0b2fea59a0`  
		Last Modified: Wed, 22 May 2019 22:46:34 GMT  
		Size: 2.4 MB (2434119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
