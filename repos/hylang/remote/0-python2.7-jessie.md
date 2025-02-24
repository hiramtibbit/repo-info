## `hylang:0-python2.7-jessie`

```console
$ docker pull hylang@sha256:d321b138f5d51ea04489003a309bf3a4c6f45e4e9f560cff54bdd0d909a5da38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `hylang:0-python2.7-jessie` - linux; amd64

```console
$ docker pull hylang@sha256:e91e943ebd8bb2f144ab1085d4eac1d5ce22931c7c5066394db3fe86dc34021a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.4 MB (52425876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f03f151d9e701d8820698efae4c9acc4f52958c004795b1d220e922c29182bc5`
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
# Tue, 11 Jun 2019 02:09:37 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 11 Jun 2019 02:11:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 02:11:54 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 11 Jun 2019 02:11:54 GMT
ENV PYTHON_VERSION=2.7.16
# Tue, 11 Jun 2019 02:19:18 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 11 Jun 2019 02:19:18 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Tue, 11 Jun 2019 02:22:55 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 11 Jun 2019 02:22:55 GMT
CMD ["python2"]
# Tue, 11 Jun 2019 12:09:49 GMT
ENV HY_VERSION=0.17.0
# Tue, 11 Jun 2019 12:09:57 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Tue, 11 Jun 2019 12:09:57 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3ec709e8878b42cbd0833eeaf93930ca3cf04a1ee9faa5734114dabe3cd82bf9`  
		Last Modified: Mon, 10 Jun 2019 23:26:30 GMT  
		Size: 30.2 MB (30154031 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85cc7b6b4bac1332ff6dbe67940464c80a86f95726f25ce06518a88ae59800a4`  
		Last Modified: Tue, 11 Jun 2019 02:26:38 GMT  
		Size: 2.2 MB (2215397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3dd30470af319bae27e5c8ddc69aab4e8428153d8788ad1afb4d1724970e7c7`  
		Last Modified: Tue, 11 Jun 2019 02:26:42 GMT  
		Size: 15.5 MB (15500475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31ed2de35a5fb89a8e36eca52052f3b39bb60343e3c7f2304b9a1b5a6183b861`  
		Last Modified: Tue, 11 Jun 2019 02:26:38 GMT  
		Size: 2.1 MB (2121193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b80ff75a12ea11cc1fc1af74687f751a25aef36a8ba2b080b0b20d8deb617209`  
		Last Modified: Tue, 11 Jun 2019 12:13:34 GMT  
		Size: 2.4 MB (2434780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0-python2.7-jessie` - linux; arm variant v5

```console
$ docker pull hylang@sha256:0ee834d69609d68dbda0d9e4b55e2d058eb4d44362cbb9d4c916ce382948c242
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.4 MB (50430226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b1f25c3aa62cbca6bd439d2bd1e58ee938db1f1f31c6ee6e086fd19d0df0863`
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
# Tue, 11 Jun 2019 04:19:12 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 11 Jun 2019 04:20:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 04:20:19 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 11 Jun 2019 04:20:19 GMT
ENV PYTHON_VERSION=2.7.16
# Tue, 11 Jun 2019 04:49:02 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 11 Jun 2019 04:49:02 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Tue, 11 Jun 2019 04:50:50 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 11 Jun 2019 04:50:51 GMT
CMD ["python2"]
# Thu, 13 Jun 2019 01:23:54 GMT
ENV HY_VERSION=0.17.0
# Thu, 13 Jun 2019 01:24:06 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Thu, 13 Jun 2019 01:24:07 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:9dde9221113107a9cace4c8772f5d1d747a762e1190ea8325a33f91c84734c26`  
		Last Modified: Mon, 10 Jun 2019 23:57:04 GMT  
		Size: 28.5 MB (28459066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4fc1db5a64e990461157bf1b0349d16f056c25df8baf7053986b74fca5ac4e2`  
		Last Modified: Thu, 13 Jun 2019 01:21:13 GMT  
		Size: 2.0 MB (2018159 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e80b4a022d44bbb7574335e0f60a6748729b9d32d84da99eeab7ddcb41ece77`  
		Last Modified: Thu, 13 Jun 2019 01:21:17 GMT  
		Size: 15.4 MB (15396780 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98fbb48a3c172d428cf4cba5c8e0278e37492123635890a7c89aec269823db46`  
		Last Modified: Thu, 13 Jun 2019 01:21:14 GMT  
		Size: 2.1 MB (2120946 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:300859848507b10fff3ca5104cae4b150651b1db6279033ab619e71dd05e8633`  
		Last Modified: Thu, 13 Jun 2019 01:26:01 GMT  
		Size: 2.4 MB (2435275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0-python2.7-jessie` - linux; arm variant v7

```console
$ docker pull hylang@sha256:340696db8e31d45c97cb149c2d79a4d60d7d8c762a786b77bf3934d322a5a0e3
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.8 MB (47845603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99b42ead8bb7c0048211b9e6a190fd074ebf45f987f9cd40199e79d1737f426d`
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
# Thu, 13 Jun 2019 00:18:27 GMT
ENV PYTHONIOENCODING=UTF-8
# Thu, 13 Jun 2019 00:19:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Thu, 13 Jun 2019 00:19:32 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 13 Jun 2019 00:19:32 GMT
ENV PYTHON_VERSION=2.7.16
# Thu, 13 Jun 2019 00:24:52 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Thu, 13 Jun 2019 00:24:53 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Thu, 13 Jun 2019 00:26:45 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 13 Jun 2019 00:26:46 GMT
CMD ["python2"]
# Thu, 13 Jun 2019 03:07:03 GMT
ENV HY_VERSION=0.17.0
# Thu, 13 Jun 2019 03:07:11 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Thu, 13 Jun 2019 03:07:12 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:b8ae20fff38199dbe7d7ef5454440884f543a819de8130e8d067022642b6011c`  
		Last Modified: Tue, 11 Jun 2019 00:06:59 GMT  
		Size: 26.3 MB (26308327 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c97e0ba89560ac365b9b62ce937c15e7aa5c2584dd177205f4c0f9fce0d0087f`  
		Last Modified: Thu, 13 Jun 2019 00:31:30 GMT  
		Size: 1.9 MB (1942684 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:985e185888cc282d090521c458f7a1f59f48a6106499f469e999ba7eb320bdff`  
		Last Modified: Thu, 13 Jun 2019 00:31:35 GMT  
		Size: 15.0 MB (15038442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d6501d01d459321b534d7b1b4cf11b1c3244977af0440c6eaa5508592aba105`  
		Last Modified: Thu, 13 Jun 2019 00:31:31 GMT  
		Size: 2.1 MB (2120963 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fac35f24c7c424243379c02dfa27f4c3159b24ed3134c1fd24932719905c4c6d`  
		Last Modified: Thu, 13 Jun 2019 03:09:26 GMT  
		Size: 2.4 MB (2435187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0-python2.7-jessie` - linux; 386

```console
$ docker pull hylang@sha256:4b6fec6e6362bfbec5478f8218a703a94dd193d21ac77ae52681324449e33803
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **53.7 MB (53678780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fcf430afb2874be4b013c22688020990c80d102c9b5f0f3181525d663a3ddfb`
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
# Tue, 11 Jun 2019 04:55:04 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 11 Jun 2019 04:58:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Tue, 11 Jun 2019 04:58:26 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 11 Jun 2019 04:58:27 GMT
ENV PYTHON_VERSION=2.7.16
# Tue, 11 Jun 2019 05:07:50 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 11 Jun 2019 05:07:50 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Tue, 11 Jun 2019 05:13:18 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 11 Jun 2019 05:13:18 GMT
CMD ["python2"]
# Tue, 11 Jun 2019 16:56:36 GMT
ENV HY_VERSION=0.17.0
# Tue, 11 Jun 2019 16:56:45 GMT
RUN pip install --no-cache-dir "hy == $HY_VERSION"
# Tue, 11 Jun 2019 16:56:45 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:5d0f6afe901e3a0b5c4ec212a2c27c5df643d387ddffa02558a099c347ad0003`  
		Last Modified: Mon, 10 Jun 2019 23:43:50 GMT  
		Size: 30.3 MB (30299527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3aad70519bd40b11c8e633312427b64c02612c58355a24e51b7e806bc2d8e00`  
		Last Modified: Tue, 11 Jun 2019 05:19:33 GMT  
		Size: 4.3 MB (4282293 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4aeaee95df584e400582d305710ca89fd642debbab657bed67ff06464e35573`  
		Last Modified: Tue, 11 Jun 2019 05:19:34 GMT  
		Size: 14.5 MB (14541158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e2150e7b66bd20d3fa0a53109e6a4b82541996b7850c3f08984294fcd5f5975`  
		Last Modified: Tue, 11 Jun 2019 05:19:29 GMT  
		Size: 2.1 MB (2120967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415db4dd8da66ff8a42c420ad1090e9f455da68616eb96c518a8489ee22b15d0`  
		Last Modified: Tue, 11 Jun 2019 17:01:11 GMT  
		Size: 2.4 MB (2434835 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
