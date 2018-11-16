## `python:2-slim-jessie`

```console
$ docker pull python@sha256:f18bc595e00fd368871953ef82938c546d8827e9938260e703cfed923ef130a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `python:2-slim-jessie` - linux; amd64

```console
$ docker pull python@sha256:d1b47672e96d38a14b313c22a42669abca3b6e2b2d079296a70afb8e78ec1b3d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (49999044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af47402d957bb9a16ff5bd84baf9c2fc59ca1bf56f6b12d917426cfcaf986bcc`
-	Default Command: `["python2"]`

```dockerfile
# Thu, 15 Nov 2018 22:34:24 GMT
ADD file:e9f2e31ca621ef0c68e6a429b08e2e874fb0a1b8f98fe675a5e036ccd9dd9e40 in / 
# Thu, 15 Nov 2018 22:34:24 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 06:45:33 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 06:45:34 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 07:58:06 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 16 Nov 2018 07:58:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 07:58:31 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 16 Nov 2018 07:58:31 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 16 Nov 2018 08:02:50 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 16 Nov 2018 08:02:50 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 08:03:30 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 08:03:30 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:a92a4af0fb9c102a6d410fbd9c77c3119cd91a2230064f6c5b398fd97e3bff71`  
		Last Modified: Thu, 15 Nov 2018 22:56:37 GMT  
		Size: 30.1 MB (30129457 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:958bf860dff088eaa0564ecce91dc864845f1620765a76aad6591ca92d20b5b3`  
		Last Modified: Fri, 16 Nov 2018 08:54:11 GMT  
		Size: 2.2 MB (2213578 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:165d395b93f570151036860630cff1c4308c8e1228718069e4fef873bde33e73`  
		Last Modified: Fri, 16 Nov 2018 08:54:15 GMT  
		Size: 15.6 MB (15571844 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7c0c81db037ba5ef67abe321e301f5b4af7883abccc3b97c7f06fb1a50d93038`  
		Last Modified: Fri, 16 Nov 2018 08:54:11 GMT  
		Size: 2.1 MB (2084165 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-slim-jessie` - linux; arm variant v5

```console
$ docker pull python@sha256:2d476699ba406c5d986699cef2c7c3877a6a6703755a3661ca88e65605a4c964
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.0 MB (47997960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:619922310ba40c770c34a78016ea5e348b78d1ed7a8ba303d5ed31989ef72a5f`
-	Default Command: `["python2"]`

```dockerfile
# Tue, 16 Oct 2018 08:50:34 GMT
ADD file:69b30c48e8faba6f806af50fceaf1e3c221790b8c792da2f95d196e874576d79 in / 
# Tue, 16 Oct 2018 08:50:34 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:39:19 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 10:39:19 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 11:22:33 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 16 Oct 2018 11:23:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 11:23:17 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 16 Oct 2018 11:23:17 GMT
ENV PYTHON_VERSION=2.7.15
# Tue, 16 Oct 2018 11:27:55 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 16 Oct 2018 11:27:55 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 16 Oct 2018 11:29:10 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 16 Oct 2018 11:29:11 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:60074b2fffc5dcd4b352d0312d355ce10a4ab05ced3d44643c9b24e24d0e0677`  
		Last Modified: Tue, 16 Oct 2018 09:00:17 GMT  
		Size: 28.4 MB (28430766 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6b73cac57d027c65b36eb0099e1020819c97a7042376bd67df8f977839dc03f`  
		Last Modified: Tue, 16 Oct 2018 11:38:17 GMT  
		Size: 2.0 MB (2016558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a85c6d036cf4ed6ef52e2495689ef92b533000b9866b2fc48b4f4ac200d5aeed`  
		Last Modified: Tue, 16 Oct 2018 11:38:33 GMT  
		Size: 15.5 MB (15470116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:934deaac99f34bce81dac6fd9e965b3fdcb7374935e792568ac052a789596f8f`  
		Last Modified: Tue, 16 Oct 2018 11:38:17 GMT  
		Size: 2.1 MB (2080520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-slim-jessie` - linux; arm variant v7

```console
$ docker pull python@sha256:2bc677e07fdb1ffd56031395ed7d59bb813ece06a4024100d7c5274bf7fbead1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45423464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a9c6beec8576a62c55626913aabedc169d3f8338201cb85f394be362b152448`
-	Default Command: `["python2"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:41 GMT
ADD file:e98fce6ce6aee310f31c67240c7a9f8cb7de0e6deb0967029e5528255c7a86f0 in / 
# Wed, 05 Sep 2018 11:59:45 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 15:24:57 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 15:24:57 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 16:14:24 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 16:14:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 16:14:59 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 16:15:00 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 16:18:57 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 10 Oct 2018 12:12:54 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 10 Oct 2018 12:14:08 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 10 Oct 2018 12:14:09 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:e7731670a93bf29e604d72ec2b8625589828c7d950c54f459fd2fb3fb8cf6e73`  
		Last Modified: Wed, 05 Sep 2018 12:09:08 GMT  
		Size: 26.3 MB (26287004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0362aad393963ff0c76aaa8c8266b50b0ac1b00ca88ea7f3267fd1a7cd202bc2`  
		Last Modified: Wed, 05 Sep 2018 16:33:32 GMT  
		Size: 1.9 MB (1942422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8e1640dd57fc586e3390da7052b39cd1a6b0bcfa64dd7081775ac712845be4f1`  
		Last Modified: Wed, 05 Sep 2018 16:33:37 GMT  
		Size: 15.1 MB (15113599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e55e30cb2b7f784c77e64a646706d0793db2b65a53ac2dc72d521aaa08edeaec`  
		Last Modified: Wed, 10 Oct 2018 12:29:08 GMT  
		Size: 2.1 MB (2080439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-slim-jessie` - linux; 386

```console
$ docker pull python@sha256:cd870191a9a8ee63cad328ff84c494ecfbb79d63f3797050adcf841713e58088
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51250342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc87c9c1ba8446b5f5c0a7a0e1ab36921a4e0309b671cc4b3f9978cb9b90fea9`
-	Default Command: `["python2"]`

```dockerfile
# Tue, 16 Oct 2018 10:41:56 GMT
ADD file:805bcf9c1da55b8a2fe5407bcea59a7af4f4e70001d03f514f31e4bafcb20a1c in / 
# Tue, 16 Oct 2018 10:41:56 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 23:14:43 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 23:14:43 GMT
ENV LANG=C.UTF-8
# Wed, 17 Oct 2018 00:16:56 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 17 Oct 2018 00:17:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 17 Oct 2018 00:17:30 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 17 Oct 2018 00:17:30 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 17 Oct 2018 00:20:53 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 17 Oct 2018 00:20:53 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 17 Oct 2018 00:21:51 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 17 Oct 2018 00:21:51 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:8fa4cce02855aa948a5b8498a42eb08255f5ed0b56d7820985ad2853ff0a254a`  
		Last Modified: Tue, 16 Oct 2018 10:57:05 GMT  
		Size: 30.3 MB (30270032 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbe0c58a1fd58983321c0ce2bbe275beacbe8c8687da3e51cb1fb0aec732fffa`  
		Last Modified: Wed, 17 Oct 2018 00:34:15 GMT  
		Size: 4.3 MB (4279841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd14e9c61bae2da023eb4bf45670b515e625ba60901786aec9a5db1c5a3e48ab`  
		Last Modified: Wed, 17 Oct 2018 00:34:18 GMT  
		Size: 14.6 MB (14619746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3ac48e62f5976f6c0bcfa79c309f3c55384a3de9b84e74f2f8d9a545446e853`  
		Last Modified: Wed, 17 Oct 2018 00:34:15 GMT  
		Size: 2.1 MB (2080723 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
