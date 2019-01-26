## `python:2-slim-jessie`

```console
$ docker pull python@sha256:1f7141989150e551a33444ba72a552b9b1382cd3744c5778e97b49aeb7b285a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `python:2-slim-jessie` - linux; amd64

```console
$ docker pull python@sha256:e4d40ab8af35374ce549235dd3356e8031d8980df8c4d020d517031a5372e6b9
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50051416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfe3c27df4720950f19f2a333a2aa16c73673c4a77d54e894b7b20e666e68655`
-	Default Command: `["python2"]`

```dockerfile
# Tue, 22 Jan 2019 19:24:52 GMT
ADD file:e1259aaf5127eb984e8800180bcdf23aae11a476ace06567c5e0571cba94552d in / 
# Tue, 22 Jan 2019 19:24:52 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 22:57:00 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 22 Jan 2019 22:57:00 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 03:56:49 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 23 Jan 2019 03:58:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:58:36 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 23 Jan 2019 03:58:37 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 23 Jan 2019 04:03:58 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 26 Jan 2019 01:47:25 GMT
ENV PYTHON_PIP_VERSION=19.0.1
# Sat, 26 Jan 2019 01:50:21 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 26 Jan 2019 01:50:21 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:a82c8be864555402cbecf293fa92a8b392e48065b42c509fc1bfbb79a2e0d951`  
		Last Modified: Tue, 22 Jan 2019 19:34:49 GMT  
		Size: 30.2 MB (30152186 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7ca3da91d0f72cba0947ee958c34e32b4719017b14167775423a0bd7f8655973`  
		Last Modified: Wed, 23 Jan 2019 20:26:55 GMT  
		Size: 2.2 MB (2215202 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ab0ca4282ce3fe994aa6f456314f2d5ed73e34881c8d4e08b757a3ee3e685d8`  
		Last Modified: Wed, 23 Jan 2019 20:26:58 GMT  
		Size: 15.6 MB (15571754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be6a318a39953875269a1af4fa0ed6badb1bdf5a4fa733b809c05392d62a92e1`  
		Last Modified: Sat, 26 Jan 2019 01:53:54 GMT  
		Size: 2.1 MB (2112274 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-slim-jessie` - linux; arm variant v5

```console
$ docker pull python@sha256:5bca69a43b7e5f665f3ce708dfa627cff0f37298223b17ae21d0f610831634b7
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.0 MB (48031438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:848aa7cc54db3c82d8c7ae03029d9ecaca85ad83e5ee08c33cc4b6ba6cf66f72`
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
# Wed, 23 Jan 2019 12:29:43 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 15:19:26 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 23 Jan 2019 15:19:26 GMT
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
	-	`sha256:ae359cdeb8d2970dcddced091b875ff175db2c8c3a3a2a014fc2f9259180030c`  
		Last Modified: Wed, 23 Jan 2019 15:24:49 GMT  
		Size: 2.1 MB (2083864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-slim-jessie` - linux; arm variant v7

```console
$ docker pull python@sha256:f0a3bb76c1280f97f2835a48a8361c812da8ccccf3939ba8ea9853ed4c3c147d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.4 MB (45446055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b962aab54533720de8caab27ff80dc0edccfb3055e2e6f6c0914a974c02db76`
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
# Wed, 23 Jan 2019 16:21:10 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 16:22:58 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 23 Jan 2019 16:22:59 GMT
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
	-	`sha256:011762c97f72eacc804ad140e90e566963bd83ac98b10fc1c4a3c7200d37e07e`  
		Last Modified: Wed, 23 Jan 2019 16:31:04 GMT  
		Size: 2.1 MB (2083949 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-slim-jessie` - linux; 386

```console
$ docker pull python@sha256:9e0bdd6e2a2a927c5045eb723e6e2779555ed9fc9b48996bac2f6865e6988704
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51280018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7f5cd0dde1c4859fc2c33846b94a24be954ba2b7acae5eb0203cd994caa1687`
-	Default Command: `["python2"]`

```dockerfile
# Wed, 23 Jan 2019 11:43:42 GMT
ADD file:7181677d169fdf847eb4ca0b8071ad7345e882aff132aaabc7ea32c40cd21dab in / 
# Wed, 23 Jan 2019 11:43:42 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 17:27:44 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:27:44 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 19:51:15 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 23 Jan 2019 19:54:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		netbase 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 19:54:10 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 23 Jan 2019 19:54:10 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 23 Jan 2019 20:01:34 GMT
RUN set -ex 		&& savedAptMark="$(apt-mark showmanual)" 	&& apt-get update && apt-get install -y --no-install-recommends 		dpkg-dev 		gcc 		libbz2-dev 		libc6-dev 		libdb-dev 		libgdbm-dev 		libncursesw5-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		make 		tk-dev 		wget 		xz-utils 		zlib1g-dev 		$(command -v gpg > /dev/null || echo 'gnupg dirmngr') 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-mark auto '.*' > /dev/null 	&& apt-mark manual $savedAptMark 	&& find /usr/local -type f -executable -not \( -name '*tkinter*' \) -exec ldd '{}' ';' 		| awk '/=>/ { print $(NF-1) }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -r apt-mark manual 	&& apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false 	&& rm -rf /var/lib/apt/lists/* 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 23 Jan 2019 20:01:35 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 23 Jan 2019 20:06:15 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends wget; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 23 Jan 2019 20:06:15 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:6e31980640f69275069979bf989f5da4fbbffb988b3d52b08d39b451740752f4`  
		Last Modified: Wed, 23 Jan 2019 11:59:32 GMT  
		Size: 30.3 MB (30293609 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abef4e62910e66e1791a79d2ae4c697bc244182aacc5a2d8cb9ad6f4da1199d7`  
		Last Modified: Wed, 23 Jan 2019 20:12:48 GMT  
		Size: 4.3 MB (4282281 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f639a96acb6454dfa606000c97bbbdc7d4507d6bee8e954f8e0b3dcd695e87b4`  
		Last Modified: Wed, 23 Jan 2019 20:12:51 GMT  
		Size: 14.6 MB (14620110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f245babf2b0a835a558fe40e7bdb9baddf0a5e38c8f60e2212375ec68ec6d597`  
		Last Modified: Wed, 23 Jan 2019 20:12:48 GMT  
		Size: 2.1 MB (2084018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
