## `python:2-wheezy`

```console
$ docker pull python@sha256:bbf66a577c147553184f618c92ec7c6bbe21473b92eb88c1a5fdf8c94f5cef97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `python:2-wheezy` - linux; amd64

```console
$ docker pull python@sha256:407ef010972189351cf0df479bc6a3c3075a2de7bc4f67b986f8be6b4586064c
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.8 MB (208794868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d92d46058b2f3f22b157d21b4938fe32ba3e70fbd9a0a1868a0c1fb173801ffc`
-	Default Command: `["python2"]`

```dockerfile
# Tue, 22 Jan 2019 19:32:58 GMT
ADD file:ec03145d2cf8c637e8733ce03701058ddfe1076a93bef99b70b01962b089cdd0 in / 
# Tue, 22 Jan 2019 19:32:58 GMT
CMD ["bash"]
# Tue, 22 Jan 2019 20:07:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:07:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 22 Jan 2019 20:08:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 22 Jan 2019 20:09:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 03:44:54 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 03:44:55 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 04:12:49 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 23 Jan 2019 04:12:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 04:12:57 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 23 Jan 2019 04:12:57 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 23 Jan 2019 04:14:30 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture -qDEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 26 Jan 2019 01:50:24 GMT
ENV PYTHON_PIP_VERSION=19.0.1
# Sat, 26 Jan 2019 01:50:30 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 26 Jan 2019 01:50:32 GMT
RUN pip install --no-cache-dir virtualenv
# Sat, 26 Jan 2019 01:50:33 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:8f07b832660bdbddf1cb2b72bf063629d3fe541abfe3fb0d89248c478acdb242`  
		Last Modified: Tue, 22 Jan 2019 19:38:04 GMT  
		Size: 39.3 MB (39339901 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5855e7e887fc3936c53aeab7a5265498c92d2cb496a1bac70dab7a4e7e4912bf`  
		Last Modified: Tue, 22 Jan 2019 20:14:21 GMT  
		Size: 5.6 MB (5631099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4a35cb7af49bb5d5e984efafed97eeac2037bb27253798d31e397cf0f7b734a`  
		Last Modified: Tue, 22 Jan 2019 20:14:33 GMT  
		Size: 38.0 MB (37960416 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:315277232f36ec89293e596148af90b16e4635c7fcf809f49061cda4bd98101d`  
		Last Modified: Tue, 22 Jan 2019 20:14:59 GMT  
		Size: 99.8 MB (99789843 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5cabd6329c4cbc29e6bc16e6b957e2fd12263cfae305df1af11b86240dd064e1`  
		Last Modified: Wed, 23 Jan 2019 20:27:04 GMT  
		Size: 5.7 MB (5721365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea008c7c384bee0c2fab2713da6d3037c255cca520a5436937e60e3b56ced55a`  
		Last Modified: Wed, 23 Jan 2019 20:27:07 GMT  
		Size: 14.8 MB (14838646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02badbdf7e31513f32207b61d21335cf703f8512d76b13c8e48233042f18f7bb`  
		Last Modified: Sat, 26 Jan 2019 01:53:58 GMT  
		Size: 1.8 MB (1808339 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0723b340d3b5ce5c1c1f84f3407ac0ccc8ee70ee83a8b783bbf7ceba729864f4`  
		Last Modified: Sat, 26 Jan 2019 01:53:58 GMT  
		Size: 3.7 MB (3705259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-wheezy` - linux; arm variant v5

```console
$ docker pull python@sha256:d5d4dddd58ae29090813b6606d7336ca718c1309e0d908249090225f27c97171
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.1 MB (193126246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cb4fa027d9599c0a0addb7ddb2b9debd03dc6a7c44de3b937e0480392cf3f35`
-	Default Command: `["python2"]`

```dockerfile
# Wed, 23 Jan 2019 09:57:04 GMT
ADD file:5db8265128cc6f9de34a940ba6318ea3567aae52b29fe6c0c5941ed6e43adfd1 in / 
# Wed, 23 Jan 2019 09:57:05 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:42:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:42:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 10:43:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:44:51 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:06:38 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 12:06:38 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 12:35:11 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 23 Jan 2019 12:35:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:35:23 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 23 Jan 2019 12:35:23 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 23 Jan 2019 12:37:48 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture -qDEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 26 Jan 2019 10:03:56 GMT
ENV PYTHON_PIP_VERSION=19.0.1
# Sat, 26 Jan 2019 10:04:06 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 26 Jan 2019 10:04:11 GMT
RUN pip install --no-cache-dir virtualenv
# Sat, 26 Jan 2019 10:04:11 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:b9282fffe21aff109811dbcca73fb778b30eaac4a389b4cfbfe8c02b1ac5202d`  
		Last Modified: Wed, 23 Jan 2019 10:03:42 GMT  
		Size: 38.0 MB (37992343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22ddae2efc3670f393a73004af5cbc8cd2dfbef685e8c7d81728ab9d3592133f`  
		Last Modified: Wed, 23 Jan 2019 10:51:01 GMT  
		Size: 5.5 MB (5474953 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:827fb68fc0ffd619697e55a33bc7a9f7f816b717afc28c73eada67ca0f09e964`  
		Last Modified: Wed, 23 Jan 2019 10:51:19 GMT  
		Size: 35.9 MB (35894198 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46ca3ac6518c4113b24a94da9e67dae0d403c0e7099bbf499823037cc170df6f`  
		Last Modified: Wed, 23 Jan 2019 10:51:50 GMT  
		Size: 89.9 MB (89889229 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fb5a23c2c144c233f2a1da560057efa9e819f3a2c21e72704681d0b147316507`  
		Last Modified: Wed, 23 Jan 2019 15:25:02 GMT  
		Size: 5.5 MB (5494988 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9d5879afba6087a0816cc294e3b6889673e8431a4f757b18d24b61805152a57`  
		Last Modified: Wed, 23 Jan 2019 15:25:05 GMT  
		Size: 12.9 MB (12866155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b9a5647c22987ffd86258ed7519af6ce8b948d85ee2e139e7dad83c4fde47b9`  
		Last Modified: Sat, 26 Jan 2019 10:07:16 GMT  
		Size: 1.8 MB (1808543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb4ef9d9be3775682c6f010dbba1315a54f4bb6b042fb7470fb2590b9e344a72`  
		Last Modified: Sat, 26 Jan 2019 10:07:16 GMT  
		Size: 3.7 MB (3705837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-wheezy` - linux; arm variant v7

```console
$ docker pull python@sha256:75c5f88343b12dbd31fba8d4660b1a5be8bc62f59a09ebc5274d9ffe81b333c2
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.2 MB (186217479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21b46a9574d5559087b151c1785d5f123ebbea2aae310a36a501bc1896a8726b`
-	Default Command: `["python2"]`

```dockerfile
# Wed, 23 Jan 2019 13:07:15 GMT
ADD file:7d9aad6f799a97cd501266efa4ab42054317783776b828b81c34db3db1e5e1bb in / 
# Wed, 23 Jan 2019 13:07:16 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:51:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:51:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:51:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:53:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:58:56 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 15:58:57 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 16:23:07 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 23 Jan 2019 16:23:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 16:23:18 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 23 Jan 2019 16:23:19 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 23 Jan 2019 16:25:38 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture -qDEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 26 Jan 2019 13:18:51 GMT
ENV PYTHON_PIP_VERSION=19.0.1
# Sat, 26 Jan 2019 13:19:00 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 26 Jan 2019 13:19:04 GMT
RUN pip install --no-cache-dir virtualenv
# Sat, 26 Jan 2019 13:19:05 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:c65553b75dbe6d4ce3a95ea4c52c0cfe2e8c6ef00067b6527b4efece00329f55`  
		Last Modified: Wed, 23 Jan 2019 13:13:43 GMT  
		Size: 36.6 MB (36620004 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb656d8feea4a9242a115887e1ebcd99dcb6137637ef4b821e0f5efe0e85bb57`  
		Last Modified: Wed, 23 Jan 2019 14:08:19 GMT  
		Size: 5.3 MB (5322069 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae4d0e37463cc5b5de0ce13f4237d3410aef8910a1afffff710ab0a43a81e02a`  
		Last Modified: Wed, 23 Jan 2019 14:08:38 GMT  
		Size: 34.9 MB (34873231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57edb292f24830075f7c531e42a2db0da291f60982aa02c4693d4829598b7d49`  
		Last Modified: Wed, 23 Jan 2019 14:09:10 GMT  
		Size: 85.9 MB (85921324 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:47dc1bb94e9ae2416acc50cc3c3320e57a281f177d3ee68fcfd5766ee6a88653`  
		Last Modified: Wed, 23 Jan 2019 16:31:16 GMT  
		Size: 5.2 MB (5245598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05a9dde044f39e0c122f12fa2ecb89818a7255df3eead2a52ea08c0528d75112`  
		Last Modified: Wed, 23 Jan 2019 16:31:20 GMT  
		Size: 12.7 MB (12721162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:27c24193527d2dba2c0b6d4c5cad0a76ac768287ba743b912285534a6aa26ca9`  
		Last Modified: Sat, 26 Jan 2019 13:22:05 GMT  
		Size: 1.8 MB (1808528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21e72100c6246917b096516a8ba1647c06a343d482432254c48cfe92cd762b27`  
		Last Modified: Sat, 26 Jan 2019 13:22:05 GMT  
		Size: 3.7 MB (3705563 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-wheezy` - linux; 386

```console
$ docker pull python@sha256:227d4cbfc57445ba66592b303e72f8dc75654b8cb38929eced809464c09e833b
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.3 MB (209303979 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce13554ab24832cac7d1b9e3ad95a67bc2b556b1fc8c639a0566c3f074541bc1`
-	Default Command: `["python2"]`

```dockerfile
# Wed, 23 Jan 2019 11:56:51 GMT
ADD file:6fb64a330e16c04281ff0d182cd3a933035277c01665b4dd09df1edb0e717c6f in / 
# Wed, 23 Jan 2019 11:56:52 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:55:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:55:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:56:05 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:57:21 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 19:41:11 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 19:41:11 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 20:06:23 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 23 Jan 2019 20:06:30 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 20:06:30 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 23 Jan 2019 20:06:30 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 23 Jan 2019 20:08:19 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture -qDEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 26 Jan 2019 13:13:25 GMT
ENV PYTHON_PIP_VERSION=19.0.1
# Sat, 26 Jan 2019 13:13:31 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 26 Jan 2019 13:13:34 GMT
RUN pip install --no-cache-dir virtualenv
# Sat, 26 Jan 2019 13:13:34 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:ee259baed8684a3f7be46aeb2b4e464f70718300b1769fd30c56196bc0ce3050`  
		Last Modified: Wed, 23 Jan 2019 12:04:09 GMT  
		Size: 40.5 MB (40533275 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:af62567d17756a813f0271c47518ca992d3a139ec8557be34a8b4425c6c9c4f5`  
		Last Modified: Wed, 23 Jan 2019 13:13:24 GMT  
		Size: 5.6 MB (5617110 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15a7e394c1dc8f2a185661d5e433a0a8c328fec5b8705923227d0a640e40fa5c`  
		Last Modified: Wed, 23 Jan 2019 13:13:41 GMT  
		Size: 37.1 MB (37050276 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a07e4ee24923e93d10b3f11783e83de78be92e2c1dc871b6cd0fe59dc8a0e166`  
		Last Modified: Wed, 23 Jan 2019 13:14:11 GMT  
		Size: 100.6 MB (100616810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d584d5eb72cd66cf646796b114411f5fff6187b59b37ba5bc9fa45088248aaa2`  
		Last Modified: Wed, 23 Jan 2019 20:12:58 GMT  
		Size: 5.7 MB (5718540 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42534db73650c6d4206b2818b1641c4c6c2373a5147ea97fa2d900d59d6252b3`  
		Last Modified: Wed, 23 Jan 2019 20:13:01 GMT  
		Size: 14.3 MB (14254068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dbb28955bc0dbeeb86b8461e1fe2d985d43adb34ffa57a72991191db559ae45e`  
		Last Modified: Sat, 26 Jan 2019 13:16:49 GMT  
		Size: 1.8 MB (1808369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:04178ba4fd5f254c41008b4a424c70a000ffab75ecd82cdca4dce1c14f83e1b2`  
		Last Modified: Sat, 26 Jan 2019 13:16:49 GMT  
		Size: 3.7 MB (3705531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
