## `python:2-jessie`

```console
$ docker pull python@sha256:0067c464661a1b55662f39c0d73ed056be23bd8a7650c2235a671fb981a7d1f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; arm variant v7
	-	linux; 386

### `python:2-jessie` - linux; amd64

```console
$ docker pull python@sha256:f7cad9e5f3a66a3720c4bd63b2df7939f50739e09ecb3f9c100b4d5f66a19352
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (271966521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e1cc32914848651dcda36007472b733f612fa0f274c8f3090c8794be04438cb`
-	Default Command: `["python2"]`

```dockerfile
# Tue, 04 Sep 2018 21:19:53 GMT
ADD file:8d73a09e59fe50289a6d0c019302aefe2e00ac6411e82404389c0c83f50cf08a in / 
# Tue, 04 Sep 2018 21:19:54 GMT
CMD ["bash"]
# Tue, 04 Sep 2018 22:27:54 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:27:55 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Tue, 04 Sep 2018 22:28:50 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Tue, 04 Sep 2018 22:30:43 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 03:45:32 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 03:45:32 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 04:52:21 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 04:52:42 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 04:52:43 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 04:52:43 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 04:55:03 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Tue, 09 Oct 2018 22:38:12 GMT
ENV PYTHON_PIP_VERSION=18.1
# Tue, 09 Oct 2018 22:38:17 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Tue, 09 Oct 2018 22:38:19 GMT
RUN pip install --no-cache-dir virtualenv
# Tue, 09 Oct 2018 22:38:19 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:f189db1b88b3cab5fd17f74fee412610fe40d4b077e7882c1a50a8b6f4f0cea3`  
		Last Modified: Tue, 04 Sep 2018 21:23:11 GMT  
		Size: 54.3 MB (54252211 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3d06cf2f1b5e36347bb239d7ef7eb098e228d06a0a937e70798eb0dda459c61e`  
		Last Modified: Tue, 04 Sep 2018 22:50:42 GMT  
		Size: 17.5 MB (17538668 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:687ebdda822cb0f4af055462f887a7f76bc3f36d55161596fe93e45356dd45f0`  
		Last Modified: Tue, 04 Sep 2018 22:50:58 GMT  
		Size: 43.3 MB (43297955 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99119ca3f34e74abac472e5c9194bbf69c0215b32fd6f652eec84a3d9d719e25`  
		Last Modified: Tue, 04 Sep 2018 22:51:30 GMT  
		Size: 131.1 MB (131104825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14bb48fafa9d19cdc1d407d852765a3e05f6d90af1405e7bc1cfec57421ad204`  
		Last Modified: Wed, 05 Sep 2018 05:19:12 GMT  
		Size: 5.7 MB (5748520 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70ad2db6400610a12d9802c9cd58ed6f94eea59ed824414109fec6fcb96deefd`  
		Last Modified: Wed, 05 Sep 2018 05:19:14 GMT  
		Size: 14.6 MB (14589160 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f86a8b158106e8d834a255e220eadaa7dfc3eb304514cf660ccfe8a490ec9a17`  
		Last Modified: Tue, 09 Oct 2018 22:53:27 GMT  
		Size: 1.8 MB (1777193 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f202dfe9843a997aa234b9bdb6d0f809aea38351ca7f50153efc4eeab9970c6`  
		Last Modified: Tue, 09 Oct 2018 22:53:27 GMT  
		Size: 3.7 MB (3657989 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-jessie` - linux; arm variant v5

```console
$ docker pull python@sha256:cc94f1c05c3a4444bb91f1acf8638fe173b4304360634143b106ba29f6f18d01
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.8 MB (251833023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80b0a6d439ad06e1e91f4b84c02d188eeebd645c30d90097336d8119b9d52b05`
-	Default Command: `["python2"]`

```dockerfile
# Wed, 05 Sep 2018 08:50:01 GMT
ADD file:367230829937e3f959936d2c250983c5c63d8aff2e1987a1512c68d6b05ec2d9 in / 
# Wed, 05 Sep 2018 08:50:03 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 09:51:41 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:51:42 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 09:52:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 09:55:04 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 10:31:05 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 10:31:05 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 11:20:08 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 11:21:44 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:21:44 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 11:21:44 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 11:24:33 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 10 Oct 2018 09:20:14 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 10 Oct 2018 09:20:23 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 10 Oct 2018 09:20:27 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 10 Oct 2018 09:20:27 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:e01fe8429ccebc46a010376112e864ce611e175d1f38e60e721840613bc3bc2a`  
		Last Modified: Wed, 05 Sep 2018 08:59:16 GMT  
		Size: 52.4 MB (52447943 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f6945911bf8713186fd7ee2c21f4ef1138adb8b200242ca929e7caab6978ff3a`  
		Last Modified: Wed, 05 Sep 2018 10:08:21 GMT  
		Size: 17.0 MB (17029456 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a401183513e38faaa6c251a53174b409b087aeb9a040849500580106285c318`  
		Last Modified: Wed, 05 Sep 2018 10:08:50 GMT  
		Size: 41.1 MB (41141852 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:58d9da9f5ead4f4d40d7d08848735eca137c95f0b280dee32ed78f06af3c478d`  
		Last Modified: Wed, 05 Sep 2018 10:09:35 GMT  
		Size: 115.8 MB (115759199 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f203ed5b48944329a307f4164959ac14d4bc500e892a55d87c594e439063b7bb`  
		Last Modified: Wed, 05 Sep 2018 11:43:10 GMT  
		Size: 5.5 MB (5499330 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c15f4deea6365fc60c49aa75aadd412d6af6e562c862f64582557d54532d0f51`  
		Last Modified: Wed, 05 Sep 2018 11:43:13 GMT  
		Size: 14.5 MB (14519415 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23046ccd5e7a367cdc3861fbc52989d2fcb464cc57912d208e38bb25af3d9123`  
		Last Modified: Wed, 10 Oct 2018 09:34:07 GMT  
		Size: 1.8 MB (1777411 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e9c9ef4d11dda7b6185ba27677f580d9e21f1a9b1868c7d5d5a09946845667bd`  
		Last Modified: Wed, 10 Oct 2018 09:34:07 GMT  
		Size: 3.7 MB (3658417 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-jessie` - linux; arm variant v7

```console
$ docker pull python@sha256:13c92d08f964d28eca8a1694a6e126d55918ba22bdeb8d9c0a76a554753af9b1
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.6 MB (245585274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd795beba4cbde3df3901be7136078eff8640bd3db3b622081e1a3af1eea3a21`
-	Default Command: `["python2"]`

```dockerfile
# Wed, 05 Sep 2018 11:59:11 GMT
ADD file:807e1499dd3578811c9df2630d381e29d52684675650039494a60eecfbbe9027 in / 
# Wed, 05 Sep 2018 11:59:12 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 12:37:31 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:37:32 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 12:38:47 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 12:41:15 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 15:22:06 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 05 Sep 2018 15:22:07 GMT
ENV LANG=C.UTF-8
# Wed, 05 Sep 2018 16:10:00 GMT
ENV PYTHONIOENCODING=UTF-8
# Wed, 05 Sep 2018 16:10:29 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 16:10:30 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Wed, 05 Sep 2018 16:10:30 GMT
ENV PYTHON_VERSION=2.7.15
# Wed, 05 Sep 2018 16:13:50 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 10 Oct 2018 12:12:05 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 10 Oct 2018 12:12:14 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 10 Oct 2018 12:12:22 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 10 Oct 2018 12:12:31 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:16b1b4bf69814b0a3f82bfd8b5c3117909ae89accabd8bee13a723080db56a75`  
		Last Modified: Wed, 05 Sep 2018 12:08:24 GMT  
		Size: 50.2 MB (50188388 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:002878cce7e14ca1293cd555eec033a6494913ae05e9b1b6a76701bb86dae153`  
		Last Modified: Wed, 05 Sep 2018 12:53:36 GMT  
		Size: 16.7 MB (16712872 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d1a262dbf1b2c7fd841963ee65f24c265c5385068a36df528802e7ea0303aa0f`  
		Last Modified: Wed, 05 Sep 2018 12:54:08 GMT  
		Size: 39.8 MB (39764418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c1af7e0e98d631929ae2550be66fec719178b6723cd1c000617ca718b1311ecc`  
		Last Modified: Wed, 05 Sep 2018 12:54:52 GMT  
		Size: 114.1 MB (114092262 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9fec8ec1ad00a37e26b95062f69fb50377b3fe1afc13ded0e8cbafe4d940ed71`  
		Last Modified: Wed, 05 Sep 2018 16:33:07 GMT  
		Size: 5.2 MB (5187135 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c2c7e0f8e8b78047ee4079f11ae8f2e38ba3e3eb0990c0dbb5ea9ed3cd22fa16`  
		Last Modified: Wed, 05 Sep 2018 16:33:08 GMT  
		Size: 14.2 MB (14204473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62cbc8fbd0ce58fecf4fc49eb1d9b54de19113094ba631db27eb6909e8cf30ce`  
		Last Modified: Wed, 10 Oct 2018 12:28:29 GMT  
		Size: 1.8 MB (1777418 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a171ae86413b1136f15d99b05bf9fd2c32d6c63f97b51297ca948894db90d9b9`  
		Last Modified: Wed, 10 Oct 2018 12:28:29 GMT  
		Size: 3.7 MB (3658308 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `python:2-jessie` - linux; 386

```console
$ docker pull python@sha256:0538ac2d4060a1b6b64a5becdf002332c6069f97f225b970508973c08e531d3f
```

-	Docker Version: 17.06.2-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.5 MB (278489130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3dd0f8c8215050bfea5b6b0552a89fd7798374bd9db05f9039047a7307b0459`
-	Default Command: `["python2"]`

```dockerfile
# Wed, 05 Sep 2018 10:39:51 GMT
ADD file:66e0b8b746f2f743e827a1adbb0d978b38dc00dab94077aa275e852073ea6beb in / 
# Wed, 05 Sep 2018 10:39:52 GMT
CMD ["bash"]
# Wed, 05 Sep 2018 11:28:09 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:28:11 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Wed, 05 Sep 2018 11:30:19 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Wed, 05 Sep 2018 11:35:18 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 21:51:39 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 06 Sep 2018 21:51:39 GMT
ENV LANG=C.UTF-8
# Thu, 06 Sep 2018 23:11:12 GMT
ENV PYTHONIOENCODING=UTF-8
# Thu, 06 Sep 2018 23:11:45 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tk-dev 	&& rm -rf /var/lib/apt/lists/*
# Thu, 06 Sep 2018 23:11:46 GMT
ENV GPG_KEY=C01E1CAD5EA2C4F0B8E3571504C367C218ADD4FF
# Thu, 06 Sep 2018 23:11:46 GMT
ENV PYTHON_VERSION=2.7.15
# Thu, 06 Sep 2018 23:13:44 GMT
RUN set -ex 		&& wget -O python.tar.xz "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz" 	&& wget -O python.tar.xz.asc "https://www.python.org/ftp/python/${PYTHON_VERSION%%[a-z]*}/Python-$PYTHON_VERSION.tar.xz.asc" 	&& export GNUPGHOME="$(mktemp -d)" 	&& gpg --keyserver ha.pool.sks-keyservers.net --recv-keys "$GPG_KEY" 	&& gpg --batch --verify python.tar.xz.asc python.tar.xz 	&& { command -v gpgconf > /dev/null && gpgconf --kill all || :; } 	&& rm -rf "$GNUPGHOME" python.tar.xz.asc 	&& mkdir -p /usr/src/python 	&& tar -xJC /usr/src/python --strip-components=1 -f python.tar.xz 	&& rm python.tar.xz 		&& cd /usr/src/python 	&& gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)" 	&& ./configure 		--build="$gnuArch" 		--enable-shared 		--enable-unicode=ucs4 	&& make -j "$(nproc)" 	&& make install 	&& ldconfig 		&& find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' + 	&& rm -rf /usr/src/python 		&& python2 --version
# Wed, 10 Oct 2018 11:15:17 GMT
ENV PYTHON_PIP_VERSION=18.1
# Wed, 10 Oct 2018 11:15:23 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		python get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		find /usr/local -depth 		\( 			\( -type d -a \( -name test -o -name tests \) \) 			-o 			\( -type f -a \( -name '*.pyc' -o -name '*.pyo' \) \) 		\) -exec rm -rf '{}' +; 	rm -f get-pip.py
# Wed, 10 Oct 2018 11:15:25 GMT
RUN pip install --no-cache-dir virtualenv
# Wed, 10 Oct 2018 11:15:25 GMT
CMD ["python2"]
```

-	Layers:
	-	`sha256:8c6f9fc63ec81982d7b33596e2017e55287bdd085fd1c53fc5b439f51306efa5`  
		Last Modified: Wed, 05 Sep 2018 10:47:54 GMT  
		Size: 54.5 MB (54484051 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:912168c1f05e29e4f46f4cbc0e1aa3825348c0e9a19508d7658722848ddda877`  
		Last Modified: Wed, 05 Sep 2018 12:03:41 GMT  
		Size: 19.8 MB (19835822 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a0e9187aeb009b949c7ae34ecf63d21f9c811f6f6bc2295738d4682eaba1f20e`  
		Last Modified: Wed, 05 Sep 2018 12:04:20 GMT  
		Size: 43.9 MB (43948373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16cb71948e702f9b512dd129506d79a6eb60b556d877346982e3451003ee8629`  
		Last Modified: Wed, 05 Sep 2018 12:05:43 GMT  
		Size: 135.2 MB (135183725 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:605af6c8cc1347bef280b38bcf7ef6c1597b7a7d6e5cdbfaecd02ddeb64bff90`  
		Last Modified: Thu, 06 Sep 2018 23:35:26 GMT  
		Size: 6.0 MB (6002391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d16bbbf2015df29c9d640e338c293468a980117be69fd56f7295a1e99dfd3116`  
		Last Modified: Thu, 06 Sep 2018 23:35:28 GMT  
		Size: 13.6 MB (13599299 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61cda1f0904696e6debb8c19d3bb5168a9604bb4363f20e1adc35a93a07a8c91`  
		Last Modified: Wed, 10 Oct 2018 11:28:54 GMT  
		Size: 1.8 MB (1777178 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:479874ae54af9c26c265e8f4c41180ef9158dcfea554143345ff499f4af24f59`  
		Last Modified: Wed, 10 Oct 2018 11:28:54 GMT  
		Size: 3.7 MB (3658291 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
