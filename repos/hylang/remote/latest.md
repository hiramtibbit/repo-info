## `hylang:latest`

```console
$ docker pull hylang@sha256:64fc512015a792a45f19e944b9a7a6043fde0ca9a8e921a7d938c50213e5b8ef
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
$ docker pull hylang@sha256:563354019747e6d821b29a5663e43e3949aee3d1b2f160b3a49d9b0c982ed734
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **357.9 MB (357861191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:463f6b8daf9eadad0df20d0f628c4f96fe8b5ae4505203af6fd60c2ad423dc7b`
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
# Wed, 06 Feb 2019 05:53:42 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:02:34 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 12:02:34 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 12:02:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:02:45 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 06 Feb 2019 12:02:45 GMT
ENV PYTHON_VERSION=3.7.2
# Wed, 06 Feb 2019 12:05:36 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Wed, 06 Feb 2019 12:05:37 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 06 Feb 2019 12:05:37 GMT
ENV PYTHON_PIP_VERSION=19.0.1
# Wed, 06 Feb 2019 12:05:43 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 06 Feb 2019 12:05:43 GMT
CMD ["python3"]
# Wed, 06 Feb 2019 18:54:37 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Wed, 06 Feb 2019 18:54:38 GMT
ADD dir:a05a45ee9f2f6abd81608e27a8160f322fc7835a3647d93b6cd365a9e58a0b3a in /opt/hylang/hy 
# Wed, 06 Feb 2019 18:54:44 GMT
RUN pip3 install -e /opt/hylang/hy
# Wed, 06 Feb 2019 18:54:45 GMT
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
	-	`sha256:65c95cb8b3be70ecc403d2622ee4098d481d1b95c0e6ed70fa0582cf31a961d1`  
		Last Modified: Wed, 06 Feb 2019 06:03:01 GMT  
		Size: 214.3 MB (214278093 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9107d7193263113e6dd3fc145884f6598683ee54ec538aaaa72f655fe72f60d9`  
		Last Modified: Wed, 06 Feb 2019 12:49:14 GMT  
		Size: 5.8 MB (5831654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd6f212ec9843df7e1b2132ebc8183a74aac3a2d23480575e53e489898e63dd3`  
		Last Modified: Wed, 06 Feb 2019 12:49:20 GMT  
		Size: 22.4 MB (22432277 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43288b101abf985efb20760b29943dd08866c7ec054dd64bf4fd442b44b5622e`  
		Last Modified: Wed, 06 Feb 2019 12:49:12 GMT  
		Size: 241.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cbc666ab4a652cde368d074c2ee0a32e0d427a5bdb61d3e9f539e56dcecc579e`  
		Last Modified: Wed, 06 Feb 2019 12:49:15 GMT  
		Size: 1.8 MB (1813938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:86779613da5a05fb01c52c30f970491e887d7d4c623c9696f835d04e99601e79`  
		Last Modified: Wed, 06 Feb 2019 18:54:54 GMT  
		Size: 385.5 KB (385517 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:183c0a61eb324d1a2285476375069e8ef0b7cbaecce1d0aeabb9848fdaf0496b`  
		Last Modified: Wed, 06 Feb 2019 18:54:54 GMT  
		Size: 2.6 MB (2590915 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:latest` - linux; arm variant v5

```console
$ docker pull hylang@sha256:75360b8aa8e309c076ac944ca41169592b698eeebcb60f4a873c6d3085106b1f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **340.7 MB (340718349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfc25f2155a6a8f4b15abd2f5c4c9a7758044d57ce7219f8e90f6f3bade74cdb`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 23 Jan 2019 09:54:27 GMT
ADD file:8ba047ef6412ca91461f1c03e2571c0760c1e7ce294814ec3523055f0b453994 in / 
# Wed, 23 Jan 2019 09:54:28 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:38:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:38:52 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 10:39:35 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:42:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:52:13 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:52:14 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 10:52:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:52:31 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 23 Jan 2019 10:52:32 GMT
ENV PYTHON_VERSION=3.7.2
# Wed, 23 Jan 2019 10:56:07 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Wed, 23 Jan 2019 10:56:09 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 26 Jan 2019 09:50:14 GMT
ENV PYTHON_PIP_VERSION=19.0.1
# Sat, 26 Jan 2019 09:50:24 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 26 Jan 2019 09:50:25 GMT
CMD ["python3"]
# Sat, 26 Jan 2019 10:22:47 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Sat, 26 Jan 2019 10:22:48 GMT
ADD dir:a05a45ee9f2f6abd81608e27a8160f322fc7835a3647d93b6cd365a9e58a0b3a in /opt/hylang/hy 
# Sat, 26 Jan 2019 10:22:56 GMT
RUN pip3 install -e /opt/hylang/hy
# Sat, 26 Jan 2019 10:22:57 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:4fa85838ca92a72d64f970f6d43c23ad625e644e7d2d6088bfccfc6b05f2ce41`  
		Last Modified: Wed, 23 Jan 2019 10:02:01 GMT  
		Size: 44.1 MB (44053619 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cc93c97f4e63346ff22fa9f2a1f468f1211ae4e1c468f823078577fe992699ba`  
		Last Modified: Wed, 23 Jan 2019 10:49:24 GMT  
		Size: 9.8 MB (9849321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bc0e54fcc14b17f4209b661fb8a20deeb88c9b3153c5fac3c35d0367633f22f2`  
		Last Modified: Wed, 23 Jan 2019 10:49:23 GMT  
		Size: 4.2 MB (4158594 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aa6e26dbd21ee93841f4c5c8d7e525447c626a675158cbe405e12ca3b58e889d`  
		Last Modified: Wed, 23 Jan 2019 10:49:47 GMT  
		Size: 48.3 MB (48284691 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4e672a29a6be7ea7354e467093d903f245b01922916d9bff6197affeaec36582`  
		Last Modified: Wed, 23 Jan 2019 10:50:53 GMT  
		Size: 202.5 MB (202521332 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:434df2318a4f7b5ea4d1d6a67a3c283bf2329c0a30e3e3e98d8a316eab5763ff`  
		Last Modified: Wed, 23 Jan 2019 15:20:38 GMT  
		Size: 5.6 MB (5612304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc1bc3c53e60ca0c33dc85b553196d21949fd5c71a813c39637b742fe0b23c58`  
		Last Modified: Wed, 23 Jan 2019 15:20:44 GMT  
		Size: 21.5 MB (21457990 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3a7b096afbf65f3f8268a993abe9de63802e2135524ed1d68469872f4992f0ff`  
		Last Modified: Wed, 23 Jan 2019 15:20:36 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0dc4b706eb8d8825f15a0ae2821a71af3b21679a2068c7267c5dbaec3de8b0d`  
		Last Modified: Sat, 26 Jan 2019 10:04:55 GMT  
		Size: 1.8 MB (1811749 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd1eb6baeb751c3f0aa0f86096bf74aaffeb31619d018d6fc9f8589bba2a63a8`  
		Last Modified: Sat, 26 Jan 2019 10:23:06 GMT  
		Size: 385.6 KB (385553 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1d3f099f0920db9e2349c865c54131cbe8b28421e1ff3211da594823ce9ee04c`  
		Last Modified: Sat, 26 Jan 2019 10:23:07 GMT  
		Size: 2.6 MB (2582957 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:latest` - linux; arm variant v7

```console
$ docker pull hylang@sha256:eac6387163126e2b7273c86ba5d18e821064905d3af77a0bf037394ef1d00c3a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **328.0 MB (328044680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:562823281e92bdd7d0686dadf95a780295df5af052921c9133993d364d9431dd`
-	Default Command: `["hy"]`

```dockerfile
# Wed, 23 Jan 2019 13:04:29 GMT
ADD file:f58fcfcac4bd31e03fe733b7c850ff7f67728d2532fc54252c02a91c66445c88 in / 
# Wed, 23 Jan 2019 13:04:29 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:44:17 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:44:26 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:45:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:47:02 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 14:56:44 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 14:56:45 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 14:56:58 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 14:56:59 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 23 Jan 2019 14:57:01 GMT
ENV PYTHON_VERSION=3.7.2
# Wed, 23 Jan 2019 15:00:33 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Wed, 23 Jan 2019 15:00:35 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 26 Jan 2019 13:05:36 GMT
ENV PYTHON_PIP_VERSION=19.0.1
# Sat, 26 Jan 2019 13:05:45 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 26 Jan 2019 13:05:46 GMT
CMD ["python3"]
# Sat, 26 Jan 2019 13:37:40 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Sat, 26 Jan 2019 13:37:41 GMT
ADD dir:a05a45ee9f2f6abd81608e27a8160f322fc7835a3647d93b6cd365a9e58a0b3a in /opt/hylang/hy 
# Sat, 26 Jan 2019 13:37:49 GMT
RUN pip3 install -e /opt/hylang/hy
# Sat, 26 Jan 2019 13:37:49 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:d9d6acb4f2f3e6ab798235f9f094d5e343bad5a702bac8cf38e2569dfec4e284`  
		Last Modified: Wed, 23 Jan 2019 13:12:06 GMT  
		Size: 42.1 MB (42087731 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aaa7b6903fc66574eed3dd94d25c8ee0c27a478c84ff3219c4ce223b0233aeba`  
		Last Modified: Wed, 23 Jan 2019 14:05:44 GMT  
		Size: 9.5 MB (9480423 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2011a5c4d9cbe6e42446717e9f145d3264c681a9a7be23834c6d1989afab2dfc`  
		Last Modified: Wed, 23 Jan 2019 14:05:42 GMT  
		Size: 3.9 MB (3918464 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c86082f3b932fde1cbab5c105aaf51102e5f988ccb1efae3a9798b8cc65d8138`  
		Last Modified: Wed, 23 Jan 2019 14:06:12 GMT  
		Size: 46.4 MB (46384664 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:707e6dddd4d8778170a6840d9de2952b30ea37f1b1099242a14e8d0002b1f6d3`  
		Last Modified: Wed, 23 Jan 2019 14:07:14 GMT  
		Size: 195.0 MB (195037982 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e6c20943b770b6cee71ce6370fe4f89828f5753feefecdeffea9a66256e4136`  
		Last Modified: Wed, 23 Jan 2019 16:26:50 GMT  
		Size: 5.3 MB (5278579 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9058fdbb3732ab8537b6b3096cc553465c9abd6385b13dc77120ccd7f0582299`  
		Last Modified: Wed, 23 Jan 2019 16:26:55 GMT  
		Size: 21.1 MB (21076194 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0205f4d7156f5d431c13d655d92c82f71350f0920e32104cc66f52b27b29b7a6`  
		Last Modified: Wed, 23 Jan 2019 16:26:48 GMT  
		Size: 239.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78c775cd88d94df6df6bd0f719020e3f33d858e1b59066fbf89d41a4548713ad`  
		Last Modified: Sat, 26 Jan 2019 13:19:45 GMT  
		Size: 1.8 MB (1811849 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38c4139e25694ae83683083469d663cb90e0ffc27d1236a80bcfe0f43394ae7b`  
		Last Modified: Sat, 26 Jan 2019 13:37:58 GMT  
		Size: 385.6 KB (385552 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a11092012ba7ad8f59515262b5b7e241bbb2071a1878ba6a4ace4bb486126ab5`  
		Last Modified: Sat, 26 Jan 2019 13:37:59 GMT  
		Size: 2.6 MB (2583003 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:latest` - linux; arm64 variant v8

```console
$ docker pull hylang@sha256:7ce3546c6d1e404a056d6adf1caf957f07e4af88c863718d82f2423180675a47
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **339.2 MB (339175616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:594c333a23a6ed91485db2634d993942b1174f428646cccf2731f7fd9e17ae8c`
-	Default Command: `["hy"]`

```dockerfile
# Sat, 29 Dec 2018 10:08:10 GMT
ADD file:8238e4e08413d772a0383ef64eccc0448c682834c018a28e87a568a33b0da788 in / 
# Sat, 29 Dec 2018 10:08:11 GMT
CMD ["bash"]
# Sat, 29 Dec 2018 12:10:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Sat, 29 Dec 2018 12:11:00 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Sat, 29 Dec 2018 12:13:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 10:39:50 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 15:01:22 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Jan 2019 15:01:23 GMT
ENV LANG=C.UTF-8
# Wed, 09 Jan 2019 15:01:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 09 Jan 2019 15:01:55 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 09 Jan 2019 15:01:57 GMT
ENV PYTHON_VERSION=3.7.2
# Wed, 09 Jan 2019 15:08:11 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Wed, 09 Jan 2019 15:08:13 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Sat, 26 Jan 2019 10:44:12 GMT
ENV PYTHON_PIP_VERSION=19.0.1
# Sat, 26 Jan 2019 10:44:36 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 26 Jan 2019 10:44:37 GMT
CMD ["python3"]
# Sat, 26 Jan 2019 11:25:53 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Sat, 26 Jan 2019 11:25:54 GMT
ADD dir:a05a45ee9f2f6abd81608e27a8160f322fc7835a3647d93b6cd365a9e58a0b3a in /opt/hylang/hy 
# Sat, 26 Jan 2019 11:26:07 GMT
RUN pip3 install -e /opt/hylang/hy
# Sat, 26 Jan 2019 11:26:08 GMT
CMD ["hy"]
```

-	Layers:
	-	`sha256:ed1ec7511bfa23f7413f2fc49fb5b111ef33638df9a60111a2c282a2f78a7653`  
		Last Modified: Sat, 29 Dec 2018 10:14:38 GMT  
		Size: 43.1 MB (43116478 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adb2bf3fc8884b0bfbf3d5317df5126bdd1911341a1d0736bca48b0043d81785`  
		Last Modified: Sat, 29 Dec 2018 13:33:28 GMT  
		Size: 9.7 MB (9728682 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:795dadfe0a1e898d47690c9839194ddb1373266c1883d742f4b8d5872be25b8c`  
		Last Modified: Sat, 29 Dec 2018 13:33:25 GMT  
		Size: 4.1 MB (4093166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b3909cbce85809e95cb66a5b6e819717d1857f55a876c03fa1d9e885c2b0d9a2`  
		Last Modified: Sat, 29 Dec 2018 13:33:57 GMT  
		Size: 48.0 MB (48005935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:941a4a78888df655b6bdab6a3329932428c761d32ffaa6befe735006447297de`  
		Last Modified: Wed, 09 Jan 2019 11:03:11 GMT  
		Size: 201.7 MB (201687775 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61ab7b7c4ed73bd0b8a821d83ee3337387bc367e0a3eef267a9c20910625b953`  
		Last Modified: Wed, 09 Jan 2019 15:36:43 GMT  
		Size: 5.6 MB (5584271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:137657d77acec3efbec4c5c09a5c0269da6b2c59c375453397e6af7f49c00d43`  
		Last Modified: Wed, 09 Jan 2019 15:36:51 GMT  
		Size: 22.2 MB (22178958 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b8ee045df587e1be71b09c4a7ba2c1e240eddfca84b77af5022b7850e3c4f41`  
		Last Modified: Wed, 09 Jan 2019 15:36:43 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62d77bb74f86e67cce5b865c0cada57cc180142043ec4e6c8b6b9a269a66fc22`  
		Last Modified: Sat, 26 Jan 2019 10:59:14 GMT  
		Size: 1.8 MB (1811586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a7e6fa563483e5572caa1fa0ebb4704dde99790e14bf7a6d5c7ce15154ecb7cc`  
		Last Modified: Sat, 26 Jan 2019 11:26:19 GMT  
		Size: 385.5 KB (385515 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f245449e4bfa502bb05e9da13a168100db049369312aaee782865ea0fcdee11`  
		Last Modified: Sat, 26 Jan 2019 11:26:20 GMT  
		Size: 2.6 MB (2583010 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:latest` - linux; 386

```console
$ docker pull hylang@sha256:f9664edc1db16ace1bd26abbf3d0d9a340b953934cddc0b839ed2e0b628b7079
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.3 MB (364346191 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6994a6033f8c90047b4c371efb8d25ffb183ccd281f13dd6f54a66bc6b70c484`
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
# Thu, 07 Feb 2019 09:29:38 GMT
ENV PYTHON_PIP_VERSION=19.0.1
# Thu, 07 Feb 2019 09:29:43 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 07 Feb 2019 09:29:43 GMT
CMD ["python3"]
# Thu, 07 Feb 2019 10:01:13 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Thu, 07 Feb 2019 10:01:13 GMT
ADD dir:a05a45ee9f2f6abd81608e27a8160f322fc7835a3647d93b6cd365a9e58a0b3a in /opt/hylang/hy 
# Thu, 07 Feb 2019 10:01:18 GMT
RUN pip3 install -e /opt/hylang/hy
# Thu, 07 Feb 2019 10:01:18 GMT
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
	-	`sha256:72f2b5837726c95bab8192fb4aed92f9b2ae4f0aa6994fecf91ea54e0be6ff9a`  
		Last Modified: Thu, 07 Feb 2019 09:58:44 GMT  
		Size: 1.8 MB (1813993 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a178b03511453bb9335f821a8f030dd2232e66807d1e9d7ea86191d1b8a51840`  
		Last Modified: Thu, 07 Feb 2019 10:01:25 GMT  
		Size: 385.5 KB (385523 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac4902124b043210f7c9eb86c750309f89cd1e5ae5091f8984b3441ac2fa272`  
		Last Modified: Thu, 07 Feb 2019 10:01:25 GMT  
		Size: 2.6 MB (2590883 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:latest` - linux; ppc64le

```console
$ docker pull hylang@sha256:ad7cfe9157b84ae2a6aea6cf3fc2087059f7a2d9a2c0fc0e86ca562c2d590437
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **353.3 MB (353290203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42c18d52051290f9de361cf97e20b63e59999e3d6f0f1d4e192de5c4e4667a10`
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
# Thu, 07 Feb 2019 02:38:06 GMT
ENV PYTHON_PIP_VERSION=19.0.1
# Thu, 07 Feb 2019 02:38:19 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 07 Feb 2019 02:38:20 GMT
CMD ["python3"]
# Thu, 07 Feb 2019 02:54:54 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Thu, 07 Feb 2019 02:54:55 GMT
ADD dir:a05a45ee9f2f6abd81608e27a8160f322fc7835a3647d93b6cd365a9e58a0b3a in /opt/hylang/hy 
# Thu, 07 Feb 2019 02:55:07 GMT
RUN pip3 install -e /opt/hylang/hy
# Thu, 07 Feb 2019 02:55:09 GMT
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
	-	`sha256:a82780b8f4f06ef9f842a7b399284c3a83db54b826bb53ba2479be2dbd4a527f`  
		Last Modified: Thu, 07 Feb 2019 02:51:37 GMT  
		Size: 1.8 MB (1814236 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc0fc86a806cad3b85fee6e7c0a06fe724f006635309d55bb2e0a0a53bac379c`  
		Last Modified: Thu, 07 Feb 2019 02:55:20 GMT  
		Size: 385.5 KB (385546 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b857112e6ca2466a8862fe7b29439448c467b89221d6e11abba0cd269d01502a`  
		Last Modified: Thu, 07 Feb 2019 02:55:21 GMT  
		Size: 2.6 MB (2591166 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `hylang:latest` - linux; s390x

```console
$ docker pull hylang@sha256:8f31a1e4e05165d4cad6e2eae72969bde7065556bb3c9ec24e302300f7501f91
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **350.8 MB (350794155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba36fad93afae4239cafb9d859ee5b7fb7db08bc35391b64261a471bd497f021`
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
# Wed, 06 Feb 2019 15:29:25 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:10:08 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 20:10:08 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 20:10:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 		uuid-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 20:10:19 GMT
ENV GPG_KEY=0D96DF4D4110E5C43FBFB17F2D347EA6AA65421D
# Wed, 06 Feb 2019 20:10:19 GMT
ENV PYTHON_VERSION=3.7.2
# Wed, 06 Feb 2019 20:12:08 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-loadable-sqlite-extensions 		--enable-shared 		--with-system-expat 		--with-system-ffi 		--without-ensurepip 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python3 --version
# Wed, 06 Feb 2019 20:12:08 GMT
RUN cd /usr/local/bin 	&& ln -s idle3 idle 	&& ln -s pydoc3 pydoc 	&& ln -s python3 python 	&& ln -s python3-config python-config
# Wed, 06 Feb 2019 20:12:09 GMT
ENV PYTHON_PIP_VERSION=19.0.1
# Wed, 06 Feb 2019 20:12:13 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 06 Feb 2019 20:12:14 GMT
CMD ["python3"]
# Wed, 06 Feb 2019 21:07:25 GMT
MAINTAINER Paul R. Tagliamonte <paultag@hylang.org>
# Wed, 06 Feb 2019 21:07:26 GMT
ADD dir:a05a45ee9f2f6abd81608e27a8160f322fc7835a3647d93b6cd365a9e58a0b3a in /opt/hylang/hy 
# Wed, 06 Feb 2019 21:07:29 GMT
RUN pip3 install -e /opt/hylang/hy
# Wed, 06 Feb 2019 21:07:30 GMT
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
	-	`sha256:657eff8927c604d94946b4857f386e9079f929bb8ad0a43e7b81f543fb002681`  
		Last Modified: Wed, 06 Feb 2019 15:35:14 GMT  
		Size: 205.5 MB (205480203 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53347f062da5a0dc245644aaa0857226631d2f7056f7d2e9e3cc56b19e71c072`  
		Last Modified: Wed, 06 Feb 2019 20:21:21 GMT  
		Size: 5.9 MB (5894347 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1bba274eda91279ac2f5779f85a3cd8d4ff9f5c7240d1a3031168af43f7eb23f`  
		Last Modified: Wed, 06 Feb 2019 20:21:26 GMT  
		Size: 24.2 MB (24242250 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6273e8288ee30c6b6d37d89a9f6e8682e6028c018e6ec5b6a7662757d61a067c`  
		Last Modified: Wed, 06 Feb 2019 20:21:20 GMT  
		Size: 240.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:615da9e8a3d6e58202b293d8c03a83b4bd53acac670982695c79b43562eff4d1`  
		Last Modified: Wed, 06 Feb 2019 20:21:21 GMT  
		Size: 1.8 MB (1813929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:30da59d78304220b6f4f24e523b36da8742678cbd120f9cd3fff2917fa5d42bf`  
		Last Modified: Wed, 06 Feb 2019 21:07:41 GMT  
		Size: 385.5 KB (385518 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23255fb99e3a577f5853f701583464f6236067383ee741b4764024dc1de54920`  
		Last Modified: Wed, 06 Feb 2019 21:07:42 GMT  
		Size: 2.6 MB (2590666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
