## `python:2-slim-jessie`

```console
$ docker pull python@sha256:f053453746ef3aefd4e03363ebe83cfd5c6d2ca083a4f0d34c35633d1144e008
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `python:2-slim-jessie` - linux; amd64

```console
$ docker pull python@sha256:b53e91f434981bf70026eaa74da346279d6735169a70c1ae528299795fe95b84
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.1 MB (51134814 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16213106d5440236553472e4237c43da5a6b5212d4cdf92511a4b7c404c82919`
-	Default Command: `["python2"]`

```dockerfile
# Tue, 17 Jul 2018 00:21:41 GMT
ADD file:f41225557de4ad90c9325b91551c90e0262532b9270ea997ddf92d688387649e in / 
# Tue, 17 Jul 2018 00:21:42 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 00:43:52 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 00:43:53 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 01:12:39 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 17 Jul 2018 01:13:20 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 01:13:20 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 17 Jul 2018 01:13:20 GMT
ENV PYTHON_VERSION=2.7.15
# Tue, 31 Jul 2018 23:10:53 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 31 Jul 2018 23:10:53 GMT
ENV PYTHON_PIP_VERSION=18.0
# Tue, 31 Jul 2018 23:11:57 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 31 Jul 2018 23:11:57 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:5bba3ecb4cd6374a19da45f2a3db0a9c0804984358b3bb4b666c28944016e5ff`  
		Last Modified: Tue, 17 Jul 2018 00:35:30 GMT  
		Size: 30.1 MB (30120164 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51fda6075cce46c6b2467c9a72779b5c6d1154667d01ca2313d9c10d757e0e91`  
		Last Modified: Tue, 17 Jul 2018 02:03:30 GMT  
		Size: 2.2 MB (2213426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06ef94fd8c8dfb4f208f8d70012d46b6558134eed93c571d6a64c0c802502a95`  
		Last Modified: Tue, 31 Jul 2018 23:25:42 GMT  
		Size: 16.7 MB (16712263 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1947af13b710dc7f6693e568565e8d0c27d84910990b6a207185533e67706354`  
		Last Modified: Tue, 31 Jul 2018 23:25:35 GMT  
		Size: 2.1 MB (2088961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-slim-jessie` - linux; arm variant v5

```console
$ docker pull python@sha256:8cdb3cebda13245964d1e0b7bce60f0e1a937ce46eb5d28067f80a56d06c3380
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 MB (48937725 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba9924152414299e81fe69f290bec8d88bcc9523ab09e208b75b431c430a2284`
-	Default Command: `["python2"]`

```dockerfile
# Tue, 17 Jul 2018 08:50:57 GMT
ADD file:e303ac4cacd7ac2a0a69960e76235ca4a7305f8db9cfae9f97c5dafe0cb57c9c in / 
# Tue, 17 Jul 2018 08:50:59 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 10:24:21 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 10:24:21 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 11:12:47 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 17 Jul 2018 11:13:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 11:13:19 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 17 Jul 2018 11:13:19 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 01 Aug 2018 10:00:07 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 01 Aug 2018 10:00:07 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 01 Aug 2018 10:01:02 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 01 Aug 2018 10:01:03 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:669d043a9b2bd51eea9e767c0315e0ad02bd9f56f1ef5f6172fa53d78285ac5a`  
		Last Modified: Tue, 17 Jul 2018 09:03:26 GMT  
		Size: 28.4 MB (28430654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4c1a34b3f6d2c5ce79a40faafb341da74677bc530e9eddc3b6d4e4f3a20629d2`  
		Last Modified: Tue, 17 Jul 2018 11:33:28 GMT  
		Size: 2.0 MB (2016346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8a5eaec0131ac9b5cd26ef87111976e50d6fabfdb9b26b280abe955ea3f9da28`  
		Last Modified: Wed, 01 Aug 2018 10:04:58 GMT  
		Size: 16.4 MB (16402350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e19c70c536c92f63006db56d59de5a54eed78ddf16fe531e954388cd9130814`  
		Last Modified: Wed, 01 Aug 2018 10:04:53 GMT  
		Size: 2.1 MB (2088375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-slim-jessie` - linux; arm variant v7

```console
$ docker pull python@sha256:1df166d245a01f4ca42e022c2406570e03636ceb9f4b9464d4ed52931e05a52b
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.3 MB (46303358 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bbad168fc319ac3a8bf1e060d00a5ea1f15889dfc4c5f3efdd26f094c650bb9`
-	Default Command: `["python2"]`

```dockerfile
# Tue, 17 Jul 2018 12:00:33 GMT
ADD file:32d146255a9263416cb50a32e6079a40852e3ae1db6b0e30134cde4d24917309 in / 
# Tue, 17 Jul 2018 12:00:36 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:22:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 13:22:32 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 14:10:44 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 17 Jul 2018 14:11:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:11:22 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 17 Jul 2018 14:11:22 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 01 Aug 2018 12:51:34 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 01 Aug 2018 12:51:34 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 01 Aug 2018 12:52:26 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 01 Aug 2018 12:52:26 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:093a70fc20ffe401f4cf25ac9cf7d08c8d511df67aba90ee8c4eec4f8cb2c67e`  
		Last Modified: Tue, 17 Jul 2018 12:12:07 GMT  
		Size: 26.3 MB (26286960 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:09fde2f676e4e193488b60fd1d4799fee36ba4d30db5c545147bcdbc84a2269f`  
		Last Modified: Tue, 17 Jul 2018 14:32:46 GMT  
		Size: 1.9 MB (1942345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f45d6ff37da02ee6082c56348118cdc6482873a7564de8ff3893dc755b9f843f`  
		Last Modified: Wed, 01 Aug 2018 12:56:30 GMT  
		Size: 16.0 MB (15985622 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06585f9ecfbb1c6de014ff8804baa17b43cf031b162047a756e4434c6b21517a`  
		Last Modified: Wed, 01 Aug 2018 12:56:26 GMT  
		Size: 2.1 MB (2088431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-slim-jessie` - linux; 386

```console
$ docker pull python@sha256:efccb98550a69161f499d31526bd0597459e81657d69043edb93b7bce4618396
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.4 MB (54443505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8378c4d9540f41d6b533e1d8efaca15f37b00c084dc153b6be2454406d2daaa`
-	Default Command: `["python2"]`

```dockerfile
# Tue, 17 Jul 2018 10:42:32 GMT
ADD file:9f28594bd37e3d6105c4b8e438188e5f1c270ba5fa552b2b4969a43a0a84730d in / 
# Tue, 17 Jul 2018 10:42:35 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 12:36:36 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 12:36:36 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 13:55:34 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 17 Jul 2018 13:56:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:56:18 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 17 Jul 2018 13:56:19 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 01 Aug 2018 12:23:27 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 01 Aug 2018 12:23:28 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 01 Aug 2018 12:25:03 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 01 Aug 2018 12:25:04 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:08ccc2995d065af2cd0d4ce4d10d2409e68dcfd7b947820dea2d5371344277e3`  
		Last Modified: Tue, 17 Jul 2018 10:58:32 GMT  
		Size: 30.3 MB (30270010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:17c301ab91974023914e0f76c12e397e203d8b65217968d4ed22b2930b431e82`  
		Last Modified: Tue, 17 Jul 2018 14:40:57 GMT  
		Size: 4.3 MB (4279947 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64d3c0713f38d1430821351241590a4b3cc07c1bf671859f4e584a83f25f2910`  
		Last Modified: Wed, 01 Aug 2018 12:40:49 GMT  
		Size: 17.8 MB (17804789 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b66f243fdc0719b5482d2dcb8289acc04c5febacfec5ffd3338549e214d52f93`  
		Last Modified: Wed, 01 Aug 2018 12:40:42 GMT  
		Size: 2.1 MB (2088759 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
