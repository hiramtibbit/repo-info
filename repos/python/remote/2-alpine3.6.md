## `python:2-alpine3.6`

```console
$ docker pull python@sha256:a771dae8a9fd005973b299ce80a9d2099cade07bfd6ef31dfa1849f5dcfbbca8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `python:2-alpine3.6` - linux; amd64

```console
$ docker pull python@sha256:3a1b643773c899f7334c5d6e9a5991966384495ec590f41c4094b1a6904dcffc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.2 MB (21215078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eab220a4f065a792517670305b1f573884cf82a4d555b66945ec4c0adf7b09de`
-	Default Command: `["python2"]`

```dockerfile
# Tue, 11 Sep 2018 22:19:27 GMT
ADD file:ad486f580145bd2de2441f0846f0bfa62cd1f6d5cb374c28d29ef1ca785a0bbc in / 
# Tue, 11 Sep 2018 22:19:28 GMT
CMD ["/bin/sh"]
# Tue, 11 Sep 2018 23:18:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 02:21:16 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 02:42:55 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Sep 2018 02:42:56 GMT
RUN apk add --no-cache ca-certificates
# Wed, 12 Sep 2018 02:42:56 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 12 Sep 2018 02:42:57 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 12 Sep 2018 02:46:05 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libressl 		libressl-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 09 Oct 2018 22:39:55 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:40:00 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; trap 'apk del .fetch-deps' EXIT; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 09 Oct 2018 22:40:00 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:3489d1c4660eacaadef3acfc3512c785acde2333b5e6e9387f43490a766382bf`  
		Last Modified: Tue, 11 Sep 2018 22:21:09 GMT  
		Size: 2.0 MB (2016693 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:073aa871451a3d22ccf0257c251617c60aa89fa5184222ffda937706e899e2b8`  
		Last Modified: Wed, 12 Sep 2018 02:53:11 GMT  
		Size: 351.3 KB (351273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba99a209932870e1f22224b16b04439e68322264bca307784bd954cc61659ed6`  
		Last Modified: Wed, 12 Sep 2018 02:53:14 GMT  
		Size: 16.8 MB (16845047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85f5f0e93b7784cf17801eb550f0aad1e3ee046de809d402cf01197c2170547`  
		Last Modified: Tue, 09 Oct 2018 22:55:56 GMT  
		Size: 2.0 MB (2002065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-alpine3.6` - linux; arm variant v6

```console
$ docker pull python@sha256:073e1cf785bc4c78771bceac6ad4c9b2c598f9b63523541182b3639bc04e2ff3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.5 MB (20504398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3e4e4eca32043aa464059cac3085a6c8334fb842d1203ca3ccde46f3f5f5fe8`
-	Default Command: `["python2"]`

```dockerfile
# Wed, 12 Sep 2018 07:49:25 GMT
ADD file:60d227e1eb4173ca5983e94845f87937f410efc67381b2bd5653bbc3a69b9fd8 in / 
# Wed, 12 Sep 2018 07:49:26 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 07:49:26 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 08:09:04 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 08:09:05 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 08:13:20 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Sep 2018 08:13:22 GMT
RUN apk add --no-cache ca-certificates
# Wed, 12 Sep 2018 08:13:22 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 12 Sep 2018 08:13:22 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 15 Sep 2018 09:04:48 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libressl 		libressl-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 10 Oct 2018 07:56:14 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 10 Oct 2018 07:56:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; trap 'apk del .fetch-deps' EXIT; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 10 Oct 2018 07:56:26 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:dab8097cee8be32fafc5e358b0234441807899ff13426ea62bb27636ebdafef7`  
		Last Modified: Wed, 12 Sep 2018 07:49:57 GMT  
		Size: 2.0 MB (1986616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b647550b2cae956d5c4717da3b31ff424ff466afd6ecce456508d81831b880bb`  
		Last Modified: Wed, 12 Sep 2018 07:49:56 GMT  
		Size: 175.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bef25cddc41be0d3e844c63a27834296a4197dfb0f1658ebdcc30e02aabdcc53`  
		Last Modified: Sat, 15 Sep 2018 09:09:42 GMT  
		Size: 352.1 KB (352075 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87af24bda8d9b68ca3e710174083e4a04823a614756a9dce890442ca3cca8c12`  
		Last Modified: Sat, 15 Sep 2018 09:09:48 GMT  
		Size: 16.2 MB (16163764 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8bcdbf0f9a995962630aff317781fe5c0f1f5b411ca05907b8aebedef119c389`  
		Last Modified: Wed, 10 Oct 2018 08:00:45 GMT  
		Size: 2.0 MB (2001768 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-alpine3.6` - linux; arm64 variant v8

```console
$ docker pull python@sha256:029bbaecf48c467303565c06e1b41799f3e294b31274764493125c67773bb342
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **22.1 MB (22050987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26c140d526b37af8f05b7e8722acb29ac223348859ad5b0341a7563e5343383e`
-	Default Command: `["python2"]`

```dockerfile
# Wed, 25 Oct 2017 23:28:58 GMT
ADD file:45b5d3b8d5490ba7edfca2cf6f54cdcf49c772b0b3a2302ce69a7af061007aa4 in / 
# Wed, 25 Oct 2017 23:28:59 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 25 Oct 2017 23:28:59 GMT
CMD ["/bin/sh"]
# Thu, 26 Oct 2017 10:40:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 26 Oct 2017 10:40:37 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 06:22:41 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 01 May 2018 06:22:51 GMT
RUN apk add --no-cache ca-certificates
# Tue, 01 May 2018 06:22:52 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 05 May 2018 20:26:33 GMT
ENV PYTHON_VERSION=2.7.15
# Thu, 23 Aug 2018 16:22:10 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libressl 		libressl-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Thu, 23 Aug 2018 16:22:11 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 23 Aug 2018 16:22:25 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; trap 'apk del .fetch-deps' EXIT; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 23 Aug 2018 16:22:25 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:bb473f0ebc12fde1bd45c1bd3c46f2d3aab367b1b7739464771455b9972f7894`  
		Last Modified: Thu, 06 Jul 2017 09:54:42 GMT  
		Size: 1.9 MB (1914748 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ff6b7ff3a208b8399e701e7ea1b7edbdc654c8c60d33c6f09a7803e2dda776`  
		Last Modified: Wed, 25 Oct 2017 23:29:45 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1f23a27c032033221c450b458b35c5ef4eda5d95bd27ddd0f13c3fc086f55d59`  
		Last Modified: Tue, 01 May 2018 06:37:04 GMT  
		Size: 351.5 KB (351499 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a1e7a88f7637b40171bce79c0f76ee3d60461c0f038996212a13055682fa9606`  
		Last Modified: Thu, 23 Aug 2018 16:35:22 GMT  
		Size: 17.8 MB (17776896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1d362e7490c15849ecd89e1ea6e39ddac5ffa3f08212028042d77ab5ce44c87`  
		Last Modified: Thu, 23 Aug 2018 16:35:15 GMT  
		Size: 2.0 MB (2007668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-alpine3.6` - linux; 386

```console
$ docker pull python@sha256:456c5ef9d06e90299ce1dcb2ad70a26bd193e9e413d8d563defd4b0af3407646
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **20.6 MB (20638746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab82b27c0b9e40df085fefe5171857d141bb5680f155824624b9965454b0902d`
-	Default Command: `["python2"]`

```dockerfile
# Wed, 12 Sep 2018 10:38:34 GMT
ADD file:e0ba624a99c4fcaa672e3c6c19cf30d557ecde4479efc36fe313479ae2f483b6 in / 
# Wed, 12 Sep 2018 10:38:35 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 10:38:35 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 16:31:18 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 16:31:18 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 16:48:52 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Sep 2018 16:48:53 GMT
RUN apk add --no-cache ca-certificates
# Wed, 12 Sep 2018 16:48:54 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 12 Sep 2018 16:48:54 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 12 Sep 2018 16:51:00 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libressl 		libressl-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 12 Sep 2018 16:51:00 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 12 Sep 2018 16:51:06 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; trap 'apk del .fetch-deps' EXIT; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 12 Sep 2018 16:51:06 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:32d1d33da1a274690e9940ba4604f34d7d033e108326b8b3065ae25c7a01beea`  
		Last Modified: Wed, 12 Sep 2018 10:39:15 GMT  
		Size: 2.1 MB (2074566 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:848a4178104b3617aaa22c7e9a0276716dc5c2eb3ffb4a3566a1a511989d8d8f`  
		Last Modified: Wed, 12 Sep 2018 10:39:14 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34dff362a25576e46e86f55f50dbd1ca245c6faaacd6da6ec5f4325ba09afabf`  
		Last Modified: Wed, 12 Sep 2018 16:56:11 GMT  
		Size: 352.0 KB (352042 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:41ffaa97786c0ba7d452a98f40c057d826718fbfaab2e1c1ca0d1de6532ce68c`  
		Last Modified: Wed, 12 Sep 2018 16:56:14 GMT  
		Size: 16.2 MB (16203910 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7b43ea0592f162cce79d12696db38663979799e6f590ef2cf8cc40a0cd144c08`  
		Last Modified: Wed, 12 Sep 2018 16:56:11 GMT  
		Size: 2.0 MB (2008052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-alpine3.6` - linux; ppc64le

```console
$ docker pull python@sha256:9a80158bb5968d71b4815957ace105e70a4bf3d626d51b67913ea79196a641a8
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.4 MB (21406334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6628b28141206d7765b30ff45b4a07e3926766fd35db316433da92e14bf149d4`
-	Default Command: `["python2"]`

```dockerfile
# Wed, 12 Sep 2018 08:17:20 GMT
ADD file:ac6fb657973826bcc805434ec04036bace84515a17a0803bd6b9235488d3e985 in / 
# Wed, 12 Sep 2018 08:17:22 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 08:17:24 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 11:58:20 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 11:58:24 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 12:28:46 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Sep 2018 12:28:56 GMT
RUN apk add --no-cache ca-certificates
# Wed, 12 Sep 2018 12:28:59 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 12 Sep 2018 12:29:02 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 12 Sep 2018 12:32:05 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libressl 		libressl-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 12 Sep 2018 12:32:07 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 12 Sep 2018 12:32:19 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; trap 'apk del .fetch-deps' EXIT; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 12 Sep 2018 12:32:21 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:623f555e4e23c80d8e2db55a68a737efbe693f740299effc70dbf74c4895194f`  
		Last Modified: Wed, 12 Sep 2018 08:19:00 GMT  
		Size: 2.0 MB (2033807 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0128a462deeaf1826e23031dd5e2aba3fc190b759543d689128fb101d8370092`  
		Last Modified: Wed, 12 Sep 2018 08:18:59 GMT  
		Size: 177.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf4fdf05e6269fb4b2f79b6b4f2efc775953a4d472d3d5b450ecac196e36ee2f`  
		Last Modified: Wed, 12 Sep 2018 12:45:11 GMT  
		Size: 354.3 KB (354311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ca62035d79b5a1c57ae4389c08baf19cfa2458135d8178fe0a3def34e4dc317`  
		Last Modified: Wed, 12 Sep 2018 12:45:18 GMT  
		Size: 17.0 MB (17008379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba647a25b40c68999f6592ebbf4aa53ed6616d33f42daad3a86f5e1428e40e0f`  
		Last Modified: Wed, 12 Sep 2018 12:45:11 GMT  
		Size: 2.0 MB (2009660 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-alpine3.6` - linux; s390x

```console
$ docker pull python@sha256:bbb4e5b85ae6ad48fa7048022ba40a26d80514bb041cafda1ad6ea93c53eb491
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **21.8 MB (21761942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfb995b3d806ed7eb1195bef8ebd3855620d3cfd26fe2a770ab30bc93d80ed50`
-	Default Command: `["python2"]`

```dockerfile
# Wed, 12 Sep 2018 11:41:39 GMT
ADD file:1c40210e1034ff8aa43f485980b78cac20ebc478eeb542586d49c2b3bc1a1222 in / 
# Wed, 12 Sep 2018 11:41:44 GMT
COPY file:0f1d36dd7d8d53613b275660a88c5bf9b608ea8aa73a8054cb8bdbd73fd971ac in /etc/localtime 
# Wed, 12 Sep 2018 11:41:49 GMT
CMD ["/bin/sh"]
# Wed, 12 Sep 2018 13:34:08 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 12 Sep 2018 13:34:08 GMT
ENV LANG=C.UTF-8
# Wed, 12 Sep 2018 13:48:50 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 12 Sep 2018 13:48:50 GMT
RUN apk add --no-cache ca-certificates
# Wed, 12 Sep 2018 13:48:51 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 12 Sep 2018 13:48:51 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 12 Sep 2018 13:50:28 GMT
RUN set -ex 	&& apk add --no-cache --virtual .fetch-deps 		gnupg 		libressl 		tar 		xz 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& apk add --no-cache --virtual .build-deps  		bzip2-dev 		coreutils 		dpkg-dev dpkg 		findutils 		gcc 		gdbm-dev 		libc-dev 		libressl 		libressl-dev 		linux-headers 		make 		ncurses-dev 		pax-utils 		readline-dev 		sqlite-dev 		tcl-dev 		tk 		tk-dev 		zlib-dev 	&& apk del .fetch-deps 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 		EXTRA_CFLAGS="-DTHREAD_STACK_SIZE=0x100000" 	&& make install 		&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec scanelf --needed --nobanner --format '%n#p' '{}' ';' 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		| xargs -rt apk add --no-cache --virtual .python-rundeps 	&& apk del .build-deps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 12 Sep 2018 13:50:28 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 12 Sep 2018 13:50:32 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps libressl; trap 'apk del .fetch-deps' EXIT; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 12 Sep 2018 13:50:32 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:6db4f7c8c95e11fedc5888426756193782b730719e9c96f253507d0bd2dd3f20`  
		Last Modified: Wed, 12 Sep 2018 11:43:07 GMT  
		Size: 2.1 MB (2136887 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:970ed0b06ab8246b724758aa06a8bca6003095fb1fc4866435e7a05d2fa01e4b`  
		Last Modified: Wed, 12 Sep 2018 11:43:06 GMT  
		Size: 176.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f56e1b9d12ddeaee0b3940974e383afbb5c247510c813d3aad89cc6fbcea9847`  
		Last Modified: Wed, 12 Sep 2018 13:56:50 GMT  
		Size: 352.4 KB (352437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e01d7184f4a9123ac6334586dba5667800224cd5447ffa478be558820a3e3d03`  
		Last Modified: Wed, 12 Sep 2018 13:56:54 GMT  
		Size: 17.3 MB (17264612 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d162ca09082e70d81969e499e8dbc24b269d211c2cb4d4f5fc630bc61840dc22`  
		Last Modified: Wed, 12 Sep 2018 13:56:51 GMT  
		Size: 2.0 MB (2007830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
