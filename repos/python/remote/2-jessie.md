## `python:2-jessie`

```console
$ docker pull python@sha256:a8e9ce6be9adeb0cd0cead2b0bb604bb16576f5012cfed921245e49dea75ce93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `python:2-jessie` - linux; amd64

```console
$ docker pull python@sha256:92ab5263544fd10e6fe0cf52163474d46af66ff93fad3af6055d74d790f8a32f
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.2 MB (273212965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1ba8e3d07fdf422a450b3f8565b3bafe4c5b613b5fc05b59b0bc69d7e34dd56`
-	Default Command: `["python2"]`

```dockerfile
# Tue, 26 Mar 2019 22:39:37 GMT
ADD file:ca3bf06a040bfe3d0d727326698ec36f9578bf9c8f6fe1050b7d85a3dd241112 in / 
# Tue, 26 Mar 2019 22:39:37 GMT
CMD ["bash"]
# Tue, 26 Mar 2019 23:17:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:17:19 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 26 Mar 2019 23:19:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:24:05 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 26 Mar 2019 23:50:49 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 26 Mar 2019 23:50:50 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 10:00:22 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 27 Mar 2019 10:03:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:03:10 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 27 Mar 2019 10:03:10 GMT
ENV PYTHON_VERSION=2.7.16
# Wed, 27 Mar 2019 10:06:31 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 27 Mar 2019 10:06:31 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Wed, 27 Mar 2019 10:06:39 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 27 Mar 2019 10:06:43 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 27 Mar 2019 10:06:43 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:bf295113f40dde5826c75de78b0aaa190302b3b467a3d6a3f222498b0ad1cea3`  
		Last Modified: Tue, 26 Mar 2019 22:43:06 GMT  
		Size: 54.4 MB (54382913 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62fe5b9a5ae4df86ade5163499bec6552c354611960eabfc7f1391f9e9f57945`  
		Last Modified: Tue, 26 Mar 2019 23:30:21 GMT  
		Size: 17.5 MB (17541227 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cc848917b0a4c37d6f00a2db476e407c6b36ce371a07e421e1b3b943ed64cba`  
		Last Modified: Tue, 26 Mar 2019 23:30:34 GMT  
		Size: 43.3 MB (43313715 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:053381643ee38d023c962f8789bb89be21aca864723989f7f69add5f56bd0472`  
		Last Modified: Tue, 26 Mar 2019 23:31:03 GMT  
		Size: 132.2 MB (132184295 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ca891295e24e1a46273f501996aeaa862fb1338675b77315a2364b594b717ef`  
		Last Modified: Wed, 27 Mar 2019 10:24:37 GMT  
		Size: 5.8 MB (5750661 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:75fddb0d0a8fce5b736130bd91b980f76b038e485c58908b5627b73248c00663`  
		Last Modified: Wed, 27 Mar 2019 10:24:39 GMT  
		Size: 14.5 MB (14517011 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5902eaa20ee56c989d0208d4f226beea540dacd951790de6f6ad35f11fe4e4e3`  
		Last Modified: Wed, 27 Mar 2019 10:24:36 GMT  
		Size: 1.8 MB (1809935 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a5ee3b7094b3291725528df81d3b71918425da81199a93f53ee1af44cbd6429c`  
		Last Modified: Wed, 27 Mar 2019 10:24:36 GMT  
		Size: 3.7 MB (3713208 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-jessie` - linux; arm variant v5

```console
$ docker pull python@sha256:afdc2932e26968595b3e1fae18061bf409fc66d56f6680ee6c8c7c4f5ea21397
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.9 MB (252901739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d8e3a28f694564e875dfee1a3e4f197472f80007e46673c5443fa35cf710479`
-	Default Command: `["python2"]`

```dockerfile
# Wed, 27 Mar 2019 08:50:20 GMT
ADD file:3c356511cef57ac0765cb3dbc44849681160eed0da2bab71abbdfdf87a2f3c66 in / 
# Wed, 27 Mar 2019 08:50:21 GMT
CMD ["bash"]
# Wed, 27 Mar 2019 09:37:11 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:37:13 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 27 Mar 2019 09:38:53 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 09:44:39 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 10:43:34 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 27 Mar 2019 10:43:35 GMT
ENV LANG=C.UTF-8
# Wed, 27 Mar 2019 11:28:57 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 27 Mar 2019 11:29:55 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 27 Mar 2019 11:29:56 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 27 Mar 2019 11:29:56 GMT
ENV PYTHON_VERSION=2.7.16
# Wed, 27 Mar 2019 11:32:46 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 27 Mar 2019 11:32:47 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Wed, 27 Mar 2019 11:32:57 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 27 Mar 2019 11:33:01 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 27 Mar 2019 11:33:02 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:35faed585909f6e9e85497a99e01695f4aeb8262181d87fcafd6f815fe5aa8c8`  
		Last Modified: Wed, 27 Mar 2019 08:56:55 GMT  
		Size: 52.6 MB (52571358 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c19004d17af2e3c968fdff26408889aa5005d87283ecbfba81c84b0ffebb84b1`  
		Last Modified: Wed, 27 Mar 2019 10:07:13 GMT  
		Size: 17.0 MB (17032562 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd59e10a24df3a15e158152abd46f57ef5c0627f24b262fa9e975343159b08e3`  
		Last Modified: Wed, 27 Mar 2019 10:07:36 GMT  
		Size: 41.2 MB (41155805 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a4f5b3e605bfd1cd387a9238b21445358eae417a1f9afde9c18417a7c516e11c`  
		Last Modified: Wed, 27 Mar 2019 10:08:10 GMT  
		Size: 116.7 MB (116670549 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0d60dd15bc0e9d576adeef9f80523f8621f9571db450f3e7a4ede69ddf0a5177`  
		Last Modified: Wed, 27 Mar 2019 11:45:18 GMT  
		Size: 5.5 MB (5501666 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:76ed0bc8f1bac2d688ce35413f190d56212c954d421f8b2fb2939ac72a42fefd`  
		Last Modified: Wed, 27 Mar 2019 11:45:21 GMT  
		Size: 14.4 MB (14445891 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0fa2e41e04d68aa5a562f69a63d6de51b439011cf2c50bb6c1def91707392310`  
		Last Modified: Wed, 27 Mar 2019 11:45:17 GMT  
		Size: 1.8 MB (1810102 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59fa36c82fe31e8e6e99ad6b3b6ad18fdafacdda9a97fb2cd551211d611779d8`  
		Last Modified: Wed, 27 Mar 2019 11:45:17 GMT  
		Size: 3.7 MB (3713806 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-jessie` - linux; arm variant v7

```console
$ docker pull python@sha256:c36f84270d3b2e56f505ffd8cf2657e23e2af98858d5af14a3198afab7d83476
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.6 MB (246568330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9992540b7fdba9ba5b43b38176e9fb7af06cbeb9b7eedf1a7b8c3c551648c37c`
-	Default Command: `["python2"]`

```dockerfile
# Tue, 05 Mar 2019 13:05:29 GMT
ADD file:57888dd979a80adc65c1fdc390ca77df7dbb7549c7ce655276ef11f54284319a in / 
# Tue, 05 Mar 2019 13:05:30 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 13:40:51 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:40:54 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 13:42:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 13:46:14 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 14:59:02 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 14:59:03 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 15:47:34 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 05 Mar 2019 15:48:39 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 15:48:40 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 05 Mar 2019 15:48:42 GMT
ENV PYTHON_VERSION=2.7.16
# Tue, 05 Mar 2019 15:51:33 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 05 Mar 2019 15:51:33 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Tue, 05 Mar 2019 15:51:44 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 05 Mar 2019 15:51:49 GMT
RUN pip install --no-cache-dir virtualenv
# Tue, 05 Mar 2019 15:51:50 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:27fb1932f7b947e1aae56957f613528117f9be31e33b703972bcca01326c7045`  
		Last Modified: Tue, 05 Mar 2019 13:15:24 GMT  
		Size: 50.3 MB (50293558 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d6fb81616fd7699aa8083e0f181a045340e3b72ce596c8e46aafee6cc994cc6`  
		Last Modified: Tue, 05 Mar 2019 14:00:26 GMT  
		Size: 16.7 MB (16715898 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c29c6cc6f67119a0ab0bdbfad640aefd9792667b37f35b4af8c8a02a589ea4af`  
		Last Modified: Tue, 05 Mar 2019 14:00:46 GMT  
		Size: 39.8 MB (39761422 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:775ce5b2cecf95314a45f0e654ea7d4a272d66b5d2c9e802a967bd5dab4a2fb5`  
		Last Modified: Tue, 05 Mar 2019 14:01:08 GMT  
		Size: 115.0 MB (114951407 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98d1383fb30cf37e0ab5511105fcf67682a9a6e9c7f620952081a45b6d3a80eb`  
		Last Modified: Tue, 05 Mar 2019 15:59:25 GMT  
		Size: 5.2 MB (5189586 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:22d486dfec9be5d0b32f3531dc94a54a81009223b1c93061059727cc4e98b5e9`  
		Last Modified: Tue, 05 Mar 2019 15:59:29 GMT  
		Size: 14.1 MB (14132645 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:524ed3c39a83152e6d39909c75669dd80018c072be13b0b7929b924961350fec`  
		Last Modified: Tue, 05 Mar 2019 15:59:24 GMT  
		Size: 1.8 MB (1810098 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:597c4b6d58b8af95640a6e074cdf3a5b33be43d2d36abb6692db77074b6daaa5`  
		Last Modified: Tue, 05 Mar 2019 15:59:25 GMT  
		Size: 3.7 MB (3713716 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-jessie` - linux; 386

```console
$ docker pull python@sha256:0f76e763ef402258d3565b9f070d49f4296c02ea474a31501ecadf6115c6839a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.6 MB (279615367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3511505e6a2167d976c4d7eeed855eb71e31cd565ee1a8f6eeb981dfe5397374`
-	Default Command: `["python2"]`

```dockerfile
# Tue, 05 Mar 2019 11:40:55 GMT
ADD file:195af36095959161134ae0fc4d9bcb4aee6197916a6ee7b54451a229d2db3e89 in / 
# Tue, 05 Mar 2019 11:40:56 GMT
CMD ["bash"]
# Tue, 05 Mar 2019 20:59:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 20:59:46 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 05 Mar 2019 21:03:18 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 21:07:41 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 22:19:51 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 05 Mar 2019 22:19:51 GMT
ENV LANG=C.UTF-8
# Tue, 05 Mar 2019 22:39:26 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 05 Mar 2019 22:42:07 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 05 Mar 2019 22:42:07 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 05 Mar 2019 22:42:08 GMT
ENV PYTHON_VERSION=2.7.16
# Tue, 05 Mar 2019 22:44:08 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 05 Mar 2019 22:44:08 GMT
ENV PYTHON_PIP_VERSION=19.0.3
# Tue, 05 Mar 2019 22:44:14 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 05 Mar 2019 22:44:16 GMT
RUN pip install --no-cache-dir virtualenv
# Tue, 05 Mar 2019 22:44:17 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:f7ce4d781f3676a0be48b8d3d34d6f425e873120e0e4f57aa109f394b797292d`  
		Last Modified: Tue, 05 Mar 2019 11:51:08 GMT  
		Size: 54.6 MB (54604426 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec7a0d5b8eca14fd26922c4d3f67119113f60045f853d3af1882dca1ad76136d`  
		Last Modified: Tue, 05 Mar 2019 21:15:47 GMT  
		Size: 19.8 MB (19847940 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2765aef17b790d1b1e5a81d1b7a6fbd3d6f0977516b506c404ccdbf3e43974b9`  
		Last Modified: Tue, 05 Mar 2019 21:16:01 GMT  
		Size: 44.0 MB (43951800 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ec8957a4c00ded51d7eaae44c67094be7d8eb71b82fa3c9a0524ca45ce8cc98c`  
		Last Modified: Tue, 05 Mar 2019 21:16:31 GMT  
		Size: 136.2 MB (136160477 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b792ce1fa3ee3468a4e93715b0bffdd540fb9fa5bcd804f9f6cbf0b989d67df1`  
		Last Modified: Tue, 05 Mar 2019 22:49:02 GMT  
		Size: 6.0 MB (6004284 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aac485cd51c2cd6d0b29f7eaf72ff91718f126316d98fc30ef681e5ae04252a3`  
		Last Modified: Tue, 05 Mar 2019 22:49:04 GMT  
		Size: 13.5 MB (13522857 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7b1eb4773ef3bb2d21c675ff6241dc3a10dd335e0f260260aec642023209c6d`  
		Last Modified: Tue, 05 Mar 2019 22:49:01 GMT  
		Size: 1.8 MB (1809929 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5434de4050a3fb824e856fe587a647cb2481700a15a8087667d574908a1d38f`  
		Last Modified: Tue, 05 Mar 2019 22:49:01 GMT  
		Size: 3.7 MB (3713654 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
