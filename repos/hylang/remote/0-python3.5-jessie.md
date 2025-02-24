## `hylang:0-python3.5-jessie`

```console
$ docker pull hylang@sha256:47f6c4c9e6c2bae4874a53f39a4f83980b50d3b4b660674bd2c7624b2d8130a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `hylang:0-python3.5-jessie` - linux; amd64

```console
$ docker pull hylang@sha256:ad9c01e9b48fa35a45d5505380932c512544f6e6d3ad436e00b7195298882207
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.0 MB (57027795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7b713559d41de09f26c9fc995295476bad71c0015d4384988fe699ab59f86ab`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 10 Jun 2019 23:22:27 GMT
ADD file:235722b778b32c4ad9bc76ade4c42a6d1f05bce216ef941c81113127682b0f8f in / 
# Mon, 10 Jun 2019 23:22:28 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 01:24:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 01:24:30 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 01:26:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 01:47:49 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Tue, 11 Jun 2019 01:47:49 GMT
ENV PYTHON_VERSION=3.5.7
# Tue, 11 Jun 2019 01:55:58 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Tue, 11 Jun 2019 01:56:00 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 11 Jun 2019 01:56:00 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Tue, 11 Jun 2019 01:59:51 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 11 Jun 2019 01:59:51 GMT
CMD ["python3"]
# Tue, 11 Jun 2019 12:09:11 GMT
ENV HY_VERSION=0.17.0
# Tue, 11 Jun 2019 12:09:24 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Tue, 11 Jun 2019 12:09:25 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3ec709e8878b42cbd0833eeaf93930ca3cf04a1ee9faa5734114dabe3cd82bf9`  
		Last Modified: Mon, 10 Jun 2019 23:26:30 GMT  
		Size: 30.2 MB (30154031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d696a26708f94cccdb401bd199db4ea1ac084a775099ae83f5f71fcff0a6728`  
		Last Modified: Tue, 11 Jun 2019 02:25:23 GMT  
		Size: 2.2 MB (2215383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b4ae0ab63b6d8bc8004d66aca538f7ebde227994ed5ac17abcb05bab0593cc3c`  
		Last Modified: Tue, 11 Jun 2019 02:26:04 GMT  
		Size: 19.7 MB (19721400 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d92e5bf95ff29eb28e29bc555bbe4c2f5f6fc282bd6114571c87de465d05e561`  
		Last Modified: Tue, 11 Jun 2019 02:25:58 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4169ae688f80212260368cbb462b32e48f30d97f09a267dd7c2d907166760e5e`  
		Last Modified: Tue, 11 Jun 2019 02:25:58 GMT  
		Size: 2.1 MB (2125204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82c4f39b188217a84710d702844f2e937d0008b220079bb492f5301c669d31af`  
		Last Modified: Tue, 11 Jun 2019 12:13:16 GMT  
		Size: 2.8 MB (2811536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0-python3.5-jessie` - linux; arm variant v5

```console
$ docker pull hylang@sha256:2afba851d14d851b5e84110635ab9ce57e764973595958f32ee01c638b9f9d09
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.6 MB (54581462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1481105fb94342fe81a51fe2ae7ca276b4a3e5477a9281192c350a7f5bdd1d67`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 10 Jun 2019 23:50:19 GMT
ADD file:6d0c19e7736178829ad3befa94f11a75322da6417be5c97823d9af5a02b85d11 in / 
# Mon, 10 Jun 2019 23:50:20 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 03:11:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 03:11:08 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 03:12:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 03:28:01 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Tue, 11 Jun 2019 03:28:01 GMT
ENV PYTHON_VERSION=3.5.7
# Tue, 11 Jun 2019 03:32:31 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Tue, 11 Jun 2019 03:32:33 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 11 Jun 2019 03:32:34 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Tue, 11 Jun 2019 03:34:27 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 11 Jun 2019 03:34:28 GMT
CMD ["python3"]
# Thu, 13 Jun 2019 01:23:08 GMT
ENV HY_VERSION=0.17.0
# Thu, 13 Jun 2019 01:23:24 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Thu, 13 Jun 2019 01:23:25 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:9dde9221113107a9cace4c8772f5d1d747a762e1190ea8325a33f91c84734c26`  
		Last Modified: Mon, 10 Jun 2019 23:57:04 GMT  
		Size: 28.5 MB (28459066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4e17269f3fd2b2b0be59b7433b07cd85476f4b8232218f19a3d38bdc6747c14`  
		Last Modified: Tue, 11 Jun 2019 05:02:51 GMT  
		Size: 2.0 MB (2018187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:986af17253d079c03ed7df3b46fe4d46b9d789348e6b2be941934f8dc4bff2cb`  
		Last Modified: Tue, 11 Jun 2019 05:04:00 GMT  
		Size: 19.2 MB (19167089 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:50eecb19a2dc2f46bf2b19f626a9889b21800de2e7e8811f05c4d1ce1ea99207`  
		Last Modified: Tue, 11 Jun 2019 05:03:53 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dad893ad6b8665e5d0178bd350e6fafae43303bf378205e4958693740956a039`  
		Last Modified: Tue, 11 Jun 2019 05:03:54 GMT  
		Size: 2.1 MB (2124840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3bc1ce29a3951c6a8d89b31efd85388b74d5e657a8c522d2e57667c97f910c05`  
		Last Modified: Thu, 13 Jun 2019 01:25:38 GMT  
		Size: 2.8 MB (2812040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0-python3.5-jessie` - linux; arm variant v7

```console
$ docker pull hylang@sha256:5a88c88a28867ba0433a70d0820d554294fa2b5b6653f74cc38e4c7e6a5fa90b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.0 MB (51983324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:226aa37a1b79856b3d10b485d4d5409aebbeba3712dc400c96e58d477887b567`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 10 Jun 2019 23:59:19 GMT
ADD file:553e792da1bb0d1b64563abeafb2edf3966d76658be53a9c52f5bfa1a15c1511 in / 
# Mon, 10 Jun 2019 23:59:20 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 03:39:14 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 03:39:14 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 03:40:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 12 Jun 2019 23:58:10 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Wed, 12 Jun 2019 23:58:12 GMT
ENV PYTHON_VERSION=3.5.7
# Thu, 13 Jun 2019 00:03:09 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Thu, 13 Jun 2019 00:03:13 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 13 Jun 2019 00:03:14 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Thu, 13 Jun 2019 00:05:05 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 13 Jun 2019 00:05:10 GMT
CMD ["python3"]
# Thu, 13 Jun 2019 03:06:24 GMT
ENV HY_VERSION=0.17.0
# Thu, 13 Jun 2019 03:06:37 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Thu, 13 Jun 2019 03:06:38 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:b8ae20fff38199dbe7d7ef5454440884f543a819de8130e8d067022642b6011c`  
		Last Modified: Tue, 11 Jun 2019 00:06:59 GMT  
		Size: 26.3 MB (26308327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d795ff2ec2a40554ef96caeb0e6b394c8c6ebfd85452fafb33c2a668f5d93f14`  
		Last Modified: Thu, 13 Jun 2019 00:30:31 GMT  
		Size: 1.9 MB (1942819 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:87ced3126cbce6eeeb3bc250da54177de3ae2fdf2dc3b12edf8f553b13e8ebb5`  
		Last Modified: Thu, 13 Jun 2019 00:30:37 GMT  
		Size: 18.8 MB (18795078 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cabe85c234c55079570062c0d7a23f55088c99dfaf3e7214ef736aa9feb7df90`  
		Last Modified: Thu, 13 Jun 2019 00:30:30 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8078f2622dff33e9781cdac00b87595a778b3d8ce0944d8b1eeb01d6cecce711`  
		Last Modified: Thu, 13 Jun 2019 00:30:31 GMT  
		Size: 2.1 MB (2125026 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f1cbbd8f715af0647535accb4628c4d686a68b4764827644754cb84978c328f`  
		Last Modified: Thu, 13 Jun 2019 03:09:04 GMT  
		Size: 2.8 MB (2811832 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0-python3.5-jessie` - linux; 386

```console
$ docker pull hylang@sha256:ec9f6cb66f36c02f5705334e735c4c2b7d1071440ecc114a080b3f3b51f7b58a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.8 MB (57807974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cadc7429798cf23d4b94bfe45bc13d3f44b496cba7231d8714132e29fa45d7bf`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 10 Jun 2019 23:39:45 GMT
ADD file:9b8a9dfad73fe7a01576e1f84ef01680fcb8a1708ac6efa450edc2958ab3ddb8 in / 
# Mon, 10 Jun 2019 23:39:45 GMT
CMD ["bash"]
# Tue, 11 Jun 2019 03:54:41 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 11 Jun 2019 03:54:42 GMT
ENV LANG=C.UTF-8
# Tue, 11 Jun 2019 03:57:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 04:24:29 GMT
ENV GPG_KEY=97FC712E4C024BBEA48A61ED3A5CA953F73C700D
# Tue, 11 Jun 2019 04:24:30 GMT
ENV PYTHON_VERSION=3.5.7
# Tue, 11 Jun 2019 04:34:04 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libexpat1-dev 		libffi-dev 		libgdbm-dev 		liblzma-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Tue, 11 Jun 2019 04:34:06 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Tue, 11 Jun 2019 04:34:06 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Tue, 11 Jun 2019 04:39:26 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 11 Jun 2019 04:39:26 GMT
CMD ["python3"]
# Tue, 11 Jun 2019 16:55:52 GMT
ENV HY_VERSION=0.17.0
# Tue, 11 Jun 2019 16:56:06 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Tue, 11 Jun 2019 16:56:07 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:5d0f6afe901e3a0b5c4ec212a2c27c5df643d387ddffa02558a099c347ad0003`  
		Last Modified: Mon, 10 Jun 2019 23:43:50 GMT  
		Size: 30.3 MB (30299527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:edb8f011c6a4ae608d7aeb28ec4a003bce1e370c13e5bf95c3dd69aefb058e46`  
		Last Modified: Tue, 11 Jun 2019 05:17:13 GMT  
		Size: 4.3 MB (4282326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00c3ef94bba3fd2ad69b23b644340aeef5b29f1af9d4fcf6a413a98e6f854b1d`  
		Last Modified: Tue, 11 Jun 2019 05:18:37 GMT  
		Size: 18.3 MB (18289344 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc978b90bea7660c55b336af95a3f8b0e0e28907571ab58f6686fde24b402fc0`  
		Last Modified: Tue, 11 Jun 2019 05:18:30 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c646eb2241ebbe8fbad8ed9d0ce880221cb25f6cca868d5962e7fce310187a21`  
		Last Modified: Tue, 11 Jun 2019 05:18:32 GMT  
		Size: 2.1 MB (2124899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:218103a591e91f9950ec265ccb86893cc30a35b7d0ce0d510997fa82fbd37c07`  
		Last Modified: Tue, 11 Jun 2019 17:00:46 GMT  
		Size: 2.8 MB (2811638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
