## `python:2-jessie`

```console
$ docker pull python@sha256:8b94f364cb4a68f8ee4a4fc8fecd36b78f272c412b96b2330eedb60c4b1cd732
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `python:2-jessie` - linux; amd64

```console
$ docker pull python@sha256:117e5686a161f631fea1711413ce1d7cb08380ce30666d0ddb5177b11dc4cae0
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.3 MB (273281437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75fa656a903842ff4aa83b44de85b22063e3a48289629c80c7bf12e94766e619`
-	Default Command: `["python2"]`

```dockerfile
# Wed, 08 May 2019 00:30:19 GMT
ADD file:47970bdb20c0c84f9d64aeb394f690c79bfceefd0331c1fc4041af1de0d5bcb1 in / 
# Wed, 08 May 2019 00:30:19 GMT
CMD ["bash"]
# Wed, 08 May 2019 01:31:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:31:51 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 01:34:22 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 01:37:45 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 05:38:50 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 05:38:51 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 06:15:04 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 08 May 2019 06:17:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 06:17:00 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 08 May 2019 06:17:01 GMT
ENV PYTHON_VERSION=2.7.16
# Wed, 08 May 2019 06:19:52 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 08 May 2019 06:19:52 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 08 May 2019 06:20:00 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 08 May 2019 06:20:03 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 08 May 2019 06:20:03 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:db0035920883a73fe23c2f4c2c361e2508a9f8b9b410080817800c1f906323b7`  
		Last Modified: Wed, 08 May 2019 00:36:03 GMT  
		Size: 54.4 MB (54385705 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9ebd83b4a4725c8e5e54f2aa7d3ee259492cbb89de0a4315c3533b84b32d3ee`  
		Last Modified: Wed, 08 May 2019 01:43:57 GMT  
		Size: 17.5 MB (17541651 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4cf624e5b31148821dbdc3eface7d221c3a94d63cffbf6ced906ba1c6e4a6cde`  
		Last Modified: Wed, 08 May 2019 01:44:11 GMT  
		Size: 43.3 MB (43314266 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb64b577f5372f938906a0c3a0124f870632c5302e556b22eccbeb69b78fa041`  
		Last Modified: Wed, 08 May 2019 01:44:36 GMT  
		Size: 132.2 MB (132219342 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ccabd49288320a01563c88bcbc5f5b12be056bde757af285528ab76704d8b96b`  
		Last Modified: Wed, 08 May 2019 06:24:36 GMT  
		Size: 5.8 MB (5750808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:754308254485eb64c243dcbec373fa435fc416ff3e8a4ff92802c76b6bed069f`  
		Last Modified: Wed, 08 May 2019 06:24:40 GMT  
		Size: 14.5 MB (14516984 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:211edbc51bab90430e0dc1b29c7f1185ca74d9954ef8976590ddb565ebe0ce73`  
		Last Modified: Wed, 08 May 2019 06:24:34 GMT  
		Size: 1.8 MB (1817873 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1fa522fc6e575d48a577fd9fc163c62e22763cab87e79217bf81f59b0a8d3736`  
		Last Modified: Wed, 08 May 2019 06:24:35 GMT  
		Size: 3.7 MB (3734808 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-jessie` - linux; arm variant v5

```console
$ docker pull python@sha256:3b756fbb3640a1a57eb348f98ab3cbbd15c154ce926797a995e57eeea8be13c1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.0 MB (252956486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd7a8584889601f17175be953eba7958fc3f0ca2cc2797dd4911e77bf4926c34`
-	Default Command: `["python2"]`

```dockerfile
# Wed, 08 May 2019 08:50:00 GMT
ADD file:997d555f96b00623491142f0b815ef37769d2f880a8b40c0fff320960771453d in / 
# Wed, 08 May 2019 08:50:02 GMT
CMD ["bash"]
# Wed, 08 May 2019 09:53:04 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 09:53:06 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 09:54:37 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 09:57:29 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:15:55 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 12:15:56 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 12:28:43 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 08 May 2019 12:29:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:29:43 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 08 May 2019 12:29:43 GMT
ENV PYTHON_VERSION=2.7.16
# Wed, 08 May 2019 12:32:50 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 08 May 2019 12:32:51 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 08 May 2019 12:33:02 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 08 May 2019 12:33:08 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 08 May 2019 12:33:09 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:6d0312bf9f8207dd961236544595b270fcfea05ff71dac15ac7c00f5e0427a7d`  
		Last Modified: Wed, 08 May 2019 08:56:45 GMT  
		Size: 52.6 MB (52575055 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6c5b66973862969fdf9e67a84145501ba3d04f73b4611e6d46d7728d5e9e606`  
		Last Modified: Wed, 08 May 2019 10:06:51 GMT  
		Size: 17.0 MB (17032492 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1c8ddefb956d3a90bcc7004952e9d431ca2679233ae2b10f67b4f95c6649af4a`  
		Last Modified: Wed, 08 May 2019 10:07:11 GMT  
		Size: 41.2 MB (41156153 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c22d9c53672a52ff074900e41c148ec8ae7a097cd3d2cbe7533b3ab1ad71ef37`  
		Last Modified: Wed, 08 May 2019 10:07:51 GMT  
		Size: 116.7 MB (116691794 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:63cee5b5e3d0516399b4f6d1aa91d0806a87cf092762fae68dada53cd89ac09d`  
		Last Modified: Wed, 08 May 2019 12:36:02 GMT  
		Size: 5.5 MB (5501750 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ca373d34b5af0a6936bbc89d870c2e65882c42038bfeee03d9468c1c9ad7576`  
		Last Modified: Wed, 08 May 2019 12:36:07 GMT  
		Size: 14.4 MB (14445821 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a3904d10067050c7fdbd3db1db4500d64affc38375f903f0cc573799b8f55b9c`  
		Last Modified: Wed, 08 May 2019 12:36:01 GMT  
		Size: 1.8 MB (1818058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4d324a985e9756cb2536d4ae628129a31a4bdd6b9afdf4383780e20ce2c7a3a6`  
		Last Modified: Wed, 08 May 2019 12:36:02 GMT  
		Size: 3.7 MB (3735363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-jessie` - linux; arm variant v7

```console
$ docker pull python@sha256:7b8ade7f66537ca3b06e3b9e8da654ad5b29a76a567b3be261918d61116207be
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.6 MB (246630008 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0420b54eebc974d112989af504e2630f96caa76da6027e6c46f7dcb0bda6f37d`
-	Default Command: `["python2"]`

```dockerfile
# Wed, 08 May 2019 11:59:37 GMT
ADD file:8608ce29a1acb528a48ba5eb2c83088709ec606374a9247e14b143e6893abb4e in / 
# Wed, 08 May 2019 11:59:38 GMT
CMD ["bash"]
# Wed, 08 May 2019 12:56:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 12:56:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 12:57:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:00:22 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:08:56 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 08 May 2019 13:08:56 GMT
ENV LANG=C.UTF-8
# Wed, 08 May 2019 13:43:31 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 08 May 2019 13:44:27 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 13:44:27 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 08 May 2019 13:44:28 GMT
ENV PYTHON_VERSION=2.7.16
# Wed, 08 May 2019 13:47:10 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 08 May 2019 13:47:10 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Wed, 08 May 2019 13:47:20 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 08 May 2019 13:47:24 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 08 May 2019 13:47:25 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:15cfb32571a95dcaa3a8408897c92bd923327a52abf09ce9c125ed6b5e9257ef`  
		Last Modified: Wed, 08 May 2019 12:07:22 GMT  
		Size: 50.3 MB (50297181 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:284ec6226ea641062369562b37a4579db6937f39a7a9f2141e2aee7b588399c8`  
		Last Modified: Wed, 08 May 2019 13:09:39 GMT  
		Size: 16.7 MB (16718239 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c3f65834a938bc59e0539fdcf3bc7d33343e54cb9e0160efad5ae0979f1e125f`  
		Last Modified: Wed, 08 May 2019 13:10:00 GMT  
		Size: 39.8 MB (39766231 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:523d5fda0388487c9c58c9e21b02f8f16e79eb77bad978e1b558ce3c6ada4f9e`  
		Last Modified: Wed, 08 May 2019 13:10:39 GMT  
		Size: 115.0 MB (114972668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5920e3b229f5186c0bd08a6114f2149a41781b48504cb7d5380287e80ff2841e`  
		Last Modified: Wed, 08 May 2019 14:01:53 GMT  
		Size: 5.2 MB (5189577 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5d6b18253d49590453cc9f72eb0039d5773fbcba40b63301eb08825041c3746`  
		Last Modified: Wed, 08 May 2019 14:01:56 GMT  
		Size: 14.1 MB (14132729 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:46505c752e208b18545fe8efd93b989f7c4af0620c558227df563ed25682984e`  
		Last Modified: Wed, 08 May 2019 14:01:53 GMT  
		Size: 1.8 MB (1818029 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01427b4b70744fbba5693ecce1b93cef0c007c923697353da031e1c6a708ff01`  
		Last Modified: Wed, 08 May 2019 14:01:53 GMT  
		Size: 3.7 MB (3735354 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-jessie` - linux; 386

```console
$ docker pull python@sha256:7b03825dbd1c5f7191d0c25e83f21699a30ca2b964f37ccd44d056fefcdf6143
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.7 MB (279686863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8f582048dc29d1dbc7cb539436515261f73ed22d334165a748ab2a5bdcb45fb`
-	Default Command: `["python2"]`

```dockerfile
# Wed, 08 May 2019 10:42:11 GMT
ADD file:383a4648827e4920fc38f6ee93e3a1b0198694530961012a3ac4ff2b60d469f0 in / 
# Wed, 08 May 2019 10:42:12 GMT
CMD ["bash"]
# Wed, 08 May 2019 18:57:59 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 18:57:59 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 08 May 2019 19:01:25 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 08 May 2019 19:05:47 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libgmp-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 00:48:18 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 09 May 2019 00:48:18 GMT
ENV LANG=C.UTF-8
# Thu, 09 May 2019 01:23:30 GMT
ENV PYTHONIOENCODING=UTF-8
# Thu, 09 May 2019 01:26:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 09 May 2019 01:26:12 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 09 May 2019 01:26:12 GMT
ENV PYTHON_VERSION=2.7.16
# Thu, 09 May 2019 01:28:12 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Thu, 09 May 2019 01:28:12 GMT
ENV PYTHON_PIP_VERSION=19.1.1
# Thu, 09 May 2019 01:28:17 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Thu, 09 May 2019 01:28:20 GMT
RUN pip install --no-cache-dir virtualenv
# Thu, 09 May 2019 01:28:20 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:6b6ce677eea2e67f795221107c4a01e07d07480fa9706aa20331a88f2a6f8617`  
		Last Modified: Wed, 08 May 2019 10:54:05 GMT  
		Size: 54.6 MB (54605091 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d7f48be8120c22e9a5375fa05aea15ce2e87362772a9df12046625d8fcaba344`  
		Last Modified: Wed, 08 May 2019 19:12:01 GMT  
		Size: 19.8 MB (19849905 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:05e2f0da43ea430545e5a12be0e5a2ef24f151c7a76853985342d7075ee644ce`  
		Last Modified: Wed, 08 May 2019 19:12:15 GMT  
		Size: 44.0 MB (43965047 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1ad5497d0785f5c367a7a2f31b1b17659ce7d08cde51290497b2991b4ed00a6f`  
		Last Modified: Wed, 08 May 2019 19:12:47 GMT  
		Size: 136.2 MB (136186760 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:00b0f2a58495834e3aeb085d8884766e15fec825bc9f41e1ee5750ebf3c8627a`  
		Last Modified: Thu, 09 May 2019 01:30:23 GMT  
		Size: 6.0 MB (6004403 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e5c09c4a566bb0ea3947c710d7c1b0da9d67b7fa1f7801c56b519dfc89144534`  
		Last Modified: Thu, 09 May 2019 01:30:25 GMT  
		Size: 13.5 MB (13522737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:902d149a2bf50e0163487f24ebc40322e0a59a6962cfc77fe7ed0c3df4986d9b`  
		Last Modified: Thu, 09 May 2019 01:30:25 GMT  
		Size: 1.8 MB (1817872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ec46c6e5166268750760e3f6de58923b64c153ec7325cb5a22d6208f7a0a97b`  
		Last Modified: Thu, 09 May 2019 01:30:22 GMT  
		Size: 3.7 MB (3735048 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
