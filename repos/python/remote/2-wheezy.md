## `python:2-wheezy`

```console
$ docker pull python@sha256:d16f12e41608ab2dc146b1965f58c13731a29ec0bfd1a727466705b8312695b7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `python:2-wheezy` - linux; amd64

```console
$ docker pull python@sha256:da718d27388794464bd971187941fafac5f3ffa7a97eaf9f9c1f07ad3bb8ccf2
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.5 MB (208540238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c15c2e94cbcc9e5dc92b19e1dffb71b2421b67ee023fd1d8b8d79d98acef08ef`
-	Default Command: `["python2"]`

```dockerfile
# Thu, 15 Nov 2018 22:48:51 GMT
ADD file:8699192301f1ef9f9128a50c6fbb453bf22dd5451d822d05a034a99c53d93921 in / 
# Thu, 15 Nov 2018 22:49:00 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 11:22:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:22:58 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 11:23:40 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 11:24:54 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 23:05:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 23:05:30 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 23:23:39 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 16 Nov 2018 23:23:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 23:23:50 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 16 Nov 2018 23:23:50 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 16 Nov 2018 23:26:13 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture -qDEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 16 Nov 2018 23:26:13 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 23:26:19 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 23:26:21 GMT
RUN pip install --no-cache-dir virtualenv
# Fri, 16 Nov 2018 23:26:22 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:75eb993070b83359932a9837d457b21b19952ea305d45fc39f2974e9c174022d`  
		Last Modified: Thu, 15 Nov 2018 23:23:05 GMT  
		Size: 39.3 MB (39339731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92b5f8f207d68ec8d6467df75481e5541c92cfa4fe6361520df0edf54287e16`  
		Last Modified: Fri, 16 Nov 2018 11:37:14 GMT  
		Size: 5.6 MB (5630804 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3170ed7e57a0ac0523777136f3ce6321f07bfbd92486c114937fa0f22a92f529`  
		Last Modified: Fri, 16 Nov 2018 11:38:12 GMT  
		Size: 38.0 MB (37960573 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae5dd1365858ae71db1d85f0da1cd675b2da1dd78a1601521f57a2e523ca5796`  
		Last Modified: Fri, 16 Nov 2018 11:39:11 GMT  
		Size: 99.6 MB (99610837 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98396735756d6ef70efee5afed96b5a5f116f77a234b8811c94733e42c26f0aa`  
		Last Modified: Fri, 16 Nov 2018 23:41:02 GMT  
		Size: 5.7 MB (5720477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a592ba80643176b0eb0bdefb83dc666fe55c66a01804f2f012b649210d17927`  
		Last Modified: Fri, 16 Nov 2018 23:41:06 GMT  
		Size: 14.8 MB (14838649 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f9e906a3f68e1fecf64501f0dfff610cd4aed990bbdab597fd9c7ae1c62bf3a1`  
		Last Modified: Fri, 16 Nov 2018 23:41:00 GMT  
		Size: 1.8 MB (1780206 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60f8332690da1b267ab15e18ea9572353a093f21ebc51195b54eb5180182ea34`  
		Last Modified: Fri, 16 Nov 2018 23:41:01 GMT  
		Size: 3.7 MB (3658961 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-wheezy` - linux; arm variant v5

```console
$ docker pull python@sha256:fc25bc8dd488b82a15ce970852517dd859d630fa85b098acdd7efdf45805266c
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.8 MB (192847302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb03fc195ef202fa487a2d60455f7d870bc92cf91b5350eb11f3bbf816865c04`
-	Default Command: `["python2"]`

```dockerfile
# Fri, 16 Nov 2018 10:01:50 GMT
ADD file:7fa32f63a9a6cff48266f7afe3843db8f84995b13663eac5199dd7027bef743c in / 
# Fri, 16 Nov 2018 10:01:51 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:41:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:41:36 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 18:42:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:44:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 21:47:01 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 21:47:02 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 21:59:24 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 16 Nov 2018 21:59:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 21:59:36 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 16 Nov 2018 21:59:36 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 16 Nov 2018 22:02:03 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture -qDEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 16 Nov 2018 22:02:04 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 22:02:14 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 22:02:19 GMT
RUN pip install --no-cache-dir virtualenv
# Fri, 16 Nov 2018 22:02:19 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:f2509498a89240dc1cfe86f8e2bc15366b63a69b5a49e209394999a4297dedde`  
		Last Modified: Fri, 16 Nov 2018 10:16:29 GMT  
		Size: 38.0 MB (37993565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15b541535b0699a8d321a281618a0854b5158af2ca61ab032b66c360a86c3b23`  
		Last Modified: Fri, 16 Nov 2018 18:54:41 GMT  
		Size: 5.5 MB (5474871 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9c13ec111098acb913b84384b682f7c1bcab0b42c5622f4cd0a9ea2678556d0f`  
		Last Modified: Fri, 16 Nov 2018 18:55:29 GMT  
		Size: 35.9 MB (35894389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a419f2694a26ef368410c0f88db2f6de38e46c965f9a7872fa130fce2126b022`  
		Last Modified: Fri, 16 Nov 2018 18:56:28 GMT  
		Size: 89.7 MB (89684300 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75b57f20045696162f5ced247cac45b4ea543e579e430b317f3852d4bd65536c`  
		Last Modified: Fri, 16 Nov 2018 22:08:51 GMT  
		Size: 5.5 MB (5494021 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a3d9e07428949ee383df7bccc5b8948fde342845e1cde215bf876d79a03d962`  
		Last Modified: Fri, 16 Nov 2018 22:08:53 GMT  
		Size: 12.9 MB (12866375 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3f5a62ebb30fadf302622926264ed56f8f600555117413b1f3fd63025db2403`  
		Last Modified: Fri, 16 Nov 2018 22:08:50 GMT  
		Size: 1.8 MB (1780431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dfded2130f89c3608f1fe10facb196a1585a0e9a31a6041d1274703c005d9c90`  
		Last Modified: Fri, 16 Nov 2018 22:08:50 GMT  
		Size: 3.7 MB (3659350 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-wheezy` - linux; arm variant v7

```console
$ docker pull python@sha256:de15dfde952153a131ee5c311219067ed1cc54edccdfe5b38716a7e77975f055
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.0 MB (185963334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f432101aca9e6675b3b07ff604223129a521b606f23316dd3605752a425ec48`
-	Default Command: `["python2"]`

```dockerfile
# Fri, 16 Nov 2018 13:12:20 GMT
ADD file:dfb9a1807e0b40371535a3989eaae9fa4919d4de1416b9c2cdcec3adaf13e53e in / 
# Fri, 16 Nov 2018 13:12:21 GMT
CMD ["bash"]
# Fri, 16 Nov 2018 18:22:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:22:08 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Fri, 16 Nov 2018 18:22:56 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 18:24:28 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:20:22 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 16 Nov 2018 22:20:22 GMT
ENV LANG=C.UTF-8
# Fri, 16 Nov 2018 22:31:41 GMT
ENV PYTHONIOENCODING=UTF-8
# Fri, 16 Nov 2018 22:31:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Fri, 16 Nov 2018 22:31:54 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Fri, 16 Nov 2018 22:31:55 GMT
ENV PYTHON_VERSION=2.7.15
# Fri, 16 Nov 2018 22:34:14 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture -qDEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Fri, 16 Nov 2018 22:34:24 GMT
ENV PYTHON_PIP_VERSION=18.1
# Fri, 16 Nov 2018 22:34:42 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 16 Nov 2018 22:34:46 GMT
RUN pip install --no-cache-dir virtualenv
# Fri, 16 Nov 2018 22:34:47 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:294971fb9750100ae6e2fc4bc1c804489beb76ade829b844b445e8d52d095655`  
		Last Modified: Fri, 16 Nov 2018 13:24:45 GMT  
		Size: 36.6 MB (36620343 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c5dbcd0fa8f23a6f7b0e99bb6881d065d2e29e3cafe52a50f6ab926d59b8375`  
		Last Modified: Fri, 16 Nov 2018 18:34:03 GMT  
		Size: 5.3 MB (5321959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a74a2b6c02d31de42be4f9780b0c856de522d4a8a55d5162815bc0cbbadb9c1`  
		Last Modified: Fri, 16 Nov 2018 18:34:35 GMT  
		Size: 34.9 MB (34872431 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ac0de63c62503329a7c7131be26a27bec3fd224cbe6445a6df2073455ff20a5b`  
		Last Modified: Fri, 16 Nov 2018 18:35:18 GMT  
		Size: 85.7 MB (85742774 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:12826d9b1f87fd92baf7eee4a0bec6255cd95cf90640538013319cbac4cea630`  
		Last Modified: Fri, 16 Nov 2018 22:43:18 GMT  
		Size: 5.2 MB (5244735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f5f061e61124e5f0b210333f164a3d5c34ffbbdab3bdfe1cfa5919e1a5508b8`  
		Last Modified: Fri, 16 Nov 2018 22:43:20 GMT  
		Size: 12.7 MB (12721306 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61972a7f82a5ba0633ce5cad77e3010c30ceceee79ade696b8b6057c9b424d8a`  
		Last Modified: Fri, 16 Nov 2018 22:43:17 GMT  
		Size: 1.8 MB (1780435 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b559454371a7e94a50f105bed139893dcd2cfd8db4d09aeea2caffe9da8da048`  
		Last Modified: Fri, 16 Nov 2018 22:43:17 GMT  
		Size: 3.7 MB (3659351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-wheezy` - linux; 386

```console
$ docker pull python@sha256:bb570c7715beb37e28fae4057dd618f3b2638ea2f2e612ae5015a73b8dab1433
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.0 MB (209046955 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7cea07bc7540c666705cdcc70eda3ab5cb3039f7b9ea27a86570b110587180f`
-	Default Command: `["python2"]`

```dockerfile
# Fri, 16 Nov 2018 12:41:12 GMT
ADD file:3c653db51faa2568117b6077dcf18945db344868dc13507aa8a680d1e9c7fb07 in / 
# Fri, 16 Nov 2018 12:41:12 GMT
CMD ["bash"]
# Sat, 17 Nov 2018 11:31:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 11:31:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 17 Nov 2018 11:32:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 11:34:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 23:42:24 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Nov 2018 23:42:25 GMT
ENV LANG=C.UTF-8
# Sat, 17 Nov 2018 23:50:36 GMT
ENV PYTHONIOENCODING=UTF-8
# Sat, 17 Nov 2018 23:50:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 17 Nov 2018 23:50:44 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Sat, 17 Nov 2018 23:50:44 GMT
ENV PYTHON_VERSION=2.7.15
# Sat, 17 Nov 2018 23:52:27 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture -qDEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 17 Nov 2018 23:52:27 GMT
ENV PYTHON_PIP_VERSION=18.1
# Sat, 17 Nov 2018 23:52:33 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 17 Nov 2018 23:52:35 GMT
RUN pip install --no-cache-dir virtualenv
# Sat, 17 Nov 2018 23:52:35 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:f0d5412c133d7c088c460e2ef3bf665756e2dbbc6a398ce0ce3bcc2e94e757ab`  
		Last Modified: Thu, 15 Nov 2018 02:07:34 GMT  
		Size: 40.5 MB (40532790 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ab244a3de6773ced8cdd912ad951766f806772ad7c61d45f3a660e40c8f4b8d5`  
		Last Modified: Sat, 17 Nov 2018 11:55:54 GMT  
		Size: 5.6 MB (5617160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ecc123b28f1e3fa56b36b5799d9d1a91b3b71e35545a5bf31c4f154f041a0757`  
		Last Modified: Sat, 17 Nov 2018 11:57:08 GMT  
		Size: 37.1 MB (37050412 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1879312d7dac11aef1680cb5c733200a6e9477069ba9a175b6043b0d2906fe94`  
		Last Modified: Sat, 17 Nov 2018 11:58:40 GMT  
		Size: 100.4 MB (100435273 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cf1521357119fbf5902c3233763882e455331c31b0834ca4bbff36998554d8ce`  
		Last Modified: Sat, 17 Nov 2018 23:59:48 GMT  
		Size: 5.7 MB (5717727 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2feeeb7ef980359d116aae0a7bd139f5f03f83e0fe51731bdda07f777eea73db`  
		Last Modified: Sat, 17 Nov 2018 23:59:50 GMT  
		Size: 14.3 MB (14254119 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e192f6fdaec7babd7c148cabec48725b3857a4df6e29f563354bc49df811d6b`  
		Last Modified: Sat, 17 Nov 2018 23:59:47 GMT  
		Size: 1.8 MB (1780224 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:285920c20013f4365c147451ee683017b491abefe1bc700b5bbd8b66b0f34a46`  
		Last Modified: Sat, 17 Nov 2018 23:59:47 GMT  
		Size: 3.7 MB (3659250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
