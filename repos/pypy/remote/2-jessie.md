## `pypy:2-jessie`

```console
$ docker pull pypy@sha256:c8271d94762cde5cabe3ea5ecaf00248e109e074117da4752eea0b007a38c07a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms:
	-	linux; amd64
	-	linux; arm variant v5
	-	linux; 386

### `pypy:2-jessie` - linux; amd64

```console
$ docker pull pypy@sha256:6c0edadb9453f889f3aa46b4ac532f034bf9d55a9d117141d299d3c6bee37a5a
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.1 MB (280076540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5f357276f232fd6f25cacdbabdb5e812721cf214a68d665451ebc655ca8c513`
-	Default Command: `["pypy"]`

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
# Wed, 06 Feb 2019 09:57:38 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 06 Feb 2019 09:57:39 GMT
ENV PYPY_VERSION=6.0.0
# Tue, 12 Feb 2019 21:35:11 GMT
ENV PYTHON_PIP_VERSION=19.0.2
# Tue, 12 Feb 2019 21:35:19 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Tue, 12 Feb 2019 21:35:29 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Tue, 12 Feb 2019 21:35:29 GMT
CMD ["pypy"]
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
	-	`sha256:4eb33f9b054e4c63478cf152ee7ffb1a43201de32610774d24686ff61eb04816`  
		Last Modified: Wed, 06 Feb 2019 10:06:29 GMT  
		Size: 3.2 MB (3168368 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6aad07188bcf441bfd30fcd96c0b411d45d9e3ad6406eb380dee1d8b2ddc05d`  
		Last Modified: Tue, 12 Feb 2019 21:41:46 GMT  
		Size: 26.2 MB (26162881 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d572cae17b4687c55ca20687c46268d1c5391f90db93a470a0b3e744b003bcfb`  
		Last Modified: Tue, 12 Feb 2019 21:41:40 GMT  
		Size: 4.1 MB (4081372 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-jessie` - linux; arm variant v5

```console
$ docker pull pypy@sha256:206a7d0fd4a8e58801028e21d36627df2defb86bcdcc08b70e78460f7172b425
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **257.8 MB (257775104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:280bd11c49f8d82815dc409692d63ab84cf6c183a8afd358527e3bae1138e71a`
-	Default Command: `["pypy"]`

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
# Wed, 23 Jan 2019 10:49:49 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Wed, 23 Jan 2019 10:49:49 GMT
ENV PYPY_VERSION=6.0.0
# Sat, 26 Jan 2019 09:48:30 GMT
ENV PYTHON_PIP_VERSION=19.0.1
# Sat, 26 Jan 2019 09:48:40 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Sat, 26 Jan 2019 09:49:09 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Sat, 26 Jan 2019 09:49:09 GMT
CMD ["pypy"]
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
	-	`sha256:f452ceb421b0b1eab6f50069e59a434a29aff11e57c1177b4440a032470a1fdb`  
		Last Modified: Wed, 23 Jan 2019 14:29:25 GMT  
		Size: 3.0 MB (3021176 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d4781d7f472a4debcfd0ffde8e8282f628018faa3908ec268afbfd95892eb0c2`  
		Last Modified: Sat, 26 Jan 2019 09:55:05 GMT  
		Size: 24.0 MB (23959638 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b7ac371edfba246a4bfabce373c6300fc7951923a1f1254739ba0b58dcc005a1`  
		Last Modified: Sat, 26 Jan 2019 09:54:57 GMT  
		Size: 4.1 MB (4073321 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `pypy:2-jessie` - linux; 386

```console
$ docker pull pypy@sha256:9b00e1211e6febb39d4994143e12dc0fb6bf27c3e0077bad7deed8369d6b3a74
```

-	Docker Version: 18.06.1-ce
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.4 MB (284398169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01ec8bd987c47701d4d33a69b2221f5974febb3117845a2c04787daebc4b296b`
-	Default Command: `["pypy"]`

```dockerfile
# Wed, 06 Feb 2019 11:58:36 GMT
ADD file:7ee301fb17cb469725296eb34fd4c88b06658dab08befc626157c94e1b1264ae in / 
# Wed, 06 Feb 2019 11:58:37 GMT
CMD ["bash"]
# Thu, 07 Feb 2019 01:37:15 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		ca-certificates 		curl 		netbase 		wget 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:37:17 GMT
RUN set -ex; 	if ! command -v gpg > /dev/null; then 		apt-get update; 		apt-get install -y --no-install-recommends 			gnupg 			dirmngr 		; 		rm -rf /var/lib/apt/lists/*; 	fi
# Thu, 07 Feb 2019 01:41:10 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		bzr 		git 		mercurial 		openssh-client 		subversion 				procps 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 01:46:11 GMT
RUN set -ex; 	apt-get update; 	apt-get install -y --no-install-recommends 		autoconf 		automake 		bzip2 		dpkg-dev 		file 		g++ 		gcc 		imagemagick 		libbz2-dev 		libc6-dev 		libcurl4-openssl-dev 		libdb-dev 		libevent-dev 		libffi-dev 		libgdbm-dev 		libgeoip-dev 		libglib2.0-dev 		libjpeg-dev 		libkrb5-dev 		liblzma-dev 		libmagickcore-dev 		libmagickwand-dev 		libncurses5-dev 		libncursesw5-dev 		libpng-dev 		libpq-dev 		libreadline-dev 		libsqlite3-dev 		libssl-dev 		libtool 		libwebp-dev 		libxml2-dev 		libxslt-dev 		libyaml-dev 		make 		patch 		unzip 		xz-utils 		zlib1g-dev 				$( 			if apt-cache show 'default-libmysqlclient-dev' 2>/dev/null | grep -q '^Version:'; then 				echo 'default-libmysqlclient-dev'; 			else 				echo 'libmysqlclient-dev'; 			fi 		) 	; 	rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 04:00:44 GMT
ENV PATH=/usr/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 07 Feb 2019 04:00:44 GMT
ENV LANG=C.UTF-8
# Thu, 07 Feb 2019 04:03:28 GMT
RUN apt-get update && apt-get install -y --no-install-recommends 		tcl 		tk 	&& rm -rf /var/lib/apt/lists/*
# Thu, 07 Feb 2019 04:03:28 GMT
ENV PYPY_VERSION=6.0.0
# Thu, 07 Feb 2019 04:03:29 GMT
ENV PYTHON_PIP_VERSION=19.0.1
# Thu, 07 Feb 2019 04:03:36 GMT
RUN set -ex; 		dpkgArch="$(dpkg --print-architecture)"; 	case "${dpkgArch##*-}" in 		amd64) pypyArch='linux64'; sha256='6cbf942ba7c90f504d8d6a2e45d4244e3bf146c8722d64e9410b85eac6b5af67' ;; 		armel) pypyArch='linux-armel'; sha256='924ca3f90aa28e8961859508c25752c95253b842318a0f267267ffe90f56a916' ;; 		i386) pypyArch='linux32'; sha256='ad1082d4328ae8f32617b14628648583b82b6d29df3aa42b97bd1853c08c4bc8' ;; 		*) echo >&2 "error: current architecture ($dpkgArch) does not have a corresponding PyPy $PYPY_VERSION binary release"; exit 1 ;; 	esac; 		wget -O pypy.tar.bz2 "https://bitbucket.org/pypy/pypy/downloads/pypy2-v${PYPY_VERSION}-${pypyArch}.tar.bz2"; 	echo "$sha256 *pypy.tar.bz2" | sha256sum -c; 	tar -xjC /usr/local --strip-components=1 -f pypy.tar.bz2; 	find /usr/local/lib-python -depth -type d -a \( -name test -o -name tests \) -exec rm -rf '{}' +; 	rm pypy.tar.bz2; 		pypy --version
# Thu, 07 Feb 2019 04:03:45 GMT
RUN set -ex; 		wget -O get-pip.py 'https://bootstrap.pypa.io/get-pip.py'; 		pypy get-pip.py 		--disable-pip-version-check 		--no-cache-dir 		"pip==$PYTHON_PIP_VERSION" 	; 	pip --version; 		rm -f get-pip.py
# Thu, 07 Feb 2019 04:03:46 GMT
CMD ["pypy"]
```

-	Layers:
	-	`sha256:0d2c60a99fbfd5389008365663b1914f58c65ad5174908669d2fd547813d4df9`  
		Last Modified: Wed, 06 Feb 2019 12:04:25 GMT  
		Size: 54.6 MB (54599595 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e2f8a1642cca50fb512e186f15c61d2abd8bcf91ea3f8de5b6f58faa9de847ac`  
		Last Modified: Thu, 07 Feb 2019 02:00:51 GMT  
		Size: 19.8 MB (19846893 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5080d1b2ea8bf5eca40266f2495503d0e2f3c12389fed01088be0cef360df689`  
		Last Modified: Thu, 07 Feb 2019 02:01:08 GMT  
		Size: 44.0 MB (43951959 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:77aa6a7000ceb3f5e76f036302cc6eb5fc145fde811032b2f78e10e67bf8eaee`  
		Last Modified: Thu, 07 Feb 2019 02:01:42 GMT  
		Size: 135.4 MB (135399152 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b44cdc8bb6f36291e853eb14a97ac3281fe6fafe14386a04ad9214915e9d79d0`  
		Last Modified: Thu, 07 Feb 2019 04:15:36 GMT  
		Size: 3.3 MB (3272301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:82dc751f7556b5e82246a007102f148cab3ab174d9e84dbf305f4c9bce67489f`  
		Last Modified: Thu, 07 Feb 2019 04:15:43 GMT  
		Size: 23.3 MB (23250704 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:494c0710ed4b75314763be0e70de507058a7fa9e31d06a8cdaa24903d67c7964`  
		Last Modified: Thu, 07 Feb 2019 04:15:36 GMT  
		Size: 4.1 MB (4077565 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
