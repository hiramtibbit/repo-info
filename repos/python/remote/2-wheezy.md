## `python:2-wheezy`

```console
$ docker pull python@sha256:89fc79cbcdce10cec2074de75767a031ea6b7ca5a62a06a27bb6d9ec08a69b08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `python:2-wheezy` - linux; amd64

```console
$ docker pull python@sha256:f11ff9c26ae49d1a5d161722178db59903dc260a183d1d874970fedbd569c78e
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.5 MB (208536543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:966ed3f47a73f6bdb62c1714fd3931d5b408aac5093a64677350a7782fc00b8a`
-	Default Command: `["python2"]`

```dockerfile
# Tue, 04 Sep 2018 21:22:11 GMT
ADD file:1d0d47b9e887adff2328eeb380e2cc47982a572942a29d7ed26bcf6291219302 in / 
# Tue, 04 Sep 2018 21:22:11 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:40:36 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:40:37 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:41:14 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:42:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 04:36:24 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 04:36:24 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 04:59:59 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 05:00:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 05:00:08 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 05:00:08 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 05:02:51 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture -qDEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 05 Sep 2018 05:02:51 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 05:02:57 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 05 Sep 2018 05:02:59 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 05 Sep 2018 05:03:00 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:703d6f3fb41c45d33d1e6358aba66a774c9ebc11a21bc5dfef74f20d043d3933`  
		Last Modified: Tue, 04 Sep 2018 21:26:45 GMT  
		Size: 39.3 MB (39339633 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bdfedc5d9f30acf2accab4930da435ec172c85c8a8324da5f9f1b71ebdcb8a8d`  
		Last Modified: Tue, 04 Sep 2018 22:54:56 GMT  
		Size: 5.6 MB (5630923 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4379296bf31eb4243bd32003d97433c0d9ba99babdaed037ad32cf8b4e330d92`  
		Last Modified: Tue, 04 Sep 2018 22:55:13 GMT  
		Size: 38.0 MB (37960107 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e0a7043f3d60777bbc57a62a7045f6dbb2386344b7d780fed10276bab3c91660`  
		Last Modified: Tue, 04 Sep 2018 22:55:40 GMT  
		Size: 99.6 MB (99610729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6313b3dd27d42b516af4774ecb4297daef22beaca447eb644fa476f8ba73682f`  
		Last Modified: Wed, 05 Sep 2018 05:19:37 GMT  
		Size: 5.7 MB (5720445 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e29002ded8d5f0df3e8738da660f603a70af8dd28c64c97b2509420414ce760`  
		Last Modified: Wed, 05 Sep 2018 05:19:39 GMT  
		Size: 14.8 MB (14838711 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e6e22f8dd3b78e2e1e342f796751ca1aa4e67de657125438c7f39e69db97060f`  
		Last Modified: Wed, 05 Sep 2018 05:19:36 GMT  
		Size: 1.8 MB (1786598 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0186cd6ddc7521515c9d1adad38bbb6b82ecdf0c47f672c4dc409c90491611b6`  
		Last Modified: Wed, 05 Sep 2018 05:19:36 GMT  
		Size: 3.6 MB (3649397 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-wheezy` - linux; arm variant v5

```console
$ docker pull python@sha256:f67d1292265936a689c8a92680d576974ee0959f3cb667ce3315105038e51112
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.8 MB (192842982 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2284a02089379d684f4cc27dab11734f750e557511c64fbc32e9f41eb646047`
-	Default Command: `["python2"]`

```dockerfile
# Wed, 05 Sep 2018 08:57:09 GMT
ADD file:61853f14d9d4d56ef0e2310ac18fc7f6767ffe6dadb735b828ae69d950bdcdbc in / 
# Wed, 05 Sep 2018 08:57:09 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 10:03:26 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:03:27 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 10:04:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:06:03 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:08:47 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 11:08:47 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 11:31:10 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 11:31:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:31:20 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 11:31:20 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 11:33:42 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture -qDEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 05 Sep 2018 11:33:43 GMT
ENV PYTHON_PIP_VERSION=18.0
# Wed, 05 Sep 2018 11:33:52 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 05 Sep 2018 11:33:57 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 05 Sep 2018 11:33:57 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:bcbcf7840b6fa343c8f47838ff17667fd75c164d83025f6a65d6533dd4f1512c`  
		Last Modified: Wed, 05 Sep 2018 09:06:40 GMT  
		Size: 38.0 MB (37993571 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c632033ff40912ca3eb56a29e49cdbc90a7aefe7dadb54591f7f3b3ad133f0b1`  
		Last Modified: Wed, 05 Sep 2018 10:14:12 GMT  
		Size: 5.5 MB (5474824 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f0e0e452a2bbb4378f00cb13bab46d59a9b01b2b50fd6dcfaea16bbc15cdf36`  
		Last Modified: Wed, 05 Sep 2018 10:14:42 GMT  
		Size: 35.9 MB (35894155 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:fc8918e1f1289ca7066f670b61c992b6a216cc5c0cf2ca198366bceba8fc163b`  
		Last Modified: Wed, 05 Sep 2018 10:15:24 GMT  
		Size: 89.7 MB (89683917 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f83695ef3b2d048288e46628a4c5ed1be1cd64e15f27844f5af6a303b0d81b33`  
		Last Modified: Wed, 05 Sep 2018 11:44:03 GMT  
		Size: 5.5 MB (5493698 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d28b2e8c4b07b89261b91b06fc1691aa1b10d2be52a0bac93b898131e084600b`  
		Last Modified: Wed, 05 Sep 2018 11:44:05 GMT  
		Size: 12.9 MB (12866311 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6ef4acfb96eca3d67faed70c9a63ff094c94ab262a4fbd48fd7fe2a636358ff3`  
		Last Modified: Wed, 05 Sep 2018 11:44:01 GMT  
		Size: 1.8 MB (1786801 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20a3826a10e473afab971827fe358699e4c584a45a6cfdf3053444f3c568fddc`  
		Last Modified: Wed, 05 Sep 2018 11:44:02 GMT  
		Size: 3.6 MB (3649705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-wheezy` - linux; arm variant v7

```console
$ docker pull python@sha256:c607ed12930a1d6ef4bbc923b47cab4de1bd2f17088854d227574fbf9f1d4e67
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.0 MB (185957308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:539ec3d912f846cdd788368674fc7d9e96cdbfa94c81958184a8c9e00a3b67d2`
-	Default Command: `["python2"]`

```dockerfile
# Tue, 17 Jul 2018 12:08:23 GMT
ADD file:712816e22e280cc54e0b214bacd8b514c6de7d71f07b8c63b3306f7adc2bdc05 in / 
# Tue, 17 Jul 2018 12:08:23 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 13:53:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:53:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 13:53:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:55:40 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 13:55:47 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 13:55:48 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 14:16:59 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 17 Jul 2018 14:17:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:17:08 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 17 Jul 2018 14:17:08 GMT
ENV PYTHON_VERSION=2.7.15
# Thu, 26 Jul 2018 12:34:42 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture -qDEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Thu, 26 Jul 2018 12:34:42 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 26 Jul 2018 12:34:51 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 26 Jul 2018 12:34:54 GMT
RUN pip install --no-cache-dir virtualenv
# Thu, 26 Jul 2018 12:34:55 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:b4fdbe1026b8cccda2040976484f19e27515a68623a1e6b1439ae0029d5934d9`  
		Last Modified: Tue, 17 Jul 2018 12:20:59 GMT  
		Size: 36.6 MB (36619508 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0a8ac959b42bebb3bc8ef012afa4796dc6c2512b201e04af78cf09df894c6f7a`  
		Last Modified: Tue, 17 Jul 2018 14:14:05 GMT  
		Size: 5.3 MB (5321855 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70dd413b4f10b3fae62383f2da614758a2e66687753e68ccf33442907925c942`  
		Last Modified: Tue, 17 Jul 2018 14:14:41 GMT  
		Size: 34.9 MB (34872615 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7f68dd66e15f8d250b3fd49c738aa21be0358262c9a778b816c761ba3f76a82b`  
		Last Modified: Tue, 17 Jul 2018 14:15:22 GMT  
		Size: 85.7 MB (85742289 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bbf911f4152e7f2d5be0e3a31fd15b3866e6457d9a5e2c810cc8f873f39bf49c`  
		Last Modified: Tue, 17 Jul 2018 14:33:45 GMT  
		Size: 5.2 MB (5244450 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:43d6248b8e2530e229c5d7e67a5641bc80e2b96e72cd4cf7c72439ec1b7daf7e`  
		Last Modified: Thu, 26 Jul 2018 12:47:03 GMT  
		Size: 12.7 MB (12721260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59155f04e411f0bb4d7300022d52a3500785363b4b3b2ab1855bd83fc9ab1748`  
		Last Modified: Thu, 26 Jul 2018 12:46:59 GMT  
		Size: 1.8 MB (1785702 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:10de39266dc8d60dbde2c66ee0ae594d06de630e2151125e7ca3661c223beb6b`  
		Last Modified: Thu, 26 Jul 2018 12:47:00 GMT  
		Size: 3.6 MB (3649629 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-wheezy` - linux; 386

```console
$ docker pull python@sha256:84f7c717125df96259145600c4149a622a1cafbdebe6b59d3e54f1ec26b342c3
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.0 MB (209041020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69e680169fe542d03d34672a69a1591c5f3a27f6050cc188822e2898d3e10c0a`
-	Default Command: `["python2"]`

```dockerfile
# Tue, 17 Jul 2018 10:52:53 GMT
ADD file:2b0fab8ddd7d2f359f307fc659f958ad8a6e2a86a6a23ad77572c20f1d5aef12 in / 
# Tue, 17 Jul 2018 10:52:54 GMT
CMD ["bash"]
# Tue, 17 Jul 2018 14:46:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:46:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 17 Jul 2018 14:47:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 14:49:09 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 21:16:12 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 17 Jul 2018 21:16:12 GMT
ENV LANG=C.UTF-8
# Tue, 17 Jul 2018 21:27:56 GMT
ENV PYTHONIOENCODING=UTF-8
# Tue, 17 Jul 2018 21:28:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Tue, 17 Jul 2018 21:28:08 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Tue, 17 Jul 2018 21:28:08 GMT
ENV PYTHON_VERSION=2.7.15
# Thu, 26 Jul 2018 11:51:00 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture -qDEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Thu, 26 Jul 2018 11:51:00 GMT
ENV PYTHON_PIP_VERSION=18.0
# Thu, 26 Jul 2018 11:51:08 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 26 Jul 2018 11:51:11 GMT
RUN pip install --no-cache-dir virtualenv
# Thu, 26 Jul 2018 11:51:11 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:7c59d17a85b1db041ae2f8db1bccfc071f1e66c58fe8a43087c34557aa910719`  
		Last Modified: Tue, 17 Jul 2018 11:12:53 GMT  
		Size: 40.5 MB (40532149 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:203ffa63f8e493549b151d4475e7fa725eb493a3439e4c803063fb271db6b5b1`  
		Last Modified: Tue, 17 Jul 2018 15:22:18 GMT  
		Size: 5.6 MB (5617066 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eade15c8f3100e425b5b0dfaafe8772e89aca3cf93b81e369413002fe63d5938`  
		Last Modified: Tue, 17 Jul 2018 15:23:09 GMT  
		Size: 37.1 MB (37050365 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:714bd013473e295f8214914585429f402600ec873babb92656e5a66941650239`  
		Last Modified: Tue, 17 Jul 2018 15:24:27 GMT  
		Size: 100.4 MB (100434859 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:adcad8c31530af4ab16dd912a3a31a8f1d2e8e941538b0d4edd9a7dd97e06672`  
		Last Modified: Tue, 17 Jul 2018 21:42:12 GMT  
		Size: 5.7 MB (5717736 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:874a2e8e9da5dd4cc8f88fa56998e29d4c4a6bbf0cc4739f19b5cde3d22c03e1`  
		Last Modified: Thu, 26 Jul 2018 12:30:58 GMT  
		Size: 14.3 MB (14253948 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4012d56ee9ea13e3f7d7cf3c9d276810bbe0eed6d3926dc8b068b955e8870333`  
		Last Modified: Thu, 26 Jul 2018 12:30:52 GMT  
		Size: 1.8 MB (1785372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:742cfba206ae12fbf0b52b7376e2b6f28a41cd906649a707188c5431cb3698c8`  
		Last Modified: Thu, 26 Jul 2018 12:30:53 GMT  
		Size: 3.6 MB (3649525 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
