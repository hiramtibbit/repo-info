## `python:2-slim-jessie`

```console
$ docker pull python@sha256:e6891bd55c386b4b5c9b23925e3d98f8887ba9735e99f45c3c98014fffb476ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `python:2-slim-jessie` - linux; amd64

```console
$ docker pull python@sha256:7274fe25e60924ab8c43d9466b77fb3335674ee4009e1505e271be4f1191b9aa
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (49984449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a694c61426df118b207918a761b6fbcab65bf5ef1be9caabba444e6f9f794dac`
-	Default Command: `["python2"]`

```dockerfile
# Tue, 26 Mar 2019 22:39:48 GMT
ADD file:7e1c64289e566a098e45fa330e3fe3be4fb94df824f0287a0317dbadf8c643fd in / 
# Tue, 26 Mar 2019 22:39:48 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:52:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Mar 2019 23:52:48 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 10:06:54 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 27 Mar 2019 10:09:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:09:06 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 27 Mar 2019 10:09:06 GMT
ENV PYTHON_VERSION=2.7.16
# Wed, 27 Mar 2019 10:15:52 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 27 Mar 2019 10:15:52 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Wed, 27 Mar 2019 10:19:24 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 27 Mar 2019 10:19:25 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:2a639da97f77795f2f0ebe3bb2c9fc94b4eee47bd41faaf216118e7a8fa65dd6`  
		Last Modified: Tue, 26 Mar 2019 22:43:17 GMT  
		Size: 30.2 MB (30154581 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedba370a317d22fffc56154c19a662fe39792ff5f6f09c3ccbbc98154a7a25e`  
		Last Modified: Wed, 27 Mar 2019 10:24:45 GMT  
		Size: 2.2 MB (2215438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4da32f8805dad9f1400798e69fbbaf0f9a7e9d8ad3550bfb292da971292d516`  
		Last Modified: Wed, 27 Mar 2019 10:24:49 GMT  
		Size: 15.5 MB (15500542 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba07069d8179338d511fe2dee616fc3a48a1fd151c1eb86e18d2605a4153bcf1`  
		Last Modified: Wed, 27 Mar 2019 10:24:45 GMT  
		Size: 2.1 MB (2113888 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-slim-jessie` - linux; arm variant v5

```console
$ docker pull python@sha256:61fb964231542bbf178efc8b44af927003a1bece0e75bf91e762e27c03b40fda
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.0 MB (47987296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:376429fb155aee2266a29ff80c5e9c6b6e0d528d6c06d841b15a5634ec5e6c3d`
-	Default Command: `["python2"]`

```dockerfile
# Wed, 27 Mar 2019 08:50:40 GMT
ADD file:b6a1d21b4c9d13e193935387c04d6bf39a4fe4601321ea62128409faebc0dc69 in / 
# Wed, 27 Mar 2019 08:50:41 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:46:52 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 10:46:52 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 11:33:13 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 27 Mar 2019 11:34:16 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 11:34:16 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 27 Mar 2019 11:34:17 GMT
ENV PYTHON_VERSION=2.7.16
# Wed, 27 Mar 2019 11:39:24 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 27 Mar 2019 11:39:25 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Wed, 27 Mar 2019 11:41:12 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 27 Mar 2019 11:41:12 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:381b01d802d70b42a6dbda0acb85a3c3bebbd7a8eb9fb5934b0eaf054de18e44`  
		Last Modified: Wed, 27 Mar 2019 08:57:15 GMT  
		Size: 28.5 MB (28458892 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:152e79baa367a42ad38d4bc9f14ba4f98469ac6f4dcc842d1ef3daf463361ac3`  
		Last Modified: Wed, 27 Mar 2019 11:45:29 GMT  
		Size: 2.0 MB (2018218 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4c6a81bc6c64092215f42941ccb52bd395cc47ddab964b3214429702ecf7757`  
		Last Modified: Wed, 27 Mar 2019 11:45:33 GMT  
		Size: 15.4 MB (15396694 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42f8dc37698274b3c37da5b7af8667bf7ea84920198d4cd6b0616e831ada0e22`  
		Last Modified: Wed, 27 Mar 2019 11:45:29 GMT  
		Size: 2.1 MB (2113492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-slim-jessie` - linux; arm variant v7

```console
$ docker pull python@sha256:5ab4181c91ef6977168d3a67a4d25df8d93a4edb420870f8ef8ca63f2748c627
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45401256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c2aff4fdfd92e1461459a7680ef98c1431fbf7fc2878818b0b3b67eb8363734`
-	Default Command: `["python2"]`

```dockerfile
# Wed, 27 Mar 2019 12:04:17 GMT
ADD file:41289becce270534012f48a6689e46dd1f96fd510fdd169a3641864a0e35fd2f in / 
# Wed, 27 Mar 2019 12:04:18 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 14:01:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 14:01:49 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 14:32:45 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 27 Mar 2019 14:33:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 14:33:49 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 27 Mar 2019 14:33:50 GMT
ENV PYTHON_VERSION=2.7.16
# Wed, 27 Mar 2019 14:39:04 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 27 Mar 2019 14:39:04 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Wed, 27 Mar 2019 14:40:51 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 27 Mar 2019 14:40:52 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:80ee02f1493958c68f241edb0d71b84092fb026a0ffdbdabe9c7243de469f8ba`  
		Last Modified: Wed, 27 Mar 2019 12:11:04 GMT  
		Size: 26.3 MB (26306415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66e4413c11f18ead9ba22d977bbe2c2fcee302aad20272153840a133a5e852c9`  
		Last Modified: Wed, 27 Mar 2019 14:45:22 GMT  
		Size: 1.9 MB (1942709 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b437ecdbf7f813394c0b763386e98bc75e95f983daa0541d47570a87ae84fa5`  
		Last Modified: Wed, 27 Mar 2019 14:45:29 GMT  
		Size: 15.0 MB (15038545 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:630c3db55c6e33516539cafc3388edf35e7f196995ac671e6195de313dc6462e`  
		Last Modified: Wed, 27 Mar 2019 14:45:22 GMT  
		Size: 2.1 MB (2113587 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-slim-jessie` - linux; 386

```console
$ docker pull python@sha256:394dc919b877f8694b1609ea161e46484cd14dc49fcd780b50fb7ddf4c104645
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.2 MB (51236122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d2ee22a018e4fa055829a72fa4baa330c0e074728f31676f1130499e8a3a932`
-	Default Command: `["python2"]`

```dockerfile
# Wed, 27 Mar 2019 10:40:26 GMT
ADD file:e89fbfe1dacb99a1410da8591a637f15be7ea427f1b62531b1b65d120a51065f in / 
# Wed, 27 Mar 2019 10:40:26 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 10:51:24 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 10:51:24 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 17:32:06 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 27 Mar 2019 17:35:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 17:35:01 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 27 Mar 2019 17:35:01 GMT
ENV PYTHON_VERSION=2.7.16
# Wed, 27 Mar 2019 17:42:21 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 27 Mar 2019 17:42:21 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Wed, 27 Mar 2019 17:47:01 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 27 Mar 2019 17:47:01 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:6f2bc3c048dc6c822ca9857e6126bb9093bbe3b765c2ead20413c77e88de8d5f`  
		Last Modified: Wed, 27 Mar 2019 10:47:04 GMT  
		Size: 30.3 MB (30299096 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4289a6dd8f4c9663be171f765c266d3bf3cd013c0b28f1e9ad68afb6bacf3257`  
		Last Modified: Wed, 27 Mar 2019 17:50:18 GMT  
		Size: 4.3 MB (4282273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5fb8cf796855c277b330556344452bda4d538aac8d5e330affc903ebf935708c`  
		Last Modified: Wed, 27 Mar 2019 17:50:22 GMT  
		Size: 14.5 MB (14541087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62721877c1eb96e5166b3bbd023a5d494fc4114ba68e4063557f08aa843364eb`  
		Last Modified: Wed, 27 Mar 2019 17:50:18 GMT  
		Size: 2.1 MB (2113666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
