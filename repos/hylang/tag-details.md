<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `hylang`

-	[`hylang:0`](#hylang0)
-	[`hylang:0.13`](#hylang013)
-	[`hylang:0.13.1`](#hylang0131)
-	[`hylang:latest`](#hylanglatest)

## `hylang:0`

```console
$ docker pull hylang@sha256:a7544769a59dd651019ed4146f565a927b6076528830d6d352fd1cce5617fb5c
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

### `hylang:0` - linux; amd64

```console
$ docker pull hylang@sha256:8f2f46c9db4c13df1ca595d845f0623b7a94c1b113f8b4b861e1a14fc2b03029
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.2 MB (364192946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6019a7132a9cb83f430174b2b3ff50568ca4ab60a42bbe577c48a04626aa8d3`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 05:51:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 01:39:52 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 05:34:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 02 Mar 2019 05:34:37 GMT
ENV LANG=C.UTF-8
# Sat, 02 Mar 2019 05:34:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 05:39:34 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Sat, 02 Mar 2019 05:39:34 GMT
ENV PYTHON_VERSION=3.7.2
# Sat, 02 Mar 2019 05:43:43 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Sat, 02 Mar 2019 05:43:44 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 02 Mar 2019 05:43:44 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Sat, 02 Mar 2019 05:43:53 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 02 Mar 2019 05:43:53 GMT
CMD ["python3"]
# Sat, 02 Mar 2019 06:54:56 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Sat, 02 Mar 2019 06:54:56 GMT
ADD dir:a05a45ee9f2f6abd81608e27a8160f322fc7835a3647d93b6cd365a9e58a0b3a in /opt/hylang/hy 
# Sat, 02 Mar 2019 06:55:01 GMT
RUN pip3 install -e /opt/hylang/hy
# Sat, 02 Mar 2019 06:55:01 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d8874714d74b636739b8a52204650a664fca8ff9741dd66810f30196f103e2`  
		Last Modified: Wed, 06 Feb 2019 06:01:57 GMT  
		Size: 10.8 MB (10781099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a108aa2667933b852b8d003f97b344d014fcd7e06a0c0e6e04f2d6906738388`  
		Last Modified: Wed, 06 Feb 2019 06:01:56 GMT  
		Size: 4.3 MB (4340044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0334c36886bd4619e8d05ccf68003e53b0b6098b2166a216bd009dba678ed8`  
		Last Modified: Wed, 06 Feb 2019 06:02:14 GMT  
		Size: 50.1 MB (50063121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ea0d2b5c483667ad1bd27c524d3c0921c7634db0a1a7d3eb81d471a4247c8f`  
		Last Modified: Sat, 02 Mar 2019 01:53:08 GMT  
		Size: 220.6 MB (220604502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70a6aa0163be1f311c0caffd6ecb1fd6314c9bd6a61291623581af536c0cad0`  
		Last Modified: Sat, 02 Mar 2019 06:10:42 GMT  
		Size: 5.8 MB (5834507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9b78e41a03bcaac54d721043dff1b0fe8bd717842c0477215dcfe120ba87af`  
		Last Modified: Sat, 02 Mar 2019 06:11:01 GMT  
		Size: 22.4 MB (22432466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9b4c0fa8a2b29fb1b17b41749a374412c53fc06d0e82dfda950702d1c7eba2`  
		Last Modified: Sat, 02 Mar 2019 06:10:54 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55a3146e26179f6a0249ae4508923aaedd57051064dde6b472fde412f05f74b`  
		Last Modified: Sat, 02 Mar 2019 06:10:55 GMT  
		Size: 1.8 MB (1813246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:267f744bd7a14d4482146bec923a8cf698c2d30aa3a757688c29831705a5c764`  
		Last Modified: Sat, 02 Mar 2019 06:55:08 GMT  
		Size: 385.5 KB (385508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa9e103fc9029052b31546d87e3f476fee5d1a9f210ce6d1566489ad038338b`  
		Last Modified: Sat, 02 Mar 2019 06:55:08 GMT  
		Size: 2.6 MB (2593918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0` - linux; arm variant v5

```console
$ docker pull hylang@sha256:d85fa971f521f5d76a7612a3b7b7db0256c2489b055e17b001c455dbc29f5414
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.8 MB (345801692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdd0894b6754676acacd1821002e4155d7eed280ba551cf8341afcc329afabf4`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 06 Feb 2019 09:55:21 GMT
ADD file:cde688211f1222c7310b330ab44ca3a7040b0f81757aa06eb186f342f9002e9e in / 
# Wed, 06 Feb 2019 09:55:23 GMT
CMD ["bash"]
# Sat, 02 Mar 2019 09:58:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 09:58:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 02 Mar 2019 09:59:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 10:01:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 10:26:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 02 Mar 2019 10:26:05 GMT
ENV LANG=C.UTF-8
# Sat, 02 Mar 2019 10:26:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 10:30:39 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Sat, 02 Mar 2019 10:30:40 GMT
ENV PYTHON_VERSION=3.7.2
# Sat, 02 Mar 2019 10:34:16 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Sat, 02 Mar 2019 10:34:18 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 02 Mar 2019 10:34:18 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Sat, 02 Mar 2019 10:34:28 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 02 Mar 2019 10:34:29 GMT
CMD ["python3"]
# Sat, 02 Mar 2019 11:44:09 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Sat, 02 Mar 2019 11:44:09 GMT
ADD dir:a05a45ee9f2f6abd81608e27a8160f322fc7835a3647d93b6cd365a9e58a0b3a in /opt/hylang/hy 
# Sat, 02 Mar 2019 11:44:18 GMT
RUN pip3 install -e /opt/hylang/hy
# Sat, 02 Mar 2019 11:44:19 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:64cbc7a69a80c9845c477fed607dbdc662a2e90c861ea5e3ede337e672e7235a`  
		Last Modified: Wed, 06 Feb 2019 10:03:29 GMT  
		Size: 44.1 MB (44050880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4134cc1b13a896b7996124760d484efd7aecc2c58a704688b99722f4ddd6fb`  
		Last Modified: Sat, 02 Mar 2019 10:08:11 GMT  
		Size: 9.9 MB (9851916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26306a44df68f962e0c10b777285eb2942cbaa049ba33077bb17925e8a7749ba`  
		Last Modified: Sat, 02 Mar 2019 10:08:09 GMT  
		Size: 4.2 MB (4159040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2ab7d0147573c7e612d2583610491c6656ce5e63e0f336f8291aece5a77bffb`  
		Last Modified: Sat, 02 Mar 2019 10:08:34 GMT  
		Size: 48.3 MB (48284855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b286e193d85878391909285726155467f017af3e9d6a3c21d7ba1ec18334a3`  
		Last Modified: Sat, 02 Mar 2019 10:09:39 GMT  
		Size: 207.6 MB (207588650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f862e29d97e14f3eb5fb7351ef966ccf61cd70000aba7d017d8cdadf90b6a76`  
		Last Modified: Sat, 02 Mar 2019 10:55:07 GMT  
		Size: 5.6 MB (5614747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4006747c1d3adf1780c354c09dbd6c2c7e8fb1f9cc50c2a085b94be2923f199`  
		Last Modified: Sat, 02 Mar 2019 10:55:32 GMT  
		Size: 21.5 MB (21458099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa68f50dc6dad6eb59a1b57e75a98c34ce61cc3426660dc85b296456094100b2`  
		Last Modified: Sat, 02 Mar 2019 10:55:22 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb069982894598b607cfbbe36be1037c3eb5a021811c48b258b7a86c3bad9b15`  
		Last Modified: Sat, 02 Mar 2019 10:55:23 GMT  
		Size: 1.8 MB (1813405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d84f6268848220e35693514d4247ee12489b04810e94eadad8e2cc79015fcfc6`  
		Last Modified: Sat, 02 Mar 2019 11:44:29 GMT  
		Size: 385.6 KB (385554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d49699010dde2fea7ec9a7408c41094138a746026d26d919df7c085dc0a71eb`  
		Last Modified: Sat, 02 Mar 2019 11:44:30 GMT  
		Size: 2.6 MB (2594304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0` - linux; arm variant v7

```console
$ docker pull hylang@sha256:89d4cb8aae4335be3b4abee03680e692a4706f7b8550327af89074c082f8c784
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.9 MB (332884705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ccd8c29f22c5202dfc8a4d13355b44e979515cbc3ca4ef82c9c28b27cf88634`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:09 GMT
ADD file:5fd4dfb0a59a763b52fd5588a8f4c35f596b133e00275b1cc485a71cf088b31a in / 
# Thu, 07 Feb 2019 13:03:10 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:37:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 15:38:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 13:15:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 13:45:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 02 Mar 2019 13:45:51 GMT
ENV LANG=C.UTF-8
# Sat, 02 Mar 2019 13:46:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 13:49:54 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Sat, 02 Mar 2019 13:49:55 GMT
ENV PYTHON_VERSION=3.7.2
# Sat, 02 Mar 2019 13:53:14 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Sat, 02 Mar 2019 13:53:16 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 02 Mar 2019 13:53:16 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Sat, 02 Mar 2019 13:53:25 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 02 Mar 2019 13:53:26 GMT
CMD ["python3"]
# Sat, 02 Mar 2019 15:26:41 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Sat, 02 Mar 2019 15:26:42 GMT
ADD dir:a05a45ee9f2f6abd81608e27a8160f322fc7835a3647d93b6cd365a9e58a0b3a in /opt/hylang/hy 
# Sat, 02 Mar 2019 15:26:52 GMT
RUN pip3 install -e /opt/hylang/hy
# Sat, 02 Mar 2019 15:26:52 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:54d7f221ed1ab7644f6a88a953847270cd864b5ebc4f343bfa28876a2715031f`  
		Last Modified: Thu, 07 Feb 2019 02:04:53 GMT  
		Size: 42.1 MB (42086927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fea5bcc599e31c6fb6e38ce89618c27f24be54ed9ac9b53f4fcbed58f9d619d`  
		Last Modified: Thu, 07 Feb 2019 15:52:17 GMT  
		Size: 9.5 MB (9480760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ac22707ead8a14ad6ae745a4c231538e6215c7a702ccad147b5251b3ea66c`  
		Last Modified: Thu, 07 Feb 2019 15:52:16 GMT  
		Size: 3.9 MB (3918458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5565830197f8831e23db2438cc94b7a2c5b37186bfa8adc7d45c22ef585b48`  
		Last Modified: Thu, 07 Feb 2019 15:52:41 GMT  
		Size: 46.4 MB (46384822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5370b94bbf4c92c5666de9cc4fb5cd4adc949efd67022a1741eaf49efcb57ac9`  
		Last Modified: Sat, 02 Mar 2019 13:28:02 GMT  
		Size: 199.9 MB (199862487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58fa75b5c7c8721b25d0cb5861988efccab0d665728c4d9af0c28d61dea160b9`  
		Last Modified: Sat, 02 Mar 2019 14:26:02 GMT  
		Size: 5.3 MB (5280952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010ed9f622e66725bc487655a9d80f7f47edd006a99102f62f980912283d8b2d`  
		Last Modified: Sat, 02 Mar 2019 14:26:24 GMT  
		Size: 21.1 MB (21076564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f39eaf6eda9b8e6f0295f7d7ee97d749ce17b5282ea5345dcd1a5137c44b2ae`  
		Last Modified: Sat, 02 Mar 2019 14:26:16 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a75be0bffc03153df1821e392e94075185668bf0dfc17e39d123cab1d6a607c`  
		Last Modified: Sat, 02 Mar 2019 14:26:17 GMT  
		Size: 1.8 MB (1813397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92e54f396470c7a21e870906682df9f0555ba09399844318c066cacce2e3b43`  
		Last Modified: Sat, 02 Mar 2019 15:27:02 GMT  
		Size: 385.6 KB (385557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14218e5754ba80ebed1ce99b9b25fe57ab7aff6c702f093334d70f6457e82f3e`  
		Last Modified: Sat, 02 Mar 2019 15:27:03 GMT  
		Size: 2.6 MB (2594539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:21d5f0462fd5978dc0b78559460d708a38990eb41597bc29883622410cd1bc76
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.2 MB (339195992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55559ffd17ba6b49c1291e57bd86c4fc4020a70d688069c621b3bda3482051e1`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:38:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 10:39:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:49:31 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 16:40:09 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 16:40:10 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 16:40:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 16:40:39 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 06 Feb 2019 16:40:40 GMT
ENV PYTHON_VERSION=3.7.2
# Wed, 06 Feb 2019 16:46:46 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Wed, 06 Feb 2019 16:46:49 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Fri, 22 Feb 2019 10:43:09 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Fri, 22 Feb 2019 10:43:31 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 22 Feb 2019 10:43:32 GMT
CMD ["python3"]
# Fri, 22 Feb 2019 14:46:33 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Fri, 22 Feb 2019 14:46:34 GMT
ADD dir:a05a45ee9f2f6abd81608e27a8160f322fc7835a3647d93b6cd365a9e58a0b3a in /opt/hylang/hy 
# Fri, 22 Feb 2019 14:46:50 GMT
RUN pip3 install -e /opt/hylang/hy
# Fri, 22 Feb 2019 14:46:51 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:12bb1c82b086301ca1c22eabf3add7cd229f27b63ca4b0924e2356051d9e7194`  
		Last Modified: Wed, 06 Feb 2019 10:14:28 GMT  
		Size: 43.1 MB (43124977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730f6528b47c72f6dd5aabc947e8db01aa470adc3fdb4bbbcf052f9c3ad6ae8e`  
		Last Modified: Wed, 06 Feb 2019 10:52:36 GMT  
		Size: 9.7 MB (9728878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b5f3607713f2dab247e619fafcffd7c9edf4aaffc9e701660a76ccf324b742`  
		Last Modified: Wed, 06 Feb 2019 10:52:28 GMT  
		Size: 4.1 MB (4093098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5001a1d2fe2f54da8dbdfca56862dd05d37d1a2aab69599bcc2a130ea4fcd7f5`  
		Last Modified: Wed, 06 Feb 2019 10:52:48 GMT  
		Size: 48.0 MB (48005411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66d2086edc74aef75bdc93948cfe17fbded92e8ed4f4d39a1ecb70de979bd1f`  
		Last Modified: Wed, 06 Feb 2019 11:21:45 GMT  
		Size: 201.7 MB (201686969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fda9c0b8b760b81baf4d66aa3b703196ecfbb08ff750cd65b973ef8baee3566`  
		Last Modified: Wed, 06 Feb 2019 19:05:42 GMT  
		Size: 5.6 MB (5584112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3292200a059d459acbe0867a2ea41f1d4bddedbb316b1dcffbd46b1bd5746c6`  
		Last Modified: Wed, 06 Feb 2019 19:05:49 GMT  
		Size: 22.2 MB (22178926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8117e30e969e8b0e58009c1dc20caef4978a90ee39769c3d356d9da77b1965e9`  
		Last Modified: Wed, 06 Feb 2019 19:05:39 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1970e586813b7043e6e9f7c240159927cb5e4f4901ba1f38807237eff5884767`  
		Last Modified: Fri, 22 Feb 2019 11:01:06 GMT  
		Size: 1.8 MB (1813181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32eda01c4f79395b3036d07cf62a3776b56c226d6f2a1c6453a8e304c90855bf`  
		Last Modified: Fri, 22 Feb 2019 14:47:04 GMT  
		Size: 385.5 KB (385532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06e7feb07b62f92093890ac2defe8a6f2ac9b7c5c9ccc815228a90e1dc3ae3db`  
		Last Modified: Fri, 22 Feb 2019 14:47:05 GMT  
		Size: 2.6 MB (2594667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0` - linux; 386

```console
$ docker pull hylang@sha256:33e6cae277fcb4310cace45832843a6b7dec13f5425c80fd9a2bbb1756e5ff78
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.3 MB (364348549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a274a6171da5919bbf32f0695c8ebcbca0da510ca5d6a458b4e425c073979f1`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:07 GMT
ADD file:70c26933810136bdb5c394bab98ac1119dd6ab650db410d21a0a16098b8a6ae2 in / 
# Wed, 06 Feb 2019 12:01:08 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:49:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:49:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 01:50:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:52:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 09:27:02 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Feb 2019 09:27:02 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 09:27:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 09:27:13 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 07 Feb 2019 09:27:13 GMT
ENV PYTHON_VERSION=3.7.2
# Thu, 07 Feb 2019 09:29:37 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Thu, 07 Feb 2019 09:29:37 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Fri, 22 Feb 2019 16:07:54 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Fri, 22 Feb 2019 16:08:00 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 22 Feb 2019 16:08:00 GMT
CMD ["python3"]
# Fri, 22 Feb 2019 19:13:20 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Fri, 22 Feb 2019 19:13:20 GMT
ADD dir:a05a45ee9f2f6abd81608e27a8160f322fc7835a3647d93b6cd365a9e58a0b3a in /opt/hylang/hy 
# Fri, 22 Feb 2019 19:13:25 GMT
RUN pip3 install -e /opt/hylang/hy
# Fri, 22 Feb 2019 19:13:25 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:56c1dc1a93dfeb7eb66abd8197c3fdfe7d7393c9757be0a44ca2f624b6e5c684`  
		Last Modified: Wed, 06 Feb 2019 12:07:42 GMT  
		Size: 46.1 MB (46069815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d401cb48eb9dd4b814e64479a4a5e9150a56d439c01778f0b95ff0689f82cd17`  
		Last Modified: Thu, 07 Feb 2019 02:03:03 GMT  
		Size: 10.8 MB (10799008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c068a67acc556d25d2fd2dc13d5929a34ee0395cd208b418f73bf15fc17e0955`  
		Last Modified: Thu, 07 Feb 2019 02:03:02 GMT  
		Size: 4.6 MB (4560874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a009f6fe22ae181ab29d9455c5e577e663191ee6f4a9a0483ab44d91e775d853`  
		Last Modified: Thu, 07 Feb 2019 02:03:23 GMT  
		Size: 51.6 MB (51593479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0353d5e9a3eadb094532d11bc6c475a4e4141ad95ad02670c6c1a0cdda80f22`  
		Last Modified: Thu, 07 Feb 2019 02:04:19 GMT  
		Size: 219.3 MB (219329297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66aad198e48852c332bd9204b77fce0a1f062dae4d092585b3ab178aef67b77d`  
		Last Modified: Thu, 07 Feb 2019 09:58:45 GMT  
		Size: 6.1 MB (6147083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b34f739e39b7b2a24620ee0ff4eba17795ae9dc06a199f110b71206b4b5178`  
		Last Modified: Thu, 07 Feb 2019 09:58:48 GMT  
		Size: 21.1 MB (21055995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51138397ef3c03573ebebceb4ae164d1a002b7a4773d1b6f4a919ef551a176de`  
		Last Modified: Thu, 07 Feb 2019 09:58:43 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89432735648980d91799e53d02a661b63837ed2550d5df7ea51978a6ab88bb95`  
		Last Modified: Fri, 22 Feb 2019 16:33:47 GMT  
		Size: 1.8 MB (1813150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ac1423ce5c46c8669e7f15db3c6f90495ac3dacd156a597394ea67c8e910f9`  
		Last Modified: Fri, 22 Feb 2019 19:13:40 GMT  
		Size: 385.5 KB (385527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c915d22b2635df65dcef134721ec43d132d26dbc1ccd0509e3839d45a2213e`  
		Last Modified: Fri, 22 Feb 2019 19:13:35 GMT  
		Size: 2.6 MB (2594080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0` - linux; ppc64le

```console
$ docker pull hylang@sha256:665ed785486b9b71185b858b099d582e5970a1dbd450b2dd5ed2f03e2516a089
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.3 MB (353293131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04336c61579a002646e055f6e5ab5772b17f4df55a40b82d15a7ccc0d299afff`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:33 GMT
ADD file:dbc825fea111271dd16d8443e8df30f00e4bfb82365f49430e4b697866955e25 in / 
# Wed, 06 Feb 2019 09:26:35 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 19:08:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:08:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 19:10:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:17:48 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 02:34:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Feb 2019 02:34:44 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 02:35:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 02:35:10 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 07 Feb 2019 02:35:13 GMT
ENV PYTHON_VERSION=3.7.2
# Thu, 07 Feb 2019 02:37:59 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Thu, 07 Feb 2019 02:38:03 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Fri, 22 Feb 2019 10:18:35 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Fri, 22 Feb 2019 10:18:52 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 22 Feb 2019 10:18:55 GMT
CMD ["python3"]
# Fri, 22 Feb 2019 12:15:48 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Fri, 22 Feb 2019 12:15:50 GMT
ADD dir:a05a45ee9f2f6abd81608e27a8160f322fc7835a3647d93b6cd365a9e58a0b3a in /opt/hylang/hy 
# Fri, 22 Feb 2019 12:16:05 GMT
RUN pip3 install -e /opt/hylang/hy
# Fri, 22 Feb 2019 12:16:08 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3c6e73e1f3f727588bd1de44f5524879a3591bba13b256a67f0a03adbb788322`  
		Last Modified: Wed, 06 Feb 2019 09:30:55 GMT  
		Size: 45.6 MB (45616945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31cd7008a155452b9ece7c7dab0d6e7567ef8c55f2df5ff999e45c309031982`  
		Last Modified: Wed, 06 Feb 2019 19:28:30 GMT  
		Size: 10.0 MB (9986460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f96c2690a341be01eb7e79a7624948d65549f3a26a1adc1b9a5a669523505ea`  
		Last Modified: Wed, 06 Feb 2019 19:28:28 GMT  
		Size: 4.3 MB (4295659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:809222cf915d3e4f6467ca885b8fd6119aac0d5b2dfc37e9ea338ee407314063`  
		Last Modified: Wed, 06 Feb 2019 19:29:02 GMT  
		Size: 50.1 MB (50065346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee3c546eacd7883001479d8522303bee995c1516b194937c78ccbddb2f6bd0b`  
		Last Modified: Wed, 06 Feb 2019 19:30:16 GMT  
		Size: 209.9 MB (209897599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b017ccc7e8349d626314d8cd74b830963c24416507af5d6a5274ace2f4191e35`  
		Last Modified: Thu, 07 Feb 2019 02:51:38 GMT  
		Size: 5.9 MB (5865637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:384b45aad79958ca5d5e13db89d340dddfc7ef8897940a3f7837f2d173af59e6`  
		Last Modified: Thu, 07 Feb 2019 02:51:43 GMT  
		Size: 22.8 MB (22771369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6e6240a723e13cc0f17d62cea643b6d199c465c03e6a3c7a1040c35d9b99ca`  
		Last Modified: Thu, 07 Feb 2019 02:51:37 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89019e8c726eeb4452db1280273daa1f1197c572c8f7b5795a0433110b06fbf3`  
		Last Modified: Fri, 22 Feb 2019 10:34:11 GMT  
		Size: 1.8 MB (1813462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa5b073b092bb20d07734012cf2c9b9c43d4b1274679084718be0cb93e88cf2`  
		Last Modified: Fri, 22 Feb 2019 12:16:19 GMT  
		Size: 385.6 KB (385550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d371b50405541fc221889d4eec85e65193a28094d1d3fc4a64429e5b968e0895`  
		Last Modified: Fri, 22 Feb 2019 12:16:19 GMT  
		Size: 2.6 MB (2594864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0` - linux; s390x

```console
$ docker pull hylang@sha256:80d7b7081496449d46ed76ae29d1dbcff08b317bb133d886c18321df3934716e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **356.8 MB (356796652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d29fa3b723ed2a09ef763c7e22281d0efa4f25a554568c43fd1fd98801a820a`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 06 Feb 2019 12:43:08 GMT
ADD file:8c452240b3657ec4cc6568239a4d933bc75fd958464a3950f67912097968fff8 in / 
# Wed, 06 Feb 2019 12:43:08 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 15:27:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:27:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 15:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 12:50:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 14:47:52 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 02 Mar 2019 14:47:52 GMT
ENV LANG=C.UTF-8
# Sat, 02 Mar 2019 14:48:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 14:51:38 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Sat, 02 Mar 2019 14:51:38 GMT
ENV PYTHON_VERSION=3.7.2
# Sat, 02 Mar 2019 14:54:31 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Sat, 02 Mar 2019 14:54:32 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 02 Mar 2019 14:54:32 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Sat, 02 Mar 2019 14:54:39 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 02 Mar 2019 14:54:39 GMT
CMD ["python3"]
# Sat, 02 Mar 2019 16:50:40 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Sat, 02 Mar 2019 16:50:40 GMT
ADD dir:a05a45ee9f2f6abd81608e27a8160f322fc7835a3647d93b6cd365a9e58a0b3a in /opt/hylang/hy 
# Sat, 02 Mar 2019 16:50:45 GMT
RUN pip3 install -e /opt/hylang/hy
# Sat, 02 Mar 2019 16:50:45 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:e6786603fdb9e4ea361b73be3870f1118d3882c1619dfbbf9dec4d483fa32e76`  
		Last Modified: Wed, 06 Feb 2019 12:46:43 GMT  
		Size: 45.2 MB (45214898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac487c4bc63f07da92ff3259ca4d0fb30f86c5647f775010d11e6d51131b848`  
		Last Modified: Wed, 06 Feb 2019 15:34:22 GMT  
		Size: 10.3 MB (10312678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3e9925f73763aaae5f9ccd2b0c87ae90efbee12ee8698074a1056e25c2e6360`  
		Last Modified: Wed, 06 Feb 2019 15:34:21 GMT  
		Size: 4.4 MB (4371900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf6b44fbf659d16c99bbf57d1ee87ae0e6827f8aaa82012f87f1f031f655da5`  
		Last Modified: Wed, 06 Feb 2019 15:34:38 GMT  
		Size: 50.5 MB (50487526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e9ddf73c7e98c06ba03cca4c87e276a262aebf65dad84d83cc373cb70a1b95`  
		Last Modified: Sat, 02 Mar 2019 12:54:41 GMT  
		Size: 211.5 MB (211477973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081735651488bf9eee9d619a1a88d4d611b1b86d683685395bbfc3f8dd9f5da1`  
		Last Modified: Sat, 02 Mar 2019 15:07:57 GMT  
		Size: 5.9 MB (5896623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b182e5a0cdc0667518d1717d68098640fa00197a19d16d2a4917f5865abd96`  
		Last Modified: Sat, 02 Mar 2019 15:08:20 GMT  
		Size: 24.2 MB (24242288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af3e91e4308491ed6c57ccf5a137ab60d402f4f84c4e7a92125e8f76ab968ab`  
		Last Modified: Sat, 02 Mar 2019 15:08:13 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4472a111ba9d6e703756152006b88af9b43a9580c3b5d540063675e0d37ef2d5`  
		Last Modified: Sat, 02 Mar 2019 15:08:14 GMT  
		Size: 1.8 MB (1813125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058b7da2b005bda1a71934f49e499a4b6b59e1ecfeb1b4f9abe5efb1704aebcf`  
		Last Modified: Sat, 02 Mar 2019 16:50:55 GMT  
		Size: 385.5 KB (385526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed4caa8ae9f830b42b796d678fabb5f06309726568e2635004b612c31cd2d25`  
		Last Modified: Sat, 02 Mar 2019 16:50:55 GMT  
		Size: 2.6 MB (2593875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `hylang:0.13`

```console
$ docker pull hylang@sha256:a7544769a59dd651019ed4146f565a927b6076528830d6d352fd1cce5617fb5c
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

### `hylang:0.13` - linux; amd64

```console
$ docker pull hylang@sha256:8f2f46c9db4c13df1ca595d845f0623b7a94c1b113f8b4b861e1a14fc2b03029
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.2 MB (364192946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6019a7132a9cb83f430174b2b3ff50568ca4ab60a42bbe577c48a04626aa8d3`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 05:51:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 01:39:52 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 05:34:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 02 Mar 2019 05:34:37 GMT
ENV LANG=C.UTF-8
# Sat, 02 Mar 2019 05:34:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 05:39:34 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Sat, 02 Mar 2019 05:39:34 GMT
ENV PYTHON_VERSION=3.7.2
# Sat, 02 Mar 2019 05:43:43 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Sat, 02 Mar 2019 05:43:44 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 02 Mar 2019 05:43:44 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Sat, 02 Mar 2019 05:43:53 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 02 Mar 2019 05:43:53 GMT
CMD ["python3"]
# Sat, 02 Mar 2019 06:54:56 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Sat, 02 Mar 2019 06:54:56 GMT
ADD dir:a05a45ee9f2f6abd81608e27a8160f322fc7835a3647d93b6cd365a9e58a0b3a in /opt/hylang/hy 
# Sat, 02 Mar 2019 06:55:01 GMT
RUN pip3 install -e /opt/hylang/hy
# Sat, 02 Mar 2019 06:55:01 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d8874714d74b636739b8a52204650a664fca8ff9741dd66810f30196f103e2`  
		Last Modified: Wed, 06 Feb 2019 06:01:57 GMT  
		Size: 10.8 MB (10781099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a108aa2667933b852b8d003f97b344d014fcd7e06a0c0e6e04f2d6906738388`  
		Last Modified: Wed, 06 Feb 2019 06:01:56 GMT  
		Size: 4.3 MB (4340044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0334c36886bd4619e8d05ccf68003e53b0b6098b2166a216bd009dba678ed8`  
		Last Modified: Wed, 06 Feb 2019 06:02:14 GMT  
		Size: 50.1 MB (50063121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ea0d2b5c483667ad1bd27c524d3c0921c7634db0a1a7d3eb81d471a4247c8f`  
		Last Modified: Sat, 02 Mar 2019 01:53:08 GMT  
		Size: 220.6 MB (220604502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70a6aa0163be1f311c0caffd6ecb1fd6314c9bd6a61291623581af536c0cad0`  
		Last Modified: Sat, 02 Mar 2019 06:10:42 GMT  
		Size: 5.8 MB (5834507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9b78e41a03bcaac54d721043dff1b0fe8bd717842c0477215dcfe120ba87af`  
		Last Modified: Sat, 02 Mar 2019 06:11:01 GMT  
		Size: 22.4 MB (22432466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9b4c0fa8a2b29fb1b17b41749a374412c53fc06d0e82dfda950702d1c7eba2`  
		Last Modified: Sat, 02 Mar 2019 06:10:54 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55a3146e26179f6a0249ae4508923aaedd57051064dde6b472fde412f05f74b`  
		Last Modified: Sat, 02 Mar 2019 06:10:55 GMT  
		Size: 1.8 MB (1813246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:267f744bd7a14d4482146bec923a8cf698c2d30aa3a757688c29831705a5c764`  
		Last Modified: Sat, 02 Mar 2019 06:55:08 GMT  
		Size: 385.5 KB (385508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa9e103fc9029052b31546d87e3f476fee5d1a9f210ce6d1566489ad038338b`  
		Last Modified: Sat, 02 Mar 2019 06:55:08 GMT  
		Size: 2.6 MB (2593918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0.13` - linux; arm variant v5

```console
$ docker pull hylang@sha256:d85fa971f521f5d76a7612a3b7b7db0256c2489b055e17b001c455dbc29f5414
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.8 MB (345801692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdd0894b6754676acacd1821002e4155d7eed280ba551cf8341afcc329afabf4`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 06 Feb 2019 09:55:21 GMT
ADD file:cde688211f1222c7310b330ab44ca3a7040b0f81757aa06eb186f342f9002e9e in / 
# Wed, 06 Feb 2019 09:55:23 GMT
CMD ["bash"]
# Sat, 02 Mar 2019 09:58:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 09:58:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 02 Mar 2019 09:59:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 10:01:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 10:26:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 02 Mar 2019 10:26:05 GMT
ENV LANG=C.UTF-8
# Sat, 02 Mar 2019 10:26:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 10:30:39 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Sat, 02 Mar 2019 10:30:40 GMT
ENV PYTHON_VERSION=3.7.2
# Sat, 02 Mar 2019 10:34:16 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Sat, 02 Mar 2019 10:34:18 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 02 Mar 2019 10:34:18 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Sat, 02 Mar 2019 10:34:28 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 02 Mar 2019 10:34:29 GMT
CMD ["python3"]
# Sat, 02 Mar 2019 11:44:09 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Sat, 02 Mar 2019 11:44:09 GMT
ADD dir:a05a45ee9f2f6abd81608e27a8160f322fc7835a3647d93b6cd365a9e58a0b3a in /opt/hylang/hy 
# Sat, 02 Mar 2019 11:44:18 GMT
RUN pip3 install -e /opt/hylang/hy
# Sat, 02 Mar 2019 11:44:19 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:64cbc7a69a80c9845c477fed607dbdc662a2e90c861ea5e3ede337e672e7235a`  
		Last Modified: Wed, 06 Feb 2019 10:03:29 GMT  
		Size: 44.1 MB (44050880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4134cc1b13a896b7996124760d484efd7aecc2c58a704688b99722f4ddd6fb`  
		Last Modified: Sat, 02 Mar 2019 10:08:11 GMT  
		Size: 9.9 MB (9851916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26306a44df68f962e0c10b777285eb2942cbaa049ba33077bb17925e8a7749ba`  
		Last Modified: Sat, 02 Mar 2019 10:08:09 GMT  
		Size: 4.2 MB (4159040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2ab7d0147573c7e612d2583610491c6656ce5e63e0f336f8291aece5a77bffb`  
		Last Modified: Sat, 02 Mar 2019 10:08:34 GMT  
		Size: 48.3 MB (48284855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b286e193d85878391909285726155467f017af3e9d6a3c21d7ba1ec18334a3`  
		Last Modified: Sat, 02 Mar 2019 10:09:39 GMT  
		Size: 207.6 MB (207588650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f862e29d97e14f3eb5fb7351ef966ccf61cd70000aba7d017d8cdadf90b6a76`  
		Last Modified: Sat, 02 Mar 2019 10:55:07 GMT  
		Size: 5.6 MB (5614747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4006747c1d3adf1780c354c09dbd6c2c7e8fb1f9cc50c2a085b94be2923f199`  
		Last Modified: Sat, 02 Mar 2019 10:55:32 GMT  
		Size: 21.5 MB (21458099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa68f50dc6dad6eb59a1b57e75a98c34ce61cc3426660dc85b296456094100b2`  
		Last Modified: Sat, 02 Mar 2019 10:55:22 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb069982894598b607cfbbe36be1037c3eb5a021811c48b258b7a86c3bad9b15`  
		Last Modified: Sat, 02 Mar 2019 10:55:23 GMT  
		Size: 1.8 MB (1813405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d84f6268848220e35693514d4247ee12489b04810e94eadad8e2cc79015fcfc6`  
		Last Modified: Sat, 02 Mar 2019 11:44:29 GMT  
		Size: 385.6 KB (385554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d49699010dde2fea7ec9a7408c41094138a746026d26d919df7c085dc0a71eb`  
		Last Modified: Sat, 02 Mar 2019 11:44:30 GMT  
		Size: 2.6 MB (2594304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0.13` - linux; arm variant v7

```console
$ docker pull hylang@sha256:89d4cb8aae4335be3b4abee03680e692a4706f7b8550327af89074c082f8c784
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.9 MB (332884705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ccd8c29f22c5202dfc8a4d13355b44e979515cbc3ca4ef82c9c28b27cf88634`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:09 GMT
ADD file:5fd4dfb0a59a763b52fd5588a8f4c35f596b133e00275b1cc485a71cf088b31a in / 
# Thu, 07 Feb 2019 13:03:10 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:37:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 15:38:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 13:15:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 13:45:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 02 Mar 2019 13:45:51 GMT
ENV LANG=C.UTF-8
# Sat, 02 Mar 2019 13:46:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 13:49:54 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Sat, 02 Mar 2019 13:49:55 GMT
ENV PYTHON_VERSION=3.7.2
# Sat, 02 Mar 2019 13:53:14 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Sat, 02 Mar 2019 13:53:16 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 02 Mar 2019 13:53:16 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Sat, 02 Mar 2019 13:53:25 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 02 Mar 2019 13:53:26 GMT
CMD ["python3"]
# Sat, 02 Mar 2019 15:26:41 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Sat, 02 Mar 2019 15:26:42 GMT
ADD dir:a05a45ee9f2f6abd81608e27a8160f322fc7835a3647d93b6cd365a9e58a0b3a in /opt/hylang/hy 
# Sat, 02 Mar 2019 15:26:52 GMT
RUN pip3 install -e /opt/hylang/hy
# Sat, 02 Mar 2019 15:26:52 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:54d7f221ed1ab7644f6a88a953847270cd864b5ebc4f343bfa28876a2715031f`  
		Last Modified: Thu, 07 Feb 2019 02:04:53 GMT  
		Size: 42.1 MB (42086927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fea5bcc599e31c6fb6e38ce89618c27f24be54ed9ac9b53f4fcbed58f9d619d`  
		Last Modified: Thu, 07 Feb 2019 15:52:17 GMT  
		Size: 9.5 MB (9480760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ac22707ead8a14ad6ae745a4c231538e6215c7a702ccad147b5251b3ea66c`  
		Last Modified: Thu, 07 Feb 2019 15:52:16 GMT  
		Size: 3.9 MB (3918458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5565830197f8831e23db2438cc94b7a2c5b37186bfa8adc7d45c22ef585b48`  
		Last Modified: Thu, 07 Feb 2019 15:52:41 GMT  
		Size: 46.4 MB (46384822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5370b94bbf4c92c5666de9cc4fb5cd4adc949efd67022a1741eaf49efcb57ac9`  
		Last Modified: Sat, 02 Mar 2019 13:28:02 GMT  
		Size: 199.9 MB (199862487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58fa75b5c7c8721b25d0cb5861988efccab0d665728c4d9af0c28d61dea160b9`  
		Last Modified: Sat, 02 Mar 2019 14:26:02 GMT  
		Size: 5.3 MB (5280952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010ed9f622e66725bc487655a9d80f7f47edd006a99102f62f980912283d8b2d`  
		Last Modified: Sat, 02 Mar 2019 14:26:24 GMT  
		Size: 21.1 MB (21076564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f39eaf6eda9b8e6f0295f7d7ee97d749ce17b5282ea5345dcd1a5137c44b2ae`  
		Last Modified: Sat, 02 Mar 2019 14:26:16 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a75be0bffc03153df1821e392e94075185668bf0dfc17e39d123cab1d6a607c`  
		Last Modified: Sat, 02 Mar 2019 14:26:17 GMT  
		Size: 1.8 MB (1813397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92e54f396470c7a21e870906682df9f0555ba09399844318c066cacce2e3b43`  
		Last Modified: Sat, 02 Mar 2019 15:27:02 GMT  
		Size: 385.6 KB (385557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14218e5754ba80ebed1ce99b9b25fe57ab7aff6c702f093334d70f6457e82f3e`  
		Last Modified: Sat, 02 Mar 2019 15:27:03 GMT  
		Size: 2.6 MB (2594539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0.13` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:21d5f0462fd5978dc0b78559460d708a38990eb41597bc29883622410cd1bc76
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.2 MB (339195992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55559ffd17ba6b49c1291e57bd86c4fc4020a70d688069c621b3bda3482051e1`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:38:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 10:39:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:49:31 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 16:40:09 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 16:40:10 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 16:40:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 16:40:39 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 06 Feb 2019 16:40:40 GMT
ENV PYTHON_VERSION=3.7.2
# Wed, 06 Feb 2019 16:46:46 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Wed, 06 Feb 2019 16:46:49 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Fri, 22 Feb 2019 10:43:09 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Fri, 22 Feb 2019 10:43:31 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 22 Feb 2019 10:43:32 GMT
CMD ["python3"]
# Fri, 22 Feb 2019 14:46:33 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Fri, 22 Feb 2019 14:46:34 GMT
ADD dir:a05a45ee9f2f6abd81608e27a8160f322fc7835a3647d93b6cd365a9e58a0b3a in /opt/hylang/hy 
# Fri, 22 Feb 2019 14:46:50 GMT
RUN pip3 install -e /opt/hylang/hy
# Fri, 22 Feb 2019 14:46:51 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:12bb1c82b086301ca1c22eabf3add7cd229f27b63ca4b0924e2356051d9e7194`  
		Last Modified: Wed, 06 Feb 2019 10:14:28 GMT  
		Size: 43.1 MB (43124977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730f6528b47c72f6dd5aabc947e8db01aa470adc3fdb4bbbcf052f9c3ad6ae8e`  
		Last Modified: Wed, 06 Feb 2019 10:52:36 GMT  
		Size: 9.7 MB (9728878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b5f3607713f2dab247e619fafcffd7c9edf4aaffc9e701660a76ccf324b742`  
		Last Modified: Wed, 06 Feb 2019 10:52:28 GMT  
		Size: 4.1 MB (4093098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5001a1d2fe2f54da8dbdfca56862dd05d37d1a2aab69599bcc2a130ea4fcd7f5`  
		Last Modified: Wed, 06 Feb 2019 10:52:48 GMT  
		Size: 48.0 MB (48005411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66d2086edc74aef75bdc93948cfe17fbded92e8ed4f4d39a1ecb70de979bd1f`  
		Last Modified: Wed, 06 Feb 2019 11:21:45 GMT  
		Size: 201.7 MB (201686969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fda9c0b8b760b81baf4d66aa3b703196ecfbb08ff750cd65b973ef8baee3566`  
		Last Modified: Wed, 06 Feb 2019 19:05:42 GMT  
		Size: 5.6 MB (5584112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3292200a059d459acbe0867a2ea41f1d4bddedbb316b1dcffbd46b1bd5746c6`  
		Last Modified: Wed, 06 Feb 2019 19:05:49 GMT  
		Size: 22.2 MB (22178926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8117e30e969e8b0e58009c1dc20caef4978a90ee39769c3d356d9da77b1965e9`  
		Last Modified: Wed, 06 Feb 2019 19:05:39 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1970e586813b7043e6e9f7c240159927cb5e4f4901ba1f38807237eff5884767`  
		Last Modified: Fri, 22 Feb 2019 11:01:06 GMT  
		Size: 1.8 MB (1813181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32eda01c4f79395b3036d07cf62a3776b56c226d6f2a1c6453a8e304c90855bf`  
		Last Modified: Fri, 22 Feb 2019 14:47:04 GMT  
		Size: 385.5 KB (385532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06e7feb07b62f92093890ac2defe8a6f2ac9b7c5c9ccc815228a90e1dc3ae3db`  
		Last Modified: Fri, 22 Feb 2019 14:47:05 GMT  
		Size: 2.6 MB (2594667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0.13` - linux; 386

```console
$ docker pull hylang@sha256:33e6cae277fcb4310cace45832843a6b7dec13f5425c80fd9a2bbb1756e5ff78
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.3 MB (364348549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a274a6171da5919bbf32f0695c8ebcbca0da510ca5d6a458b4e425c073979f1`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:07 GMT
ADD file:70c26933810136bdb5c394bab98ac1119dd6ab650db410d21a0a16098b8a6ae2 in / 
# Wed, 06 Feb 2019 12:01:08 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:49:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:49:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 01:50:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:52:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 09:27:02 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Feb 2019 09:27:02 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 09:27:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 09:27:13 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 07 Feb 2019 09:27:13 GMT
ENV PYTHON_VERSION=3.7.2
# Thu, 07 Feb 2019 09:29:37 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Thu, 07 Feb 2019 09:29:37 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Fri, 22 Feb 2019 16:07:54 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Fri, 22 Feb 2019 16:08:00 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 22 Feb 2019 16:08:00 GMT
CMD ["python3"]
# Fri, 22 Feb 2019 19:13:20 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Fri, 22 Feb 2019 19:13:20 GMT
ADD dir:a05a45ee9f2f6abd81608e27a8160f322fc7835a3647d93b6cd365a9e58a0b3a in /opt/hylang/hy 
# Fri, 22 Feb 2019 19:13:25 GMT
RUN pip3 install -e /opt/hylang/hy
# Fri, 22 Feb 2019 19:13:25 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:56c1dc1a93dfeb7eb66abd8197c3fdfe7d7393c9757be0a44ca2f624b6e5c684`  
		Last Modified: Wed, 06 Feb 2019 12:07:42 GMT  
		Size: 46.1 MB (46069815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d401cb48eb9dd4b814e64479a4a5e9150a56d439c01778f0b95ff0689f82cd17`  
		Last Modified: Thu, 07 Feb 2019 02:03:03 GMT  
		Size: 10.8 MB (10799008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c068a67acc556d25d2fd2dc13d5929a34ee0395cd208b418f73bf15fc17e0955`  
		Last Modified: Thu, 07 Feb 2019 02:03:02 GMT  
		Size: 4.6 MB (4560874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a009f6fe22ae181ab29d9455c5e577e663191ee6f4a9a0483ab44d91e775d853`  
		Last Modified: Thu, 07 Feb 2019 02:03:23 GMT  
		Size: 51.6 MB (51593479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0353d5e9a3eadb094532d11bc6c475a4e4141ad95ad02670c6c1a0cdda80f22`  
		Last Modified: Thu, 07 Feb 2019 02:04:19 GMT  
		Size: 219.3 MB (219329297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66aad198e48852c332bd9204b77fce0a1f062dae4d092585b3ab178aef67b77d`  
		Last Modified: Thu, 07 Feb 2019 09:58:45 GMT  
		Size: 6.1 MB (6147083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b34f739e39b7b2a24620ee0ff4eba17795ae9dc06a199f110b71206b4b5178`  
		Last Modified: Thu, 07 Feb 2019 09:58:48 GMT  
		Size: 21.1 MB (21055995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51138397ef3c03573ebebceb4ae164d1a002b7a4773d1b6f4a919ef551a176de`  
		Last Modified: Thu, 07 Feb 2019 09:58:43 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89432735648980d91799e53d02a661b63837ed2550d5df7ea51978a6ab88bb95`  
		Last Modified: Fri, 22 Feb 2019 16:33:47 GMT  
		Size: 1.8 MB (1813150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ac1423ce5c46c8669e7f15db3c6f90495ac3dacd156a597394ea67c8e910f9`  
		Last Modified: Fri, 22 Feb 2019 19:13:40 GMT  
		Size: 385.5 KB (385527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c915d22b2635df65dcef134721ec43d132d26dbc1ccd0509e3839d45a2213e`  
		Last Modified: Fri, 22 Feb 2019 19:13:35 GMT  
		Size: 2.6 MB (2594080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0.13` - linux; ppc64le

```console
$ docker pull hylang@sha256:665ed785486b9b71185b858b099d582e5970a1dbd450b2dd5ed2f03e2516a089
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.3 MB (353293131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04336c61579a002646e055f6e5ab5772b17f4df55a40b82d15a7ccc0d299afff`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:33 GMT
ADD file:dbc825fea111271dd16d8443e8df30f00e4bfb82365f49430e4b697866955e25 in / 
# Wed, 06 Feb 2019 09:26:35 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 19:08:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:08:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 19:10:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:17:48 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 02:34:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Feb 2019 02:34:44 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 02:35:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 02:35:10 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 07 Feb 2019 02:35:13 GMT
ENV PYTHON_VERSION=3.7.2
# Thu, 07 Feb 2019 02:37:59 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Thu, 07 Feb 2019 02:38:03 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Fri, 22 Feb 2019 10:18:35 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Fri, 22 Feb 2019 10:18:52 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 22 Feb 2019 10:18:55 GMT
CMD ["python3"]
# Fri, 22 Feb 2019 12:15:48 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Fri, 22 Feb 2019 12:15:50 GMT
ADD dir:a05a45ee9f2f6abd81608e27a8160f322fc7835a3647d93b6cd365a9e58a0b3a in /opt/hylang/hy 
# Fri, 22 Feb 2019 12:16:05 GMT
RUN pip3 install -e /opt/hylang/hy
# Fri, 22 Feb 2019 12:16:08 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3c6e73e1f3f727588bd1de44f5524879a3591bba13b256a67f0a03adbb788322`  
		Last Modified: Wed, 06 Feb 2019 09:30:55 GMT  
		Size: 45.6 MB (45616945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31cd7008a155452b9ece7c7dab0d6e7567ef8c55f2df5ff999e45c309031982`  
		Last Modified: Wed, 06 Feb 2019 19:28:30 GMT  
		Size: 10.0 MB (9986460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f96c2690a341be01eb7e79a7624948d65549f3a26a1adc1b9a5a669523505ea`  
		Last Modified: Wed, 06 Feb 2019 19:28:28 GMT  
		Size: 4.3 MB (4295659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:809222cf915d3e4f6467ca885b8fd6119aac0d5b2dfc37e9ea338ee407314063`  
		Last Modified: Wed, 06 Feb 2019 19:29:02 GMT  
		Size: 50.1 MB (50065346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee3c546eacd7883001479d8522303bee995c1516b194937c78ccbddb2f6bd0b`  
		Last Modified: Wed, 06 Feb 2019 19:30:16 GMT  
		Size: 209.9 MB (209897599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b017ccc7e8349d626314d8cd74b830963c24416507af5d6a5274ace2f4191e35`  
		Last Modified: Thu, 07 Feb 2019 02:51:38 GMT  
		Size: 5.9 MB (5865637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:384b45aad79958ca5d5e13db89d340dddfc7ef8897940a3f7837f2d173af59e6`  
		Last Modified: Thu, 07 Feb 2019 02:51:43 GMT  
		Size: 22.8 MB (22771369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6e6240a723e13cc0f17d62cea643b6d199c465c03e6a3c7a1040c35d9b99ca`  
		Last Modified: Thu, 07 Feb 2019 02:51:37 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89019e8c726eeb4452db1280273daa1f1197c572c8f7b5795a0433110b06fbf3`  
		Last Modified: Fri, 22 Feb 2019 10:34:11 GMT  
		Size: 1.8 MB (1813462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa5b073b092bb20d07734012cf2c9b9c43d4b1274679084718be0cb93e88cf2`  
		Last Modified: Fri, 22 Feb 2019 12:16:19 GMT  
		Size: 385.6 KB (385550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d371b50405541fc221889d4eec85e65193a28094d1d3fc4a64429e5b968e0895`  
		Last Modified: Fri, 22 Feb 2019 12:16:19 GMT  
		Size: 2.6 MB (2594864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0.13` - linux; s390x

```console
$ docker pull hylang@sha256:80d7b7081496449d46ed76ae29d1dbcff08b317bb133d886c18321df3934716e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **356.8 MB (356796652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d29fa3b723ed2a09ef763c7e22281d0efa4f25a554568c43fd1fd98801a820a`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 06 Feb 2019 12:43:08 GMT
ADD file:8c452240b3657ec4cc6568239a4d933bc75fd958464a3950f67912097968fff8 in / 
# Wed, 06 Feb 2019 12:43:08 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 15:27:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:27:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 15:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 12:50:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 14:47:52 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 02 Mar 2019 14:47:52 GMT
ENV LANG=C.UTF-8
# Sat, 02 Mar 2019 14:48:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 14:51:38 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Sat, 02 Mar 2019 14:51:38 GMT
ENV PYTHON_VERSION=3.7.2
# Sat, 02 Mar 2019 14:54:31 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Sat, 02 Mar 2019 14:54:32 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 02 Mar 2019 14:54:32 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Sat, 02 Mar 2019 14:54:39 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 02 Mar 2019 14:54:39 GMT
CMD ["python3"]
# Sat, 02 Mar 2019 16:50:40 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Sat, 02 Mar 2019 16:50:40 GMT
ADD dir:a05a45ee9f2f6abd81608e27a8160f322fc7835a3647d93b6cd365a9e58a0b3a in /opt/hylang/hy 
# Sat, 02 Mar 2019 16:50:45 GMT
RUN pip3 install -e /opt/hylang/hy
# Sat, 02 Mar 2019 16:50:45 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:e6786603fdb9e4ea361b73be3870f1118d3882c1619dfbbf9dec4d483fa32e76`  
		Last Modified: Wed, 06 Feb 2019 12:46:43 GMT  
		Size: 45.2 MB (45214898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac487c4bc63f07da92ff3259ca4d0fb30f86c5647f775010d11e6d51131b848`  
		Last Modified: Wed, 06 Feb 2019 15:34:22 GMT  
		Size: 10.3 MB (10312678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3e9925f73763aaae5f9ccd2b0c87ae90efbee12ee8698074a1056e25c2e6360`  
		Last Modified: Wed, 06 Feb 2019 15:34:21 GMT  
		Size: 4.4 MB (4371900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf6b44fbf659d16c99bbf57d1ee87ae0e6827f8aaa82012f87f1f031f655da5`  
		Last Modified: Wed, 06 Feb 2019 15:34:38 GMT  
		Size: 50.5 MB (50487526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e9ddf73c7e98c06ba03cca4c87e276a262aebf65dad84d83cc373cb70a1b95`  
		Last Modified: Sat, 02 Mar 2019 12:54:41 GMT  
		Size: 211.5 MB (211477973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081735651488bf9eee9d619a1a88d4d611b1b86d683685395bbfc3f8dd9f5da1`  
		Last Modified: Sat, 02 Mar 2019 15:07:57 GMT  
		Size: 5.9 MB (5896623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b182e5a0cdc0667518d1717d68098640fa00197a19d16d2a4917f5865abd96`  
		Last Modified: Sat, 02 Mar 2019 15:08:20 GMT  
		Size: 24.2 MB (24242288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af3e91e4308491ed6c57ccf5a137ab60d402f4f84c4e7a92125e8f76ab968ab`  
		Last Modified: Sat, 02 Mar 2019 15:08:13 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4472a111ba9d6e703756152006b88af9b43a9580c3b5d540063675e0d37ef2d5`  
		Last Modified: Sat, 02 Mar 2019 15:08:14 GMT  
		Size: 1.8 MB (1813125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058b7da2b005bda1a71934f49e499a4b6b59e1ecfeb1b4f9abe5efb1704aebcf`  
		Last Modified: Sat, 02 Mar 2019 16:50:55 GMT  
		Size: 385.5 KB (385526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed4caa8ae9f830b42b796d678fabb5f06309726568e2635004b612c31cd2d25`  
		Last Modified: Sat, 02 Mar 2019 16:50:55 GMT  
		Size: 2.6 MB (2593875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `hylang:0.13.1`

```console
$ docker pull hylang@sha256:a7544769a59dd651019ed4146f565a927b6076528830d6d352fd1cce5617fb5c
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

### `hylang:0.13.1` - linux; amd64

```console
$ docker pull hylang@sha256:8f2f46c9db4c13df1ca595d845f0623b7a94c1b113f8b4b861e1a14fc2b03029
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.2 MB (364192946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6019a7132a9cb83f430174b2b3ff50568ca4ab60a42bbe577c48a04626aa8d3`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 05:51:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 01:39:52 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 05:34:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 02 Mar 2019 05:34:37 GMT
ENV LANG=C.UTF-8
# Sat, 02 Mar 2019 05:34:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 05:39:34 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Sat, 02 Mar 2019 05:39:34 GMT
ENV PYTHON_VERSION=3.7.2
# Sat, 02 Mar 2019 05:43:43 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Sat, 02 Mar 2019 05:43:44 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 02 Mar 2019 05:43:44 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Sat, 02 Mar 2019 05:43:53 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 02 Mar 2019 05:43:53 GMT
CMD ["python3"]
# Sat, 02 Mar 2019 06:54:56 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Sat, 02 Mar 2019 06:54:56 GMT
ADD dir:a05a45ee9f2f6abd81608e27a8160f322fc7835a3647d93b6cd365a9e58a0b3a in /opt/hylang/hy 
# Sat, 02 Mar 2019 06:55:01 GMT
RUN pip3 install -e /opt/hylang/hy
# Sat, 02 Mar 2019 06:55:01 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d8874714d74b636739b8a52204650a664fca8ff9741dd66810f30196f103e2`  
		Last Modified: Wed, 06 Feb 2019 06:01:57 GMT  
		Size: 10.8 MB (10781099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a108aa2667933b852b8d003f97b344d014fcd7e06a0c0e6e04f2d6906738388`  
		Last Modified: Wed, 06 Feb 2019 06:01:56 GMT  
		Size: 4.3 MB (4340044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0334c36886bd4619e8d05ccf68003e53b0b6098b2166a216bd009dba678ed8`  
		Last Modified: Wed, 06 Feb 2019 06:02:14 GMT  
		Size: 50.1 MB (50063121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ea0d2b5c483667ad1bd27c524d3c0921c7634db0a1a7d3eb81d471a4247c8f`  
		Last Modified: Sat, 02 Mar 2019 01:53:08 GMT  
		Size: 220.6 MB (220604502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70a6aa0163be1f311c0caffd6ecb1fd6314c9bd6a61291623581af536c0cad0`  
		Last Modified: Sat, 02 Mar 2019 06:10:42 GMT  
		Size: 5.8 MB (5834507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9b78e41a03bcaac54d721043dff1b0fe8bd717842c0477215dcfe120ba87af`  
		Last Modified: Sat, 02 Mar 2019 06:11:01 GMT  
		Size: 22.4 MB (22432466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9b4c0fa8a2b29fb1b17b41749a374412c53fc06d0e82dfda950702d1c7eba2`  
		Last Modified: Sat, 02 Mar 2019 06:10:54 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55a3146e26179f6a0249ae4508923aaedd57051064dde6b472fde412f05f74b`  
		Last Modified: Sat, 02 Mar 2019 06:10:55 GMT  
		Size: 1.8 MB (1813246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:267f744bd7a14d4482146bec923a8cf698c2d30aa3a757688c29831705a5c764`  
		Last Modified: Sat, 02 Mar 2019 06:55:08 GMT  
		Size: 385.5 KB (385508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa9e103fc9029052b31546d87e3f476fee5d1a9f210ce6d1566489ad038338b`  
		Last Modified: Sat, 02 Mar 2019 06:55:08 GMT  
		Size: 2.6 MB (2593918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0.13.1` - linux; arm variant v5

```console
$ docker pull hylang@sha256:d85fa971f521f5d76a7612a3b7b7db0256c2489b055e17b001c455dbc29f5414
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.8 MB (345801692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdd0894b6754676acacd1821002e4155d7eed280ba551cf8341afcc329afabf4`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 06 Feb 2019 09:55:21 GMT
ADD file:cde688211f1222c7310b330ab44ca3a7040b0f81757aa06eb186f342f9002e9e in / 
# Wed, 06 Feb 2019 09:55:23 GMT
CMD ["bash"]
# Sat, 02 Mar 2019 09:58:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 09:58:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 02 Mar 2019 09:59:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 10:01:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 10:26:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 02 Mar 2019 10:26:05 GMT
ENV LANG=C.UTF-8
# Sat, 02 Mar 2019 10:26:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 10:30:39 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Sat, 02 Mar 2019 10:30:40 GMT
ENV PYTHON_VERSION=3.7.2
# Sat, 02 Mar 2019 10:34:16 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Sat, 02 Mar 2019 10:34:18 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 02 Mar 2019 10:34:18 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Sat, 02 Mar 2019 10:34:28 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 02 Mar 2019 10:34:29 GMT
CMD ["python3"]
# Sat, 02 Mar 2019 11:44:09 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Sat, 02 Mar 2019 11:44:09 GMT
ADD dir:a05a45ee9f2f6abd81608e27a8160f322fc7835a3647d93b6cd365a9e58a0b3a in /opt/hylang/hy 
# Sat, 02 Mar 2019 11:44:18 GMT
RUN pip3 install -e /opt/hylang/hy
# Sat, 02 Mar 2019 11:44:19 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:64cbc7a69a80c9845c477fed607dbdc662a2e90c861ea5e3ede337e672e7235a`  
		Last Modified: Wed, 06 Feb 2019 10:03:29 GMT  
		Size: 44.1 MB (44050880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4134cc1b13a896b7996124760d484efd7aecc2c58a704688b99722f4ddd6fb`  
		Last Modified: Sat, 02 Mar 2019 10:08:11 GMT  
		Size: 9.9 MB (9851916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26306a44df68f962e0c10b777285eb2942cbaa049ba33077bb17925e8a7749ba`  
		Last Modified: Sat, 02 Mar 2019 10:08:09 GMT  
		Size: 4.2 MB (4159040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2ab7d0147573c7e612d2583610491c6656ce5e63e0f336f8291aece5a77bffb`  
		Last Modified: Sat, 02 Mar 2019 10:08:34 GMT  
		Size: 48.3 MB (48284855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b286e193d85878391909285726155467f017af3e9d6a3c21d7ba1ec18334a3`  
		Last Modified: Sat, 02 Mar 2019 10:09:39 GMT  
		Size: 207.6 MB (207588650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f862e29d97e14f3eb5fb7351ef966ccf61cd70000aba7d017d8cdadf90b6a76`  
		Last Modified: Sat, 02 Mar 2019 10:55:07 GMT  
		Size: 5.6 MB (5614747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4006747c1d3adf1780c354c09dbd6c2c7e8fb1f9cc50c2a085b94be2923f199`  
		Last Modified: Sat, 02 Mar 2019 10:55:32 GMT  
		Size: 21.5 MB (21458099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa68f50dc6dad6eb59a1b57e75a98c34ce61cc3426660dc85b296456094100b2`  
		Last Modified: Sat, 02 Mar 2019 10:55:22 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb069982894598b607cfbbe36be1037c3eb5a021811c48b258b7a86c3bad9b15`  
		Last Modified: Sat, 02 Mar 2019 10:55:23 GMT  
		Size: 1.8 MB (1813405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d84f6268848220e35693514d4247ee12489b04810e94eadad8e2cc79015fcfc6`  
		Last Modified: Sat, 02 Mar 2019 11:44:29 GMT  
		Size: 385.6 KB (385554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d49699010dde2fea7ec9a7408c41094138a746026d26d919df7c085dc0a71eb`  
		Last Modified: Sat, 02 Mar 2019 11:44:30 GMT  
		Size: 2.6 MB (2594304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0.13.1` - linux; arm variant v7

```console
$ docker pull hylang@sha256:89d4cb8aae4335be3b4abee03680e692a4706f7b8550327af89074c082f8c784
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.9 MB (332884705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ccd8c29f22c5202dfc8a4d13355b44e979515cbc3ca4ef82c9c28b27cf88634`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:09 GMT
ADD file:5fd4dfb0a59a763b52fd5588a8f4c35f596b133e00275b1cc485a71cf088b31a in / 
# Thu, 07 Feb 2019 13:03:10 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:37:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 15:38:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 13:15:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 13:45:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 02 Mar 2019 13:45:51 GMT
ENV LANG=C.UTF-8
# Sat, 02 Mar 2019 13:46:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 13:49:54 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Sat, 02 Mar 2019 13:49:55 GMT
ENV PYTHON_VERSION=3.7.2
# Sat, 02 Mar 2019 13:53:14 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Sat, 02 Mar 2019 13:53:16 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 02 Mar 2019 13:53:16 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Sat, 02 Mar 2019 13:53:25 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 02 Mar 2019 13:53:26 GMT
CMD ["python3"]
# Sat, 02 Mar 2019 15:26:41 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Sat, 02 Mar 2019 15:26:42 GMT
ADD dir:a05a45ee9f2f6abd81608e27a8160f322fc7835a3647d93b6cd365a9e58a0b3a in /opt/hylang/hy 
# Sat, 02 Mar 2019 15:26:52 GMT
RUN pip3 install -e /opt/hylang/hy
# Sat, 02 Mar 2019 15:26:52 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:54d7f221ed1ab7644f6a88a953847270cd864b5ebc4f343bfa28876a2715031f`  
		Last Modified: Thu, 07 Feb 2019 02:04:53 GMT  
		Size: 42.1 MB (42086927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fea5bcc599e31c6fb6e38ce89618c27f24be54ed9ac9b53f4fcbed58f9d619d`  
		Last Modified: Thu, 07 Feb 2019 15:52:17 GMT  
		Size: 9.5 MB (9480760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ac22707ead8a14ad6ae745a4c231538e6215c7a702ccad147b5251b3ea66c`  
		Last Modified: Thu, 07 Feb 2019 15:52:16 GMT  
		Size: 3.9 MB (3918458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5565830197f8831e23db2438cc94b7a2c5b37186bfa8adc7d45c22ef585b48`  
		Last Modified: Thu, 07 Feb 2019 15:52:41 GMT  
		Size: 46.4 MB (46384822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5370b94bbf4c92c5666de9cc4fb5cd4adc949efd67022a1741eaf49efcb57ac9`  
		Last Modified: Sat, 02 Mar 2019 13:28:02 GMT  
		Size: 199.9 MB (199862487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58fa75b5c7c8721b25d0cb5861988efccab0d665728c4d9af0c28d61dea160b9`  
		Last Modified: Sat, 02 Mar 2019 14:26:02 GMT  
		Size: 5.3 MB (5280952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010ed9f622e66725bc487655a9d80f7f47edd006a99102f62f980912283d8b2d`  
		Last Modified: Sat, 02 Mar 2019 14:26:24 GMT  
		Size: 21.1 MB (21076564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f39eaf6eda9b8e6f0295f7d7ee97d749ce17b5282ea5345dcd1a5137c44b2ae`  
		Last Modified: Sat, 02 Mar 2019 14:26:16 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a75be0bffc03153df1821e392e94075185668bf0dfc17e39d123cab1d6a607c`  
		Last Modified: Sat, 02 Mar 2019 14:26:17 GMT  
		Size: 1.8 MB (1813397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92e54f396470c7a21e870906682df9f0555ba09399844318c066cacce2e3b43`  
		Last Modified: Sat, 02 Mar 2019 15:27:02 GMT  
		Size: 385.6 KB (385557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14218e5754ba80ebed1ce99b9b25fe57ab7aff6c702f093334d70f6457e82f3e`  
		Last Modified: Sat, 02 Mar 2019 15:27:03 GMT  
		Size: 2.6 MB (2594539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0.13.1` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:21d5f0462fd5978dc0b78559460d708a38990eb41597bc29883622410cd1bc76
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.2 MB (339195992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55559ffd17ba6b49c1291e57bd86c4fc4020a70d688069c621b3bda3482051e1`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:38:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 10:39:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:49:31 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 16:40:09 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 16:40:10 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 16:40:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 16:40:39 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 06 Feb 2019 16:40:40 GMT
ENV PYTHON_VERSION=3.7.2
# Wed, 06 Feb 2019 16:46:46 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Wed, 06 Feb 2019 16:46:49 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Fri, 22 Feb 2019 10:43:09 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Fri, 22 Feb 2019 10:43:31 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 22 Feb 2019 10:43:32 GMT
CMD ["python3"]
# Fri, 22 Feb 2019 14:46:33 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Fri, 22 Feb 2019 14:46:34 GMT
ADD dir:a05a45ee9f2f6abd81608e27a8160f322fc7835a3647d93b6cd365a9e58a0b3a in /opt/hylang/hy 
# Fri, 22 Feb 2019 14:46:50 GMT
RUN pip3 install -e /opt/hylang/hy
# Fri, 22 Feb 2019 14:46:51 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:12bb1c82b086301ca1c22eabf3add7cd229f27b63ca4b0924e2356051d9e7194`  
		Last Modified: Wed, 06 Feb 2019 10:14:28 GMT  
		Size: 43.1 MB (43124977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730f6528b47c72f6dd5aabc947e8db01aa470adc3fdb4bbbcf052f9c3ad6ae8e`  
		Last Modified: Wed, 06 Feb 2019 10:52:36 GMT  
		Size: 9.7 MB (9728878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b5f3607713f2dab247e619fafcffd7c9edf4aaffc9e701660a76ccf324b742`  
		Last Modified: Wed, 06 Feb 2019 10:52:28 GMT  
		Size: 4.1 MB (4093098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5001a1d2fe2f54da8dbdfca56862dd05d37d1a2aab69599bcc2a130ea4fcd7f5`  
		Last Modified: Wed, 06 Feb 2019 10:52:48 GMT  
		Size: 48.0 MB (48005411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66d2086edc74aef75bdc93948cfe17fbded92e8ed4f4d39a1ecb70de979bd1f`  
		Last Modified: Wed, 06 Feb 2019 11:21:45 GMT  
		Size: 201.7 MB (201686969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fda9c0b8b760b81baf4d66aa3b703196ecfbb08ff750cd65b973ef8baee3566`  
		Last Modified: Wed, 06 Feb 2019 19:05:42 GMT  
		Size: 5.6 MB (5584112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3292200a059d459acbe0867a2ea41f1d4bddedbb316b1dcffbd46b1bd5746c6`  
		Last Modified: Wed, 06 Feb 2019 19:05:49 GMT  
		Size: 22.2 MB (22178926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8117e30e969e8b0e58009c1dc20caef4978a90ee39769c3d356d9da77b1965e9`  
		Last Modified: Wed, 06 Feb 2019 19:05:39 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1970e586813b7043e6e9f7c240159927cb5e4f4901ba1f38807237eff5884767`  
		Last Modified: Fri, 22 Feb 2019 11:01:06 GMT  
		Size: 1.8 MB (1813181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32eda01c4f79395b3036d07cf62a3776b56c226d6f2a1c6453a8e304c90855bf`  
		Last Modified: Fri, 22 Feb 2019 14:47:04 GMT  
		Size: 385.5 KB (385532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06e7feb07b62f92093890ac2defe8a6f2ac9b7c5c9ccc815228a90e1dc3ae3db`  
		Last Modified: Fri, 22 Feb 2019 14:47:05 GMT  
		Size: 2.6 MB (2594667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0.13.1` - linux; 386

```console
$ docker pull hylang@sha256:33e6cae277fcb4310cace45832843a6b7dec13f5425c80fd9a2bbb1756e5ff78
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.3 MB (364348549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a274a6171da5919bbf32f0695c8ebcbca0da510ca5d6a458b4e425c073979f1`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:07 GMT
ADD file:70c26933810136bdb5c394bab98ac1119dd6ab650db410d21a0a16098b8a6ae2 in / 
# Wed, 06 Feb 2019 12:01:08 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:49:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:49:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 01:50:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:52:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 09:27:02 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Feb 2019 09:27:02 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 09:27:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 09:27:13 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 07 Feb 2019 09:27:13 GMT
ENV PYTHON_VERSION=3.7.2
# Thu, 07 Feb 2019 09:29:37 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Thu, 07 Feb 2019 09:29:37 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Fri, 22 Feb 2019 16:07:54 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Fri, 22 Feb 2019 16:08:00 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 22 Feb 2019 16:08:00 GMT
CMD ["python3"]
# Fri, 22 Feb 2019 19:13:20 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Fri, 22 Feb 2019 19:13:20 GMT
ADD dir:a05a45ee9f2f6abd81608e27a8160f322fc7835a3647d93b6cd365a9e58a0b3a in /opt/hylang/hy 
# Fri, 22 Feb 2019 19:13:25 GMT
RUN pip3 install -e /opt/hylang/hy
# Fri, 22 Feb 2019 19:13:25 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:56c1dc1a93dfeb7eb66abd8197c3fdfe7d7393c9757be0a44ca2f624b6e5c684`  
		Last Modified: Wed, 06 Feb 2019 12:07:42 GMT  
		Size: 46.1 MB (46069815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d401cb48eb9dd4b814e64479a4a5e9150a56d439c01778f0b95ff0689f82cd17`  
		Last Modified: Thu, 07 Feb 2019 02:03:03 GMT  
		Size: 10.8 MB (10799008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c068a67acc556d25d2fd2dc13d5929a34ee0395cd208b418f73bf15fc17e0955`  
		Last Modified: Thu, 07 Feb 2019 02:03:02 GMT  
		Size: 4.6 MB (4560874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a009f6fe22ae181ab29d9455c5e577e663191ee6f4a9a0483ab44d91e775d853`  
		Last Modified: Thu, 07 Feb 2019 02:03:23 GMT  
		Size: 51.6 MB (51593479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0353d5e9a3eadb094532d11bc6c475a4e4141ad95ad02670c6c1a0cdda80f22`  
		Last Modified: Thu, 07 Feb 2019 02:04:19 GMT  
		Size: 219.3 MB (219329297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66aad198e48852c332bd9204b77fce0a1f062dae4d092585b3ab178aef67b77d`  
		Last Modified: Thu, 07 Feb 2019 09:58:45 GMT  
		Size: 6.1 MB (6147083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b34f739e39b7b2a24620ee0ff4eba17795ae9dc06a199f110b71206b4b5178`  
		Last Modified: Thu, 07 Feb 2019 09:58:48 GMT  
		Size: 21.1 MB (21055995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51138397ef3c03573ebebceb4ae164d1a002b7a4773d1b6f4a919ef551a176de`  
		Last Modified: Thu, 07 Feb 2019 09:58:43 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89432735648980d91799e53d02a661b63837ed2550d5df7ea51978a6ab88bb95`  
		Last Modified: Fri, 22 Feb 2019 16:33:47 GMT  
		Size: 1.8 MB (1813150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ac1423ce5c46c8669e7f15db3c6f90495ac3dacd156a597394ea67c8e910f9`  
		Last Modified: Fri, 22 Feb 2019 19:13:40 GMT  
		Size: 385.5 KB (385527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c915d22b2635df65dcef134721ec43d132d26dbc1ccd0509e3839d45a2213e`  
		Last Modified: Fri, 22 Feb 2019 19:13:35 GMT  
		Size: 2.6 MB (2594080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0.13.1` - linux; ppc64le

```console
$ docker pull hylang@sha256:665ed785486b9b71185b858b099d582e5970a1dbd450b2dd5ed2f03e2516a089
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.3 MB (353293131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04336c61579a002646e055f6e5ab5772b17f4df55a40b82d15a7ccc0d299afff`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:33 GMT
ADD file:dbc825fea111271dd16d8443e8df30f00e4bfb82365f49430e4b697866955e25 in / 
# Wed, 06 Feb 2019 09:26:35 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 19:08:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:08:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 19:10:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:17:48 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 02:34:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Feb 2019 02:34:44 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 02:35:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 02:35:10 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 07 Feb 2019 02:35:13 GMT
ENV PYTHON_VERSION=3.7.2
# Thu, 07 Feb 2019 02:37:59 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Thu, 07 Feb 2019 02:38:03 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Fri, 22 Feb 2019 10:18:35 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Fri, 22 Feb 2019 10:18:52 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 22 Feb 2019 10:18:55 GMT
CMD ["python3"]
# Fri, 22 Feb 2019 12:15:48 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Fri, 22 Feb 2019 12:15:50 GMT
ADD dir:a05a45ee9f2f6abd81608e27a8160f322fc7835a3647d93b6cd365a9e58a0b3a in /opt/hylang/hy 
# Fri, 22 Feb 2019 12:16:05 GMT
RUN pip3 install -e /opt/hylang/hy
# Fri, 22 Feb 2019 12:16:08 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3c6e73e1f3f727588bd1de44f5524879a3591bba13b256a67f0a03adbb788322`  
		Last Modified: Wed, 06 Feb 2019 09:30:55 GMT  
		Size: 45.6 MB (45616945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31cd7008a155452b9ece7c7dab0d6e7567ef8c55f2df5ff999e45c309031982`  
		Last Modified: Wed, 06 Feb 2019 19:28:30 GMT  
		Size: 10.0 MB (9986460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f96c2690a341be01eb7e79a7624948d65549f3a26a1adc1b9a5a669523505ea`  
		Last Modified: Wed, 06 Feb 2019 19:28:28 GMT  
		Size: 4.3 MB (4295659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:809222cf915d3e4f6467ca885b8fd6119aac0d5b2dfc37e9ea338ee407314063`  
		Last Modified: Wed, 06 Feb 2019 19:29:02 GMT  
		Size: 50.1 MB (50065346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee3c546eacd7883001479d8522303bee995c1516b194937c78ccbddb2f6bd0b`  
		Last Modified: Wed, 06 Feb 2019 19:30:16 GMT  
		Size: 209.9 MB (209897599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b017ccc7e8349d626314d8cd74b830963c24416507af5d6a5274ace2f4191e35`  
		Last Modified: Thu, 07 Feb 2019 02:51:38 GMT  
		Size: 5.9 MB (5865637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:384b45aad79958ca5d5e13db89d340dddfc7ef8897940a3f7837f2d173af59e6`  
		Last Modified: Thu, 07 Feb 2019 02:51:43 GMT  
		Size: 22.8 MB (22771369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6e6240a723e13cc0f17d62cea643b6d199c465c03e6a3c7a1040c35d9b99ca`  
		Last Modified: Thu, 07 Feb 2019 02:51:37 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89019e8c726eeb4452db1280273daa1f1197c572c8f7b5795a0433110b06fbf3`  
		Last Modified: Fri, 22 Feb 2019 10:34:11 GMT  
		Size: 1.8 MB (1813462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa5b073b092bb20d07734012cf2c9b9c43d4b1274679084718be0cb93e88cf2`  
		Last Modified: Fri, 22 Feb 2019 12:16:19 GMT  
		Size: 385.6 KB (385550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d371b50405541fc221889d4eec85e65193a28094d1d3fc4a64429e5b968e0895`  
		Last Modified: Fri, 22 Feb 2019 12:16:19 GMT  
		Size: 2.6 MB (2594864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:0.13.1` - linux; s390x

```console
$ docker pull hylang@sha256:80d7b7081496449d46ed76ae29d1dbcff08b317bb133d886c18321df3934716e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **356.8 MB (356796652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d29fa3b723ed2a09ef763c7e22281d0efa4f25a554568c43fd1fd98801a820a`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 06 Feb 2019 12:43:08 GMT
ADD file:8c452240b3657ec4cc6568239a4d933bc75fd958464a3950f67912097968fff8 in / 
# Wed, 06 Feb 2019 12:43:08 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 15:27:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:27:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 15:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 12:50:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 14:47:52 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 02 Mar 2019 14:47:52 GMT
ENV LANG=C.UTF-8
# Sat, 02 Mar 2019 14:48:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 14:51:38 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Sat, 02 Mar 2019 14:51:38 GMT
ENV PYTHON_VERSION=3.7.2
# Sat, 02 Mar 2019 14:54:31 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Sat, 02 Mar 2019 14:54:32 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 02 Mar 2019 14:54:32 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Sat, 02 Mar 2019 14:54:39 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 02 Mar 2019 14:54:39 GMT
CMD ["python3"]
# Sat, 02 Mar 2019 16:50:40 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Sat, 02 Mar 2019 16:50:40 GMT
ADD dir:a05a45ee9f2f6abd81608e27a8160f322fc7835a3647d93b6cd365a9e58a0b3a in /opt/hylang/hy 
# Sat, 02 Mar 2019 16:50:45 GMT
RUN pip3 install -e /opt/hylang/hy
# Sat, 02 Mar 2019 16:50:45 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:e6786603fdb9e4ea361b73be3870f1118d3882c1619dfbbf9dec4d483fa32e76`  
		Last Modified: Wed, 06 Feb 2019 12:46:43 GMT  
		Size: 45.2 MB (45214898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac487c4bc63f07da92ff3259ca4d0fb30f86c5647f775010d11e6d51131b848`  
		Last Modified: Wed, 06 Feb 2019 15:34:22 GMT  
		Size: 10.3 MB (10312678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3e9925f73763aaae5f9ccd2b0c87ae90efbee12ee8698074a1056e25c2e6360`  
		Last Modified: Wed, 06 Feb 2019 15:34:21 GMT  
		Size: 4.4 MB (4371900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf6b44fbf659d16c99bbf57d1ee87ae0e6827f8aaa82012f87f1f031f655da5`  
		Last Modified: Wed, 06 Feb 2019 15:34:38 GMT  
		Size: 50.5 MB (50487526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e9ddf73c7e98c06ba03cca4c87e276a262aebf65dad84d83cc373cb70a1b95`  
		Last Modified: Sat, 02 Mar 2019 12:54:41 GMT  
		Size: 211.5 MB (211477973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081735651488bf9eee9d619a1a88d4d611b1b86d683685395bbfc3f8dd9f5da1`  
		Last Modified: Sat, 02 Mar 2019 15:07:57 GMT  
		Size: 5.9 MB (5896623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b182e5a0cdc0667518d1717d68098640fa00197a19d16d2a4917f5865abd96`  
		Last Modified: Sat, 02 Mar 2019 15:08:20 GMT  
		Size: 24.2 MB (24242288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af3e91e4308491ed6c57ccf5a137ab60d402f4f84c4e7a92125e8f76ab968ab`  
		Last Modified: Sat, 02 Mar 2019 15:08:13 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4472a111ba9d6e703756152006b88af9b43a9580c3b5d540063675e0d37ef2d5`  
		Last Modified: Sat, 02 Mar 2019 15:08:14 GMT  
		Size: 1.8 MB (1813125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058b7da2b005bda1a71934f49e499a4b6b59e1ecfeb1b4f9abe5efb1704aebcf`  
		Last Modified: Sat, 02 Mar 2019 16:50:55 GMT  
		Size: 385.5 KB (385526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed4caa8ae9f830b42b796d678fabb5f06309726568e2635004b612c31cd2d25`  
		Last Modified: Sat, 02 Mar 2019 16:50:55 GMT  
		Size: 2.6 MB (2593875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `hylang:latest`

```console
$ docker pull hylang@sha256:a7544769a59dd651019ed4146f565a927b6076528830d6d352fd1cce5617fb5c
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
$ docker pull hylang@sha256:8f2f46c9db4c13df1ca595d845f0623b7a94c1b113f8b4b861e1a14fc2b03029
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.2 MB (364192946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6019a7132a9cb83f430174b2b3ff50568ca4ab60a42bbe577c48a04626aa8d3`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 06 Feb 2019 03:30:01 GMT
ADD file:4fec879fdca802d6920b8981b409b19ded75aff693eaaba1ba4cf5ecb7594fdb in / 
# Wed, 06 Feb 2019 03:30:02 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:51:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:51:14 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 05:51:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 01:39:52 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 05:34:37 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 02 Mar 2019 05:34:37 GMT
ENV LANG=C.UTF-8
# Sat, 02 Mar 2019 05:34:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 05:39:34 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Sat, 02 Mar 2019 05:39:34 GMT
ENV PYTHON_VERSION=3.7.2
# Sat, 02 Mar 2019 05:43:43 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Sat, 02 Mar 2019 05:43:44 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 02 Mar 2019 05:43:44 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Sat, 02 Mar 2019 05:43:53 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 02 Mar 2019 05:43:53 GMT
CMD ["python3"]
# Sat, 02 Mar 2019 06:54:56 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Sat, 02 Mar 2019 06:54:56 GMT
ADD dir:a05a45ee9f2f6abd81608e27a8160f322fc7835a3647d93b6cd365a9e58a0b3a in /opt/hylang/hy 
# Sat, 02 Mar 2019 06:55:01 GMT
RUN pip3 install -e /opt/hylang/hy
# Sat, 02 Mar 2019 06:55:01 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:741437d97401b83849ccbfe4ed8964049b752081647d7f1ea8aea29d989f8968`  
		Last Modified: Wed, 06 Feb 2019 03:35:41 GMT  
		Size: 45.3 MB (45344292 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:34d8874714d74b636739b8a52204650a664fca8ff9741dd66810f30196f103e2`  
		Last Modified: Wed, 06 Feb 2019 06:01:57 GMT  
		Size: 10.8 MB (10781099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a108aa2667933b852b8d003f97b344d014fcd7e06a0c0e6e04f2d6906738388`  
		Last Modified: Wed, 06 Feb 2019 06:01:56 GMT  
		Size: 4.3 MB (4340044 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0334c36886bd4619e8d05ccf68003e53b0b6098b2166a216bd009dba678ed8`  
		Last Modified: Wed, 06 Feb 2019 06:02:14 GMT  
		Size: 50.1 MB (50063121 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:49ea0d2b5c483667ad1bd27c524d3c0921c7634db0a1a7d3eb81d471a4247c8f`  
		Last Modified: Sat, 02 Mar 2019 01:53:08 GMT  
		Size: 220.6 MB (220604502 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f70a6aa0163be1f311c0caffd6ecb1fd6314c9bd6a61291623581af536c0cad0`  
		Last Modified: Sat, 02 Mar 2019 06:10:42 GMT  
		Size: 5.8 MB (5834507 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4b9b78e41a03bcaac54d721043dff1b0fe8bd717842c0477215dcfe120ba87af`  
		Last Modified: Sat, 02 Mar 2019 06:11:01 GMT  
		Size: 22.4 MB (22432466 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9e9b4c0fa8a2b29fb1b17b41749a374412c53fc06d0e82dfda950702d1c7eba2`  
		Last Modified: Sat, 02 Mar 2019 06:10:54 GMT  
		Size: 243.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c55a3146e26179f6a0249ae4508923aaedd57051064dde6b472fde412f05f74b`  
		Last Modified: Sat, 02 Mar 2019 06:10:55 GMT  
		Size: 1.8 MB (1813246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:267f744bd7a14d4482146bec923a8cf698c2d30aa3a757688c29831705a5c764`  
		Last Modified: Sat, 02 Mar 2019 06:55:08 GMT  
		Size: 385.5 KB (385508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:baa9e103fc9029052b31546d87e3f476fee5d1a9f210ce6d1566489ad038338b`  
		Last Modified: Sat, 02 Mar 2019 06:55:08 GMT  
		Size: 2.6 MB (2593918 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:latest` - linux; arm variant v5

```console
$ docker pull hylang@sha256:d85fa971f521f5d76a7612a3b7b7db0256c2489b055e17b001c455dbc29f5414
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **345.8 MB (345801692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdd0894b6754676acacd1821002e4155d7eed280ba551cf8341afcc329afabf4`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 06 Feb 2019 09:55:21 GMT
ADD file:cde688211f1222c7310b330ab44ca3a7040b0f81757aa06eb186f342f9002e9e in / 
# Wed, 06 Feb 2019 09:55:23 GMT
CMD ["bash"]
# Sat, 02 Mar 2019 09:58:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 09:58:21 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 02 Mar 2019 09:59:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 10:01:38 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 10:26:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 02 Mar 2019 10:26:05 GMT
ENV LANG=C.UTF-8
# Sat, 02 Mar 2019 10:26:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 10:30:39 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Sat, 02 Mar 2019 10:30:40 GMT
ENV PYTHON_VERSION=3.7.2
# Sat, 02 Mar 2019 10:34:16 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Sat, 02 Mar 2019 10:34:18 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 02 Mar 2019 10:34:18 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Sat, 02 Mar 2019 10:34:28 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 02 Mar 2019 10:34:29 GMT
CMD ["python3"]
# Sat, 02 Mar 2019 11:44:09 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Sat, 02 Mar 2019 11:44:09 GMT
ADD dir:a05a45ee9f2f6abd81608e27a8160f322fc7835a3647d93b6cd365a9e58a0b3a in /opt/hylang/hy 
# Sat, 02 Mar 2019 11:44:18 GMT
RUN pip3 install -e /opt/hylang/hy
# Sat, 02 Mar 2019 11:44:19 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:64cbc7a69a80c9845c477fed607dbdc662a2e90c861ea5e3ede337e672e7235a`  
		Last Modified: Wed, 06 Feb 2019 10:03:29 GMT  
		Size: 44.1 MB (44050880 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef4134cc1b13a896b7996124760d484efd7aecc2c58a704688b99722f4ddd6fb`  
		Last Modified: Sat, 02 Mar 2019 10:08:11 GMT  
		Size: 9.9 MB (9851916 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:26306a44df68f962e0c10b777285eb2942cbaa049ba33077bb17925e8a7749ba`  
		Last Modified: Sat, 02 Mar 2019 10:08:09 GMT  
		Size: 4.2 MB (4159040 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2ab7d0147573c7e612d2583610491c6656ce5e63e0f336f8291aece5a77bffb`  
		Last Modified: Sat, 02 Mar 2019 10:08:34 GMT  
		Size: 48.3 MB (48284855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:36b286e193d85878391909285726155467f017af3e9d6a3c21d7ba1ec18334a3`  
		Last Modified: Sat, 02 Mar 2019 10:09:39 GMT  
		Size: 207.6 MB (207588650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f862e29d97e14f3eb5fb7351ef966ccf61cd70000aba7d017d8cdadf90b6a76`  
		Last Modified: Sat, 02 Mar 2019 10:55:07 GMT  
		Size: 5.6 MB (5614747 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4006747c1d3adf1780c354c09dbd6c2c7e8fb1f9cc50c2a085b94be2923f199`  
		Last Modified: Sat, 02 Mar 2019 10:55:32 GMT  
		Size: 21.5 MB (21458099 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fa68f50dc6dad6eb59a1b57e75a98c34ce61cc3426660dc85b296456094100b2`  
		Last Modified: Sat, 02 Mar 2019 10:55:22 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eb069982894598b607cfbbe36be1037c3eb5a021811c48b258b7a86c3bad9b15`  
		Last Modified: Sat, 02 Mar 2019 10:55:23 GMT  
		Size: 1.8 MB (1813405 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d84f6268848220e35693514d4247ee12489b04810e94eadad8e2cc79015fcfc6`  
		Last Modified: Sat, 02 Mar 2019 11:44:29 GMT  
		Size: 385.6 KB (385554 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d49699010dde2fea7ec9a7408c41094138a746026d26d919df7c085dc0a71eb`  
		Last Modified: Sat, 02 Mar 2019 11:44:30 GMT  
		Size: 2.6 MB (2594304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:latest` - linux; arm variant v7

```console
$ docker pull hylang@sha256:89d4cb8aae4335be3b4abee03680e692a4706f7b8550327af89074c082f8c784
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **332.9 MB (332884705 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ccd8c29f22c5202dfc8a4d13355b44e979515cbc3ca4ef82c9c28b27cf88634`
-	Default Command: `["hy"]`

```dockerfile
# Thu, 07 Feb 2019 13:03:09 GMT
ADD file:5fd4dfb0a59a763b52fd5588a8f4c35f596b133e00275b1cc485a71cf088b31a in / 
# Thu, 07 Feb 2019 13:03:10 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 15:37:43 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 15:37:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 15:38:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 13:15:34 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 13:45:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 02 Mar 2019 13:45:51 GMT
ENV LANG=C.UTF-8
# Sat, 02 Mar 2019 13:46:03 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 13:49:54 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Sat, 02 Mar 2019 13:49:55 GMT
ENV PYTHON_VERSION=3.7.2
# Sat, 02 Mar 2019 13:53:14 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Sat, 02 Mar 2019 13:53:16 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 02 Mar 2019 13:53:16 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Sat, 02 Mar 2019 13:53:25 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 02 Mar 2019 13:53:26 GMT
CMD ["python3"]
# Sat, 02 Mar 2019 15:26:41 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Sat, 02 Mar 2019 15:26:42 GMT
ADD dir:a05a45ee9f2f6abd81608e27a8160f322fc7835a3647d93b6cd365a9e58a0b3a in /opt/hylang/hy 
# Sat, 02 Mar 2019 15:26:52 GMT
RUN pip3 install -e /opt/hylang/hy
# Sat, 02 Mar 2019 15:26:52 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:54d7f221ed1ab7644f6a88a953847270cd864b5ebc4f343bfa28876a2715031f`  
		Last Modified: Thu, 07 Feb 2019 02:04:53 GMT  
		Size: 42.1 MB (42086927 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2fea5bcc599e31c6fb6e38ce89618c27f24be54ed9ac9b53f4fcbed58f9d619d`  
		Last Modified: Thu, 07 Feb 2019 15:52:17 GMT  
		Size: 9.5 MB (9480760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:586ac22707ead8a14ad6ae745a4c231538e6215c7a702ccad147b5251b3ea66c`  
		Last Modified: Thu, 07 Feb 2019 15:52:16 GMT  
		Size: 3.9 MB (3918458 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c5565830197f8831e23db2438cc94b7a2c5b37186bfa8adc7d45c22ef585b48`  
		Last Modified: Thu, 07 Feb 2019 15:52:41 GMT  
		Size: 46.4 MB (46384822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5370b94bbf4c92c5666de9cc4fb5cd4adc949efd67022a1741eaf49efcb57ac9`  
		Last Modified: Sat, 02 Mar 2019 13:28:02 GMT  
		Size: 199.9 MB (199862487 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58fa75b5c7c8721b25d0cb5861988efccab0d665728c4d9af0c28d61dea160b9`  
		Last Modified: Sat, 02 Mar 2019 14:26:02 GMT  
		Size: 5.3 MB (5280952 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:010ed9f622e66725bc487655a9d80f7f47edd006a99102f62f980912283d8b2d`  
		Last Modified: Sat, 02 Mar 2019 14:26:24 GMT  
		Size: 21.1 MB (21076564 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f39eaf6eda9b8e6f0295f7d7ee97d749ce17b5282ea5345dcd1a5137c44b2ae`  
		Last Modified: Sat, 02 Mar 2019 14:26:16 GMT  
		Size: 242.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5a75be0bffc03153df1821e392e94075185668bf0dfc17e39d123cab1d6a607c`  
		Last Modified: Sat, 02 Mar 2019 14:26:17 GMT  
		Size: 1.8 MB (1813397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e92e54f396470c7a21e870906682df9f0555ba09399844318c066cacce2e3b43`  
		Last Modified: Sat, 02 Mar 2019 15:27:02 GMT  
		Size: 385.6 KB (385557 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14218e5754ba80ebed1ce99b9b25fe57ab7aff6c702f093334d70f6457e82f3e`  
		Last Modified: Sat, 02 Mar 2019 15:27:03 GMT  
		Size: 2.6 MB (2594539 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:latest` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:21d5f0462fd5978dc0b78559460d708a38990eb41597bc29883622410cd1bc76
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.2 MB (339195992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55559ffd17ba6b49c1291e57bd86c4fc4020a70d688069c621b3bda3482051e1`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 06 Feb 2019 10:08:56 GMT
ADD file:4c7b5bcb5c347fb36236917e364936a9762b8bd6e8585c33379120f01c3a8d85 in / 
# Wed, 06 Feb 2019 10:08:58 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 10:37:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:38:20 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 10:39:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 10:49:31 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 16:40:09 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 16:40:10 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 16:40:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 16:40:39 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 06 Feb 2019 16:40:40 GMT
ENV PYTHON_VERSION=3.7.2
# Wed, 06 Feb 2019 16:46:46 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Wed, 06 Feb 2019 16:46:49 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Fri, 22 Feb 2019 10:43:09 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Fri, 22 Feb 2019 10:43:31 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 22 Feb 2019 10:43:32 GMT
CMD ["python3"]
# Fri, 22 Feb 2019 14:46:33 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Fri, 22 Feb 2019 14:46:34 GMT
ADD dir:a05a45ee9f2f6abd81608e27a8160f322fc7835a3647d93b6cd365a9e58a0b3a in /opt/hylang/hy 
# Fri, 22 Feb 2019 14:46:50 GMT
RUN pip3 install -e /opt/hylang/hy
# Fri, 22 Feb 2019 14:46:51 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:12bb1c82b086301ca1c22eabf3add7cd229f27b63ca4b0924e2356051d9e7194`  
		Last Modified: Wed, 06 Feb 2019 10:14:28 GMT  
		Size: 43.1 MB (43124977 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:730f6528b47c72f6dd5aabc947e8db01aa470adc3fdb4bbbcf052f9c3ad6ae8e`  
		Last Modified: Wed, 06 Feb 2019 10:52:36 GMT  
		Size: 9.7 MB (9728878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63b5f3607713f2dab247e619fafcffd7c9edf4aaffc9e701660a76ccf324b742`  
		Last Modified: Wed, 06 Feb 2019 10:52:28 GMT  
		Size: 4.1 MB (4093098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5001a1d2fe2f54da8dbdfca56862dd05d37d1a2aab69599bcc2a130ea4fcd7f5`  
		Last Modified: Wed, 06 Feb 2019 10:52:48 GMT  
		Size: 48.0 MB (48005411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e66d2086edc74aef75bdc93948cfe17fbded92e8ed4f4d39a1ecb70de979bd1f`  
		Last Modified: Wed, 06 Feb 2019 11:21:45 GMT  
		Size: 201.7 MB (201686969 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4fda9c0b8b760b81baf4d66aa3b703196ecfbb08ff750cd65b973ef8baee3566`  
		Last Modified: Wed, 06 Feb 2019 19:05:42 GMT  
		Size: 5.6 MB (5584112 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3292200a059d459acbe0867a2ea41f1d4bddedbb316b1dcffbd46b1bd5746c6`  
		Last Modified: Wed, 06 Feb 2019 19:05:49 GMT  
		Size: 22.2 MB (22178926 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8117e30e969e8b0e58009c1dc20caef4978a90ee39769c3d356d9da77b1965e9`  
		Last Modified: Wed, 06 Feb 2019 19:05:39 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1970e586813b7043e6e9f7c240159927cb5e4f4901ba1f38807237eff5884767`  
		Last Modified: Fri, 22 Feb 2019 11:01:06 GMT  
		Size: 1.8 MB (1813181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32eda01c4f79395b3036d07cf62a3776b56c226d6f2a1c6453a8e304c90855bf`  
		Last Modified: Fri, 22 Feb 2019 14:47:04 GMT  
		Size: 385.5 KB (385532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06e7feb07b62f92093890ac2defe8a6f2ac9b7c5c9ccc815228a90e1dc3ae3db`  
		Last Modified: Fri, 22 Feb 2019 14:47:05 GMT  
		Size: 2.6 MB (2594667 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:latest` - linux; 386

```console
$ docker pull hylang@sha256:33e6cae277fcb4310cace45832843a6b7dec13f5425c80fd9a2bbb1756e5ff78
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.3 MB (364348549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a274a6171da5919bbf32f0695c8ebcbca0da510ca5d6a458b4e425c073979f1`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 06 Feb 2019 12:01:07 GMT
ADD file:70c26933810136bdb5c394bab98ac1119dd6ab650db410d21a0a16098b8a6ae2 in / 
# Wed, 06 Feb 2019 12:01:08 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:49:34 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:49:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 01:50:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:52:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 09:27:02 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Feb 2019 09:27:02 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 09:27:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 09:27:13 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 07 Feb 2019 09:27:13 GMT
ENV PYTHON_VERSION=3.7.2
# Thu, 07 Feb 2019 09:29:37 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Thu, 07 Feb 2019 09:29:37 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Fri, 22 Feb 2019 16:07:54 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Fri, 22 Feb 2019 16:08:00 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 22 Feb 2019 16:08:00 GMT
CMD ["python3"]
# Fri, 22 Feb 2019 19:13:20 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Fri, 22 Feb 2019 19:13:20 GMT
ADD dir:a05a45ee9f2f6abd81608e27a8160f322fc7835a3647d93b6cd365a9e58a0b3a in /opt/hylang/hy 
# Fri, 22 Feb 2019 19:13:25 GMT
RUN pip3 install -e /opt/hylang/hy
# Fri, 22 Feb 2019 19:13:25 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:56c1dc1a93dfeb7eb66abd8197c3fdfe7d7393c9757be0a44ca2f624b6e5c684`  
		Last Modified: Wed, 06 Feb 2019 12:07:42 GMT  
		Size: 46.1 MB (46069815 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d401cb48eb9dd4b814e64479a4a5e9150a56d439c01778f0b95ff0689f82cd17`  
		Last Modified: Thu, 07 Feb 2019 02:03:03 GMT  
		Size: 10.8 MB (10799008 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c068a67acc556d25d2fd2dc13d5929a34ee0395cd208b418f73bf15fc17e0955`  
		Last Modified: Thu, 07 Feb 2019 02:03:02 GMT  
		Size: 4.6 MB (4560874 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a009f6fe22ae181ab29d9455c5e577e663191ee6f4a9a0483ab44d91e775d853`  
		Last Modified: Thu, 07 Feb 2019 02:03:23 GMT  
		Size: 51.6 MB (51593479 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0353d5e9a3eadb094532d11bc6c475a4e4141ad95ad02670c6c1a0cdda80f22`  
		Last Modified: Thu, 07 Feb 2019 02:04:19 GMT  
		Size: 219.3 MB (219329297 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:66aad198e48852c332bd9204b77fce0a1f062dae4d092585b3ab178aef67b77d`  
		Last Modified: Thu, 07 Feb 2019 09:58:45 GMT  
		Size: 6.1 MB (6147083 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e7b34f739e39b7b2a24620ee0ff4eba17795ae9dc06a199f110b71206b4b5178`  
		Last Modified: Thu, 07 Feb 2019 09:58:48 GMT  
		Size: 21.1 MB (21055995 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:51138397ef3c03573ebebceb4ae164d1a002b7a4773d1b6f4a919ef551a176de`  
		Last Modified: Thu, 07 Feb 2019 09:58:43 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89432735648980d91799e53d02a661b63837ed2550d5df7ea51978a6ab88bb95`  
		Last Modified: Fri, 22 Feb 2019 16:33:47 GMT  
		Size: 1.8 MB (1813150 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:42ac1423ce5c46c8669e7f15db3c6f90495ac3dacd156a597394ea67c8e910f9`  
		Last Modified: Fri, 22 Feb 2019 19:13:40 GMT  
		Size: 385.5 KB (385527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61c915d22b2635df65dcef134721ec43d132d26dbc1ccd0509e3839d45a2213e`  
		Last Modified: Fri, 22 Feb 2019 19:13:35 GMT  
		Size: 2.6 MB (2594080 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:latest` - linux; ppc64le

```console
$ docker pull hylang@sha256:665ed785486b9b71185b858b099d582e5970a1dbd450b2dd5ed2f03e2516a089
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.3 MB (353293131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04336c61579a002646e055f6e5ab5772b17f4df55a40b82d15a7ccc0d299afff`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 06 Feb 2019 09:26:33 GMT
ADD file:dbc825fea111271dd16d8443e8df30f00e4bfb82365f49430e4b697866955e25 in / 
# Wed, 06 Feb 2019 09:26:35 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 19:08:23 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:08:44 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 19:10:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 19:17:48 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 02:34:42 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Feb 2019 02:34:44 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 02:35:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 02:35:10 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Thu, 07 Feb 2019 02:35:13 GMT
ENV PYTHON_VERSION=3.7.2
# Thu, 07 Feb 2019 02:37:59 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Thu, 07 Feb 2019 02:38:03 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Fri, 22 Feb 2019 10:18:35 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Fri, 22 Feb 2019 10:18:52 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Fri, 22 Feb 2019 10:18:55 GMT
CMD ["python3"]
# Fri, 22 Feb 2019 12:15:48 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Fri, 22 Feb 2019 12:15:50 GMT
ADD dir:a05a45ee9f2f6abd81608e27a8160f322fc7835a3647d93b6cd365a9e58a0b3a in /opt/hylang/hy 
# Fri, 22 Feb 2019 12:16:05 GMT
RUN pip3 install -e /opt/hylang/hy
# Fri, 22 Feb 2019 12:16:08 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:3c6e73e1f3f727588bd1de44f5524879a3591bba13b256a67f0a03adbb788322`  
		Last Modified: Wed, 06 Feb 2019 09:30:55 GMT  
		Size: 45.6 MB (45616945 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d31cd7008a155452b9ece7c7dab0d6e7567ef8c55f2df5ff999e45c309031982`  
		Last Modified: Wed, 06 Feb 2019 19:28:30 GMT  
		Size: 10.0 MB (9986460 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8f96c2690a341be01eb7e79a7624948d65549f3a26a1adc1b9a5a669523505ea`  
		Last Modified: Wed, 06 Feb 2019 19:28:28 GMT  
		Size: 4.3 MB (4295659 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:809222cf915d3e4f6467ca885b8fd6119aac0d5b2dfc37e9ea338ee407314063`  
		Last Modified: Wed, 06 Feb 2019 19:29:02 GMT  
		Size: 50.1 MB (50065346 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ee3c546eacd7883001479d8522303bee995c1516b194937c78ccbddb2f6bd0b`  
		Last Modified: Wed, 06 Feb 2019 19:30:16 GMT  
		Size: 209.9 MB (209897599 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b017ccc7e8349d626314d8cd74b830963c24416507af5d6a5274ace2f4191e35`  
		Last Modified: Thu, 07 Feb 2019 02:51:38 GMT  
		Size: 5.9 MB (5865637 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:384b45aad79958ca5d5e13db89d340dddfc7ef8897940a3f7837f2d173af59e6`  
		Last Modified: Thu, 07 Feb 2019 02:51:43 GMT  
		Size: 22.8 MB (22771369 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e6e6240a723e13cc0f17d62cea643b6d199c465c03e6a3c7a1040c35d9b99ca`  
		Last Modified: Thu, 07 Feb 2019 02:51:37 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:89019e8c726eeb4452db1280273daa1f1197c572c8f7b5795a0433110b06fbf3`  
		Last Modified: Fri, 22 Feb 2019 10:34:11 GMT  
		Size: 1.8 MB (1813462 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:afa5b073b092bb20d07734012cf2c9b9c43d4b1274679084718be0cb93e88cf2`  
		Last Modified: Fri, 22 Feb 2019 12:16:19 GMT  
		Size: 385.6 KB (385550 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d371b50405541fc221889d4eec85e65193a28094d1d3fc4a64429e5b968e0895`  
		Last Modified: Fri, 22 Feb 2019 12:16:19 GMT  
		Size: 2.6 MB (2594864 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:latest` - linux; s390x

```console
$ docker pull hylang@sha256:80d7b7081496449d46ed76ae29d1dbcff08b317bb133d886c18321df3934716e
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **356.8 MB (356796652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d29fa3b723ed2a09ef763c7e22281d0efa4f25a554568c43fd1fd98801a820a`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 06 Feb 2019 12:43:08 GMT
ADD file:8c452240b3657ec4cc6568239a4d933bc75fd958464a3950f67912097968fff8 in / 
# Wed, 06 Feb 2019 12:43:08 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 15:27:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 15:27:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 15:28:21 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 12:50:01 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 14:47:52 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 02 Mar 2019 14:47:52 GMT
ENV LANG=C.UTF-8
# Sat, 02 Mar 2019 14:48:06 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Sat, 02 Mar 2019 14:51:38 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Sat, 02 Mar 2019 14:51:38 GMT
ENV PYTHON_VERSION=3.7.2
# Sat, 02 Mar 2019 14:54:31 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Sat, 02 Mar 2019 14:54:32 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 02 Mar 2019 14:54:32 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Sat, 02 Mar 2019 14:54:39 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 02 Mar 2019 14:54:39 GMT
CMD ["python3"]
# Sat, 02 Mar 2019 16:50:40 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Sat, 02 Mar 2019 16:50:40 GMT
ADD dir:a05a45ee9f2f6abd81608e27a8160f322fc7835a3647d93b6cd365a9e58a0b3a in /opt/hylang/hy 
# Sat, 02 Mar 2019 16:50:45 GMT
RUN pip3 install -e /opt/hylang/hy
# Sat, 02 Mar 2019 16:50:45 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:e6786603fdb9e4ea361b73be3870f1118d3882c1619dfbbf9dec4d483fa32e76`  
		Last Modified: Wed, 06 Feb 2019 12:46:43 GMT  
		Size: 45.2 MB (45214898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cac487c4bc63f07da92ff3259ca4d0fb30f86c5647f775010d11e6d51131b848`  
		Last Modified: Wed, 06 Feb 2019 15:34:22 GMT  
		Size: 10.3 MB (10312678 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3e9925f73763aaae5f9ccd2b0c87ae90efbee12ee8698074a1056e25c2e6360`  
		Last Modified: Wed, 06 Feb 2019 15:34:21 GMT  
		Size: 4.4 MB (4371900 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9cf6b44fbf659d16c99bbf57d1ee87ae0e6827f8aaa82012f87f1f031f655da5`  
		Last Modified: Wed, 06 Feb 2019 15:34:38 GMT  
		Size: 50.5 MB (50487526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57e9ddf73c7e98c06ba03cca4c87e276a262aebf65dad84d83cc373cb70a1b95`  
		Last Modified: Sat, 02 Mar 2019 12:54:41 GMT  
		Size: 211.5 MB (211477973 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:081735651488bf9eee9d619a1a88d4d611b1b86d683685395bbfc3f8dd9f5da1`  
		Last Modified: Sat, 02 Mar 2019 15:07:57 GMT  
		Size: 5.9 MB (5896623 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9b182e5a0cdc0667518d1717d68098640fa00197a19d16d2a4917f5865abd96`  
		Last Modified: Sat, 02 Mar 2019 15:08:20 GMT  
		Size: 24.2 MB (24242288 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2af3e91e4308491ed6c57ccf5a137ab60d402f4f84c4e7a92125e8f76ab968ab`  
		Last Modified: Sat, 02 Mar 2019 15:08:13 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4472a111ba9d6e703756152006b88af9b43a9580c3b5d540063675e0d37ef2d5`  
		Last Modified: Sat, 02 Mar 2019 15:08:14 GMT  
		Size: 1.8 MB (1813125 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:058b7da2b005bda1a71934f49e499a4b6b59e1ecfeb1b4f9abe5efb1704aebcf`  
		Last Modified: Sat, 02 Mar 2019 16:50:55 GMT  
		Size: 385.5 KB (385526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bed4caa8ae9f830b42b796d678fabb5f06309726568e2635004b612c31cd2d25`  
		Last Modified: Sat, 02 Mar 2019 16:50:55 GMT  
		Size: 2.6 MB (2593875 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
