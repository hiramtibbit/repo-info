## `python:2-wheezy`

```console
$ docker pull python@sha256:c60c2066d0ceb9359a516f7f714c80edfae4b6d281116d1a3ee29bf642364412
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `python:2-wheezy` - linux; amd64

```console
$ docker pull python@sha256:d8ad405f434b2829a3f4584447cfd73695b3c32667726ef96e93f30d613c3140
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.3 MB (207294668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97c84fc76b31a97036e1ef2014335814e5e176ed9d7688d34c9e598817dee676`
-	Default Command: `["python2"]`

```dockerfile
# Sat, 28 Apr 2018 07:36:32 GMT
ADD file:344df33141429b2c1c775197ce8c8d620acc38617d2a66ce04d81fb4dc6a7a0e in / 
# Sat, 28 Apr 2018 07:36:33 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 17:52:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 17:52:09 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 18:06:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 18:20:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 01 May 2018 23:20:20 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 May 2018 23:20:20 GMT
ENV LANG=C.UTF-8
# Tue, 01 May 2018 23:59:53 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 02 May 2018 00:00:01 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 02 May 2018 00:00:02 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 02 May 2018 00:00:02 GMT
ENV PYTHON_VERSION=2.7.14
# Wed, 02 May 2018 00:01:33 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture -qDEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Wed, 02 May 2018 00:01:34 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Wed, 02 May 2018 00:01:40 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 02 May 2018 00:01:42 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 02 May 2018 00:01:42 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:fbb9e26f3a43e50b0cb6e1d3ece41f31ed4547f268081650b06c636dec569819`  
		Last Modified: Sat, 28 Apr 2018 10:02:44 GMT  
		Size: 39.3 MB (39339142 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:951d774a35b761f9ee8098f89126af5e620bc2d757dbdd0240c811459ce46c5c`  
		Last Modified: Sat, 28 Apr 2018 21:21:16 GMT  
		Size: 5.6 MB (5632085 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ee9f734635997f1951e0e214fe69eabf0932fd2cc3467354d41eda74cdcf66b6`  
		Last Modified: Sat, 28 Apr 2018 21:22:15 GMT  
		Size: 38.0 MB (37959735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1af287210ca07e9c0adcac2287b07545e3b3ec395851c66f73851fd7e4e7f0c5`  
		Last Modified: Sat, 28 Apr 2018 21:30:10 GMT  
		Size: 99.6 MB (99599355 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e86b8cd1ef8704536ddf1bfc2260905ee0ed744cf21abe7ddf6b92b6c976fd97`  
		Last Modified: Wed, 02 May 2018 02:44:35 GMT  
		Size: 3.5 MB (3472002 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc98d7e9d36bc4f6afebe696e60cd3a42417a2838095568b5e87a71dfb2152a6`  
		Last Modified: Wed, 02 May 2018 02:44:38 GMT  
		Size: 15.2 MB (15183548 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:be4325d4e373b94fc6f37b27a3ff303dd37699e8e434320554655969586f619a`  
		Last Modified: Wed, 02 May 2018 02:44:34 GMT  
		Size: 1.8 MB (1783596 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:772e89cbdf6d359e30620cbb1b3d8009432611fa1311e3638b56a508f0caebde`  
		Last Modified: Wed, 02 May 2018 02:44:34 GMT  
		Size: 4.3 MB (4325205 bytes)  
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
$ docker pull python@sha256:c7ab8729a92cda5c04e5d00ec13a56534b6dcea80315983308d35aee7e233004
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.0 MB (184968499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21784ab578dc7818310571c9fde1a9cb9c6e115539c43ec5fd05043641c470fd`
-	Default Command: `["python2"]`

```dockerfile
# Sat, 28 Apr 2018 12:07:34 GMT
ADD file:5a45a86b5b17c03113098c8a7a1ee7ebc9c02afa3e33bd3d852c28b6e261697a in / 
# Sat, 28 Apr 2018 12:07:34 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:49:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:50:02 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 12:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:53:21 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 14:55:28 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 14:55:28 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 15:15:10 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 28 Apr 2018 15:15:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 15:15:17 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 28 Apr 2018 15:15:18 GMT
ENV PYTHON_VERSION=2.7.14
# Sat, 28 Apr 2018 15:17:37 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture -qDEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 28 Apr 2018 15:17:37 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 28 Apr 2018 15:17:46 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 28 Apr 2018 15:17:50 GMT
RUN pip install --no-cache-dir virtualenv
# Sat, 28 Apr 2018 15:17:50 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:797f0254107c711da2219d2a3c71bb8815ad9b4e665a165c707561344f88a777`  
		Last Modified: Sat, 28 Apr 2018 12:18:06 GMT  
		Size: 36.6 MB (36620143 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dcbddbbaf331c5cd4c7b0ea190608ccade0c17649efedb47464de50472a4c94b`  
		Last Modified: Sat, 28 Apr 2018 13:11:08 GMT  
		Size: 5.3 MB (5323244 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f294e7d3bd89552f6e34d58e55638d1468f3ccef1d0be25c2b03d58675f2de3`  
		Last Modified: Sat, 28 Apr 2018 13:11:44 GMT  
		Size: 34.9 MB (34871034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d3d4b01c56bcc0544d892a96272be36a4fb9e2b25c9b8c41949bb6222694f9f7`  
		Last Modified: Sat, 28 Apr 2018 13:12:24 GMT  
		Size: 85.7 MB (85725379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d966f88dbee546551436e87bc4a58379c91812ab988eaeaf603010d28b580d4b`  
		Last Modified: Sat, 28 Apr 2018 15:30:22 GMT  
		Size: 3.3 MB (3252450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d3aa54ba15d0148fbbd55378d3e6884bc3ebfcbb3470a91becb9da7888f7e14`  
		Last Modified: Sat, 28 Apr 2018 15:30:25 GMT  
		Size: 13.1 MB (13066797 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cafcde029ec4bf79a72d0d87e5444bd4f37168aa64776d4be5f4ad2f0bc35515`  
		Last Modified: Sat, 28 Apr 2018 15:30:22 GMT  
		Size: 1.8 MB (1783798 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ea94a792eb98e80da305f0d75c02d6a08282569c5a05e42b6a3905a76e053fff`  
		Last Modified: Sat, 28 Apr 2018 15:30:22 GMT  
		Size: 4.3 MB (4325654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-wheezy` - linux; 386

```console
$ docker pull python@sha256:13177448572941d54c275252a1a17eb7ccf3c12f0df1dea83a0fd381ec8622dc
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.8 MB (207798704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02106d0dce980909101d894af56d456531377f2dabf9de50ad5676c2ef5ae80f`
-	Default Command: `["python2"]`

```dockerfile
# Sat, 28 Apr 2018 10:42:43 GMT
ADD file:46c1e0ad2476e944db1cd766469ee6c1f4bcef29abf00562395dea73d0a9c282 in / 
# Sat, 28 Apr 2018 10:42:43 GMT
CMD ["bash"]
# Sat, 28 Apr 2018 12:22:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:22:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 28 Apr 2018 12:23:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 12:24:20 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 19:03:16 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 28 Apr 2018 19:03:16 GMT
ENV LANG=C.UTF-8
# Sat, 28 Apr 2018 19:17:54 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 28 Apr 2018 19:18:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Sat, 28 Apr 2018 19:18:03 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 28 Apr 2018 19:18:03 GMT
ENV PYTHON_VERSION=2.7.14
# Sat, 28 Apr 2018 19:19:42 GMT
RUN set -ex 	&& buildDeps=' 		dpkg-dev 		tcl-dev 		tk-dev 	' 	&& apt-get update && apt-get install -y $buildDeps --no-install-recommends && rm -rf /var/lib/apt/lists/* 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture -qDEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& apt-get purge -y --auto-remove $buildDeps 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python
# Sat, 28 Apr 2018 19:19:42 GMT
ENV PYTHON_PIP_VERSION=10.0.1
# Sat, 28 Apr 2018 19:19:47 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 28 Apr 2018 19:19:49 GMT
RUN pip install --no-cache-dir virtualenv
# Sat, 28 Apr 2018 19:19:49 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:06ea38c8ea05c1dd3cdd1bec6729595bee93baafa39d15ae21be62c9ed53f40a`  
		Last Modified: Sat, 28 Apr 2018 10:51:33 GMT  
		Size: 40.5 MB (40532120 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e3cb17e559c7c9eadcee85fdd25d7aa19613e943a78e3a6ded33f5e527fb6220`  
		Last Modified: Sat, 28 Apr 2018 12:49:55 GMT  
		Size: 5.6 MB (5619449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a662e61da0c6d9b18ce3ff7c98dea1bda06d42e89e5af284f0207490fc4fdbe8`  
		Last Modified: Sat, 28 Apr 2018 12:50:23 GMT  
		Size: 37.0 MB (37048145 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e49651c7016239769b822022dd62e4d1b8580bb3fbda29f4e1a8c4f8eca0a1c5`  
		Last Modified: Sat, 28 Apr 2018 12:51:07 GMT  
		Size: 100.4 MB (100421214 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38fd8e6e31875dddf0a82c1489bbf250022eb2b1d279773992ae2baf2d82e99a`  
		Last Modified: Sat, 28 Apr 2018 19:28:26 GMT  
		Size: 3.5 MB (3473296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb8b56e6d30676a87ee1eab37448d10d7aa33af76deebd8d38541f8ca0747cab`  
		Last Modified: Sat, 28 Apr 2018 19:28:29 GMT  
		Size: 14.6 MB (14595497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7bee237b16e08a641910b5bd0b38cd51f6b89cb64a09265b6e6cf6f8dfd3c9ed`  
		Last Modified: Sat, 28 Apr 2018 19:28:26 GMT  
		Size: 1.8 MB (1783590 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b24eaba797e3adc1e96dd61b7ef8122f6c40472696e44d63cf32ab3affedfdc8`  
		Last Modified: Sat, 28 Apr 2018 19:28:26 GMT  
		Size: 4.3 MB (4325393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
