## `python:2-wheezy`

```console
$ docker pull python@sha256:fa265ff384272b82fb53cee2dbd68a0c003950fc35f7b234287d582f333f0970
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `python:2-wheezy` - linux; amd64

```console
$ docker pull python@sha256:03df45dad77ae845de3e9f230f9abce5ef8a860950b70855bfd3eb1db824b397
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.5 MB (208536247 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:245d352312df65600fd8a9a9f70e8c719cac8bc07df862f92c27d01e1d963d0a`
-	Default Command: `["python2"]`

```dockerfile
# Mon, 15 Oct 2018 23:26:28 GMT
ADD file:5163482b7e1bd84981ddd31e96b6909dc030ab66fc6fe9f35882cdbe6eaba287 in / 
# Mon, 15 Oct 2018 23:26:28 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 01:03:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:03:48 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 01:04:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 01:05:57 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 07:53:21 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 07:53:21 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 08:14:45 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 16 Oct 2018 08:14:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 08:14:55 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 16 Oct 2018 08:14:55 GMT
ENV PYTHON_VERSION=2.7.15
# Tue, 16 Oct 2018 08:17:52 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture -qDEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 16 Oct 2018 08:17:53 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 16 Oct 2018 08:18:01 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 16 Oct 2018 08:18:04 GMT
RUN pip install --no-cache-dir virtualenv
# Tue, 16 Oct 2018 08:18:04 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:bd7a7b0b72f4cd60a822a63b8700fb137ad3ec30a83eccba111b3a726c02efeb`  
		Last Modified: Mon, 15 Oct 2018 23:37:05 GMT  
		Size: 39.3 MB (39339774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de91dbcf54a318b72e46b4260799a2062f444dbca8d6a5da7a1f19aaa0b0d8ff`  
		Last Modified: Tue, 16 Oct 2018 01:16:41 GMT  
		Size: 5.6 MB (5630806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85f18cedeeed742edc640e0e9a19a6fc1fb27d3f2c61135558b3bb68375ded27`  
		Last Modified: Tue, 16 Oct 2018 01:17:13 GMT  
		Size: 38.0 MB (37960258 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac2dab2f4280d3ee19b19d5c5a78c24577033d53c68bb5fc8ba8e2697d64d0ef`  
		Last Modified: Tue, 16 Oct 2018 01:17:58 GMT  
		Size: 99.6 MB (99610983 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc5569095eeb23b607ccc5705e6f1d7e779d97ba76e6f0a29898cc947bac34cf`  
		Last Modified: Tue, 16 Oct 2018 08:37:02 GMT  
		Size: 5.7 MB (5720500 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6db8a73e0beb9a775454e9c13de86d96d419bfd401a5ab01626d887fd1ae30a8`  
		Last Modified: Tue, 16 Oct 2018 08:37:05 GMT  
		Size: 14.8 MB (14838630 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5fb8cf73c403f89f1af90344ed51ab3772df9a43cbf73742a29a74a2de41284`  
		Last Modified: Tue, 16 Oct 2018 08:37:00 GMT  
		Size: 1.8 MB (1777204 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a91ad86b6a427ca60cfcea0d53bbf947b0d8f2825b7c51daa8d2cd1c4faf769`  
		Last Modified: Tue, 16 Oct 2018 08:37:01 GMT  
		Size: 3.7 MB (3658092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-wheezy` - linux; arm variant v5

```console
$ docker pull python@sha256:2efa1d9874c2ea3410c9da539aebc309f9dccd2e09c1b2e4d22505127d3bc49c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.8 MB (192843294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:546fdd117b0d22ae81f9b38d17088773d05c51501b65998e3b55e68369ebc053`
-	Default Command: `["python2"]`

```dockerfile
# Tue, 16 Oct 2018 08:57:27 GMT
ADD file:a9547253621c5e98ced338e1642b75814f0a522a1c3c2450209e6ecc86dcf865 in / 
# Tue, 16 Oct 2018 08:57:29 GMT
CMD ["bash"]
# Tue, 16 Oct 2018 10:03:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:03:23 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 16 Oct 2018 10:04:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 10:05:56 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 11:11:07 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 16 Oct 2018 11:11:07 GMT
ENV LANG=C.UTF-8
# Tue, 16 Oct 2018 11:29:16 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 16 Oct 2018 11:29:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 16 Oct 2018 11:29:27 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 16 Oct 2018 11:29:27 GMT
ENV PYTHON_VERSION=2.7.15
# Tue, 16 Oct 2018 11:31:50 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture -qDEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 16 Oct 2018 11:31:51 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 16 Oct 2018 11:32:01 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 16 Oct 2018 11:32:05 GMT
RUN pip install --no-cache-dir virtualenv
# Tue, 16 Oct 2018 11:32:06 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:6a0053223045d511a3aeec9d8c41fee58a3e0832612eaf45036ed25b30ffc51d`  
		Last Modified: Tue, 16 Oct 2018 09:07:09 GMT  
		Size: 38.0 MB (37993627 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16d5ade59992a3e1982a9e9afc87c36e969d9d4a040ba7ecd9b4920c5b3e0c2`  
		Last Modified: Tue, 16 Oct 2018 10:12:41 GMT  
		Size: 5.5 MB (5474924 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e08e3b693e026aa51b9c4297c7147a7b83a22bac773617af9ed75dc69029ee27`  
		Last Modified: Tue, 16 Oct 2018 10:13:05 GMT  
		Size: 35.9 MB (35894338 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d237f86631d95899b9a373876c7b11ea4059ebdc74b6e61476a53c803d3afa9c`  
		Last Modified: Tue, 16 Oct 2018 10:13:43 GMT  
		Size: 89.7 MB (89684485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:29320b4aa790723207afc37ec9043b148e589cc32c8a3c5f00c7c20ccb56040f`  
		Last Modified: Tue, 16 Oct 2018 11:38:49 GMT  
		Size: 5.5 MB (5493979 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:71e73c0e7e1478d627004b296bf0b19ce10c28b46101f200c097b29041745ed4`  
		Last Modified: Tue, 16 Oct 2018 11:38:52 GMT  
		Size: 12.9 MB (12866237 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9267a74e7d5d028fb117d1c50eaa58c6f88f80066957ff2c431c91e6d7543612`  
		Last Modified: Tue, 16 Oct 2018 11:38:48 GMT  
		Size: 1.8 MB (1777437 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9adcdd73643e4db0871d3793badbb985b0085310e6277d0d9a1bfe7dc1f7607`  
		Last Modified: Tue, 16 Oct 2018 11:38:48 GMT  
		Size: 3.7 MB (3658267 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-wheezy` - linux; arm variant v7

```console
$ docker pull python@sha256:9971d5788a6cb15c54038b6d392986c68a9b6b35ae79bce7b1d73c998ef07598
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.0 MB (185959274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c761af62675b29544db5f91fb347a3addf704c30c1eb525d81159376ec00275`
-	Default Command: `["python2"]`

```dockerfile
# Wed, 05 Sep 2018 12:06:21 GMT
ADD file:0f03b0fad93abdeea4254956f6ebee6e15d3c63c5b64bc6d973a664168700342 in / 
# Wed, 05 Sep 2018 12:06:22 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:48:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:48:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:49:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:51:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 15:59:23 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 15:59:23 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 16:20:18 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 16:20:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 16:20:27 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 16:20:27 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 16:22:46 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture -qDEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 10 Oct 2018 12:14:22 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 10 Oct 2018 12:14:31 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 10 Oct 2018 12:14:43 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 10 Oct 2018 12:14:52 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:282e383dda957a59e300c3642bf38cce411c9792f7ea952f837854e3effd85b2`  
		Last Modified: Wed, 05 Sep 2018 12:15:34 GMT  
		Size: 36.6 MB (36620285 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee5602377929a728c8d3622051c1c45115191b1cc2bffb8aa2afb1e2914b8e89`  
		Last Modified: Wed, 05 Sep 2018 12:59:04 GMT  
		Size: 5.3 MB (5321870 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91a95b53602f5ba44faf06fc5867a624382edde6d3cc3e9535793421b755bbfe`  
		Last Modified: Wed, 05 Sep 2018 12:59:31 GMT  
		Size: 34.9 MB (34873395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2feb99a2bcc8ceb9b35cd1494d1341bcfdc4795509e8045e28e4b886c3699921`  
		Last Modified: Wed, 05 Sep 2018 13:00:11 GMT  
		Size: 85.7 MB (85742405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91b73381e578712a1d91628140cef600b519856eee229d8155568ad85ea5a406`  
		Last Modified: Wed, 05 Sep 2018 16:34:04 GMT  
		Size: 5.2 MB (5244408 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2742ea0f8db1194c7c6eecece6f1ab69cb78aabcb119fe958c5f3820ef5b9675`  
		Last Modified: Wed, 05 Sep 2018 16:34:06 GMT  
		Size: 12.7 MB (12721190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ca8abce7718d55adec4104a8ee8b37482eb3765302ef46c0f873046269cdfa38`  
		Last Modified: Wed, 10 Oct 2018 12:29:43 GMT  
		Size: 1.8 MB (1777380 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db371fc8442cbde5a275aafa82a74506174fa046e24b0fbb11a90e047c778eb`  
		Last Modified: Wed, 10 Oct 2018 12:29:44 GMT  
		Size: 3.7 MB (3658341 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-wheezy` - linux; 386

```console
$ docker pull python@sha256:d1960cdac40714f75892aee2b78826eb2bd2d309264b2b3d138739b337e50c6c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.0 MB (209042965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a1ad2e2908ab99946a54d211c48b7f625f9ab5fe3504d08ac96f5a278eb39f7`
-	Default Command: `["python2"]`

```dockerfile
# Wed, 05 Sep 2018 10:45:49 GMT
ADD file:f270dc2a82d00313de1f792ee286405bcb5fa0e79dbfa44cf9cb0abc3c42221d in / 
# Wed, 05 Sep 2018 10:45:50 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:48:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:48:15 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:49:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:50:48 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 22:57:40 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 22:57:40 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 23:19:00 GMT
ENV PYTHONIOENCODING=UTF-8
# Thu, 06 Sep 2018 23:19:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 23:19:08 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 06 Sep 2018 23:19:08 GMT
ENV PYTHON_VERSION=2.7.15
# Thu, 06 Sep 2018 23:20:52 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture -qDEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 10 Oct 2018 11:16:40 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 10 Oct 2018 11:16:46 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 10 Oct 2018 11:16:48 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 10 Oct 2018 11:16:48 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:ffdb7073d93a02815a69b2a5396cb5bb86c592de0ac9fa593b1c71b964d536cd`  
		Last Modified: Wed, 05 Sep 2018 10:54:06 GMT  
		Size: 40.5 MB (40532872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8acd7c05e040cecb47dc01599f198cf50fb5360f56dd47d15f7f3593ef86423d`  
		Last Modified: Wed, 05 Sep 2018 12:13:25 GMT  
		Size: 5.6 MB (5617111 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e26b7e9156c95df0f1661a78bc6992d35b6f70dbd35e2014ec38f91460b5a7eb`  
		Last Modified: Wed, 05 Sep 2018 12:14:00 GMT  
		Size: 37.1 MB (37050513 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:45b07cc647ec3c68d91168f0c22a79c22d190a54915bfb6cdb3aeecd76295789`  
		Last Modified: Wed, 05 Sep 2018 12:15:03 GMT  
		Size: 100.4 MB (100434989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36703623740bbb6d56d5824a7133994d7ad8577e7e2b96b5af088e0af2e75aa6`  
		Last Modified: Thu, 06 Sep 2018 23:35:49 GMT  
		Size: 5.7 MB (5717880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3db064a6d9133dc70970103ddfc927dae18871fa18e7557344cf4999d115314e`  
		Last Modified: Thu, 06 Sep 2018 23:35:50 GMT  
		Size: 14.3 MB (14254158 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:142426cc729d11340ff682628b141f52ed291af213088c51caa1cde79b8da460`  
		Last Modified: Wed, 10 Oct 2018 11:29:56 GMT  
		Size: 1.8 MB (1777172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b1121736ba3ed8b20f905292d9d286fc826d975b890e12e569a1ed9571be491`  
		Last Modified: Wed, 10 Oct 2018 11:29:56 GMT  
		Size: 3.7 MB (3658270 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
