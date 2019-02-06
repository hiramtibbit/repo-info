## `python:2-jessie`

```console
$ docker pull python@sha256:6ba6429ed77293cca8f4fb83ece5f19de942a61a264bd261493595655f1892fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `python:2-jessie` - linux; amd64

```console
$ docker pull python@sha256:8c93ae5a6c43442331cc5c3a33c297227154ee89c1f6c69963c88f3af6097f2a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.5 MB (272518274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6ff784996f7cb68fdd9c8c9307ac673611dc277ce1037f425734e320b340112`
-	Default Command: `["python2"]`

```dockerfile
# Wed, 06 Feb 2019 03:27:30 GMT
ADD file:3a1c24c30fbdad1dd44e5f38c66b10a2ddbeb517b2e441dbcf82c221b45b143b in / 
# Wed, 06 Feb 2019 03:27:31 GMT
CMD ["bash"]
# Wed, 06 Feb 2019 05:43:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:43:28 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 06 Feb 2019 05:45:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 05:48:52 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 09:55:53 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 06 Feb 2019 09:55:53 GMT
ENV LANG=C.UTF-8
# Wed, 06 Feb 2019 12:38:06 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 06 Feb 2019 12:40:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 12:40:10 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 06 Feb 2019 12:40:11 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 06 Feb 2019 12:43:14 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 06 Feb 2019 12:43:15 GMT
ENV PYTHON_PIP_VERSION=19.0.1
# Wed, 06 Feb 2019 12:43:24 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 06 Feb 2019 12:43:29 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 06 Feb 2019 12:43:29 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:ff42297909573059acb8e981efbc12eff68641f8449f04470a4f218e53a1e80e`  
		Last Modified: Wed, 06 Feb 2019 03:33:25 GMT  
		Size: 54.4 MB (54384652 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de1f85cbc0218759652e5a51e5c5a13006ac20b8ab141c05f1e67a1444a9e62a`  
		Last Modified: Wed, 06 Feb 2019 06:00:08 GMT  
		Size: 17.5 MB (17539308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e1b6a4984ab4bb79a3eb640a4f0b53c7822e7f59f5f80000847f063948eb56b6`  
		Last Modified: Wed, 06 Feb 2019 06:00:22 GMT  
		Size: 43.3 MB (43308646 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ba23a7108e883a22709272088ccf156aa59b91b917600e217e1c8084e0eacad6`  
		Last Modified: Wed, 06 Feb 2019 06:00:50 GMT  
		Size: 131.4 MB (131431313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:79d573c9e58e494a2499bc0c9b196dfee55e2606da55ab97675a376613ddc807`  
		Last Modified: Wed, 06 Feb 2019 12:51:06 GMT  
		Size: 5.7 MB (5749205 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d377fc97af68ac6506f28911861caea2540210dd53164d13fc45b1d7a81f4968`  
		Last Modified: Wed, 06 Feb 2019 12:51:09 GMT  
		Size: 14.6 MB (14589187 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82ecf87e5795acef07fa11061a62ff27fa097d87d9662da557fbb2d3c12587e6`  
		Last Modified: Wed, 06 Feb 2019 12:51:04 GMT  
		Size: 1.8 MB (1810650 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aec848870c3612c85a34635ce0f62fddd28540181551a29b61bf0535c146248f`  
		Last Modified: Wed, 06 Feb 2019 12:51:05 GMT  
		Size: 3.7 MB (3705313 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-jessie` - linux; arm variant v5

```console
$ docker pull python@sha256:d9438f9bf9d837aa59c9abc374680927a59d9b5ea980387615437b6333c7c6da
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.3 MB (252254842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16aa1ddfa8f7356dd6da6580e824f168a7a48de0734cd2332f07599e02e3d2dc`
-	Default Command: `["python2"]`

```dockerfile
# Wed, 23 Jan 2019 09:50:10 GMT
ADD file:d54ba2764c6a60a1d23652305cbda61eafbf6d9f3a808ca58fe9c2400a1d51e9 in / 
# Wed, 23 Jan 2019 09:50:11 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 10:30:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:30:30 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 10:32:13 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:35:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:48:48 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 10:48:49 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 12:19:14 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 23 Jan 2019 12:20:12 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:20:13 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 23 Jan 2019 12:20:13 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 23 Jan 2019 12:23:02 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 26 Jan 2019 10:01:37 GMT
ENV PYTHON_PIP_VERSION=19.0.1
# Sat, 26 Jan 2019 10:01:46 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 26 Jan 2019 10:01:51 GMT
RUN pip install --no-cache-dir virtualenv
# Sat, 26 Jan 2019 10:01:51 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:50fd141dcc41a9d8165a0900c6d253849085d5fefc20c8802d9ab7990cbc0f88`  
		Last Modified: Wed, 23 Jan 2019 09:59:04 GMT  
		Size: 52.6 MB (52574556 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c97e5089c7dbd37156a16aa333e82a8047c39870627ad13f9d513f514eba1f9`  
		Last Modified: Wed, 23 Jan 2019 10:46:53 GMT  
		Size: 17.0 MB (17030345 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ef1e3e333e6420f3b76bbee5414c4d1c57e7b42b8a42899bcb8e54e780b280ec`  
		Last Modified: Wed, 23 Jan 2019 10:47:13 GMT  
		Size: 41.1 MB (41147190 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b25ed3de9d90618a35e1452e88796e1d13223bdc809c1eb9c57add0346086a9`  
		Last Modified: Wed, 23 Jan 2019 10:47:53 GMT  
		Size: 116.0 MB (115968878 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6c1d56690700eae4f82944bd6155e47488690866a7b6f96046f6a98f62ceac4`  
		Last Modified: Wed, 23 Jan 2019 15:24:39 GMT  
		Size: 5.5 MB (5500228 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7d0e710afaa83362acec6389573f4947a61cd2cbdc048547844ca5d670628aef`  
		Last Modified: Wed, 23 Jan 2019 15:24:42 GMT  
		Size: 14.5 MB (14519411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8b747be41de5239679304e9f4a94f227270a6bf2cf2239fd15f6e85e1017d0a0`  
		Last Modified: Sat, 26 Jan 2019 10:07:01 GMT  
		Size: 1.8 MB (1808526 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:78cb052a2f4e2cab27107c0ce65c69dd650504c90edac61e5ed6e7f9073b42ca`  
		Last Modified: Sat, 26 Jan 2019 10:07:02 GMT  
		Size: 3.7 MB (3705708 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-jessie` - linux; arm variant v7

```console
$ docker pull python@sha256:ec5ad3c431ec67271b92618d0b32b61e6d5ff1c7f82baaa590d019f2fec6aca8
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.0 MB (245957517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6727753a0feaba9a5478b165cc9257063b31bd86b22a558c99684e3eda4da034`
-	Default Command: `["python2"]`

```dockerfile
# Wed, 23 Jan 2019 12:59:26 GMT
ADD file:82fbc1afc65e113a763fd56969e610ee7f80938bd2f37ffc964d6f5b4525b68b in / 
# Wed, 23 Jan 2019 12:59:27 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 13:35:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:35:31 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 13:37:08 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 13:40:24 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 15:12:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 15:12:07 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 16:10:46 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 23 Jan 2019 16:11:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 16:11:45 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 23 Jan 2019 16:11:45 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 23 Jan 2019 16:14:27 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 26 Jan 2019 13:16:33 GMT
ENV PYTHON_PIP_VERSION=19.0.1
# Sat, 26 Jan 2019 13:16:42 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 26 Jan 2019 13:16:47 GMT
RUN pip install --no-cache-dir virtualenv
# Sat, 26 Jan 2019 13:16:47 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:8d0ee67914252a6f8316bcf4f5de02a5d7894abb8061e33223a2a3691b209217`  
		Last Modified: Wed, 23 Jan 2019 13:09:16 GMT  
		Size: 50.3 MB (50291632 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:acf121bdd5ab54c14416ccb673e4d49a933fe0fbd4e82f9b83a4bcdb965555be`  
		Last Modified: Wed, 23 Jan 2019 14:03:10 GMT  
		Size: 16.7 MB (16713234 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:02d9ac85e786c450b130df65400e5915a88ad7d7450da8cc998c854f03780a7f`  
		Last Modified: Wed, 23 Jan 2019 14:03:33 GMT  
		Size: 39.8 MB (39761965 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cb5d509ddc7aece21b63294217b25b4c0b74f4e252c373a09ebec1733d1d943c`  
		Last Modified: Wed, 23 Jan 2019 14:04:10 GMT  
		Size: 114.3 MB (114283796 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7583e78ea3ac92ba5b657035b64d8db75848ab41ea464b8e7bbff3453d7cea85`  
		Last Modified: Wed, 23 Jan 2019 16:30:52 GMT  
		Size: 5.2 MB (5188052 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f578a7473bcd49dd0c0a8da9ad0ec1cb867a78a71fbbda9c774801cc3ec74284`  
		Last Modified: Wed, 23 Jan 2019 16:30:55 GMT  
		Size: 14.2 MB (14204516 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bb3f4fa14196a53235b04c9f87a194457c4237b98e6a86f9a9d647b3d136a11c`  
		Last Modified: Sat, 26 Jan 2019 13:21:51 GMT  
		Size: 1.8 MB (1808585 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0e6a04c28926531df1d62891498aacdbf5d7665fd1ef23ad97561aadc25e7358`  
		Last Modified: Sat, 26 Jan 2019 13:21:51 GMT  
		Size: 3.7 MB (3705737 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-jessie` - linux; 386

```console
$ docker pull python@sha256:d3b347dbfd6f9c9a754f74ba202e6887b3fa645759655d990b4327d2c0847cb1
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.9 MB (278917774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bed61eef6e6f8937483804bc162974ea40c5233d786a98079b469a4a31897597`
-	Default Command: `["python2"]`

```dockerfile
# Wed, 23 Jan 2019 11:42:56 GMT
ADD file:34c4d7be20c87ed251d0f5a99c46920d29f51e7050390664fe342895d416cf26 in / 
# Wed, 23 Jan 2019 11:42:56 GMT
CMD ["bash"]
# Wed, 23 Jan 2019 12:38:00 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:38:01 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 23 Jan 2019 12:41:32 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 12:46:12 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 17:24:30 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 23 Jan 2019 17:24:30 GMT
ENV LANG=C.UTF-8
# Wed, 23 Jan 2019 19:46:14 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 23 Jan 2019 19:48:57 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 19:48:57 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 23 Jan 2019 19:48:58 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 23 Jan 2019 19:50:57 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --batch --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Sat, 26 Jan 2019 13:08:28 GMT
ENV PYTHON_PIP_VERSION=19.0.1
# Sat, 26 Jan 2019 13:08:34 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Sat, 26 Jan 2019 13:08:36 GMT
RUN pip install --no-cache-dir virtualenv
# Sat, 26 Jan 2019 13:08:36 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:c9e90e967f2e8ff1c9bcd2f542cedbcf4ef3dd2e4601b2f3c66fdbef5125fe84`  
		Last Modified: Wed, 23 Jan 2019 11:59:12 GMT  
		Size: 54.6 MB (54598497 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f41350de1b8c9a9aaef88261e4271f1d2cdbfcd19c25b6ff74b91d18449ccf3`  
		Last Modified: Wed, 23 Jan 2019 13:08:22 GMT  
		Size: 19.8 MB (19846606 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6cfebb7c82792eca5cf28743e4209f51a647eee4e572199538027c9f37e263f0`  
		Last Modified: Wed, 23 Jan 2019 13:08:44 GMT  
		Size: 44.0 MB (43951885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a45bd9d6476253bffc4debb9e10f1b43cce50575497c94544c0fb0d35c1370f6`  
		Last Modified: Wed, 23 Jan 2019 13:09:27 GMT  
		Size: 135.4 MB (135404772 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0790493cf2bd057b1fad474d9dbd8abe8c0fb24f6f55f3c9945ed918e6eb782d`  
		Last Modified: Wed, 23 Jan 2019 20:12:39 GMT  
		Size: 6.0 MB (6002862 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0faccf655c849e3305963c75813967697149baa50bdff8979d83ded43e393187`  
		Last Modified: Wed, 23 Jan 2019 20:12:42 GMT  
		Size: 13.6 MB (13599238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c5402a68536483c950e40bf67abe5d1dd16ae29c85a503ab152d9ce27af30cd`  
		Last Modified: Sat, 26 Jan 2019 13:16:40 GMT  
		Size: 1.8 MB (1808386 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2cf420d53b45027ad6975b69587378ea00494198543363b9edd2ac039ca387ac`  
		Last Modified: Sat, 26 Jan 2019 13:16:40 GMT  
		Size: 3.7 MB (3705528 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
