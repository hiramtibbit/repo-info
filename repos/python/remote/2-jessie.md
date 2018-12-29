## `python:2-jessie`

```console
$ docker pull python@sha256:830757ca3d24019a2b3536dc384c280fe6a4de6b1f4caa5ba9f318c95bb26f0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `python:2-jessie` - linux; amd64

```console
$ docker pull python@sha256:62e89b5f5a66eefd965487ddea9c8f9f2aadd9c7cc71b90d8018e415fac82669
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.2 MB (272218720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9aa770f02904d037dcad557993a2ace7ab09a031e3d4cded6a07ab34348f2c0`
-	Default Command: `["python2"]`

```dockerfile
# Fri, 28 Dec 2018 23:23:43 GMT
ADD file:7f32b46e26b56ebbde417db4d539757b8e852c62bab15978db092ce24d2420d1 in / 
# Fri, 28 Dec 2018 23:23:43 GMT
CMD ["bash"]
# Fri, 28 Dec 2018 23:56:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 28 Dec 2018 23:56:43 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 28 Dec 2018 23:58:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:02:06 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 03:57:28 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 29 Dec 2018 03:57:28 GMT
ENV LANG=C.UTF-8
# Sat, 29 Dec 2018 08:27:30 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 29 Dec 2018 08:29:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 08:29:13 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 29 Dec 2018 08:29:13 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 29 Dec 2018 08:32:05 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 29 Dec 2018 08:32:05 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 29 Dec 2018 08:32:13 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 29 Dec 2018 08:32:16 GMT
RUN pip install --no-cache-dir virtualenv
# Sat, 29 Dec 2018 08:32:17 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:ff144d3c0ab1033159cf082f681c9f51b09cd701d907e3bad65b1411fa1585a9`  
		Last Modified: Fri, 28 Dec 2018 23:33:45 GMT  
		Size: 54.4 MB (54387117 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8988f929403e60a98b37002c9210cf3bf3ecf8782130b011dac8f2b28608ed31`  
		Last Modified: Sat, 29 Dec 2018 00:19:39 GMT  
		Size: 17.5 MB (17539015 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:155407d8635b1e92ef1550c047a938a8fcf39331261d1eb742ea962d7a1a0630`  
		Last Modified: Sat, 29 Dec 2018 00:19:53 GMT  
		Size: 43.3 MB (43306794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2b0d3a5be73b757d46f55ed95acee98ca8bfdfe18ce44e763c0ad1d8ed71f244`  
		Last Modified: Sat, 29 Dec 2018 00:20:22 GMT  
		Size: 131.2 MB (131209166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9d22598eaabf05746006ea20fe102644a8d7c9223ddf323bf3b3610f1363d6c0`  
		Last Modified: Sat, 29 Dec 2018 08:49:05 GMT  
		Size: 5.7 MB (5748369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f4107718995e9efb8c785f8eeda1f1fc9af3117a4712b4b650d0c75cef9d7372`  
		Last Modified: Sat, 29 Dec 2018 08:49:07 GMT  
		Size: 14.6 MB (14589171 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4813158e5bd02f336628bae4353f2c48952f5083c6ba4c39c8505aff669f0bfe`  
		Last Modified: Sat, 29 Dec 2018 08:49:04 GMT  
		Size: 1.8 MB (1780144 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75e83195cbb0a2d58d5309a68ce76c03bf153f7a4a9f021a02405ae21d0f8faf`  
		Last Modified: Sat, 29 Dec 2018 08:49:04 GMT  
		Size: 3.7 MB (3658944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-jessie` - linux; arm variant v5

```console
$ docker pull python@sha256:a1b2aab10abb72f504b4a8689f3cce03a65dd747f185fed198c58e0503302c79
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.0 MB (251959228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4580b7e8e8222e7a0d234fef33ccb7df4f40f2418463197e0e8aa8752cfadf04`
-	Default Command: `["python2"]`

```dockerfile
# Fri, 16 Nov 2018 09:50:40 GMT
ADD file:51b6e570dd2584f3747b0877f1342ea36c4c8dae4b0aa0f4a114e816fde77904 in / 
# Fri, 16 Nov 2018 09:50:41 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:28:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:28:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 18:29:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:32:30 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:57:21 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 18:57:21 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 21:55:01 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 16 Nov 2018 21:55:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 21:55:48 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 16 Nov 2018 21:55:49 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 16 Nov 2018 21:58:43 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 16 Nov 2018 21:58:44 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 21:58:54 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 21:58:59 GMT
RUN pip install --no-cache-dir virtualenv
# Fri, 16 Nov 2018 21:59:00 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:28b426da5f009c6d2c8bc1993bee5601ab4126eb8a3a2698db1d96c7f612dde8`  
		Last Modified: Fri, 16 Nov 2018 10:05:38 GMT  
		Size: 52.5 MB (52544563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d85e7a926b9697d9b8ca1e354a10a67ab9ac56b09d02c3e293a6d2f10eb1939e`  
		Last Modified: Fri, 16 Nov 2018 18:46:57 GMT  
		Size: 17.0 MB (17030194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e46ba2567b36508f7e2c69e087a740a7b9e2e3f00177014d5d001993c2463069`  
		Last Modified: Fri, 16 Nov 2018 18:47:24 GMT  
		Size: 41.1 MB (41143586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbcacc75015740ffcbcf9f203a8784ef6b861368529d3e8990c033f75f25ddff`  
		Last Modified: Fri, 16 Nov 2018 18:48:19 GMT  
		Size: 115.8 MB (115782018 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f92697954e82f88b39d3799ae300e13e654b20815be0e141e890ad1580c68c6c`  
		Last Modified: Fri, 16 Nov 2018 22:08:08 GMT  
		Size: 5.5 MB (5499572 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f96f239acce684497e683c5869fb33573d79ab436aea3a9c477347c42c5d820b`  
		Last Modified: Fri, 16 Nov 2018 22:08:13 GMT  
		Size: 14.5 MB (14519419 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a044fd134b0ff1788734852a212d897ca869a2d5bdce49998ead85c3e89c481c`  
		Last Modified: Fri, 16 Nov 2018 22:08:07 GMT  
		Size: 1.8 MB (1780440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0bf139ee6936c593c1a019dd396298f71b4aa923e82db4b52830868ea4186e5b`  
		Last Modified: Fri, 16 Nov 2018 22:08:07 GMT  
		Size: 3.7 MB (3659436 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-jessie` - linux; arm variant v7

```console
$ docker pull python@sha256:920dedc58158246b529284a7ba533f9ae3f6562569351d9726aa68e1f387b273
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.7 MB (245674145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8aa8db1bfe04e21195817a2344a8e7965f7a4ba2cd73cd452a85fe4c68b1030`
-	Default Command: `["python2"]`

```dockerfile
# Fri, 16 Nov 2018 13:02:11 GMT
ADD file:9c7cee46635f83a6649a59dfa973c45dbfcb18294c4e9929937b51ca89af3242 in / 
# Fri, 16 Nov 2018 13:02:13 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:09:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:09:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 18:10:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:13:33 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:05:24 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 22:05:25 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 22:27:02 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 16 Nov 2018 22:27:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:27:50 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 16 Nov 2018 22:27:51 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 16 Nov 2018 22:30:30 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 16 Nov 2018 22:30:31 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 22:30:48 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 22:30:54 GMT
RUN pip install --no-cache-dir virtualenv
# Fri, 16 Nov 2018 22:31:02 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:2a662743dee4e609927ac10eb7f6457acb061af79addbda5a70c40f873a43c93`  
		Last Modified: Fri, 16 Nov 2018 13:15:12 GMT  
		Size: 50.3 MB (50279570 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:731cbf9b0332806ff18413498271ad3f71f9c770f17fd6365db6bd350a47af07`  
		Last Modified: Fri, 16 Nov 2018 18:27:49 GMT  
		Size: 16.7 MB (16712873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a9f23784e9c8032bc43636149994cec447c09b6dc5e7f55f9d27a05e85e07c6`  
		Last Modified: Fri, 16 Nov 2018 18:28:22 GMT  
		Size: 39.8 MB (39763255 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd8b3964f9343f7e92ceec49840b496d13783c87e5223359409f8a6c06344796`  
		Last Modified: Fri, 16 Nov 2018 18:29:08 GMT  
		Size: 114.1 MB (114086853 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e93a22819a0f72f28db0bd56ffe3a2a151d1f9c81b427fd89ee152b094272893`  
		Last Modified: Fri, 16 Nov 2018 22:42:18 GMT  
		Size: 5.2 MB (5187273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b32c7300d656bb820211e6938bfc96563c13cd7b1d7f750e51d366449ad0b054`  
		Last Modified: Fri, 16 Nov 2018 22:42:21 GMT  
		Size: 14.2 MB (14204556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2b914a866b778eb7a671ddf4073ebc322f24e56bfd14ce576832a2d3688c157`  
		Last Modified: Fri, 16 Nov 2018 22:42:17 GMT  
		Size: 1.8 MB (1780429 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c4abb8aa8759aa1ca67436c53143fd8efcbb7b9abd54c4c2b603f6a390c99466`  
		Last Modified: Fri, 16 Nov 2018 22:42:17 GMT  
		Size: 3.7 MB (3659336 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-jessie` - linux; 386

```console
$ docker pull python@sha256:0754d2a300c9d59ef138d656523d2e016274a50247d469988b77d0ffe25df00d
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.6 MB (278605359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4084305b7d63cc40b35c6481b6f2d4b0f611dc6a01f0cab092da1aa9e0db5cc2`
-	Default Command: `["python2"]`

```dockerfile
# Fri, 16 Nov 2018 12:25:54 GMT
ADD file:85dda498c7ceba872653c9bb40223849881a8a9c59c0f9a39003a8e6862f66e5 in / 
# Fri, 16 Nov 2018 12:25:54 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 11:14:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 11:14:25 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 11:16:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 11:19:32 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 16:43:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Nov 2018 16:43:49 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 23:47:37 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 17 Nov 2018 23:48:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 23:48:11 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 17 Nov 2018 23:48:12 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 17 Nov 2018 23:50:08 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 17 Nov 2018 23:50:08 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 17 Nov 2018 23:50:14 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 17 Nov 2018 23:50:16 GMT
RUN pip install --no-cache-dir virtualenv
# Sat, 17 Nov 2018 23:50:16 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:16575792c3dc98957c43c8d8fc1a81b062a3ff3fc617db60ddae32a813319afd`  
		Last Modified: Thu, 15 Nov 2018 01:12:17 GMT  
		Size: 54.6 MB (54584852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d8c656c5ba901c867f311e23cdb35dca16d35c23b492c6e4738f0124af80e92d`  
		Last Modified: Sat, 17 Nov 2018 11:41:35 GMT  
		Size: 19.8 MB (19837621 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:124efacb5af9ea62e9c8c01741b4d909626d5d473c05e84cfeedccefa4568ad3`  
		Last Modified: Sat, 17 Nov 2018 11:42:28 GMT  
		Size: 44.0 MB (43952498 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab8e9ce6078d06e1b7cbd7c618ce44fdf244e492799a7c8509673763ab7fe310`  
		Last Modified: Sat, 17 Nov 2018 11:43:59 GMT  
		Size: 135.2 MB (135189304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:801bd9b88d799195dd6960aad8e38b2ad195b8cf7a399a35474e3f790caf084c`  
		Last Modified: Sat, 17 Nov 2018 23:59:04 GMT  
		Size: 6.0 MB (6002290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:84760bd9e19d9b688f20309ca65e516698bcfef9313b51de84a212eae8aa5100`  
		Last Modified: Sat, 17 Nov 2018 23:59:06 GMT  
		Size: 13.6 MB (13599335 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3510470b96ee0a43892129244039704defc7dd1d0fc71e390cf00bcc8b410fa`  
		Last Modified: Sat, 17 Nov 2018 23:59:03 GMT  
		Size: 1.8 MB (1780212 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c7c17eca7831eff8cef5dee0530d79a5a66b2b15221084749606b7fb5a339bd8`  
		Last Modified: Sat, 17 Nov 2018 23:59:03 GMT  
		Size: 3.7 MB (3659247 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
