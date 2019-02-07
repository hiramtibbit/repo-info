## `python:2-slim-jessie`

```console
$ docker pull python@sha256:c31d9d87537dfff8ca996120222755892c93533720a174339a8aca369282d68f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `python:2-slim-jessie` - linux; amd64

```console
$ docker pull python@sha256:8b934cb03dd06737e6dc2137a0b73c8ba20b25118bf663cd9dd138a89a1afb34
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50053353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec2332ac99079866eb47c0fe710ba19ee4113b9bc5578a67f0beaae7faf507ea`
-	Default Command: `["python2"]`

```dockerfile
# Wed, 06 Feb 2019 03:27:43 GMT
ADD file:5ac7d2fc09752a0bae6b0b631692b7ae99220c3957a18be70338e3a63a279c11 in / 
# Wed, 06 Feb 2019 03:27:44 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 03:45:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 03:45:50 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 04:23:47 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 06 Feb 2019 04:25:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 04:25:35 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 06 Feb 2019 04:25:35 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 06 Feb 2019 04:30:52 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 06 Feb 2019 04:30:52 GMT
ENV PYTHON_PIP_VERSION=19.0.1
# Wed, 06 Feb 2019 04:33:48 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 06 Feb 2019 04:33:49 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:9a6b35880e8b6f720a2563dacfd85c994ea017630d1bd1e8ba8c0706cd0bdf9e`  
		Last Modified: Wed, 06 Feb 2019 03:33:38 GMT  
		Size: 30.2 MB (30151859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:674460582e0a518500d66b6a8191177f3639571ed7f5ee0055b095a24cbb7aab`  
		Last Modified: Wed, 06 Feb 2019 04:35:57 GMT  
		Size: 2.2 MB (2215224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:386cf484c54aa86fa10976aba826fd6c34444647303cd2914a8849cc2550ce09`  
		Last Modified: Wed, 06 Feb 2019 04:36:00 GMT  
		Size: 15.6 MB (15571751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61b00fbacba5fb16a44f84ad16b250ad3e1e51950078d4b3213fcf086c360b17`  
		Last Modified: Wed, 06 Feb 2019 04:35:57 GMT  
		Size: 2.1 MB (2114519 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-slim-jessie` - linux; arm variant v5

```console
$ docker pull python@sha256:b78dfefe1aa00091dfe5d3c45a68387305f50e81407511861a21bd096471cfe8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.1 MB (48059481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9940ecf2d0788d69894d829cf9ef3c009ca5fcf1fc1642e31649592dd7506d4`
-	Default Command: `["python2"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:34 GMT
ADD file:d56fba3965a9434864a05fce7731cbec09ec6c3ea34b8a3e72a65a597ee52931 in / 
# Wed, 23 Jan 2019 09:50:35 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:51:19 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:51:20 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 12:23:28 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 23 Jan 2019 12:24:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:24:32 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 23 Jan 2019 12:24:32 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 23 Jan 2019 12:29:42 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 26 Jan 2019 10:01:57 GMT
ENV PYTHON_PIP_VERSION=19.0.1
# Sat, 26 Jan 2019 10:03:44 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 26 Jan 2019 10:03:44 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:e3950d1cc969b5b5674e279562ac17636104e44548e2dea0efcd3c7cc5867616`  
		Last Modified: Wed, 23 Jan 2019 09:59:24 GMT  
		Size: 28.5 MB (28459288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04060b485444b2dc81bd6747fbaedbbbd940f2c5d3bfb1cea790bb82dec5d0d4`  
		Last Modified: Wed, 23 Jan 2019 15:24:49 GMT  
		Size: 2.0 MB (2018114 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed309a9ac003c9a0bd85d7ead397d2841b116f28231f75a05ae4157775f87ec2`  
		Last Modified: Wed, 23 Jan 2019 15:24:54 GMT  
		Size: 15.5 MB (15470172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d8d965eacff2f5feab1b465e920dfb437e2d739f6ea744bd85f1dcf508ea9f7`  
		Last Modified: Sat, 26 Jan 2019 10:07:09 GMT  
		Size: 2.1 MB (2111907 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-slim-jessie` - linux; arm variant v7

```console
$ docker pull python@sha256:5068f81ef4e8d8ee404878f3f5ce68031d188f2370fc3785e0403c33305d6a7c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.5 MB (45474064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4530183c3cbe1391a583c0309a5f0f17cc1e17b262f25cec4e9aa69d29840f4`
-	Default Command: `["python2"]`

```dockerfile
# Wed, 23 Jan 2019 12:59:55 GMT
ADD file:19631047950a3f9967d7d8cbea3b84a0cddf79ddd9f60830bfc47d72d64cc7f9 in / 
# Wed, 23 Jan 2019 12:59:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 15:15:36 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 15:15:36 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 16:14:47 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 23 Jan 2019 16:15:52 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 16:15:52 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 23 Jan 2019 16:15:53 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 23 Jan 2019 16:21:09 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 26 Jan 2019 13:16:52 GMT
ENV PYTHON_PIP_VERSION=19.0.1
# Sat, 26 Jan 2019 13:18:36 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 26 Jan 2019 13:18:37 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:885c59d73b75e3d8332a6700e65477f75827110d7f375fa1fc28b4d7a4d59d8c`  
		Last Modified: Wed, 23 Jan 2019 13:09:36 GMT  
		Size: 26.3 MB (26304841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be62c5cb4be2e21b3230d62ebf68de8796b03b0da4ad481f73742fe04b172ee9`  
		Last Modified: Wed, 23 Jan 2019 16:31:04 GMT  
		Size: 1.9 MB (1942714 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6e744531206f34f8a4bcefb116c533bfe58e16ad5960112be4f9d6a7fbfb73`  
		Last Modified: Wed, 23 Jan 2019 16:31:08 GMT  
		Size: 15.1 MB (15114551 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c35ea00bc039e6dfec21e4da423ad6a6e1f633e288008eed6a01c7dafa517b3`  
		Last Modified: Sat, 26 Jan 2019 13:21:58 GMT  
		Size: 2.1 MB (2111958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-slim-jessie` - linux; 386

```console
$ docker pull python@sha256:7ac9d22a837a78287a1148ea59cb8902af22534680d5b920af29d4618e4f703f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51310054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e68477c82b9cf7ae27ef9bd34b53773de68382c503d855e47e64d5195e45b162`
-	Default Command: `["python2"]`

```dockerfile
# Wed, 06 Feb 2019 11:58:59 GMT
ADD file:0f5ce19a631296a55839476a8427a6bb92538d0d63d89f0dfbeb8a1c8b0df1ff in / 
# Wed, 06 Feb 2019 11:59:00 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 22:09:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 22:09:48 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 23:15:46 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 06 Feb 2019 23:18:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 23:18:42 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 06 Feb 2019 23:18:42 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 06 Feb 2019 23:26:13 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 06 Feb 2019 23:26:13 GMT
ENV PYTHON_PIP_VERSION=19.0.1
# Wed, 06 Feb 2019 23:30:53 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 06 Feb 2019 23:30:54 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:c4ddbb4ee60739923db706a335f6f79e8a70a6a62aa8917fc9cc3b04b936afe5`  
		Last Modified: Wed, 06 Feb 2019 12:04:43 GMT  
		Size: 30.3 MB (30293283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:361e72c546dab48f1bf2fdbb5b348372c589e0dd6bc201040a48c6e6fffa3ed6`  
		Last Modified: Wed, 06 Feb 2019 23:38:59 GMT  
		Size: 4.3 MB (4282285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a96566187124efca8738f11165bb8feb64312a7ddf2107d4f94bd6ef203fe31`  
		Last Modified: Wed, 06 Feb 2019 23:39:02 GMT  
		Size: 14.6 MB (14620124 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e1447dafdc162928c1fc3063c2b7300a440c7a46878f4ca47b65f4e83385511`  
		Last Modified: Wed, 06 Feb 2019 23:38:59 GMT  
		Size: 2.1 MB (2114362 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
