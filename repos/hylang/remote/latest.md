## `hylang:latest`

```console
$ docker pull hylang@sha256:945fca8f26b320d703e5d9b2853ad4992b42b77d43c426a2721d29d33ff26804
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; arm64 variant v8
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `hylang:latest` - linux; amd64

```console
$ docker pull hylang@sha256:c69324b9b3bc9562ad580f21bf1f62cceef1a23628136605cd47f91bb854da39
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **356.6 MB (356621162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd0fdb887deb27b39f0d82db8c8429495bf822cf2c214f9358d630144a842bd1`
-	Default Command: `["hy"]`

```dockerfile
# Mon, 15 Oct 2018 23:24:20 GMT
ADD file:b3598c18dc395846ab2c5e4e8422c4a5dad7bc3b5b08c09ebceee80989904641 in / 
# Mon, 15 Oct 2018 23:24:21 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:00:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:00:57 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 01:01:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:03:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 07:09:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 07:09:37 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 07:09:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 07:09:46 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 24 Oct 2018 22:34:22 GMT
ENV PYTHON_VERSION=3.7.1
# Wed, 24 Oct 2018 22:36:45 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Wed, 24 Oct 2018 22:36:48 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 24 Oct 2018 22:36:49 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 24 Oct 2018 22:36:54 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 24 Oct 2018 22:36:55 GMT
CMD ["python3"]
# Thu, 25 Oct 2018 00:48:19 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Thu, 25 Oct 2018 00:48:19 GMT
ADD dir:2acd4535b26397539b0d8acdba095106228048eab03c48a045cc3123cab3ab02 in /opt/hylang/hy 
# Thu, 25 Oct 2018 00:48:24 GMT
RUN pip3 install -e /opt/hylang/hy
# Thu, 25 Oct 2018 00:48:25 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:bc9ab73e5b14b9fbd3687a4d8c1f1360533d6ee9ffc3f5ecc6630794b40257b7`  
		Last Modified: Mon, 15 Oct 2018 23:33:47 GMT  
		Size: 45.3 MB (45309934 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:193a6306c92af328dbd41bbbd3200a2c90802624cccfe5725223324428110d7f`  
		Last Modified: Tue, 16 Oct 2018 01:13:35 GMT  
		Size: 10.7 MB (10740016 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c3f8c317dc30af45021092a3d76f16ba7aa1ee5f18fec742c84d4960818580`  
		Last Modified: Tue, 16 Oct 2018 01:13:33 GMT  
		Size: 4.3 MB (4336053 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a587a86c9dcb9df6584180042becf21e36ecd8b460a761711227b4b06889a005`  
		Last Modified: Tue, 16 Oct 2018 01:14:38 GMT  
		Size: 50.1 MB (50065549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:72744d0a318b0788001cc4f5f83c6847ba4b753307fadd046b508bbc41eb9e29`  
		Last Modified: Tue, 16 Oct 2018 01:15:57 GMT  
		Size: 213.2 MB (213202596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3493e487c18d7152aff026fb684904a347354479398bb00f95b09e1ba89e27c0`  
		Last Modified: Tue, 16 Oct 2018 08:19:05 GMT  
		Size: 5.8 MB (5830825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a89e0510fd874106feafd658fcfb7d77cf373612316d274cbc367e2d3d6074ef`  
		Last Modified: Wed, 24 Oct 2018 23:04:41 GMT  
		Size: 22.4 MB (22366280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2100d277cd6f0f5cdcc8f520931346112d3dbd5121e3dedb20b6fba04d7b7dbf`  
		Last Modified: Wed, 24 Oct 2018 23:04:36 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b61a0d6fb492c2bc87fcbef438ba260e10df4810cf02d25b9cb2252265b615a9`  
		Last Modified: Wed, 24 Oct 2018 23:04:36 GMT  
		Size: 1.8 MB (1780810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9cad8d5f05668937b204056301d029816ed21fc057e55e6f606bd24f8f0e1a1`  
		Last Modified: Thu, 25 Oct 2018 00:48:40 GMT  
		Size: 385.5 KB (385526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5cc4d2353bb5bf27c0b8d3c78c9fd5fc35a02e6dbe3b53418a1a39d28d7bda3`  
		Last Modified: Thu, 25 Oct 2018 00:48:41 GMT  
		Size: 2.6 MB (2603333 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:latest` - linux; arm variant v5

```console
$ docker pull hylang@sha256:0d1de585ca42fac4fc18a3132a282c90b06661f6a9e9f4aa9cf7f068635090e0
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.5 MB (339494453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:661f682210bf3f0b9087ecea047299045311a978df3698d82e23615ee4337e34`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Oct 2018 08:54:59 GMT
ADD file:9400a194c6dcf24f439664aab3a28cb7dbf93753b71d2756dbaf872d294fbb8e in / 
# Tue, 16 Oct 2018 08:55:00 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:00:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:00:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 10:00:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:02:48 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:23:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 10:23:49 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 10:24:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:24:06 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 25 Oct 2018 08:52:55 GMT
ENV PYTHON_VERSION=3.7.1
# Thu, 25 Oct 2018 08:56:31 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Thu, 25 Oct 2018 08:56:32 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 25 Oct 2018 08:56:33 GMT
ENV PYTHON_PIP_VERSION=18.1
# Thu, 25 Oct 2018 08:56:42 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 25 Oct 2018 08:56:42 GMT
CMD ["python3"]
# Thu, 25 Oct 2018 09:40:18 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Thu, 25 Oct 2018 09:40:18 GMT
ADD dir:2acd4535b26397539b0d8acdba095106228048eab03c48a045cc3123cab3ab02 in /opt/hylang/hy 
# Thu, 25 Oct 2018 09:40:26 GMT
RUN pip3 install -e /opt/hylang/hy
# Thu, 25 Oct 2018 09:40:27 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:67cd7720dfa3de15234643bf308008813fd129e03429f026775738064b364e24`  
		Last Modified: Tue, 16 Oct 2018 09:04:05 GMT  
		Size: 44.0 MB (44033067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fd276b766fa97ab74e113c92ed57093015cfc9c9030be8ba22b5e752cd8e8877`  
		Last Modified: Tue, 16 Oct 2018 10:09:36 GMT  
		Size: 9.8 MB (9810396 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b000ac5a1a22a2dea4538586726677f91c42079cf289a8eb88fdf9c65fda7f6`  
		Last Modified: Tue, 16 Oct 2018 10:09:35 GMT  
		Size: 4.2 MB (4153754 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:934ee470e55ff8bd40b6443f001fd454b30115f4b101a17d9636ad5fb1b9a626`  
		Last Modified: Tue, 16 Oct 2018 10:11:07 GMT  
		Size: 48.3 MB (48271388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:846dc5461d741a722a8f0346a9f457442a416702ba2dac0339b148b80eb9f22d`  
		Last Modified: Tue, 16 Oct 2018 10:12:19 GMT  
		Size: 201.5 MB (201455707 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0185bc3f5be70a9175ebbf360532d4f467836fb741eb3adbc848b0c91a9a9687`  
		Last Modified: Tue, 16 Oct 2018 11:32:29 GMT  
		Size: 5.6 MB (5611640 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:206bb7f3054a89edf51b2b515317e83ca421bd4d89d079eb2ee7fd80f567567e`  
		Last Modified: Thu, 25 Oct 2018 09:18:19 GMT  
		Size: 21.4 MB (21387811 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eeebe4f09371af9637765c4c8be41c9a0920cf0a2739eeb14cd6835f9eb1d048`  
		Last Modified: Thu, 25 Oct 2018 09:18:12 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f89720710b6db366ee818d5a2f628c289c83dc81f3f0b1d801fa49f74380f4e6`  
		Last Modified: Thu, 25 Oct 2018 09:18:12 GMT  
		Size: 1.8 MB (1781063 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3df5b8244e0dcdc17d3b222c6befa58dcea7d40e842b8790ce118ad070248d06`  
		Last Modified: Thu, 25 Oct 2018 09:40:40 GMT  
		Size: 385.6 KB (385557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0676d1dce4419982abcbaaf365398c41bbccce4a353b042836bd995d1dec253`  
		Last Modified: Thu, 25 Oct 2018 09:40:41 GMT  
		Size: 2.6 MB (2603830 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:latest` - linux; arm variant v7

```console
$ docker pull hylang@sha256:4c0556cd3d3915f6e15796c3ceadf81ce8293a9bc3e2d01110e2b8908afadbd1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **326.9 MB (326863443 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e4b177112b7971e3c54fb6a70dad9fcec2179719d5e4747231e51d2ce37fd2e`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Oct 2018 12:05:35 GMT
ADD file:5a70dc8c5adc5e530a8fc10745a2fba15ee4379cd2e1adba6e1abfc8353c48d9 in / 
# Tue, 16 Oct 2018 12:05:38 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:58:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:58:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:59:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:02:10 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:18:10 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 13:18:11 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 13:18:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:18:27 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 25 Oct 2018 12:01:43 GMT
ENV PYTHON_VERSION=3.7.1
# Thu, 25 Oct 2018 12:04:56 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Thu, 25 Oct 2018 12:04:57 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 25 Oct 2018 12:05:02 GMT
ENV PYTHON_PIP_VERSION=18.1
# Thu, 25 Oct 2018 12:05:10 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 25 Oct 2018 12:05:11 GMT
CMD ["python3"]
# Thu, 25 Oct 2018 12:44:05 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Thu, 25 Oct 2018 12:44:05 GMT
ADD dir:2acd4535b26397539b0d8acdba095106228048eab03c48a045cc3123cab3ab02 in /opt/hylang/hy 
# Thu, 25 Oct 2018 12:44:13 GMT
RUN pip3 install -e /opt/hylang/hy
# Thu, 25 Oct 2018 12:44:13 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:773085009f9c7f7b4310a1b0a968c0940440707f9e534ed87f0652baf279811b`  
		Last Modified: Tue, 16 Oct 2018 12:16:00 GMT  
		Size: 42.1 MB (42063035 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15973945ecf58d4573926ba8da5c9aa815d1e14bbc2c8414b0e23d51552f6f3d`  
		Last Modified: Tue, 16 Oct 2018 13:09:51 GMT  
		Size: 9.4 MB (9440339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e25b539801e1d4c35f7727ce95a197418bbe4cff37e1784aad0325cdfb1673a`  
		Last Modified: Tue, 16 Oct 2018 13:09:50 GMT  
		Size: 3.9 MB (3913013 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a84cdb78f6b06db57fe35565127be72547dac84d2cd4e813258c84f1cd421544`  
		Last Modified: Tue, 16 Oct 2018 13:10:22 GMT  
		Size: 46.4 MB (46379384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0c9b8944dc776e6461e3973f64cea6d94f44453c5414d39df52e1d3e5918e6b0`  
		Last Modified: Tue, 16 Oct 2018 13:11:30 GMT  
		Size: 194.0 MB (194001802 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ed9f9c218cdb5367bcd4dd501fe632ca70550a825ab9fd4d1719a2c7f9acd6c8`  
		Last Modified: Tue, 16 Oct 2018 13:43:11 GMT  
		Size: 5.3 MB (5277868 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:daa99a693c33e7ebf5f4350a17917a353dd7cb325ab980055eaf3a01f65be894`  
		Last Modified: Thu, 25 Oct 2018 12:24:03 GMT  
		Size: 21.0 MB (21017383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6406597f877868b2f142fd76d466f1b68707c50fa21cbcb74d44b07cf7d725ee`  
		Last Modified: Thu, 25 Oct 2018 12:23:57 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6258b31448e01f8f2efaf3008fb1d8ac654c660e2c1a8a29e6261b0668e8c337`  
		Last Modified: Thu, 25 Oct 2018 12:23:57 GMT  
		Size: 1.8 MB (1781002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:062d6e37394b6101695057e0bda23375247f8de2d0c0525d6dddf81b2e526503`  
		Last Modified: Thu, 25 Oct 2018 12:44:26 GMT  
		Size: 385.6 KB (385552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a87d0417e3f684702be8aecaff6f19f2088a7abc9dbd2352e63c4a8893b64bc`  
		Last Modified: Thu, 25 Oct 2018 12:44:27 GMT  
		Size: 2.6 MB (2603824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:latest` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:eb5d60b4de57081330f108a372f9c1118c04982d47b63d20c8f3cd6af0e5bdcf
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **338.0 MB (337990154 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9752a43f5f73b66d6c142d77d5eefd1ee743ea6597cbaffa414338eb2abed95c`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Oct 2018 08:43:08 GMT
ADD file:961d2f24a0cebfcdd333e000ed4488e5c4f4d2a3d11056c45934d647caed5845 in / 
# Tue, 16 Oct 2018 08:43:10 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:01:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:01:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:02:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:11:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 16:26:08 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 16:26:09 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 16:26:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 16:26:46 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 25 Oct 2018 08:58:15 GMT
ENV PYTHON_VERSION=3.7.1
# Thu, 25 Oct 2018 09:03:26 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Thu, 25 Oct 2018 09:03:29 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 25 Oct 2018 09:03:30 GMT
ENV PYTHON_PIP_VERSION=18.1
# Thu, 25 Oct 2018 09:03:44 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 25 Oct 2018 09:03:45 GMT
CMD ["python3"]
# Thu, 25 Oct 2018 11:47:19 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Thu, 25 Oct 2018 11:47:20 GMT
ADD dir:2acd4535b26397539b0d8acdba095106228048eab03c48a045cc3123cab3ab02 in /opt/hylang/hy 
# Thu, 25 Oct 2018 11:47:44 GMT
RUN pip3 install -e /opt/hylang/hy
# Thu, 25 Oct 2018 11:47:46 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:54fc83a09c68f915c1e318f4b118a467a545027084dd28edbdfded4ea6772e9d`  
		Last Modified: Tue, 16 Oct 2018 08:49:44 GMT  
		Size: 43.1 MB (43123597 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742d3549b4ad9fe47f3e3bf2ee373b97068548f65584a6d259dfa601721e2f51`  
		Last Modified: Tue, 16 Oct 2018 12:26:08 GMT  
		Size: 9.7 MB (9690405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c71b9867c5efaf04365448a7b025ba50a926e7c1daae8ee9e73b149b322ae8`  
		Last Modified: Tue, 16 Oct 2018 12:26:05 GMT  
		Size: 4.1 MB (4088398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:572533d310055ca506af51db699ecddf742195aa194d408e0e44da0f97ce4bca`  
		Last Modified: Tue, 16 Oct 2018 12:27:03 GMT  
		Size: 48.0 MB (48004319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd9bc569af2aa2ecb911838b06ddca174831fd8814d92ce6ce83b05dccea0e5a`  
		Last Modified: Tue, 16 Oct 2018 12:28:34 GMT  
		Size: 200.6 MB (200624265 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac3e92e82d0f6478abc3f1c084b5394be6a2fc6b22a6a12dea8f5ce534b15382`  
		Last Modified: Tue, 16 Oct 2018 17:44:58 GMT  
		Size: 5.6 MB (5583393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0311e12a1d2cbebba07cddfa8e927fb77613110a1157052bd0969e5f9185a0c`  
		Last Modified: Thu, 25 Oct 2018 09:56:06 GMT  
		Size: 22.1 MB (22105415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ad9594f5c5787d3227c03b72222557d79bacf3d011baf33da4bda019b15d12c7`  
		Last Modified: Thu, 25 Oct 2018 09:55:56 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:691a35e21192ef1c9c239aa7fb62339c4c9166e4b83f040924d9281ea65cfba7`  
		Last Modified: Thu, 25 Oct 2018 09:55:57 GMT  
		Size: 1.8 MB (1780800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:18a9f6410a8fee69421e6259a2e0a6a71d3ccba1b02d69c53d8488f206915513`  
		Last Modified: Thu, 25 Oct 2018 11:48:06 GMT  
		Size: 385.5 KB (385524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86e1106136dd1253a4c95763cd4d570d96866343795b79f44538e364cae4e0cc`  
		Last Modified: Thu, 25 Oct 2018 11:48:07 GMT  
		Size: 2.6 MB (2603796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:latest` - linux; 386

```console
$ docker pull hylang@sha256:67162226204ed403e9968413c70061e84a9622f4036046041edbd207f04c70ad
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.1 MB (363115197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2ce8af5f073d223c0bd9f487b4cdd23baddd2302f882d520e41cb2910e6ccf5`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Oct 2018 10:48:17 GMT
ADD file:caad919ea46fd10890a74437965487d0133a6ce7b92c8d679862b28b05adfe51 in / 
# Tue, 16 Oct 2018 10:48:18 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 21:30:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:30:34 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 21:31:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 21:33:36 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 23:23:44 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 23:23:44 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 23:23:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 23:23:53 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 25 Oct 2018 11:14:14 GMT
ENV PYTHON_VERSION=3.7.1
# Thu, 25 Oct 2018 11:16:37 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Thu, 25 Oct 2018 11:16:37 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 25 Oct 2018 11:16:38 GMT
ENV PYTHON_PIP_VERSION=18.1
# Thu, 25 Oct 2018 11:16:43 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 25 Oct 2018 11:16:43 GMT
CMD ["python3"]
# Thu, 25 Oct 2018 13:17:16 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Thu, 25 Oct 2018 13:17:17 GMT
ADD dir:2acd4535b26397539b0d8acdba095106228048eab03c48a045cc3123cab3ab02 in /opt/hylang/hy 
# Thu, 25 Oct 2018 13:17:22 GMT
RUN pip3 install -e /opt/hylang/hy
# Thu, 25 Oct 2018 13:17:22 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:1ec2c215215b2cd56e705c4a1dacff4a2a0a608fc88b4c9dba618313eb90efd7`  
		Last Modified: Tue, 16 Oct 2018 11:04:53 GMT  
		Size: 46.0 MB (46039222 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:28d8b973c47bc2b9e663e0405a9b6c4923e7edd886f9352807642bd012741c7b`  
		Last Modified: Tue, 16 Oct 2018 21:46:21 GMT  
		Size: 10.8 MB (10752717 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0dc96b1bed2761a443ab819cbb860219f45d0a8bd03334cd84a81ee97399ee0`  
		Last Modified: Tue, 16 Oct 2018 21:46:19 GMT  
		Size: 4.6 MB (4555326 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eca2adee749cf61e87ad8f85cd93969430e26d9213412dd06fc7edf5cba2eb00`  
		Last Modified: Tue, 16 Oct 2018 21:47:11 GMT  
		Size: 51.6 MB (51593319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731cd7ade8025dae96e4098bc01087e8978d56a8c5a17cfe48da18cf08cd389e`  
		Last Modified: Tue, 16 Oct 2018 21:48:50 GMT  
		Size: 218.3 MB (218256756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8d2e584d8ae8d318d44d5f033a7dbcc69f76066e23bfd85b1677098179927209`  
		Last Modified: Wed, 17 Oct 2018 00:24:34 GMT  
		Size: 6.1 MB (6146810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a077a3850537b4bee6a282ba28870c7d1e60ebbb0d31b659b87c8bef1aa4695`  
		Last Modified: Thu, 25 Oct 2018 11:46:19 GMT  
		Size: 21.0 MB (21001113 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0dd80a0d229b4f6991289800d9b4639adf9fc5b86611d899fd9094ea56c025`  
		Last Modified: Thu, 25 Oct 2018 11:46:14 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92e4265e2a4f13a0aa9b4cf680ecbc512c4e38f922e42ca55d666d5454017917`  
		Last Modified: Thu, 25 Oct 2018 11:46:15 GMT  
		Size: 1.8 MB (1780785 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b0d8a987e0ea2fce2a812de0d874fdee19fab175bf8081ccf12d62b28aa80c48`  
		Last Modified: Thu, 25 Oct 2018 13:17:37 GMT  
		Size: 385.5 KB (385524 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c53a5548788fef43b481963dace5524d97c088ca7b7725102aa416736edb4c20`  
		Last Modified: Thu, 25 Oct 2018 13:17:37 GMT  
		Size: 2.6 MB (2603384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:latest` - linux; ppc64le

```console
$ docker pull hylang@sha256:c41c21eab78c3a1cbd74e409425b6aecbda95a2e31e835c842ffc9f31c222e1a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **352.1 MB (352101937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:388d05c99b86a76fec85d0fedee65daaa1966df0cdac2e682181fc7bbb5de8ee`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Oct 2018 08:21:55 GMT
ADD file:a59c24e738306d5a76eda32c17347983843a394953e466fc10b997cf1398c4ed in / 
# Tue, 16 Oct 2018 08:21:57 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:48:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:48:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 10:49:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:57:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:21:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 13:21:25 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 13:22:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:22:02 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 25 Oct 2018 08:32:33 GMT
ENV PYTHON_VERSION=3.7.1
# Thu, 25 Oct 2018 08:35:30 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Thu, 25 Oct 2018 08:35:35 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 25 Oct 2018 08:35:37 GMT
ENV PYTHON_PIP_VERSION=18.1
# Thu, 25 Oct 2018 08:35:51 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 25 Oct 2018 08:35:53 GMT
CMD ["python3"]
# Thu, 25 Oct 2018 10:14:54 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Thu, 25 Oct 2018 10:14:54 GMT
ADD dir:2acd4535b26397539b0d8acdba095106228048eab03c48a045cc3123cab3ab02 in /opt/hylang/hy 
# Thu, 25 Oct 2018 10:15:09 GMT
RUN pip3 install -e /opt/hylang/hy
# Thu, 25 Oct 2018 10:15:11 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:93d83403cab11249f38bea785ef4fc2d2b4cf9dd1295ad181f3c457ab4d4ea4b`  
		Last Modified: Tue, 16 Oct 2018 08:30:05 GMT  
		Size: 45.6 MB (45595514 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f8ec9429d785df2991e77ea98b51ceeaa4ba80bcb51ce5d583e298525463146a`  
		Last Modified: Tue, 16 Oct 2018 11:06:51 GMT  
		Size: 9.9 MB (9943336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2367a02f5abb1557873986462bae2faef06a1b1fc0bd094d8f2a1dfdae33798e`  
		Last Modified: Tue, 16 Oct 2018 11:06:48 GMT  
		Size: 4.3 MB (4289821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3de7fa0e65c9adb7f35b1acaf2f61360c3349034f1cb1b8ea463d9f75bd2e384`  
		Last Modified: Tue, 16 Oct 2018 11:07:33 GMT  
		Size: 50.1 MB (50070425 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7e539a4f1629dc8178e22f60b4ef7de90a08ff67ea53d9f730a8e9ce5eb8d4e8`  
		Last Modified: Tue, 16 Oct 2018 11:09:14 GMT  
		Size: 208.9 MB (208864445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:648eb0064a5d02c6dde565b0445088343d510026ce0ecccd5ec57d17322d6e97`  
		Last Modified: Tue, 16 Oct 2018 14:21:30 GMT  
		Size: 5.9 MB (5865087 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9593e6dc9785c8c2248aee3ca3fca6d59bc063edab857bcf50c3ad792ea6d842`  
		Last Modified: Thu, 25 Oct 2018 09:10:55 GMT  
		Size: 22.7 MB (22702604 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:31e6ec6f278e7d42a6d51911706f2816217825e45fae0a2cf91d8523a56660ed`  
		Last Modified: Thu, 25 Oct 2018 09:10:44 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a13e5e4c6fa72a8f0d24f6f6ac321711c897cea1bb5b59422695c44681190b5f`  
		Last Modified: Thu, 25 Oct 2018 09:10:45 GMT  
		Size: 1.8 MB (1780999 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f50e4118a2c54934052ad57cd01ee63248f7f6b1ff20d16f01eae3d789d8708`  
		Last Modified: Thu, 25 Oct 2018 10:15:27 GMT  
		Size: 385.6 KB (385555 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:25d40e87a2dd3de4b4791810e8dec7471759d92539fa364f5636f78c50c91bdf`  
		Last Modified: Thu, 25 Oct 2018 10:15:27 GMT  
		Size: 2.6 MB (2603909 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:latest` - linux; s390x

```console
$ docker pull hylang@sha256:f52a8aad8d0a5f4296ca20dbb179e5ccbc817dbecd3a018ca4e0960b8fbeafdc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.4 MB (350354101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b0a1cf66903a6edc6ed27008fa3f4c0e3bb06ef3af5c569c5d42aff8bd0d6b1`
-	Default Command: `["hy"]`

```dockerfile
# Tue, 16 Oct 2018 11:42:40 GMT
ADD file:bae1e3df49bd67a34080167f2c4b8c0eb1b1acbb80f5dc193df094dcea49c837 in / 
# Tue, 16 Oct 2018 11:42:41 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 12:53:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:54:05 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 12:54:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 12:55:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:12:58 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 13:12:58 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 13:13:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 13:13:08 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 25 Oct 2018 11:56:51 GMT
ENV PYTHON_VERSION=3.7.1
# Thu, 25 Oct 2018 11:58:47 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Thu, 25 Oct 2018 11:58:47 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Thu, 25 Oct 2018 11:58:48 GMT
ENV PYTHON_PIP_VERSION=18.1
# Thu, 25 Oct 2018 11:58:53 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 25 Oct 2018 11:58:53 GMT
CMD ["python3"]
# Thu, 25 Oct 2018 13:00:36 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Thu, 25 Oct 2018 13:00:36 GMT
ADD dir:2acd4535b26397539b0d8acdba095106228048eab03c48a045cc3123cab3ab02 in /opt/hylang/hy 
# Thu, 25 Oct 2018 13:00:40 GMT
RUN pip3 install -e /opt/hylang/hy
# Thu, 25 Oct 2018 13:00:40 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:78b07ec34b7b34f42b79465f4dd1b021db3ba1c38a3b00ddd21263f3bc43eff5`  
		Last Modified: Tue, 16 Oct 2018 11:45:40 GMT  
		Size: 45.2 MB (45199846 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b9c8260f65eb4db0b05053c5f3a69927777a800ad942fa6f6e48d9d79c9f9aeb`  
		Last Modified: Tue, 16 Oct 2018 12:58:16 GMT  
		Size: 10.3 MB (10267467 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d46c6e3adf15e8139ab43b8ac8eecbce1bf41cc2701b7ef6829d55a5edbb443`  
		Last Modified: Tue, 16 Oct 2018 12:58:15 GMT  
		Size: 4.4 MB (4366850 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:013a668a2d66f6254dd7423dc547bc94626fd5b6152897559b61d1ac81b15c0c`  
		Last Modified: Tue, 16 Oct 2018 12:58:35 GMT  
		Size: 50.5 MB (50482928 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c08de210d91891c7ccb39680ddf7b625b5c1e1a1dae9dcde3651ad93fa08224`  
		Last Modified: Tue, 16 Oct 2018 12:59:21 GMT  
		Size: 205.2 MB (205215500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:abdd736d4b6cf77bee2dc869fdb020825672400d04ab3084206e573fa7ccfe66`  
		Last Modified: Tue, 16 Oct 2018 13:37:58 GMT  
		Size: 5.9 MB (5893800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:92cf1924517cf5ba03f8e5793eed467869bf77f9950f58cdd85ec443e5d7c4b3`  
		Last Modified: Thu, 25 Oct 2018 12:16:41 GMT  
		Size: 24.2 MB (24158152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:df602c35c878632422f665fac1055f915f8a1d4aa9be98c6a5fa61d44f034094`  
		Last Modified: Thu, 25 Oct 2018 12:16:33 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d94b053b43517ab1bb9e1d70b7dae7b8447487b31cb02b78992439b77fe30c48`  
		Last Modified: Thu, 25 Oct 2018 12:16:34 GMT  
		Size: 1.8 MB (1780651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63e0d571f195680c209de26f9b0a7028dae6964cc5e52c5a2f9d2038faa6b273`  
		Last Modified: Thu, 25 Oct 2018 13:00:49 GMT  
		Size: 385.5 KB (385505 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2690376171479fec6dd847b91c03a53391474f81474a4da35e809f0617a6aaa`  
		Last Modified: Thu, 25 Oct 2018 13:00:49 GMT  
		Size: 2.6 MB (2603160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
