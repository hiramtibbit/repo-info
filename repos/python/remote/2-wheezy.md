## `python:2-wheezy`

```console
$ docker pull python@sha256:8561abdeecae95c892747781d563cdafadfe705e937baf6392ea84424b43efd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `python:2-wheezy` - linux; amd64

```console
$ docker pull python@sha256:8322623ba0a054628c7c1187940d3be9d1bf34ec393de621ce412ba6beb0a588
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.7 MB (208716059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d20a9db797e82d0b4bf3203233df6579ed1081a4de39a3f01c67adcb0b9fe18`
-	Default Command: `["python2"]`

```dockerfile
# Fri, 28 Dec 2018 23:32:10 GMT
ADD file:7d97c6060d2f2ed127bfa6caf63275d4d8d4a3828f243204370a117e3bde0923 in / 
# Fri, 28 Dec 2018 23:32:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 00:10:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 00:10:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 00:10:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 08 Jan 2019 23:37:54 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 04:40:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Jan 2019 04:40:02 GMT
ENV LANG=C.UTF-8
# Wed, 09 Jan 2019 04:53:04 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 09 Jan 2019 04:53:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 04:53:14 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 09 Jan 2019 04:53:14 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 09 Jan 2019 04:55:56 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture -qDEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 09 Jan 2019 04:55:56 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 09 Jan 2019 04:56:05 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 09 Jan 2019 04:56:08 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 09 Jan 2019 04:56:09 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:0ac552c681ffeeb04e8a77bde853c03dd88f87b3936e140ebff2919aef76fe84`  
		Last Modified: Fri, 28 Dec 2018 23:36:56 GMT  
		Size: 39.3 MB (39339686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a940a6c0fea4352301dde93c06035a81b9805725598be38b151e542e855a5cf2`  
		Last Modified: Sat, 29 Dec 2018 00:23:34 GMT  
		Size: 5.6 MB (5630869 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4143c4dc44f6282ad14476be2c94bd55e7f5010118d33e4e97b10f95b7d64e1`  
		Last Modified: Sat, 29 Dec 2018 00:23:47 GMT  
		Size: 38.0 MB (37960370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eaf3b99c066e74cfabdc973966e059227f1089a79bd0bc66e04ca4b616e9fbfb`  
		Last Modified: Tue, 08 Jan 2019 23:46:20 GMT  
		Size: 99.8 MB (99789742 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf99523827e53a774aeab9dacfd6942ecc36f405c6c3c1b893e8c34e15077504`  
		Last Modified: Wed, 09 Jan 2019 05:00:09 GMT  
		Size: 5.7 MB (5721370 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:454e737923b08617d224f9dd212a430a591f1d59f61d75e3812e0cc64f478f5a`  
		Last Modified: Wed, 09 Jan 2019 05:00:11 GMT  
		Size: 14.8 MB (14838654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27f53f646768f5c1ba632e05cb727f9c8024efcd1241324fea3cf8c5ad52c1b7`  
		Last Modified: Wed, 09 Jan 2019 05:00:08 GMT  
		Size: 1.8 MB (1780172 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e761a5f05d61a7042645655ae737b6f57897890a308bc4ffc8784eb72691c31`  
		Last Modified: Wed, 09 Jan 2019 05:00:08 GMT  
		Size: 3.7 MB (3655196 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-wheezy` - linux; arm variant v5

```console
$ docker pull python@sha256:cfe169e149ae64a0d7ef7be3631d90cf98ad93c4196293d09e33e878cafc834c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.0 MB (193047332 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27d240474a13d234e1c4b66496224da75f02c140f2a7479ffdc1a53083ff05c2`
-	Default Command: `["python2"]`

```dockerfile
# Sat, 29 Dec 2018 09:57:51 GMT
ADD file:2176455c0a806208679d84cd68bd333f8550a0221930164de204c0d700ef0732 in / 
# Sat, 29 Dec 2018 09:57:52 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 10:36:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 10:36:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 10:37:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 10:00:20 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 10:44:20 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Jan 2019 10:44:20 GMT
ENV LANG=C.UTF-8
# Wed, 09 Jan 2019 10:56:02 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 09 Jan 2019 10:56:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 10:56:15 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 09 Jan 2019 10:56:15 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 09 Jan 2019 10:58:40 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture -qDEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 09 Jan 2019 10:58:41 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 09 Jan 2019 10:58:54 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 09 Jan 2019 10:58:59 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 09 Jan 2019 10:58:59 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:0a88807c02a49bee45e800ff85ea3cdd0868f83fffa6aa89ab393861b593d635`  
		Last Modified: Sat, 29 Dec 2018 10:04:37 GMT  
		Size: 38.0 MB (37992205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe1dfee93bb9c051c7f471b5ca0ecb702dae9db3b59df8960dca6109967e6f19`  
		Last Modified: Sat, 29 Dec 2018 10:45:33 GMT  
		Size: 5.5 MB (5474987 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2631b4de03bee133a32c6b6482c689d00f44fa2622345479f531366e62e92f7f`  
		Last Modified: Sat, 29 Dec 2018 10:45:53 GMT  
		Size: 35.9 MB (35894264 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be771f7f490352a2cea30b2672ebff9bec9506d16d95e91ce5e78930a04206db`  
		Last Modified: Wed, 09 Jan 2019 10:05:18 GMT  
		Size: 89.9 MB (89889049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6112a17f6f8a1d7a84b3685f2c399f2d72765a4117be327a8d3dfb69d3067729`  
		Last Modified: Wed, 09 Jan 2019 11:02:15 GMT  
		Size: 5.5 MB (5494986 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fe66887b8354d5625cc297801235c0d3d70f4dd539b68e4e44a22d31dc7063eb`  
		Last Modified: Wed, 09 Jan 2019 11:02:18 GMT  
		Size: 12.9 MB (12866197 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c61034f6f04460ac81538ab8770676e428f5649b85e5cce60181161d2ab3266a`  
		Last Modified: Wed, 09 Jan 2019 11:02:14 GMT  
		Size: 1.8 MB (1780383 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9f17d40d13f9f1b60c33add9063b95d9854819b13a6778da99cfb250bd2ff8da`  
		Last Modified: Wed, 09 Jan 2019 11:02:14 GMT  
		Size: 3.7 MB (3655261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-wheezy` - linux; arm variant v7

```console
$ docker pull python@sha256:2dc8d5b806b829c09db1d0089c25d95834b7d63790e48cf24df054077ddea9eb
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.1 MB (186138585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8ad3cf0b422362aaa186f8015baae3913272a8d45db72bdc6b379655b1c4469`
-	Default Command: `["python2"]`

```dockerfile
# Sat, 29 Dec 2018 13:07:30 GMT
ADD file:afb8fc53fa712796da9dd3634f9727b3a61011287571a7f5b7a83dad001fb48a in / 
# Sat, 29 Dec 2018 13:07:32 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:50:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:50:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 13:51:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 13:17:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 15:00:21 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Jan 2019 15:00:21 GMT
ENV LANG=C.UTF-8
# Wed, 09 Jan 2019 15:23:59 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 09 Jan 2019 15:24:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 15:24:10 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 09 Jan 2019 15:24:10 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 09 Jan 2019 15:26:45 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture -qDEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 09 Jan 2019 15:26:46 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 09 Jan 2019 15:26:56 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 09 Jan 2019 15:27:00 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 09 Jan 2019 15:27:01 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:365b02c18acb1b27f85922210e9971228cdd4e6b5e8953c9f0759dde2f1c3f41`  
		Last Modified: Sat, 29 Dec 2018 13:13:48 GMT  
		Size: 36.6 MB (36619981 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:859b3768bee8e8f8e079527825ec2cbf646027c204e6c71f75d5e1817b7f23a5`  
		Last Modified: Sat, 29 Dec 2018 14:06:59 GMT  
		Size: 5.3 MB (5322076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27fbc19496b467092165aee319feb4543e449a00622e6a11b978c1c4c5113f10`  
		Last Modified: Sat, 29 Dec 2018 14:07:18 GMT  
		Size: 34.9 MB (34872925 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422a2284c55951b2bcaa8a48cc7e7e50697bd64fa05b0f93330f577358c27624`  
		Last Modified: Wed, 09 Jan 2019 13:26:38 GMT  
		Size: 85.9 MB (85921339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dc38f654a28124838def8613a9af567859738dc0f6441bd3269ff987bbb8d4c8`  
		Last Modified: Wed, 09 Jan 2019 15:32:33 GMT  
		Size: 5.2 MB (5245537 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64606a094b1b9dfe4c6af34b3c307a5283020e84442bddd523c59d782d451209`  
		Last Modified: Wed, 09 Jan 2019 15:32:36 GMT  
		Size: 12.7 MB (12721253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2f9895e1abfab91b8d449ebab48e5d799bef507cf614967ae67112240f67b35`  
		Last Modified: Wed, 09 Jan 2019 15:32:32 GMT  
		Size: 1.8 MB (1780358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fed7b856b3dc87adeee4c67463d1d8f33ceddfd014842da1709b90b6545d58ef`  
		Last Modified: Wed, 09 Jan 2019 15:32:33 GMT  
		Size: 3.7 MB (3655116 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-wheezy` - linux; 386

```console
$ docker pull python@sha256:75a3b63cb5ceda8255ebcd739aa8e8d0df81bbfc8bb05652462c2e8479a65d6d
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.2 MB (209224770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d8f4b713a3a59dc9defcdc6e56514ffeaa76ec973508302a3ca31047c7bda15`
-	Default Command: `["python2"]`

```dockerfile
# Sat, 29 Dec 2018 12:01:56 GMT
ADD file:1acbd220f969e13c69f3f789ba79f4436365edeb5d2acae232d1a4c53c3d54b6 in / 
# Sat, 29 Dec 2018 12:01:57 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 13:08:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 13:08:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 13:09:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 11:58:21 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 15:25:09 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Jan 2019 15:25:09 GMT
ENV LANG=C.UTF-8
# Wed, 09 Jan 2019 15:35:01 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 09 Jan 2019 15:35:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 15:35:08 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 09 Jan 2019 15:35:09 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 09 Jan 2019 15:36:53 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture -qDEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 09 Jan 2019 15:36:53 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 09 Jan 2019 15:36:59 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 09 Jan 2019 15:37:02 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 09 Jan 2019 15:37:02 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:5c1f1b705acc909fc97b326ea9a451bc340d9986219dcb9aabf2c3a691450a29`  
		Last Modified: Sat, 29 Dec 2018 12:12:20 GMT  
		Size: 40.5 MB (40532841 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d5eaf1ffaee1d8bf605f28faf5cb35f054e078e245bc8e15e4bbeb929c9e14`  
		Last Modified: Sat, 29 Dec 2018 13:32:09 GMT  
		Size: 5.6 MB (5617223 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce87666a86deb8d8a26ef3b32e93da687d79aaf3487463b70de7d6ce42c7d2fd`  
		Last Modified: Sat, 29 Dec 2018 13:32:35 GMT  
		Size: 37.1 MB (37050049 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bf01b34eff70a0e599ed7c23337b3fd6bacab1ba4484341634099a146167c12a`  
		Last Modified: Wed, 09 Jan 2019 12:07:36 GMT  
		Size: 100.6 MB (100616825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d35e231b9c00a32965e3759691ec80a14a824a25f0141a17621d0fe849be9dc`  
		Last Modified: Wed, 09 Jan 2019 15:39:39 GMT  
		Size: 5.7 MB (5718547 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75ddb93e9cccb9847bba3ee8d185534c4ae0ecbdd0d5e85c8b7bc5bd344cebed`  
		Last Modified: Wed, 09 Jan 2019 15:39:41 GMT  
		Size: 14.3 MB (14254067 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c19d1b3a38ad42e097c5bb60abbaf0f37d76b7012626aaa7c413c80c88469f`  
		Last Modified: Wed, 09 Jan 2019 15:39:38 GMT  
		Size: 1.8 MB (1780147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ede52e8ea7ccb2dc1555e4297ef56e8820858940e89c3eac4616ba92dcc30238`  
		Last Modified: Wed, 09 Jan 2019 15:39:38 GMT  
		Size: 3.7 MB (3655071 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
