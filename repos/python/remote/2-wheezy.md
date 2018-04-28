## `python:2-wheezy`

```console
$ docker pull python@sha256:2f5347f757308c2f5450a4673ef710ba45872a04b4e42a4253265c39c9df22d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `python:2-wheezy` - linux; amd64

```console
$ docker pull python@sha256:6b27f8703dd1c70565f8e17fae062c2055f09e2ab9cf4d088d51896f5ab6cb5f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.4 MB (207402142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76b9459fff68c3f9ca88786189936fda5d3138662e390e4f1278e6649dfb392f`
-	Default Command: `["python2"]`

```dockerfile
# Tue, 13 Mar 2018 22:31:05 GMT
ADD file:fc9ba15f087e646a9d3b72e742eb1233132a118ecfa998e2497b724f3ff84061 in / 
# Tue, 13 Mar 2018 22:31:06 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 00:09:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 00:09:39 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 00:17:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 00:18:17 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 18:12:51 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 18:12:51 GMT
ENV LANG=C.UTF-8
# Fri, 27 Apr 2018 09:42:52 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 27 Apr 2018 09:43:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 09:43:05 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 27 Apr 2018 09:43:05 GMT
ENV PYTHON_VERSION=2.7.14
# Fri, 27 Apr 2018 09:44:38 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture -qDEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Fri, 27 Apr 2018 09:44:38 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Fri, 27 Apr 2018 09:44:42 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 27 Apr 2018 09:44:44 GMT
RUN pip install --no-cache-dir virtualenv
# Fri, 27 Apr 2018 09:44:45 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:4269eaa217cc08668f088a9719d43c993c4644a73eda4eb55921f031a4311060`  
		Last Modified: Tue, 13 Mar 2018 22:58:14 GMT  
		Size: 38.1 MB (38111490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e5e3abccec87d1665b2b7a65c3fd2b53a5cf4e73e808cea60407e89a3f1359b`  
		Last Modified: Wed, 14 Mar 2018 00:52:07 GMT  
		Size: 6.9 MB (6946294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:21d8a86572779f0439d6370a912d951dc8cb6592562a873a92ee60e256fa35c1`  
		Last Modified: Wed, 14 Mar 2018 00:58:07 GMT  
		Size: 38.0 MB (37961591 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5d4090146af16defc92c42c3d10655739d13fc684fa34e586588690c6c3dca28`  
		Last Modified: Wed, 14 Mar 2018 01:07:16 GMT  
		Size: 99.6 MB (99615756 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6f192164505b6dfd1ba778b4ec8bb3e573f1fbb13f37f5ec0ca9b9c7725e8e3c`  
		Last Modified: Fri, 27 Apr 2018 11:10:43 GMT  
		Size: 3.5 MB (3472794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3151799a6d9bd60107d6277a5e747f8316d2407045194cfa383bb6d8137918a`  
		Last Modified: Fri, 27 Apr 2018 11:10:46 GMT  
		Size: 15.2 MB (15184363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05c6a3f3ff2dac21fc3c9d48fb87f561d8513f70862eaa8bc95c296ddbd533a3`  
		Last Modified: Fri, 27 Apr 2018 11:10:42 GMT  
		Size: 1.8 MB (1784833 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f856e27dffc2f27c90557aa1e15527a2ce36af8e816032e3d8d389b3a3a5b6d`  
		Last Modified: Fri, 27 Apr 2018 11:10:43 GMT  
		Size: 4.3 MB (4325021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-wheezy` - linux; arm variant v5

```console
$ docker pull python@sha256:79b35e1b503de52f6d7e4d1b53d4901fad70e60f52dddc0e7045ddb02e609a36
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.7 MB (191709122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:05289d29ae598a9d30fb0d993c91865c5da1960cddd9a8887f03a690ee035ff9`
-	Default Command: `["python2"]`

```dockerfile
# Sat, 28 Apr 2018 08:55:07 GMT
ADD file:f14c9bf141bd73b0d286332a29b3c4fa49008071a0fda1f875d7e19ada3513d1 in / 
# Sat, 28 Apr 2018 08:55:07 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 09:34:24 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:34:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 09:35:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 09:36:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:34:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 11:34:01 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 11:54:40 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 28 Apr 2018 11:54:48 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 11:54:48 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 28 Apr 2018 11:54:48 GMT
ENV PYTHON_VERSION=2.7.14
# Sat, 28 Apr 2018 11:57:14 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture -qDEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 28 Apr 2018 11:57:14 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 28 Apr 2018 11:57:24 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 28 Apr 2018 11:57:28 GMT
RUN pip install --no-cache-dir virtualenv
# Sat, 28 Apr 2018 11:57:29 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:bce7db7e77372ce5131c53a5f46570bad58af7c504ef2aff30a102963cc0e28f`  
		Last Modified: Sat, 28 Apr 2018 09:04:20 GMT  
		Size: 38.0 MB (37992896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76e56abcdbdb80f5c5f51eaf783994835f3876b15ba46b018e4d4f16625b8e7e`  
		Last Modified: Sat, 28 Apr 2018 09:44:04 GMT  
		Size: 5.5 MB (5476750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:55ef24159432ce63f19f4521578f8d74f8546b40c787f57373537588032ce3ba`  
		Last Modified: Sat, 28 Apr 2018 09:44:33 GMT  
		Size: 35.9 MB (35893101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1995ea8d07e78f28893fbb931505ac786465c20b0b535d9bc0c9e70c2f9e19da`  
		Last Modified: Sat, 28 Apr 2018 09:45:15 GMT  
		Size: 89.7 MB (89670817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:229aa3ff1fe75909a7cab9d24e5fd432708e0bb031e0271c4136f118a1e563ab`  
		Last Modified: Sat, 28 Apr 2018 12:07:33 GMT  
		Size: 3.3 MB (3349654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5650ad7c3c20fd38ff54672735dab912d80021b84432505a8938b42ad4df4a0f`  
		Last Modified: Sat, 28 Apr 2018 12:07:37 GMT  
		Size: 13.2 MB (13216440 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce42798ebb2083431b3e6d693ca180d54c956df68f7e56ccbffa953925298e6c`  
		Last Modified: Sat, 28 Apr 2018 12:07:35 GMT  
		Size: 1.8 MB (1783776 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a66d14b39b1b68e976648381ad72e74a730ab99cc3e338403f5c0b3e3fce1068`  
		Last Modified: Sat, 28 Apr 2018 12:07:34 GMT  
		Size: 4.3 MB (4325688 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-wheezy` - linux; arm variant v7

```console
$ docker pull python@sha256:91b35510ec111d56ea64f0658d7907b27fe51591ae49f18e2f83fb39e5bfe592
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.1 MB (185079626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7e7782f461b8ed6b45daf7094fefefdb3fcb20d7270306713eef14859ee1e70`
-	Default Command: `["python2"]`

```dockerfile
# Wed, 14 Mar 2018 12:35:41 GMT
ADD file:ea4bfcd96c3bd6a1a47a17ab35e33799b93ff57ff9bb2c44284fc54d63b51234 in / 
# Wed, 14 Mar 2018 12:35:41 GMT
CMD ["bash"]
# Wed, 14 Mar 2018 13:22:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:22:29 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 14 Mar 2018 13:23:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 13:24:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 14 Mar 2018 15:30:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 14 Mar 2018 15:30:05 GMT
ENV LANG=C.UTF-8
# Fri, 27 Apr 2018 12:39:43 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 27 Apr 2018 12:39:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 12:39:54 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 27 Apr 2018 12:39:54 GMT
ENV PYTHON_VERSION=2.7.14
# Fri, 27 Apr 2018 12:42:11 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture -qDEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Fri, 27 Apr 2018 12:42:13 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Fri, 27 Apr 2018 12:42:22 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 27 Apr 2018 12:42:30 GMT
RUN pip install --no-cache-dir virtualenv
# Fri, 27 Apr 2018 12:42:33 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:bfc8f8e5a275b7e0bf9f677a7d237447e73a3145fecb7ae7f6c0c4ee73bc284c`  
		Last Modified: Wed, 14 Mar 2018 12:47:39 GMT  
		Size: 35.7 MB (35662536 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5071a15ce20e8fbc132b7ad0ab056ae34c101c1dfaed3006e7eb6e78c234a66e`  
		Last Modified: Wed, 14 Mar 2018 13:32:36 GMT  
		Size: 6.4 MB (6371895 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:85ad47a318a5615ce757b7c8daa1f098cb07d534976866b29e76eba0a44c9bae`  
		Last Modified: Wed, 14 Mar 2018 13:33:02 GMT  
		Size: 34.9 MB (34869355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e830b706b38dcf8ed252608a36b5160bacb0d55b3490ffa4686cfbc393e840b4`  
		Last Modified: Wed, 14 Mar 2018 13:33:35 GMT  
		Size: 85.7 MB (85744043 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7adeaf7fb7745bcb3d97484f3192ffe790e58ff7b062f65ce1750e83db07adf3`  
		Last Modified: Fri, 27 Apr 2018 12:46:53 GMT  
		Size: 3.3 MB (3253193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:725215df457a439c0bc2faea1cdda1626facdb4ee6a32c2df6bcbfb2c87477fd`  
		Last Modified: Fri, 27 Apr 2018 12:46:56 GMT  
		Size: 13.1 MB (13067964 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac644309de9a4c72bd81e3a196f93b25078c18aff432533ff527a32dc8b601f`  
		Last Modified: Fri, 27 Apr 2018 12:46:52 GMT  
		Size: 1.8 MB (1784995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4a4f2e825627c1ca57d220ace86f9d94254b61025f2b982c71887d6621866f80`  
		Last Modified: Fri, 27 Apr 2018 12:46:53 GMT  
		Size: 4.3 MB (4325645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-wheezy` - linux; 386

```console
$ docker pull python@sha256:17ef33165836e5de192f01c17299a75a637d3be6180a7e5952e9989a3e0d5b4a
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.9 MB (207904994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:00bd63b834687e6eebd3bf12dcef33d1fcbaeebdc54c8877c99ee6ac9fb9f853`
-	Default Command: `["python2"]`

```dockerfile
# Tue, 27 Mar 2018 16:47:22 GMT
ADD file:f0c71075c423e62807de9c20f681b444f33a6004df3e1253ffd82fce1354b945 in / 
# Tue, 27 Mar 2018 16:47:23 GMT
CMD ["bash"]
# Fri, 13 Apr 2018 22:18:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:18:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 13 Apr 2018 22:19:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 13 Apr 2018 22:20:19 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 14 Apr 2018 01:06:06 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 14 Apr 2018 01:06:06 GMT
ENV LANG=C.UTF-8
# Fri, 27 Apr 2018 11:33:31 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 27 Apr 2018 11:33:46 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Fri, 27 Apr 2018 11:33:46 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 27 Apr 2018 11:33:46 GMT
ENV PYTHON_VERSION=2.7.14
# Fri, 27 Apr 2018 11:35:28 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture -qDEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Fri, 27 Apr 2018 11:35:28 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Fri, 27 Apr 2018 11:35:33 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 27 Apr 2018 11:35:35 GMT
RUN pip install --no-cache-dir virtualenv
# Fri, 27 Apr 2018 11:35:36 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:d54bd45717ea57850c8c560d8a60560da144e91a151c5bdbafda94cd591959e9`  
		Last Modified: Thu, 15 Mar 2018 01:42:03 GMT  
		Size: 37.4 MB (37440725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fcb0f6345ed71f3534fbe8d6a2bb94dca5bc8cc92de43213d4d6030f8614696b`  
		Last Modified: Fri, 13 Apr 2018 22:35:13 GMT  
		Size: 8.8 MB (8801531 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d65e81999a32f10576b8935a41dc5f3218f6b3d050d0a3c4da931bf5f5166a32`  
		Last Modified: Fri, 13 Apr 2018 22:35:39 GMT  
		Size: 37.0 MB (37049355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32ecedbff0b032574b8c894d43d983ca169c17c069583e24534aa830a33994d9`  
		Last Modified: Fri, 13 Apr 2018 22:36:18 GMT  
		Size: 100.4 MB (100432896 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4177fbc8da35a18329ac4d2973b3c080b230ee3250cea2b55eb1561dd10c12e8`  
		Last Modified: Fri, 27 Apr 2018 11:43:38 GMT  
		Size: 3.5 MB (3473966 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c450892ca5e6fab9ca1a25b0aaf5d26e18009d08ba287cd6c3fbea78c92508dd`  
		Last Modified: Fri, 27 Apr 2018 11:43:42 GMT  
		Size: 14.6 MB (14596289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:672cdaacce6a4df11a77ac29c259ab242a1acb8ea3e19fc4729451d391cad6ec`  
		Last Modified: Fri, 27 Apr 2018 11:43:37 GMT  
		Size: 1.8 MB (1784840 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3fee4bcf76766159aae0b70e3cad151e62cda888649eb45c218855d85e36717f`  
		Last Modified: Fri, 27 Apr 2018 11:43:38 GMT  
		Size: 4.3 MB (4325392 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
